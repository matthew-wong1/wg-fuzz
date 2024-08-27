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
    const array0 = new Float32Array([0.0, -1.0, 0.75, 0.75, -0.25, 0.25, 1.0, 0.75, 0.25, -0.5, 1.0, 0.0, -0.25, -0.5, 1.0, 0.25, 0.0, -0.25, 0.5, 0.75, 1.0, 0.0, -0.75, -0.25, 1.0, 0.5, -0.5, 0.5, 0.75, 0.0, 0.0, 0.0, 0.0, 0.25, 0.0, 0.0, 0.0, -0.25, 0.25, -0.75, -1.0, 0.75, 1.0, 0.5, 1.0, 1.0, 0.0, -0.25, 0.5, 0.5, 0.75, -0.5, -0.5, 0.75, 0.5, -0.75, -0.75, -0.5, 0.75, -1.0, -0.75, -0.75, -0.75, -0.5, 0.25, 0.5, -0.75, 0.75, -0.75, 0.5, -0.25, -0.75, -0.75, -0.75, 0.5, 0.0, 0.5, 0.75, -0.5, 0.0, 1.0, -0.75, 0.5, 0.75, 0.5, 1.0, 0.5, -1.0, 0.5, 0.5, -0.5, 0.25, -0.75, -1.0, 0.0, 0.5, 1.0, 0.75, 0.5, 0.5, ]);
    
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    device00.queue.submit([]);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16float",
        dimension: "2d"
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    device00.pushErrorScope("validation");
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    device00.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([-0.25, 0.5, 0.75, -0.5, -0.25, 0.25, 0.25, 0.75, 0.75, -0.25, 0.25, 1.0, 0.25, 0.5, 0.0, -1.0, -0.25, -1.0, -0.25, 0.25, -0.5, -0.25, 0.5, 0.0, 0.5, -0.75, 0.0, -0.75, -0.75, 0.0, -0.25, 0.25, -1.0, 0.5, -1.0, -0.75, -0.25, -0.75, -0.5, 0.5, 0.0, -0.75, 0.5, 0.25, 0.0, -0.5, 1.0, -0.25, 1.0, -1.0, 0.0, 0.75, -0.25, -1.0, 0.75, -0.5, 0.0, 0.75, 0.5, -0.75, -0.5, 1.0, -0.75, 1.0, 0.0, 0.25, -0.5, 0.5, 0.0, -0.25, -0.5, -0.25, -0.25, 0.25, 0.0, 0.25, 0.75, 1.0, 0.5, 1.0, -0.75, -0.75, -0.25, 0.25, 0.75, 0.0, -0.5, -0.25, -0.75, 0.0, -1.0, -0.25, 1.0, -1.0, 0.5, 1.0, 0.25, 0.75, 1.0, -0.75, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    device30.destroy();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    query000.destroy()
    
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device30.pushErrorScope("validation");
    device10.destroy();
    
    
    device10.pushErrorScope("validation");
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array2 = new Float32Array([0.25, 0.25, 0.25, -0.25, 0.0, -0.5, 1.0, -0.5, 0.25, -0.5, 0.0, 0.25, 0.25, 0.75, -0.5, -0.5, 0.0, 0.75, 0.25, 0.5, 0.0, -0.75, -0.25, 0.0, 0.75, 1.0, 0.25, 0.25, 0.0, -1.0, -0.5, 0.5, -0.5, -1.0, 0.75, 0.5, 0.0, -0.75, -0.25, -0.75, 0.5, -1.0, -0.25, -0.5, 0.0, 0.25, 0.25, -0.25, 1.0, -1.0, -1.0, -0.75, -0.5, 1.0, 0.25, 0.25, -0.25, 1.0, -0.5, -0.5, 0.0, 0.25, 0.0, -0.25, -1.0, 0.75, -1.0, 0.25, -0.5, -0.5, -1.0, 0.75, 0.25, 1.0, 0.25, 0.0, -0.75, 0.5, -1.0, 0.25, -1.0, 1.0, -0.5, 0.5, -0.5, 1.0, -1.0, -0.75, 0.25, -1.0, 0.5, -1.0, 1.0, -0.25, 0.0, -1.0, 0.75, 0.75, -0.25, -1.0, ]);
    
    device20.pushErrorScope("internal");
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    
    const array3 = new Float32Array([-0.5, -0.25, 0.0, -0.75, 0.0, 1.0, 0.25, 0.25, -0.5, 0.0, -0.5, -0.75, -0.5, -1.0, -0.5, -0.25, 0.75, -0.75, 0.25, -1.0, 1.0, 0.75, -0.25, -1.0, 0.0, 0.0, 0.0, 1.0, -0.5, 0.0, -0.5, 0.5, -0.75, -1.0, 1.0, -1.0, -1.0, 0.75, 0.75, 1.0, 0.5, 0.5, 1.0, 0.25, -0.25, -0.5, -0.5, -1.0, 0.0, 0.75, 0.75, 0.75, -0.75, 0.5, -1.0, -1.0, 0.0, 1.0, 1.0, 0.5, 0.25, -0.75, -0.5, -1.0, 0.75, -0.25, 1.0, 1.0, 1.0, -0.5, 0.5, 1.0, 0.0, -0.25, -0.25, 1.0, -1.0, -0.75, 0.25, 0.5, -0.25, -0.5, -0.75, 1.0, 1.0, 0.25, 0.5, 1.0, -0.5, 0.5, 0.0, -0.25, 0.75, -0.75, 0.5, 0.75, -0.5, -0.75, -0.5, 0.5, ]);
    const array4 = new Float32Array([0.0, 0.25, 0.75, 0.75, 0.0, 0.5, -0.25, -0.25, -0.75, 0.75, -1.0, -1.0, -0.5, 0.75, 1.0, -1.0, -1.0, 0.0, -0.25, -0.25, 0.5, -0.5, -0.25, 0.5, -0.5, 0.0, -0.25, 0.0, -0.25, 1.0, 0.5, -0.5, -1.0, 0.75, -0.25, 1.0, -0.75, 0.0, 0.0, 0.0, 0.0, -1.0, 0.5, 0.75, 0.25, 0.0, 0.5, 0.0, -0.25, 0.75, -0.75, 0.25, -0.5, -0.5, 0.75, -1.0, 0.25, 0.75, 0.5, 0.5, 1.0, -0.75, -0.75, 0.0, -1.0, 0.75, -0.25, -0.25, -0.75, 0.75, -0.75, 1.0, -0.5, -0.5, -0.25, 0.25, 0.25, 0.5, 0.75, 1.0, -1.0, -0.75, -0.75, 0.0, -0.25, -0.75, 0.0, -1.0, 1.0, 0.25, 0.25, -1.0, 1.0, -0.5, 0.0, 0.25, -0.25, 0.5, -0.5, -0.75, ]);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    texture200.destroy();
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array5 = new Float32Array([1.0, 0.25, 0.75, -1.0, -0.5, -0.75, 0.5, 0.75, 0.75, -0.25, -0.5, 0.5, -0.5, 1.0, 1.0, 0.25, 1.0, -0.25, -0.25, -1.0, 0.25, 0.5, 0.75, -0.75, -0.75, -0.25, 0.5, -1.0, -0.75, 0.0, -0.75, -1.0, 0.25, -0.5, -0.25, 0.5, 0.75, -0.5, 0.5, 1.0, -0.5, -1.0, 0.5, -0.5, -0.25, 0.25, 0.0, -0.75, 0.0, -1.0, 1.0, 0.0, -1.0, -0.75, -1.0, -1.0, -0.25, 0.25, -0.75, -1.0, 0.75, -0.25, -0.75, -0.5, 0.25, -0.75, 0.0, 0.5, 0.0, -0.25, 0.25, 0.5, -1.0, -0.75, -1.0, -1.0, 0.0, -0.75, 0.0, 0.25, 0.0, -1.0, 0.0, 0.5, -0.75, 0.75, 0.0, 0.0, 1.0, -0.25, 0.75, 0.0, -0.75, -0.5, -0.5, -1.0, 0.5, 0.5, -0.5, 1.0, ]);
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    
    
    texture000.destroy();
    device20.destroy();
    
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const array6 = new Float32Array([0.5, -1.0, 0.75, -0.25, 0.5, 0.0, -0.75, 0.75, -0.5, 0.0, 1.0, 0.5, -0.25, -0.25, 0.75, -0.25, -1.0, 0.5, -1.0, 0.75, 0.5, 0.0, -0.5, 0.75, -0.75, -0.25, -1.0, 0.5, 0.5, 0.0, 0.25, -0.5, -0.75, -0.25, -0.5, -1.0, -0.25, -0.5, 0.5, 0.0, -0.75, -1.0, -0.5, -0.5, -0.75, 0.5, 0.0, 0.25, 0.25, -0.5, 0.25, -0.25, 0.25, -0.75, 0.25, 0.0, -0.25, 1.0, -0.5, -0.5, -0.25, 0.5, -0.75, -0.5, -0.5, 0.25, 0.5, -0.25, 0.75, -0.25, 0.25, -0.5, -0.25, -0.5, 0.25, -0.75, -1.0, 0.75, -0.5, 0.75, 0.75, -0.25, 0.5, -0.25, -0.25, 0.75, 0.0, -0.25, 0.25, 1.0, -0.5, -1.0, 1.0, 0.75, 1.0, 0.0, 0.0, -0.5, -1.0, 0.75, ]);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device50.pushErrorScope("validation");
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_bundle_encoder500.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder500.insertDebugMarker("mymarker");
    command_encoder401.insertDebugMarker("mymarker");
    command_encoder400.insertDebugMarker("mymarker");
    command_encoder401.pushDebugGroup("mygroupmarker")
    
    
    
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder000.popDebugGroup();
    query500.destroy()
    
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const array7 = new Float32Array([-1.0, 0.0, -1.0, 1.0, -1.0, -0.5, -0.5, -0.75, -1.0, 0.0, 0.75, -0.75, -0.25, 0.25, 0.5, -0.75, 1.0, -1.0, 0.5, 0.0, 0.75, 1.0, 0.5, 0.25, 0.0, -0.5, 0.5, -0.5, 0.5, -0.25, 0.25, -1.0, 0.5, -1.0, 0.75, -0.75, -0.25, -0.75, -0.75, 1.0, 1.0, 0.75, -0.75, 1.0, 1.0, 0.75, 0.5, 0.75, 1.0, 0.0, 0.75, 1.0, 0.0, 1.0, 0.25, 0.25, -0.5, 1.0, -1.0, 1.0, -0.75, 0.5, 0.25, -1.0, -0.25, 0.75, 1.0, -0.5, 1.0, 0.5, 0.25, -0.5, 0.5, -0.75, -0.75, -0.5, 1.0, -0.5, -0.5, 0.25, -1.0, 0.5, -0.5, 0.75, 0.5, -0.5, -1.0, -0.75, -0.75, 0.0, -0.5, -0.75, 0.25, 0.0, 1.0, -0.75, 0.5, -1.0, 0.25, 0.0, ]);
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    
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
    render_bundle_encoder501.insertDebugMarker("marker");
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    device50.queue.writeTexture({ texture: texture500 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture500.destroy();
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    query501.destroy()
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    
    
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
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    command_encoder500.resolveQuerySet(
        query501,
        0,
        32,
        buffer500,
        0
    )
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    texture501.destroy();
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
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
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    render_bundle_encoder501.popDebugGroup();
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device40.pushErrorScope("internal");
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder502.resolveQuerySet(
        query501,
        0,
        32,
        buffer500,
        0
    )
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    query501.destroy()
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
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
    
    command_encoder500.resolveQuerySet(
        query501,
        0,
        32,
        buffer500,
        0
    )
    query500.destroy()
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8sint",
        dimension: "2d"
    });
    command_encoder401.pushDebugGroup("mygroupmarker")
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
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
    buffer500.destroy()
    texture502.destroy();
    const command_buffer503 = command_encoder503.finish();
    command_encoder500.resolveQuerySet(
        query500,
        0,
        32,
        buffer500,
        0
    )
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
        occlusionQuerySet: query501
    });
    render_bundle_encoder500.setPipeline(render_pipeline500);
    device40.pushErrorScope("validation");
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer502 = device50.createBuffer({
        label: "buffer502",
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
                    buffer: buffer501,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer502,
                },
            },
        ],
    });

    render_bundle_encoder500.setBindGroup(0, bind_group500);
    device50.queue.submit([]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5010.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    command_encoder500.clearBuffer(buffer500);
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    const texture504 = device50.createTexture({
        label: "texture504",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    buffer502.destroy()
    render_pass_encoder5020.insertDebugMarker("marker");
    render_pass_encoder5020.executeBundles([])
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer400.destroy()
    
    
    device50.queue.writeTexture({ texture: texture504 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view5040 = texture504.createView({ label: "texture_view5040" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.pushErrorScope("internal");
    
    device50.queue.writeBuffer(buffer503, 0, array1, 0, array1.length);
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8snorm",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer402, 0, array6, 0, array6.length);
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
    device40.queue.writeBuffer(buffer402, 0, array6, 0, array6.length);
    render_pass_encoder5000.executeBundles([render_bundle_encoder500, render_bundle_encoder502, ])
    command_encoder500.insertDebugMarker("mymarker");
    
    command_encoder500.resolveQuerySet(
        query500,
        0,
        32,
        buffer500,
        0
    )
    device50.queue.writeTexture({ texture: texture503 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_pass_encoder5010.insertDebugMarker("marker");
    texture400.destroy();
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture503.destroy();
    render_pass_encoder5020.setStencilReference(1);
    render_bundle_encoder501.insertDebugMarker("marker");
    device10.pushErrorScope("internal");
    render_pass_encoder5020.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_pass_encoder5010.insertDebugMarker("marker");
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
        layout: render_pipeline500.getBindGroupLayout(0),
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

    render_pass_encoder5000.setBindGroup(0, bind_group501);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
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
    render_bundle_encoder502.setPipeline(render_pipeline500);
    render_pass_encoder5000.setStencilReference(1);
    buffer505.destroy()
    buffer503.destroy()
    
    
    texture504.destroy();
    render_pass_encoder5000.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_bundle_encoder501.setPipeline(render_pipeline500);
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    render_pass_encoder5010.setStencilReference(1);
    
    render_pass_encoder5010.setStencilReference(1);
    render_pass_encoder5010.setPipeline(render_pipeline500);
    command_encoder401.popDebugGroup()
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device50.queue.writeBuffer(buffer503, 0, array0, 0, array0.length);
    query501.destroy()
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
    device40.queue.writeBuffer(buffer402, 0, array1, 0, array1.length);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    render_pass_encoder5020.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
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
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    const command_buffer402 = command_encoder402.finish();
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout501,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    command_encoder504.resolveQuerySet(
        query501,
        0,
        32,
        buffer500,
        0
    )
    
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
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
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    device50.pushErrorScope("internal");
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    render_pass_encoder5010.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const render_pass_encoder5040 = command_encoder504.beginRenderPass({
        label: "render_pass_encoder5040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5040,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    query501.destroy()
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    command_encoder500.resolveQuerySet(
        query501,
        0,
        32,
        buffer503,
        0
    )
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
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
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_bundle_encoder500.setVertexBuffer(0, buffer503);
    
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

    render_bundle_encoder502.setBindGroup(0, bind_group502);
    buffer506.destroy()
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
    device50.queue.writeBuffer(buffer505, 0, array2, 0, array2.length);
    const command_buffer401 = command_encoder401.finish();
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture402 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer402, 0, array7, 0, array7.length);
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_bundle_encoder500.draw(3);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
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
    buffer504.destroy()
    render_pass_encoder5040.setScissorRect(0, 0, texture504.width / 2, texture504.height / 2);
    
    render_bundle_encoder502.insertDebugMarker("marker");
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
    render_pass_encoder5040.setStencilReference(1);
    query400.destroy()
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder5000.setPipeline(compute_pipeline501);
    render_pass_encoder5010.pushDebugGroup("group_marker");
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

    render_pass_encoder5010.setBindGroup(0, bind_group503);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder5010.popDebugGroup();
    buffer508.destroy()
    
    render_bundle_encoder502.insertDebugMarker("marker");
    render_pass_encoder5040.setViewport(0, 0, texture504.width / 2, texture504.height / 2, 0, 1);
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    render_bundle_encoder502.setVertexBuffer(0, buffer506);
    render_pass_encoder5000.setVertexBuffer(0, buffer506);
    render_pass_encoder5020.setPipeline(render_pipeline500);
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder5040.setScissorRect(0, 0, texture504.width / 2, texture504.height / 2);
    
    
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer507, 0, array3, 0, array3.length);
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_pass_encoder5010.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    texture501.destroy();
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    
    query400.destroy()
    
    const texture_view4040 = texture404.createView({ label: "texture_view4040" });
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    device40.queue.writeTexture({ texture: texture403 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder500.drawIndirect(buffer503, 0);
    
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    device60.destroy();
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder5040.setViewport(0, 0, texture504.width / 2, texture504.height / 2, 0, 1);
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    
    device40.queue.writeTexture({ texture: texture403 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer509.destroy()
    command_encoder501.resolveQuerySet(
        query503,
        0,
        32,
        buffer502,
        0
    )
    query400.destroy()
    query502.destroy()
    const render_pass_encoder5011 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5001,
            },
        ],
        occlusionQuerySet: query501
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder5011.insertDebugMarker("marker");
    texture403.destroy();
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    texture401.destroy();
    const compute_pass_encoder5001 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5001" });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    render_pass_encoder5040.setPipeline(render_pipeline501);
    render_pass_encoder5020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    buffer401.destroy()
    const texture_view4041 = texture404.createView({ label: "texture_view4041" });
    compute_pass_encoder5010.setPipeline(compute_pipeline501);
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
    device40.pushErrorScope("out-of-memory");
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const texture406 = device40.createTexture({
        label: "texture406",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder5011.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    device40.queue.writeTexture({ texture: texture404 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    render_pass_encoder5040.insertDebugMarker("marker");
    device40.queue.submit([command_buffer402, ]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5010.setVertexBuffer(0, buffer509);
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    render_pass_encoder5011.setStencilReference(1);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    render_pass_encoder5020.insertDebugMarker("marker");
    
    
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5011 = device50.createBuffer({
        label: "buffer5011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group504 = device50.createBindGroup({
        label: "bind_group504",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5011,
                },
            },
        ],
    });

    render_bundle_encoder501.setBindGroup(0, bind_group504);
    buffer507.destroy()
    render_bundle_encoder402.pushDebugGroup("group_marker");
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    render_pass_encoder5011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.queue.writeTexture({ texture: texture404 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder5041 = command_encoder504.beginRenderPass({
        label: "render_pass_encoder5041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query502
    });
    const texture_view4042 = texture404.createView({ label: "texture_view4042" });
    render_pass_encoder5040.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer5010, 0, array6, 0, array6.length);
    
    
    buffer501.destroy()
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder5040.setViewport(0, 0, texture504.width / 2, texture504.height / 2, 0, 1);
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module504,
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
            module: shader_module504,
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
    render_pass_encoder5010.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_pass_encoder5011.setPipeline(render_pipeline500);
    render_pass_encoder5020.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    
    
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
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5001.setPipeline(compute_pipeline502);
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_pass_encoder5041.executeBundles([render_bundle_encoder502, ])
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder5010.drawIndirect(buffer508, 0);
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    var shader_module507_code = "";
    try {
        shader_module507_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module507.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module507 = await device50.createShaderModule({ label: "shader_module507", code: shader_module507_code })
    render_pass_encoder5010.end();
    
    buffer402.destroy()
    const array8 = new Float32Array([-0.5, 0.25, 0.25, -0.25, -0.25, 0.5, -1.0, -0.25, -0.5, 0.25, -0.5, -0.25, -0.75, -1.0, 1.0, 0.25, -0.75, 0.0, 1.0, -0.25, 0.25, -1.0, 0.75, -0.25, 0.0, -0.25, -1.0, -0.75, 0.75, -0.75, -1.0, 0.75, 1.0, -1.0, -0.75, 0.75, 0.0, 0.5, 0.0, -1.0, 0.0, 0.5, 0.5, 0.5, 0.5, 0.25, -1.0, 0.75, -0.5, 1.0, -0.75, 0.25, -0.5, 0.5, -0.75, -0.5, -0.25, 0.25, -0.25, -1.0, -1.0, -0.25, -0.5, 0.25, 0.25, 0.75, -1.0, 0.25, -0.75, 0.25, 0.0, 0.0, 0.0, -1.0, 1.0, 1.0, -0.25, -1.0, 1.0, -0.75, -1.0, -0.25, 0.75, 1.0, -0.5, 1.0, -0.25, -0.25, 0.5, -0.75, -0.75, 0.5, 0.75, -1.0, 0.0, -1.0, 0.0, 0.75, 0.75, 0.25, ]);
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    buffer5011.destroy()
    
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout501]
    });
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout501,
        compute: {
            module: shader_module507,
            entryPoint: "main"
        }
    });
    
    buffer5011.destroy()
    render_bundle_encoder501.popDebugGroup();
    command_encoder501.clearBuffer(buffer501);
    render_pass_encoder5020.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout502,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder500.setIndexBuffer(buffer5010, "uint16");
    const texture_view4060 = texture406.createView({ label: "texture_view4060" });
    const buffer5012 = device50.createBuffer({
        label: "buffer5012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5013 = device50.createBuffer({
        label: "buffer5013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group505 = device50.createBindGroup({
        label: "bind_group505",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5013,
                },
            },
        ],
    });

    render_pass_encoder5041.setBindGroup(0, bind_group505);
    const buffer5014 = device50.createBuffer({
        label: "buffer5014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5015 = device50.createBuffer({
        label: "buffer5015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group506 = device50.createBindGroup({
        label: "bind_group506",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5015,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group506);
    compute_pass_encoder4000.setPipeline(compute_pipeline401);
    const buffer5016 = device50.createBuffer({
        label: "buffer5016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5017 = device50.createBuffer({
        label: "buffer5017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group507 = device50.createBindGroup({
        label: "bind_group507",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5017,
                },
            },
        ],
    });

    render_pass_encoder5020.setBindGroup(0, bind_group507);
    render_pass_encoder5000.drawIndirect(buffer5012, 0);
    const buffer5018 = device50.createBuffer({
        label: "buffer5018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5019 = device50.createBuffer({
        label: "buffer5019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group508 = device50.createBindGroup({
        label: "bind_group508",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5019,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group508);
    render_pass_encoder5020.setVertexBuffer(0, buffer506);
    const buffer5020 = device50.createBuffer({
        label: "buffer5020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5021 = device50.createBuffer({
        label: "buffer5021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group509 = device50.createBindGroup({
        label: "bind_group509",
        layout: compute_pipeline502.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5021,
                },
            },
        ],
    });

    compute_pass_encoder5001.setBindGroup(0, bind_group509);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5020.drawIndirect(buffer5014, 0);
    compute_pass_encoder4000.popDebugGroup()
    const buffer5022 = device50.createBuffer({
        label: "buffer5022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5023 = device50.createBuffer({
        label: "buffer5023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group5010 = device50.createBindGroup({
        label: "bind_group5010",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5023,
                },
            },
        ],
    });

    render_pass_encoder5040.setBindGroup(0, bind_group5010);
    device40.queue.submit([command_buffer401, ]);
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer5024 = device50.createBuffer({
        label: "buffer5024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5024, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer5024, 0);
    render_pass_encoder5000.drawIndirect(buffer5015, 0);
    render_pass_encoder5041.drawIndirect(buffer5020, 0);
    compute_pass_encoder5001.dispatchWorkgroups(100);
    render_pass_encoder5020.end();
    render_pass_encoder5020.end();
    const buffer5025 = device50.createBuffer({
        label: "buffer5025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5026 = device50.createBuffer({
        label: "buffer5026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group5011 = device50.createBindGroup({
        label: "bind_group5011",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5026,
                },
            },
        ],
    });

    render_pass_encoder5011.setBindGroup(0, bind_group5011);
    render_pass_encoder5040.setVertexBuffer(0, buffer5022);
    render_pass_encoder5040.drawIndirect(buffer5024, 0);
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer403,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer404,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group400);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder5040.end();
    render_pass_encoder5011.setVertexBuffer(0, buffer5020);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.submit([command_buffer503, ]);
    const uint32_5010 = new Uint32Array(3);

    uint32_5010[0] = 100;
    uint32_5010[1] = 1;
    uint32_5010[2] = 1;

    const buffer5027 = device50.createBuffer({
        label: "buffer5027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5027, 0, uint32_5010, 0, uint32_5010.length);

    compute_pass_encoder5010.dispatchWorkgroupsIndirect(buffer5027, 0);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder5000.setIndexBuffer(buffer5025, "uint16");
    const command_buffer504 = command_encoder504.finish();
    render_pass_encoder5011.setIndexBuffer(buffer504, "uint16");
    render_pass_encoder5010.drawIndirect(buffer5012, 0);
    render_pass_encoder5011.drawIndirect(buffer5024, 0);
    compute_pass_encoder5000.end();
    render_pass_encoder5000.drawIndirect(buffer5027, 0);
    render_pass_encoder5011.end();
    render_pass_encoder5000.draw(3);
    render_pass_encoder5010.drawIndirect(buffer5020, 0);
    render_pass_encoder5040.popDebugGroup();
    render_pass_encoder5040.drawIndirect(buffer5010, 0);
    const command_buffer501 = command_encoder501.finish();
    render_pass_encoder5020.setIndexBuffer(buffer5020, "uint16");
    const command_buffer502 = command_encoder502.finish();
    render_pass_encoder5000.draw(3);
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer405,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer406,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group401);
    render_pass_encoder5041.popDebugGroup();
    compute_pass_encoder5001.end();
    const buffer5028 = device50.createBuffer({
        label: "buffer5028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5029 = device50.createBuffer({
        label: "buffer5029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5012 = device50.createBindGroup({
        label: "bind_group5012",
        layout: compute_pipeline502.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5029,
                },
            },
        ],
    });

    compute_pass_encoder5001.setBindGroup(0, bind_group5012);
    render_pass_encoder5040.drawIndirect(buffer5015, 0);
    render_pass_encoder5000.setIndexBuffer(buffer5029, "uint16");
    device50.queue.submit([command_buffer501, command_buffer502, ]);
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder5040.drawIndirect(buffer5027, 0);
    render_pass_encoder5041.drawIndirect(buffer5027, 0);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.submit([command_buffer500, command_buffer504, ]);
    device50.queue.submit([command_buffer503, ]);
    device50.queue.submit([]);
    const buffer5030 = device50.createBuffer({
        label: "buffer5030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5031 = device50.createBuffer({
        label: "buffer5031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5013 = device50.createBindGroup({
        label: "bind_group5013",
        layout: compute_pipeline502.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5031,
                },
            },
        ],
    });

    compute_pass_encoder5001.setBindGroup(0, bind_group5013);
    const buffer5032 = device50.createBuffer({
        label: "buffer5032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5033 = device50.createBuffer({
        label: "buffer5033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5014 = device50.createBindGroup({
        label: "bind_group5014",
        layout: compute_pipeline502.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5033,
                },
            },
        ],
    });

    compute_pass_encoder5001.setBindGroup(0, bind_group5014);
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder5020.drawIndirect(buffer5014, 0);
    render_pass_encoder5010.drawIndirect(buffer501, 0);
    render_pass_encoder5000.drawIndexedIndirect(buffer5024, 0);
    render_pass_encoder5010.setIndexBuffer(buffer5027, "uint16");
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer407,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer408,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group402);
    render_pass_encoder5011.drawIndexedIndirect(buffer5024, 0);
    device50.queue.submit([]);
    render_pass_encoder5010.drawIndexedIndirect(buffer507, 0);
    render_pass_encoder5010.drawIndirect(buffer507, 0);
    compute_pass_encoder5010.end();
    device50.queue.submit([]);
    compute_pass_encoder4000.end();
    render_pass_encoder5011.drawIndirect(buffer5024, 0);
    render_pass_encoder5010.drawIndexedIndirect(buffer5027, 0);
    const command_buffer400 = command_encoder400.finish();
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder5011.popDebugGroup();
    render_pass_encoder5010.draw(3);
    device60.queue.submit([]);
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder5000.drawIndexedIndirect(buffer508, 0);
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder5000.popDebugGroup()
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder5040.drawIndirect(buffer5027, 0);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer409, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer409, 0);
    render_pass_encoder5041.drawIndirect(buffer502, 0);
    render_pass_encoder5011.drawIndexedIndirect(buffer5024, 0);
    compute_pass_encoder5001.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder5000.draw(3);
    render_pass_encoder5000.drawIndirect(buffer5032, 0);
    render_pass_encoder5010.end();
    device40.queue.submit([]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder5010.drawIndexedIndirect(buffer5032, 0);
    render_pass_encoder5040.setIndexBuffer(buffer5013, "uint16");
    render_pass_encoder5041.popDebugGroup();
    const uint32_5010 = new Uint32Array(3);

    uint32_5010[0] = 100;
    uint32_5010[1] = 1;
    uint32_5010[2] = 1;

    const buffer5034 = device50.createBuffer({
        label: "buffer5034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5034, 0, uint32_5010, 0, uint32_5010.length);

    compute_pass_encoder5010.dispatchWorkgroupsIndirect(buffer5034, 0);
    render_pass_encoder5041.setIndexBuffer(buffer5031, "uint16");
    render_pass_encoder5041.drawIndirect(buffer5010, 0);
    render_pass_encoder5040.end();
    render_pass_encoder5011.drawIndirect(buffer507, 0);
    render_pass_encoder5010.drawIndirect(buffer5017, 0);
    render_pass_encoder5041.drawIndexedIndirect(buffer5027, 0);
    render_pass_encoder5040.popDebugGroup();
    device40.queue.submit([]);
    compute_pass_encoder5010.popDebugGroup()
    const uint32_5010 = new Uint32Array(3);

    uint32_5010[0] = 100;
    uint32_5010[1] = 1;
    uint32_5010[2] = 1;

    const buffer5035 = device50.createBuffer({
        label: "buffer5035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5035, 0, uint32_5010, 0, uint32_5010.length);

    compute_pass_encoder5010.dispatchWorkgroupsIndirect(buffer5035, 0);
    render_pass_encoder5000.draw(3);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    render_pass_encoder5040.drawIndexedIndirect(buffer5011, 0);
    compute_pass_encoder5001.popDebugGroup()
    render_pass_encoder5010.setIndexBuffer(buffer5020, "uint16");
    render_pass_encoder5011.drawIndirect(buffer5020, 0);
    compute_pass_encoder5010.dispatchWorkgroups(100);
    render_pass_encoder5040.drawIndexedIndirect(buffer5027, 0);
    compute_pass_encoder5001.popDebugGroup()
    render_pass_encoder5040.drawIndexedIndirect(buffer5035, 0);
    const command_buffer100 = command_encoder100.finish();
    device40.queue.submit([command_buffer400, ]);
    const uint32_5010 = new Uint32Array(3);

    uint32_5010[0] = 100;
    uint32_5010[1] = 1;
    uint32_5010[2] = 1;

    const buffer5036 = device50.createBuffer({
        label: "buffer5036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5036, 0, uint32_5010, 0, uint32_5010.length);

    compute_pass_encoder5010.dispatchWorkgroupsIndirect(buffer5036, 0);
    const uint32_5010 = new Uint32Array(3);

    uint32_5010[0] = 100;
    uint32_5010[1] = 1;
    uint32_5010[2] = 1;

    const buffer5037 = device50.createBuffer({
        label: "buffer5037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5037, 0, uint32_5010, 0, uint32_5010.length);

    compute_pass_encoder5010.dispatchWorkgroupsIndirect(buffer5037, 0);
    render_pass_encoder5041.end();
    render_pass_encoder5040.drawIndexedIndirect(buffer5037, 0);
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder5041.end();
    render_pass_encoder5040.drawIndexedIndirect(buffer5035, 0);
    device50.queue.submit([command_buffer502, ]);
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder5011.popDebugGroup();
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder5010.drawIndexed(3);
    render_pass_encoder5041.drawIndirect(buffer5035, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder5000.drawIndirect(buffer5028, 0);
    render_pass_encoder5020.drawIndirect(buffer5010, 0);
    render_pass_encoder5041.drawIndirect(buffer5011, 0);
    const buffer5038 = device50.createBuffer({
        label: "buffer5038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5039 = device50.createBuffer({
        label: "buffer5039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5015 = device50.createBindGroup({
        label: "bind_group5015",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5039,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group5015);
    render_pass_encoder5020.drawIndexedIndirect(buffer5029, 0);
    render_pass_encoder5041.end();
    const uint32_5010 = new Uint32Array(3);

    uint32_5010[0] = 100;
    uint32_5010[1] = 1;
    uint32_5010[2] = 1;

    const buffer5040 = device50.createBuffer({
        label: "buffer5040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5040, 0, uint32_5010, 0, uint32_5010.length);

    compute_pass_encoder5010.dispatchWorkgroupsIndirect(buffer5040, 0);
    const buffer5041 = device50.createBuffer({
        label: "buffer5041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5042 = device50.createBuffer({
        label: "buffer5042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5016 = device50.createBindGroup({
        label: "bind_group5016",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5042,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group5016);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4010, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4010, 0);
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder5011.setIndexBuffer(buffer5017, "uint16");
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder5040.popDebugGroup();
    render_pass_encoder5040.drawIndirect(buffer5024, 0);
    const buffer5043 = device50.createBuffer({
        label: "buffer5043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5044 = device50.createBuffer({
        label: "buffer5044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5017 = device50.createBindGroup({
        label: "bind_group5017",
        layout: compute_pipeline502.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5044,
                },
            },
        ],
    });

    compute_pass_encoder5001.setBindGroup(0, bind_group5017);
    render_pass_encoder5010.draw(3);
    compute_pass_encoder5001.end();
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder5041.popDebugGroup();
    device50.queue.submit([command_buffer504, ]);
    render_pass_encoder5000.popDebugGroup();
    const buffer5045 = device50.createBuffer({
        label: "buffer5045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5046 = device50.createBuffer({
        label: "buffer5046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5018 = device50.createBindGroup({
        label: "bind_group5018",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5046,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group5018);
    const buffer5047 = device50.createBuffer({
        label: "buffer5047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5048 = device50.createBuffer({
        label: "buffer5048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5019 = device50.createBindGroup({
        label: "bind_group5019",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5048,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group5019);
    render_pass_encoder5020.drawIndexedIndirect(buffer507, 0);
    device50.queue.submit([command_buffer504, ]);
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder5011.drawIndirect(buffer5040, 0);
    const buffer5049 = device50.createBuffer({
        label: "buffer5049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5050 = device50.createBuffer({
        label: "buffer5050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5020 = device50.createBindGroup({
        label: "bind_group5020",
        layout: compute_pipeline502.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5050,
                },
            },
        ],
    });

    compute_pass_encoder5001.setBindGroup(0, bind_group5020);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder5010.drawIndirect(buffer5045, 0);
    render_pass_encoder5040.drawIndexedIndirect(buffer5027, 0);
    render_pass_encoder5010.drawIndirect(buffer5045, 0);
    render_pass_encoder5000.drawIndirect(buffer5025, 0);
    device30.queue.submit([]);
    render_pass_encoder5020.drawIndirect(buffer502, 0);
    compute_pass_encoder5010.end();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5010.drawIndirect(buffer5049, 0);
    compute_pass_encoder5001.dispatchWorkgroups(100);
    const buffer5051 = device50.createBuffer({
        label: "buffer5051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5052 = device50.createBuffer({
        label: "buffer5052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5021 = device50.createBindGroup({
        label: "bind_group5021",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5052,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group5021);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder5020.drawIndirect(buffer5016, 0);
}