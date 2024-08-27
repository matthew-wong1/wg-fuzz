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
    
    
    const array0 = new Float32Array([-1.0, 0.5, -0.5, -0.5, 0.75, -0.75, -0.5, 0.5, -1.0, -0.75, 0.25, 0.75, -0.5, 1.0, -0.75, -0.75, -0.5, 0.5, -1.0, -0.75, -0.75, -0.5, 0.25, -0.25, 0.75, 0.75, -0.75, -0.25, -0.5, -0.75, 0.25, -0.75, 1.0, -0.75, 1.0, -0.75, -0.75, 1.0, 0.0, -0.75, -0.5, 1.0, -0.75, -0.5, 0.75, 0.5, -1.0, -0.75, -0.25, 1.0, -1.0, 0.25, -0.5, -0.25, 0.25, 0.75, -0.5, -0.25, -0.5, 0.5, 1.0, -0.75, -0.75, -0.25, -0.5, -1.0, 0.75, -1.0, 0.5, -0.25, 0.25, 0.75, 0.0, 0.5, 0.25, -0.75, 0.75, -0.5, 1.0, 0.5, -1.0, -0.5, 0.75, 0.75, -1.0, -0.25, -1.0, 0.75, 0.25, -1.0, -0.75, 0.25, -0.5, 0.0, 0.5, 1.0, -0.75, -0.25, -0.75, 0.5, ]);
    const array1 = new Float32Array([-1.0, -0.5, -0.5, 0.25, 0.5, 0.5, 0.5, -0.25, 0.0, 0.5, 0.25, -0.5, -1.0, -1.0, -0.25, -0.75, -0.75, 0.75, -0.75, -0.25, -1.0, 0.0, 0.5, 0.25, -1.0, 0.75, -0.5, -0.5, -0.5, -0.5, -0.75, 1.0, -0.25, 0.75, -0.75, 0.5, -0.5, 0.75, 0.25, 0.25, 0.75, -1.0, -1.0, -1.0, 0.5, -1.0, 0.0, 0.25, 0.0, -0.25, 1.0, 1.0, 0.5, 0.25, 0.0, 0.25, 1.0, 0.5, 1.0, 0.75, -0.75, 0.75, 0.75, -1.0, -0.5, -1.0, -0.25, 1.0, 0.25, -0.25, 0.75, 0.0, -0.5, 0.0, -1.0, 0.75, -1.0, 0.75, -0.25, -0.25, 0.25, -0.25, 0.25, 0.0, 0.5, -0.25, -0.5, 0.5, 0.5, -0.25, -0.75, -0.75, -0.25, -0.75, 0.25, -0.5, 0.0, -1.0, 1.0, 0.25, ]);
    const array2 = new Float32Array([0.5, -0.5, -0.75, 0.25, 1.0, -0.75, -0.75, -0.5, 1.0, -0.25, 0.5, -0.75, -1.0, -1.0, -0.25, 0.5, -0.5, -0.75, -0.25, 0.0, 0.0, 0.5, 0.5, 1.0, 0.25, -0.5, -1.0, 0.5, -0.75, 0.25, 1.0, 1.0, 0.75, -1.0, 0.75, -1.0, -0.25, 0.25, 0.5, -0.75, 0.25, 0.75, 0.25, 0.5, 0.75, 0.0, -0.75, 0.25, 0.75, -0.25, -1.0, 1.0, -0.5, -0.75, -0.5, 1.0, 0.75, -0.75, -0.75, 0.25, 1.0, 0.0, -0.5, 0.75, -0.75, 0.75, -0.75, -0.5, 0.75, 0.75, -0.25, 0.75, 0.0, 0.0, -1.0, -1.0, 0.75, 0.75, -0.5, -0.25, 0.75, -0.5, 0.25, 0.25, 0.5, 0.0, 1.0, -1.0, -0.75, -0.75, -0.5, 1.0, 0.25, 0.0, -0.75, 1.0, -0.75, 0.0, -1.0, 1.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const array3 = new Float32Array([-0.5, 0.5, -0.5, -1.0, 0.0, -1.0, 0.75, -1.0, 0.25, 0.25, -0.25, 0.25, -0.75, 0.25, 0.75, 0.25, 0.75, 0.75, -0.25, -0.75, -0.25, 0.75, -0.5, -0.25, -0.25, 0.25, -0.5, -0.5, 1.0, -0.75, -0.5, -1.0, -0.25, 0.5, 0.75, 0.0, -0.25, 0.5, 0.75, 0.75, -0.75, -0.75, 0.0, 0.0, -0.5, -1.0, 0.0, 0.0, 0.75, 0.25, 0.25, -0.75, -0.5, -0.25, 0.75, 0.75, 1.0, 0.5, -0.5, -0.5, -0.25, 0.5, -0.25, 0.75, 0.25, 0.5, 0.25, -0.25, -1.0, -0.5, 0.0, 0.5, -1.0, 0.75, 0.25, 1.0, -0.25, 0.5, 1.0, -0.25, 0.75, -0.75, 0.0, 0.0, 0.5, 0.5, 0.75, -0.75, -1.0, 0.0, -1.0, 1.0, 0.5, -1.0, -0.5, -1.0, -0.5, -0.25, -0.75, -0.25, ]);
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    device10.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array4 = new Float32Array([0.25, 0.5, 0.0, 0.5, 0.0, -1.0, 0.0, -0.75, -0.5, 0.5, -0.75, 0.25, -0.75, 1.0, 0.0, -0.25, 0.5, -0.5, 0.0, 0.0, 0.0, -1.0, 1.0, 0.0, -0.5, -0.5, 0.75, 0.5, -1.0, -0.75, -0.75, -0.5, -0.25, 1.0, 0.0, 0.0, -0.75, -1.0, -0.25, 0.0, 0.0, 0.0, 1.0, 0.0, 0.25, 1.0, 1.0, 0.75, 0.75, -0.5, 0.25, -0.75, 0.0, -0.25, -0.25, 0.75, 0.0, 1.0, -1.0, -0.75, -0.25, -1.0, 0.75, -0.75, -0.5, 1.0, -0.25, -0.25, -0.5, 1.0, -0.5, 0.0, 0.5, -0.5, 0.5, -1.0, 0.5, -1.0, -0.75, -0.75, 0.5, 0.75, -0.75, 0.25, 0.25, -0.25, 0.75, 1.0, 0.5, -1.0, -0.5, -0.5, 0.0, -0.75, -0.75, 0.5, -0.75, -0.75, -0.25, 0.25, ]);
    const array5 = new Float32Array([-1.0, 1.0, 0.0, -0.5, 0.75, -1.0, 0.25, 0.0, 0.5, 0.0, 1.0, -1.0, -0.5, -0.25, -1.0, -0.5, 1.0, -0.25, -0.25, 0.75, -0.75, -1.0, -0.25, 0.75, 1.0, 0.75, -0.25, -0.25, 1.0, -0.75, -0.25, -0.5, 0.0, 0.0, 0.0, 0.5, -0.5, 0.0, -1.0, -0.25, -0.75, 0.5, 0.75, 0.75, -0.75, -0.25, -0.5, 0.5, 0.25, -0.25, -0.75, 0.25, 0.75, 0.25, 0.0, 0.75, -0.75, 0.5, 0.75, 0.0, 0.0, 0.25, -0.75, -0.75, -1.0, 0.25, 0.5, -1.0, 0.75, -1.0, 0.5, -0.5, -0.75, -0.75, -1.0, 0.75, -0.75, -1.0, -0.25, -1.0, 1.0, -0.75, 0.5, 0.25, 0.25, 1.0, 0.25, 1.0, 1.0, -0.5, 0.5, 0.75, 0.75, 0.5, 1.0, 0.25, -0.75, 1.0, -1.0, 0.75, ]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device20.pushErrorScope("internal");
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    device30.pushErrorScope("validation");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const command_buffer200 = command_encoder200.finish();
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const array6 = new Float32Array([0.5, -0.5, -0.5, 1.0, -1.0, -0.5, -0.25, -0.75, 0.5, 0.75, -1.0, 0.0, -0.25, 0.5, -0.25, 0.25, -0.25, -0.75, 1.0, -0.25, 0.0, -0.5, 0.5, 0.75, -0.25, -0.75, 1.0, 0.25, 0.5, -1.0, 0.25, -1.0, 1.0, -0.25, -0.5, 1.0, 0.25, 0.25, -0.75, 1.0, -0.75, -0.5, 0.75, 0.75, -0.25, -0.5, -1.0, 0.5, -0.75, -0.75, 0.0, 0.0, 0.5, 0.5, 0.5, -0.5, -1.0, -0.75, 0.25, -0.5, -1.0, -0.25, 1.0, 0.25, 0.25, 0.0, 0.75, 0.25, 0.5, -0.25, -1.0, 0.75, 0.25, 0.25, 1.0, 1.0, 0.0, -1.0, 0.25, 1.0, 0.25, -0.75, 0.75, 1.0, -1.0, -0.25, 0.0, 0.5, 0.0, -0.5, 0.25, 1.0, 0.75, 1.0, 0.0, -0.5, -1.0, 0.0, 0.5, 0.25, ]);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array7 = new Float32Array([-0.25, 0.25, -0.75, -0.25, -0.75, 1.0, -0.5, 0.0, -0.25, -1.0, -0.5, 0.0, -0.25, -0.25, 0.75, -0.25, -1.0, -0.5, -0.75, 1.0, 1.0, -0.75, -0.5, 0.0, 0.5, 0.25, 0.5, -1.0, 0.5, -1.0, -0.5, -0.75, 0.0, 0.0, -1.0, -0.75, -0.5, 0.0, -0.75, 0.5, 0.5, -0.5, 0.0, 1.0, -1.0, 0.0, 0.0, -0.25, 0.0, 0.25, -0.5, 0.5, -0.25, -0.25, 0.25, -0.25, 0.75, 1.0, -0.25, -0.75, 0.75, -0.75, -0.75, 0.25, -0.75, -0.5, -0.5, 1.0, 1.0, -0.25, 1.0, -0.5, 0.75, -0.25, 0.75, 0.0, -0.25, 0.75, -0.5, 0.0, 1.0, 0.0, -1.0, 0.25, -0.75, -0.75, 0.25, -0.25, 0.5, -0.75, 0.0, -1.0, 0.75, -0.75, 0.0, -1.0, 0.5, 0.25, -0.25, -1.0, ]);
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    const array8 = new Float32Array([-0.25, 0.25, 0.5, -0.75, 1.0, -0.75, 0.5, -0.5, 0.5, -0.75, 0.25, -0.75, 1.0, 0.25, 0.0, 0.5, 0.75, 0.75, 0.0, 0.75, 0.0, -0.5, -0.5, -0.5, -0.5, 1.0, 1.0, 0.0, -0.75, 0.5, -0.5, 0.25, -0.25, 0.25, 0.0, 0.25, 0.0, 0.0, 0.75, -0.75, -0.25, -0.75, -0.25, -1.0, -0.25, -0.75, 0.75, 0.25, 0.75, -0.5, -0.75, 0.0, 0.75, 0.75, -0.5, -0.25, -0.5, 0.5, 0.5, 0.25, -0.5, 0.0, 0.75, 0.75, 0.25, 0.5, 0.75, 0.0, -1.0, 0.0, 0.0, 0.25, -0.5, 0.75, -0.75, -0.25, -0.5, 0.25, -1.0, 0.75, -0.5, 1.0, 0.25, -1.0, -0.5, -1.0, 0.75, 0.25, 0.25, 0.25, 0.25, -1.0, 0.0, 0.0, 0.0, -0.5, -0.25, -1.0, -1.0, 0.0, ]);
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const array9 = new Float32Array([0.75, 0.0, -0.75, -0.75, 0.0, 0.0, 0.75, 0.75, 0.75, 0.25, 1.0, 0.75, -0.5, -0.75, 0.0, 0.75, -1.0, 0.5, 0.0, 0.25, -1.0, 0.75, 0.5, -1.0, 0.25, -0.5, 0.25, 0.5, -0.5, 0.0, 0.75, 0.0, 0.25, -0.5, -0.5, -0.5, 0.25, -0.25, 0.5, 0.0, 0.75, 0.75, -1.0, -0.25, 0.25, 0.5, 1.0, 0.0, -0.25, 0.25, 0.25, -1.0, 0.75, 0.25, 0.25, -1.0, -0.75, 0.5, -0.25, 0.5, 0.0, 0.0, -0.25, -1.0, 0.0, 0.25, -0.25, -0.5, -0.25, 0.5, 0.5, -1.0, -0.25, 1.0, -1.0, 1.0, 0.25, -0.5, 0.25, 0.5, -0.25, -1.0, -0.5, -0.75, -0.75, 1.0, -0.25, 0.25, -0.75, 1.0, -0.25, 0.5, 0.0, -0.5, -0.5, 0.75, 1.0, 0.5, 1.0, 0.75, ]);
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    device20.pushErrorScope("internal");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    query200.destroy()
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    buffer300.destroy()
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
    
    
    
    device40.destroy();
    device00.queue.writeTexture({ texture: texture002 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32float",
        dimension: "2d"
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture003.destroy();
    device00.pushErrorScope("internal");
    
    device20.destroy();
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
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    
    render_bundle_encoder001.setPipeline(render_pipeline000);
    
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    texture001.destroy();
    device60.pushErrorScope("internal");
    
    device00.destroy();
    
    
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    device30.queue.writeTexture({ texture: texture300 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.pushErrorScope("out-of-memory");
    
    buffer500.destroy()
    
    const command_buffer300 = command_encoder300.finish();
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    texture601.destroy();
    
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
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
    device30.queue.writeTexture({ texture: texture300 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    device50.pushErrorScope("out-of-memory");
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    query501.destroy()
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device30.pushErrorScope("validation");
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
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
    
    
    
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    render_bundle_encoder300.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer601, 0, array9, 0, array9.length);
    
    {
        await buffer600.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer600.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer600.unmap();
        console.log(new Float32Array(data));
    }
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32sint",
        dimension: "2d"
    });
    device60.queue.writeBuffer(buffer600, 0, array6, 0, array6.length);
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    const array10 = new Float32Array([0.0, 1.0, -0.75, 0.75, 0.0, 0.0, -0.5, 1.0, -1.0, 1.0, 0.0, -0.75, -0.75, -0.25, -0.75, 1.0, -0.5, 0.75, 0.25, -0.25, -0.75, 0.5, -0.25, 1.0, 0.0, -0.25, -0.25, 1.0, 0.5, -0.75, 0.0, -0.5, -0.25, 0.0, -1.0, 1.0, 1.0, -0.5, -0.25, -0.5, 1.0, 0.0, -1.0, 0.5, -1.0, -1.0, -0.75, -0.25, 0.75, -1.0, 0.0, -1.0, -0.25, -0.5, -0.75, 0.25, -0.5, -0.5, 0.25, 0.5, -0.75, -0.25, 0.5, -1.0, 0.0, -0.5, 1.0, 0.25, 0.75, -0.5, -0.5, 1.0, 0.75, 0.75, 0.0, -1.0, 0.25, 0.5, -0.75, 1.0, 1.0, 1.0, 1.0, -0.5, -0.75, 0.25, 0.0, -0.75, -1.0, -0.5, 1.0, -0.5, 0.75, 0.5, -1.0, 0.25, 0.75, -1.0, 0.75, -0.25, ]);
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
    render_bundle_encoder301.pushDebugGroup("group_marker");
    device60.queue.writeBuffer(buffer600, 0, array6, 0, array6.length);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeBuffer(buffer600, 0, array4, 0, array4.length);
    
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    {
        await buffer601.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer601.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer601.unmap();
        console.log(new Float32Array(data));
    }
    texture603.destroy();
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device60.queue.writeBuffer(buffer602, 0, array3, 0, array3.length);
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    {
        await buffer602.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer602.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer602.unmap();
        console.log(new Float32Array(data));
    }
    device60.queue.writeBuffer(buffer602, 0, array0, 0, array0.length);
    device60.queue.writeBuffer(buffer602, 0, array4, 0, array4.length);
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder301.popDebugGroup();
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    texture300.destroy();
    device60.queue.writeBuffer(buffer600, 0, array5, 0, array5.length);
    device60.queue.writeBuffer(buffer602, 0, array4, 0, array4.length);
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device60.queue.writeBuffer(buffer600, 0, array6, 0, array6.length);
    texture500.destroy();
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8sint",
        dimension: "2d"
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer600, 0, array6, 0, array6.length);
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    device60.queue.writeBuffer(buffer602, 0, array2, 0, array2.length);
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    device60.queue.writeBuffer(buffer602, 0, array10, 0, array10.length);
    
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder300.popDebugGroup();
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    device30.queue.writeBuffer(buffer301, 0, array10, 0, array10.length);
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    const array11 = new Float32Array([-1.0, 0.0, 0.25, -0.25, 0.25, 0.25, 0.25, -1.0, 0.5, -0.75, 0.75, -1.0, -0.5, 0.5, 0.25, -0.25, -0.75, -0.75, 0.25, 0.75, 0.0, 0.5, 0.75, -0.25, 0.75, 0.5, 0.5, 0.25, 1.0, 0.0, 1.0, 1.0, 0.25, 0.0, 0.0, -0.75, -0.25, -1.0, -0.5, 0.25, -1.0, -0.75, -1.0, 1.0, -0.75, 0.25, -1.0, 0.25, 0.25, 0.0, -1.0, -0.5, 0.25, -0.5, 0.5, -0.25, 1.0, -0.75, 0.25, 0.75, -0.75, -0.5, -1.0, 0.0, -1.0, 0.5, 0.5, 1.0, 0.5, 0.5, -1.0, -1.0, -0.75, -1.0, 0.0, 1.0, 0.75, -1.0, -0.25, -1.0, 1.0, 1.0, -0.25, 0.5, 0.75, 0.5, 0.5, 0.5, 0.0, -0.25, -0.75, 0.5, -1.0, 0.5, 0.5, 0.25, -0.25, -0.75, -0.75, 1.0, ]);
    device60.queue.writeBuffer(buffer602, 0, array6, 0, array6.length);
    const texture_view3012 = texture301.createView({ label: "texture_view3012" });
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    {
        await buffer501.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer501.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer501.unmap();
        console.log(new Float32Array(data));
    }
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const texture604 = device60.createTexture({
        label: "texture604",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8uint",
        dimension: "2d"
    });
    
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    device60.queue.writeBuffer(buffer602, 0, array1, 0, array1.length);
    texture301.destroy();
    
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    device60.queue.writeTexture({ texture: texture604 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device30.queue.writeTexture({ texture: texture303 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer500.destroy()
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    command_encoder600.copyTextureToBuffer(
        {
            texture: texture600
        },
        {
            buffer: buffer600
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    device60.queue.writeBuffer(buffer602, 0, array11, 0, array11.length);
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    buffer301.destroy()
    device60.queue.writeBuffer(buffer602, 0, array10, 0, array10.length);
    command_encoder600.copyTextureToBuffer(
        {
            texture: texture600
        },
        {
            buffer: buffer600
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    
    device60.queue.writeBuffer(buffer600, 0, array6, 0, array6.length);
    
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
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
    
    const render_pass_encoder6000 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder601.insertDebugMarker("marker");
    
    query600.destroy()
    query500.destroy()
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
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module603,
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
            module: shader_module603,
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
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    device60.queue.writeBuffer(buffer601, 0, array0, 0, array0.length);
    device30.queue.writeTexture({ texture: texture304 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device60.queue.writeTexture({ texture: texture602 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeTexture({ texture: texture604 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder601.insertDebugMarker("marker");
    device60.queue.writeTexture({ texture: texture603 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture304 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture304 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    device30.queue.writeTexture({ texture: texture304 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer602.destroy()
    render_pass_encoder6000.executeBundles([])
    buffer600.destroy()
    
    render_pass_encoder6000.executeBundles([render_bundle_encoder601, ])
    const render_pass_encoder6001 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: query600
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    
    
    query601.destroy()
    buffer301.destroy()
    buffer301.destroy()
    query600.destroy()
    device50.pushErrorScope("out-of-memory");
    
    render_pass_encoder6001.pushDebugGroup("group_marker");
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.pushErrorScope("internal");
    
    
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    device60.queue.writeTexture({ texture: texture600 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    query601.destroy()
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeTexture({ texture: texture304 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder600.resolveQuerySet(
        query601,
        0,
        32,
        buffer601,
        0
    )
    device60.queue.writeBuffer(buffer600, 0, array6, 0, array6.length);
    buffer300.destroy()
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    query500.destroy()
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
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer500 = command_encoder500.finish();
    device50.pushErrorScope("validation");
    
    
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    const texture605 = device60.createTexture({
        label: "texture605",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout502]
    });
    render_bundle_encoder601.setPipeline(render_pipeline600);
    device50.queue.writeTexture({ texture: texture502 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout502]
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    const texture_view6021 = texture602.createView({ label: "texture_view6021" });
    texture604.destroy();
    render_pass_encoder6000.pushDebugGroup("group_marker");
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    
    render_bundle_encoder502.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture304 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module603,
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
            module: shader_module603,
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
    
    texture301.destroy();
    device60.queue.writeTexture({ texture: texture602 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture304 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeBuffer(buffer600, 0, array7, 0, array7.length);
    
    
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    texture304.destroy();
    query504.destroy()
    const texture_view6002 = texture600.createView({ label: "texture_view6002" });
    command_encoder600.resolveQuerySet(
        query601,
        0,
        32,
        buffer602,
        0
    )
    texture303.destroy();
    render_pass_encoder6000.setPipeline(render_pipeline601);
    device60.queue.writeTexture({ texture: texture600 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeBuffer(buffer501, 0, array8, 0, array8.length);
    
    query504.destroy()
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder6000.popDebugGroup();
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder300.popDebugGroup();
    
    
    render_pass_encoder6001.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    device30.queue.writeTexture({ texture: texture305 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query602.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout302,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    render_pass_encoder6001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder6001.setPipeline(render_pipeline602);
    
    device60.queue.writeBuffer(buffer601, 0, array6, 0, array6.length);
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout304,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const texture_view3050 = texture305.createView({ label: "texture_view3050" });
    
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout300]
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder6001.setStencilReference(1);
    query504.destroy()
    render_bundle_encoder300.popDebugGroup();
    
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
    device60.queue.writeTexture({ texture: texture603 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture305.destroy();
    const render_bundle_encoder503 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder503",
        colorFormats: ["bgra8unorm"]
    });
    query602.destroy()
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    texture600.destroy();
    query602.destroy()
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    command_encoder601.pushDebugGroup("mygroupmarker")
    
    
    
    
    query500.destroy()
    
    
    device60.queue.writeTexture({ texture: texture602 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture302 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer601, 0, array1, 0, array1.length);
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    command_encoder601.popDebugGroup()
    query200.destroy()
    const render_pass_encoder6010 = command_encoder601.beginRenderPass({
        label: "render_pass_encoder6010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6002,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    render_pass_encoder6010.setPipeline(render_pipeline600);
    render_pass_encoder6001.popDebugGroup();
    const command_buffer202 = command_encoder202.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer603,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer604,
                },
            },
        ],
    });

    render_pass_encoder6000.setBindGroup(0, bind_group600);
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: render_pipeline602.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer605,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer606,
                },
            },
        ],
    });

    render_pass_encoder6001.setBindGroup(0, bind_group601);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.submit([command_buffer500, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder6001.setVertexBuffer(0, buffer600);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder6001.drawIndirect(buffer605, 0);
    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer607,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer608,
                },
            },
        ],
    });

    render_pass_encoder6010.setBindGroup(0, bind_group602);
    render_pass_encoder6000.setVertexBuffer(0, buffer603);
    device60.queue.submit([]);
    render_pass_encoder6010.setVertexBuffer(0, buffer601);
    render_pass_encoder6001.popDebugGroup();
    render_pass_encoder6010.drawIndirect(buffer607, 0);
    render_pass_encoder6001.end();
    render_pass_encoder6010.end();
    render_pass_encoder6000.end();
    const command_buffer601 = command_encoder601.finish();
    const command_buffer600 = command_encoder600.finish();
    device60.queue.submit([command_buffer600, command_buffer601, ]);
    device30.queue.submit([]);
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder6010.setIndexBuffer(buffer605, "uint16");
}