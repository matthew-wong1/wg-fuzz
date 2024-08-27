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
    
    const array0 = new Float32Array([0.25, -0.5, -0.25, -0.5, 0.25, 0.5, 1.0, 0.5, 0.0, 0.25, -0.5, 0.5, 0.5, -0.5, -0.5, 0.5, -0.25, -1.0, -0.25, 0.75, 0.5, 0.75, 0.25, -0.5, 0.5, -0.75, 0.5, -0.5, 0.0, -0.75, 0.75, -1.0, -0.75, 0.0, 0.25, -0.5, -0.5, -0.25, -0.25, 1.0, 0.25, -0.25, -1.0, -0.25, 0.5, 0.0, -0.5, 0.5, -0.5, 0.25, -1.0, -0.25, 0.5, 0.75, 1.0, -0.75, -0.5, -0.75, 0.5, 0.75, 0.5, 0.75, -0.25, 0.75, -1.0, 0.0, -0.25, 0.75, -1.0, -0.75, 0.5, 0.0, -0.5, 0.25, -0.75, -1.0, 1.0, 0.25, 1.0, -0.5, 1.0, 0.0, 0.5, -0.5, 0.25, -0.25, -0.5, -1.0, -0.25, -0.75, -0.25, 1.0, 0.75, -0.25, -1.0, 1.0, 0.25, 0.5, 0.25, -0.75, ]);
    
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.pushErrorScope("validation");
    texture000.destroy();
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
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
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    render_bundle_encoder000.popDebugGroup();
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const array1 = new Float32Array([-0.25, 0.5, 0.0, -1.0, 0.5, -1.0, 1.0, -1.0, 0.75, 0.25, -0.75, 0.5, 1.0, 1.0, -0.25, -0.25, -0.75, 0.75, 1.0, -0.5, 1.0, 1.0, -1.0, 0.0, 0.75, 0.25, -0.5, -0.5, 0.0, 1.0, -0.75, 0.25, 1.0, -0.75, 0.5, -1.0, 0.75, -1.0, 0.5, -0.25, 0.5, -0.5, 0.5, -0.5, -1.0, -0.75, 0.0, 0.25, 0.75, 1.0, 0.75, 0.75, -1.0, -0.25, 1.0, -0.5, 0.5, -0.25, -0.5, 0.75, -0.25, -0.5, 0.0, -1.0, 0.0, -0.5, 0.75, 0.5, 0.25, 1.0, 0.75, 0.5, 0.5, 1.0, 1.0, 0.25, -0.75, 1.0, 0.5, -0.5, -0.75, 1.0, 0.5, 0.75, 0.75, 1.0, 0.0, 0.75, -0.5, 0.75, -0.75, 1.0, -1.0, 0.0, 0.75, -0.25, 0.75, 0.25, -1.0, -0.5, ]);
    {
        await buffer000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer000.unmap();
        console.log(new Float32Array(data));
    }
    
    buffer000.destroy()
    
    command_encoder000.insertDebugMarker("mymarker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const command_buffer000 = command_encoder000.finish();
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "stencil8",
        dimension: "2d"
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    texture001.destroy();
    render_bundle_encoder000.popDebugGroup();
    
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
    command_encoder001.insertDebugMarker("mymarker");
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const compute_pass_encoder0011 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0011" });
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
    compute_pass_encoder0011.insertDebugMarker("marker")
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    
    const array2 = new Float32Array([1.0, 0.0, -0.75, 0.5, -1.0, 0.5, -1.0, -0.5, 1.0, 0.0, 0.75, 0.25, 0.25, 0.5, 0.25, 0.25, 1.0, 0.5, 1.0, -0.5, -1.0, -0.75, 0.75, 0.75, 1.0, 0.25, 0.25, 0.0, 0.5, -0.5, 0.5, -0.75, -1.0, 0.5, -0.5, 0.5, -0.5, 0.25, 0.25, -1.0, -1.0, -1.0, -0.25, 0.75, 0.5, -1.0, 0.0, -0.5, 0.75, -0.5, 0.25, 0.25, 0.25, -0.5, 0.25, -1.0, -1.0, 1.0, -0.25, -0.5, 0.25, 1.0, -0.75, -0.75, 0.75, 0.0, 1.0, -0.5, 0.25, 0.25, -0.25, -0.25, -0.5, 0.5, 0.75, 0.5, -0.75, 0.0, 0.25, 0.0, 0.0, 0.0, 0.25, -0.25, -0.25, 1.0, -0.25, -0.5, 0.25, 0.75, 0.0, 1.0, 1.0, -0.75, 0.75, -1.0, 0.25, 0.5, -1.0, 1.0, ]);
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const array3 = new Float32Array([1.0, -1.0, -1.0, -0.75, 0.75, 1.0, 0.5, 0.25, 0.75, -0.25, 0.75, -0.5, 1.0, -0.25, 0.5, -0.5, 0.75, -1.0, 1.0, -0.75, 0.0, 0.25, 0.75, 0.75, 0.25, 0.5, 0.5, -0.5, -0.5, 0.25, 0.0, 0.25, 0.5, 0.25, 0.75, 0.5, -1.0, -0.25, 0.25, -0.5, -0.75, -0.75, -0.25, -0.75, 1.0, 0.5, -0.25, 0.25, -0.25, -0.75, -0.5, 1.0, 0.75, -0.25, -0.5, 0.25, 0.0, 0.5, -0.5, 0.25, 0.5, 0.0, 0.0, 0.5, -1.0, -1.0, -1.0, 0.5, 0.25, 0.75, -0.5, -0.25, -1.0, -0.75, 0.25, 0.25, -0.25, 0.75, -0.75, 0.0, 0.0, 0.0, -0.25, 1.0, -0.75, -0.5, 0.5, 0.75, -0.25, -0.5, -0.75, -0.5, 0.5, 1.0, 0.5, 0.5, -0.25, 0.5, -0.25, 0.0, ]);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const command_buffer100 = command_encoder100.finish();
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    query100.destroy()
    compute_pass_encoder0011.pushDebugGroup("group_marker")
    device00.pushErrorScope("out-of-memory");
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
        occlusionQuerySet: undefined
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer003,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer004,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    command_encoder001.copyBufferToBuffer(
        buffer002,
        0,
        buffer003,
        0,
        400
    );
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    const command_buffer002 = command_encoder002.finish();
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    
    render_pass_encoder1010.insertDebugMarker("marker");
    texture100.destroy();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1010.executeBundles([])
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    render_pass_encoder1010.executeBundles([])
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const array4 = new Float32Array([-1.0, 0.0, -0.25, 0.0, 0.0, -0.75, 0.5, -0.75, 0.0, -0.25, -0.5, -0.25, -0.25, -0.75, -1.0, 0.5, -0.25, 0.25, -0.5, -0.75, -0.25, 0.75, 0.25, 0.5, -0.75, 1.0, 0.25, -0.5, -1.0, 0.0, -1.0, -1.0, 0.75, -1.0, 0.0, 0.0, 0.25, -0.25, 0.75, -0.75, 0.25, 0.75, -0.5, -0.25, 1.0, -0.5, 0.5, -1.0, 0.5, 0.5, 0.0, -0.5, 0.75, 1.0, 0.75, -0.5, -0.75, 0.0, 0.5, -0.25, 0.75, 0.75, 0.0, 0.0, 0.75, 0.25, 0.0, 0.75, 0.0, 0.0, -0.5, 0.0, 0.0, 1.0, 0.0, 0.75, 1.0, 0.25, -0.5, -1.0, 0.25, -0.5, -0.75, -0.75, 0.75, 0.25, 0.75, 1.0, 0.75, -0.25, 0.75, -0.25, -0.5, 1.0, 0.75, -0.5, 1.0, 0.25, -0.5, -0.25, ]);
    buffer003.destroy()
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    compute_pass_encoder0011.popDebugGroup()
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    buffer004.destroy()
    buffer100.destroy()
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    buffer002.destroy()
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0011.setPipeline(compute_pipeline001);
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    compute_pass_encoder0010.setPipeline(compute_pipeline001);
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder1010.setStencilReference(1);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer005,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer006,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group001);
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
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
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder001.setPipeline(render_pipeline000);
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    buffer005.destroy()
    compute_pass_encoder0030.setPipeline(compute_pipeline000);
    
    render_bundle_encoder000.setVertexBuffer(0, buffer001);
    query001.destroy()
    
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
        vertex: {
            module: shader_module007,
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
            module: shader_module007,
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
    compute_pass_encoder0030.popDebugGroup()
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
        occlusionQuerySet: query101
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    buffer005.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
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
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    command_encoder300.pushDebugGroup("mygroupmarker")
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
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
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    render_bundle_encoder000.drawIndirect(buffer003, 0);
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    query100.destroy()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: query103
    });
    compute_pass_encoder0011.insertDebugMarker("marker")
    buffer006.destroy()
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer008, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer008, 0);
    render_bundle_encoder000.popDebugGroup();
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
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0011.pushDebugGroup("group_marker")
    
    render_pass_encoder1010.popDebugGroup();
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1020.executeBundles([])
    
    
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    compute_pass_encoder0011.insertDebugMarker("marker")
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
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
    render_pass_encoder0030.setPipeline(render_pipeline001);
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
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
    device00.pushErrorScope("validation");
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder0030.insertDebugMarker("marker");
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    command_encoder300.insertDebugMarker("mymarker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    
    device00.queue.writeBuffer(buffer008, 0, array1, 0, array1.length);
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0030.setBindGroup(0, bind_group002);
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
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
    
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder101.popDebugGroup();
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    
    query001.destroy()
    compute_pass_encoder0040.setPipeline(compute_pipeline002);
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    texture003.destroy();
    render_pass_encoder1010.setStencilReference(1);
    query101.destroy()
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module007,
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
            module: shader_module007,
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
    
    
    render_pass_encoder1021.insertDebugMarker("marker");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_pass_encoder0030.setVertexBuffer(0, buffer001);
    render_pass_encoder1010.executeBundles([render_bundle_encoder100, render_bundle_encoder101, ])
    render_pass_encoder1011.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    buffer009.destroy()
    
    render_pass_encoder1021.executeBundles([render_bundle_encoder101, ])
    const array5 = new Float32Array([0.75, 0.5, 0.0, 0.25, -0.25, 0.0, -0.75, -0.75, 1.0, -0.5, 0.25, -0.5, 0.25, -0.25, 1.0, 1.0, -0.5, -0.75, -0.25, -0.5, 0.5, 0.25, 1.0, 0.25, 0.0, -1.0, 0.0, -0.25, 0.75, -1.0, 0.0, -0.75, 0.25, -1.0, 0.75, 0.0, 0.5, 0.0, 0.0, -0.75, 0.0, -0.5, -0.75, 0.25, -0.75, -0.25, -1.0, 0.75, 0.75, -0.25, -0.75, 0.25, -0.25, -1.0, -1.0, 0.25, 0.75, 1.0, -0.25, -1.0, 0.0, -0.75, 1.0, -1.0, 0.0, -0.5, 1.0, 0.5, 0.5, 0.0, 0.75, -0.75, 1.0, -0.5, -0.5, 1.0, 0.0, 1.0, -1.0, 0.5, 0.75, 1.0, -0.25, 0.5, -1.0, 0.0, -0.75, -0.25, -1.0, 1.0, 0.5, 1.0, -0.25, -0.25, 0.25, 0.5, 0.5, 0.5, 0.25, 0.5, ]);
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
        vertex: {
            module: shader_module008,
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
            module: shader_module008,
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
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    buffer001.destroy()
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.executeBundles([])
    compute_pass_encoder0010.end();
    
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    query001.destroy()
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    
    query002.destroy()
    buffer007.destroy()
    
    
    render_pass_encoder1010.executeBundles([])
    const array6 = new Float32Array([0.75, 0.75, -0.25, -0.5, -0.5, -1.0, -0.5, -1.0, 1.0, 0.0, 0.25, 0.5, -1.0, 0.25, 1.0, -0.25, 0.25, 0.0, 0.75, -0.75, 0.75, -0.75, 0.25, 1.0, 0.5, -0.5, 1.0, 0.25, 0.25, 0.5, -0.75, 0.5, 0.75, -0.75, 0.0, -0.75, 0.25, -0.75, 0.75, -0.75, -1.0, -0.25, 0.5, 1.0, 0.75, 0.25, -1.0, 0.25, -1.0, 0.75, 0.25, 0.75, 0.5, 0.5, 0.75, 0.0, -0.25, 1.0, -1.0, 0.25, 0.25, -0.5, -0.75, 0.25, -1.0, -0.75, 1.0, 0.75, -0.25, 0.25, -0.25, -0.5, -0.75, 0.75, 0.5, 0.5, -0.75, 0.5, 0.25, -1.0, -0.25, -0.75, 1.0, -0.5, -1.0, -0.5, 0.0, -0.75, 0.25, 0.75, 0.25, 1.0, -0.25, -0.75, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, ]);
    texture002.destroy();
    
    render_pass_encoder0030.draw(3);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1020.executeBundles([render_bundle_encoder100, render_bundle_encoder102, ])
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    render_pass_encoder1011.pushDebugGroup("group_marker");
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1020.popDebugGroup();
    
    const render_pass_encoder1022 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1022",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: query100
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
    render_pass_encoder1022.pushDebugGroup("group_marker");
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    render_bundle_encoder000.drawIndirect(buffer008, 0);
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
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
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
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
    buffer003.destroy()
    
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.setPipeline(render_pipeline100);
    command_encoder005.insertDebugMarker("mymarker");
    device00.queue.writeBuffer(buffer008, 0, array5, 0, array5.length);
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_pass_encoder1011.setStencilReference(1);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query102.destroy()
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
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
    command_encoder005.copyBufferToBuffer(
        buffer007,
        0,
        buffer008,
        0,
        400
    );
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout003,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout002,
        compute: {
            module: shader_module0012,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
        vertex: {
            module: shader_module007,
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
            module: shader_module007,
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
    compute_pass_encoder1010.insertDebugMarker("marker")
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0013,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group003);
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer009,
        0
    )
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    command_encoder005.clearBuffer(buffer0012);
    command_encoder005.copyBufferToBuffer(
        buffer0011,
        0,
        buffer008,
        0,
        400
    );
    render_pass_encoder1021.setPipeline(render_pipeline100);
    render_pass_encoder1022.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device00.queue.writeBuffer(buffer008, 0, array3, 0, array3.length);
    query001.destroy()
    var shader_module0013_code = "";
    try {
        shader_module0013_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0013 = await device00.createShaderModule({ label: "shader_module0013", code: shader_module0013_code })
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout000,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    buffer0011.destroy()
    device00.queue.writeBuffer(buffer008, 0, array3, 0, array3.length);
    texture300.destroy();
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    render_pass_encoder0031.executeBundles([])
    
    render_pass_encoder1022.setPipeline(render_pipeline100);
    render_pass_encoder1011.setPipeline(render_pipeline100);
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
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
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0030.draw(3);
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    command_encoder300.popDebugGroup()
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
    
    buffer0012.destroy()
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    command_encoder005.insertDebugMarker("mymarker");
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout000,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    render_pass_encoder0031.setPipeline(render_pipeline004);
    
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout003,
        compute: {
            module: shader_module0012,
            entryPoint: "main"
        }
    });
    buffer008.destroy()
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.setPipeline(render_pipeline101);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder002.setPipeline(render_pipeline003);
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const compute_pass_encoder1011 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1011" });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
        vertex: {
            module: shader_module0013,
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
            module: shader_module0013,
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
    render_pass_encoder0031.pushDebugGroup("group_marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
        vertex: {
            module: shader_module007,
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
            module: shader_module007,
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

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout002]
    });
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
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
    
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout005,
        compute: {
            module: shader_module0012,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query002
    });
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0016,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group004);
    
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer0010,
        0
    )
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0017, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0017, 0);
    const compute_pass_encoder3001 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3001" });
    query104.destroy()
    render_pass_encoder1011.insertDebugMarker("marker");
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder0030.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    compute_pass_encoder0011.popDebugGroup()
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const render_pipeline0014 = device00.createRenderPipeline({
        label: "render_pipeline0014",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0017, 0, array3, 0, array3.length);
    const array7 = new Float32Array([-0.5, 0.25, 0.5, -0.5, 0.25, 0.25, 1.0, 0.0, -0.25, 0.25, 1.0, 0.5, 0.5, 0.25, 0.0, -0.75, -1.0, -0.75, -1.0, 1.0, 0.5, 1.0, 0.5, 1.0, 0.25, 0.5, 1.0, 1.0, 0.5, -1.0, 0.75, -0.75, 0.25, 0.5, -0.75, 0.75, -0.75, 0.0, 1.0, 1.0, -0.5, 0.5, 0.0, -0.25, -1.0, 0.75, 0.25, -1.0, 1.0, -0.5, 0.25, -0.75, 0.0, 0.25, -0.25, 0.75, -0.75, 0.0, 0.5, -0.25, 0.5, 0.0, 0.75, 1.0, -0.75, -0.75, -0.5, 0.75, 0.25, 0.25, -0.25, -0.25, 1.0, 0.0, 0.25, -0.25, 0.5, 0.5, -0.5, 0.0, 1.0, 0.0, 1.0, 0.75, -0.5, 0.5, 1.0, -0.75, 1.0, 1.0, -0.5, -0.5, -0.25, -0.25, -1.0, 0.75, -0.5, 0.75, -0.25, -0.25, ]);
    
    
    buffer0013.destroy()
    render_pass_encoder0050.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    buffer0017.destroy()
    compute_pass_encoder0010.insertDebugMarker("marker")
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.setPipeline(render_pipeline007);
    device00.queue.writeBuffer(buffer0015, 0, array6, 0, array6.length);
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0011.insertDebugMarker("marker")
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout001,
        compute: {
            module: shader_module0012,
            entryPoint: "main"
        }
    });
    
    query000.destroy()
    const render_pipeline0015 = device00.createRenderPipeline({
        label: "render_pipeline0015",
        vertex: {
            module: shader_module0010,
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
            module: shader_module0010,
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
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0018, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0018, 0);
    command_encoder005.copyBufferToTexture(
        {
            buffer: buffer0014
        },
        {
            texture: texture003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    device00.queue.writeBuffer(buffer0018, 0, array4, 0, array4.length);
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    
    
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout000,
        compute: {
            module: shader_module0012,
            entryPoint: "main"
        }
    });
    command_encoder001.copyBufferToTexture(
        {
            buffer: buffer009
        },
        {
            texture: texture003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device00.queue.writeBuffer(buffer0018, 0, array6, 0, array6.length);
    
    query000.destroy()
    const render_pass_encoder0051 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0041,
            },
        ],
        occlusionQuerySet: query000
    });
    const render_pipeline0016 = device00.createRenderPipeline({
        label: "render_pipeline0016",
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
    const render_pipeline0017 = device00.createRenderPipeline({
        label: "render_pipeline0017",
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
    render_pass_encoder1020.setPipeline(render_pipeline102);
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.insertDebugMarker("marker");
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
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

    render_pass_encoder1021.setBindGroup(0, bind_group101);
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout002,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture005.destroy();
    compute_pass_encoder3001.pushDebugGroup("group_marker")
    compute_pass_encoder0011.insertDebugMarker("marker")
    buffer104.destroy()
    const render_pipeline0018 = device00.createRenderPipeline({
        label: "render_pipeline0018",
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
    compute_pass_encoder3000.setPipeline(compute_pipeline301);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0030.insertDebugMarker("marker")
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    device00.queue.writeBuffer(buffer008, 0, array2, 0, array2.length);
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.insertDebugMarker("marker");
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0018, 0, array3, 0, array3.length);
    compute_pass_encoder1011.setPipeline(compute_pipeline104);
    render_pass_encoder1010.setPipeline(render_pipeline103);
    render_pass_encoder0030.setIndexBuffer(buffer0010, "uint16");
    compute_pass_encoder3001.setPipeline(compute_pipeline305);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0051.setPipeline(render_pipeline007);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0031.popDebugGroup();
    compute_pass_encoder1010.setPipeline(compute_pipeline102);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1022.popDebugGroup();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0019, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0019, 0);
    device10.queue.submit([]);
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
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group102);
    compute_pass_encoder0040.popDebugGroup()
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
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline007.getBindGroupLayout(0),
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

    render_pass_encoder0050.setBindGroup(0, bind_group005);
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

    render_pass_encoder1022.setBindGroup(0, bind_group103);
    render_pass_encoder0030.drawIndirect(buffer007, 0);
    render_pass_encoder0030.drawIndirect(buffer008, 0);
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group104);
    compute_pass_encoder3001.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0050.setVertexBuffer(0, buffer001);
    render_pass_encoder0050.drawIndirect(buffer008, 0);
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
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group006);
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
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline007.getBindGroupLayout(0),
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

    render_pass_encoder0051.setBindGroup(0, bind_group007);
    render_pass_encoder1022.setVertexBuffer(0, buffer1010);
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
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
                    buffer: buffer1012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1013,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group105);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: compute_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer301,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer302,
                },
            },
        ],
    });

    compute_pass_encoder3001.setBindGroup(0, bind_group300);
    render_pass_encoder1021.setVertexBuffer(0, buffer1012);
    render_pass_encoder1020.setVertexBuffer(0, buffer1012);
    render_pass_encoder0030.drawIndirect(buffer0019, 0);
    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0027,
                },
            },
        ],
    });

    render_pass_encoder0031.setBindGroup(0, bind_group008);
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1015,
                },
            },
        ],
    });

    render_pass_encoder1010.setBindGroup(0, bind_group106);
    render_pass_encoder0031.setVertexBuffer(0, buffer002);
    render_pass_encoder1022.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1022.drawIndirect(buffer1014, 0);
    compute_pass_encoder1011.dispatchWorkgroups(100);
    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1017,
                },
            },
        ],
    });

    render_pass_encoder1011.setBindGroup(0, bind_group107);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0051.setVertexBuffer(0, buffer0020);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0051.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0014, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0051.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0014, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder1011.setVertexBuffer(0, buffer104);
    render_pass_encoder0051.end();
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0030.end();
    device30.queue.submit([]);
    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0029,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group009);
    render_pass_encoder1011.drawIndirect(buffer100, 0);
    compute_pass_encoder3001.dispatchWorkgroups(100);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1018, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1018, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0018, 0);
    compute_pass_encoder0011.popDebugGroup()
    device00.queue.submit([command_buffer002, ]);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0030, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0030, 0);
    render_pass_encoder0050.end();
    render_pass_encoder1022.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder0030.drawIndirect(buffer0019, 0);
    render_pass_encoder1010.setVertexBuffer(0, buffer100);
    render_pass_encoder1021.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder0050.end();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0051.setIndexBuffer(buffer000, "uint16");
    const command_buffer005 = command_encoder005.finish();
    compute_pass_encoder0011.end();
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
        
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group301);
    command_encoder001.popDebugGroup()
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0050.drawIndirect(buffer0028, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0018, "uint16");
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1011.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder0051.end();
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder1011.end();
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer305, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer305, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0019, "uint16");
    compute_pass_encoder1010.end();
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder1011.end();
    render_pass_encoder0031.end();
    const command_buffer101 = command_encoder101.finish();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1019, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1019, 0);
    compute_pass_encoder0030.end();
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder1022.popDebugGroup();
    compute_pass_encoder3001.end();
    compute_pass_encoder3001.dispatchWorkgroups(100);
    render_pass_encoder1021.setIndexBuffer(buffer1017, "uint16");
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder1021.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1014, 0);
    compute_pass_encoder3001.end();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0051.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0030.end();
    render_pass_encoder1022.drawIndexedIndirect(buffer1018, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndirect(buffer1018, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0031, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0031, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1022.end();
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder0011.dispatchWorkgroups(100);
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
        
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0011.setBindGroup(0, bind_group0010);
    render_pass_encoder0050.drawIndirect(buffer0017, 0);
    render_pass_encoder1021.end();
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder0051.drawIndirect(buffer0013, 0);
    compute_pass_encoder3000.end();
    compute_pass_encoder0040.end();
    render_pass_encoder1020.setIndexBuffer(buffer1013, "uint16");
    device10.queue.submit([command_buffer102, ]);
    const command_buffer300 = command_encoder300.finish();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0050.draw(3);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer306, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer306, 0);
    render_pass_encoder1022.popDebugGroup();
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
        
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0011.setBindGroup(0, bind_group0011);
    compute_pass_encoder3001.end();
    render_pass_encoder1011.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1013, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder1021.drawIndexedIndirect(buffer108, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0051.drawIndirect(buffer0032, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0027, 0);
    device10.queue.submit([command_buffer102, ]);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0036, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0036, 0);
    compute_pass_encoder3000.popDebugGroup()
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer307, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer307, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndirect(buffer1019, 0);
    render_pass_encoder0031.draw(3);
    render_pass_encoder1021.end();
    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1021,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group108);
    compute_pass_encoder3000.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1022.drawIndexedIndirect(buffer1019, 0);
    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1023,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group109);
    render_pass_encoder0051.drawIndirect(buffer0029, 0);
    render_pass_encoder1010.end();
    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1025,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1010);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0010, 0);
    device10.queue.submit([]);
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group302);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0030.draw(3);
    render_pass_encoder0031.drawIndirect(buffer0035, 0);
    render_pass_encoder1022.draw(3);
    render_pass_encoder0031.popDebugGroup();
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3010, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3010, 0);
    render_pass_encoder1011.drawIndirect(buffer108, 0);
    render_pass_encoder1011.drawIndirect(buffer1015, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder0010.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1019, 0);
    compute_pass_encoder3001.end();
    render_pass_encoder1020.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1020, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3011, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3011, 0);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0031.drawIndirect(buffer0018, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1022.end();
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0031.end();
    render_pass_encoder1011.end();
    render_pass_encoder1011.drawIndirect(buffer1020, 0);
    render_pass_encoder0050.drawIndirect(buffer0034, 0);
    render_pass_encoder0051.drawIndirect(buffer0030, 0);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0031.end();
    render_pass_encoder1021.drawIndexed(3);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer1019, 0);
    render_pass_encoder0031.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder1021.drawIndexed(3);
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder0011.end();
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1018, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0030.drawIndirect(buffer0030, 0);
    device00.queue.submit([command_buffer005, ]);
    device00.queue.submit([]);
    render_pass_encoder1011.drawIndirect(buffer1014, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0037, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0037, 0);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0050.drawIndexed(3);
    compute_pass_encoder0011.end();
    render_pass_encoder1011.end();
    render_pass_encoder0050.drawIndirect(buffer0019, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder0030.drawIndirect(buffer0019, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder0050.drawIndexedIndirect(buffer0030, 0);
    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0039,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0012);
    render_pass_encoder1011.drawIndirect(buffer1019, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1010.drawIndirect(buffer1011, 0);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder1021.draw(3);
    compute_pass_encoder0030.end();
    render_pass_encoder0031.drawIndirect(buffer0018, 0);
    render_pass_encoder0030.drawIndirect(buffer0025, 0);
    render_pass_encoder1010.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder3001.popDebugGroup()
    render_pass_encoder1020.draw(3);
    render_pass_encoder1020.drawIndirect(buffer1023, 0);
    render_pass_encoder1010.drawIndirect(buffer103, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder1010.draw(3);
    render_pass_encoder0031.drawIndirect(buffer0036, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0014, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3012, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3012, 0);
    render_pass_encoder0051.drawIndirect(buffer008, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0051.end();
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0051.drawIndirect(buffer0037, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1018, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0031.drawIndirect(buffer0037, 0);
    compute_pass_encoder1011.dispatchWorkgroups(100);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1026, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1026, 0);
    render_pass_encoder0050.drawIndirect(buffer0031, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0011, 0);
    compute_pass_encoder0010.popDebugGroup()
    device30.queue.submit([]);
    render_pass_encoder1020.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1022.draw(3);
    render_pass_encoder1010.drawIndirect(buffer1018, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0027, 0);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1011.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder0030.end();
    device00.queue.submit([]);
    render_pass_encoder1010.setIndexBuffer(buffer101, "uint16");
    compute_pass_encoder0010.end();
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0040, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0040, 0);
    compute_pass_encoder0040.end();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0030.setIndexBuffer(buffer0033, "uint16");
    device00.queue.submit([command_buffer004, ]);
    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0042,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0013);
    render_pass_encoder0050.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0050.drawIndirect(buffer0040, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0037, 0);
    device00.queue.submit([]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0051.drawIndirect(buffer0019, 0);
    render_pass_encoder0051.end();
    render_pass_encoder1020.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0018, 0);
    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1028,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1011);
    render_pass_encoder0030.setIndexBuffer(buffer004, "uint16");
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1029, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1029, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer0017, 0);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0050.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0051.drawIndirect(buffer0017, 0);
    render_pass_encoder0030.drawIndirect(buffer0017, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder3001.popDebugGroup()
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0031.drawIndirect(buffer0018, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0043, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0043, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1026, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0044 = device00.createBuffer({
        label: "buffer0044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0044, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0044, 0);
    compute_pass_encoder3000.end();
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0045, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0045, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1018, 0);
    compute_pass_encoder0040.end();
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0011.popDebugGroup()
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1010.draw(3);
    render_pass_encoder1011.end();
    render_pass_encoder0051.setIndexBuffer(buffer008, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0030.drawIndirect(buffer0013, 0);
    render_pass_encoder0051.drawIndirect(buffer0037, 0);
    render_pass_encoder1011.setIndexBuffer(buffer101, "uint16");
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder3001.end();
    device00.queue.submit([command_buffer003, command_buffer005, ]);
    render_pass_encoder1022.drawIndirect(buffer105, 0);
    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1031,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1012);
    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3014,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group303);
    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3016,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group304);
    render_pass_encoder1021.drawIndirect(buffer1019, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0030, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0030.end();
    render_pass_encoder1021.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1022.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder0030.end();
    render_pass_encoder1011.drawIndirect(buffer1019, 0);
    render_pass_encoder0051.drawIndirect(buffer0031, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1025, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0050.end();
    render_pass_encoder1010.drawIndirect(buffer1027, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder1022.drawIndirect(buffer1031, 0);
    render_pass_encoder1022.drawIndirect(buffer108, 0);
    compute_pass_encoder1011.dispatchWorkgroups(100);
    render_pass_encoder0051.drawIndirect(buffer0037, 0);
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
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0011.setBindGroup(0, bind_group0014);
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer002, ]);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0051.draw(3);
    render_pass_encoder0051.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder1022.drawIndirect(buffer1029, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0051.drawIndirect(buffer0030, 0);
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1032, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer1032, 0);
    render_pass_encoder1020.end();
    render_pass_encoder0050.end();
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
        
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0015);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer0031, 0);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder0040.end();
    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3018,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group305);
    render_pass_encoder1011.drawIndirect(buffer1029, 0);
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder1010.end();
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
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0011.setBindGroup(0, bind_group0016);
    render_pass_encoder0050.popDebugGroup();
    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1034,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1013);
    render_pass_encoder0050.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1022.end();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0052 = device00.createBuffer({
        label: "buffer0052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0052, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0052, 0);
    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1036,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1014);
    render_pass_encoder0030.end();
    render_pass_encoder0050.end();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0051.end();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1037, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1037, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1018, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder0030.drawIndirect(buffer0017, 0);
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder3001.popDebugGroup()
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder0031.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0010, "uint16");
    compute_pass_encoder0011.end();
    render_pass_encoder1022.setIndexBuffer(buffer1028, "uint16");
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer0019, 0);
    render_pass_encoder1021.draw(3);
    const buffer0053 = device00.createBuffer({
        label: "buffer0053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0054 = device00.createBuffer({
        label: "buffer0054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0054,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0017);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder1022.end();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer008, 0);
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder0030.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1037, 0);
    render_pass_encoder0031.drawIndirect(buffer0039, 0);
    render_pass_encoder0030.drawIndirect(buffer000, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0051.drawIndirect(buffer0040, 0);
    render_pass_encoder1022.drawIndirect(buffer1010, 0);
    render_pass_encoder1022.drawIndirect(buffer1019, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0050.drawIndirect(buffer0018, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1011.draw(3);
    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1039,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1015);
    render_pass_encoder1010.drawIndirect(buffer1029, 0);
    const uint32_3001 = new Uint32Array(3);

    uint32_3001[0] = 100;
    uint32_3001[1] = 1;
    uint32_3001[2] = 1;

    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3019, 0, uint32_3001, 0, uint32_3001.length);

    compute_pass_encoder3001.dispatchWorkgroupsIndirect(buffer3019, 0);
    render_pass_encoder1010.draw(3);
    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0056 = device00.createBuffer({
        label: "buffer0056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0056,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0018);
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1010.draw(3);
    device00.queue.submit([command_buffer001, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1021.drawIndexed(3);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder1022.drawIndirect(buffer1018, 0);
    render_pass_encoder1022.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder1021.draw(3);
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndexedIndirect(buffer0030, 0);
    compute_pass_encoder1011.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndexedIndirect(buffer1018, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0031.popDebugGroup();
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder1021.drawIndirect(buffer109, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0031, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0036, 0);
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
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0019);
    compute_pass_encoder3000.end();
    render_pass_encoder1011.drawIndirect(buffer1013, 0);
    render_pass_encoder0051.drawIndirect(buffer0052, 0);
    compute_pass_encoder1011.end();
    render_pass_encoder1011.setIndexBuffer(buffer1017, "uint16");
    compute_pass_encoder0010.dispatchWorkgroups(100);
    device30.queue.submit([]);
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
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group0020);
    render_pass_encoder1010.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1021.drawIndirect(buffer1029, 0);
    compute_pass_encoder3001.popDebugGroup()
    render_pass_encoder1020.drawIndirect(buffer1019, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1032, 0);
    render_pass_encoder0050.drawIndirect(buffer006, 0);
    render_pass_encoder0030.drawIndirect(buffer0043, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0061, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0061, 0);
    device10.queue.submit([]);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0030.drawIndirect(buffer008, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0018, "uint16");
    compute_pass_encoder0040.end();
    render_pass_encoder1011.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0016, 0);
    render_pass_encoder1010.drawIndirect(buffer1037, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1011.drawIndirect(buffer1037, 0);
    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: compute_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3021,
                },
            },
        ],
    });

    compute_pass_encoder3001.setBindGroup(0, bind_group306);
    render_pass_encoder1010.drawIndirect(buffer1018, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer0052, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    compute_pass_encoder0030.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0030.drawIndirect(buffer0055, 0);
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder1022.drawIndexed(3);
    render_pass_encoder1021.drawIndirect(buffer1029, 0);
    render_pass_encoder1022.drawIndirect(buffer1037, 0);
    render_pass_encoder0030.drawIndirect(buffer008, 0);
    compute_pass_encoder1010.end();
    compute_pass_encoder0011.end();
    render_pass_encoder1011.end();
    render_pass_encoder1022.drawIndirect(buffer1037, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0051.drawIndirect(buffer0043, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1011.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1026, 0);
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
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0011.setBindGroup(0, bind_group0021);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1020.drawIndirect(buffer1037, 0);
    const buffer0064 = device00.createBuffer({
        label: "buffer0064",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0065 = device00.createBuffer({
        label: "buffer0065",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0064,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0065,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0022);
    render_pass_encoder1022.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0033, 0);
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    device30.queue.submit([]);
    render_pass_encoder0050.drawIndirect(buffer0053, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1011.end();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder1022.drawIndexed(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1037, 0);
    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1041,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1016);
    render_pass_encoder1020.setIndexBuffer(buffer1019, "uint16");
    compute_pass_encoder0040.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0057, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1013, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0051.drawIndirect(buffer0031, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0018, 0);
    const buffer0066 = device00.createBuffer({
        label: "buffer0066",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0067 = device00.createBuffer({
        label: "buffer0067",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0066,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0067,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0023);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0051.drawIndirect(buffer0031, 0);
    render_pass_encoder0051.drawIndirect(buffer0048, 0);
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder1011.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer0030, 0);
    const buffer0068 = device00.createBuffer({
        label: "buffer0068",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0069 = device00.createBuffer({
        label: "buffer0069",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0024 = device00.createBindGroup({
        label: "bind_group0024",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0068,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0069,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0024);
    render_pass_encoder0050.drawIndexedIndirect(buffer0036, 0);
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder3001.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer0030, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0030.drawIndirect(buffer0040, 0);
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder0030.drawIndirect(buffer0052, 0);
    render_pass_encoder1020.drawIndirect(buffer1026, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder0051.drawIndirect(buffer0018, 0);
    render_pass_encoder0051.end();
    render_pass_encoder1010.drawIndirect(buffer1031, 0);
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0025);
    render_pass_encoder1020.drawIndirect(buffer1019, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1021.setIndexBuffer(buffer1024, "uint16");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0072 = device00.createBuffer({
        label: "buffer0072",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0072, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0072, 0);
    render_pass_encoder0031.drawIndirect(buffer0072, 0);
    const buffer0073 = device00.createBuffer({
        label: "buffer0073",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0074 = device00.createBuffer({
        label: "buffer0074",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0026 = device00.createBindGroup({
        label: "bind_group0026",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0073,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0074,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0026);
    render_pass_encoder1020.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder0051.drawIndirect(buffer0037, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder1011.drawIndirect(buffer1024, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0052, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0072, 0);
    render_pass_encoder0030.drawIndirect(buffer0036, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0019, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer0030, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer0062, 0);
    const buffer0075 = device00.createBuffer({
        label: "buffer0075",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0076 = device00.createBuffer({
        label: "buffer0076",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0027 = device00.createBindGroup({
        label: "bind_group0027",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0075,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0076,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0027);
    render_pass_encoder1011.drawIndirect(buffer1034, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1021.drawIndirect(buffer106, 0);
    device00.queue.submit([command_buffer001, ]);
    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3023,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group307);
    render_pass_encoder0050.drawIndirect(buffer0052, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0012, 0);
    const buffer0077 = device00.createBuffer({
        label: "buffer0077",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0078 = device00.createBuffer({
        label: "buffer0078",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0028 = device00.createBindGroup({
        label: "bind_group0028",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0077,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0078,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0028);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0031.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1021.end();
    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1043,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1017);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1021.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder0031.drawIndirect(buffer0031, 0);
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0050.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1010.drawIndirect(buffer1032, 0);
    render_pass_encoder1022.end();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder1011.end();
    render_pass_encoder1011.drawIndirect(buffer1029, 0);
    render_pass_encoder1020.drawIndirect(buffer1026, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder1020.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer004, "uint16");
    const buffer0079 = device00.createBuffer({
        label: "buffer0079",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0080 = device00.createBuffer({
        label: "buffer0080",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0029 = device00.createBindGroup({
        label: "bind_group0029",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0079,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0080,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0029);
    render_pass_encoder1022.draw(3);
    render_pass_encoder0050.drawIndirect(buffer0078, 0);
    render_pass_encoder1020.drawIndirect(buffer1026, 0);
    render_pass_encoder0051.end();
    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1045,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1018);
    device30.queue.submit([]);
    const buffer0081 = device00.createBuffer({
        label: "buffer0081",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0082 = device00.createBuffer({
        label: "buffer0082",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0030 = device00.createBindGroup({
        label: "bind_group0030",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0081,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0082,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0030);
    render_pass_encoder1022.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1022.drawIndirect(buffer1026, 0);
    render_pass_encoder1011.drawIndirect(buffer1019, 0);
    render_pass_encoder1010.end();
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
        
    const bind_group0031 = device00.createBindGroup({
        label: "bind_group0031",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0011.setBindGroup(0, bind_group0031);
    render_pass_encoder1011.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1022.drawIndirect(buffer104, 0);
    render_pass_encoder0030.drawIndirect(buffer0052, 0);
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1046, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer1046, 0);
    render_pass_encoder1022.draw(3);
    render_pass_encoder0030.drawIndirect(buffer0043, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder0011.popDebugGroup()
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder0031.drawIndexedIndirect(buffer0045, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0030.drawIndirect(buffer0069, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1021.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1022.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    const buffer0085 = device00.createBuffer({
        label: "buffer0085",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0086 = device00.createBuffer({
        label: "buffer0086",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0032 = device00.createBindGroup({
        label: "bind_group0032",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0085,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0086,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0032);
    render_pass_encoder0030.setIndexBuffer(buffer0081, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1014, "uint16");
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndexed(3);
    compute_pass_encoder0030.popDebugGroup()
    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1048,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1019);
    render_pass_encoder0050.drawIndirect(buffer0011, 0);
    render_pass_encoder0050.drawIndirect(buffer0054, 0);
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1011.end();
    compute_pass_encoder1010.popDebugGroup()
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0087 = device00.createBuffer({
        label: "buffer0087",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0087, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0087, 0);
    render_pass_encoder1020.drawIndirect(buffer103, 0);
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer0016, 0);
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0031.drawIndirect(buffer0044, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0088 = device00.createBuffer({
        label: "buffer0088",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0088, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0088, 0);
    render_pass_encoder0051.drawIndirect(buffer0043, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder1011.drawIndirect(buffer105, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0050.end();
    compute_pass_encoder1010.end();
    render_pass_encoder0050.drawIndirect(buffer0040, 0);
    render_pass_encoder1022.drawIndirect(buffer1035, 0);
    render_pass_encoder0031.drawIndirect(buffer0030, 0);
    render_pass_encoder0050.drawIndirect(buffer0019, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0031.end();
    render_pass_encoder1011.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0051.drawIndirect(buffer0036, 0);
    const buffer0089 = device00.createBuffer({
        label: "buffer0089",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0090 = device00.createBuffer({
        label: "buffer0090",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0033 = device00.createBindGroup({
        label: "bind_group0033",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0089,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0090,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0033);
    render_pass_encoder0051.end();
    render_pass_encoder1010.drawIndirect(buffer1031, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1045, 0);
    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1050 = device10.createBuffer({
        label: "buffer1050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1050,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1020);
    render_pass_encoder0030.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder0031.draw(3);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0031.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0088, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0051.drawIndexed(3);
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    render_pass_encoder0051.drawIndirect(buffer0045, 0);
    render_pass_encoder1011.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder1010.drawIndirect(buffer1025, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0067, "uint16");
    compute_pass_encoder1011.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder1022.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0030.drawIndirect(buffer0056, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder0030.drawIndirect(buffer0017, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1012, "uint16");
    device00.queue.submit([command_buffer004, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1010.drawIndirect(buffer1026, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0018, 0);
    render_pass_encoder1022.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder0050.drawIndirect(buffer0058, 0);
    device10.queue.submit([]);
    render_pass_encoder1022.drawIndexed(3);
    render_pass_encoder0050.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1022.drawIndirect(buffer1037, 0);
    compute_pass_encoder0010.end();
    device10.queue.submit([]);
    const buffer0091 = device00.createBuffer({
        label: "buffer0091",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0092 = device00.createBuffer({
        label: "buffer0092",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0034 = device00.createBindGroup({
        label: "bind_group0034",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0091,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0092,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0034);
    render_pass_encoder1011.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0031, 0);
    const buffer0093 = device00.createBuffer({
        label: "buffer0093",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0094 = device00.createBuffer({
        label: "buffer0094",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0035 = device00.createBindGroup({
        label: "bind_group0035",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0093,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0094,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0035);
    compute_pass_encoder0011.popDebugGroup()
    compute_pass_encoder0040.end();
    render_pass_encoder1022.drawIndirect(buffer1019, 0);
    render_pass_encoder0031.drawIndirect(buffer0070, 0);
    render_pass_encoder1020.drawIndirect(buffer104, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1037, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1022.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder0031.drawIndirect(buffer0077, 0);
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder0031.drawIndirect(buffer0088, 0);
    render_pass_encoder1011.drawIndirect(buffer1046, 0);
    render_pass_encoder0050.end();
    render_pass_encoder1021.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1019, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder1022.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder0031.end();
    render_pass_encoder1011.draw(3);
    render_pass_encoder1022.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0055, "uint16");
    compute_pass_encoder0010.end();
    compute_pass_encoder1010.end();
    render_pass_encoder0030.drawIndirect(buffer0027, 0);
    compute_pass_encoder1011.end();
    render_pass_encoder1010.end();
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder0051.setIndexBuffer(buffer0016, "uint16");
    compute_pass_encoder1011.popDebugGroup()
    const buffer0095 = device00.createBuffer({
        label: "buffer0095",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0096 = device00.createBuffer({
        label: "buffer0096",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0036 = device00.createBindGroup({
        label: "bind_group0036",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0095,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0096,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0036);
}