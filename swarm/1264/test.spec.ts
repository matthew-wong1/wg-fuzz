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
    const array0 = new Float32Array([0.25, 0.0, -0.25, -1.0, 0.75, 0.75, -0.75, -0.5, -0.5, 0.25, -0.5, 0.75, 0.0, 0.75, 1.0, 0.5, 0.75, 1.0, -1.0, -0.75, 0.0, 0.75, 1.0, -0.25, 0.5, -0.5, 0.75, -0.75, 0.5, -0.25, 0.5, -0.75, 0.75, 0.25, 0.5, -1.0, 0.5, -0.75, 0.25, 0.75, -1.0, -0.5, 0.75, 0.0, -0.5, -0.25, 0.75, 0.75, 0.5, 0.5, 0.0, -0.25, -0.5, 0.0, -0.5, 0.25, -0.5, 0.25, 1.0, 0.5, 0.25, 0.75, 0.0, 1.0, 0.75, 1.0, -0.75, 0.5, -0.5, 0.5, 0.25, -1.0, 0.75, -0.75, 0.75, 0.0, 0.25, -0.75, -0.5, 0.5, 0.25, 0.5, -1.0, -0.5, 0.75, 0.0, -0.25, -0.25, 0.0, -0.5, -1.0, -1.0, 0.5, 0.0, -1.0, 0.5, 0.25, -0.25, -1.0, 0.0, ]);
    
    const array1 = new Float32Array([0.25, 0.5, 0.0, -1.0, 0.0, -0.5, 0.75, -0.75, -0.5, -0.5, 0.75, -1.0, 0.75, -1.0, 0.25, -0.25, 1.0, 1.0, -1.0, -0.25, -1.0, 1.0, -1.0, 0.25, 0.75, 0.75, 0.0, 1.0, 0.25, 0.5, 0.75, -0.5, -0.25, 0.75, -0.75, 0.75, 0.75, -0.25, 0.5, -0.25, -0.5, 1.0, -0.75, 0.75, 0.25, 0.25, 0.75, 0.5, 1.0, -0.5, 0.75, 0.75, -0.75, 1.0, -0.5, 0.5, 0.75, -1.0, 1.0, 0.75, -0.75, -0.25, -0.75, -1.0, -0.5, 0.0, 1.0, -1.0, 0.0, 0.75, 1.0, -1.0, -0.25, 1.0, -0.75, -1.0, -0.5, 0.75, -1.0, -0.75, -1.0, 0.0, -1.0, 0.0, -1.0, -0.75, 1.0, -0.25, 0.75, 1.0, 0.25, -0.75, -0.75, 0.0, 0.75, -0.25, 0.75, 0.25, -0.75, 0.75, ]);
    const array2 = new Float32Array([-0.75, 0.75, -0.25, 0.5, 0.5, 0.25, 0.5, 0.75, 1.0, -0.5, -0.5, 1.0, 0.25, 0.75, 1.0, -1.0, 0.0, 0.25, -1.0, -1.0, 0.0, -0.25, -0.5, 0.25, 1.0, -1.0, 0.5, -0.5, -1.0, 0.5, -1.0, 0.25, 1.0, -0.75, -0.25, 0.75, -0.75, -1.0, 0.5, -0.75, 0.0, -0.5, 0.5, 0.5, 0.75, 1.0, -0.75, 1.0, -0.75, 0.75, 1.0, 1.0, -0.25, 0.0, -0.5, 0.0, 0.25, 0.0, -0.75, -0.5, 1.0, 0.0, 1.0, -0.5, -0.5, -0.25, 0.75, -0.75, 1.0, -0.25, 0.5, -1.0, 1.0, 0.0, -0.75, -0.25, 1.0, 0.75, 0.25, -0.75, 1.0, 0.25, 1.0, 0.0, 1.0, -0.75, -0.75, 0.75, 0.75, 0.5, 1.0, 0.75, 1.0, 0.5, -0.5, 0.75, 1.0, 1.0, -0.5, 0.75, ]);
    const array3 = new Float32Array([1.0, -0.75, 0.5, 0.75, 0.75, 0.75, -0.75, 0.0, 0.25, -0.5, 0.5, 0.75, -0.25, -0.25, 0.5, 0.75, 0.75, -0.25, -1.0, 0.5, -0.25, 0.0, 1.0, 0.5, 0.0, 0.0, -0.25, 0.25, 0.0, -1.0, -1.0, -0.5, 0.0, 0.0, -0.5, 0.0, -0.75, 0.5, -0.25, 0.25, -0.75, 0.25, -0.25, 0.5, 0.25, 0.75, 0.75, -0.5, -0.25, 0.5, -0.5, -0.5, 1.0, 0.0, 1.0, -0.5, 0.0, -0.25, 0.75, 0.5, -0.25, -0.5, 0.25, 0.5, -0.5, 0.25, -0.25, 0.25, 0.0, 0.75, 0.75, 0.0, -0.25, 0.25, 0.5, 0.5, 0.25, 1.0, -0.5, 0.5, 0.25, 0.75, 0.5, 1.0, 0.5, 1.0, -1.0, 1.0, -0.25, 0.25, 0.5, -0.75, 0.25, -1.0, -0.75, -0.5, -1.0, 0.25, 0.75, -0.25, ]);
    
    const array4 = new Float32Array([0.5, 0.25, 0.5, 0.0, 0.5, 0.0, 0.75, -0.75, 0.0, 0.5, 0.5, 0.5, 0.0, 1.0, 0.5, 0.0, 0.5, 0.5, -0.75, 1.0, 0.25, -0.25, 1.0, -0.75, 0.25, 0.0, -1.0, 0.0, 0.75, -0.5, 0.5, 0.5, 1.0, 0.25, 0.75, 1.0, -0.5, 0.0, 0.25, 0.0, 1.0, 1.0, 0.75, 0.5, -0.25, 0.0, 0.0, 0.0, 0.5, -0.5, 0.0, 0.5, -0.5, 0.5, -1.0, 1.0, 0.75, -1.0, -0.25, 0.75, 1.0, 0.0, 0.5, -0.25, 0.75, -0.5, -0.5, -0.5, -0.5, -0.25, -0.5, 1.0, 0.0, 0.5, -1.0, -1.0, -1.0, -0.75, -0.25, 0.75, -0.5, 0.5, 0.25, 0.5, 0.75, 0.0, 0.5, 0.25, -0.5, -0.5, -0.5, -1.0, -0.5, -0.75, -1.0, -0.25, 0.5, 0.25, -0.5, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array5 = new Float32Array([-1.0, 1.0, 1.0, 0.25, 0.75, 0.75, -0.25, 0.25, 0.5, -0.5, 0.0, 0.25, -1.0, 1.0, -0.5, 1.0, 0.0, 0.25, 0.25, 0.75, 1.0, 0.0, 0.5, -0.25, 0.25, 0.5, 0.75, 0.75, 0.25, 0.25, -0.75, -0.25, 0.75, -0.75, -0.75, -0.5, -1.0, -1.0, 0.0, 0.5, 1.0, 0.75, -0.5, 1.0, 1.0, -1.0, 1.0, -1.0, -1.0, 0.25, 0.5, -0.5, -0.25, 0.25, -1.0, 0.75, 0.0, 1.0, -0.75, -0.75, 0.5, -0.25, -0.5, 0.5, 0.5, -0.5, 0.75, 1.0, -0.75, 0.5, -0.75, -0.5, 1.0, 0.25, 1.0, 0.0, 1.0, -0.25, -0.5, 1.0, 0.25, 0.75, -0.5, -1.0, 0.25, -0.25, 0.75, 0.0, 0.0, 0.5, 1.0, 1.0, -0.75, 0.75, -0.5, 0.25, -1.0, -1.0, -0.25, -0.75, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device10.destroy();
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    buffer000.destroy()
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.destroy();
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    device20.pushErrorScope("internal");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const array6 = new Float32Array([-0.5, 0.0, 0.75, -1.0, 0.0, -0.75, -0.5, 0.75, 1.0, 0.5, 0.0, 0.25, -0.25, -0.5, -0.5, 0.0, 0.5, 1.0, -1.0, -0.25, 0.25, -0.5, 0.75, -0.5, -0.5, 0.75, -1.0, -0.75, 0.0, -0.75, 0.25, 1.0, -0.25, -1.0, -1.0, 0.25, 0.0, -0.5, -0.5, -0.75, -0.25, 0.5, 1.0, 0.5, 0.5, 0.75, -0.5, 0.75, 0.5, -0.25, -1.0, 0.25, 0.5, 0.5, -0.25, 0.0, -0.5, -1.0, 0.75, 0.25, -0.5, 1.0, 0.5, -0.75, 0.75, 0.25, 0.0, 0.25, -1.0, -0.25, -0.5, 0.0, -0.25, -0.5, -0.25, -0.5, 0.75, -0.5, 0.5, -0.75, 0.75, 0.25, 1.0, 1.0, 0.0, -0.75, -0.75, 1.0, -1.0, -1.0, -1.0, 0.5, -0.25, 0.25, -0.5, 0.75, 0.75, 0.75, -0.75, -0.5, ]);
    buffer200.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    device20.destroy();
    
    const array7 = new Float32Array([0.75, -0.25, 1.0, 0.25, 1.0, 0.0, -0.25, -1.0, -0.5, -0.75, -0.5, -0.75, -0.25, -0.5, -0.5, 0.0, 0.0, 0.5, 1.0, -0.5, 0.75, -0.75, 1.0, -0.75, 1.0, -1.0, 0.75, 0.5, 0.25, 1.0, 0.0, 0.5, -0.25, 0.75, -0.5, 1.0, -0.5, -0.25, 0.25, 1.0, 0.25, 0.25, 0.25, -0.25, 0.5, 0.5, 0.75, -0.25, -0.25, 0.25, 0.75, 0.25, -0.75, 0.0, -1.0, 0.25, 0.75, -0.75, 0.75, -1.0, -0.25, 0.25, 1.0, -0.75, 0.0, -0.5, -1.0, -1.0, -0.75, 1.0, -0.75, -0.75, -0.25, 0.75, -0.5, 0.25, 0.25, -0.25, -0.25, -0.5, -0.75, 0.5, -0.25, -1.0, 0.25, 1.0, -1.0, 0.75, -0.5, -0.25, -1.0, 0.5, -0.25, 0.75, 0.0, -1.0, -0.25, 0.0, -0.25, -0.75, ]);
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    const array8 = new Float32Array([1.0, 0.75, 1.0, -0.25, 0.75, -0.25, -0.5, 1.0, 0.75, 0.0, 1.0, 0.0, 1.0, 1.0, 1.0, 0.5, -1.0, -0.75, -0.25, 0.75, 0.0, -0.25, -0.25, 0.75, -1.0, 0.5, 0.5, 0.0, -1.0, -1.0, -0.75, 0.0, 0.75, 0.0, -0.75, 0.5, 0.75, 0.5, -0.25, -0.25, -0.5, 1.0, -1.0, 0.5, 0.5, 0.0, -0.5, -0.75, -1.0, 0.0, -1.0, -1.0, -1.0, 1.0, 0.0, -0.75, 0.75, 0.25, 0.5, 1.0, 0.25, -0.75, -0.25, -0.25, -1.0, 1.0, -0.5, 0.75, 0.25, 0.75, 0.5, 0.0, 0.0, -0.5, 0.25, 0.75, 0.5, -0.25, 0.5, 1.0, -0.75, -0.5, -0.25, 1.0, 0.75, -0.5, 0.5, 0.5, 0.75, 0.0, -0.75, 0.75, -0.5, 0.75, 0.0, -1.0, -0.5, -0.75, 0.5, -0.25, ]);
    const array9 = new Float32Array([0.25, 0.75, -0.75, -0.75, -0.75, 0.25, 0.0, -0.75, -1.0, 0.5, 1.0, 0.25, 0.25, -1.0, 1.0, 0.75, -0.75, 1.0, 0.0, -1.0, -0.5, -0.75, 0.25, 0.0, 0.25, 0.75, 0.75, 1.0, -1.0, 0.0, 0.0, -0.5, 0.25, 1.0, 0.5, -1.0, -1.0, 1.0, -0.25, -0.25, 0.5, -0.5, -1.0, -0.25, 0.75, 1.0, 0.25, -0.75, 0.0, 0.75, 0.75, 0.0, -0.5, 0.25, -0.75, 0.25, -0.25, -1.0, 0.25, 0.25, -0.75, 1.0, -0.5, 0.5, -1.0, -0.5, -0.5, 0.5, 0.0, 0.5, 0.5, 0.25, -0.5, -0.75, 1.0, -0.75, 0.0, -0.25, 0.25, 1.0, -0.5, 1.0, 0.75, -0.75, -0.5, 0.0, 0.5, -0.75, 1.0, 0.25, 0.75, 0.5, 0.25, 0.5, -0.25, -0.5, 0.0, -0.25, 0.25, -1.0, ]);
    
    const array10 = new Float32Array([-0.25, 1.0, -0.75, 0.5, 0.0, -0.75, -0.25, -0.75, 1.0, 0.25, -1.0, 0.75, -0.75, 1.0, 0.75, 0.75, -0.25, 0.75, 0.75, 0.5, 0.75, 0.25, -1.0, -1.0, -0.75, 0.5, 0.75, 0.0, 0.25, -0.25, -0.25, 0.25, 1.0, 0.75, 0.25, -0.25, -0.75, 1.0, 0.75, -0.5, -0.75, 0.0, -0.25, 0.75, 1.0, 1.0, 0.75, -0.75, -0.25, 1.0, 0.75, -0.25, -0.25, 0.25, -0.75, 0.75, 0.0, 1.0, 0.5, 0.25, 0.0, -0.25, -0.75, 1.0, 1.0, -1.0, -0.75, 0.75, -0.75, 0.5, 0.25, 0.5, -0.25, 1.0, -0.75, 0.5, -0.75, -1.0, 1.0, -1.0, 0.25, 0.25, -0.5, 0.5, 0.75, 0.25, 0.75, -1.0, -0.5, 1.0, 1.0, 0.0, 1.0, 0.75, -0.25, 1.0, 1.0, 1.0, -0.25, -0.75, ]);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const array11 = new Float32Array([0.5, 0.25, -1.0, 0.25, -0.25, -0.25, 0.75, -1.0, 1.0, -0.5, -0.25, 0.75, 0.5, 1.0, -1.0, -0.75, -0.75, -0.75, 1.0, -0.25, -0.75, 0.75, -0.25, -0.75, 0.0, -1.0, -0.75, 0.25, 0.25, -1.0, -0.5, 0.75, -0.75, -0.25, 0.5, 0.75, 0.0, -0.25, 0.25, -1.0, 1.0, 0.75, 1.0, -0.75, 0.75, 0.75, -1.0, 0.75, 0.0, -0.75, -1.0, -0.25, 0.75, 0.0, 0.25, -0.75, -1.0, 0.0, 0.75, 0.0, -1.0, 0.5, 0.5, 0.25, 0.75, 0.0, 0.75, -0.5, 0.25, -0.75, -0.25, -0.75, 0.75, 0.75, -0.75, -1.0, -0.5, -0.25, -0.25, -0.75, -0.75, -0.75, 0.5, 1.0, -0.25, 1.0, -1.0, -0.5, -1.0, 0.5, 0.5, -1.0, 1.0, -0.25, 1.0, 0.25, 0.5, -0.5, 0.5, -1.0, ]);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.destroy();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    device40.pushErrorScope("validation");
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    device20.queue.writeBuffer(buffer201, 0, array8, 0, array8.length);
    
    
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
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer400.destroy()
    
    query400.destroy()
    
    device00.pushErrorScope("out-of-memory");
    
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    buffer401.destroy()
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    query400.destroy()
    
    const array12 = new Float32Array([0.25, 0.25, -0.75, -0.75, -0.25, -1.0, -1.0, 0.0, 0.0, -0.5, 1.0, -0.25, 0.25, 0.25, 0.0, 0.0, 0.25, 0.5, 0.25, 0.25, 0.25, -0.75, 0.0, -1.0, 1.0, 0.25, 1.0, 0.25, 0.0, 0.0, 0.0, 0.5, 0.5, 1.0, 0.5, -0.25, 1.0, 1.0, -0.25, -1.0, 1.0, 0.75, -0.25, 0.0, 0.0, 0.5, 1.0, -1.0, 1.0, 1.0, 1.0, 1.0, 0.5, 0.25, -0.75, 0.75, 0.5, -0.75, -1.0, 0.25, 0.0, 0.0, -0.25, 0.75, 0.25, -0.25, 0.75, 0.25, 0.25, -0.75, -0.5, -0.75, 0.25, 1.0, -0.5, 1.0, -0.5, 0.5, 1.0, -0.5, 0.25, -0.25, -1.0, -0.25, -0.25, 0.5, -0.75, -0.25, 1.0, 0.25, -0.25, 0.25, -0.5, 1.0, -0.5, 0.25, 0.5, -1.0, 0.0, -0.5, ]);
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    
    device40.queue.writeBuffer(buffer402, 0, array4, 0, array4.length);
    query400.destroy()
    
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query400.destroy()
    query400.destroy()
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    query400.destroy()
    
    buffer404.destroy()
    {
        await buffer402.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer402.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer402.unmap();
        console.log(new Float32Array(data));
    }
    
    command_encoder400.resolveQuerySet(
        query400,
        0,
        32,
        buffer404,
        0
    )
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    buffer402.destroy()
    query401.destroy()
    const array13 = new Float32Array([-0.5, -1.0, 1.0, -0.25, 0.75, 1.0, -0.5, 0.5, 0.5, -0.25, -0.25, 0.0, 0.75, 0.5, -0.25, 1.0, 0.75, 0.5, -0.25, 0.5, -0.5, 0.5, 0.5, 0.25, -0.75, 0.0, -0.75, 0.75, -1.0, 0.0, -0.25, 0.0, -0.75, 0.0, -0.75, -0.75, 0.75, 1.0, 1.0, -1.0, 0.75, 1.0, -1.0, 1.0, -0.25, 0.5, -1.0, 0.5, 0.25, 0.75, 0.5, -0.25, 0.5, -1.0, 0.25, -0.25, 0.0, -0.25, 0.25, 0.0, -0.75, 0.25, -1.0, 0.5, -0.25, -1.0, 1.0, -0.5, -0.25, -0.25, 0.0, -0.25, 0.5, 0.25, -0.75, -1.0, 0.25, 0.75, 0.25, 0.25, -0.75, -0.25, -1.0, 0.75, -1.0, -0.25, -1.0, 1.0, -0.25, -1.0, -1.0, -0.25, 1.0, 0.5, 0.75, 0.75, -0.25, -0.5, -0.5, 0.5, ]);
    command_encoder400.resolveQuerySet(
        query400,
        0,
        32,
        buffer404,
        0
    )
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    buffer403.destroy()
    
    command_encoder401.pushDebugGroup("mygroupmarker")
    
    
    device40.pushErrorScope("validation");
    device40.queue.writeBuffer(buffer405, 0, array13, 0, array13.length);
    command_encoder401.insertDebugMarker("mymarker");
    
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device40.queue.writeBuffer(buffer407, 0, array11, 0, array11.length);
    device40.queue.writeBuffer(buffer407, 0, array4, 0, array4.length);
    query400.destroy()
    device40.queue.writeBuffer(buffer407, 0, array7, 0, array7.length);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    command_encoder401.copyBufferToBuffer(
        buffer400,
        0,
        buffer407,
        0,
        400
    );
    
    device40.queue.writeBuffer(buffer407, 0, array5, 0, array5.length);
    
    command_encoder401.copyBufferToBuffer(
        buffer406,
        0,
        buffer400,
        0,
        400
    );
    command_encoder401.copyBufferToBuffer(
        buffer403,
        0,
        buffer401,
        0,
        400
    );
    command_encoder400.insertDebugMarker("mymarker");
    device40.queue.writeBuffer(buffer407, 0, array7, 0, array7.length);
    
    command_encoder401.resolveQuerySet(
        query400,
        0,
        32,
        buffer404,
        0
    )
    command_encoder402.copyBufferToBuffer(
        buffer406,
        0,
        buffer407,
        0,
        400
    );
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device40.queue.writeBuffer(buffer407, 0, array4, 0, array4.length);
    device40.queue.writeBuffer(buffer407, 0, array0, 0, array0.length);
    command_encoder400.copyBufferToBuffer(
        buffer402,
        0,
        buffer404,
        0,
        400
    );
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder400.copyBufferToBuffer(
        buffer406,
        0,
        buffer407,
        0,
        400
    );
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    buffer407.destroy()
    device40.queue.writeBuffer(buffer406, 0, array10, 0, array10.length);
    
    
    
    
    command_encoder401.copyBufferToBuffer(
        buffer406,
        0,
        buffer405,
        0,
        400
    );
    command_encoder400.clearBuffer(buffer406);
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder402.copyBufferToBuffer(
        buffer406,
        0,
        buffer403,
        0,
        400
    );
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
    buffer401.destroy()
    
    command_encoder402.insertDebugMarker("mymarker");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    command_encoder400.resolveQuerySet(
        query400,
        0,
        32,
        buffer404,
        0
    )
    command_encoder402.pushDebugGroup("mygroupmarker")
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    command_encoder402.resolveQuerySet(
        query400,
        0,
        32,
        buffer404,
        0
    )
    
    command_encoder401.resolveQuerySet(
        query401,
        0,
        32,
        buffer402,
        0
    )
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    command_encoder401.clearBuffer(buffer402);
    command_encoder402.pushDebugGroup("mygroupmarker")
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    command_encoder402.copyBufferToBuffer(
        buffer405,
        0,
        buffer404,
        0,
        400
    );
    command_encoder401.clearBuffer(buffer400);
    const array14 = new Float32Array([0.0, 1.0, -0.5, 0.0, 1.0, -1.0, 0.5, -1.0, -0.5, 0.75, 0.5, 0.75, 0.25, 0.25, 0.25, -0.25, 1.0, -1.0, -0.75, 0.75, -0.5, 0.75, 0.5, -0.25, -0.5, -0.5, 0.25, 0.5, 0.75, 0.5, 0.75, 0.75, 0.0, -0.25, -0.75, -0.25, 0.25, 0.25, 0.75, 0.25, -1.0, -0.5, -0.75, -1.0, -0.5, -0.75, 0.5, 0.75, -0.75, 1.0, -0.25, -0.5, 0.5, -0.5, 1.0, 1.0, 1.0, 1.0, -0.25, 0.5, -0.25, 0.25, 0.0, -1.0, -1.0, 0.75, 0.5, -1.0, 0.5, -1.0, 0.25, -0.25, 0.5, -0.5, -0.75, -0.25, 1.0, 0.75, -1.0, 0.0, 0.5, 0.0, 1.0, 0.75, 0.5, 0.75, 0.0, 0.0, -0.5, 0.75, 0.0, 1.0, 0.0, -0.25, 0.75, 0.75, 0.5, 1.0, 0.0, -1.0, ]);
    buffer400.destroy()
    const bind_group_layout401 = device40.createBindGroupLayout({ 
        label: "bind_group_layout401",
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
    
    command_encoder402.copyBufferToBuffer(
        buffer406,
        0,
        buffer402,
        0,
        400
    );
    device40.queue.writeBuffer(buffer405, 0, array7, 0, array7.length);
    
    command_encoder400.resolveQuerySet(
        query401,
        0,
        32,
        buffer407,
        0
    )
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    command_encoder400.insertDebugMarker("mymarker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    command_encoder400.resolveQuerySet(
        query400,
        0,
        32,
        buffer402,
        0
    )
    command_encoder401.copyBufferToBuffer(
        buffer403,
        0,
        buffer406,
        0,
        400
    );
    device50.pushErrorScope("out-of-memory");
    command_encoder400.pushDebugGroup("mygroupmarker")
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    query400.destroy()
    command_encoder400.resolveQuerySet(
        query401,
        0,
        32,
        buffer404,
        0
    )
    render_bundle_encoder600.pushDebugGroup("group_marker");
    device50.queue.submit([]);
    buffer401.destroy()
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder402.resolveQuerySet(
        query401,
        0,
        32,
        buffer401,
        0
    )
    buffer408.destroy()
    
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const bind_group_layout000 = device00.createBindGroupLayout({ 
        label: "bind_group_layout000",
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
    
    
    
    device40.queue.writeBuffer(buffer405, 0, array7, 0, array7.length);
    const array15 = new Float32Array([0.25, 0.75, 0.75, 1.0, 0.5, -0.5, 0.0, 0.5, 0.5, 0.0, 0.0, -0.5, -0.5, -0.25, -0.25, -0.75, 0.5, 0.5, -0.5, 0.75, 1.0, 1.0, -0.25, 0.25, -0.25, -0.25, 0.0, -0.75, -0.25, -0.5, 0.0, -0.75, -0.75, -0.5, 1.0, -0.75, 0.75, 1.0, 0.25, 0.0, 0.0, 0.75, 0.5, 0.75, -1.0, -0.75, 1.0, 0.75, 0.25, 1.0, 0.5, 0.75, 0.25, -0.5, 0.75, 0.5, 1.0, -0.5, 0.75, -0.25, -0.75, -0.75, 0.0, -0.5, -0.75, -0.5, 0.5, 0.5, 1.0, -1.0, -1.0, 0.25, 0.0, -1.0, 0.0, 0.0, -0.25, 0.75, -0.5, 0.75, 0.0, 0.5, -0.75, 0.0, 0.5, -0.5, 1.0, -0.75, 0.5, -0.5, 0.5, 0.25, 1.0, 0.75, 1.0, 0.0, 0.25, -0.5, -0.75, 0.25, ]);
    command_encoder400.resolveQuerySet(
        query401,
        0,
        32,
        buffer408,
        0
    )
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    command_encoder400.resolveQuerySet(
        query401,
        0,
        32,
        buffer404,
        0
    )
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    buffer406.destroy()
    command_encoder402.resolveQuerySet(
        query401,
        0,
        32,
        buffer400,
        0
    )
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder401.resolveQuerySet(
        query401,
        0,
        32,
        buffer401,
        0
    )
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device40.queue.writeBuffer(buffer405, 0, array7, 0, array7.length);
    device40.queue.writeBuffer(buffer405, 0, array4, 0, array4.length);
    render_bundle_encoder600.insertDebugMarker("marker");
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    device60.queue.writeBuffer(buffer600, 0, array9, 0, array9.length);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device60.queue.writeBuffer(buffer600, 0, array7, 0, array7.length);
    command_encoder401.popDebugGroup()
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder401.resolveQuerySet(
        query401,
        0,
        32,
        buffer404,
        0
    )
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    command_encoder402.insertDebugMarker("mymarker");
    command_encoder400.resolveQuerySet(
        query400,
        0,
        32,
        buffer403,
        0
    )
    command_encoder401.insertDebugMarker("mymarker");
    buffer4010.destroy()
    command_encoder401.insertDebugMarker("mymarker");
    command_encoder402.popDebugGroup()
    command_encoder500.pushDebugGroup("mygroupmarker")
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    device60.queue.writeBuffer(buffer600, 0, array7, 0, array7.length);
    command_encoder400.resolveQuerySet(
        query400,
        0,
        32,
        buffer407,
        0
    )
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    device40.queue.writeBuffer(buffer409, 0, array1, 0, array1.length);
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer600, 0, array12, 0, array12.length);
    query300.destroy()
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    
    query401.destroy()
    command_encoder402.copyBufferToBuffer(
        buffer409,
        0,
        buffer402,
        0,
        400
    );
    command_encoder401.resolveQuerySet(
        query400,
        0,
        32,
        buffer404,
        0
    )
    
    command_encoder700.insertDebugMarker("mymarker");
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    device60.queue.writeBuffer(buffer600, 0, array12, 0, array12.length);
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
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    render_bundle_encoder600.popDebugGroup();
    command_encoder400.clearBuffer(buffer406);
    command_encoder400.resolveQuerySet(
        query401,
        0,
        32,
        buffer404,
        0
    )
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder401.pushDebugGroup("mygroupmarker")
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_bundle_encoder501.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer405, 0, array12, 0, array12.length);
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    command_encoder400.resolveQuerySet(
        query401,
        0,
        32,
        buffer404,
        0
    )
    command_encoder400.clearBuffer(buffer404);
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    command_encoder400.resolveQuerySet(
        query402,
        0,
        32,
        buffer404,
        0
    )
    device60.queue.writeBuffer(buffer600, 0, array12, 0, array12.length);
    render_bundle_encoder501.insertDebugMarker("marker");
    
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    device40.queue.writeBuffer(buffer409, 0, array4, 0, array4.length);
    command_encoder500.insertDebugMarker("mymarker");
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    command_encoder400.resolveQuerySet(
        query402,
        0,
        32,
        buffer404,
        0
    )
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
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    command_encoder400.resolveQuerySet(
        query401,
        0,
        32,
        buffer409,
        0
    )
    command_encoder502.pushDebugGroup("mygroupmarker")
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    device40.queue.writeBuffer(buffer400, 0, array12, 0, array12.length);
    
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
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
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer000, 0, array6, 0, array6.length);
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    device60.pushErrorScope("validation");
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout400,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
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
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device40.queue.writeBuffer(buffer407, 0, array11, 0, array11.length);
    
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    device60.queue.writeBuffer(buffer600, 0, array8, 0, array8.length);
    query801.destroy()
    
    command_encoder402.insertDebugMarker("mymarker");
    
    render_bundle_encoder501.insertDebugMarker("marker");
    command_encoder401.resolveQuerySet(
        query401,
        0,
        32,
        buffer404,
        0
    )
    command_encoder501.pushDebugGroup("mygroupmarker")
    
    query800.destroy()
    
    command_encoder401.resolveQuerySet(
        query401,
        0,
        32,
        buffer403,
        0
    )
    device40.queue.writeBuffer(buffer409, 0, array7, 0, array7.length);
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    command_encoder500.popDebugGroup()
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder500.popDebugGroup();
    const bind_group_layout500 = device50.createBindGroupLayout({ 
        label: "bind_group_layout500",
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
    device60.pushErrorScope("out-of-memory");
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const sampler406 = device40.createSampler( { label: "sampler406" } );
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    
    
    command_encoder400.resolveQuerySet(
        query400,
        0,
        32,
        buffer406,
        0
    )
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
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
    command_encoder700.pushDebugGroup("mygroupmarker")
    command_encoder400.resolveQuerySet(
        query403,
        0,
        32,
        buffer404,
        0
    )
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    command_encoder700.insertDebugMarker("mymarker");
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
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
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer4010.destroy()
    command_encoder800.insertDebugMarker("mymarker");
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout801]
    });
    device40.queue.writeBuffer(buffer409, 0, array9, 0, array9.length);
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    device60.queue.writeBuffer(buffer600, 0, array9, 0, array9.length);
    query801.destroy()
    
    
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    command_encoder400.resolveQuerySet(
        query400,
        0,
        32,
        buffer406,
        0
    )
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    command_encoder400.resolveQuerySet(
        query400,
        0,
        32,
        buffer409,
        0
    )
    device60.queue.writeBuffer(buffer600, 0, array11, 0, array11.length);
    render_bundle_encoder401.pushDebugGroup("group_marker");
    device80.pushErrorScope("internal");
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    command_encoder800.pushDebugGroup("mygroupmarker")
    command_encoder400.copyBufferToBuffer(
        buffer407,
        0,
        buffer401,
        0,
        400
    );
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout800]
    });
    device60.queue.writeBuffer(buffer600, 0, array9, 0, array9.length);
    const query803 = device80.createQuerySet({
        label: "query803",
        type: "occlusion",
        count: 32,
    });
    command_encoder403.resolveQuerySet(
        query400,
        0,
        32,
        buffer404,
        0
    )
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder700.insertDebugMarker("mymarker");
    command_encoder402.resolveQuerySet(
        query403,
        0,
        32,
        buffer404,
        0
    )
    command_encoder403.pushDebugGroup("mygroupmarker")
    device60.queue.writeBuffer(buffer600, 0, array11, 0, array11.length);
    command_encoder500.insertDebugMarker("mymarker");
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline4016 = device40.createComputePipeline({
        label: "compute_pipeline4016",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4017 = device40.createComputePipeline({
        label: "compute_pipeline4017",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    command_encoder403.resolveQuerySet(
        query401,
        0,
        32,
        buffer400,
        0
    )
    command_encoder402.clearBuffer(buffer403);
    const pipeline_layout802 = device80.createPipelineLayout({ 
        label: "pipeline_layout802",
        bindGroupLayouts: [bind_group_layout800]
    });
    const bind_group_layout802 = device80.createBindGroupLayout({ 
        label: "bind_group_layout802",
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
    query501.destroy()
    const compute_pipeline4018 = device40.createComputePipeline({
        label: "compute_pipeline4018",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer409, 0, array8, 0, array8.length);
    const compute_pipeline4019 = device40.createComputePipeline({
        label: "compute_pipeline4019",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    command_encoder402.insertDebugMarker("mymarker");
    device40.pushErrorScope("validation");
    const compute_pipeline4020 = device40.createComputePipeline({
        label: "compute_pipeline4020",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    command_encoder403.resolveQuerySet(
        query403,
        0,
        32,
        buffer404,
        0
    )
    const compute_pipeline4021 = device40.createComputePipeline({
        label: "compute_pipeline4021",
        layout: pipeline_layout402,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    command_encoder402.pushDebugGroup("mygroupmarker")
    command_encoder401.clearBuffer(buffer405);
    
    device40.queue.writeBuffer(buffer407, 0, array2, 0, array2.length);
    device40.queue.writeBuffer(buffer407, 0, array14, 0, array14.length);
    
    device60.queue.writeBuffer(buffer600, 0, array10, 0, array10.length);
    command_encoder600.pushDebugGroup("mygroupmarker")
    command_encoder501.popDebugGroup()
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    command_encoder800.popDebugGroup()
    command_encoder400.insertDebugMarker("mymarker");
    command_encoder502.insertDebugMarker("mymarker");
    device60.queue.writeBuffer(buffer601, 0, array14, 0, array14.length);
    command_encoder400.insertDebugMarker("mymarker");
    const render_pipeline702 = device70.createRenderPipeline({
        label: "render_pipeline702",
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
    command_encoder402.clearBuffer(buffer4010);
    
    command_encoder401.popDebugGroup()
    command_encoder403.resolveQuerySet(
        query402,
        0,
        32,
        buffer409,
        0
    )
    const compute_pipeline4022 = device40.createComputePipeline({
        label: "compute_pipeline4022",
        layout: pipeline_layout404,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    command_encoder800.pushDebugGroup("mygroupmarker")
    command_encoder400.insertDebugMarker("mymarker");
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
    device70.pushErrorScope("validation");
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    command_encoder402.clearBuffer(buffer407);
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    query402.destroy()
    device40.queue.writeBuffer(buffer407, 0, array3, 0, array3.length);
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
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    command_encoder600.popDebugGroup()
    command_encoder700.popDebugGroup()
    command_encoder502.popDebugGroup()
    command_encoder800.popDebugGroup()
    command_encoder402.popDebugGroup()
    command_encoder400.popDebugGroup()
    device00.queue.submit([]);
    command_encoder403.popDebugGroup()
    device60.queue.submit([]);
}