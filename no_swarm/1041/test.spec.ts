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
        powerPreference: undefined
    });
    
    const array0 = new Float32Array([0.75, 0.5, -0.75, -0.75, -0.25, 0.0, 0.25, 0.75, 0.25, -0.5, 0.75, -0.25, 1.0, -0.75, -1.0, -0.75, -0.25, 0.25, 0.75, 1.0, 0.0, 0.0, 0.25, 0.75, 0.5, -0.5, 0.75, 0.25, 0.0, -1.0, -0.25, 1.0, 0.5, -0.25, -0.75, 1.0, 0.75, -0.75, -0.75, 0.0, 0.5, -1.0, -0.25, 1.0, 0.25, -0.5, 1.0, -0.75, 0.5, -0.75, 0.5, 0.5, 1.0, 1.0, 0.25, 0.75, -0.25, -0.75, 0.5, 0.75, 0.5, 1.0, -0.5, 0.5, -0.75, -0.5, 0.0, 1.0, -0.5, 0.75, 0.75, -0.75, 0.25, 0.25, -0.5, 1.0, 0.0, 0.5, -0.75, -0.25, 0.5, 0.0, -0.5, 0.0, 0.75, 0.25, -0.25, 0.75, 1.0, -1.0, 0.0, -0.25, 0.75, 0.5, 0.25, 0.5, 0.25, -0.25, 0.25, -0.5, ]);
    const array1 = new Float32Array([-0.25, 0.25, 0.5, 0.75, -0.5, -0.75, 0.75, -0.5, 0.5, -0.25, -0.75, -0.75, 1.0, -0.25, -1.0, -0.75, -0.5, 0.5, -0.75, -0.75, 0.0, -0.25, -0.25, 0.0, 0.5, 0.75, 0.25, -1.0, 1.0, 0.25, -1.0, -0.25, 1.0, 0.75, 0.75, 0.25, 0.5, -1.0, -1.0, -1.0, 0.5, 1.0, 0.5, -0.75, -0.25, 0.25, 0.75, 0.25, 0.25, -1.0, -0.5, 0.0, -0.75, 1.0, 1.0, -0.25, 1.0, -0.5, -0.25, -0.5, 0.75, -1.0, -1.0, -1.0, -0.5, 0.5, -0.75, 0.75, -0.75, -0.25, -0.75, -0.75, 0.0, 1.0, 0.75, 0.0, -0.75, -0.5, -0.75, 0.0, 0.0, 0.5, -0.5, -1.0, 0.0, 0.5, -0.25, 1.0, 1.0, 1.0, -0.25, -0.25, -0.75, -1.0, -0.5, -0.5, -0.75, -0.5, 0.75, 0.5, ]);
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    device00.destroy();
    const array2 = new Float32Array([-0.75, 0.5, 0.25, 0.0, 0.25, -0.25, 0.5, 0.5, -0.75, -0.25, -0.25, 1.0, 0.75, 0.0, 0.75, 1.0, 0.5, -0.75, 0.75, 0.5, 1.0, 0.5, 0.5, 0.0, 0.25, -1.0, 0.75, -1.0, -1.0, -0.25, 0.25, 0.5, -1.0, 0.25, 0.75, 0.75, -0.5, 0.75, 0.5, -0.75, 1.0, -0.5, 0.0, 1.0, -0.75, -0.5, 0.0, 0.25, -0.75, -0.5, -0.5, 0.5, -0.5, -0.25, 0.75, -0.5, 0.25, 0.5, 0.25, -0.75, -1.0, 0.0, -1.0, 0.0, -1.0, 0.25, -1.0, -0.75, -0.25, 0.0, 1.0, -1.0, 0.5, 1.0, 0.5, 0.25, -0.5, -0.25, -0.5, -1.0, 1.0, -0.75, 0.25, 0.5, -1.0, 0.0, 0.75, -0.25, -0.75, -0.5, 0.75, -0.75, 0.5, -0.25, 0.25, 0.75, 0.0, -1.0, -1.0, -0.75, ]);
    
    
    const array3 = new Float32Array([1.0, -0.5, 0.0, 0.75, 0.5, 0.0, 0.25, 0.25, 0.25, -0.75, 0.25, 0.25, 1.0, 0.5, -0.5, -1.0, 0.5, -0.75, 0.0, 0.25, 0.5, -1.0, 0.25, -0.75, -0.25, -1.0, -0.75, 0.0, -0.25, -0.25, -0.75, -0.75, 0.5, 0.25, -0.25, -0.5, 0.75, 0.0, 0.0, 0.5, 0.25, 0.25, -0.25, 0.75, 0.75, 0.25, 0.0, -0.75, 1.0, -0.5, -0.5, -0.75, -0.25, 0.75, 1.0, 0.0, -0.5, 0.5, -0.5, 0.25, -0.5, 0.75, -0.25, -0.75, 0.5, 0.5, -0.25, -0.5, 0.75, 0.5, 0.75, -0.5, 0.25, -0.5, 0.5, 0.5, -1.0, -0.25, 0.25, -0.25, 0.0, 0.0, 0.5, 0.25, 0.0, 0.5, -0.25, -1.0, -1.0, 0.25, 0.75, 0.5, 1.0, 0.25, 0.0, -0.5, -0.25, 0.75, 0.25, 1.0, ]);
    
    const array4 = new Float32Array([-0.5, -0.75, -0.25, -0.5, -1.0, 0.0, 0.75, -1.0, -1.0, -1.0, -0.25, 0.25, -1.0, -0.75, -0.25, 0.75, 1.0, 0.25, 0.25, -0.75, -1.0, 0.75, -0.25, 0.75, -1.0, 1.0, -1.0, -0.25, -0.75, -1.0, 0.5, 0.75, 0.75, -0.5, -1.0, 0.75, 1.0, 0.5, -0.75, 0.5, -1.0, -1.0, -0.25, 0.5, -0.25, 1.0, 1.0, 0.75, -1.0, 0.75, 1.0, 0.25, -0.5, 1.0, -0.5, 0.5, -1.0, -0.75, -1.0, 0.5, 0.0, -0.25, -0.75, -0.75, 0.75, -0.75, -0.25, -1.0, 0.75, 1.0, -0.5, -1.0, -0.5, -1.0, -1.0, 0.5, -0.25, -0.25, -0.75, 0.75, 0.25, 0.75, 0.5, -0.75, -0.5, 0.5, -1.0, -0.25, -0.75, -0.25, -0.75, -0.75, 0.25, -0.5, 0.5, 0.25, 1.0, -0.75, 1.0, -0.25, ]);
    const array5 = new Float32Array([0.75, -0.75, -1.0, 0.0, 0.75, -0.25, -1.0, 0.25, 0.0, -0.25, -1.0, -1.0, -0.25, 0.75, -0.5, -0.75, -0.75, 0.0, 1.0, 0.0, 0.75, 0.5, 0.75, -0.75, -0.75, 1.0, -0.5, 0.75, -0.25, 0.5, -1.0, -0.5, -0.75, 0.5, -0.5, 0.5, 0.0, -1.0, -0.5, -0.75, 1.0, -1.0, 0.0, -0.25, 0.75, 0.0, -1.0, 1.0, 0.75, -1.0, 1.0, -0.5, -0.5, 0.0, -0.25, -0.5, -1.0, -0.5, 1.0, -0.75, 0.0, -1.0, -0.5, 0.25, 1.0, -1.0, -0.25, 0.5, 1.0, -1.0, -0.75, -1.0, 0.0, 0.25, 0.0, -0.5, 0.0, 0.25, 0.5, 0.5, 1.0, -1.0, -0.25, -0.75, 1.0, 0.0, 0.0, 1.0, -0.75, -0.5, 1.0, 1.0, 1.0, 0.75, -0.5, 0.5, 1.0, -1.0, 0.75, 0.75, ]);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const array6 = new Float32Array([-0.25, -0.25, 1.0, 0.5, -0.75, 0.0, -1.0, -0.25, 1.0, -1.0, -0.25, 0.0, -0.5, -0.5, 0.25, 1.0, -0.5, -0.5, -0.25, -0.25, 0.0, -0.5, 1.0, -0.75, -1.0, -0.75, 0.0, -1.0, 0.75, 0.25, -0.5, 1.0, -0.5, 0.5, 1.0, -0.75, 0.25, -1.0, -0.25, 0.5, 0.75, -0.5, 0.25, -0.5, -1.0, 0.0, -0.75, 0.5, 0.5, 0.25, -0.75, -0.5, -1.0, -0.75, 0.0, -0.5, 0.0, -0.25, -0.25, 0.75, 0.0, -0.25, 0.5, 0.25, 0.5, 0.0, -1.0, -0.5, 0.5, 1.0, 0.25, 0.0, -1.0, 0.75, 0.75, -0.5, 0.75, -0.5, 1.0, 0.0, -1.0, 0.25, -0.75, 1.0, -1.0, -0.25, 1.0, 0.25, 0.0, -0.5, -0.25, -0.5, -0.5, 0.5, -1.0, -0.25, 0.75, -1.0, 0.75, -0.25, ]);
    const array7 = new Float32Array([0.75, 0.75, -0.5, 1.0, 1.0, 0.0, 0.0, 1.0, -0.25, -0.5, -1.0, -1.0, 0.5, 0.25, -0.5, 0.0, -1.0, 0.75, 0.5, 0.25, -1.0, 0.0, 0.5, 0.5, 0.75, -1.0, 0.5, -0.5, 0.75, 0.5, -0.25, 0.5, 0.5, -0.5, 0.75, 0.5, 1.0, -1.0, 0.25, -1.0, 0.0, -0.5, -0.5, -0.5, 0.5, 0.5, -0.5, -0.75, -0.25, 1.0, -0.5, -0.25, 0.5, -1.0, -0.75, 0.75, -0.25, -0.5, -0.5, -1.0, -1.0, 0.5, -0.5, -0.5, 0.0, -1.0, -0.5, -0.25, 0.25, -1.0, -1.0, 0.25, -0.5, 0.75, -0.25, 1.0, -1.0, -0.25, 0.0, 0.0, 0.0, -0.75, 0.0, -1.0, 0.75, 0.25, 1.0, 0.25, 0.75, -1.0, -1.0, 0.5, 0.25, -0.75, -0.5, 1.0, 0.5, -0.25, 1.0, -0.5, ]);
    
    
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device10.destroy();
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array8 = new Float32Array([0.0, 1.0, -0.25, -1.0, 0.25, -0.75, -0.25, -0.75, -0.25, -0.25, 0.75, 0.25, 0.0, 0.75, 0.25, -0.25, 0.0, 0.25, -0.5, -1.0, 1.0, 1.0, -1.0, 0.75, -1.0, -0.75, 0.0, 0.0, -0.5, -0.25, 0.0, 0.0, 0.25, -0.5, 0.25, -0.25, 0.5, 0.25, -1.0, 0.5, -1.0, -0.75, 0.25, -0.75, 0.25, -0.25, 1.0, 0.0, 0.75, 0.5, 0.5, -1.0, 0.5, -1.0, 0.25, 0.5, 0.5, 0.75, 0.5, 0.5, 0.5, -1.0, -1.0, 1.0, -1.0, 0.0, -1.0, -0.25, 0.75, -1.0, -0.5, -0.5, -1.0, 0.0, 1.0, 0.75, 0.75, 0.5, 0.75, -0.75, 0.5, -0.5, 0.25, -0.75, -1.0, -0.5, 0.0, -0.5, 0.0, 0.25, -1.0, -0.25, 0.0, 1.0, -1.0, 0.0, -0.25, -0.5, 1.0, 0.0, ]);
    
    
    
    
    
    const array9 = new Float32Array([-0.25, -1.0, 0.0, -0.25, 1.0, -1.0, -0.75, 0.75, 1.0, 0.75, 0.25, -0.75, -0.25, -0.5, -1.0, -0.5, 0.75, -0.25, -0.25, 1.0, -0.5, -0.75, 0.5, 0.5, -1.0, 0.25, -0.75, -0.25, 0.0, -0.5, 1.0, -0.75, 0.25, 0.75, -1.0, 0.75, 0.25, 0.25, -0.75, 0.5, 0.25, 0.25, 0.75, -0.75, -0.75, -1.0, 0.0, -1.0, 0.0, 0.75, -1.0, -1.0, 0.25, 0.0, -0.75, 0.5, 0.0, 1.0, -0.25, 0.0, -1.0, -0.25, -0.25, -0.5, -1.0, 0.0, -0.5, -0.75, 0.75, -0.5, 1.0, -0.5, 0.0, 0.25, -1.0, 0.25, 0.25, 0.0, -0.5, -0.5, 0.0, -1.0, 0.0, -0.25, 0.5, -0.75, -0.75, 0.75, 0.0, 0.0, 0.0, 0.0, 0.5, 0.25, -0.25, -0.5, 1.0, 0.0, 1.0, 0.0, ]);
    
    const array10 = new Float32Array([1.0, 0.5, 1.0, 0.0, -0.25, -0.25, 0.75, 1.0, 0.0, 0.75, 0.0, 0.5, -0.25, -1.0, -0.5, 1.0, 0.25, 1.0, -0.25, -0.25, -0.75, -0.25, -0.75, 0.5, 0.75, 0.5, 0.75, 0.25, -0.25, 0.25, 0.0, -0.5, 1.0, -0.75, 0.5, 1.0, -0.5, -0.5, 0.25, -0.5, 0.5, -0.5, -1.0, 0.75, -0.75, 0.75, 0.75, 0.75, 0.5, 0.75, 0.75, 0.0, -0.25, -0.75, 1.0, -1.0, -0.75, -1.0, 0.0, 0.5, 0.75, -0.75, 0.5, -0.75, 1.0, 0.75, 0.75, 0.5, 0.75, -1.0, -0.75, -0.75, -0.5, 1.0, -0.75, -0.75, -0.25, 0.25, 0.75, 0.75, 0.5, -0.5, -1.0, 0.5, -0.5, 0.5, -0.5, 0.5, -0.75, 0.25, 0.25, -0.75, -0.5, 0.75, -0.75, -0.5, -0.25, 1.0, -0.5, -0.75, ]);
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array11 = new Float32Array([0.5, -0.75, 1.0, 1.0, 1.0, -0.75, -0.25, -0.75, -0.25, -0.75, 1.0, 0.75, -0.75, 1.0, 1.0, 0.5, -0.25, 0.5, 0.25, 0.5, -1.0, 0.75, -0.5, -1.0, -0.75, 0.5, 0.75, 0.25, -0.75, 0.5, 0.25, 0.75, 0.25, 0.0, -0.5, 0.25, -0.5, 1.0, 1.0, 1.0, 0.5, 0.0, -1.0, -0.5, 0.5, -0.5, -0.5, -1.0, 0.25, 0.25, 1.0, -0.75, 0.0, -0.5, 0.25, -0.5, 0.75, 0.75, -0.5, -1.0, 0.25, -0.5, 0.5, 0.5, 0.25, -0.25, 0.25, -0.75, 0.0, 1.0, 1.0, 1.0, 0.75, 0.5, -1.0, 0.25, -1.0, 0.5, 0.25, 0.25, -0.5, 1.0, -1.0, 0.75, 1.0, -0.25, 0.75, -0.75, 0.0, 0.25, -0.25, -0.75, 0.25, -0.75, -0.5, 0.5, 1.0, 0.5, 0.5, 0.25, ]);
    const command_buffer000 = command_encoder000.finish();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const array12 = new Float32Array([0.75, 0.0, -0.5, 0.75, 0.25, 0.75, -0.5, 0.5, 1.0, -0.5, -0.75, 0.75, 0.0, 0.5, 0.75, -0.5, -0.75, -1.0, -0.75, -1.0, -0.5, -1.0, -0.75, -0.75, 1.0, 0.0, -1.0, -0.25, -0.25, 0.0, -0.75, -1.0, -0.75, 0.0, 0.75, -1.0, -0.75, 0.0, 0.25, 1.0, -1.0, 0.25, 0.75, 0.5, -0.75, -0.75, 0.25, 0.5, -0.75, 0.0, 1.0, 0.25, -0.25, 0.5, -0.5, -1.0, 0.0, 0.0, -0.75, -0.75, 0.25, -0.25, 0.25, -0.25, 0.5, 0.25, 0.5, -0.25, 0.0, -0.75, 0.25, 0.75, -0.75, -0.75, -0.25, 0.75, -0.25, 0.75, -0.5, -1.0, 1.0, -0.5, 0.75, 0.25, 0.25, 0.75, 0.25, 1.0, -0.25, -0.25, 1.0, -0.5, 0.0, 0.5, -0.25, -0.25, -1.0, 0.75, -0.75, -1.0, ]);
    
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    compute_pass_encoder2010.popDebugGroup()
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
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device20.queue.writeTexture({ texture: texture200 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth24plus",
        dimension: "2d"
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    compute_pass_encoder2010.popDebugGroup()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    render_bundle_encoder201.insertDebugMarker("marker");
    device30.pushErrorScope("out-of-memory");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    device20.pushErrorScope("out-of-memory");
    
    render_bundle_encoder201.insertDebugMarker("marker");
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    
    
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
    texture300.destroy();
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    compute_pass_encoder2010.popDebugGroup()
    device20.queue.writeBuffer(buffer200, 0, array12, 0, array12.length);
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
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    texture100.destroy();
    compute_pass_encoder2020.insertDebugMarker("marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    compute_pass_encoder2020.insertDebugMarker("marker")
    const command_buffer201 = command_encoder201.finish();
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
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
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    compute_pass_encoder2010.popDebugGroup()
    
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
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
    device20.queue.writeTexture({ texture: texture201 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    device20.queue.writeTexture({ texture: texture203 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder201.setPipeline(render_pipeline201);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    device20.queue.writeBuffer(buffer200, 0, array11, 0, array11.length);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder200.setPipeline(render_pipeline201);
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture201 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder301.insertDebugMarker("mymarker");
    
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    
    
    
    
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
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_pass_encoder3000.setStencilReference(1);
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    device20.queue.writeTexture({ texture: texture204 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture204 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder2021 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2021" });
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture204 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder202.insertDebugMarker("mymarker");
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout202]
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    compute_pass_encoder2021.setPipeline(compute_pipeline202);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.setPipeline(compute_pipeline205);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8snorm",
        dimension: "2d"
    });
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    
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
    const compute_pass_encoder3011 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3011" });
    
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    device30.queue.writeTexture({ texture: texture301 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
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
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2000.executeBundles([])
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder2000.setPipeline(render_pipeline202);
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    buffer200.destroy()
    
    
    render_pass_encoder2030.executeBundles([])
    render_pass_encoder2030.beginOcclusionQuery(0)
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    render_pass_encoder2030.setStencilReference(1);
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2000.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3010.executeBundles([])
    device30.queue.submit([]);
    render_bundle_encoder300.setPipeline(render_pipeline302);
    texture301.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2000.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    render_pass_encoder3010.setStencilReference(1);
    texture200.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_pass_encoder3010.setPipeline(render_pipeline300);
    
    compute_pass_encoder2020.setPipeline(compute_pipeline207);
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    compute_pass_encoder2010.setPipeline(compute_pipeline208);
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    render_pass_encoder3010.pushDebugGroup("group_marker");
    device20.queue.writeTexture({ texture: texture202 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.pushErrorScope("internal");
    
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const array13 = new Float32Array([0.75, -0.75, 0.75, -1.0, 1.0, 0.75, -0.75, 0.5, 1.0, -1.0, 0.5, 1.0, -1.0, 0.75, -0.5, 0.25, -1.0, 0.25, -0.25, -0.5, -0.5, 0.0, -0.25, -0.5, 0.75, -0.75, -0.5, -1.0, 1.0, 0.25, -1.0, 0.5, 1.0, 0.0, 0.75, 1.0, -0.25, -1.0, -0.5, 0.0, 0.25, -0.5, 0.5, 0.0, 0.0, -1.0, 0.5, -0.5, 0.5, -1.0, 0.0, 0.5, -0.25, 0.0, 1.0, 1.0, 0.25, -0.5, 0.0, 1.0, 0.25, 0.5, -0.75, -0.75, -0.25, 0.0, -0.5, 0.0, 0.75, 0.25, -1.0, 0.5, -0.75, 0.75, -0.5, 0.25, 0.75, 0.5, 0.25, -0.25, -0.25, 1.0, 0.0, 0.0, 1.0, 0.25, 1.0, -0.5, -0.25, 0.25, 1.0, 0.25, 0.5, 0.5, 0.5, 0.75, 0.75, 0.25, 0.75, 0.75, ]);
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3021,
            },
        ],
        occlusionQuerySet: undefined
    });
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
        
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: compute_pipeline205.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group200);
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    render_pass_encoder3020.setPipeline(render_pipeline301);
    render_pass_encoder3010.insertDebugMarker("marker");
    
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeTexture({ texture: texture204 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder3010.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer201, 0, array13, 0, array13.length);
    render_pass_encoder3030.setPipeline(render_pipeline301);
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout200,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer203, 0, array7, 0, array7.length);
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer303,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer304,
                },
            },
        ],
    });

    render_pass_encoder3030.setBindGroup(0, bind_group300);
    command_encoder303.resolveQuerySet(
        query300,
        0,
        32,
        buffer301,
        0
    )
    render_pass_encoder2000.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    render_pass_encoder2000.setStencilReference(1);
    
    device20.queue.writeTexture({ texture: texture204 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: compute_pipeline208.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer205,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer206,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group201);
    device20.queue.writeTexture({ texture: texture204 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    device30.destroy();
    buffer201.destroy()
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer207,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer208,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group202);
    render_pass_encoder2000.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    command_encoder200.copyBufferToTexture(
        {
            buffer: buffer204
        },
        {
            texture: texture201
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device20.queue.writeBuffer(buffer205, 0, array11, 0, array11.length);
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    compute_pass_encoder2010.popDebugGroup()
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout205]
    });
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2000.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group203);
    command_encoder202.clearBuffer(buffer200);
    render_bundle_encoder200.popDebugGroup();
    device20.queue.writeTexture({ texture: texture204 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    buffer204.destroy()
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
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_pass_encoder2000.setBindGroup(0, bind_group204);
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2030.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer208, 0, array12, 0, array12.length);
    device20.queue.writeBuffer(buffer205, 0, array12, 0, array12.length);
    {
        await buffer2012.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer2012.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer2012.unmap();
        console.log(new Float32Array(data));
    }
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    
    
    render_pass_encoder2000.setStencilReference(1);
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    buffer205.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder2021.insertDebugMarker("marker")
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer207, 0, array3, 0, array3.length);
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    command_encoder200.copyBufferToBuffer(
        buffer202,
        0,
        buffer203,
        0,
        400
    );
    query201.destroy()
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2013, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2013, 0);
    
    device20.queue.writeTexture({ texture: texture204 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout202,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture203 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device20.queue.writeTexture({ texture: texture204 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query201.destroy()
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    const render_pass_encoder3011 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3021,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer206, 0, array11, 0, array11.length);
    device20.queue.writeBuffer(buffer2013, 0, array3, 0, array3.length);
    
    
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout203,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer2013, 0, array3, 0, array3.length);
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout201]
    });
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout206,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    device20.queue.writeBuffer(buffer2013, 0, array4, 0, array4.length);
    device20.queue.writeTexture({ texture: texture204 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: query200
    });
    device20.queue.writeTexture({ texture: texture204 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout201,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture204 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_pass_encoder2000.insertDebugMarker("marker");
    query201.destroy()
    device20.queue.writeBuffer(buffer2010, 0, array1, 0, array1.length);
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer203, 0, array8, 0, array8.length);
    render_pass_encoder2030.setPipeline(render_pipeline201);
    buffer205.destroy()
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout205,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    texture202.destroy();
    device20.queue.writeTexture({ texture: texture204 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    {
        await buffer2012.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer2012.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer2012.unmap();
        console.log(new Float32Array(data));
    }
    device20.queue.writeBuffer(buffer2013, 0, array5, 0, array5.length);
    device20.queue.writeTexture({ texture: texture204 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    render_pass_encoder2000.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const render_pass_encoder2031 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query201
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const compute_pipeline2028 = device20.createComputePipeline({
        label: "compute_pipeline2028",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2029 = device20.createComputePipeline({
        label: "compute_pipeline2029",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout203]
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline2030 = device20.createComputePipeline({
        label: "compute_pipeline2030",
        layout: pipeline_layout205,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_pass_encoder2031.setPipeline(render_pipeline201);
    
    device20.queue.writeBuffer(buffer2013, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer2011, 0, array4, 0, array4.length);
    
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer203.destroy()
    compute_pass_encoder2021.pushDebugGroup("group_marker")
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    texture200.destroy();
    render_pass_encoder2031.insertDebugMarker("marker");
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout204]
    });
    render_pass_encoder2020.beginOcclusionQuery(1)
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    device20.queue.writeBuffer(buffer208, 0, array9, 0, array9.length);
    
    buffer202.destroy()
    
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    device20.queue.writeBuffer(buffer2011, 0, array2, 0, array2.length);
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const compute_pipeline2031 = device20.createComputePipeline({
        label: "compute_pipeline2031",
        layout: pipeline_layout206,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2032 = device20.createComputePipeline({
        label: "compute_pipeline2032",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeTexture({ texture: texture204 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2033 = device20.createComputePipeline({
        label: "compute_pipeline2033",
        layout: pipeline_layout206,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture205 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeBuffer(buffer2013, 0, array4, 0, array4.length);
    device40.destroy();
    device20.queue.writeBuffer(buffer2013, 0, array2, 0, array2.length);
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    buffer208.destroy()
    render_pass_encoder2021.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer2013, 0, array9, 0, array9.length);
    const compute_pipeline2034 = device20.createComputePipeline({
        label: "compute_pipeline2034",
        layout: pipeline_layout206,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_pass_encoder2021.popDebugGroup();
    device10.pushErrorScope("internal");
    const compute_pipeline2035 = device20.createComputePipeline({
        label: "compute_pipeline2035",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2036 = device20.createComputePipeline({
        label: "compute_pipeline2036",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_pass_encoder2020.setPipeline(render_pipeline202);
    compute_pass_encoder2020.insertDebugMarker("marker")
    device50.pushErrorScope("internal");
    const compute_pipeline2037 = device20.createComputePipeline({
        label: "compute_pipeline2037",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    query202.destroy()
    const texture_view2041 = texture204.createView({ label: "texture_view2041" });
    const compute_pipeline2038 = device20.createComputePipeline({
        label: "compute_pipeline2038",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer2013, 0, array6, 0, array6.length);
    device20.queue.writeBuffer(buffer2010, 0, array11, 0, array11.length);
    compute_pass_encoder2020.popDebugGroup()
    const compute_pipeline2039 = device20.createComputePipeline({
        label: "compute_pipeline2039",
        layout: pipeline_layout202,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    render_bundle_encoder201.insertDebugMarker("marker");
    query500.destroy()
    const compute_pipeline2040 = device20.createComputePipeline({
        label: "compute_pipeline2040",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture203 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2010.end();
    device20.queue.writeBuffer(buffer2011, 0, array2, 0, array2.length);
    
    
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline2041 = device20.createComputePipeline({
        label: "compute_pipeline2041",
        layout: pipeline_layout202,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout201]
    });
    device20.queue.writeBuffer(buffer2013, 0, array1, 0, array1.length);
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const compute_pipeline2042 = device20.createComputePipeline({
        label: "compute_pipeline2042",
        layout: pipeline_layout209,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_bundle_encoder201.setVertexBuffer(0, buffer204);
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
    const compute_pipeline2043 = device20.createComputePipeline({
        label: "compute_pipeline2043",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2015,
                },
            },
        ],
    });

    render_pass_encoder2031.setBindGroup(0, bind_group205);
    compute_pass_encoder2020.popDebugGroup()
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
        layout: compute_pipeline202.getBindGroupLayout(0),
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
    render_pass_encoder2031.setVertexBuffer(0, buffer2016);
    compute_pass_encoder2021.dispatchWorkgroups(100);
    device50.queue.submit([]);
    render_pass_encoder2021.setPipeline(render_pipeline201);
    render_pass_encoder2031.setIndexBuffer(buffer2016, "uint16");
    compute_pass_encoder2010.end();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder2031.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2031.draw(3);
    compute_pass_encoder2021.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2031.drawIndexedIndirect(buffer202, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2018, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2018, 0);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2021.popDebugGroup()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2020,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group207);
    render_pass_encoder3011.setPipeline(render_pipeline304);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2021, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2021, 0);
    render_pass_encoder2000.setVertexBuffer(0, buffer206);
    render_pass_encoder2020.setVertexBuffer(0, buffer2013);
    render_pass_encoder2020.drawIndirect(buffer2013, 0);
    render_pass_encoder2031.end();
    compute_pass_encoder2020.end();
    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2023,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group208);
    render_pass_encoder2000.drawIndirect(buffer2018, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2030.setVertexBuffer(0, buffer2011);
    render_pass_encoder2031.drawIndexed(3);
    render_pass_encoder2030.drawIndirect(buffer2021, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2000.end();
    render_pass_encoder2030.endOcclusionQuery()
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2024, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2024, 0);
    render_pass_encoder2020.setIndexBuffer(buffer209, "uint16");
    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2026 = device20.createBuffer({
        label: "buffer2026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2026,
                },
            },
        ],
    });

    render_pass_encoder2021.setBindGroup(0, bind_group209);
    compute_pass_encoder2021.dispatchWorkgroups(100);
    render_pass_encoder2021.setVertexBuffer(0, buffer2017);
    render_pass_encoder2030.end();
    render_pass_encoder2021.draw(3);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2020.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer205, 0);
    compute_pass_encoder2000.end();
    const command_buffer203 = command_encoder203.finish();
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder2031.drawIndirect(buffer2021, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2031.drawIndirect(buffer2021, 0);
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder2020.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2031.drawIndirect(buffer2021, 0);
    device20.queue.submit([command_buffer200, command_buffer202, command_buffer203, ]);
    compute_pass_encoder2021.end();
    render_pass_encoder2030.popDebugGroup();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2000.drawIndirect(buffer208, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2021.drawIndirect(buffer2013, 0);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder2031.drawIndexed(3);
    device20.queue.submit([command_buffer202, ]);
    device20.queue.submit([]);
    const buffer2027 = device20.createBuffer({
        label: "buffer2027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2028 = device20.createBuffer({
        label: "buffer2028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2028,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2010);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2031.drawIndirect(buffer2018, 0);
    compute_pass_encoder2020.end();
    device20.queue.submit([command_buffer200, ]);
    device50.queue.submit([]);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2031.setIndexBuffer(buffer2021, "uint16");
    compute_pass_encoder2020.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    device20.queue.submit([]);
}