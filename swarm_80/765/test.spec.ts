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
    
    
    const array0 = new Float32Array([-0.75, 0.5, -1.0, -0.25, 1.0, 0.0, -0.25, -0.5, 0.0, 0.0, 0.5, -1.0, 0.5, 0.0, 1.0, 0.5, 0.5, 0.75, 0.5, -0.75, 0.75, 0.5, 0.5, 0.0, -0.25, -0.75, -0.25, 0.5, -0.25, -0.75, -1.0, 0.0, -0.5, -1.0, 0.0, 0.5, 0.0, -1.0, 0.0, -0.5, 0.5, -0.75, 0.0, 0.0, -1.0, 0.75, -0.75, -0.75, 0.25, 0.25, 0.5, -1.0, -0.75, 0.0, -0.75, 0.0, 0.5, 0.5, -1.0, -0.5, -1.0, 0.5, -0.25, -0.25, 0.5, 0.0, 0.25, 0.0, -0.5, 1.0, 0.5, -0.5, 0.75, -0.75, 0.25, -0.75, -0.5, 1.0, -0.75, 0.75, 0.75, -0.5, 0.5, -0.5, -0.25, 1.0, -0.25, 0.5, -0.5, -0.25, 0.75, 0.25, -1.0, -1.0, 0.0, 0.25, -1.0, 0.5, -0.5, 0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([0.0, -0.75, -0.5, -0.5, -1.0, -1.0, 0.0, 0.75, 0.75, 0.0, 1.0, 0.0, 0.25, -1.0, 0.25, 0.25, -0.75, -0.25, -0.5, -1.0, -0.25, -0.75, 0.25, -0.75, 1.0, 0.5, 0.25, -0.5, 0.75, -1.0, -0.25, 1.0, -1.0, -0.25, -1.0, 0.5, -0.5, 0.0, 1.0, -0.75, -0.25, -1.0, -0.25, -0.5, 0.0, -0.5, 0.0, -1.0, 0.25, 1.0, 0.25, 0.25, -1.0, -1.0, 0.25, -0.75, -0.5, -1.0, 0.25, -0.75, 0.25, -0.5, 0.5, -1.0, -0.5, -0.75, -1.0, 0.25, -0.75, -0.25, -0.25, -0.75, 0.25, 1.0, 0.75, 1.0, 0.5, 0.5, 0.75, 0.0, -0.5, -0.5, 0.5, -1.0, 0.75, 1.0, 0.0, -0.5, -0.25, -1.0, -0.25, -1.0, -1.0, 0.75, 0.25, -0.5, -0.25, 0.75, -0.75, -0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    device00.destroy();
    
    
    const array2 = new Float32Array([0.0, 1.0, -0.25, 0.0, -0.75, 0.25, -0.75, 0.75, 0.0, 0.75, -0.25, 0.5, 0.25, -0.75, 0.25, 0.0, 0.5, 1.0, -1.0, -0.5, 0.5, -0.25, -0.75, -0.75, 0.5, -0.75, 0.0, 1.0, -1.0, 1.0, -0.25, 0.5, 0.25, 0.25, 0.5, 0.25, 0.75, 0.5, 0.5, -0.75, 1.0, -1.0, -0.5, -0.75, -1.0, 0.5, -1.0, 1.0, -0.5, 0.75, -0.25, -0.5, 0.5, -0.25, 0.25, -0.5, 1.0, 0.0, -1.0, 1.0, -0.75, -1.0, -0.75, -0.25, 0.5, 0.0, 1.0, -1.0, 0.75, 1.0, -0.5, 0.0, 0.25, -0.25, -0.75, 0.5, -0.25, 0.25, -0.25, -1.0, 1.0, -0.75, 0.75, 1.0, -0.5, -1.0, 0.0, -0.75, -1.0, 0.75, 1.0, -0.5, -0.5, -0.25, 0.0, 0.75, 0.0, 1.0, 1.0, -0.5, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array3 = new Float32Array([-0.5, -0.5, -0.25, 0.25, -0.5, -0.75, 1.0, -0.5, 0.5, -1.0, 0.25, 0.25, 1.0, -0.5, 0.5, 0.75, -0.25, -0.25, 0.5, 0.75, 0.25, -1.0, -0.25, -0.25, -0.25, -0.5, -1.0, -0.5, 0.25, 0.0, 0.0, -0.25, -0.5, 0.5, 1.0, -0.5, 0.25, 0.5, -0.25, 0.5, -0.5, 0.0, 0.0, -0.75, -1.0, 0.75, 0.5, 1.0, -0.25, 0.25, 0.5, -0.75, 0.5, -0.75, -1.0, -0.75, 1.0, 1.0, 0.25, 0.75, -0.5, 0.75, 0.5, 0.75, 0.0, 0.25, -0.25, 0.75, 1.0, 0.75, 0.5, 0.75, 0.5, 1.0, -0.75, -0.25, -0.75, 1.0, 0.5, -1.0, -0.5, 0.5, -1.0, -0.75, 0.75, -1.0, 0.5, -1.0, -0.5, 0.5, 0.75, -0.5, -0.25, 0.5, -1.0, -0.5, -0.5, -0.25, 0.5, 0.0, ]);
    
    
    
    
    
    const array4 = new Float32Array([-0.25, 0.25, 0.25, 1.0, 0.25, -0.5, -0.5, -1.0, 0.5, 1.0, -0.75, 0.5, 0.25, 0.75, 0.0, -0.5, -1.0, -0.5, -0.75, 0.25, 0.5, -1.0, 0.5, -0.5, -0.25, -0.75, -0.25, -1.0, -0.5, 0.25, 0.5, -0.25, -0.5, 0.5, -1.0, 0.0, -0.75, -0.25, -1.0, -0.25, 0.5, 0.0, -1.0, -0.5, -1.0, 0.0, 1.0, -0.25, 0.0, -0.25, -0.5, -1.0, 1.0, 1.0, -0.5, 0.75, 0.5, -1.0, 0.0, 0.25, 0.5, -0.75, -0.25, -1.0, 0.25, 0.75, -0.75, 0.5, -1.0, -1.0, -0.25, 0.5, 0.75, -1.0, 0.25, -0.5, -0.25, 0.75, -0.25, -1.0, -0.25, -0.75, -0.75, -0.75, -0.5, 0.25, 0.25, -1.0, 0.75, 0.75, 0.75, 1.0, 0.5, -0.75, 0.5, -0.5, 1.0, -0.5, 0.75, 0.25, ]);
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    buffer201.destroy()
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    query101.destroy()
    
    query100.destroy()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device20.destroy();
    
    
    device10.destroy();
    
    
    
    
    
    const array5 = new Float32Array([-0.25, 0.0, -1.0, -0.75, -1.0, 0.5, 1.0, 0.25, -0.25, -0.5, -0.5, 0.25, 1.0, 0.75, -0.25, -0.75, 1.0, 0.25, -0.5, 0.5, 0.5, -1.0, -0.75, 0.5, -1.0, 0.75, 1.0, 0.0, 0.25, 0.5, -0.75, -0.75, -0.25, 1.0, -0.25, -0.5, -0.5, -0.5, 0.75, -0.5, 0.0, 0.25, -0.5, 1.0, -1.0, 0.25, 0.0, -1.0, 1.0, 0.5, 0.5, -0.75, 0.5, -0.75, 0.0, 0.25, -0.5, 0.5, 0.0, 0.25, 0.25, -0.75, 1.0, 0.5, -1.0, -0.75, -0.5, -0.75, 0.75, -1.0, 1.0, 0.25, 1.0, 0.0, -0.25, -0.25, 0.75, 1.0, -0.5, 1.0, 0.25, -0.75, 0.75, -0.5, -0.5, 1.0, -0.75, 0.25, -0.25, 0.75, -0.75, 0.0, -1.0, -1.0, 0.25, 0.0, 0.5, -0.75, 0.75, 1.0, ]);
    
    
    
    
    const array6 = new Float32Array([-0.25, -1.0, -0.25, 0.5, -1.0, -0.75, 0.75, -0.25, 1.0, 0.25, 0.75, 1.0, -1.0, 0.75, 0.75, 1.0, -0.25, 0.0, -0.5, -0.25, -0.5, 1.0, 1.0, -0.75, -0.5, -0.5, 1.0, -0.25, 0.75, 0.0, -1.0, 1.0, 0.25, 0.0, -1.0, 0.0, 0.5, -0.5, -0.75, -0.25, 0.5, -1.0, 0.75, -1.0, 0.75, 0.0, 0.0, 0.25, -0.25, 0.25, 0.5, -0.75, 1.0, 0.5, -0.75, -0.5, 0.25, -1.0, 0.5, 0.75, -0.5, 1.0, -0.5, 0.5, -0.75, 0.25, 0.75, 0.0, 0.25, 0.25, 0.0, -0.75, -0.25, -0.5, 0.5, 0.25, -0.25, 0.25, 0.0, -0.5, -0.75, -0.75, -0.75, -0.75, -1.0, 0.25, -0.5, -1.0, -0.25, 0.25, 0.5, 0.75, 0.5, -0.75, 0.5, -1.0, 1.0, 0.75, 0.0, -0.25, ]);
    const array7 = new Float32Array([-0.25, 0.5, -0.25, 0.0, 0.0, 0.0, -0.75, -0.75, 0.75, 0.5, 0.0, -0.25, 1.0, -0.25, 0.75, -0.75, 0.0, -0.75, 0.75, -1.0, 0.5, 1.0, 0.5, 0.75, -0.75, 0.0, 0.25, 0.25, 0.75, -0.75, 0.5, -0.75, -1.0, 0.75, 0.0, 0.0, 0.75, 0.5, 0.75, 0.0, 1.0, -0.5, 0.75, 0.5, 0.75, -0.5, -0.25, -0.5, -0.75, 0.75, -0.25, 0.25, -1.0, -0.75, -0.75, -0.75, 0.5, 0.75, -0.5, 1.0, 0.25, 0.5, 0.75, 1.0, -1.0, 0.5, 0.5, 1.0, -0.5, 1.0, 0.25, -0.75, 1.0, -0.5, -0.5, 0.75, -1.0, -0.5, -1.0, 1.0, 0.25, -1.0, 0.25, -1.0, 0.5, 1.0, 0.25, 1.0, -1.0, -0.75, -0.25, -0.25, 1.0, 1.0, 0.75, -0.75, 0.0, -0.25, -1.0, -1.0, ]);
    
    
    const array8 = new Float32Array([-0.75, 0.0, 1.0, 0.0, 1.0, 0.0, 0.5, -0.25, 0.0, 0.75, 1.0, 0.5, -0.25, 0.75, 0.5, -1.0, 0.5, -1.0, -0.25, -1.0, 0.5, -0.5, 0.25, -0.25, 0.25, -0.5, -1.0, -0.25, 0.5, 0.75, -1.0, 0.25, -0.75, 0.5, -1.0, 0.75, 0.75, -1.0, 0.0, 0.75, 1.0, -0.75, 0.5, -1.0, -0.5, 1.0, 0.75, 0.75, -0.75, 1.0, 0.0, -0.5, -0.25, -1.0, -0.25, 1.0, 0.75, -0.25, -0.25, -0.5, -0.75, 0.5, -0.25, -1.0, -0.5, 0.0, -0.75, 0.0, -0.5, -1.0, -0.5, 0.25, -0.75, -0.75, -0.25, 0.0, 0.0, 0.75, 0.75, -1.0, -0.5, 0.0, -0.5, 1.0, 0.5, 0.5, 0.75, 0.5, 0.75, -0.5, 0.0, 0.5, -0.25, 0.5, -0.75, -0.75, -0.5, -1.0, 0.5, 1.0, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array9 = new Float32Array([-0.75, 1.0, -1.0, -0.5, -1.0, -0.5, 0.5, 0.25, -0.75, 0.75, 0.0, -0.25, 0.25, 0.25, -1.0, 0.0, -0.75, 0.25, -1.0, 0.5, -0.75, -0.75, 0.5, -0.75, -0.25, 0.0, 0.75, 0.0, 0.75, 0.75, 1.0, 1.0, -0.25, -0.5, -1.0, 0.5, -0.5, 0.0, -0.5, 0.75, 1.0, 0.0, -0.5, -0.5, -1.0, 0.25, -0.5, 0.5, 1.0, -1.0, 0.0, 0.25, -0.5, 0.5, 0.75, -0.5, 0.0, 0.5, 0.25, 0.5, -1.0, -0.5, -0.25, -0.5, 0.75, 0.75, 1.0, -1.0, -1.0, 0.75, -0.75, -0.25, -0.75, -1.0, 1.0, -1.0, 0.75, 0.0, 0.5, -0.5, 1.0, 0.5, -1.0, 0.25, -0.25, -0.5, -1.0, -0.75, 0.5, 0.25, -0.25, -0.5, 0.5, 1.0, -1.0, -0.25, -0.25, 0.75, -0.25, 0.75, ]);
    
    
    
    const array10 = new Float32Array([0.5, 0.0, 0.0, -0.75, 1.0, -0.5, -0.75, -1.0, -0.25, -0.25, 0.0, -0.75, -1.0, -0.25, 0.75, 0.5, 0.75, 0.5, 0.75, 0.75, 1.0, -0.25, 0.75, 0.75, 0.0, 0.25, -0.5, 0.5, -0.5, 0.5, 0.0, 1.0, 0.0, 0.5, 0.0, 0.0, 0.25, -1.0, -1.0, -0.25, 0.5, -0.25, 0.75, 0.75, 0.25, 0.5, -1.0, 0.0, 0.5, -1.0, -1.0, -1.0, -0.5, -0.25, 0.25, 0.0, 0.5, 0.5, 0.75, -0.75, 0.25, -0.5, 0.25, -0.5, -0.25, 0.0, 0.5, 0.25, 0.5, 0.5, -1.0, -0.25, 0.75, 0.0, -0.25, 1.0, 1.0, 1.0, -1.0, -0.25, -0.5, -1.0, 0.5, 0.75, 0.75, 1.0, -0.5, 0.5, 0.25, 0.75, 0.5, 0.0, 0.75, -0.25, -1.0, -0.5, -0.25, 0.25, 0.0, 0.25, ]);
    
    
    const array11 = new Float32Array([0.75, -0.75, -1.0, 0.75, 0.25, 0.5, 0.75, -1.0, -0.25, -0.25, 0.75, 0.75, 1.0, -0.25, -1.0, -1.0, -0.5, -0.25, -1.0, 0.0, -0.75, 0.5, -1.0, -0.75, 0.75, 0.75, -0.5, 1.0, -0.25, 0.0, 1.0, 0.25, -0.25, -0.25, 1.0, 0.25, -0.25, -1.0, 0.5, -0.25, -0.25, 1.0, 0.5, 1.0, 0.0, 0.0, 1.0, 1.0, 0.75, 0.0, -0.5, 0.5, -0.5, -0.25, 1.0, -0.75, -0.25, 1.0, -1.0, 1.0, 0.75, 0.25, 1.0, 0.5, -0.5, -0.75, -0.25, 0.75, 1.0, -1.0, 0.25, 0.25, -0.75, -0.75, 0.75, 0.5, 0.25, -1.0, -0.5, 1.0, 0.0, -0.75, 0.25, -0.75, 1.0, 0.25, -0.75, 0.75, 1.0, -0.75, 0.25, 0.75, 0.25, -1.0, 0.25, -0.5, -0.75, 1.0, -0.75, 0.0, ]);
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const bind_group_layout400 = device40.createBindGroupLayout({ 
        label: "bind_group_layout400",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device40.destroy();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    render_bundle_encoder300.popDebugGroup();
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    
    
    
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    
    
    device30.pushErrorScope("out-of-memory");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_bundle_encoder300.insertDebugMarker("marker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    buffer300.destroy()
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout300 = device30.createBindGroupLayout({ 
        label: "bind_group_layout300",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module700,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module700,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device50.destroy();
    const bind_group_layout700 = device70.createBindGroupLayout({ 
        label: "bind_group_layout700",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    query700.destroy()
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    device60.pushErrorScope("out-of-memory");
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    
    
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const bind_group_layout702 = device70.createBindGroupLayout({ 
        label: "bind_group_layout702",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout701]
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module702,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module702,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const render_pipeline702 = device70.createRenderPipeline({
        label: "render_pipeline702",
        vertex: {
            module: shader_module700,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module700,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile(__dirname + '/shader_module704.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    const bind_group_layout301 = device30.createBindGroupLayout({ 
        label: "bind_group_layout301",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    device70.pushErrorScope("out-of-memory");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    query702.destroy()
    query701.destroy()
    
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const render_pipeline703 = device70.createRenderPipeline({
        label: "render_pipeline703",
        vertex: {
            module: shader_module701,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module701,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout701,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    var shader_module705_code = "";
    try {
        shader_module705_code = await fs.readFile(__dirname + '/shader_module705.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module705 = await device70.createShaderModule({ label: "shader_module705", code: shader_module705_code })
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer700.destroy()
    query701.destroy()
    
    const render_pipeline704 = device70.createRenderPipeline({
        label: "render_pipeline704",
        vertex: {
            module: shader_module700,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module700,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    device70.pushErrorScope("validation");
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    device60.destroy();
    device30.queue.writeBuffer(buffer302, 0, array5, 0, array5.length);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    
    
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_pipeline705 = device70.createRenderPipeline({
        label: "render_pipeline705",
        vertex: {
            module: shader_module703,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module703,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder300.popDebugGroup();
    device30.queue.writeBuffer(buffer302, 0, array6, 0, array6.length);
    
    device70.pushErrorScope("validation");
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    device30.pushErrorScope("internal");
    buffer301.destroy()
    var shader_module706_code = "";
    try {
        shader_module706_code = await fs.readFile(__dirname + '/shader_module706.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module706 = await device70.createShaderModule({ label: "shader_module706", code: shader_module706_code })
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder701.insertDebugMarker("marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    query700.destroy()
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const compute_pipeline701 = device70.createComputePipeline({
        label: "compute_pipeline701",
        layout: pipeline_layout701,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    buffer302.destroy()
    render_bundle_encoder301.popDebugGroup();
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline702 = device70.createComputePipeline({
        label: "compute_pipeline702",
        layout: pipeline_layout701,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    buffer701.destroy()
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    query800.destroy()
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const compute_pipeline703 = device70.createComputePipeline({
        label: "compute_pipeline703",
        layout: pipeline_layout701,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const array12 = new Float32Array([1.0, -0.5, 1.0, -0.75, -0.25, 0.5, -0.25, 0.0, 0.25, -0.25, -1.0, 0.5, 0.25, 0.75, 0.75, -0.5, 1.0, -1.0, -1.0, -0.25, -0.5, -0.75, 0.75, -1.0, -0.75, -0.25, -0.25, 0.0, -1.0, 0.0, -0.5, 0.25, 1.0, 1.0, 0.5, -0.5, -0.25, 0.0, 0.0, -0.75, 0.5, 0.0, -0.75, 0.5, -0.25, 1.0, -0.5, -1.0, 0.5, 1.0, -0.75, 0.75, 0.5, -0.25, 0.5, 0.5, -1.0, 0.75, 1.0, 0.0, 0.75, -1.0, -0.25, -0.25, 0.75, -0.75, -1.0, 0.0, 1.0, 0.0, 0.5, -0.25, 0.5, 0.0, 0.75, 0.0, 0.25, 1.0, -0.75, -1.0, 1.0, -0.5, -0.5, 0.25, -0.5, 0.75, -0.5, -0.25, -0.75, 0.25, 0.75, -1.0, -1.0, 0.5, -0.75, 0.25, -0.5, -0.25, 0.25, -0.5, ]);
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline704 = device70.createComputePipeline({
        label: "compute_pipeline704",
        layout: pipeline_layout701,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    const compute_pipeline705 = device70.createComputePipeline({
        label: "compute_pipeline705",
        layout: pipeline_layout701,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device30.destroy();
    
    device80.destroy();
    const render_pipeline706 = device70.createRenderPipeline({
        label: "render_pipeline706",
        vertex: {
            module: shader_module700,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module700,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const render_pipeline707 = device70.createRenderPipeline({
        label: "render_pipeline707",
        vertex: {
            module: shader_module703,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module703,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    var shader_module707_code = "";
    try {
        shader_module707_code = await fs.readFile(__dirname + '/shader_module707.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module707 = await device70.createShaderModule({ label: "shader_module707", code: shader_module707_code })
    
    
    
    
    const render_pipeline708 = device70.createRenderPipeline({
        label: "render_pipeline708",
        vertex: {
            module: shader_module702,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module702,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const render_pipeline709 = device70.createRenderPipeline({
        label: "render_pipeline709",
        vertex: {
            module: shader_module701,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module701,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    
    
    const render_pipeline7010 = device70.createRenderPipeline({
        label: "render_pipeline7010",
        vertex: {
            module: shader_module700,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module700,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    
    const render_pipeline7011 = device70.createRenderPipeline({
        label: "render_pipeline7011",
        vertex: {
            module: shader_module702,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module702,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    const bind_group_layout703 = device70.createBindGroupLayout({ 
        label: "bind_group_layout703",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    var shader_module708_code = "";
    try {
        shader_module708_code = await fs.readFile(__dirname + '/shader_module708.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module708 = await device70.createShaderModule({ label: "shader_module708", code: shader_module708_code })
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline706 = device70.createComputePipeline({
        label: "compute_pipeline706",
        layout: pipeline_layout700,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    const render_pipeline7012 = device70.createRenderPipeline({
        label: "render_pipeline7012",
        vertex: {
            module: shader_module703,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module703,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const array13 = new Float32Array([-0.25, -0.5, -0.25, 0.0, 1.0, -1.0, 0.0, 0.75, 0.5, 1.0, 0.0, -1.0, 0.5, -0.5, 0.75, -1.0, 0.0, 0.25, 0.25, -1.0, -1.0, 0.25, -0.75, 0.25, -0.5, 0.5, -0.25, -1.0, -0.5, 1.0, 0.75, -1.0, 0.75, -0.25, 0.75, 0.75, 0.25, 0.5, -1.0, 1.0, 0.5, -0.75, -0.75, 0.5, -0.25, 0.5, 0.75, -0.25, -1.0, -0.75, -0.75, 0.0, 0.0, -0.75, -0.75, 0.75, 0.0, 1.0, 0.75, -0.5, -0.75, 0.0, -0.75, 1.0, 0.25, -0.5, -0.25, 0.75, 0.25, 0.25, -0.75, -0.5, -0.75, 1.0, 0.0, 0.5, 1.0, 0.0, -0.5, -0.5, -0.5, 0.25, 0.75, 0.75, 1.0, 0.25, -0.75, -0.5, 0.0, -0.75, 0.25, 0.5, 0.5, 1.0, 1.0, 0.5, 0.5, -0.25, 0.5, 0.5, ]);
    const compute_pipeline707 = device70.createComputePipeline({
        label: "compute_pipeline707",
        layout: pipeline_layout700,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    render_bundle_encoder701.insertDebugMarker("marker");
    
    query701.destroy()
    
    
    var shader_module709_code = "";
    try {
        shader_module709_code = await fs.readFile(__dirname + '/shader_module709.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module709 = await device70.createShaderModule({ label: "shader_module709", code: shader_module709_code })
    const compute_pipeline708 = device70.createComputePipeline({
        label: "compute_pipeline708",
        layout: pipeline_layout700,
        compute: {
            module: shader_module706,
            entryPoint: "main"
        }
    });
    
    const render_pipeline7013 = device70.createRenderPipeline({
        label: "render_pipeline7013",
        vertex: {
            module: shader_module701,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module701,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const render_pipeline7014 = device70.createRenderPipeline({
        label: "render_pipeline7014",
        vertex: {
            module: shader_module701,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module701,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const render_pipeline7015 = device70.createRenderPipeline({
        label: "render_pipeline7015",
        vertex: {
            module: shader_module700,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module700,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.queue.writeBuffer(buffer702, 0, array5, 0, array5.length);
    
    
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout703]
    });
    
    
    render_bundle_encoder702.insertDebugMarker("marker");
    
    
    var shader_module7010_code = "";
    try {
        shader_module7010_code = await fs.readFile(__dirname + '/shader_module7010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module7010 = await device70.createShaderModule({ label: "shader_module7010", code: shader_module7010_code })
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout700]
    });
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device70.queue.writeBuffer(buffer702, 0, array12, 0, array12.length);
    
    device70.queue.writeBuffer(buffer702, 0, array3, 0, array3.length);
    const compute_pipeline709 = device70.createComputePipeline({
        label: "compute_pipeline709",
        layout: pipeline_layout703,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    query701.destroy()
    const compute_pipeline7010 = device70.createComputePipeline({
        label: "compute_pipeline7010",
        layout: pipeline_layout701,
        compute: {
            module: shader_module7010,
            entryPoint: "main"
        }
    });
    const compute_pipeline7011 = device70.createComputePipeline({
        label: "compute_pipeline7011",
        layout: pipeline_layout700,
        compute: {
            module: shader_module707,
            entryPoint: "main"
        }
    });
    const compute_pipeline7012 = device70.createComputePipeline({
        label: "compute_pipeline7012",
        layout: pipeline_layout700,
        compute: {
            module: shader_module706,
            entryPoint: "main"
        }
    });
    const compute_pipeline7013 = device70.createComputePipeline({
        label: "compute_pipeline7013",
        layout: pipeline_layout701,
        compute: {
            module: shader_module707,
            entryPoint: "main"
        }
    });
    const array14 = new Float32Array([0.0, -1.0, -0.25, 0.25, 0.75, 1.0, 0.5, 0.25, 1.0, 0.75, -0.25, -0.5, 0.75, 0.25, -1.0, 0.0, 0.5, 0.5, 0.25, -1.0, 0.25, 0.25, 0.25, 0.0, 0.5, -0.25, 0.25, -1.0, 1.0, 0.25, -1.0, 0.75, 0.5, 0.0, 0.5, 1.0, -0.5, 0.75, 0.0, -1.0, -0.5, -0.75, -0.75, -0.25, -0.5, -1.0, -0.25, 1.0, -0.25, -0.25, 0.75, 0.5, -0.5, -1.0, -1.0, 1.0, 0.5, 0.25, -1.0, -0.25, -0.75, 0.0, -0.5, 1.0, -0.25, 1.0, -0.25, 0.0, 0.5, -0.25, -0.75, -0.5, 0.5, 0.5, -0.75, -0.5, 0.75, 1.0, -1.0, -0.5, 0.75, 0.75, 1.0, 1.0, 0.25, 0.0, -0.75, 0.25, 0.75, 0.75, -0.5, 0.5, 0.25, 0.5, 0.0, -0.5, -0.25, -0.5, -0.75, 0.0, ]);
    
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    var shader_module7011_code = "";
    try {
        shader_module7011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module7011 = await device70.createShaderModule({ label: "shader_module7011", code: shader_module7011_code })
    query702.destroy()
    buffer703.destroy()
    
    
    var shader_module7012_code = "";
    try {
        shader_module7012_code = await fs.readFile(__dirname + '/shader_module7012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module7012 = await device70.createShaderModule({ label: "shader_module7012", code: shader_module7012_code })
    const render_pipeline7016 = device70.createRenderPipeline({
        label: "render_pipeline7016",
        vertex: {
            module: shader_module702,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module702,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const compute_pipeline7014 = device70.createComputePipeline({
        label: "compute_pipeline7014",
        layout: pipeline_layout701,
        compute: {
            module: shader_module706,
            entryPoint: "main"
        }
    });
    const compute_pipeline7015 = device70.createComputePipeline({
        label: "compute_pipeline7015",
        layout: pipeline_layout703,
        compute: {
            module: shader_module707,
            entryPoint: "main"
        }
    });
    
    device70.queue.writeBuffer(buffer702, 0, array10, 0, array10.length);
    device70.queue.writeBuffer(buffer702, 0, array11, 0, array11.length);
    const compute_pipeline7016 = device70.createComputePipeline({
        label: "compute_pipeline7016",
        layout: pipeline_layout701,
        compute: {
            module: shader_module7010,
            entryPoint: "main"
        }
    });
    query700.destroy()
    const compute_pipeline7017 = device70.createComputePipeline({
        label: "compute_pipeline7017",
        layout: pipeline_layout700,
        compute: {
            module: shader_module707,
            entryPoint: "main"
        }
    });
    
    
    const array15 = new Float32Array([0.5, 0.25, 0.75, 0.25, 0.25, 0.5, -1.0, -0.75, 0.0, 0.75, 0.0, 0.0, 0.5, -0.5, 0.5, -0.25, -0.5, -0.75, 1.0, -0.25, 0.0, -0.75, -0.25, -0.25, 0.25, 1.0, -0.25, -0.25, -1.0, 0.75, 1.0, -0.5, 0.5, -0.25, 0.25, -0.5, -0.25, 0.5, 0.75, 0.75, 1.0, -0.75, 1.0, -0.75, 0.75, -0.25, 0.75, 1.0, -0.75, 0.5, -0.75, -0.75, -0.5, 0.0, 0.25, 1.0, 1.0, -1.0, 0.75, -1.0, -0.5, 0.75, -0.75, 0.75, -0.25, 0.75, 0.25, -1.0, -1.0, -0.5, 1.0, -0.75, 1.0, -0.5, -0.25, 0.25, 1.0, 0.0, -0.5, -1.0, -0.75, 0.0, 0.25, 0.0, 0.75, -0.75, -0.75, 1.0, 0.25, -0.25, -0.5, -0.25, -0.25, -1.0, 1.0, -0.5, -0.75, 0.75, 0.5, -0.75, ]);
    const render_pipeline7017 = device70.createRenderPipeline({
        label: "render_pipeline7017",
        vertex: {
            module: shader_module7011,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module7011,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    device70.queue.writeBuffer(buffer702, 0, array4, 0, array4.length);
    device70.queue.writeBuffer(buffer702, 0, array8, 0, array8.length);
    device70.queue.writeBuffer(buffer702, 0, array3, 0, array3.length);
    device70.queue.writeBuffer(buffer702, 0, array1, 0, array1.length);
    const pipeline_layout704 = device70.createPipelineLayout({ 
        label: "pipeline_layout704",
        bindGroupLayouts: [bind_group_layout700]
    });
    const compute_pipeline7018 = device70.createComputePipeline({
        label: "compute_pipeline7018",
        layout: pipeline_layout700,
        compute: {
            module: shader_module708,
            entryPoint: "main"
        }
    });
    const compute_pipeline7019 = device70.createComputePipeline({
        label: "compute_pipeline7019",
        layout: pipeline_layout704,
        compute: {
            module: shader_module7012,
            entryPoint: "main"
        }
    });
    device70.queue.writeBuffer(buffer702, 0, array7, 0, array7.length);
    const compute_pipeline7020 = device70.createComputePipeline({
        label: "compute_pipeline7020",
        layout: pipeline_layout701,
        compute: {
            module: shader_module706,
            entryPoint: "main"
        }
    });
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    const compute_pipeline7021 = device70.createComputePipeline({
        label: "compute_pipeline7021",
        layout: pipeline_layout701,
        compute: {
            module: shader_module706,
            entryPoint: "main"
        }
    });
    const compute_pipeline7022 = device70.createComputePipeline({
        label: "compute_pipeline7022",
        layout: pipeline_layout700,
        compute: {
            module: shader_module7012,
            entryPoint: "main"
        }
    });
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    const compute_pipeline7023 = device70.createComputePipeline({
        label: "compute_pipeline7023",
        layout: pipeline_layout702,
        compute: {
            module: shader_module706,
            entryPoint: "main"
        }
    });
    
    device70.queue.writeBuffer(buffer702, 0, array11, 0, array11.length);
    
    const render_pipeline7018 = device70.createRenderPipeline({
        label: "render_pipeline7018",
        vertex: {
            module: shader_module700,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module700,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const compute_pipeline7024 = device70.createComputePipeline({
        label: "compute_pipeline7024",
        layout: pipeline_layout703,
        compute: {
            module: shader_module706,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline7025 = device70.createComputePipeline({
        label: "compute_pipeline7025",
        layout: pipeline_layout700,
        compute: {
            module: shader_module7010,
            entryPoint: "main"
        }
    });
    const compute_pipeline7026 = device70.createComputePipeline({
        label: "compute_pipeline7026",
        layout: pipeline_layout703,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    const compute_pipeline7027 = device70.createComputePipeline({
        label: "compute_pipeline7027",
        layout: pipeline_layout703,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const compute_pipeline7028 = device70.createComputePipeline({
        label: "compute_pipeline7028",
        layout: pipeline_layout704,
        compute: {
            module: shader_module708,
            entryPoint: "main"
        }
    });
    query701.destroy()
    device70.queue.writeBuffer(buffer702, 0, array2, 0, array2.length);
    
    render_bundle_encoder701.insertDebugMarker("marker");
    const bind_group_layout704 = device70.createBindGroupLayout({ 
        label: "bind_group_layout704",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    device70.pushErrorScope("internal");
    const compute_pipeline7029 = device70.createComputePipeline({
        label: "compute_pipeline7029",
        layout: pipeline_layout700,
        compute: {
            module: shader_module7012,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline7030 = device70.createComputePipeline({
        label: "compute_pipeline7030",
        layout: pipeline_layout702,
        compute: {
            module: shader_module7010,
            entryPoint: "main"
        }
    });
    device70.queue.writeBuffer(buffer702, 0, array5, 0, array5.length);
    const render_pipeline7019 = device70.createRenderPipeline({
        label: "render_pipeline7019",
        vertex: {
            module: shader_module7011,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module7011,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const compute_pipeline7031 = device70.createComputePipeline({
        label: "compute_pipeline7031",
        layout: pipeline_layout704,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline7032 = device70.createComputePipeline({
        label: "compute_pipeline7032",
        layout: pipeline_layout700,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const render_pipeline7020 = device70.createRenderPipeline({
        label: "render_pipeline7020",
        vertex: {
            module: shader_module703,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module703,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const bind_group_layout705 = device70.createBindGroupLayout({ 
        label: "bind_group_layout705",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    device70.queue.writeBuffer(buffer702, 0, array1, 0, array1.length);
    const compute_pipeline7033 = device70.createComputePipeline({
        label: "compute_pipeline7033",
        layout: pipeline_layout700,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline7034 = device70.createComputePipeline({
        label: "compute_pipeline7034",
        layout: pipeline_layout702,
        compute: {
            module: shader_module707,
            entryPoint: "main"
        }
    });
    const compute_pipeline7035 = device70.createComputePipeline({
        label: "compute_pipeline7035",
        layout: pipeline_layout703,
        compute: {
            module: shader_module709,
            entryPoint: "main"
        }
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const pipeline_layout705 = device70.createPipelineLayout({ 
        label: "pipeline_layout705",
        bindGroupLayouts: [bind_group_layout701]
    });
    device70.queue.writeBuffer(buffer702, 0, array10, 0, array10.length);
    
    
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    device70.queue.writeBuffer(buffer702, 0, array8, 0, array8.length);
    device70.queue.writeBuffer(buffer702, 0, array3, 0, array3.length);
    device70.queue.writeBuffer(buffer702, 0, array15, 0, array15.length);
    const array16 = new Float32Array([1.0, 0.75, -0.75, 1.0, -0.75, 1.0, -0.5, 0.25, 0.5, -0.5, -0.5, 0.75, -0.5, 1.0, 1.0, 1.0, -0.25, -1.0, -1.0, -1.0, 0.75, 1.0, 0.75, 0.0, -0.25, 1.0, -1.0, 1.0, -1.0, -0.5, 0.0, 0.25, -0.75, 0.25, -0.5, 1.0, -0.25, -1.0, -0.5, 0.25, 1.0, -1.0, 0.0, 1.0, -0.25, -1.0, 0.5, -0.25, 1.0, 0.75, -0.5, 0.5, 0.25, 0.75, -0.25, 0.75, -1.0, -0.75, -0.75, 0.75, 0.0, -0.25, -0.75, -0.75, -0.75, -1.0, 0.75, 1.0, 1.0, -0.75, -0.5, -0.25, -0.5, -0.5, -0.75, -0.5, 0.25, 0.0, -1.0, -1.0, 0.75, -0.75, 0.0, 0.5, 0.0, -0.25, 1.0, -0.5, -0.5, 0.75, -1.0, 0.75, -0.5, -0.5, -0.75, -0.5, -0.5, -0.25, -0.25, 0.25, ]);
    const compute_pipeline7036 = device70.createComputePipeline({
        label: "compute_pipeline7036",
        layout: pipeline_layout704,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    const compute_pipeline7037 = device70.createComputePipeline({
        label: "compute_pipeline7037",
        layout: pipeline_layout703,
        compute: {
            module: shader_module7012,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline7038 = device70.createComputePipeline({
        label: "compute_pipeline7038",
        layout: pipeline_layout705,
        compute: {
            module: shader_module707,
            entryPoint: "main"
        }
    });
    const pipeline_layout706 = device70.createPipelineLayout({ 
        label: "pipeline_layout706",
        bindGroupLayouts: [bind_group_layout705]
    });
    
    device70.queue.writeBuffer(buffer702, 0, array8, 0, array8.length);
    const compute_pipeline7039 = device70.createComputePipeline({
        label: "compute_pipeline7039",
        layout: pipeline_layout700,
        compute: {
            module: shader_module707,
            entryPoint: "main"
        }
    });
    query700.destroy()
    const pipeline_layout707 = device70.createPipelineLayout({ 
        label: "pipeline_layout707",
        bindGroupLayouts: [bind_group_layout705]
    });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const array17 = new Float32Array([1.0, -0.5, 0.75, -0.5, -0.5, -0.25, 0.75, -1.0, 0.0, 0.5, -0.75, 0.25, 0.25, -1.0, -0.25, 1.0, -0.5, -1.0, -0.5, 1.0, -0.25, -0.25, 1.0, 1.0, 0.5, -1.0, 0.0, 0.25, -1.0, -1.0, 0.5, 0.25, -1.0, 0.5, -0.5, -0.75, 0.25, 1.0, -1.0, -0.5, -0.75, 1.0, 0.0, -0.25, 0.5, -0.5, 1.0, 0.5, -1.0, -1.0, 1.0, 0.75, -0.25, 0.5, -0.25, -0.25, 0.5, 0.0, 0.0, -0.5, 0.75, 0.0, -0.75, 0.25, 0.5, -0.75, 0.25, -0.75, 0.5, 0.25, 0.25, -0.25, 0.75, -1.0, -0.75, -0.5, -0.5, 0.5, 0.0, 1.0, -0.5, -1.0, -1.0, 0.75, 1.0, -0.5, 1.0, -0.75, 0.75, -0.25, -1.0, 0.0, -0.5, -0.5, -0.25, -0.25, -1.0, 0.75, -0.5, 1.0, ]);
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder702.pushDebugGroup("group_marker");
    const compute_pipeline7040 = device70.createComputePipeline({
        label: "compute_pipeline7040",
        layout: pipeline_layout707,
        compute: {
            module: shader_module709,
            entryPoint: "main"
        }
    });
    const compute_pipeline7041 = device70.createComputePipeline({
        label: "compute_pipeline7041",
        layout: pipeline_layout702,
        compute: {
            module: shader_module707,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline7042 = device70.createComputePipeline({
        label: "compute_pipeline7042",
        layout: pipeline_layout704,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    device70.queue.writeBuffer(buffer702, 0, array3, 0, array3.length);
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pipeline7043 = device70.createComputePipeline({
        label: "compute_pipeline7043",
        layout: pipeline_layout703,
        compute: {
            module: shader_module7010,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline7044 = device70.createComputePipeline({
        label: "compute_pipeline7044",
        layout: pipeline_layout706,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    const compute_pipeline7045 = device70.createComputePipeline({
        label: "compute_pipeline7045",
        layout: pipeline_layout701,
        compute: {
            module: shader_module707,
            entryPoint: "main"
        }
    });
    const compute_pipeline7046 = device70.createComputePipeline({
        label: "compute_pipeline7046",
        layout: pipeline_layout700,
        compute: {
            module: shader_module709,
            entryPoint: "main"
        }
    });
    const compute_pipeline7047 = device70.createComputePipeline({
        label: "compute_pipeline7047",
        layout: pipeline_layout704,
        compute: {
            module: shader_module708,
            entryPoint: "main"
        }
    });
    render_bundle_encoder700.popDebugGroup();
    
    const compute_pipeline7048 = device70.createComputePipeline({
        label: "compute_pipeline7048",
        layout: pipeline_layout706,
        compute: {
            module: shader_module709,
            entryPoint: "main"
        }
    });
    const compute_pipeline7049 = device70.createComputePipeline({
        label: "compute_pipeline7049",
        layout: pipeline_layout707,
        compute: {
            module: shader_module7012,
            entryPoint: "main"
        }
    });
    const compute_pipeline7050 = device70.createComputePipeline({
        label: "compute_pipeline7050",
        layout: pipeline_layout706,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline7051 = device70.createComputePipeline({
        label: "compute_pipeline7051",
        layout: pipeline_layout702,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    const compute_pipeline7052 = device70.createComputePipeline({
        label: "compute_pipeline7052",
        layout: pipeline_layout701,
        compute: {
            module: shader_module7012,
            entryPoint: "main"
        }
    });
    const compute_pipeline7053 = device70.createComputePipeline({
        label: "compute_pipeline7053",
        layout: pipeline_layout701,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    query1000.destroy()
    const pipeline_layout708 = device70.createPipelineLayout({ 
        label: "pipeline_layout708",
        bindGroupLayouts: [bind_group_layout705]
    });
    const compute_pipeline7054 = device70.createComputePipeline({
        label: "compute_pipeline7054",
        layout: pipeline_layout700,
        compute: {
            module: shader_module709,
            entryPoint: "main"
        }
    });
    device70.queue.writeBuffer(buffer702, 0, array10, 0, array10.length);
    const compute_pipeline7055 = device70.createComputePipeline({
        label: "compute_pipeline7055",
        layout: pipeline_layout708,
        compute: {
            module: shader_module709,
            entryPoint: "main"
        }
    });
    var shader_module7013_code = "";
    try {
        shader_module7013_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module7013 = await device70.createShaderModule({ label: "shader_module7013", code: shader_module7013_code })
    const compute_pipeline7056 = device70.createComputePipeline({
        label: "compute_pipeline7056",
        layout: pipeline_layout701,
        compute: {
            module: shader_module7012,
            entryPoint: "main"
        }
    });
    const compute_pipeline7057 = device70.createComputePipeline({
        label: "compute_pipeline7057",
        layout: pipeline_layout704,
        compute: {
            module: shader_module708,
            entryPoint: "main"
        }
    });
    const compute_pipeline7058 = device70.createComputePipeline({
        label: "compute_pipeline7058",
        layout: pipeline_layout702,
        compute: {
            module: shader_module709,
            entryPoint: "main"
        }
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline7059 = device70.createComputePipeline({
        label: "compute_pipeline7059",
        layout: pipeline_layout700,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const compute_pipeline7060 = device70.createComputePipeline({
        label: "compute_pipeline7060",
        layout: pipeline_layout706,
        compute: {
            module: shader_module7012,
            entryPoint: "main"
        }
    });
    const render_pipeline7021 = device70.createRenderPipeline({
        label: "render_pipeline7021",
        vertex: {
            module: shader_module7013,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module7013,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    query700.destroy()
    const compute_pipeline7061 = device70.createComputePipeline({
        label: "compute_pipeline7061",
        layout: pipeline_layout707,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    render_bundle_encoder701.insertDebugMarker("marker");
    const compute_pipeline7062 = device70.createComputePipeline({
        label: "compute_pipeline7062",
        layout: pipeline_layout704,
        compute: {
            module: shader_module707,
            entryPoint: "main"
        }
    });
    const compute_pipeline7063 = device70.createComputePipeline({
        label: "compute_pipeline7063",
        layout: pipeline_layout707,
        compute: {
            module: shader_module7012,
            entryPoint: "main"
        }
    });
    const compute_pipeline7064 = device70.createComputePipeline({
        label: "compute_pipeline7064",
        layout: pipeline_layout700,
        compute: {
            module: shader_module706,
            entryPoint: "main"
        }
    });
    const compute_pipeline7065 = device70.createComputePipeline({
        label: "compute_pipeline7065",
        layout: pipeline_layout707,
        compute: {
            module: shader_module707,
            entryPoint: "main"
        }
    });
    device70.queue.writeBuffer(buffer702, 0, array12, 0, array12.length);
    const compute_pipeline7066 = device70.createComputePipeline({
        label: "compute_pipeline7066",
        layout: pipeline_layout704,
        compute: {
            module: shader_module7010,
            entryPoint: "main"
        }
    });
    const render_pipeline7022 = device70.createRenderPipeline({
        label: "render_pipeline7022",
        vertex: {
            module: shader_module7011,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module7011,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const pipeline_layout709 = device70.createPipelineLayout({ 
        label: "pipeline_layout709",
        bindGroupLayouts: [bind_group_layout703]
    });
    const compute_pipeline7067 = device70.createComputePipeline({
        label: "compute_pipeline7067",
        layout: pipeline_layout706,
        compute: {
            module: shader_module706,
            entryPoint: "main"
        }
    });
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline7068 = device70.createComputePipeline({
        label: "compute_pipeline7068",
        layout: pipeline_layout702,
        compute: {
            module: shader_module7010,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline7069 = device70.createComputePipeline({
        label: "compute_pipeline7069",
        layout: pipeline_layout701,
        compute: {
            module: shader_module709,
            entryPoint: "main"
        }
    });
    query703.destroy()
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    device70.queue.writeBuffer(buffer702, 0, array7, 0, array7.length);
    const compute_pipeline7070 = device70.createComputePipeline({
        label: "compute_pipeline7070",
        layout: pipeline_layout707,
        compute: {
            module: shader_module706,
            entryPoint: "main"
        }
    });
    const compute_pipeline7071 = device70.createComputePipeline({
        label: "compute_pipeline7071",
        layout: pipeline_layout708,
        compute: {
            module: shader_module7012,
            entryPoint: "main"
        }
    });
    device70.queue.writeBuffer(buffer702, 0, array16, 0, array16.length);
    const compute_pipeline7072 = device70.createComputePipeline({
        label: "compute_pipeline7072",
        layout: pipeline_layout702,
        compute: {
            module: shader_module7010,
            entryPoint: "main"
        }
    });
    const compute_pipeline7073 = device70.createComputePipeline({
        label: "compute_pipeline7073",
        layout: pipeline_layout709,
        compute: {
            module: shader_module709,
            entryPoint: "main"
        }
    });
    const compute_pipeline7074 = device70.createComputePipeline({
        label: "compute_pipeline7074",
        layout: pipeline_layout708,
        compute: {
            module: shader_module707,
            entryPoint: "main"
        }
    });
    device70.queue.writeBuffer(buffer702, 0, array1, 0, array1.length);
    
    const render_pipeline7023 = device70.createRenderPipeline({
        label: "render_pipeline7023",
        vertex: {
            module: shader_module703,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module703,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const compute_pipeline7075 = device70.createComputePipeline({
        label: "compute_pipeline7075",
        layout: pipeline_layout704,
        compute: {
            module: shader_module706,
            entryPoint: "main"
        }
    });
}