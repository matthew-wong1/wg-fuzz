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
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter14 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter18 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter19 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter20 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter21 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter22 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter23 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter24 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter25 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter26 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter27 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
        powerPreference: "high-performance"
    });
    const adapter32 = await gpu.requestAdapter({
        powerPreference: undefined
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
        powerPreference: undefined
    });
    const adapter37 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter38 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter39 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter40 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter41 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter42 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter43 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter44 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter45 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter46 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter47 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter48 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter49 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter50 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter51 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter52 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter53 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter54 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter55 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter56 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter57 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter58 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter59 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter60 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter61 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter62 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter63 = await gpu.requestAdapter({
        powerPreference: undefined
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
        powerPreference: undefined
    });
    const adapter68 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter69 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter70 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter71 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter72 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter73 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter74 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter75 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter76 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter77 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter78 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter79 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter80 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter81 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter82 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter83 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter84 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter85 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter86 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter87 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter88 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter89 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter90 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter91 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter92 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter93 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter94 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter95 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter96 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter97 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter98 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter99 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter100 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter101 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter102 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter103 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter104 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter105 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter106 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter107 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter108 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter109 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter110 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter111 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter112 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter113 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter114 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter115 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter116 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter117 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter118 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter119 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter120 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter121 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter122 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter123 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter124 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter125 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter126 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter127 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter128 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter129 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter130 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter131 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter132 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter133 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
        powerPreference: "high-performance"
    });
    const adapter138 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter139 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter140 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter141 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter142 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
        powerPreference: "high-performance"
    });
    const adapter147 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter148 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter149 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter150 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter151 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter152 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter153 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter154 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter155 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter156 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter157 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter158 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter159 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter160 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
        powerPreference: undefined
    });
    const adapter168 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter169 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter170 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter171 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter172 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter173 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter174 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter175 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter176 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter177 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter178 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter179 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter180 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter181 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter182 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter183 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter184 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter185 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter186 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter187 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
        powerPreference: undefined
    });
    const adapter194 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter195 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter196 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter197 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter198 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter199 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter200 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter201 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter202 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter203 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter204 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter205 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter206 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter207 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter208 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter209 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter210 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter211 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter212 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
        powerPreference: "low-power"
    });
    const adapter218 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter219 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter220 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter221 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter222 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter223 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter224 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter225 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter226 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter227 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter228 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter229 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter230 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter231 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter232 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter233 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter234 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter235 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter236 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter237 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter238 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter239 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter240 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter241 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter242 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter243 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter244 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter245 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter246 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter247 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter248 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter249 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter250 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter251 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter252 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter253 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter254 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter255 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter256 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter257 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter258 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter259 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter260 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter261 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter262 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter263 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter264 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter265 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter266 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter267 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter268 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter269 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter270 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter271 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter272 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter273 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter274 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter275 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter276 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter277 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter278 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter279 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter280 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter281 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter282 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter283 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter284 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter285 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter286 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter287 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter288 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter289 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter290 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter291 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter292 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter293 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter294 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter295 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter296 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter297 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter298 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter299 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter300 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter301 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter302 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter303 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter304 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter305 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter306 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter307 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter308 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter309 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter310 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter311 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter312 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter313 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter314 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter315 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter316 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter317 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter318 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter319 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter320 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter321 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter322 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter323 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter324 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter325 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter326 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter327 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter328 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter329 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter330 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter331 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter332 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter333 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter334 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter335 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter336 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter337 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter338 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter339 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter340 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter341 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter342 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter343 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter344 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter345 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter346 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter347 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter348 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter349 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter350 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter351 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter352 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter353 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter354 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter355 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter356 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter357 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter358 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter359 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter360 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter361 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter362 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter363 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter364 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter365 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter366 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter367 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter368 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter369 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter370 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter371 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter372 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter373 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter374 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter375 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter376 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter377 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter378 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter379 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter380 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter381 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter382 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter383 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter384 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter385 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter386 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter387 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter388 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter389 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter390 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter391 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter392 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter393 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter394 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter395 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter396 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter397 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter398 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter399 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter400 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter401 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter402 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter403 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter404 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter405 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter406 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter407 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter408 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter409 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter410 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter411 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter412 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter413 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter414 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter415 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter416 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter417 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter418 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter419 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter420 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter421 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter422 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter423 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter424 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter425 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter426 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter427 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter428 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter429 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter430 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter431 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter432 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter433 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter434 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter435 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter436 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter437 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter438 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter439 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter440 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter441 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter442 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter443 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter444 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter445 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter446 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter447 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter448 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter449 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter450 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter451 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter452 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter453 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter454 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter455 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter456 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter457 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter458 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter459 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter460 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter461 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter462 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter463 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter464 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter465 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter466 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter467 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter468 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter469 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter470 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter471 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter472 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter473 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter474 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter475 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter476 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter477 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter478 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter479 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter480 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter481 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter482 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter483 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter484 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter485 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter486 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter487 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter488 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter489 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter490 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter491 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter492 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter493 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter494 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter495 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter496 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter497 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter498 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter499 = await gpu.requestAdapter({
        powerPreference: undefined
    });
}