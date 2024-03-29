`h� 0  R              1  <value name="SIGNALEVENT"/>
        <value name="CALLEVENT"/>
        <value name="TIMEEVENT"/>
        <value name="CHANGEEVENT"/>
      </enumeration>
      <enumeration name="org.modelio.metamodel.uml.behavior.commonBehaviors.ParameterEffectKind">
        <value name="CREATEEFFECT"/>
        <value name="READEFFECT"/>
        <value name="UPDATEEFFECT"/>
        <value name="DELETEEFFECT"/>
      </enumeration>
      <enumeration name="org.modelio.metamodel.uml.behavior.interactionModel.InteractionOperator">
        <value name="SEQOP"/>
        <value name="ALTOP"/>
        <value name="OPTOP"/>
        <value name="BREAKOP"/>
        <value name="PAROP"/>
        <value name="STRICTOP"/>
        <value name="LOOPOP"/>
        <value name="CRITICALOP"/>
        <value name="NEGOP"/>
        <value name="ASSERTOP"/>
        <value name="IGNOREOP"/>
        <value name="CONSIDEROP"/>
      </enumeration>
      <enumeration name="org.modelio.metamodel.uml.behavior.interactionModel.MessageKind">
        <value name="COMPLETEKIND"/>
        <value name="LOSTKIND"/>
        <value name="FOUNDKIND"/>
        <value name="UNKNOWNKIND"/>
      </enumeration>
      <enumeration name="org.modelio.metamodel.uml.behavior.interactionModel.MessageSort">
        <value name="SYNCCALL"/>
        <value name="ASYNCCALL"/>
        <value name="ASYNCSIGNAL"/>
        <value name="DESTROYMESSAGE"/>
        <value name="CREATEMESSAGE"/>
        <value name="RETURNMESSAGE"/>
      </enumeration>
      <enumeration name="org.modelio.metamodel.uml.behavior.stateMachineModel.KindOfStateMachine">
        <value name="DYNAMIC"/>
        <value name="PROTOCOL"/>
      </enumeration>
      <enumeration name="org.modelio.metamodel.uml.statik.AggregationKind">
        <value name="KINDISASSOCIATION"/>
        <value name="KINDISAGGREGATION"/>
        <value name="KINDISCOMPOSITION"/>
      </enumeration>
      <enumeration name="org.modelio.metamodel.uml.statik.KindOfAccess">
        <value name="READ"/>
        <value name="WRITE"/>
        <value name="READWRITE"/>
        <value name="ACCESNONE"/>
      </enumeration>
      <enumeration name="org.modelio.metamodel.uml.statik.MethodPassingMode">
        <value name="METHODIN"/>
        <value name="METHODOUT"/>
      </enumeration>
      <enumeration name="org.modelio.metamodel.uml.statik.PassingMode">
        <value name="IN"/>
        <value name="OUT"/>
        <value name="INOUT"/>
      </enumeration>
      <enumeration name="org.modelio.metamodel.uml.statik.PortOrientation">
        <value name="NONE"/>
        <value name="IN"/>
        <value name="OUT"/>
        <value name="INOUT"/>
      </enumeration>
      <enumeration name="org.modelio.metamodel.uml.statik.VisibilityMode">
        <value name="PUBLIC"/>
        <value name="PROTECTED"/>
        <value name="PRIVATE"/>
        <value name="VISIBILITYUNDEFINED"/>
        <value name="PACKAGEVISIBILITY"/>
      </enumeration>
    </enumerations>
  </fragment>
  <fragment name="modelio.kernel" version="1.0.00" provider="Modeliosoft" providerVersion="1.0.00">
    <metaclasses>
      <metaclass name="SmObject" version="0.0.00" abstract="true">
        <attribute name="status" type="java.lang.Long"></attribute>
      </metaclass>
    </metaclasses>
    <enumerations></enumerations>
  </fragment>
</metamodel>      P Y ContentV16!ftable_String! fmain!fmetamodel_descriptor.xml!fFORMAT_VERSION!�   	 I l !Infrastructure.LocalPropertyTableain!fmetamodel_descriptor.xml!fFORMAT_VERSION!�fGARBAGE_TABLES!�� �lftable_String! fusersV16!fmain!fmetamodel_descriptor.xml!f(idx.class.Infrastructure.ModuleComponent!fFORMAT_VERSION!�fGARBAGE_TABLES! �g4U�<?xml version="1.0" encoding="UTF-8"?>
<metamodel format="1" MetamodelDescriptor.format="1">
  <fragment name="Analyst" version="2.0.01" provider="Unknown" providerVersion="2.0.01" fake="true">
    <dependencies>
      <metamodel_fragment name="modelio.kernel" version="1.0.00"/>
    </dependencies>
    <metaclasses>
      <metaclass name="AnalystContainer" version="0.0.00" fake="true">
        <parent fragment="Analyst" name="AnalystItem"/>
        <attribute name="Name" type="java.lang.String"></attribute>
      </metaclass>
      <metaclass name="AnalystElement" version="0.0.00" fake="true">
        <parent fragment="Analyst" name="AnalystItem"/>
        <attribute name="Name" type="java.lang.String"></attribute>
        <attribute name="Version" type="java.lang.String"></attribute>
      </metaclass>
      <metaclass name="AnalystItem" version="0.0.00" fake="true">
        <parent fragment="Infrastructure" name="ModelElement"/>
        <attribute name="Name" type="java.lang.String"></attribute>
        <attribute name="Definition" type="java.lang.String"></attribute>
        <dependency name="AnalystProperties" min="1" max="1" aggregation="Composition" navigate="true">
          <target fragment="Analyst" name="AnalystPropertyTable"/>
          <opposite name="AnalystOwner"/>
        </dependency>
      </metaclass>
      <metaclass name="AnalystProject" version="0.0.00" cmsNode="true" fake="true">
        <parent fragment="Infrastructure" name="AbstractProject"/>
        <attribute name="Name" type="java.lang.String"></attribute>
        <dependency name="GoalRoot" min="0" max="-1" aggregation="Composition" navigate="true">
          <target fragment="Analyst" name="GoalContainer"/>
          <opposite name="OwnerProject"/>
        </dependency>
        <dependency name="BusinessRuleRoot" min="0" max="-1" aggregation="Composition" navigate="true">
          <target fragment="Analyst" name="BusinessRuleContainer"/>
          <opposite name="OwnerProject"/>
        </dependency>
        <dependency name="DictionaryRoot" min="0" max="-1" aggregation="Composition" navigate="true">
          <target fragment="Analyst" name="Dictionary"/>
          <opposite name="OwnerProject"/>
        </dependency>
        <dependency name="RequirementRoot" min="0" max="-1" aggregation="Composition" navigate="true">
          <target fragment="Analyst" name="RequirementContainer"/>
          <opposite name="OwnerProject"/>
        </dependency>
        <dependency name="GenericRoot" min="0" max="-1" aggregation="Composition" navigate="true">
          <target fragment="Analyst" name="GenericAnalystContainer"/>
          <opposite name="OwnerProject"/>
        </dependency>
        <dependency name="RiskRoot" min="0" max="-1" aggregation="Composition" navigate="true">
          <target fragment="Analyst" name="RiskContainer"/>
          <opposite name="OwnerProject"/>
        </dependency>
        <dependency name="TestRoot" min="0" max="-1" aggregation="Composition" navigate="true">
          <target fragment="Analyst" name="TestContainer"/>
          <opposite name="OwnerProject"/>
        </dependency>
        <dependency name="KPIRoot" min="0" max="-1" aggregation="Composition" navigate="true">
          <target fragment="Analyst" name="KPIContainer"/>
          <opposite name="OwnerProject"/>
        </dependency>
      </metaclass>
      <metaclass name="AnalystPropertyTable" version="0.0.00" fake="true">
        <parent fragment="Infrastructure" name="TypedPropertyTable"/>
        <attribute name="Name" type="java.lang.String"></attribute>
        <dependency name="AnalystOwner" min="0" max="1" navigate="false">
          <target fragment="Analyst" name="AnalystItem"/>
          <opposite name="AnalystProperties"/>
        </dependency>
      </metaclass>
      <metaclass name="BusinessRule" version="0.0.00" cmsNode="true" fake="true">
        <parent fragment="Analyst" name="AnalystElement"/>
        <attribute name="Name" type="java.lang.String"></attribute>
        <dependency name="SubRule" min="0" max="-1" aggregation="Composition" navigate="true">
          <target fragment="Analyst" name="BusinessRule"/>
          <opposite name="ParentRule"/>
        </dependency>
        <dependency name="OwnerContainer" min="0" max="1" navigate="false">
          <target fragment="Analyst" name="BusinessRuleContainer"/>
          <opposite name="OwnedRule"/>
        </depend