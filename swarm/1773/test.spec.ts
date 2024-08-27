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
    const array0 = new Float32Array([-1.0, 0.75, -1.0, 0.25, 0.75, 0.0, -0.25, 0.5, 1.0, -0.25, 0.0, 0.25, -0.25, 0.25, 0.25, 0.25, -1.0, 0.75, -0.75, -1.0, 0.0, 0.75, 1.0, -0.75, 1.0, 0.0, 0.0, 0.75, -1.0, -1.0, 0.5, 0.5, -0.75, 0.0, -0.5, 0.25, 0.5, -1.0, 0.25, 1.0, 0.5, -0.25, 0.75, 1.0, 1.0, -1.0, 0.0, -0.75, -1.0, 0.5, 1.0, -0.25, -1.0, 0.75, -1.0, 1.0, -0.75, 1.0, -0.25, 0.75, -0.75, 0.75, -0.5, -0.5, 0.5, -0.75, 0.5, 0.5, 0.25, 0.5, 0.75, 1.0, -0.5, 0.0, -0.5, 0.5, 1.0, 1.0, 0.5, 0.25, -0.5, -0.75, 0.25, 0.25, -0.5, 0.0, -0.25, -1.0, -0.25, -1.0, -1.0, -1.0, 0.0, -0.75, 1.0, 0.25, -0.75, 0.25, 0.0, 0.0, ]);
    
    const array1 = new Float32Array([-0.75, -0.5, 0.0, -1.0, -1.0, 0.75, 0.25, 1.0, -0.75, 0.75, 0.0, -1.0, 0.0, 0.0, 0.25, -1.0, -0.75, -0.75, 1.0, -1.0, -0.75, -0.25, 0.75, -0.5, 0.0, 1.0, 0.75, 0.0, 1.0, 0.75, 1.0, 0.25, 0.25, 0.0, -0.75, -0.5, 0.5, -0.5, 0.5, 0.0, 0.25, 0.5, -0.25, 0.0, -0.5, 1.0, 1.0, 0.5, -0.25, -1.0, 0.5, -1.0, 0.5, 1.0, -1.0, -0.5, -0.5, 0.25, 0.25, -1.0, -0.75, 0.5, 0.5, -0.25, 0.0, -0.5, -1.0, 0.75, 0.0, -0.25, 1.0, 0.75, 0.5, 0.25, -0.75, -0.25, -1.0, -0.75, -0.5, 0.0, 1.0, 0.0, -1.0, -1.0, -0.5, 0.75, -0.75, 0.25, 1.0, 0.0, -0.5, 0.75, 1.0, 0.25, -1.0, -1.0, -0.25, -0.5, 0.75, -0.25, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array2 = new Float32Array([-1.0, -1.0, -0.75, -0.75, -0.25, -0.5, 0.75, 0.0, -1.0, -0.75, -1.0, 1.0, 1.0, -1.0, -0.25, -0.5, -0.75, -0.75, 0.25, 0.5, -0.25, 0.25, 1.0, 0.5, 0.5, 0.0, -0.5, 0.25, -0.5, 0.0, -0.5, 0.75, 1.0, -1.0, -0.5, -0.5, -0.25, 0.75, 1.0, 0.25, -0.25, 0.25, 0.5, -1.0, 0.25, 0.5, 0.75, 0.5, 0.25, 1.0, 0.5, 0.25, 0.75, 1.0, -0.25, 0.0, 0.25, -0.25, -0.75, 1.0, -0.5, -0.75, -0.5, 0.75, -0.5, 0.0, 0.0, -1.0, 1.0, -1.0, -0.25, 0.25, -1.0, 0.25, 1.0, 0.0, 0.75, -1.0, 0.25, -0.75, -1.0, 1.0, -0.75, 1.0, -1.0, -1.0, 0.25, 0.25, -0.25, -0.25, 0.75, 0.0, -1.0, -0.5, -1.0, 1.0, 0.5, -0.25, -0.75, -0.25, ]);
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const array3 = new Float32Array([0.75, -0.25, 0.25, 0.0, 0.0, -0.5, -0.75, -1.0, -0.5, -0.25, 0.5, 0.75, 0.25, -0.25, 0.0, 0.25, 1.0, 0.0, -0.75, 0.75, 1.0, 1.0, -0.75, -0.25, 0.5, 1.0, -0.5, -0.5, 0.75, -0.25, 1.0, -0.5, 0.75, 0.75, 0.25, -0.25, -1.0, 0.25, 0.5, 0.0, -0.5, -0.25, 1.0, 0.75, -0.25, 0.25, -0.75, -0.25, -0.5, 0.5, 1.0, -0.25, -1.0, 0.5, 0.0, -0.25, 0.0, -0.5, -0.25, -0.5, 1.0, 0.25, 0.0, -0.75, 0.25, 0.25, -0.5, -0.25, -1.0, -0.5, 0.0, 1.0, -0.75, -0.5, 0.25, 0.25, 0.5, -1.0, 0.25, 0.75, 0.5, -0.5, -0.5, 0.25, -0.25, 1.0, -1.0, 1.0, 0.75, -0.75, 0.0, 0.0, 0.75, -1.0, 0.0, 0.5, -0.75, -0.5, 1.0, 0.75, ]);
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture000.destroy();
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8uint",
        dimension: "2d"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    query000.destroy()
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    query002.destroy()
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
    texture001.destroy();
    query001.destroy()
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const array4 = new Float32Array([1.0, 0.0, 0.75, 0.0, -0.25, 0.75, 1.0, -1.0, 0.5, -0.75, 0.0, -0.75, -0.5, 0.5, -0.25, 0.5, 0.0, 0.25, 0.75, 0.25, 1.0, 0.5, -0.75, -1.0, -0.75, 0.5, 0.25, 0.75, 0.25, -1.0, 0.5, 0.25, 0.75, -0.5, 0.5, 0.75, -0.75, -0.75, 0.0, -0.5, -0.5, -1.0, 0.0, 1.0, -1.0, -1.0, -0.5, -0.75, -0.75, -0.75, 0.5, 0.75, 0.75, 0.25, -0.5, 0.0, 0.5, -1.0, 0.25, 0.25, 1.0, -0.25, 1.0, -0.75, 0.5, -0.25, 0.75, 0.5, -0.75, 0.75, -0.75, 0.75, 0.5, 1.0, 0.75, -0.25, -0.5, 1.0, 1.0, -1.0, -0.25, 0.75, 1.0, -0.25, 0.0, 0.75, 1.0, -0.5, 0.75, 0.75, 0.0, 0.25, -1.0, 0.5, 1.0, -0.25, -0.5, 0.5, 0.0, 0.5, ]);
    query001.destroy()
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    const bind_group_layout001 = device00.createBindGroupLayout({ 
        label: "bind_group_layout001",
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
    
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg32float",
        dimension: "2d"
    });
    
    query002.destroy()
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    query003.destroy()
    
    
    
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    query000.destroy()
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
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
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout002]
    });
    query001.destroy()
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    query004.destroy()
    query000.destroy()
    query003.destroy()
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    render_pass_encoder0000.executeBundles([])
    render_pass_encoder0000.insertDebugMarker("marker");
    device00.destroy();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    texture002.destroy();
    
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    query100.destroy()
    command_encoder101.pushDebugGroup("mygroupmarker")
    
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
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    query100.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    query100.destroy()
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    compute_pass_encoder1000.popDebugGroup()
    command_encoder101.insertDebugMarker("mymarker");
    command_encoder101.insertDebugMarker("mymarker");
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const command_buffer100 = command_encoder100.finish();
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    compute_pass_encoder1000.insertDebugMarker("marker")
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    command_encoder101.pushDebugGroup("mygroupmarker")
    const array5 = new Float32Array([1.0, -0.75, -0.5, -1.0, 0.5, -0.25, 0.5, -0.75, -1.0, -1.0, -0.5, 0.75, -0.75, -0.75, 0.75, -0.5, -0.25, -0.25, -1.0, -1.0, 0.25, 0.5, 0.0, -0.75, 0.0, 0.5, 0.0, 0.25, 0.0, 1.0, 0.0, 1.0, -0.25, -1.0, 0.0, -0.75, 0.75, 1.0, -0.5, -0.75, 1.0, -0.75, 1.0, -1.0, -0.75, 0.0, -0.25, -0.25, 0.25, 0.25, -0.25, 0.0, -0.25, -0.75, 0.75, -1.0, 1.0, 0.75, -1.0, 0.75, -0.25, 0.25, 0.25, 0.75, -0.25, -0.25, 0.75, -1.0, 0.5, 0.5, 1.0, -0.75, 0.25, 1.0, 1.0, -0.25, -0.25, -0.5, -1.0, -0.75, -0.5, 0.25, -0.5, -0.5, -0.25, 0.0, -0.75, -0.25, -0.75, 0.75, -1.0, 0.75, -0.75, -0.75, -0.25, 0.25, 0.25, 0.25, -0.75, 0.0, ]);
    
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    command_encoder101.insertDebugMarker("mymarker");
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    command_encoder101.popDebugGroup()
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    
    query101.destroy()
    const array6 = new Float32Array([0.5, -0.25, 0.25, 0.25, -0.5, 1.0, 0.75, -0.75, -0.5, 0.25, 0.0, -0.25, 1.0, 0.75, -1.0, -1.0, 0.25, -0.25, 0.25, 0.75, -0.5, -0.75, -0.5, 0.25, -0.5, -1.0, 0.25, -1.0, 1.0, -0.25, 0.75, 1.0, 0.25, 1.0, 1.0, -0.75, -1.0, -0.25, 0.5, 0.25, 0.25, 0.0, -0.75, 1.0, 0.5, 0.75, 0.5, 0.25, 0.5, 1.0, 0.25, 1.0, -1.0, -0.25, -0.75, 0.5, 0.5, -1.0, 0.5, -0.75, 0.0, -0.5, 0.0, 1.0, 0.5, -0.25, 0.25, 0.75, 0.75, 0.0, 1.0, -0.25, 0.5, -1.0, 0.0, -1.0, -1.0, 0.5, 0.75, -0.5, -0.25, 0.0, -0.25, -0.5, -0.75, -1.0, -1.0, 0.25, -1.0, -1.0, 1.0, 1.0, -0.25, -1.0, 1.0, 1.0, -1.0, -1.0, 0.0, 0.5, ]);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    command_encoder102.pushDebugGroup("mygroupmarker")
    device10.queue.submit([]);
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    query101.destroy()
    query103.destroy()
    query100.destroy()
    command_encoder101.insertDebugMarker("mymarker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query103.destroy()
    
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query101
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    render_pass_encoder1010.setPipeline(render_pipeline108);
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    texture101.destroy();
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
        occlusionQuerySet: query105
    });
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    query102.destroy()
    query103.destroy()
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    render_pass_encoder1011.insertDebugMarker("marker");
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1011.setPipeline(render_pipeline100);
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query105
    });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query100
    });
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    render_pass_encoder1010.setStencilReference(1);
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query105
    });
    render_pass_encoder1020.setPipeline(render_pipeline1010);
    render_pass_encoder1030.setPipeline(render_pipeline105);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1031.setPipeline(render_pipeline100);
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query104
    });
    query002.destroy()
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query101
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    query100.destroy()
    render_pass_encoder1040.setPipeline(render_pipeline107);
    render_pass_encoder1021.setPipeline(render_pipeline103);
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    render_pass_encoder1030.insertDebugMarker("marker");
    
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_pass_encoder1011.setStencilReference(1);
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_pass_encoder1031.pushDebugGroup("group_marker");
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    render_pass_encoder1011.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1020.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1031.insertDebugMarker("marker");
    query104.destroy()
    render_pass_encoder1031.beginOcclusionQuery(0)
    render_pass_encoder1040.setStencilReference(1);
    render_pass_encoder1030.beginOcclusionQuery(0)
    
    render_pass_encoder1020.insertDebugMarker("marker");
    texture100.destroy();
    
    render_pass_encoder1040.setStencilReference(1);
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    query101.destroy()
    render_pass_encoder1040.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    command_encoder105.pushDebugGroup("mygroupmarker")
    const array7 = new Float32Array([1.0, 0.25, -0.75, 0.0, 0.5, 0.75, -0.5, -0.5, 0.0, 0.25, 1.0, -0.75, 1.0, -0.25, -0.5, -1.0, 0.0, -0.25, -0.5, 1.0, 0.75, 0.75, -1.0, -0.75, 0.75, -0.25, 1.0, -0.5, -1.0, -0.25, 0.5, -0.5, 1.0, -0.5, -1.0, -0.75, -0.5, 0.75, 1.0, 1.0, 0.0, 0.75, -0.25, 1.0, -0.75, 1.0, -0.75, -1.0, -0.75, 0.0, 0.25, 1.0, -1.0, 0.0, -0.75, -0.5, -0.5, -0.25, -0.25, 0.25, -0.75, 0.75, -0.5, 1.0, 0.25, -0.75, 0.75, -1.0, -0.25, 0.5, 0.5, -0.25, 0.5, 0.0, -1.0, -0.5, 1.0, -0.5, -1.0, -0.75, -0.75, 0.25, 1.0, -0.75, -0.5, 0.25, 1.0, -0.25, -0.5, 0.5, -1.0, 0.25, 0.75, -0.25, 0.0, -0.75, -0.5, -1.0, 0.75, 0.5, ]);
    
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query106
    });
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1010.setStencilReference(1);
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1050.setPipeline(render_pipeline100);
    render_pass_encoder1050.pushDebugGroup("group_marker");
    texture102.destroy();
    render_pass_encoder1030.pushDebugGroup("group_marker");
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query100
    });
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1021.setStencilReference(1);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1021.insertDebugMarker("marker");
    
    render_pass_encoder1040.popDebugGroup();
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1020.insertDebugMarker("marker")
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    render_pass_encoder1041.setPipeline(render_pipeline107);
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1040.insertDebugMarker("marker");
    const render_pass_encoder1032 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1032",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query105
    });
    render_pass_encoder1041.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1050.setStencilReference(1);
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1030.insertDebugMarker("marker");
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    render_pass_encoder1032.executeBundles([])
    render_pass_encoder1050.beginOcclusionQuery(0)
    render_pass_encoder1032.setPipeline(render_pipeline106);
    render_pass_encoder1040.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1021.setStencilReference(1);
    render_pass_encoder1050.setStencilReference(1);
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    render_pass_encoder1031.endOcclusionQuery()
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1041.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1030.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_pass_encoder1032.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    query107.destroy()
    render_pass_encoder1041.insertDebugMarker("marker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder1041.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1031.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1021.pushDebugGroup("group_marker");
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1021.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const render_pass_encoder1051 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query104
    });
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_pass_encoder1051.insertDebugMarker("marker");
    render_pass_encoder1041.pushDebugGroup("group_marker");
    query100.destroy()
    const texture_view1032 = texture103.createView({ label: "texture_view1032" });
    render_pass_encoder1030.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    render_pass_encoder1030.insertDebugMarker("marker");
    const render_pass_encoder1012 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1012",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1031,
            },
        ],
        occlusionQuerySet: query101
    });
    render_pass_encoder1051.setPipeline(render_pipeline105);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1012.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1041.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1040.setStencilReference(1);
    query005.destroy()
    const render_pipeline1014 = device10.createRenderPipeline({
        label: "render_pipeline1014",
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
    render_pass_encoder1032.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1020.beginOcclusionQuery(0)
    render_pass_encoder1040.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1030.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    render_pass_encoder1041.insertDebugMarker("marker");
    const render_pass_encoder1033 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1033",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1032,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder1033.setPipeline(render_pipeline104);
    render_pass_encoder1033.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    render_pass_encoder1012.setPipeline(render_pipeline100);
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1031.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1031.beginOcclusionQuery(0)
    render_pass_encoder1031.endOcclusionQuery()
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1033.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    render_pass_encoder1050.popDebugGroup();
    const query108 = device10.createQuerySet({
        label: "query108",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture103 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1040.insertDebugMarker("marker");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_pass_encoder1033.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1031.insertDebugMarker("marker");
    query104.destroy()
    render_pass_encoder1051.setStencilReference(1);
    
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1033.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    compute_pass_encoder1000.popDebugGroup()
    
    const render_pipeline1015 = device10.createRenderPipeline({
        label: "render_pipeline1015",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    render_pass_encoder1040.popDebugGroup();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder1032.setStencilReference(1);
    render_pass_encoder1051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const render_pipeline1016 = device10.createRenderPipeline({
        label: "render_pipeline1016",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    render_pass_encoder1021.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const render_pipeline1017 = device10.createRenderPipeline({
        label: "render_pipeline1017",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    render_pass_encoder1031.setStencilReference(1);
    const query109 = device10.createQuerySet({
        label: "query109",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1040.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1032.insertDebugMarker("marker");
    render_pass_encoder1051.pushDebugGroup("group_marker");
    render_pass_encoder1032.insertDebugMarker("marker");
    render_pass_encoder1033.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_pass_encoder1012.endOcclusionQuery()
    render_pass_encoder1030.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    render_pass_encoder1033.popDebugGroup();
    const texture_view1033 = texture103.createView({ label: "texture_view1033" });
    render_pass_encoder1041.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    
    render_pass_encoder1030.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    render_pass_encoder1051.setStencilReference(1);
    render_pass_encoder1031.setStencilReference(1);
    const render_pipeline1018 = device10.createRenderPipeline({
        label: "render_pipeline1018",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    render_pass_encoder1012.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    command_encoder001.pushDebugGroup("mygroupmarker")
    render_pass_encoder1033.insertDebugMarker("marker");
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_pass_encoder1041.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1012.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0041,
            },
        ],
        occlusionQuerySet: query003
    });
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1021.insertDebugMarker("marker");
    render_pass_encoder1012.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    render_pass_encoder1051.insertDebugMarker("marker");
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1012.setStencilReference(1);
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1040.setStencilReference(1);
    render_pass_encoder1040.popDebugGroup();
    
    query102.destroy()
    query109.destroy()
    render_pass_encoder1011.setStencilReference(1);
    render_pass_encoder1040.insertDebugMarker("marker");
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1041.popDebugGroup();
    const query1010 = device10.createQuerySet({
        label: "query1010",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1012.insertDebugMarker("marker");
    render_pass_encoder1021.insertDebugMarker("marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_pipeline1019 = device10.createRenderPipeline({
        label: "render_pipeline1019",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    render_pass_encoder1031.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1020.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1051.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    query105.destroy()
    query1010.destroy()
    render_pass_encoder1040.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1041.setStencilReference(1);
    render_pass_encoder1040.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1031.insertDebugMarker("marker");
    render_pass_encoder1050.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const texture_view1034 = texture103.createView({ label: "texture_view1034" });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    render_pass_encoder1033.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    render_pass_encoder1031.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1050.endOcclusionQuery()
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1032.setStencilReference(1);
    query106.destroy()
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1041.setStencilReference(1);
    render_pass_encoder1033.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1032.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query1010.destroy()
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1012.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_pass_encoder1040.insertDebugMarker("marker");
    
    render_pass_encoder1040.insertDebugMarker("marker");
    render_pass_encoder1031.pushDebugGroup("group_marker");
    render_pass_encoder1031.insertDebugMarker("marker");
    const render_pipeline1020 = device10.createRenderPipeline({
        label: "render_pipeline1020",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    const render_pipeline1021 = device10.createRenderPipeline({
        label: "render_pipeline1021",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    render_pass_encoder1032.insertDebugMarker("marker");
    render_pass_encoder1032.pushDebugGroup("group_marker");
    render_pass_encoder1030.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    render_pass_encoder1032.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const render_pipeline1022 = device10.createRenderPipeline({
        label: "render_pipeline1022",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    
    query109.destroy()
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1012.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.destroy();
    render_pass_encoder1032.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1041.insertDebugMarker("marker");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1041.setStencilReference(1);
    query101.destroy()
    render_pass_encoder1041.setStencilReference(1);
    query108.destroy()
    
    render_pass_encoder1020.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1031.setStencilReference(1);
    render_pass_encoder1041.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1041.setStencilReference(1);
    
    render_pass_encoder1030.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    render_pass_encoder1032.popDebugGroup();
    render_pass_encoder1030.pushDebugGroup("group_marker");
    query107.destroy()
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    render_pass_encoder1031.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    query1010.destroy()
    render_pass_encoder1012.setStencilReference(1);
    
    query109.destroy()
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    
    render_pass_encoder1033.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1041.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1031.popDebugGroup();
    device00.queue.submit([]);
    command_encoder105.popDebugGroup()
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1032.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1012.endOcclusionQuery()
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1021.endOcclusionQuery()
    device10.queue.submit([]);
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder1050.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1012.popDebugGroup();
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1051.endOcclusionQuery()
    const command_buffer105 = command_encoder105.finish();
    render_pass_encoder1033.endOcclusionQuery()
    render_pass_encoder1040.endOcclusionQuery()
    device10.queue.submit([command_buffer100, command_buffer105, ]);
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1032.endOcclusionQuery()
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder1032.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    device10.queue.submit([command_buffer104, ]);
    device10.queue.submit([]);
    render_pass_encoder1051.endOcclusionQuery()
    const command_buffer101 = command_encoder101.finish();
    compute_pass_encoder1050.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1032.endOcclusionQuery()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1020.popDebugGroup();
    device10.queue.submit([]);
    command_encoder102.popDebugGroup()
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1011.endOcclusionQuery()
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder1033.popDebugGroup();
    render_pass_encoder1033.endOcclusionQuery()
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1031.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer103, command_buffer104, ]);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1032.endOcclusionQuery()
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1032.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1033.endOcclusionQuery()
    render_pass_encoder1020.endOcclusionQuery()
    device10.queue.submit([command_buffer102, command_buffer104, ]);
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1012.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder1031.popDebugGroup();
    compute_pass_encoder1050.popDebugGroup()
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1032.popDebugGroup();
    compute_pass_encoder1050.popDebugGroup()
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1031.endOcclusionQuery()
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1032.popDebugGroup();
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder1031.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1012.endOcclusionQuery()
    compute_pass_encoder1050.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1012.endOcclusionQuery()
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1050.endOcclusionQuery()
    compute_pass_encoder1050.popDebugGroup()
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1011.endOcclusionQuery()
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder1032.popDebugGroup();
    render_pass_encoder1012.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1031.endOcclusionQuery()
    render_pass_encoder1031.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1050.popDebugGroup()
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1050.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder1033.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1012.endOcclusionQuery()
    render_pass_encoder1050.endOcclusionQuery()
    device10.queue.submit([command_buffer103, ]);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1021.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1050.endOcclusionQuery()
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1012.endOcclusionQuery()
    render_pass_encoder1030.endOcclusionQuery()
    compute_pass_encoder1050.popDebugGroup()
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1033.endOcclusionQuery()
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1032.endOcclusionQuery()
    render_pass_encoder1012.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1032.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1031.endOcclusionQuery()
    render_pass_encoder1033.endOcclusionQuery()
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder1012.popDebugGroup();
    device10.queue.submit([command_buffer103, command_buffer104, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1012.endOcclusionQuery()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1031.endOcclusionQuery()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    device10.queue.submit([]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1032.endOcclusionQuery()
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1031.endOcclusionQuery()
    device10.queue.submit([command_buffer104, ]);
}