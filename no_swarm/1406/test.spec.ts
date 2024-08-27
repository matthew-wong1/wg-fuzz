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
    const array0 = new Float32Array([0.5, 0.0, -0.25, 1.0, -1.0, 0.0, 0.75, 1.0, -0.75, -0.5, 1.0, -0.5, -0.25, -0.75, 0.75, 0.25, -1.0, 0.0, -1.0, -0.25, 0.75, -1.0, -0.75, -0.25, -0.75, 0.0, -0.75, 0.0, 0.75, -1.0, -0.25, -0.5, -0.5, 0.5, 1.0, -0.75, 1.0, -1.0, 0.5, -0.75, 0.0, 0.25, 0.75, -1.0, -0.75, -1.0, -1.0, -0.75, -1.0, -0.75, -0.5, -0.75, 0.5, -0.5, 0.25, -0.5, 1.0, -0.25, 0.5, -0.5, -0.25, 1.0, 1.0, -0.25, -0.75, 0.0, 0.25, -1.0, 0.0, 0.5, 0.25, 0.25, -0.75, 0.25, -0.25, -1.0, 0.5, 0.5, 1.0, -1.0, 0.75, 0.5, -1.0, 0.25, -1.0, 0.5, 1.0, 0.75, 0.25, 0.25, -0.75, 1.0, 0.0, -1.0, 0.0, 1.0, -1.0, 1.0, -0.5, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([0.25, 0.75, 0.0, -0.75, 0.5, 1.0, -0.75, 0.5, 0.25, 0.5, 0.0, -1.0, 0.25, -1.0, 0.25, 0.25, -0.75, 0.75, 0.0, -1.0, 0.75, 0.25, -0.75, -1.0, -0.25, 1.0, 0.0, -1.0, 0.0, 0.5, -0.5, 0.75, -0.25, -0.5, -0.5, -1.0, -0.5, -1.0, 0.75, -0.25, -0.5, 0.25, 0.0, 0.0, 0.0, -0.75, -0.25, -0.75, -0.75, 1.0, -0.25, 0.5, 0.0, 0.0, 0.75, -0.5, 1.0, 0.5, 0.5, -0.75, 1.0, 0.25, 0.75, 0.25, 0.5, 0.0, 0.0, 0.75, 0.75, -1.0, 0.75, 0.25, 0.75, 0.25, 0.75, -1.0, -1.0, 0.75, 0.75, 0.5, 0.75, 0.5, 1.0, -0.25, 0.75, 1.0, -0.25, -1.0, 0.5, 1.0, -0.75, -0.75, -0.75, -1.0, 0.0, 0.25, -0.75, -0.75, -0.5, -1.0, ]);
    const array2 = new Float32Array([1.0, 1.0, -1.0, 0.5, -1.0, 0.25, -0.75, -1.0, 0.25, 1.0, 0.75, 1.0, 0.5, 0.0, -0.5, 0.0, 0.25, -1.0, 0.25, -0.25, 0.5, 1.0, -0.75, 0.0, -1.0, -0.5, -0.5, 0.25, 0.75, 1.0, 0.75, -0.5, 0.25, -0.5, 0.75, 0.5, 0.25, -0.5, 0.5, 0.0, -0.5, -0.5, -0.25, -0.25, -0.25, -0.25, 0.5, 1.0, 0.25, 0.75, 0.0, -0.5, 0.25, -0.25, -0.5, 0.75, 0.0, 1.0, -0.5, -0.75, -0.25, -0.75, 0.25, 0.25, -0.25, 0.25, 0.25, 0.25, 0.75, 1.0, 0.25, 0.0, -0.5, -1.0, -0.75, 0.5, 0.5, -0.25, 1.0, -0.75, 0.5, -0.25, -0.25, 0.75, -1.0, -0.25, 1.0, 0.0, 0.25, -0.5, 0.5, 0.25, -0.75, -0.75, -0.5, 0.25, 0.5, -0.5, 0.5, 0.0, ]);
    
    
    const array3 = new Float32Array([0.0, -0.75, 0.75, 0.75, -0.25, 1.0, 0.25, -0.75, 0.25, 0.5, 1.0, -1.0, 0.75, 1.0, -1.0, -0.25, 0.5, -0.75, 1.0, -0.25, -0.5, 0.5, -0.5, 0.75, -1.0, -1.0, -1.0, 0.5, 0.0, 1.0, -0.75, -0.5, 1.0, -1.0, 0.5, 1.0, 0.25, 0.25, 0.5, 0.25, -0.5, 1.0, 1.0, 0.5, 0.25, -0.75, 0.5, 1.0, -0.75, 0.0, -0.5, -0.25, -0.75, 0.5, 0.5, 0.75, 0.75, 0.25, 1.0, 0.0, -0.5, -0.5, -0.5, -0.5, -0.75, 0.75, -0.25, -1.0, -0.25, -1.0, -0.5, 0.25, 1.0, 0.5, 0.0, 0.0, -1.0, -1.0, 0.75, -0.5, 0.5, 1.0, 0.25, 0.0, -1.0, -0.75, -0.25, 0.0, 0.25, 0.75, 0.25, 0.25, 1.0, -0.75, 0.25, 0.5, 0.0, 0.75, 1.0, -0.25, ]);
    const array4 = new Float32Array([0.5, -1.0, 0.5, 0.0, -0.75, 0.25, 0.0, -1.0, 0.5, 1.0, -0.75, -1.0, 0.75, -1.0, 0.5, -0.25, -0.25, -0.25, 1.0, 0.0, -1.0, 1.0, 0.5, -0.25, 0.75, -1.0, -0.25, 0.25, -0.5, 1.0, 1.0, 0.5, -1.0, 0.0, 0.75, 0.0, 0.0, 0.75, 0.0, -0.25, -0.75, 0.0, -0.5, -0.25, 1.0, -0.5, -0.5, -0.75, 0.5, -0.25, -0.25, 0.0, 0.5, -0.75, 0.25, 0.75, 0.75, 0.25, -0.5, 0.5, 0.5, 0.25, -1.0, 0.0, 1.0, -0.5, 0.5, 0.0, 0.25, -0.75, 1.0, 0.5, -0.75, -1.0, -0.5, 1.0, -0.25, 1.0, 1.0, -1.0, 1.0, -0.5, 0.75, 1.0, -0.5, -0.75, -1.0, 1.0, 0.75, 1.0, 0.75, 0.25, 0.75, -1.0, 0.0, 1.0, -0.5, 0.75, -0.5, 0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array5 = new Float32Array([0.5, -1.0, -0.25, -0.5, 0.5, -0.25, 0.25, 0.25, -0.25, 0.5, -0.75, 1.0, 0.5, -1.0, 1.0, 0.75, 0.0, 0.75, -0.75, 0.25, -0.75, 0.5, -0.5, 0.5, -1.0, 1.0, 0.5, -0.75, -1.0, 0.0, 0.25, 0.75, 0.0, 0.25, -0.75, -0.25, 1.0, -0.75, 0.0, 0.25, -1.0, -0.75, -0.75, -0.25, 0.25, 0.25, 0.75, 0.25, 0.25, 0.5, -0.5, 0.75, 0.5, -1.0, 0.25, 0.75, -1.0, -1.0, 0.0, -0.5, -0.75, 0.5, -0.5, 1.0, 0.0, 0.75, 1.0, 0.0, 0.5, 0.75, 0.5, 0.0, -0.5, -0.75, 0.5, -0.5, -0.5, -0.5, 0.0, 0.5, -0.75, -1.0, 0.75, 0.25, 0.5, -0.75, -0.75, -0.75, -0.75, -1.0, -0.75, 0.0, -0.25, 0.25, 0.25, 0.75, 0.0, -0.75, -0.25, 0.75, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
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
    device20.destroy();
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
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
    
    device00.destroy();
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    buffer100.destroy()
    device10.pushErrorScope("internal");
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
    const array6 = new Float32Array([0.5, -0.5, 0.0, -0.5, 0.5, 0.0, 0.25, 0.25, -1.0, -0.25, 0.25, 0.5, 0.5, 0.75, 0.25, -0.5, 0.75, 0.25, -0.25, -0.75, 0.75, -0.75, 1.0, -0.5, -0.25, 0.5, 0.5, 0.25, -1.0, 1.0, 1.0, 0.25, 0.25, 0.25, -0.25, -1.0, -0.5, -0.5, -0.25, -0.5, 0.5, 0.5, 0.0, 1.0, 1.0, -0.25, 0.0, -0.5, -0.75, 0.75, 0.0, -1.0, 0.25, -0.25, 0.75, -0.25, -0.25, 0.5, 0.75, 1.0, -0.75, 0.5, -0.25, 0.0, 0.25, -0.25, -1.0, -1.0, -0.75, 0.5, -0.25, 0.5, 0.25, -1.0, 0.5, -1.0, 0.25, -1.0, 0.5, 0.0, 1.0, 1.0, -0.25, 0.0, -1.0, -1.0, 0.75, -0.25, 1.0, 0.0, -0.75, 0.0, 0.25, -1.0, -0.5, -1.0, 0.0, 1.0, 1.0, 0.25, ]);
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder101.pushDebugGroup("mygroupmarker")
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    command_encoder101.popDebugGroup()
    
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
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
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
        occlusionQuerySet: undefined
    });
    
    device40.destroy();
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const array7 = new Float32Array([1.0, 0.0, 0.75, 0.75, -0.25, 0.75, 0.75, 0.5, -0.5, -0.75, 0.75, -1.0, -1.0, -0.75, -0.5, 0.0, 0.75, -0.75, 0.5, 1.0, -0.75, 1.0, 0.25, 0.0, -0.25, 0.0, -0.75, 0.5, -1.0, -1.0, -0.25, -0.5, 0.5, -0.5, 0.25, 0.5, 0.75, -0.75, 0.0, -1.0, -1.0, 0.25, 1.0, 0.75, 0.5, -0.75, -0.75, -0.75, 0.5, 1.0, -1.0, 0.75, 0.75, -0.5, 1.0, 1.0, 0.0, -0.25, 0.75, 0.5, -1.0, -1.0, 0.25, 0.75, 0.25, 0.5, -0.75, 0.0, 1.0, -0.25, -0.5, 1.0, 0.5, -1.0, -0.75, 0.25, 0.75, 0.5, -0.5, 0.0, -0.5, -0.25, 0.0, -1.0, 0.75, -0.25, 0.25, -1.0, 1.0, -1.0, -0.25, -0.5, -1.0, 0.5, 1.0, 0.5, 0.25, 0.0, -0.25, -0.5, ]);
    texture100.destroy();
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    command_encoder101.clearBuffer(buffer100);
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
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
        occlusionQuerySet: undefined
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device10.pushErrorScope("internal");
    render_pass_encoder1000.setPipeline(render_pipeline101);
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder1010.setPipeline(render_pipeline100);
    
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    texture101.destroy();
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    render_pass_encoder1001.setPipeline(render_pipeline101);
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    
    device10.queue.writeTexture({ texture: texture102 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer103, 0, array6, 0, array6.length);
    
    
    device10.queue.writeTexture({ texture: texture102 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.submit([]);
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.queue.writeBuffer(buffer102, 0, array7, 0, array7.length);
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture102 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer103, 0, array3, 0, array3.length);
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer102, 0, array7, 0, array7.length);
    render_pass_encoder1010.setStencilReference(1);
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeTexture({ texture: texture102 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder101.setPipeline(render_pipeline100);
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    render_pass_encoder1010.popDebugGroup();
    const array8 = new Float32Array([0.75, -0.5, 0.75, 0.75, 0.75, 1.0, -1.0, 0.5, 0.0, 0.75, -1.0, 0.25, -0.75, -0.75, -0.25, 0.75, -0.25, 0.25, 0.5, -0.25, -0.25, 0.25, 0.5, 0.0, -0.75, -0.75, 0.25, 0.75, -0.25, 1.0, -0.5, -0.5, 0.75, 0.75, -1.0, 1.0, 0.75, 0.5, 1.0, -0.5, 0.0, 0.5, -0.75, 0.5, 0.0, -0.5, 1.0, -0.25, -0.5, 0.25, 0.5, 0.75, 1.0, -0.5, -0.75, -0.5, -0.75, -0.75, -0.5, 0.5, 0.0, -0.5, 0.0, 0.25, -0.75, 0.75, 0.75, -0.5, 0.75, -0.5, 0.75, 0.75, -0.25, 0.0, 1.0, 0.0, 0.5, -1.0, 0.0, -0.25, -0.25, 0.5, 0.25, 0.75, 0.0, 0.0, 0.0, -0.5, -0.25, 0.0, 0.5, -0.75, -1.0, 0.5, 0.0, 0.5, 0.5, -0.5, 0.25, -0.5, ]);
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1001.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    buffer101.destroy()
    device10.queue.writeBuffer(buffer103, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer103, 0, array6, 0, array6.length);
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
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

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    
    device10.queue.writeTexture({ texture: texture102 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
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

    render_bundle_encoder100.setBindGroup(0, bind_group101);
    device10.queue.writeTexture({ texture: texture102 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_pass_encoder1000.popDebugGroup();
    device10.queue.writeTexture({ texture: texture102 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    texture102.destroy();
    
    render_pass_encoder1010.popDebugGroup();
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    render_pass_encoder1000.insertDebugMarker("marker");
    
    device30.destroy();
    command_encoder100.copyBufferToBuffer(
        buffer105,
        0,
        buffer102,
        0,
        400
    );
    buffer105.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    device30.destroy();
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
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
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device20.destroy();
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: undefined
    });
    device10.queue.writeTexture({ texture: texture103 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group102);
    texture102.destroy();
    const array9 = new Float32Array([1.0, 1.0, 1.0, -0.5, 0.5, -0.75, 0.5, 0.0, 0.25, 0.0, -0.5, 0.5, -0.5, 0.25, 0.5, 0.75, -0.5, 0.0, 0.25, -0.75, -0.75, -0.5, 0.25, -0.5, -0.5, 0.25, 0.5, 0.5, 0.25, -0.5, 0.25, -1.0, -1.0, -0.5, -0.75, 0.0, -0.25, -0.75, 0.75, 0.75, 0.25, 0.75, 1.0, 0.0, -0.5, -0.75, 0.25, -0.75, -0.5, -0.75, -0.25, -0.75, 0.25, -0.5, -1.0, 0.25, 0.0, 0.75, -0.75, 1.0, -0.5, 1.0, -0.25, 1.0, 1.0, 0.25, 0.0, -1.0, -0.5, 0.25, 1.0, 1.0, 0.0, -0.5, 0.25, -0.25, 0.5, 0.25, -0.75, -0.75, -1.0, 0.0, -1.0, -1.0, -0.5, 1.0, -0.25, -0.5, 0.75, -1.0, 0.5, -1.0, 0.25, 0.25, -0.75, 0.0, -0.25, -0.25, 0.75, 0.25, ]);
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    buffer107.destroy()
    
    device10.queue.writeBuffer(buffer103, 0, array7, 0, array7.length);
    device10.queue.writeBuffer(buffer102, 0, array7, 0, array7.length);
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    device10.queue.writeBuffer(buffer102, 0, array7, 0, array7.length);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_pass_encoder1011.setPipeline(render_pipeline101);
    
    device10.queue.writeBuffer(buffer103, 0, array5, 0, array5.length);
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    
    render_pass_encoder1010.setStencilReference(1);
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    buffer109.destroy()
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
    
    device10.queue.writeBuffer(buffer103, 0, array5, 0, array5.length);
    buffer104.destroy()
    device10.queue.writeTexture({ texture: texture103 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.setStencilReference(1);
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    buffer108.destroy()
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    render_pass_encoder1010.popDebugGroup();
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_pass_encoder1001.pushDebugGroup("group_marker");
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1011.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    device10.queue.writeTexture({ texture: texture103 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1011.popDebugGroup();
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    device40.queue.writeTexture({ texture: texture400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer500.destroy()
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1011.insertDebugMarker("marker");
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    
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
    
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    buffer108.destroy()
    device10.pushErrorScope("validation");
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
    render_pass_encoder1000.insertDebugMarker("marker");
    render_bundle_encoder501.insertDebugMarker("marker");
    
    device10.queue.writeTexture({ texture: texture103 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device10.queue.writeBuffer(buffer103, 0, array8, 0, array8.length);
    command_encoder100.clearBuffer(buffer1010);
    device10.queue.writeBuffer(buffer1010, 0, array4, 0, array4.length);
    
    buffer1010.destroy()
    command_encoder100.copyBufferToBuffer(
        buffer107,
        0,
        buffer103,
        0,
        400
    );
    device10.queue.writeTexture({ texture: texture103 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device10.queue.writeBuffer(buffer102, 0, array8, 0, array8.length);
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    device10.queue.writeTexture({ texture: texture103 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture102 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device10.queue.writeBuffer(buffer102, 0, array7, 0, array7.length);
    device10.queue.writeBuffer(buffer103, 0, array3, 0, array3.length);
    buffer501.destroy()
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture103.destroy();
    
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    const array10 = new Float32Array([0.0, 1.0, 0.25, -0.75, 0.0, -1.0, 0.75, 0.75, 0.25, 0.75, -0.5, 0.5, -0.75, -0.75, -1.0, 0.75, -0.75, 1.0, -1.0, -1.0, 0.25, -0.5, 0.5, -0.25, 1.0, 0.25, -0.5, -0.75, 0.0, -0.5, -1.0, 0.25, 0.0, 0.0, 0.75, -0.75, 0.75, 0.25, 1.0, 1.0, -0.25, 0.25, -0.5, -0.75, 0.25, -0.25, 0.25, -0.5, 0.5, 0.5, 0.75, -1.0, 0.5, -0.75, -1.0, 0.75, -0.5, -1.0, 0.25, -0.25, 0.0, -0.75, -0.75, 1.0, -0.75, -0.5, 0.75, 0.25, -0.25, -0.5, 0.75, -0.25, -0.5, 0.0, 0.0, 0.75, -0.25, -1.0, 0.5, -0.75, 0.75, 1.0, 1.0, 1.0, 0.25, -0.75, 0.0, 1.0, -0.25, -0.25, -0.5, -1.0, 0.75, -1.0, 0.75, 0.0, 0.5, 0.0, 0.75, -0.25, ]);
    device10.queue.writeTexture({ texture: texture102 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer103, 0, array9, 0, array9.length);
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
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device10.destroy();
    
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    
    
    texture000.destroy();
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout502]
    });
    const array11 = new Float32Array([0.5, 0.25, -1.0, 0.0, 0.25, -0.75, -1.0, -0.25, -0.25, -0.5, 1.0, 0.25, -1.0, 0.5, -1.0, -0.75, 0.5, -0.5, 0.0, 0.5, -0.25, 0.75, -0.75, 1.0, 0.75, 0.0, -0.75, 0.5, 0.25, 0.5, -0.25, 0.0, 0.25, 0.25, 1.0, 0.0, 0.5, 0.25, -0.75, -1.0, 0.75, -0.75, -1.0, 1.0, 0.0, 0.25, -0.5, 0.25, 0.25, 0.0, 0.5, 0.5, 0.25, -1.0, -0.5, 0.0, 1.0, 0.0, -1.0, -1.0, -0.5, -1.0, -0.75, 1.0, -0.75, 0.5, -0.75, 0.75, 1.0, -0.75, -1.0, 0.5, 0.75, -0.75, 0.5, 0.75, 0.5, 0.0, -0.25, -1.0, -0.75, 0.0, -0.75, 0.75, 0.5, 0.5, 0.0, 0.25, 0.5, -1.0, -0.75, 0.5, 0.0, -0.25, -0.5, 0.0, 1.0, -1.0, 0.0, -0.25, ]);
    
    const array12 = new Float32Array([-1.0, 0.5, -0.75, 1.0, -1.0, 0.5, -1.0, -0.5, -0.75, -0.75, 0.0, 0.75, -0.75, -0.5, 0.0, 0.25, 0.5, -1.0, 0.25, 1.0, 0.25, -0.25, 0.0, 0.5, 1.0, 0.25, 0.0, -0.75, 0.5, 0.25, 0.75, 0.25, 0.0, 0.0, -0.25, -0.75, 1.0, 0.75, 1.0, -1.0, 0.75, -0.25, 0.75, 0.5, 0.25, -1.0, -0.75, 0.5, -0.5, -0.25, -0.75, 0.0, 0.5, 0.0, 0.75, 0.0, -0.25, 0.0, 0.25, 0.25, 0.5, -0.25, -1.0, 1.0, 1.0, -1.0, 0.0, 0.0, 1.0, 0.25, -0.75, -0.25, 0.75, -0.75, -1.0, -0.25, 0.0, -0.75, -1.0, 0.5, 1.0, -0.25, 0.25, 0.25, -0.75, -1.0, 1.0, -1.0, -0.75, -1.0, 1.0, -0.5, 0.75, -1.0, -0.75, -1.0, 1.0, -0.25, 0.75, 0.0, ]);
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const array13 = new Float32Array([-1.0, 0.5, -1.0, 0.0, -0.75, -1.0, 0.25, -0.75, -1.0, -0.5, 1.0, 0.5, 0.0, 0.0, -0.75, 1.0, -0.75, 0.5, -1.0, 0.0, 1.0, 0.25, -0.75, 0.25, 0.5, -0.5, -0.75, -1.0, 0.5, -0.25, 0.5, -0.5, -0.75, 0.0, 0.75, -0.75, 0.25, -0.5, -0.75, 1.0, -0.25, -0.75, -0.5, 0.5, 0.25, -1.0, 0.5, -0.25, 0.5, -0.25, 0.5, 0.0, 1.0, 0.75, 0.75, 0.25, -0.75, -0.75, -0.25, 0.25, 0.75, 1.0, 0.25, 0.25, 0.5, 0.25, 0.75, 0.75, -0.5, -0.5, 0.0, -0.75, -0.25, -0.5, 1.0, 0.0, -0.75, 0.75, -0.75, 0.0, 0.75, -0.75, -0.5, 0.0, 0.25, 0.5, 0.0, 0.5, -1.0, 0.25, 1.0, -1.0, -0.75, 0.25, 0.25, -1.0, 0.5, 0.25, -0.25, 0.75, ]);
    render_bundle_encoder501.insertDebugMarker("marker");
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
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
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder500.popDebugGroup();
    device50.queue.submit([command_buffer500, ]);
    
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout502]
    });
    query500.destroy()
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const command_buffer700 = command_encoder700.finish();
    
    query500.destroy()
    
    const render_bundle_encoder503 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder503",
        colorFormats: ["bgra8unorm"]
    });
    query500.destroy()
    render_bundle_encoder502.setPipeline(render_pipeline500);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout502,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    command_encoder100.copyBufferToBuffer(
        buffer101,
        0,
        buffer107,
        0,
        400
    );
    
    render_bundle_encoder503.pushDebugGroup("group_marker");
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
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

    render_bundle_encoder502.setBindGroup(0, bind_group500);
    render_bundle_encoder503.setPipeline(render_pipeline500);
    
    device40.queue.writeTexture({ texture: texture400 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.destroy();
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
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
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout502]
    });
    command_encoder102.clearBuffer(buffer102);
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout504,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
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
    buffer103.destroy()
    render_bundle_encoder500.pushDebugGroup("group_marker");
    device50.pushErrorScope("out-of-memory");
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    command_encoder103.copyBufferToTexture(
        {
            buffer: buffer107
        },
        {
            texture: texture104
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    device50.queue.writeTexture({ texture: texture501 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture500.destroy();
    device50.queue.writeTexture({ texture: texture501 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeTexture({ texture: texture501 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    device50.queue.writeTexture({ texture: texture501 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
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
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
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
    device50.queue.writeTexture({ texture: texture501 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer502.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query100
    });
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout504]
    });
    device10.queue.writeBuffer(buffer102, 0, array9, 0, array9.length);
    
    
    device50.queue.writeTexture({ texture: texture501 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    
    device50.queue.writeTexture({ texture: texture501 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder501.setPipeline(render_pipeline501);
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture501 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout505,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    device50.queue.writeTexture({ texture: texture501 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    query501.destroy()
    const array14 = new Float32Array([-0.5, 0.5, 0.75, -0.25, 0.75, 0.25, -0.25, 0.75, -0.75, -0.75, -1.0, 0.5, 1.0, -0.5, 0.25, 0.25, 0.75, 1.0, 0.5, 0.25, 0.25, -0.5, 0.25, 0.75, -0.75, 0.25, 0.5, 0.5, 0.25, 0.0, 0.0, -0.25, -1.0, -0.75, 0.25, 0.0, 0.0, 1.0, -0.75, 0.75, 0.75, -0.25, 0.5, -0.5, 0.5, 0.25, -0.5, -0.75, 0.0, 0.75, -0.25, 0.5, 0.75, -0.75, 0.25, -0.25, -0.5, -0.75, 0.0, 0.5, -1.0, 0.5, -1.0, 0.5, 1.0, -0.5, -1.0, 0.25, -0.5, 0.0, -0.75, 0.0, 0.25, -0.25, 0.75, 0.25, 0.0, -0.75, 0.5, -0.75, -0.25, 0.25, 0.75, -0.25, -0.25, 0.5, -0.75, -0.5, 0.75, -0.5, 0.5, -0.5, -1.0, 1.0, 1.0, -1.0, -1.0, 0.25, -0.25, 0.25, ]);
    
    
    render_bundle_encoder500.popDebugGroup();
    const command_buffer702 = command_encoder702.finish();
    command_encoder501.pushDebugGroup("mygroupmarker")
    render_bundle_encoder503.insertDebugMarker("marker");
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout505,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    
    
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    compute_pass_encoder7010.popDebugGroup()
    texture503.destroy();
    device50.queue.writeBuffer(buffer503, 0, array10, 0, array10.length);
    render_bundle_encoder501.insertDebugMarker("marker");
    device50.queue.writeTexture({ texture: texture501 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder501.copyTextureToBuffer(
        {
            texture: texture502
        },
        {
            buffer: buffer502
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder503.popDebugGroup();
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    device50.queue.writeTexture({ texture: texture501 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    command_encoder501.insertDebugMarker("mymarker");
    device50.queue.writeTexture({ texture: texture501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array15 = new Float32Array([0.5, 1.0, 0.0, 1.0, -0.75, 0.5, 1.0, 0.5, 0.0, -0.25, -0.5, 1.0, 0.75, 0.0, -0.75, 0.0, 0.75, 0.75, -0.25, 0.5, -0.75, 0.5, 0.0, 0.5, -0.5, 0.25, 0.0, 0.75, 1.0, -0.75, -1.0, 1.0, 0.5, 0.0, -0.75, -0.75, 0.75, 0.0, 1.0, 0.5, -0.5, -0.5, -0.75, 1.0, -0.5, 0.5, 0.0, 0.5, 0.0, -0.75, 0.5, -0.75, 0.5, -1.0, -1.0, -0.25, 1.0, 0.5, -1.0, -0.25, -0.5, -0.25, -0.5, 0.5, 0.75, -0.75, -0.75, 0.5, -0.25, -0.25, -0.75, 1.0, 0.75, -0.25, -0.25, -0.25, 0.5, -0.75, -1.0, 0.75, -0.25, 0.75, -0.5, -0.5, -0.25, 0.5, -0.5, -1.0, 0.75, 0.0, 0.0, -0.25, -1.0, 0.25, 1.0, 0.75, -0.5, 0.5, -1.0, -1.0, ]);
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout501,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout500]
    });
    device50.destroy();
    
    compute_pass_encoder7010.insertDebugMarker("marker")
    
    command_encoder501.copyTextureToBuffer(
        {
            texture: texture502
        },
        {
            buffer: buffer503
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    
    
    const command_buffer703 = command_encoder703.finish();
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    compute_pass_encoder7010.pushDebugGroup("group_marker")
    device20.pushErrorScope("validation");
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    const pipeline_layout508 = device50.createPipelineLayout({ 
        label: "pipeline_layout508",
        bindGroupLayouts: [bind_group_layout502]
    });
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    const array16 = new Float32Array([1.0, -0.5, -1.0, -0.25, 0.25, 0.5, 0.0, 0.75, -0.75, 0.75, 0.5, 0.0, 0.25, -0.75, -1.0, 0.75, -0.25, 0.0, 0.5, 1.0, 1.0, 0.25, -1.0, -0.25, -0.25, 0.0, -0.5, -0.25, 0.5, -0.25, 0.5, 0.25, -0.75, 0.0, -0.75, -1.0, 0.25, 1.0, 1.0, 0.25, -0.75, 0.75, 0.75, 1.0, 0.25, 1.0, -0.5, 1.0, -1.0, -0.75, 1.0, -1.0, 1.0, -0.5, -0.5, 1.0, -0.5, 0.25, -0.25, 0.25, -0.75, -1.0, 0.75, 0.5, 0.75, 0.25, 0.25, -0.75, -1.0, -0.75, -1.0, -0.5, -1.0, 0.0, -1.0, -0.75, -0.25, 0.25, 0.75, 0.75, 0.0, -0.25, 0.0, 1.0, -1.0, 0.75, 0.5, 1.0, -0.75, 0.75, -0.75, -1.0, 0.75, 0.5, 0.25, 0.25, -1.0, 1.0, 0.5, -0.75, ]);
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout505,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    compute_pass_encoder7010.popDebugGroup()
    device70.queue.submit([command_buffer700, command_buffer702, command_buffer703, ]);
    render_pass_encoder1030.setPipeline(render_pipeline102);
}