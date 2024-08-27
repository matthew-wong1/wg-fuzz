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
    const array0 = new Float32Array([0.25, -0.5, -0.5, -0.75, -0.25, 1.0, -0.75, 0.75, 0.75, 0.0, 0.25, -0.5, -0.75, 0.75, 0.75, -0.25, 0.75, -1.0, 1.0, -0.5, -0.5, 0.75, 0.0, 0.75, 0.5, -0.5, 0.5, -1.0, -0.5, -0.5, -1.0, -1.0, -0.75, -1.0, 0.25, 0.25, -1.0, 1.0, 1.0, 0.5, 0.0, -0.25, 0.25, -0.25, 0.75, -0.5, 1.0, 0.75, 1.0, 0.25, 0.0, 0.5, -0.25, 0.5, 0.75, -0.25, -0.75, 0.5, -0.5, 1.0, 0.25, 0.75, -0.75, 0.5, 1.0, -0.25, 0.25, 0.5, 0.75, -1.0, 0.25, -0.75, -1.0, 0.0, 0.5, -0.75, 0.0, 0.5, 0.5, 0.75, 0.0, -1.0, -1.0, -1.0, -0.75, 0.75, 0.25, -0.5, -0.5, -0.75, 0.0, 1.0, -0.75, -0.25, 0.5, -0.25, 0.0, 1.0, 0.25, -1.0, ]);
    const array1 = new Float32Array([0.75, 0.75, 0.0, 0.5, -0.75, 1.0, -0.5, -0.5, 0.5, -0.25, 1.0, -1.0, 0.75, 0.0, 0.5, -1.0, -0.75, -1.0, 1.0, 0.0, 0.0, -0.5, 0.5, -0.5, -0.25, -1.0, -1.0, -0.25, 0.25, 0.75, -0.5, 0.25, -0.25, -0.75, -0.25, 0.25, -0.5, -1.0, -1.0, 0.5, 0.25, 0.75, 0.75, 0.0, 0.0, 0.5, 0.0, -1.0, 1.0, -0.25, -0.25, 0.75, -1.0, -0.75, 0.5, 0.75, -0.5, -0.25, 0.75, -0.5, 0.5, 0.25, -0.75, 0.75, 0.0, 0.25, -0.25, -0.75, 0.5, 0.0, 0.5, -1.0, -0.75, 0.25, 1.0, 0.5, 0.25, -0.75, -0.75, 1.0, 0.5, -0.5, -0.5, 0.0, 0.25, -0.5, 0.25, -0.25, -0.5, 0.25, -0.75, 0.75, -0.5, 0.25, 0.0, -0.5, 0.75, -0.75, -0.5, 1.0, ]);
    
    
    const array2 = new Float32Array([0.0, 0.25, 0.75, 0.0, 0.0, -0.25, 0.0, -0.75, 0.0, -0.5, -1.0, 0.0, -0.5, -0.75, -0.5, 0.0, 0.25, 0.25, 0.75, 0.5, 0.5, 0.0, 0.75, -1.0, 0.75, 0.25, -0.5, 0.5, 0.0, 0.5, 0.5, 0.75, 0.0, 0.5, -0.25, -0.25, 0.0, 0.5, 1.0, 1.0, -0.25, 0.0, 0.5, 0.5, -1.0, 0.5, 0.25, 0.25, -0.25, -0.25, 0.5, -0.5, -0.5, -1.0, 0.75, -1.0, 0.25, 0.0, 0.75, 0.0, -1.0, 0.25, 0.75, 0.0, -0.25, -0.5, -1.0, 0.75, 0.5, 0.75, 0.0, 0.0, 0.0, 0.75, -0.75, 0.5, 0.25, 1.0, 0.5, -1.0, -0.75, 0.25, 1.0, 1.0, -0.25, 0.5, 0.0, 0.0, -0.25, 1.0, -0.5, 1.0, 0.0, 0.25, 0.25, -0.25, 1.0, -0.25, -0.75, -1.0, ]);
    
    
    const array3 = new Float32Array([1.0, 1.0, -0.75, 0.25, 0.5, -0.25, 0.25, -0.75, 0.5, 0.5, 0.5, -0.75, -0.75, -0.75, -0.75, 1.0, -0.75, 0.75, 0.25, 1.0, -0.5, -0.5, 0.25, -1.0, 0.25, -1.0, 0.25, 0.5, -0.25, -0.25, 0.0, -0.75, -1.0, 0.0, 0.0, 0.0, -1.0, 0.75, 0.0, 0.5, -0.25, 1.0, -0.5, 1.0, 1.0, 0.25, -0.5, -0.25, -1.0, -0.5, -0.25, 0.25, -0.75, -1.0, -1.0, 1.0, -0.5, -0.25, -0.25, -0.75, -1.0, -0.75, -0.75, -1.0, -1.0, 0.5, -0.5, -0.75, -1.0, 0.5, 0.5, -0.75, -1.0, 0.5, -0.25, 0.25, -1.0, 0.25, 0.25, -0.75, 0.25, -1.0, 0.25, 0.75, 0.75, 0.0, 0.25, -0.75, 0.25, -0.75, 0.0, -0.75, 1.0, -0.75, -1.0, 0.0, 0.75, 0.5, 0.0, 0.25, ]);
    
    
    
    const array4 = new Float32Array([-0.5, 0.75, 0.75, 0.0, -0.25, 0.75, -1.0, -0.75, -0.75, -0.75, 0.5, -0.25, 0.0, 0.0, -0.5, -0.25, 0.25, -0.75, 0.75, 0.5, 0.75, 0.0, -0.75, 0.0, 0.5, 0.5, -1.0, 0.0, 1.0, -0.75, 0.0, 0.75, -1.0, 0.0, 0.5, -1.0, 0.5, -1.0, 1.0, 1.0, -1.0, -1.0, -0.25, -1.0, -0.25, 0.75, 0.25, -0.75, 0.0, -0.75, 1.0, 0.5, 0.25, 0.25, 0.0, 0.75, 1.0, 0.75, -0.5, -0.25, -0.5, 0.0, 0.25, -0.5, -1.0, 1.0, 0.0, -1.0, -0.75, 0.5, 0.25, 0.75, -0.75, 0.5, -0.5, 0.0, -1.0, 0.75, 0.0, 0.75, 0.0, 0.75, 0.25, -1.0, -0.75, 0.5, -0.5, 0.0, 1.0, -1.0, -1.0, -0.5, 1.0, 0.0, 0.75, 1.0, -0.5, 0.75, 0.25, 0.0, ]);
    
    
    
    const array5 = new Float32Array([0.5, 1.0, 0.0, -0.75, -0.5, 0.25, -0.5, 0.25, 0.75, 1.0, 0.0, -1.0, -0.5, -0.25, 0.5, 0.25, -0.5, 0.5, 0.75, 1.0, -0.25, -1.0, 0.0, -0.5, 1.0, 0.0, -0.25, -1.0, 0.25, -1.0, -0.5, -0.75, 0.0, 1.0, 0.0, -0.5, -0.75, -0.5, -0.75, 1.0, 0.0, 1.0, -0.25, 0.5, -0.25, -0.25, 0.25, -1.0, 0.25, 1.0, -0.25, -0.5, 0.0, 0.0, -0.5, -0.25, 1.0, 0.25, -0.75, 0.5, 1.0, 0.5, -0.5, 1.0, 0.5, -0.75, 1.0, 0.25, 0.5, -1.0, 1.0, -0.5, -0.25, -0.75, 1.0, 0.0, -0.5, -0.25, 0.75, 1.0, -0.25, 0.75, 0.75, 1.0, 0.25, -1.0, -0.5, -1.0, 0.0, 0.75, 0.0, 0.0, -0.75, 0.25, -0.5, -1.0, 0.5, -0.75, 1.0, -1.0, ]);
    const array6 = new Float32Array([0.0, -0.5, 0.25, 0.25, -0.5, 0.0, -1.0, 0.0, 0.5, 0.75, 0.5, -0.75, -0.75, 0.0, 1.0, 0.75, -1.0, 1.0, 0.5, -1.0, 0.75, -1.0, 0.5, 0.25, -0.5, 1.0, -0.75, 0.5, -0.5, -0.75, -0.75, 0.75, -0.5, -0.75, -0.75, 0.75, -1.0, -0.5, -0.75, -0.25, 0.0, -0.75, -0.75, -0.75, 0.75, 0.0, 0.5, 0.5, -0.25, 0.5, -1.0, 0.0, 0.0, -1.0, 0.75, -1.0, -0.75, 1.0, 0.5, -0.25, -0.25, 0.25, 1.0, -0.75, -0.5, -1.0, 0.75, -0.75, -0.75, 1.0, 0.5, 1.0, -1.0, 0.75, 0.0, -0.5, 0.25, -1.0, -0.25, 0.5, 1.0, 1.0, 0.5, -0.5, 0.75, -0.75, 0.75, -1.0, -0.5, 1.0, 0.75, -0.25, -0.75, 1.0, 0.75, 0.5, -1.0, -1.0, 0.75, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.destroy();
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    texture000.destroy();
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.pushErrorScope("validation");
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
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
    command_encoder000.insertDebugMarker("mymarker");
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    command_encoder001.insertDebugMarker("mymarker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.insertDebugMarker("mymarker");
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16uint",
        dimension: "2d"
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    command_encoder000.insertDebugMarker("mymarker");
    
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder002.insertDebugMarker("mymarker");
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    command_encoder001.insertDebugMarker("mymarker");
    buffer200.destroy()
    
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    texture003.destroy();
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder000.popDebugGroup();
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device20.pushErrorScope("internal");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const array7 = new Float32Array([0.5, -0.5, 1.0, 0.75, 0.25, 0.5, -1.0, 0.0, -0.5, -0.5, 0.0, 0.75, -1.0, -1.0, 1.0, 0.75, 1.0, 0.5, -0.25, -1.0, 0.25, -1.0, -0.75, 1.0, -0.75, 0.75, 1.0, 0.75, -1.0, 0.0, 0.5, 0.75, 0.25, -1.0, 1.0, -1.0, 0.75, 1.0, 0.5, -0.75, -0.5, 0.75, -1.0, 1.0, 0.75, -0.75, -0.5, 0.75, -0.25, 0.75, 0.25, 0.75, -1.0, -0.75, -0.75, -1.0, 0.25, 0.75, -0.5, 0.75, 0.5, -0.5, 0.0, 0.25, -1.0, -0.5, 0.75, 0.25, -0.25, 0.0, -0.5, -0.75, 0.0, 1.0, 0.75, 0.5, 0.25, 0.75, -1.0, -0.75, 0.0, 1.0, -0.75, -1.0, -0.5, 0.5, 1.0, -0.75, -0.75, -0.5, 0.5, -0.5, -1.0, 0.25, 0.5, -0.5, -0.75, 0.75, 0.0, -1.0, ]);
    
    buffer000.destroy()
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    const command_buffer002 = command_encoder002.finish();
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder001.popDebugGroup()
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
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
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_bundle_encoder201.pushDebugGroup("group_marker");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_bundle_encoder000.popDebugGroup();
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.pushErrorScope("validation");
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    const query201 = device20.createQuerySet({
        label: "query201",
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
    
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    compute_pass_encoder0000.setPipeline(compute_pipeline003);
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query001
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0010.insertDebugMarker("marker")
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query001
    });
    render_bundle_encoder000.popDebugGroup();
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_pass_encoder0010.setPipeline(render_pipeline001);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    render_bundle_encoder200.popDebugGroup();
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query001
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0001.insertDebugMarker("marker");
    query200.destroy()
    render_pass_encoder0001.executeBundles([])
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    query001.destroy()
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.popDebugGroup();
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    query201.destroy()
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.setPipeline(render_pipeline002);
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setPipeline(render_pipeline000);
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    query200.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    render_pass_encoder0010.beginOcclusionQuery(0)
    compute_pass_encoder0010.setPipeline(compute_pipeline004);
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    device30.queue.writeTexture({ texture: texture301 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_pass_encoder0001.insertDebugMarker("marker");
    texture004.destroy();
    buffer001.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    render_pass_encoder0010.pushDebugGroup("group_marker");
    compute_pass_encoder0000.popDebugGroup()
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture302 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device30.queue.writeTexture({ texture: texture302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0010.insertDebugMarker("marker")
    texture301.destroy();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    device30.queue.writeTexture({ texture: texture302 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query201.destroy()
    
    device20.destroy();
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_pass_encoder0000.insertDebugMarker("marker");
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    command_encoder001.copyBufferToTexture(
        {
            buffer: buffer001
        },
        {
            texture: texture000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16uint",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture302 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer002,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer003,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group000);
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.setPipeline(render_pipeline001);
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer004,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer005,
                },
            },
        ],
    });

    render_pass_encoder0010.setBindGroup(0, bind_group001);
    device30.queue.writeTexture({ texture: texture304 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    render_pass_encoder0000.pushDebugGroup("group_marker");
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    buffer002.destroy()
    query000.destroy()
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    device30.queue.writeTexture({ texture: texture301 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture304.destroy();
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    compute_pass_encoder0030.setPipeline(compute_pipeline007);
    
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer006, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer006, 0);
    render_pass_encoder0010.setStencilReference(1);
    
    texture005.destroy();
    buffer003.destroy()
    render_bundle_encoder000.popDebugGroup();
    device00.queue.writeBuffer(buffer006, 0, array1, 0, array1.length);
    render_pass_encoder0010.setStencilReference(1);
    device50.destroy();
    
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer008,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    device30.queue.writeTexture({ texture: texture302 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    texture302.destroy();
    render_pass_encoder0010.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder0000.popDebugGroup()
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0001.setPipeline(render_pipeline000);
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.end();
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder002.setPipeline(render_pipeline002);
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    
    command_encoder000.insertDebugMarker("mymarker");
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer009,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0010,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group003);
    render_pass_encoder0001.insertDebugMarker("marker");
    render_pass_encoder0010.endOcclusionQuery()
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device00.queue.writeTexture({ texture: texture006 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.setStencilReference(1);
    render_bundle_encoder000.setVertexBuffer(0, buffer009);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0030.popDebugGroup()
    
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    device00.pushErrorScope("internal");
    device00.queue.writeTexture({ texture: texture006 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer006, 0, array3, 0, array3.length);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device00.queue.writeBuffer(buffer004, 0, array2, 0, array2.length);
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
    texture302.destroy();
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0012,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group004);
    command_encoder000.copyBufferToBuffer(
        buffer004,
        0,
        buffer008,
        0,
        400
    );
    device20.queue.submit([]);
    
    
    query000.destroy()
    texture002.destroy();
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    buffer007.destroy()
    device30.destroy();
    device00.queue.writeTexture({ texture: texture006 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0000.setStencilReference(1);
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0001.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0022,
            },
        ],
        occlusionQuerySet: query001
    });
    device00.queue.writeBuffer(buffer006, 0, array1, 0, array1.length);
    render_pass_encoder0011.setPipeline(render_pipeline005);
    render_pass_encoder0001.insertDebugMarker("marker");
    render_bundle_encoder000.drawIndirect(buffer000, 0);
    
    device00.queue.writeTexture({ texture: texture006 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    device30.queue.writeTexture({ texture: texture303 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0030.setPipeline(render_pipeline001);
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
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
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0000.insertDebugMarker("marker");
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    texture100.destroy();
    device00.queue.writeTexture({ texture: texture006 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0013 = texture001.createView({ label: "texture_view0013" });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    
    render_pass_encoder0011.setStencilReference(1);
    buffer000.destroy()
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    render_pass_encoder0030.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    device00.queue.writeBuffer(buffer0011, 0, array2, 0, array2.length);
    
    
    device00.queue.writeBuffer(buffer0010, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer006, 0, array7, 0, array7.length);
    
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
    query002.destroy()
    render_bundle_encoder000.draw(3);
    render_bundle_encoder001.insertDebugMarker("marker");
    
    device00.queue.writeBuffer(buffer006, 0, array3, 0, array3.length);
    const texture_view0014 = texture001.createView({ label: "texture_view0014" });
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    
    const texture_view0015 = texture001.createView({ label: "texture_view0015" });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const texture_view0070 = texture007.createView({ label: "texture_view0070" });
    render_pass_encoder0011.pushDebugGroup("group_marker");
    query000.destroy()
    
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture006 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    render_bundle_encoder001.setVertexBuffer(0, buffer0012);
    device00.queue.writeBuffer(buffer006, 0, array5, 0, array5.length);
    render_bundle_encoder001.setIndexBuffer(buffer007, "uint16");
    
    command_encoder400.pushDebugGroup("mygroupmarker")
    render_bundle_encoder002.setVertexBuffer(0, buffer000);
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    query000.destroy()
    render_pass_encoder0000.setStencilReference(1);
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    
    
    
    render_pass_encoder0011.popDebugGroup();
    device00.queue.writeTexture({ texture: texture006 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    query100.destroy()
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout001]
    });
    texture007.destroy();
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0014,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group005);
    const array8 = new Float32Array([-0.25, -0.75, 1.0, -0.25, 1.0, -0.25, 0.5, -0.5, 1.0, 0.75, 0.5, 0.5, 0.5, 0.75, -0.75, 1.0, 0.0, 1.0, 0.75, 0.75, 0.25, 0.25, 1.0, -0.25, -0.5, -0.75, -0.75, 0.25, 0.5, 0.0, 0.25, 0.75, -0.25, 0.75, -0.75, 1.0, 0.75, 0.75, -0.5, 0.25, -1.0, 0.75, 0.25, 0.25, 0.5, 1.0, -0.75, -0.75, -1.0, -0.75, 0.5, -1.0, -0.25, 1.0, 0.75, 0.5, 0.25, 0.0, 0.5, -0.5, -0.25, 0.75, 1.0, 1.0, -0.75, 0.0, -0.25, 1.0, -0.75, 1.0, -1.0, 0.75, 0.0, -1.0, -0.25, -0.75, -0.5, -0.25, 0.75, -0.5, 0.5, 0.75, 0.5, 0.5, -0.75, 1.0, -1.0, 0.25, -0.5, 0.0, 1.0, -0.75, -0.5, 1.0, 1.0, -0.75, -1.0, 0.5, -0.5, 0.0, ]);
    buffer009.destroy()
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout006,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.setIndexBuffer(buffer0012, "uint16");
    buffer0012.destroy()
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    command_encoder001.copyBufferToBuffer(
        buffer0013,
        0,
        buffer006,
        0,
        400
    );
    render_pass_encoder0030.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    texture000.destroy();
    {
        await buffer0015.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer0015.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer0015.unmap();
        console.log(new Float32Array(data));
    }
    device40.pushErrorScope("out-of-memory");
    
    
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout006,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    command_encoder001.clearBuffer(buffer0015);
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout001]
    });
    device00.queue.writeBuffer(buffer0014, 0, array7, 0, array7.length);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout008,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture006 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture004.destroy();
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout008,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0015, 0, array3, 0, array3.length);
    {
        await buffer008.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer008.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer008.unmap();
        console.log(new Float32Array(data));
    }
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder0030.setStencilReference(1);
    device00.queue.writeBuffer(buffer006, 0, array6, 0, array6.length);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    
    render_bundle_encoder001.drawIndirect(buffer006, 0);
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    render_bundle_encoder002.setIndexBuffer(buffer006, "uint16");
    command_encoder005.copyBufferToBuffer(
        buffer0016,
        0,
        buffer0010,
        0,
        400
    );
    buffer008.destroy()
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer009,
        0
    )
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    command_encoder005.copyBufferToTexture(
        {
            buffer: buffer0016
        },
        {
            texture: texture001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0014,
            },
        ],
        occlusionQuerySet: query002
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: query001
    });
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0017, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0017, 0);
    device00.queue.writeBuffer(buffer0015, 0, array0, 0, array0.length);
    const render_pass_encoder0002 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0002",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder000.finish();
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0040.setPipeline(render_pipeline002);
    render_pass_encoder0030.setStencilReference(1);
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0050.setPipeline(render_pipeline005);
    
    command_encoder001.copyBufferToBuffer(
        buffer0014,
        0,
        buffer006,
        0,
        400
    );
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0002.setPipeline(render_pipeline000);
    command_encoder000.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer0017
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder000.copyBufferToTexture(
        {
            buffer: buffer0016
        },
        {
            texture: texture006
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder001.insertDebugMarker("marker");
    device40.queue.submit([]);
    
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0019,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group006);
    device50.destroy();
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout007,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder0011 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0011" });
    
    render_bundle_encoder002.draw(3);
    render_pass_encoder0001.setStencilReference(1);
    texture006.destroy();
    buffer0013.destroy()
    compute_pass_encoder0011.setPipeline(compute_pipeline0032);
    command_encoder400.popDebugGroup()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder0002.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.insertDebugMarker("marker");
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    {
        await buffer006.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer006.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer006.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0050.insertDebugMarker("marker");
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout008,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer006, 0, array5, 0, array5.length);
    
    device00.queue.writeBuffer(buffer0017, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer0017, 0, array2, 0, array2.length);
    
    {
        await buffer0017.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer0017.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer0017.unmap();
        console.log(new Float32Array(data));
    }
    
    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0021,
                },
            },
        ],
    });

    render_pass_encoder0000.setBindGroup(0, bind_group007);
    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline0032.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0023,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group008);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0025,
                },
            },
        ],
    });

    render_pass_encoder0002.setBindGroup(0, bind_group009);
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0010.setVertexBuffer(0, buffer006);
    render_pass_encoder0010.setIndexBuffer(buffer0021, "uint16");
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0026, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0026, 0);
    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0028,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group0010);
    render_pass_encoder0002.setVertexBuffer(0, buffer005);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0029, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0029, 0);
    render_pass_encoder0010.drawIndirect(buffer001, 0);
    render_pass_encoder0002.drawIndirect(buffer006, 0);
    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: render_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0031,
                },
            },
        ],
    });

    render_pass_encoder0050.setBindGroup(0, bind_group0011);
    render_pass_encoder0030.setVertexBuffer(0, buffer0030);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0050.setVertexBuffer(0, buffer0015);
    compute_pass_encoder0010.popDebugGroup()
    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0033,
                },
            },
        ],
    });

    render_pass_encoder0001.setBindGroup(0, bind_group0012);
    render_pass_encoder0050.drawIndirect(buffer0026, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0001.setVertexBuffer(0, buffer0028);
    render_pass_encoder0001.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer005, 0);
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder0001.drawIndexedIndirect(buffer000, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0030.drawIndirect(buffer0024, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0030.end();
    render_pass_encoder0001.endOcclusionQuery()
    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0035,
                },
            },
        ],
    });

    render_pass_encoder0040.setBindGroup(0, bind_group0013);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0000.setVertexBuffer(0, buffer0020);
    render_pass_encoder0000.drawIndirect(buffer007, 0);
    render_pass_encoder0000.end();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: render_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0037,
                },
            },
        ],
    });

    render_pass_encoder0011.setBindGroup(0, bind_group0014);
    const command_buffer005 = command_encoder005.finish();
    render_pass_encoder0000.draw(3);
    render_pass_encoder0002.drawIndirect(buffer0029, 0);
    render_pass_encoder0050.drawIndirect(buffer009, 0);
    render_pass_encoder0011.setVertexBuffer(0, buffer0027);
    render_pass_encoder0011.drawIndirect(buffer0017, 0);
    render_pass_encoder0002.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0002.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0040.setVertexBuffer(0, buffer002);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer005, ]);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0001.drawIndirect(buffer0029, 0);
    compute_pass_encoder0011.popDebugGroup()
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder0001.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0040.drawIndirect(buffer0017, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0002.end();
    device40.queue.submit([]);
    render_pass_encoder0050.end();
    render_pass_encoder0010.drawIndirect(buffer006, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0040.end();
    render_pass_encoder0050.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0013, "uint16");
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0038, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0038, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0030.setIndexBuffer(buffer0020, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder0010.draw(3);
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder0011.end();
    render_pass_encoder0030.drawIndirect(buffer0031, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0030.drawIndirect(buffer0031, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0039, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0039, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0011.drawIndirect(buffer000, 0);
    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0041,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0015);
    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: compute_pipeline0032.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0043,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0016);
    render_pass_encoder0040.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0002.drawIndirect(buffer0017, 0);
    command_encoder000.popDebugGroup()
    render_pass_encoder0001.drawIndirect(buffer0012, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0050.end();
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    render_pass_encoder0002.end();
    render_pass_encoder0000.drawIndirect(buffer0026, 0);
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0002.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0010.end();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0010.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder0011.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0000.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0042, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0011.drawIndirect(buffer000, 0);
    const buffer0044 = device00.createBuffer({
        label: "buffer0044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0045,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0017);
    render_pass_encoder0011.drawIndexedIndirect(buffer0017, 0);
    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0047 = device00.createBuffer({
        label: "buffer0047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0047,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0018);
    render_pass_encoder0011.drawIndexedIndirect(buffer0045, 0);
    const buffer0048 = device00.createBuffer({
        label: "buffer0048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0049 = device00.createBuffer({
        label: "buffer0049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0049,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0019);
    render_pass_encoder0000.drawIndirect(buffer0038, 0);
    render_pass_encoder0002.end();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0000.end();
    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0051,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0020);
    render_pass_encoder0000.drawIndexedIndirect(buffer0042, 0);
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0050, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0039, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0047, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0026, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder0050.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0022, 0);
    render_pass_encoder0050.drawIndexed(3);
    compute_pass_encoder0030.end();
    render_pass_encoder0002.end();
    const buffer0052 = device00.createBuffer({
        label: "buffer0052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0053 = device00.createBuffer({
        label: "buffer0053",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0053,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0021);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0048, 0);
    render_pass_encoder0001.drawIndirect(buffer0030, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0002.drawIndirect(buffer0021, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0054 = device00.createBuffer({
        label: "buffer0054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0054, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0054, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0015, "uint16");
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0055, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0055, 0);
    render_pass_encoder0030.drawIndirect(buffer0026, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0001.end();
    compute_pass_encoder0011.popDebugGroup()
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0011.drawIndexedIndirect(buffer0026, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0001.drawIndirect(buffer0038, 0);
    render_pass_encoder0000.drawIndexed(3);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0010.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0002.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0038, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0056 = device00.createBuffer({
        label: "buffer0056",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0056, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0056, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0042, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0001.drawIndirect(buffer0029, 0);
    render_pass_encoder0040.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0002.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0050.drawIndirect(buffer0029, 0);
    render_pass_encoder0011.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer0054, 0);
    render_pass_encoder0030.drawIndirect(buffer0038, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0001.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer000, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer0056, 0);
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    device40.queue.submit([]);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0050.end();
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0002.drawIndirect(buffer0017, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer0026, 0);
    render_pass_encoder0010.drawIndirect(buffer0047, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0010.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0010.drawIndirect(buffer0029, 0);
    device30.queue.submit([]);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0002.drawIndirect(buffer0012, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0011.drawIndirect(buffer0035, 0);
    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0058 = device00.createBuffer({
        label: "buffer0058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
        layout: compute_pipeline0032.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0058,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0022);
    device00.queue.submit([command_buffer002, command_buffer004, command_buffer005, ]);
    render_pass_encoder0010.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0055, 0);
    const buffer0059 = device00.createBuffer({
        label: "buffer0059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0060 = device00.createBuffer({
        label: "buffer0060",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0060,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0023);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder0001.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0040.end();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0056, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0061, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0061, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0030.end();
    const buffer0062 = device00.createBuffer({
        label: "buffer0062",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0063 = device00.createBuffer({
        label: "buffer0063",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0024 = device00.createBindGroup({
        label: "bind_group0024",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0062,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0063,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0024);
    render_pass_encoder0050.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer002, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0001.drawIndirect(buffer0039, 0);
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0030.drawIndirect(buffer0039, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0000.end();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0010.end();
    render_pass_encoder0030.end();
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0002.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0001.drawIndirect(buffer0054, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    device40.queue.submit([]);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0040.drawIndirect(buffer005, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0027, 0);
    render_pass_encoder0050.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0064 = device00.createBuffer({
        label: "buffer0064",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0064, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0064, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0065 = device00.createBuffer({
        label: "buffer0065",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0065, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0065, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0010.draw(3);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer005, 0);
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder0000.end();
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder0030.setIndexBuffer(buffer0031, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0061, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0049, "uint16");
    render_pass_encoder0002.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0002.drawIndirect(buffer0010, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0010.drawIndirect(buffer0064, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0066 = device00.createBuffer({
        label: "buffer0066",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0066, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0066, 0);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer0026, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0067 = device00.createBuffer({
        label: "buffer0067",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0067, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0067, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0030.end();
    render_pass_encoder0002.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0040.drawIndirect(buffer0034, 0);
    device00.queue.submit([command_buffer004, command_buffer005, ]);
    render_pass_encoder0002.end();
    compute_pass_encoder0000.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0000.drawIndirect(buffer0023, 0);
    render_pass_encoder0040.drawIndirect(buffer0048, 0);
    render_pass_encoder0002.drawIndirect(buffer0026, 0);
    render_pass_encoder0002.drawIndirect(buffer0046, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0055, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0050.drawIndirect(buffer0053, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0050, "uint16");
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0068 = device00.createBuffer({
        label: "buffer0068",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0068, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0068, 0);
    render_pass_encoder0010.drawIndirect(buffer001, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0064, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0069 = device00.createBuffer({
        label: "buffer0069",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0069, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0069, 0);
    render_pass_encoder0050.draw(3);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0050.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0013, 0);
    render_pass_encoder0000.end();
    const buffer0070 = device00.createBuffer({
        label: "buffer0070",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0071 = device00.createBuffer({
        label: "buffer0071",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0025 = device00.createBindGroup({
        label: "bind_group0025",
        layout: compute_pipeline0032.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0070,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0071,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0025);
    render_pass_encoder0011.end();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0064, 0);
    const buffer0072 = device00.createBuffer({
        label: "buffer0072",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0073 = device00.createBuffer({
        label: "buffer0073",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0026 = device00.createBindGroup({
        label: "bind_group0026",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0072,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0073,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0026);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0010.drawIndirect(buffer0061, 0);
    render_pass_encoder0002.setIndexBuffer(buffer0043, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0071, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0000.drawIndirect(buffer0038, 0);
    render_pass_encoder0010.drawIndirect(buffer0069, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0029, "uint16");
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0001.drawIndirect(buffer0021, 0);
    compute_pass_encoder0030.popDebugGroup()
    device40.queue.submit([]);
    render_pass_encoder0050.drawIndirect(buffer0038, 0);
    device40.queue.submit([]);
    render_pass_encoder0030.drawIndirect(buffer0054, 0);
    render_pass_encoder0050.drawIndirect(buffer0064, 0);
    compute_pass_encoder0000.end();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0074 = device00.createBuffer({
        label: "buffer0074",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0074, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0074, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0068, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0075 = device00.createBuffer({
        label: "buffer0075",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0075, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0075, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0010.drawIndirect(buffer0029, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0011.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0002.drawIndirect(buffer0067, 0);
    render_pass_encoder0011.end();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    const buffer0076 = device00.createBuffer({
        label: "buffer0076",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0077 = device00.createBuffer({
        label: "buffer0077",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0027 = device00.createBindGroup({
        label: "bind_group0027",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0076,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0077,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0027);
    render_pass_encoder0050.drawIndirect(buffer0061, 0);
    render_pass_encoder0000.drawIndirect(buffer0054, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0078 = device00.createBuffer({
        label: "buffer0078",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0078, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0078, 0);
    device40.queue.submit([]);
    device00.queue.submit([command_buffer000, command_buffer003, command_buffer004, ]);
    render_pass_encoder0002.drawIndirect(buffer0056, 0);
    render_pass_encoder0030.drawIndirect(buffer0026, 0);
    render_pass_encoder0010.popDebugGroup();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0079 = device00.createBuffer({
        label: "buffer0079",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0079, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0079, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0047, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer000, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0040.drawIndirect(buffer0061, 0);
    render_pass_encoder0030.drawIndirect(buffer0039, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0002.drawIndirect(buffer0066, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0011.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0031, "uint16");
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer0039, 0);
    render_pass_encoder0011.drawIndirect(buffer009, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0011.drawIndirect(buffer0065, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0002.drawIndirect(buffer0037, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0011.drawIndirect(buffer0065, 0);
    const buffer0080 = device00.createBuffer({
        label: "buffer0080",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0081 = device00.createBuffer({
        label: "buffer0081",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0028 = device00.createBindGroup({
        label: "bind_group0028",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0080,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0081,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0028);
    render_pass_encoder0040.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0030.drawIndirect(buffer0055, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0040.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0079, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0082 = device00.createBuffer({
        label: "buffer0082",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0082, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0082, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0065, 0);
    const buffer0083 = device00.createBuffer({
        label: "buffer0083",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0084 = device00.createBuffer({
        label: "buffer0084",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0029 = device00.createBindGroup({
        label: "bind_group0029",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0083,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0084,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0029);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0085 = device00.createBuffer({
        label: "buffer0085",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0085, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0085, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0011.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0065, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0000.drawIndirect(buffer008, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0056, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0086 = device00.createBuffer({
        label: "buffer0086",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0086, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0086, 0);
    render_pass_encoder0000.drawIndirect(buffer0062, 0);
    render_pass_encoder0001.drawIndirect(buffer0066, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0001.drawIndirect(buffer001, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0079, 0);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
}