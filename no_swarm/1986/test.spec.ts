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
    const array0 = new Float32Array([-0.5, -0.25, -0.25, 1.0, 0.25, -1.0, -0.25, -0.75, -0.75, -0.5, 0.0, -1.0, -0.75, 0.75, -0.25, 0.0, -0.75, -0.25, 0.75, 1.0, 0.0, 0.25, -0.75, -0.75, -1.0, -0.5, 0.0, 0.75, -0.5, 0.5, 0.75, 1.0, 0.75, -0.25, -0.25, 0.0, -0.25, 0.25, -0.5, -0.25, 0.0, 0.5, -0.25, -0.25, 0.5, -0.25, -0.25, 0.25, -0.75, -0.25, -0.5, -1.0, -0.75, 1.0, -1.0, 1.0, -1.0, 0.75, 0.5, 0.75, -0.75, -1.0, -1.0, -1.0, -0.25, 0.75, -0.25, 0.25, 0.0, 0.75, -0.25, -0.5, 0.75, 1.0, -0.75, 0.75, 0.75, 0.25, 0.75, 0.25, 1.0, -0.75, 0.25, 0.5, -0.75, -0.5, -1.0, 0.5, -0.5, -0.5, 0.25, 1.0, 0.0, -0.5, 0.75, 0.25, -0.75, 0.25, 0.0, 0.0, ]);
    
    
    const array1 = new Float32Array([0.5, 0.5, 1.0, 0.25, -0.25, 0.0, 1.0, -0.25, 0.25, -1.0, -0.75, 1.0, 0.0, -1.0, 0.5, 1.0, -1.0, -0.75, -1.0, -0.75, -0.25, -1.0, 0.0, 1.0, 1.0, 0.0, -0.75, 0.75, 0.5, 0.75, 1.0, 0.0, 0.5, 0.0, -1.0, -1.0, -0.5, -0.5, 1.0, -0.5, 0.5, -0.75, 0.0, -1.0, -0.25, 0.0, 0.5, 0.0, 1.0, -0.5, 0.5, 0.5, 1.0, 0.75, -0.25, 0.75, 0.25, 0.0, -0.75, 1.0, 0.25, 1.0, 1.0, 0.5, -0.25, 0.25, -0.75, 1.0, 0.75, 0.5, -1.0, -0.75, 0.75, -1.0, 0.0, -0.25, 1.0, -0.75, -0.25, 0.5, 0.75, -1.0, -0.25, 1.0, 1.0, -0.25, 0.25, 0.75, -0.5, -0.25, 1.0, -0.5, 0.0, -0.25, -0.5, 0.75, -0.25, 0.5, 0.75, -0.25, ]);
    
    const array2 = new Float32Array([1.0, -0.25, 0.5, 0.5, -0.5, -0.75, -1.0, 0.25, 1.0, -0.5, -0.5, -0.5, 0.5, 0.0, -0.5, 1.0, -0.25, 0.5, 0.5, 0.25, 0.5, 0.75, -1.0, -0.5, 0.75, 0.25, 0.75, 0.0, 0.75, -0.5, 0.75, -1.0, -0.75, -0.75, -0.75, 1.0, 0.75, -1.0, -0.25, -0.75, -0.25, 0.25, 0.25, -0.25, 1.0, 0.75, 0.75, -0.75, -0.75, -0.75, -0.5, -1.0, -0.75, -0.5, -0.25, 0.75, 1.0, -0.25, 0.75, -0.75, 1.0, 0.0, 0.0, 0.5, -0.5, -0.75, -1.0, 0.75, 0.5, -0.25, -1.0, -0.25, 0.75, 0.0, -1.0, -0.75, 0.5, -1.0, 1.0, 0.75, 0.25, 0.75, 0.75, -0.75, -0.5, -1.0, -1.0, 0.5, -1.0, -0.5, 0.25, -0.5, -1.0, -1.0, 0.5, -0.25, 0.5, 0.0, -0.5, -0.5, ]);
    const array3 = new Float32Array([0.5, -0.5, 1.0, -0.5, 0.75, 0.75, -0.75, -0.75, 0.75, -1.0, 0.25, 0.0, 1.0, 1.0, 1.0, -0.75, -1.0, 0.75, -0.5, -0.25, -1.0, -0.5, -0.5, 1.0, -1.0, -0.25, 1.0, 0.25, -0.75, 0.25, -0.75, 0.0, 0.75, -1.0, 0.25, 0.75, -0.75, -0.25, 0.75, -0.75, -0.5, 1.0, -0.25, -1.0, 0.0, 0.5, -1.0, -0.25, 0.5, 1.0, 0.5, 0.0, 0.25, -0.5, -0.75, 0.5, 0.75, 0.5, -0.5, 0.0, -0.25, -0.25, 0.75, 0.0, -1.0, 1.0, -0.5, 0.5, -0.5, -0.25, -0.5, 0.0, 0.25, 0.5, 0.0, 0.5, -1.0, 0.5, -0.25, 0.25, 0.75, 0.75, -1.0, 0.75, -0.75, 0.5, -0.5, -0.75, 0.5, -0.5, -1.0, -1.0, -1.0, -0.75, -0.5, 1.0, -1.0, -0.25, 0.25, -0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array4 = new Float32Array([0.5, -0.5, -0.25, 0.5, -0.25, 0.25, 0.0, -0.25, -1.0, 1.0, -0.25, -1.0, -0.25, -1.0, -0.5, -0.75, 1.0, 0.5, -0.5, 0.0, -0.25, -0.75, 1.0, 1.0, 0.5, -0.25, 0.75, 0.75, 0.75, 0.5, 0.0, 0.5, -0.75, -0.25, 0.75, 1.0, -0.5, -0.5, -1.0, 0.25, -0.25, 0.0, 1.0, -0.25, 0.0, 1.0, -0.25, 0.25, -0.5, -0.75, -0.25, -0.25, 0.0, 0.5, -0.75, 0.5, 0.75, 0.25, -1.0, -0.75, -0.75, -0.25, 0.25, 1.0, 0.25, 1.0, 0.75, -0.25, 0.5, 0.5, 0.0, 0.5, 1.0, 0.5, 1.0, -1.0, -0.75, 0.5, -0.5, -0.5, 0.5, 0.0, -0.25, -1.0, 0.75, 0.0, 0.25, -0.5, -1.0, -0.25, -1.0, -0.5, 0.25, 0.25, -1.0, -0.25, 0.75, -0.5, -0.25, -0.25, ]);
    const array5 = new Float32Array([0.75, 0.0, 0.0, 0.5, 0.25, -0.5, 0.25, -0.25, -0.5, 1.0, 1.0, 0.25, -1.0, 0.25, 0.5, 0.75, 1.0, 0.5, -0.5, -0.25, 0.75, 0.5, -0.5, -1.0, -0.5, 0.0, -0.5, -1.0, -0.5, 1.0, 1.0, -0.5, -1.0, -0.75, 0.5, 0.75, -1.0, 0.75, 1.0, -1.0, -0.75, -0.5, 0.75, -1.0, 0.5, -0.25, 0.25, 0.75, 0.0, 0.5, -1.0, 0.5, 0.75, -0.5, -0.5, 1.0, 0.75, 0.25, -1.0, 0.5, 0.75, 0.5, 0.5, -0.25, -1.0, 0.5, 1.0, -0.75, 0.25, 0.75, 0.0, -0.5, -0.5, -0.5, 0.75, -0.25, -0.5, 0.25, 0.75, 0.75, -0.25, -1.0, -0.25, 0.25, 0.5, 1.0, 0.0, 0.5, 0.75, -0.75, 0.0, -0.25, -0.75, -0.75, -1.0, 1.0, 1.0, 1.0, -0.75, 0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array6 = new Float32Array([-0.25, -0.75, -0.75, -0.75, -0.75, -0.5, 0.25, -0.5, -0.5, 1.0, 0.25, 0.5, 1.0, -0.5, -0.75, 0.75, 0.5, 0.25, 0.25, 0.25, 1.0, 0.25, -1.0, 0.25, 0.5, 1.0, 0.75, 0.5, 0.75, 0.75, 0.5, -0.25, -1.0, 1.0, -0.75, -1.0, -0.5, -0.5, 1.0, -1.0, -0.5, 0.75, 0.25, 0.5, -0.25, 0.75, -1.0, 0.0, 0.75, 0.5, -0.25, -0.5, 1.0, -1.0, 0.25, -0.5, -1.0, -0.25, -1.0, 0.25, 0.25, -0.5, 1.0, 0.5, 0.75, 0.75, 1.0, 1.0, 0.25, -1.0, 0.75, 1.0, -0.75, 0.5, -0.5, 0.75, -0.5, -0.5, -1.0, 0.75, -0.75, -1.0, -0.75, 0.0, 0.0, -1.0, -1.0, -0.75, 0.0, -0.25, 0.5, -0.25, 0.5, -1.0, -1.0, -1.0, 0.5, 0.25, -0.75, 0.0, ]);
    
    
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    
    const array7 = new Float32Array([0.5, -0.25, -0.5, -0.25, -0.75, 0.25, -1.0, -0.25, -1.0, 0.0, 0.75, 0.0, 0.5, -0.5, 0.75, 0.25, 0.0, 0.0, -0.25, -0.5, 0.5, 0.0, 0.25, 0.25, 1.0, 0.75, 0.25, 0.0, 1.0, 0.5, 0.75, 0.5, 0.75, -0.75, -0.5, 0.75, 1.0, 0.0, 1.0, -0.5, 0.0, -0.75, -1.0, 0.0, 0.75, -0.5, 1.0, -0.25, 0.75, 0.5, 0.75, -0.5, -0.5, -0.5, 1.0, 0.0, -0.75, 1.0, 0.5, 1.0, -0.75, -1.0, -0.25, -1.0, -0.25, 0.5, -0.25, 0.5, -1.0, 1.0, 0.25, -0.5, 0.75, 0.25, -0.25, 0.25, 0.5, 0.75, -0.5, -0.5, 0.75, -0.75, 0.25, 0.0, 0.0, 1.0, -0.75, 0.25, 1.0, 0.75, -1.0, 0.5, -1.0, 0.25, -1.0, -0.75, 0.75, 0.25, 1.0, -0.75, ]);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    device00.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array8 = new Float32Array([0.5, 1.0, -1.0, -0.25, 0.5, 0.75, -0.5, -0.5, 0.25, -1.0, -0.75, 0.0, 0.0, 0.75, -1.0, 0.0, -0.75, -1.0, -0.25, 0.75, 0.75, -1.0, -0.75, 1.0, 0.0, -1.0, -1.0, -0.75, -0.5, 0.0, -0.75, 0.25, 0.75, 0.5, -1.0, 0.25, -0.25, 0.75, 0.75, -0.75, 0.75, 0.25, 0.25, -0.25, -1.0, -0.5, 0.0, -0.75, 0.5, -0.25, 0.5, 0.5, -1.0, 0.5, -1.0, -0.25, 0.0, -0.5, -0.75, 1.0, -0.75, 0.25, 0.0, -0.5, -0.25, 0.0, -0.5, -0.75, 1.0, -0.25, -0.25, 0.5, 0.75, -0.75, 0.0, 1.0, 0.25, 0.75, -0.5, -1.0, 0.25, 0.25, 0.75, 0.0, 0.25, -0.5, 0.0, 0.0, 0.0, 0.0, -0.5, -0.75, 0.5, -1.0, 0.5, 0.5, -0.25, 0.25, 0.5, 1.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device10.pushErrorScope("out-of-memory");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const array9 = new Float32Array([1.0, -1.0, -0.25, 0.0, 0.25, -0.75, -1.0, -1.0, -0.5, -1.0, -1.0, -1.0, -0.75, -0.5, -1.0, 0.25, 1.0, 0.75, -0.75, 1.0, 0.0, -0.5, 1.0, 0.25, 0.25, -1.0, 0.5, 0.75, 0.5, 0.75, -0.75, -0.5, 0.5, -0.75, -0.5, 0.75, -0.25, 0.75, -0.75, -0.25, -0.5, 0.75, -0.75, 1.0, 0.5, 0.25, -0.25, 0.25, 0.75, 0.25, 0.25, -1.0, 0.75, -0.75, 0.25, -0.75, 0.0, -0.5, 0.25, 1.0, -0.5, -0.25, -1.0, 0.5, -0.5, 1.0, 0.5, 0.0, -0.75, -0.75, 0.0, -1.0, 0.0, 0.25, 0.5, 0.5, -0.5, -0.25, -0.25, 1.0, 0.75, 0.5, 0.5, 1.0, 0.25, -0.75, -1.0, 0.25, -0.5, 1.0, 0.5, -1.0, -1.0, 0.5, -0.25, 0.25, 0.75, -0.5, -1.0, -0.5, ]);
    command_encoder100.pushDebugGroup("mygroupmarker")
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device30.destroy();
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout200 = device20.createBindGroupLayout({ 
        label: "bind_group_layout200",
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
    command_encoder100.insertDebugMarker("mymarker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout201 = device20.createBindGroupLayout({ 
        label: "bind_group_layout201",
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
    device20.pushErrorScope("out-of-memory");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder200.insertDebugMarker("mymarker");
    device00.destroy();
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array10 = new Float32Array([-0.75, -0.5, -0.5, -0.75, -0.5, -0.75, -0.75, 1.0, -1.0, 0.25, -0.25, -0.25, 1.0, -0.5, 0.0, -0.5, 0.0, 1.0, -0.5, -0.75, 0.25, 0.75, -0.25, 0.5, -0.25, -0.25, -0.5, -0.5, 0.5, 0.5, 0.25, -0.5, 0.5, 0.75, 1.0, 0.0, -1.0, 0.0, -0.25, -1.0, 0.75, -1.0, 0.75, -0.5, 0.25, 0.5, -0.25, 1.0, 0.75, -0.25, -0.5, -0.75, 1.0, -0.5, 1.0, 0.5, 0.5, -0.75, 0.0, -0.25, -0.75, -1.0, -0.75, -1.0, 1.0, 0.25, 0.75, -1.0, 0.0, 0.25, -0.25, -1.0, -1.0, -1.0, -1.0, 0.75, -0.5, -1.0, -0.5, -0.75, -0.5, 0.75, -0.25, 0.25, -0.25, 0.25, -0.5, 0.5, 0.25, 1.0, -0.5, 1.0, 0.75, 1.0, -0.25, 0.25, -1.0, 0.25, -0.75, 1.0, ]);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const array11 = new Float32Array([-0.5, -0.5, -0.75, -0.25, 1.0, 1.0, 0.25, 0.5, -1.0, -0.25, 1.0, 0.5, -0.5, 1.0, -0.25, 0.0, 1.0, 0.0, -0.75, 1.0, 0.5, -0.5, 0.25, -0.75, 0.75, -0.25, -1.0, -0.5, 1.0, -0.75, -1.0, 0.75, -0.75, -0.5, 0.75, -0.5, -0.5, 0.25, 0.0, 0.0, 0.25, -0.25, -0.5, -0.25, -0.75, 1.0, 0.25, 0.5, 0.5, 0.25, -0.25, 0.75, -0.75, -0.75, 1.0, 0.75, 1.0, 0.0, 0.0, 0.75, -1.0, 0.25, -1.0, -0.25, 0.25, -0.75, -0.75, 0.0, -1.0, 0.75, 0.0, -1.0, 1.0, -1.0, -0.75, -0.75, 0.75, 0.0, 0.25, 0.75, 1.0, 1.0, -0.25, 1.0, -0.5, 0.5, 1.0, 0.0, -0.75, 0.0, -0.25, -0.75, -1.0, -0.5, -1.0, -0.25, 0.25, 0.75, -0.75, -0.25, ]);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder200.insertDebugMarker("marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    device20.queue.writeTexture({ texture: texture200 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.pushErrorScope("out-of-memory");
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
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
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    device10.queue.writeTexture({ texture: texture100 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder201.pushDebugGroup("mygroupmarker")
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32float",
        dimension: "2d"
    });
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
    texture200.destroy();
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    command_encoder100.insertDebugMarker("mymarker");
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer200 = command_encoder200.finish();
    command_encoder202.pushDebugGroup("mygroupmarker")
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture400.destroy();
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query200.destroy()
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    device10.queue.writeTexture({ texture: texture100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    buffer500.destroy()
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_bundle_encoder500.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer101, 0, array7, 0, array7.length);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device10.queue.writeTexture({ texture: texture100 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const bind_group_layout202 = device20.createBindGroupLayout({ 
        label: "bind_group_layout202",
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
    device10.queue.writeBuffer(buffer101, 0, array11, 0, array11.length);
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout502]
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    const bind_group_layout100 = device10.createBindGroupLayout({ 
        label: "bind_group_layout100",
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
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    device10.queue.writeTexture({ texture: texture100 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer100.destroy()
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    device10.queue.writeTexture({ texture: texture100 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    
    
    
    device10.queue.writeBuffer(buffer101, 0, array10, 0, array10.length);
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder100.copyBufferToBuffer(
        buffer101,
        0,
        buffer101,
        0,
        400
    );
    render_bundle_encoder200.setPipeline(render_pipeline200);
    
    command_encoder100.clearBuffer(buffer101);
    
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer200,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer201,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeTexture({ texture: texture100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device10.queue.writeTexture({ texture: texture100 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    device20.queue.writeTexture({ texture: texture202 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query200.destroy()
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
    render_bundle_encoder000.insertDebugMarker("marker");
    
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
    compute_pass_encoder2020.insertDebugMarker("marker")
    const bind_group_layout504 = device50.createBindGroupLayout({ 
        label: "bind_group_layout504",
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
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8uint",
        dimension: "2d"
    });
    texture201.destroy();
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    
    
    
    
    
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    device50.queue.writeTexture({ texture: texture501 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    device20.queue.writeTexture({ texture: texture202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    device40.destroy();
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture202 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture202.destroy();
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    query501.destroy()
    command_encoder100.insertDebugMarker("mymarker");
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query500
    });
    const bind_group_layout101 = device10.createBindGroupLayout({ 
        label: "bind_group_layout101",
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
    render_bundle_encoder100.popDebugGroup();
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    
    
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    texture100.destroy();
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout503]
    });
    texture100.destroy();
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder501.insertDebugMarker("marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    device10.queue.writeBuffer(buffer101, 0, array10, 0, array10.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    render_pass_encoder5000.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    query200.destroy()
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_pass_encoder1000.executeBundles([])
    render_pass_encoder1000.setPipeline(render_pipeline100);
    device10.queue.writeBuffer(buffer101, 0, array7, 0, array7.length);
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const render_pass_encoder5001 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query500
    });
    device20.queue.writeBuffer(buffer200, 0, array9, 0, array9.length);
    buffer500.destroy()
    compute_pass_encoder2010.setPipeline(compute_pipeline200);
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder500.insertDebugMarker("marker");
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout201]
    });
    const array12 = new Float32Array([0.0, 0.0, 1.0, 1.0, 0.5, -1.0, -1.0, -0.25, -1.0, 0.25, 0.75, -0.5, 1.0, -0.75, -0.5, 0.25, 1.0, 0.5, 0.5, -1.0, 0.75, 1.0, -0.25, 0.5, 0.0, -0.5, 0.5, -0.25, -0.5, -0.75, -1.0, 0.75, 1.0, -1.0, 0.25, -0.75, 1.0, 0.75, -1.0, -1.0, -0.75, 1.0, -0.75, -1.0, -0.75, -1.0, -0.25, 0.5, 0.0, 0.0, 0.25, 0.25, 0.25, -1.0, -0.25, 0.75, -0.25, -0.5, 0.5, -0.75, -0.75, -0.75, 0.75, -0.25, 0.5, 0.75, 0.25, 0.5, 0.0, 0.5, 0.0, 0.75, 0.25, 1.0, -1.0, 0.5, -0.5, -0.25, -1.0, -0.5, -0.25, 0.5, -1.0, 0.75, 1.0, 0.0, 0.75, -0.75, 1.0, -0.75, -0.75, 0.5, -0.5, 0.5, 0.75, -0.5, 1.0, 1.0, -0.75, 0.0, ]);
    device50.queue.writeBuffer(buffer501, 0, array10, 0, array10.length);
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    command_encoder501.resolveQuerySet(
        query500,
        0,
        32,
        buffer501,
        0
    )
    render_pass_encoder1000.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1000.popDebugGroup();
    
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_pass_encoder5000.pushDebugGroup("group_marker");
    render_pass_encoder5001.pushDebugGroup("group_marker");
    render_pass_encoder1000.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    buffer200.destroy()
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    render_pass_encoder5000.beginOcclusionQuery(0)
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder2020.popDebugGroup()
    render_bundle_encoder200.setVertexBuffer(0, buffer200);
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    
    render_pass_encoder5001.popDebugGroup();
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    render_pass_encoder1000.setStencilReference(1);
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder5000.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    query400.destroy()
    query100.destroy()
    command_encoder101.insertDebugMarker("mymarker");
    render_pass_encoder5001.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder5000.popDebugGroup();
    device10.pushErrorScope("out-of-memory");
    
    render_pass_encoder1010.setStencilReference(1);
    
    const bind_group_layout205 = device20.createBindGroupLayout({ 
        label: "bind_group_layout205",
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
    buffer501.destroy()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const bind_group_layout505 = device50.createBindGroupLayout({ 
        label: "bind_group_layout505",
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
    
    query200.destroy()
    device50.pushErrorScope("validation");
    query203.destroy()
    command_encoder100.insertDebugMarker("mymarker");
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_pass_encoder5001.setStencilReference(1);
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
    const bind_group_layout506 = device50.createBindGroupLayout({ 
        label: "bind_group_layout506",
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
    
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout503]
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder5001.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout205]
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeBuffer(buffer101, 0, array9, 0, array9.length);
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout206,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout500]
    });
    texture500.destroy();
    render_bundle_encoder200.draw(3);
    render_pass_encoder5000.pushDebugGroup("group_marker");
    
    render_bundle_encoder501.popDebugGroup();
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout205]
    });
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout504]
    });
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer101, 0, array11, 0, array11.length);
    device50.queue.writeTexture({ texture: texture501 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout102 = device10.createBindGroupLayout({ 
        label: "bind_group_layout102",
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
    const command_buffer501 = command_encoder501.finish();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder5001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout206,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    query202.destroy()
    render_pass_encoder1011.setPipeline(render_pipeline101);
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout205]
    });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    query201.destroy()
    const compute_pass_encoder2021 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2021" });
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    
    device50.queue.writeTexture({ texture: texture501 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1000.setPipeline(compute_pipeline104);
    
    
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer103,
                },
            },
        ],
    });

    render_pass_encoder1011.setBindGroup(0, bind_group100);
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout501]
    });
    render_pass_encoder5020.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder5020.pushDebugGroup("group_marker");
    render_pass_encoder5001.insertDebugMarker("marker");
    
    render_bundle_encoder502.setPipeline(render_pipeline501);
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    texture501.destroy();
    render_pass_encoder1010.executeBundles([])
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.queue.writeBuffer(buffer101, 0, array11, 0, array11.length);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer203,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer204,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group201);
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer105,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group101);
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    buffer105.destroy()
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder5020.executeBundles([])
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    query200.destroy()
    command_encoder600.pushDebugGroup("mygroupmarker")
    
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout500]
    });
    buffer501.destroy()
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    render_bundle_encoder501.setPipeline(render_pipeline501);
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    
    compute_pass_encoder2021.setPipeline(compute_pipeline203);
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout202]
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer204.destroy()
    render_pass_encoder1000.insertDebugMarker("marker");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder500.setPipeline(render_pipeline500);
    
    query201.destroy()
    
    render_pass_encoder5001.pushDebugGroup("group_marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder2020.setPipeline(compute_pipeline201);
    render_pass_encoder5020.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    query201.destroy()
    device10.queue.writeBuffer(buffer102, 0, array12, 0, array12.length);
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture501 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder5030 = command_encoder503.beginRenderPass({
        label: "render_pass_encoder5030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query500
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder5001.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    texture101.destroy();
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    
    render_pass_encoder1000.setStencilReference(1);
    device10.pushErrorScope("validation");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer104, 0, array5, 0, array5.length);
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    query100.destroy()
    render_pass_encoder5001.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const command_buffer101 = command_encoder101.finish();
    query600.destroy()
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    render_pass_encoder5001.beginOcclusionQuery(1)
    render_pass_encoder5001.popDebugGroup();
    render_pass_encoder5000.setPipeline(render_pipeline500);
    render_pass_encoder5001.setPipeline(render_pipeline500);
    command_encoder600.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer207,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group202);
    render_pass_encoder5020.setPipeline(render_pipeline502);
    render_pass_encoder1010.setPipeline(render_pipeline100);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer107,
                },
            },
        ],
    });

    render_pass_encoder1010.setBindGroup(0, bind_group102);
    compute_pass_encoder2020.end();
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer209,
                },
            },
        ],
    });

    compute_pass_encoder2021.setBindGroup(0, bind_group203);
    const uint32_2021 = new Uint32Array(3);

    uint32_2021[0] = 100;
    uint32_2021[1] = 1;
    uint32_2021[2] = 1;

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2010, 0, uint32_2021, 0, uint32_2021.length);

    compute_pass_encoder2021.dispatchWorkgroupsIndirect(buffer2010, 0);
    render_pass_encoder5030.setPipeline(render_pipeline500);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder5000.endOcclusionQuery()
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer502,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer503,
                },
            },
        ],
    });

    render_pass_encoder5030.setBindGroup(0, bind_group500);
    render_pass_encoder5000.popDebugGroup();
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: render_pipeline502.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer504,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer505,
                },
            },
        ],
    });

    render_pass_encoder5020.setBindGroup(0, bind_group501);
    const command_buffer600 = command_encoder600.finish();
    render_pass_encoder5020.popDebugGroup();
    compute_pass_encoder2020.end();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.submit([]);
    device20.queue.submit([command_buffer200, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2012,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group204);
    device10.queue.submit([command_buffer101, ]);
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer109,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group103);
    device60.queue.submit([command_buffer600, ]);
    command_encoder202.popDebugGroup()
    device50.queue.submit([]);
    render_pass_encoder5001.endOcclusionQuery()
    render_pass_encoder1010.setVertexBuffer(0, buffer101);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder1000.setVertexBuffer(0, buffer101);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndirect(buffer109, 0);
    render_pass_encoder1011.setVertexBuffer(0, buffer100);
    compute_pass_encoder2021.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer103, 0);
    compute_pass_encoder2021.end();
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1011,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group104);
    render_pass_encoder1010.drawIndirect(buffer100, 0);
    render_pass_encoder5030.setVertexBuffer(0, buffer505);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1012, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1012, 0);
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer506,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer507,
                },
            },
        ],
    });

    render_pass_encoder5000.setBindGroup(0, bind_group502);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder5030.setIndexBuffer(buffer500, "uint16");
    compute_pass_encoder2010.end();
    render_pass_encoder5030.setIndexBuffer(buffer504, "uint16");
    render_pass_encoder5030.drawIndexed(3);
    render_pass_encoder5030.end();
    render_pass_encoder1000.drawIndirect(buffer1012, 0);
    device60.queue.submit([command_buffer600, ]);
    device60.queue.submit([]);
    render_pass_encoder1000.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder5020.setVertexBuffer(0, buffer506);
    render_pass_encoder5000.setVertexBuffer(0, buffer506);
    render_pass_encoder5020.draw(3);
    compute_pass_encoder1000.end();
    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer508,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer509,
                },
            },
        ],
    });

    render_pass_encoder5001.setBindGroup(0, bind_group503);
    render_pass_encoder5000.setIndexBuffer(buffer500, "uint16");
    render_pass_encoder5000.drawIndexed(3);
    render_pass_encoder1011.end();
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1000.end();
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder5001.setVertexBuffer(0, buffer504);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder5001.setIndexBuffer(buffer500, "uint16");
    const command_buffer100 = command_encoder100.finish();
    const command_buffer503 = command_encoder503.finish();
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder5001.draw(3);
    render_pass_encoder5020.draw(3);
    render_pass_encoder1011.drawIndirect(buffer1012, 0);
    render_pass_encoder5000.setIndexBuffer(buffer500, "uint16");
    render_pass_encoder1010.end();
    device50.queue.submit([command_buffer503, ]);
    device60.queue.submit([]);
    render_pass_encoder1000.end();
    render_pass_encoder5001.end();
    render_pass_encoder1010.end();
    render_pass_encoder5000.setIndexBuffer(buffer500, "uint16");
    render_pass_encoder5000.end();
    device50.queue.submit([]);
    device50.queue.submit([]);
    render_pass_encoder1011.end();
    const command_buffer500 = command_encoder500.finish();
    command_encoder201.popDebugGroup()
    device60.queue.submit([command_buffer600, ]);
    device50.queue.submit([command_buffer500, ]);
    const command_buffer201 = command_encoder201.finish();
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder5001.popDebugGroup();
    render_pass_encoder5020.end();
    const command_buffer502 = command_encoder502.finish();
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder1000.end();
    compute_pass_encoder2021.end();
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder5030.drawIndirect(buffer504, 0);
    render_pass_encoder5001.draw(3);
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder5000.popDebugGroup();
    device30.queue.submit([]);
    compute_pass_encoder2021.end();
    render_pass_encoder5030.drawIndexedIndirect(buffer505, 0);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder5020.setIndexBuffer(buffer504, "uint16");
    render_pass_encoder5001.setIndexBuffer(buffer504, "uint16");
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder5020.drawIndexedIndirect(buffer509, 0);
    render_pass_encoder5030.drawIndirect(buffer503, 0);
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2014,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group205);
    render_pass_encoder1010.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder5000.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder5001.popDebugGroup();
    render_pass_encoder5030.drawIndexedIndirect(buffer500, 0);
    render_pass_encoder5020.draw(3);
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder2021.popDebugGroup()
    render_pass_encoder5030.drawIndexed(3);
    render_pass_encoder5020.drawIndexedIndirect(buffer507, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder5000.popDebugGroup();
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2015, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2015, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2017,
                },
            },
        ],
    });

    compute_pass_encoder2021.setBindGroup(0, bind_group206);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1013, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1013, 0);
    render_pass_encoder5030.draw(3);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1000.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder5001.drawIndexed(3);
    render_pass_encoder5001.popDebugGroup();
    render_pass_encoder5001.end();
    const uint32_2021 = new Uint32Array(3);

    uint32_2021[0] = 100;
    uint32_2021[1] = 1;
    uint32_2021[2] = 1;

    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2018, 0, uint32_2021, 0, uint32_2021.length);

    compute_pass_encoder2021.dispatchWorkgroupsIndirect(buffer2018, 0);
    render_pass_encoder5020.end();
    render_pass_encoder1010.setIndexBuffer(buffer1011, "uint16");
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2019, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2019, 0);
    render_pass_encoder5030.setIndexBuffer(buffer500, "uint16");
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder5000.popDebugGroup();
    compute_pass_encoder2010.popDebugGroup()
    device30.queue.submit([]);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder5020.end();
    render_pass_encoder5000.popDebugGroup();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1014, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1014, 0);
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1016,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group105);
    render_pass_encoder5000.end();
    render_pass_encoder5001.draw(3);
    render_pass_encoder5030.drawIndirect(buffer509, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1011.draw(3);
    device60.queue.submit([]);
    render_pass_encoder1010.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer100, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndirect(buffer1012, 0);
    render_pass_encoder5030.drawIndirect(buffer505, 0);
    render_pass_encoder5000.drawIndirect(buffer501, 0);
    render_pass_encoder5001.drawIndexed(3);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1012, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1017, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1017, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder5000.drawIndexedIndirect(buffer506, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer103, 0);
    compute_pass_encoder1000.end();
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer105, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1000.drawIndirect(buffer109, 0);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1014, 0);
    device30.queue.submit([]);
    render_pass_encoder5000.popDebugGroup();
    device10.queue.submit([]);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2020, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2020, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder5020.drawIndirect(buffer504, 0);
    compute_pass_encoder2010.end();
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder2020.end();
    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2022,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group207);
    render_pass_encoder5030.setIndexBuffer(buffer500, "uint16");
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1019,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group106);
    render_pass_encoder1000.end();
    render_pass_encoder1011.drawIndirect(buffer1011, 0);
    render_pass_encoder5001.setIndexBuffer(buffer500, "uint16");
    render_pass_encoder1000.drawIndexed(3);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2023, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2023, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder5020.end();
    compute_pass_encoder2020.end();
    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2025,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group208);
    render_pass_encoder5020.end();
    render_pass_encoder5000.end();
    render_pass_encoder5001.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder5030.end();
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder1011.drawIndirect(buffer1017, 0);
    compute_pass_encoder2020.end();
}