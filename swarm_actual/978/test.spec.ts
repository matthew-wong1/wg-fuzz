export const description = `
Template test for tests created via fuzzing.
`;
import { makeTestGroup } from '../../../../../common/framework/test_group.js';
import { GPUTest } from '../../../../gpu_test.js';
import { getGPU } from '../../../../../common/util/navigator_gpu.js';

export const g = makeTestGroup(GPUTest);

g.test('example_test').fn(async t => {
    const gpu = getGPU(t.rec);
    await main(gpu);
});
const fs = require('node:fs/promises');

async function main(gpu: GPU) {
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter17 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter18 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter19 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter20 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter21 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const adapter22 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter23 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const adapter24 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter25 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter26 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter27 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter28 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter29 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const adapter30 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter31 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter32 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter33 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter34 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter35 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter36 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter37 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter38 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter39 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter40 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter41 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter42 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter43 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    const adapter44 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter45 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const adapter46 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter47 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const adapter48 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const adapter49 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    
    
    const adapter50 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter51 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter52 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter53 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter54 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter55 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const adapter56 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter57 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter58 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter59 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const adapter60 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter61 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter62 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter63 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const adapter64 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter65 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter66 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const adapter67 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter68 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter69 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter70 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter71 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter72 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter73 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter74 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter75 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter76 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter77 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter78 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter79 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter80 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter81 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter82 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter83 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter84 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter85 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter86 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter87 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter88 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const adapter89 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter90 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter91 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter92 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const adapter93 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter94 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter95 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter96 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter97 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const adapter98 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter99 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter100 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter101 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter102 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter103 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const adapter104 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter105 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter106 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter107 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const adapter108 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const adapter109 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter110 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter111 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const adapter112 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter113 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter114 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter115 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter116 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter117 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter118 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const adapter119 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter120 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter121 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter122 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    
    const adapter123 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter124 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter125 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    const adapter126 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter127 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter128 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter129 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter130 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter131 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter132 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter133 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter134 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter135 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const adapter136 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter137 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    const adapter138 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter139 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter140 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const adapter141 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const adapter142 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter143 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter144 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter145 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter146 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter147 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter148 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter149 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter150 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter151 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter152 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter153 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter154 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter155 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter156 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter157 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const adapter158 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter159 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter160 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter161 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter162 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter163 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter164 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter165 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter166 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter167 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const adapter168 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter169 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter170 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter171 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter172 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter173 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter174 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const adapter175 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter176 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter177 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter178 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter179 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter180 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter181 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter182 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter183 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const adapter184 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter185 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter186 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter187 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter188 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter189 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter190 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter191 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter192 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const adapter193 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter194 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter195 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter196 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter197 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    
    const adapter198 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter199 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter200 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter201 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter202 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter203 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter204 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter205 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter206 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter207 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter208 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter209 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter210 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter211 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter212 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter213 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter214 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter215 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const adapter216 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter217 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const adapter218 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter219 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter220 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter221 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter222 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter223 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter224 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const adapter225 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter226 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter227 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter228 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter229 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter230 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter231 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter232 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
}