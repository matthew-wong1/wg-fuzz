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
        powerPreference: "high-performance"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    query400.destroy()
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const command_buffer400 = command_encoder400.finish();
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    
    
    const command_buffer300 = command_encoder300.finish();
    query401.destroy()
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const command_buffer302 = command_encoder302.finish();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    device30.queue.submit([command_buffer302, ]);
    
    
    query100.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const command_buffer200 = command_encoder200.finish();
    
    query402.destroy()
    const command_buffer000 = command_encoder000.finish();
    
    const command_buffer301 = command_encoder301.finish();
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    query401.destroy()
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device20.queue.submit([command_buffer200, ]);
    
    
    
    query403.destroy()
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    device00.queue.submit([command_buffer000, ]);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    query001.destroy()
    
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    query100.destroy()
    const command_buffer303 = command_encoder303.finish();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    query403.destroy()
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8snorm",
        dimension: "2d"
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    
    query401.destroy()
    query400.destroy()
    const query406 = device40.createQuerySet({
        label: "query406",
        type: "occlusion",
        count: 32,
    });
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    query000.destroy()
    query401.destroy()
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    
    
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query400.destroy()
    
    
    
    const command_buffer402 = command_encoder402.finish();
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    query401.destroy()
    
    query000.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    query400.destroy()
    
    
    query404.destroy()
    
    query401.destroy()
    
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    query403.destroy()
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query000.destroy()
    const command_buffer001 = command_encoder001.finish();
    query403.destroy()
    device40.queue.submit([command_buffer402, ]);
    query101.destroy()
    query402.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    query405.destroy()
    query100.destroy()
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8snorm",
        dimension: "2d"
    });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device40.queue.submit([command_buffer400, ]);
    
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const command_buffer401 = command_encoder401.finish();
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg16float",
        dimension: "2d"
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16uint",
        dimension: "2d"
    });
    
    device00.queue.submit([command_buffer001, ]);
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const query407 = device40.createQuerySet({
        label: "query407",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer601 = command_encoder601.finish();
    
    
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    
    const query408 = device40.createQuerySet({
        label: "query408",
        type: "occlusion",
        count: 32,
    });
    
    const command_buffer403 = command_encoder403.finish();
    
    
    
    
    device60.queue.submit([command_buffer601, ]);
    
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const command_buffer304 = command_encoder304.finish();
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    query404.destroy()
    query408.destroy()
    
    query201.destroy()
    query405.destroy()
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    query101.destroy()
    
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    query001.destroy()
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    
    query001.destroy()
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    const command_buffer602 = command_encoder602.finish();
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    query301.destroy()
    
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    
    
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    
    query600.destroy()
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    
    query408.destroy()
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query400.destroy()
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8sint",
        dimension: "2d"
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    const command_buffer004 = command_encoder004.finish();
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    const command_buffer405 = command_encoder405.finish();
    
    
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    query407.destroy()
    
    query404.destroy()
    const command_buffer500 = command_encoder500.finish();
    
    query601.destroy()
    const command_encoder307 = device30.createCommandEncoder({ label: "command_encoder307" });
    query300.destroy()
    query406.destroy()
    const command_buffer101 = command_encoder101.finish();
    query600.destroy()
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query406.destroy()
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query407.destroy()
    
    const sampler406 = device40.createSampler( { label: "sampler406" } );
    
    query301.destroy()
    
    query102.destroy()
    
    query600.destroy()
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    query402.destroy()
    
    device40.queue.submit([command_buffer405, ]);
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer003 = command_encoder003.finish();
    const command_buffer600 = command_encoder600.finish();
    query405.destroy()
    query602.destroy()
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    query402.destroy()
    device60.queue.submit([command_buffer602, ]);
    query100.destroy()
    query602.destroy()
    
    
    query302.destroy()
    query200.destroy()
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query100.destroy()
    query600.destroy()
    query600.destroy()
    
    
    query300.destroy()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query700.destroy()
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    query402.destroy()
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    query102.destroy()
    query301.destroy()
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_buffer201 = command_encoder201.finish();
    
    query403.destroy()
    
    const command_buffer404 = command_encoder404.finish();
    
    query101.destroy()
    
    
    query200.destroy()
    const command_buffer603 = command_encoder603.finish();
    
    query102.destroy()
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const command_buffer305 = command_encoder305.finish();
    
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    query302.destroy()
    query405.destroy()
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    query408.destroy()
    const command_buffer100 = command_encoder100.finish();
    query001.destroy()
    query300.destroy()
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    
    query406.destroy()
    query201.destroy()
    
    
    
    query403.destroy()
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    
    
    
    
    query405.destroy()
    query402.destroy()
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    
    
    
    
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8uint",
        dimension: "2d"
    });
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    
    query401.destroy()
    
    
    
    query603.destroy()
    device30.queue.submit([command_buffer303, command_buffer304, ]);
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    query303.destroy()
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    query400.destroy()
    query102.destroy()
    query700.destroy()
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8unorm",
        dimension: "2d"
    });
    query408.destroy()
    
    device60.queue.submit([command_buffer600, ]);
    
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    
    query000.destroy()
    
    
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    query306.destroy()
    const query605 = device60.createQuerySet({
        label: "query605",
        type: "occlusion",
        count: 32,
    });
    
    
    
    query300.destroy()
    query306.destroy()
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    const command_encoder605 = device60.createCommandEncoder({ label: "command_encoder605" });
    const query409 = device40.createQuerySet({
        label: "query409",
        type: "occlusion",
        count: 32,
    });
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    query100.destroy()
    
    
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    
    
    
    
    const texture207 = device20.createTexture({
        label: "texture207",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    query603.destroy()
    const command_buffer307 = command_encoder307.finish();
    
    
    device20.queue.submit([command_buffer201, ]);
    query305.destroy()
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8unorm",
        dimension: "2d"
    });
    query408.destroy()
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    query404.destroy()
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    query406.destroy()
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    
    
    
    
    
    const texture208 = device20.createTexture({
        label: "texture208",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    
    
    const sampler407 = device40.createSampler( { label: "sampler407" } );
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    
    
    query406.destroy()
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const command_buffer605 = command_encoder605.finish();
    query103.destroy()
    query000.destroy()
    
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    const command_buffer700 = command_encoder700.finish();
    device40.queue.submit([command_buffer401, ]);
    const command_buffer701 = command_encoder701.finish();
    const command_buffer002 = command_encoder002.finish();
    device70.queue.submit([command_buffer701, ]);
    const command_buffer501 = command_encoder501.finish();
    device60.queue.submit([command_buffer603, command_buffer605, ]);
    device30.queue.submit([command_buffer305, command_buffer307, ]);
    const command_buffer604 = command_encoder604.finish();
    const command_buffer005 = command_encoder005.finish();
    device50.queue.submit([command_buffer500, ]);
    device40.queue.submit([command_buffer403, ]);
    device40.queue.submit([command_buffer404, ]);
    const command_buffer406 = command_encoder406.finish();
    device40.queue.submit([command_buffer406, ]);
    device00.queue.submit([command_buffer003, ]);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    device60.queue.submit([command_buffer604, ]);
    const command_buffer306 = command_encoder306.finish();
    device30.queue.submit([command_buffer306, ]);
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    device50.queue.submit([command_buffer501, ]);
    device00.queue.submit([command_buffer004, ]);
    device70.queue.submit([command_buffer700, ]);
}