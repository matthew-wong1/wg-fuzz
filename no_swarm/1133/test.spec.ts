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
    
    
    const array0 = new Float32Array([1.0, 0.25, -1.0, 1.0, 1.0, 0.5, -0.5, 0.25, -1.0, 0.0, 0.0, 0.0, 0.75, -0.75, -1.0, 1.0, 0.75, 0.25, -0.25, -0.25, -0.25, 0.5, 0.75, -1.0, 0.25, 1.0, -1.0, -0.5, 0.0, -0.25, 1.0, 0.75, 1.0, -0.5, 0.25, 0.0, 0.75, -0.5, 1.0, -1.0, -0.25, -0.25, -0.25, -0.25, 0.75, -0.5, -0.25, -0.5, -0.75, 1.0, 0.0, 1.0, -0.75, 1.0, 1.0, 0.0, -0.5, 0.75, 0.0, 0.0, 0.75, -0.5, -0.5, 0.25, -0.25, 0.75, 0.25, -0.5, -0.5, -1.0, -0.5, -1.0, 0.0, -1.0, -0.75, -1.0, -0.75, -0.75, -0.75, -0.75, 0.25, -0.25, 1.0, -1.0, 1.0, 0.25, 0.0, -1.0, -0.75, 0.5, -0.25, -0.5, 0.25, -0.25, -1.0, 0.75, 1.0, -1.0, -0.75, -0.5, ]);
    
    
    
    
    
    
    const array1 = new Float32Array([-0.75, 0.5, 0.25, -0.5, 0.25, 0.75, -1.0, 1.0, 0.25, -0.75, 0.0, -1.0, 0.25, -1.0, -0.75, -0.75, -0.75, 0.0, -0.75, 0.0, 0.0, 0.75, -0.25, -0.75, 0.0, -0.75, 0.25, 0.25, 1.0, 0.75, -0.25, -1.0, -0.5, 0.0, -1.0, 0.75, -0.5, -0.25, 0.75, 0.75, 0.25, 0.75, 0.5, -1.0, 0.25, -1.0, -0.75, 0.75, -1.0, -0.75, -1.0, 0.0, 0.25, -0.5, -1.0, 0.75, -1.0, -0.75, -0.25, -0.5, -1.0, -0.5, 0.5, 1.0, 0.25, -0.75, -0.5, 0.25, -1.0, -0.75, -0.25, -0.75, 0.0, 0.25, -1.0, -1.0, -0.5, 0.25, -0.5, 0.75, 0.25, 1.0, 0.5, -0.25, -0.5, -0.25, 0.75, -0.5, 0.5, 1.0, -0.25, 0.25, -0.5, 1.0, -0.25, -1.0, -0.25, 0.75, -0.5, 0.5, ]);
    const array2 = new Float32Array([0.5, 0.5, 0.5, -0.25, 1.0, -0.25, 1.0, 0.0, 0.0, 0.25, 0.5, -1.0, -0.75, 1.0, -0.25, 0.5, -0.25, 0.0, -0.25, -0.75, 0.25, 0.75, -0.5, 0.25, -0.75, -1.0, 0.0, 0.5, 1.0, -0.5, -0.75, -0.75, 1.0, 1.0, 0.25, 0.5, 0.0, -0.75, 1.0, 1.0, 0.75, -0.25, 1.0, 1.0, 0.0, 0.25, -1.0, 0.5, 1.0, -0.25, -0.75, -0.5, 0.25, 0.25, 0.5, -0.25, -1.0, -1.0, 0.25, -1.0, 0.5, -1.0, 1.0, 0.75, 0.0, 0.5, 0.75, 0.5, -0.5, -0.5, 0.5, 0.25, -0.25, -1.0, -0.25, -1.0, 0.75, -0.5, 1.0, -0.25, -0.75, 1.0, 0.5, 1.0, 0.75, 0.25, -0.25, -1.0, 0.25, 0.0, -0.25, 0.25, 1.0, -0.25, -1.0, -0.75, 0.75, 0.0, -0.75, 0.5, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array3 = new Float32Array([1.0, -0.75, -0.5, -1.0, -0.5, -0.25, 0.75, -0.25, -0.25, 0.0, 0.0, -1.0, -0.5, 0.0, 0.25, 0.75, -1.0, 0.5, -1.0, -0.5, 0.0, -0.75, -0.25, 0.0, 0.0, -0.5, -1.0, -0.75, 1.0, -1.0, 0.0, -0.25, -0.75, 0.0, -1.0, -0.5, 0.25, -1.0, 0.0, 1.0, 0.0, 0.5, 1.0, -1.0, -0.5, 0.5, 1.0, -0.5, -0.5, -1.0, 1.0, 1.0, -0.5, 1.0, 1.0, 0.5, 0.25, 0.5, -1.0, -1.0, 0.0, -0.75, 0.75, 0.75, 1.0, 0.5, -0.5, -0.75, 1.0, -0.75, 0.0, -1.0, 0.25, 1.0, 0.75, -0.25, 0.25, 1.0, 0.25, 0.25, -0.75, -0.5, -0.5, 0.25, -0.25, -0.75, 0.25, -0.75, -0.25, 0.75, 0.0, 1.0, 0.75, -0.5, -0.25, -0.75, -1.0, 0.0, 0.75, 0.0, ]);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    buffer000.destroy()
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
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
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device00.pushErrorScope("validation");
    texture100.destroy();
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
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
    device10.pushErrorScope("out-of-memory");
    query100.destroy()
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const command_buffer100 = command_encoder100.finish();
    texture000.destroy();
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    device00.queue.submit([]);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query100.destroy()
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    device00.destroy();
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_bundle_encoder100.popDebugGroup();
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
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
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device10.pushErrorScope("internal");
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    buffer100.destroy()
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
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
    compute_pass_encoder1010.setPipeline(compute_pipeline100);
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture101.destroy();
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    device30.destroy();
    
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    device10.destroy();
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    query200.destroy()
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const array4 = new Float32Array([1.0, 0.5, 0.25, -1.0, -1.0, 0.5, 1.0, -1.0, -0.75, -0.5, -0.5, -0.75, -0.25, -1.0, 0.0, 0.0, -0.5, 0.75, 1.0, 0.0, 0.25, 0.0, 0.25, 0.75, -0.75, -0.75, 0.25, 0.75, 0.75, -0.25, -0.75, -0.25, 0.25, 0.75, -1.0, 0.75, -0.25, 0.75, -0.75, 1.0, -1.0, -1.0, -0.5, 0.5, -1.0, -0.75, 0.25, -1.0, -0.25, -0.75, 0.0, 1.0, -1.0, 1.0, 1.0, 0.25, 1.0, 0.5, 0.0, 0.0, 1.0, -1.0, 0.5, 0.75, -0.75, 0.75, 0.0, -0.5, 0.0, 0.75, -0.75, -1.0, -0.25, 0.0, -1.0, 0.0, 0.0, 0.75, -0.25, 0.5, -1.0, -1.0, -0.25, -0.75, 0.25, 0.5, -0.75, 0.25, 1.0, 0.0, 1.0, 0.0, 0.25, 0.5, -0.5, -0.25, 0.0, -0.5, -1.0, -1.0, ]);
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32uint",
        dimension: "2d"
    });
    
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    const array5 = new Float32Array([0.75, 0.5, 0.25, 0.25, 1.0, 0.25, 0.5, 0.5, 0.0, 0.75, -0.25, -0.25, 0.5, 0.25, 0.25, 0.25, -1.0, 0.75, -1.0, 0.5, -0.75, -0.25, -1.0, -0.75, 0.75, 0.5, -1.0, -0.25, 1.0, -0.5, 0.25, 0.0, -0.25, -0.75, 1.0, -0.5, 0.75, 0.25, 0.75, 1.0, -0.5, -0.75, 0.75, -0.25, 0.5, 1.0, 0.75, 0.0, 0.75, 0.0, 0.5, 0.25, 0.25, 0.25, 0.75, -0.5, 1.0, 0.5, 0.75, 0.0, 1.0, 0.75, 0.5, 0.5, -0.25, -0.5, -0.25, 0.75, -1.0, 0.0, -0.5, -0.25, 0.5, 0.25, 1.0, 0.5, 0.0, 0.75, -0.75, 0.25, -0.25, -0.25, 0.25, 0.25, -0.25, 1.0, 0.75, -1.0, -0.25, 0.0, 0.0, 1.0, 0.25, -1.0, 1.0, 0.25, 0.75, 0.0, -0.75, -0.5, ]);
    
    texture500.destroy();
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    query200.destroy()
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    
    
    command_encoder500.pushDebugGroup("mygroupmarker")
    
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
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query501.destroy()
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
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
    query500.destroy()
    
    const command_buffer202 = command_encoder202.finish();
    const query202 = device20.createQuerySet({
        label: "query202",
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
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16uint",
        dimension: "2d"
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    texture502.destroy();
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    query500.destroy()
    
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query201
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2010.beginOcclusionQuery(0)
    
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query502.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    query501.destroy()
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
    
    device20.pushErrorScope("validation");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder2010.pushDebugGroup("group_marker");
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    query101.destroy()
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    query501.destroy()
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query200
    });
    
    command_encoder500.popDebugGroup()
    
    query501.destroy()
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array6 = new Float32Array([0.25, -0.25, 0.0, 0.25, 0.5, -1.0, 0.5, 0.25, -0.5, 0.5, 0.25, -0.25, 0.5, 1.0, 0.0, -0.25, 0.0, -0.75, -1.0, 0.5, 0.0, 0.75, 1.0, -1.0, 0.5, 1.0, -1.0, 0.75, -1.0, -0.75, -1.0, -0.5, -1.0, 0.25, 0.25, 0.25, -0.5, 0.75, 0.25, 0.25, -1.0, 0.5, 0.5, 0.5, 0.75, -1.0, -0.25, -0.25, -1.0, -1.0, 0.0, 0.0, -0.25, -0.75, 0.5, -1.0, 0.25, 0.25, 1.0, -0.75, 1.0, 0.75, -1.0, -0.75, 0.25, 0.25, -0.25, 0.75, 0.25, -0.25, 0.25, -1.0, -0.75, 0.5, 0.0, 1.0, 1.0, -0.5, -0.75, -0.75, 1.0, 1.0, -0.25, 0.25, 0.75, -0.5, 1.0, 0.25, 1.0, -0.25, -0.25, -0.25, -1.0, -0.75, 0.5, 0.25, -0.5, -0.75, 0.25, -0.75, ]);
    
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    query502.destroy()
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const array7 = new Float32Array([1.0, 0.25, 1.0, -0.25, -1.0, 0.5, 1.0, 0.25, 1.0, -1.0, -1.0, 0.5, 1.0, 0.5, 0.25, 0.25, -1.0, 0.75, -0.5, 0.0, -1.0, 1.0, -0.25, -1.0, 0.75, 0.25, -0.75, 0.75, 0.0, 1.0, 0.75, 0.0, -1.0, 0.75, 1.0, -0.75, 0.75, 0.5, -0.25, 0.75, 0.0, -0.5, 1.0, 0.75, -0.5, 1.0, 0.0, 0.0, -0.5, -1.0, -1.0, 1.0, 0.0, -0.75, 0.25, 0.0, -1.0, 0.25, 0.0, 0.75, 0.5, -0.25, -0.75, -0.25, -0.5, -1.0, -0.25, 0.0, 0.5, 0.5, 0.75, 0.25, 1.0, 1.0, 1.0, 1.0, -0.75, -0.5, 1.0, -0.75, 0.25, 0.75, -1.0, 1.0, 0.25, 0.25, 0.25, 1.0, 0.75, -0.5, -0.25, -0.75, -0.25, 0.0, -0.25, 0.5, 0.25, 0.75, -0.75, 1.0, ]);
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
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
    compute_pass_encoder2000.popDebugGroup()
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_pass_encoder2011.setStencilReference(1);
    
    query500.destroy()
    
    device40.pushErrorScope("out-of-memory");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    query203.destroy()
    device40.queue.submit([]);
    render_pass_encoder2010.popDebugGroup();
    texture502.destroy();
    
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder501.setPipeline(render_pipeline500);
    
    render_bundle_encoder200.popDebugGroup();
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2011.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2010.pushDebugGroup("group_marker");
    query200.destroy()
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    buffer500.destroy()
    
    render_pass_encoder2011.setStencilReference(1);
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    query200.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    
    render_bundle_encoder501.insertDebugMarker("marker");
    texture201.destroy();
    render_pass_encoder2010.executeBundles([])
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_pass_encoder2011.insertDebugMarker("marker");
    
    render_pass_encoder2011.beginOcclusionQuery(1)
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query203
    });
    const render_pass_encoder2031 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    compute_pass_encoder2000.setPipeline(compute_pipeline201);
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query500.destroy()
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    
    render_bundle_encoder501.insertDebugMarker("marker");
    render_bundle_encoder200.popDebugGroup();
    query201.destroy()
    
    render_pass_encoder2031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout501,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    query503.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    query500.destroy()
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
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
    render_pass_encoder2030.executeBundles([])
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5000.insertDebugMarker("marker")
    render_bundle_encoder500.popDebugGroup();
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    query503.destroy()
    
    query503.destroy()
    
    const array8 = new Float32Array([-0.25, -0.25, 0.75, 1.0, 0.0, 0.0, -0.5, 0.5, -1.0, 0.5, -1.0, 0.5, 0.0, -0.5, -0.5, 0.75, -1.0, -1.0, -0.5, 1.0, 0.5, -0.25, -0.75, -1.0, 0.75, 0.0, 1.0, 0.75, -0.5, 1.0, 0.25, 1.0, -1.0, -0.5, -0.75, 0.5, 0.25, -1.0, -0.75, -0.75, 0.25, 0.25, 0.25, 0.75, 0.75, -1.0, 0.5, 0.5, 0.5, -1.0, -0.5, -0.75, 0.25, -0.5, 0.25, 0.75, 0.0, -0.75, -0.25, 0.0, 0.25, -1.0, 0.5, 0.0, 0.0, -0.75, -1.0, -0.75, 1.0, 0.25, -0.25, 0.25, -1.0, -1.0, -0.25, -0.5, -0.75, 0.25, -0.5, 0.75, -1.0, 0.25, 1.0, -0.5, 0.0, -0.25, 0.75, -0.25, 0.0, -1.0, -0.25, -1.0, -0.25, 0.0, -0.25, -0.25, -1.0, -1.0, -1.0, 1.0, ]);
    command_encoder203.resolveQuerySet(
        query202,
        0,
        32,
        buffer200,
        0
    )
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
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
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    render_pass_encoder2010.popDebugGroup();
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    compute_pass_encoder2000.insertDebugMarker("marker")
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    device50.pushErrorScope("internal");
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    render_bundle_encoder500.insertDebugMarker("marker");
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

    render_bundle_encoder501.setBindGroup(0, bind_group500);
    render_pass_encoder2011.beginOcclusionQuery(1)
    
    compute_pass_encoder5010.setPipeline(compute_pipeline501);
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    buffer502.destroy()
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    render_pass_encoder2031.executeBundles([])
    device60.destroy();
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout502,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5000.insertDebugMarker("marker")
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const render_pass_encoder2012 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2012",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query202
    });
    
    render_pass_encoder2012.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query503.destroy()
    render_pass_encoder2030.insertDebugMarker("marker");
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    
    render_pass_encoder2012.beginOcclusionQuery(0)
    render_pass_encoder2030.setStencilReference(1);
    render_pass_encoder2031.insertDebugMarker("marker");
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
        layout: compute_pipeline501.getBindGroupLayout(0),
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

    compute_pass_encoder5010.setBindGroup(0, bind_group501);
    compute_pass_encoder2000.popDebugGroup()
    
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    buffer501.destroy()
    render_pass_encoder2011.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2012.setStencilReference(1);
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    command_encoder200.insertDebugMarker("mymarker");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer102,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group100);
    
    render_pass_encoder2011.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout502,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    render_pass_encoder2031.executeBundles([render_bundle_encoder202, ])
    compute_pass_encoder5010.popDebugGroup()
    device50.pushErrorScope("internal");
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view2003 = texture200.createView({ label: "texture_view2003" });
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder1010.insertDebugMarker("marker")
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    render_pass_encoder2011.endOcclusionQuery()
    render_pass_encoder2011.executeBundles([])
    compute_pass_encoder5010.insertDebugMarker("marker")
    
    device50.queue.writeTexture({ texture: texture501 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer201.destroy()
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder5000.setPipeline(compute_pipeline505);
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
    
    command_encoder502.resolveQuerySet(
        query501,
        0,
        32,
        buffer500,
        0
    )
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder2030.insertDebugMarker("marker");
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query501.destroy()
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    render_pass_encoder2011.setStencilReference(1);
    render_pass_encoder2012.executeBundles([])
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query203
    });
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const array9 = new Float32Array([0.25, -1.0, 0.5, -0.25, 0.5, 0.0, 0.0, 0.5, -1.0, 0.5, 1.0, -0.75, 0.5, 0.25, -0.5, -0.75, -1.0, 1.0, 0.25, -0.75, -0.25, -0.75, 1.0, -0.5, 0.75, 0.0, 0.5, 0.5, 0.0, -0.25, -0.5, 0.0, 0.0, 0.5, -0.25, -0.25, 0.0, -0.75, 0.75, -0.75, -0.75, -0.75, 0.0, -0.25, -1.0, 0.5, 0.75, -0.5, 0.25, 0.0, 0.75, -0.25, -0.75, 0.5, -0.75, -0.5, -0.5, 0.75, 0.5, 0.25, -1.0, -0.5, 0.5, -0.25, 0.0, 0.0, 0.5, 0.0, 0.0, -0.75, 0.5, -0.5, -0.75, 0.5, 0.0, -0.5, 0.25, -0.75, 0.5, 0.5, 0.5, 0.25, 0.75, 0.75, -1.0, -0.25, -0.75, 0.5, 0.5, -0.5, -1.0, -0.5, 1.0, -1.0, 0.5, -1.0, 1.0, -0.75, -1.0, 0.5, ]);
    device50.queue.writeBuffer(buffer504, 0, array9, 0, array9.length);
    render_pass_encoder2010.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    device50.queue.writeTexture({ texture: texture501 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5010,
            },
        ],
        occlusionQuerySet: query502
    });
    render_pass_encoder2010.executeBundles([])
    render_bundle_encoder500.setPipeline(render_pipeline500);
    render_pass_encoder5020.executeBundles([])
    
    render_pass_encoder2012.insertDebugMarker("marker");
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    render_pass_encoder2031.pushDebugGroup("group_marker");
    query203.destroy()
    {
        await buffer505.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer505.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer505.unmap();
        console.log(new Float32Array(data));
    }
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2010.executeBundles([])
    render_pass_encoder2040.executeBundles([])
    
    
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device20.pushErrorScope("out-of-memory");
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_pass_encoder2012.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2040.endOcclusionQuery()
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
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
    render_pass_encoder2030.insertDebugMarker("marker");
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer503, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    
    render_pass_encoder2012.pushDebugGroup("group_marker");
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2040.insertDebugMarker("marker");
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const render_pass_encoder2032 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2032",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2003,
            },
        ],
        occlusionQuerySet: query203
    });
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2032.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5010,
            },
        ],
        occlusionQuerySet: query500
    });
    
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device50.queue.writeBuffer(buffer507, 0, array8, 0, array8.length);
    
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder501.insertDebugMarker("mymarker");
    
    
    
    render_pass_encoder2040.pushDebugGroup("group_marker");
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    render_pass_encoder2011.executeBundles([])
    render_pass_encoder2040.executeBundles([])
    render_pass_encoder2012.popDebugGroup();
    render_pass_encoder5000.setPipeline(render_pipeline501);
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
    
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: render_pipeline501.getBindGroupLayout(0),
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

    render_pass_encoder5000.setBindGroup(0, bind_group502);
    const uint32_5010 = new Uint32Array(3);

    uint32_5010[0] = 100;
    uint32_5010[1] = 1;
    uint32_5010[2] = 1;

    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5010, 0, uint32_5010, 0, uint32_5010.length);

    compute_pass_encoder5010.dispatchWorkgroupsIndirect(buffer5010, 0);
    render_pass_encoder2010.endOcclusionQuery()
    const buffer5011 = device50.createBuffer({
        label: "buffer5011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5012 = device50.createBuffer({
        label: "buffer5012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: compute_pipeline505.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5012,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group503);
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
        layout: compute_pipeline201.getBindGroupLayout(0),
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
    render_pass_encoder5020.setPipeline(render_pipeline500);
    compute_pass_encoder5010.popDebugGroup()
    compute_pass_encoder5000.popDebugGroup()
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer5013 = device50.createBuffer({
        label: "buffer5013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5013, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer5013, 0);
    compute_pass_encoder2000.popDebugGroup()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5000.setVertexBuffer(0, buffer500);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder2000.end();
    render_pass_encoder5000.drawIndirect(buffer5010, 0);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5000.end();
    render_pass_encoder2012.endOcclusionQuery()
    render_pass_encoder5020.endOcclusionQuery()
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder5000.popDebugGroup();
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
    
    const bind_group504 = device50.createBindGroup({
        label: "bind_group504",
        layout: render_pipeline500.getBindGroupLayout(0),
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

    render_pass_encoder5020.setBindGroup(0, bind_group504);
    compute_pass_encoder5010.end();
    compute_pass_encoder5000.popDebugGroup()
    const command_buffer501 = command_encoder501.finish();
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
        
    const bind_group505 = device50.createBindGroup({
        label: "bind_group505",
        layout: compute_pipeline505.getBindGroupLayout(0),
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

    compute_pass_encoder5000.setBindGroup(0, bind_group505);
    device50.queue.submit([command_buffer501, ]);
    compute_pass_encoder5000.end();
    render_pass_encoder5020.setVertexBuffer(0, buffer5016);
    render_pass_encoder5020.draw(3);
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer5018 = device50.createBuffer({
        label: "buffer5018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5018, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer5018, 0);
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder5000.drawIndirect(buffer5018, 0);
    device50.queue.submit([command_buffer501, ]);
    compute_pass_encoder5010.end();
    render_pass_encoder2011.endOcclusionQuery()
    render_pass_encoder5020.drawIndirect(buffer5013, 0);
    render_pass_encoder5000.drawIndirect(buffer506, 0);
    render_pass_encoder5000.endOcclusionQuery()
    render_pass_encoder5020.end();
    const buffer5019 = device50.createBuffer({
        label: "buffer5019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5020 = device50.createBuffer({
        label: "buffer5020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group506 = device50.createBindGroup({
        label: "bind_group506",
        layout: compute_pipeline505.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5020,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group506);
    render_pass_encoder5000.setIndexBuffer(buffer5017, "uint16");
    render_pass_encoder5000.setIndexBuffer(buffer502, "uint16");
    const command_buffer500 = command_encoder500.finish();
    const command_buffer203 = command_encoder203.finish();
    compute_pass_encoder5010.dispatchWorkgroups(100);
    const command_buffer502 = command_encoder502.finish();
    render_pass_encoder5000.drawIndirect(buffer503, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder5020.setIndexBuffer(buffer507, "uint16");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2011.endOcclusionQuery()
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
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group201);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer103, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer103, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder5020.drawIndexedIndirect(buffer5013, 0);
    render_pass_encoder5020.drawIndexedIndirect(buffer5010, 0);
    render_pass_encoder5000.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    device50.queue.submit([command_buffer502, ]);
    compute_pass_encoder5000.end();
    compute_pass_encoder5010.end();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder5020.setIndexBuffer(buffer506, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2040.endOcclusionQuery()
    render_pass_encoder2040.endOcclusionQuery()
    render_pass_encoder2011.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder5020.drawIndexedIndirect(buffer500, 0);
    device20.queue.submit([command_buffer200, ]);
    const command_buffer204 = command_encoder204.finish();
    const buffer5021 = device50.createBuffer({
        label: "buffer5021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5022 = device50.createBuffer({
        label: "buffer5022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group507 = device50.createBindGroup({
        label: "bind_group507",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5022,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group507);
    render_pass_encoder2030.endOcclusionQuery()
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2040.popDebugGroup();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer207, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer207, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder5000.drawIndexed(3);
    render_pass_encoder2011.endOcclusionQuery()
    render_pass_encoder2010.popDebugGroup();
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer5023 = device50.createBuffer({
        label: "buffer5023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5023, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer5023, 0);
    compute_pass_encoder5000.end();
    render_pass_encoder5020.drawIndexedIndirect(buffer500, 0);
    render_pass_encoder5000.drawIndexedIndirect(buffer508, 0);
    const command_buffer201 = command_encoder201.finish();
    device20.queue.submit([command_buffer201, ]);
    device50.queue.submit([command_buffer501, ]);
    compute_pass_encoder5010.dispatchWorkgroups(100);
    render_pass_encoder5000.drawIndirect(buffer5010, 0);
    render_pass_encoder5000.setIndexBuffer(buffer5015, "uint16");
    compute_pass_encoder5010.end();
    render_pass_encoder5000.drawIndexed(3);
    render_pass_encoder2030.popDebugGroup();
    const buffer5024 = device50.createBuffer({
        label: "buffer5024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5025 = device50.createBuffer({
        label: "buffer5025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group508 = device50.createBindGroup({
        label: "bind_group508",
        layout: compute_pipeline505.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5025,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group508);
    render_pass_encoder5000.popDebugGroup();
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder1010.setPipeline(render_pipeline100);
    render_pass_encoder2032.endOcclusionQuery()
    const uint32_5010 = new Uint32Array(3);

    uint32_5010[0] = 100;
    uint32_5010[1] = 1;
    uint32_5010[2] = 1;

    const buffer5026 = device50.createBuffer({
        label: "buffer5026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5026, 0, uint32_5010, 0, uint32_5010.length);

    compute_pass_encoder5010.dispatchWorkgroupsIndirect(buffer5026, 0);
    device40.queue.submit([command_buffer400, ]);
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer5027 = device50.createBuffer({
        label: "buffer5027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5027, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer5027, 0);
    device20.queue.submit([command_buffer204, ]);
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder5000.drawIndexedIndirect(buffer5018, 0);
    render_pass_encoder2010.endOcclusionQuery()
    render_pass_encoder2010.popDebugGroup();
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

    render_pass_encoder1010.setBindGroup(0, bind_group101);
    device40.queue.submit([]);
    render_pass_encoder5000.setIndexBuffer(buffer507, "uint16");
    render_pass_encoder2030.endOcclusionQuery()
    render_pass_encoder5000.drawIndexedIndirect(buffer506, 0);
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
}