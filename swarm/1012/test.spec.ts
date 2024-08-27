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
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array0 = new Float32Array([0.5, 0.75, 0.25, 0.75, 1.0, -0.75, 0.0, -1.0, -0.5, -0.25, 0.5, 0.75, 0.0, -0.25, -0.75, 1.0, 0.5, 1.0, -0.25, -0.5, 1.0, 1.0, 0.25, -0.75, 0.5, -0.75, -1.0, 0.0, 0.25, -0.25, 1.0, -0.5, -0.5, -0.25, 0.0, 0.5, -0.5, 0.0, 0.25, 0.25, -0.75, 0.0, -0.5, -1.0, 0.5, -0.5, -0.5, 0.5, 0.25, 0.75, -0.75, 0.25, -0.75, 0.25, 0.25, 1.0, -0.25, -0.5, 0.75, -1.0, -0.25, 1.0, 0.25, 0.0, 0.5, 0.5, 1.0, -1.0, 0.5, 0.25, -1.0, 0.0, -1.0, -0.75, 0.25, -0.75, 0.25, 0.5, -0.5, 0.0, 0.5, 0.0, 1.0, -0.5, 0.75, 0.0, 0.0, -1.0, -0.75, 1.0, 0.75, 0.5, -0.25, -0.75, -0.25, -1.0, 0.25, 0.5, 0.5, -1.0, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    
    const array1 = new Float32Array([1.0, -1.0, 0.0, -0.25, 0.5, 0.25, 0.5, -0.5, 0.0, -0.25, 0.25, -0.5, -1.0, 1.0, -1.0, 0.75, 0.5, -0.25, 1.0, 0.0, 0.5, -0.75, 0.5, 0.25, -1.0, -0.5, -0.5, -0.75, 0.0, 0.25, 0.5, -1.0, 0.25, 1.0, 1.0, 1.0, 1.0, -0.75, -0.5, 1.0, 0.0, 0.0, 0.75, -1.0, -1.0, 0.75, 0.0, -1.0, 0.5, 0.0, -0.75, 1.0, -0.25, 0.25, -0.75, -0.5, 0.25, 1.0, -1.0, 0.0, 1.0, 0.0, 0.5, -0.75, 0.75, -0.5, 0.0, -0.5, 1.0, 0.75, 0.75, -1.0, -1.0, -0.5, 0.5, 0.25, 0.75, -0.5, 0.0, 0.25, 0.25, 0.5, 0.0, -0.75, 0.75, 0.75, 0.5, 0.5, -0.75, -0.5, 0.5, 0.5, -0.25, -0.75, 1.0, -0.75, 0.5, -1.0, -0.75, -0.25, ]);
    
    
    
    
    const array2 = new Float32Array([0.0, 1.0, 1.0, -1.0, 0.5, 1.0, -1.0, 0.25, 0.5, 0.25, -1.0, -0.5, 1.0, 1.0, 0.25, 0.0, 0.5, -1.0, 0.0, 0.0, -0.75, 0.5, 0.75, -0.5, 0.0, 0.5, 1.0, 0.75, -0.25, 0.25, 1.0, 0.25, -1.0, -1.0, -0.25, 0.75, 0.25, -0.5, -1.0, 0.5, 0.5, -0.5, -1.0, 0.25, -0.75, -0.75, -0.5, -1.0, -0.75, -0.75, -1.0, 0.0, 0.25, 0.5, 0.75, 0.5, 0.0, 0.25, 0.0, -0.75, 0.25, 0.5, 0.75, -0.25, 1.0, -0.75, -0.5, 0.25, -0.5, 0.0, 0.0, 0.0, 0.0, 0.25, 0.75, 0.75, -0.5, 1.0, -0.5, 0.25, -0.25, 0.25, 0.0, 1.0, 0.75, 0.75, 0.5, -0.25, 0.0, 0.0, -0.25, 0.0, 0.0, -1.0, 0.25, 0.5, 0.5, 0.5, 0.25, 0.25, ]);
    
    
    const array3 = new Float32Array([-0.75, -0.25, -1.0, -1.0, 0.5, 0.5, 0.5, 0.5, -1.0, -0.75, -1.0, 0.75, 0.75, 0.5, 1.0, -0.25, -0.75, -1.0, 0.0, -0.25, -0.25, 0.25, 0.5, -0.5, 0.25, 0.0, 0.5, 0.5, -1.0, 0.25, -0.75, 1.0, 0.5, -0.75, 0.75, -0.25, 0.0, -1.0, 0.5, 0.0, -0.25, -0.75, -0.75, -0.5, 0.75, -1.0, 0.25, -0.75, 0.0, 0.75, -1.0, -0.25, -0.25, -0.5, -0.5, 0.25, -1.0, 0.25, -0.75, -0.75, -1.0, 0.0, 1.0, -0.5, -0.25, 0.5, -0.5, 0.0, -1.0, 0.5, 0.25, 0.75, 0.25, -0.75, -0.75, -1.0, 0.0, 1.0, 0.0, 0.0, 0.5, 0.5, 0.0, 0.0, 0.0, 1.0, -0.75, -0.75, -1.0, 1.0, 0.25, -0.5, -0.25, 0.75, 0.75, -0.75, 0.5, 0.0, 0.5, 0.0, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16float",
        dimension: "2d"
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    texture001.destroy();
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const sampler001 = device00.createSampler( { label: "sampler001" } );
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
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
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
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
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
    texture000.destroy();
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_bundle_encoder002.setPipeline(render_pipeline001);
    const array4 = new Float32Array([-0.25, -1.0, -0.5, -0.25, 0.75, 0.75, -0.25, -0.5, -0.25, 0.5, -1.0, 0.75, 1.0, 0.25, -1.0, -0.75, -0.5, -0.75, -0.75, -0.25, -1.0, -1.0, 0.5, 0.25, 1.0, -0.25, -0.5, 0.0, -1.0, -0.25, -0.75, -0.25, 0.75, 0.5, -0.25, 1.0, 0.25, 0.75, 0.5, -0.25, -1.0, 0.75, -1.0, 0.0, 0.0, -1.0, -0.25, -0.25, -0.75, -0.25, 0.25, 0.75, -0.75, 1.0, 0.0, -0.25, 0.75, 0.0, -0.5, -0.25, -0.75, 0.0, 0.75, 0.75, 1.0, -0.25, -0.75, 0.25, -0.5, 0.5, 0.25, -0.25, 0.0, -1.0, 0.75, -0.75, -0.5, 0.25, 0.75, -0.75, -0.25, -0.25, 0.5, 0.5, 0.0, -0.5, 0.0, -0.5, 0.0, -0.75, -0.25, 0.25, 1.0, -0.75, 0.0, 1.0, 0.25, -0.5, 0.0, -0.25, ]);
    device00.pushErrorScope("out-of-memory");
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array5 = new Float32Array([0.0, 0.75, 0.0, 0.5, 0.75, 0.25, 0.0, -1.0, -1.0, -0.5, -0.5, -0.25, -0.25, -0.75, -0.75, -0.5, -0.25, 1.0, 0.25, -1.0, 0.75, 1.0, 0.5, -0.5, 0.5, 0.75, -0.75, 0.75, -0.25, -0.25, -0.5, 0.0, 0.5, 0.25, 0.75, 0.0, 0.5, -0.5, 0.75, 0.25, 0.75, -1.0, -0.75, -0.25, -0.5, -0.5, 0.75, 0.5, -0.25, 0.0, -0.75, -1.0, -0.75, 0.0, -0.75, -0.75, 0.25, 0.75, -0.5, 0.75, -0.5, -0.75, 0.0, -0.75, 0.0, 1.0, 0.5, -1.0, 1.0, 0.0, -0.5, 0.75, 1.0, 0.5, 1.0, 1.0, -1.0, 0.5, -0.25, -0.75, -0.25, 0.5, -1.0, 0.5, 0.5, 0.0, 0.0, -0.25, 0.0, 0.25, 0.75, 1.0, -0.5, 0.25, 0.75, 0.75, 0.75, 0.0, 0.25, 0.0, ]);
    render_bundle_encoder002.insertDebugMarker("marker");
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    render_bundle_encoder000.setPipeline(render_pipeline001);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    const array6 = new Float32Array([-0.5, 0.25, 0.75, 0.75, 0.5, 0.25, 0.0, 0.0, 0.25, 0.5, -0.75, 0.75, -1.0, 0.25, 1.0, -0.75, -1.0, 0.0, -0.5, -0.75, -0.75, 0.75, 0.0, 0.0, -0.5, 0.0, -1.0, 1.0, -0.75, 0.75, -0.25, -0.75, 0.5, 0.75, 0.0, -1.0, 0.5, -0.5, -0.25, 0.75, 0.75, 0.75, 0.0, 1.0, -0.75, -0.75, -0.5, 1.0, -0.25, 0.75, 1.0, 0.5, 0.5, 0.25, -0.75, -0.5, -0.75, 0.25, 1.0, 0.0, 0.25, -0.25, 0.0, -0.25, -1.0, -0.25, 1.0, 0.0, -0.5, 0.75, -0.75, -0.5, -0.5, -0.5, -0.25, -0.5, 0.0, -0.75, 0.75, -0.25, -0.75, 0.0, 0.25, 0.0, 1.0, -1.0, -0.5, -0.75, 0.75, -1.0, 0.5, -0.5, 0.25, -0.75, 0.0, 0.5, -0.25, -0.5, 0.25, -0.75, ]);
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.popDebugGroup();
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device20.pushErrorScope("out-of-memory");
    
    render_bundle_encoder001.popDebugGroup();
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    render_bundle_encoder001.setPipeline(render_pipeline002);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    buffer001.destroy()
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    buffer000.destroy()
    buffer100.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    texture200.destroy();
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    device00.queue.writeBuffer(buffer002, 0, array6, 0, array6.length);
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    command_encoder000.pushDebugGroup("mygroupmarker")
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
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
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device40.pushErrorScope("validation");
    
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
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
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    buffer200.destroy()
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
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    command_encoder000.popDebugGroup()
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    command_encoder000.pushDebugGroup("mygroupmarker")
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    device00.queue.writeTexture({ texture: texture004 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.insertDebugMarker("marker");
    texture004.destroy();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder201.popDebugGroup();
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    device00.queue.writeBuffer(buffer005, 0, array5, 0, array5.length);
    render_bundle_encoder001.popDebugGroup();
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
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
    
    device00.queue.writeBuffer(buffer002, 0, array6, 0, array6.length);
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    device30.destroy();
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    render_bundle_encoder002.insertDebugMarker("marker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    texture003.destroy();
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer004, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder201.setPipeline(render_pipeline200);
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    device20.destroy();
    
    command_encoder000.copyBufferToBuffer(
        buffer005,
        0,
        buffer002,
        0,
        400
    );
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    texture002.destroy();
    render_bundle_encoder002.popDebugGroup();
    
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder000.popDebugGroup();
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder001.popDebugGroup();
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    texture000.destroy();
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    buffer005.destroy()
    buffer003.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    
    render_bundle_encoder200.setPipeline(render_pipeline200);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    device00.queue.writeBuffer(buffer002, 0, array6, 0, array6.length);
    render_bundle_encoder001.popDebugGroup();
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    const array7 = new Float32Array([1.0, -0.5, 0.75, -0.25, 0.0, -0.5, 0.5, -1.0, -0.25, 0.25, 0.25, -0.75, 0.75, 0.5, 0.25, -0.75, 0.25, 0.0, -0.75, 0.25, 0.25, -0.75, 0.5, -0.75, -0.5, -0.25, 1.0, 0.75, 1.0, 0.0, -0.5, -0.25, 0.5, 0.25, 0.75, 0.0, 0.5, 0.0, 1.0, -1.0, -0.5, 1.0, 1.0, 0.5, 0.5, 0.0, -0.25, 1.0, -1.0, -1.0, 0.0, 0.5, 0.25, 1.0, -0.5, 0.0, 0.0, 0.0, 1.0, -0.25, -1.0, -1.0, 0.0, 0.0, -1.0, -0.75, 0.0, 0.75, -1.0, 0.25, 0.5, -0.75, 0.5, -0.5, -0.75, 1.0, 1.0, -1.0, -0.25, -1.0, 1.0, -0.5, 0.0, 0.25, 0.25, -0.5, 0.25, 0.5, -1.0, -0.75, 0.25, 0.5, 0.0, 1.0, 0.0, 1.0, 0.75, 0.25, 0.25, 0.0, ]);
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
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
    render_bundle_encoder400.insertDebugMarker("marker");
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device00.pushErrorScope("internal");
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    device30.pushErrorScope("out-of-memory");
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    buffer004.destroy()
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const array8 = new Float32Array([0.5, 0.25, -0.5, 1.0, -1.0, 0.25, -0.5, 0.75, -0.75, 0.0, -0.75, -0.75, 0.0, -0.25, -0.75, -1.0, 1.0, 0.5, -1.0, -0.25, -0.5, 0.0, -0.5, 0.5, -0.5, 0.5, 0.75, 0.25, -0.25, -0.5, 1.0, -1.0, -0.5, 0.0, 0.5, 0.75, -0.5, -0.75, -0.75, -1.0, -0.25, -0.25, 0.75, -0.75, -0.5, -1.0, 1.0, 0.25, 0.75, 0.0, -0.5, -0.75, 0.0, 0.5, 0.25, 1.0, 0.5, -0.25, 0.0, -1.0, -0.5, 0.5, -0.25, 1.0, 0.75, 0.75, 0.75, 1.0, 0.75, -0.75, 1.0, 1.0, 0.75, 0.75, 0.0, 0.0, 1.0, -0.25, 0.0, 0.0, -1.0, 0.25, 0.0, 0.25, -1.0, 0.25, -1.0, 0.75, -0.5, -1.0, -0.75, -1.0, 0.75, 0.5, -0.75, 0.0, 0.75, 0.0, -0.5, 0.5, ]);
    
    const array9 = new Float32Array([-1.0, 0.75, 0.5, -0.75, -1.0, -0.25, 0.5, 0.75, -1.0, 1.0, -0.25, 0.5, 1.0, -0.75, 0.75, -0.75, 1.0, -0.5, 0.5, -0.25, 0.25, 1.0, 0.75, -0.25, 0.0, -1.0, 0.75, 0.0, 0.5, 1.0, -0.25, -0.75, -0.25, 0.5, 0.5, -0.75, 0.5, 1.0, 0.0, -0.25, 0.0, 1.0, 1.0, -0.25, 0.75, 0.0, 0.25, 1.0, 0.75, -1.0, 0.25, 0.75, -0.25, 0.25, 1.0, 1.0, 0.0, 0.0, -1.0, -1.0, -0.5, -0.5, 1.0, 0.25, -1.0, -0.5, -0.5, -0.5, 0.5, 0.25, -0.75, -0.5, -0.5, 0.5, 1.0, 0.0, -0.25, -0.25, 0.25, 0.25, -1.0, 0.75, -1.0, -0.75, -0.25, -0.5, 0.0, -0.75, 1.0, 0.0, -1.0, 0.0, -1.0, 0.5, -0.25, 0.5, 0.25, -0.75, 0.0, -1.0, ]);
    
    const compute_pass_encoder0011 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0011" });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8uint",
        dimension: "2d"
    });
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    render_bundle_encoder400.insertDebugMarker("marker");
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device00.queue.writeBuffer(buffer002, 0, array8, 0, array8.length);
    device40.queue.writeBuffer(buffer401, 0, array8, 0, array8.length);
    
    
    
    
    render_bundle_encoder000.popDebugGroup();
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
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
    buffer401.destroy()
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    device40.pushErrorScope("out-of-memory");
    buffer402.destroy()
    device00.pushErrorScope("validation");
    const array10 = new Float32Array([-0.5, -0.25, 0.25, 0.5, -0.25, 0.0, -0.25, -0.75, -0.25, -0.75, -0.75, 0.25, -0.75, 1.0, 0.0, 1.0, -0.5, -0.25, 0.5, 1.0, -0.5, 0.25, 0.25, -0.5, -0.75, 0.0, 0.25, 1.0, 0.25, -1.0, 1.0, 0.25, 0.75, -0.5, 0.25, 0.75, 1.0, 0.0, 0.75, 1.0, 0.25, 0.0, -1.0, -0.75, -0.5, 0.0, -1.0, 0.0, -0.25, -0.75, 1.0, -0.5, -0.75, -1.0, -0.5, -0.25, -0.75, -1.0, -0.75, 1.0, 0.0, -1.0, -0.75, 0.25, 0.25, 0.0, 0.25, 1.0, -0.5, 0.0, -0.5, 0.5, 1.0, 0.0, -0.25, -0.75, -0.75, 0.75, 0.75, 0.75, 1.0, -0.75, 0.75, -0.5, -0.25, -0.75, 0.0, 0.0, 0.75, -0.25, 1.0, 0.0, 1.0, -1.0, 0.75, 0.75, 0.75, -0.75, 0.75, 0.0, ]);
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    render_bundle_encoder001.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer003, 0, array10, 0, array10.length);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    texture004.destroy();
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
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    compute_pass_encoder0010.setPipeline(compute_pipeline000);
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
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
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    render_bundle_encoder401.setPipeline(render_pipeline400);
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    
    render_bundle_encoder001.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    compute_pass_encoder0011.insertDebugMarker("marker")
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    texture005.destroy();
    device40.queue.submit([]);
    render_bundle_encoder301.insertDebugMarker("marker");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder0010.popDebugGroup()
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    device40.queue.writeBuffer(buffer403, 0, array7, 0, array7.length);
    device00.queue.writeTexture({ texture: texture005 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
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
    device40.queue.writeBuffer(buffer403, 0, array10, 0, array10.length);
    texture001.destroy();
    device00.queue.writeBuffer(buffer002, 0, array7, 0, array7.length);
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    const render_pipeline0014 = device00.createRenderPipeline({
        label: "render_pipeline0014",
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
    device40.queue.writeBuffer(buffer403, 0, array10, 0, array10.length);
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer003, 0, array6, 0, array6.length);
    device40.queue.writeBuffer(buffer403, 0, array1, 0, array1.length);
    
    device40.queue.writeBuffer(buffer403, 0, array10, 0, array10.length);
    device40.queue.writeBuffer(buffer403, 0, array6, 0, array6.length);
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0011.setPipeline(compute_pipeline001);
    render_bundle_encoder002.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture002 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder402.setPipeline(render_pipeline401);
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
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
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    texture004.destroy();
    render_pass_encoder0010.setPipeline(render_pipeline0013);
    const array11 = new Float32Array([1.0, 0.5, 0.5, 0.5, 0.5, 0.25, 0.0, 0.25, 0.5, -0.5, 0.0, -0.75, 0.0, 0.75, -0.75, -0.75, 0.5, -0.75, -0.75, -0.25, 0.75, 0.5, -0.75, -0.75, -0.5, 1.0, 0.5, 0.75, 0.75, 0.5, 0.0, 0.5, 0.75, -0.25, 0.25, 0.75, -0.25, 0.5, -0.75, 1.0, -1.0, -0.25, -0.5, -0.75, -0.25, 1.0, 0.25, -0.25, 0.5, 1.0, 0.25, -0.5, -1.0, 0.0, -1.0, 0.0, -0.75, 0.5, -0.25, 0.0, 0.75, 0.75, 0.5, 0.25, 0.0, 0.75, 0.5, 0.75, 0.0, 0.0, 0.75, -1.0, -0.75, -1.0, 0.5, 1.0, 0.25, 0.75, 1.0, 0.25, -0.75, 0.0, -0.75, -0.75, 0.0, -0.75, -0.25, 0.5, -0.25, -1.0, 1.0, 0.25, 0.5, -1.0, 0.0, -0.25, -0.75, -0.5, 0.5, 0.5, ]);
    device40.queue.writeBuffer(buffer403, 0, array7, 0, array7.length);
    device40.queue.writeBuffer(buffer403, 0, array2, 0, array2.length);
    buffer007.destroy()
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer403, 0, array5, 0, array5.length);
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    device00.queue.writeTexture({ texture: texture004 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.writeBuffer(buffer403, 0, array7, 0, array7.length);
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    compute_pass_encoder0010.popDebugGroup()
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
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline0013.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group000);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder002.popDebugGroup();
    
    device40.queue.writeBuffer(buffer403, 0, array6, 0, array6.length);
    device00.queue.writeBuffer(buffer002, 0, array9, 0, array9.length);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device40.queue.writeBuffer(buffer403, 0, array5, 0, array5.length);
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16uint",
        dimension: "2d"
    });
    texture400.destroy();
    render_pass_encoder0010.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    buffer002.destroy()
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    device00.queue.writeTexture({ texture: texture004 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_pipeline0015 = device00.createRenderPipeline({
        label: "render_pipeline0015",
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
    compute_pass_encoder0011.insertDebugMarker("marker")
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder000.popDebugGroup();
    device40.queue.writeBuffer(buffer403, 0, array0, 0, array0.length);
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8uint",
        dimension: "2d"
    });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder0020.executeBundles([])
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer001.destroy()
    render_bundle_encoder400.setPipeline(render_pipeline400);
    texture006.destroy();
    render_bundle_encoder402.pushDebugGroup("group_marker");
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    render_pass_encoder0020.setPipeline(render_pipeline004);
    buffer0012.destroy()
    buffer400.destroy()
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    device40.queue.writeBuffer(buffer403, 0, array10, 0, array10.length);
    device00.pushErrorScope("internal");
    device00.queue.writeTexture({ texture: texture002 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.destroy();
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder001.popDebugGroup();
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    command_encoder000.copyBufferToBuffer(
        buffer001,
        0,
        buffer001,
        0,
        400
    );
    const command_buffer600 = command_encoder600.finish();
    render_pass_encoder0010.setVertexBuffer(0, buffer001);
    device40.queue.writeBuffer(buffer401, 0, array11, 0, array11.length);
    
    
    buffer007.destroy()
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer404, 0, array2, 0, array2.length);
    device40.pushErrorScope("validation");
    command_encoder400.pushDebugGroup("mygroupmarker")
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    device50.queue.writeTexture({ texture: texture500 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer009, 0, array8, 0, array8.length);
    buffer009.destroy()
    device50.queue.submit([]);
    device50.destroy();
    render_bundle_encoder401.popDebugGroup();
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    buffer0011.destroy()
    device40.queue.writeBuffer(buffer403, 0, array10, 0, array10.length);
    buffer0011.destroy()
    render_pass_encoder0010.draw(3);
    compute_pass_encoder0000.setPipeline(compute_pipeline002);
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32float",
        dimension: "2d"
    });
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    command_encoder003.copyBufferToBuffer(
        buffer007,
        0,
        buffer0011,
        0,
        400
    );
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
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
    device40.queue.writeBuffer(buffer403, 0, array9, 0, array9.length);
    command_encoder001.copyBufferToBuffer(
        buffer008,
        0,
        buffer000,
        0,
        400
    );
    const command_buffer601 = command_encoder601.finish();
    device00.queue.writeBuffer(buffer006, 0, array9, 0, array9.length);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.queue.writeBuffer(buffer403, 0, array1, 0, array1.length);
    device40.queue.writeBuffer(buffer403, 0, array5, 0, array5.length);
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0021.executeBundles([])
    device40.queue.writeBuffer(buffer404, 0, array4, 0, array4.length);
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    
    command_encoder003.copyTextureToTexture(
        {
            texture: texture006
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
    device00.queue.writeBuffer(buffer003, 0, array8, 0, array8.length);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
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
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    device00.queue.writeBuffer(buffer008, 0, array6, 0, array6.length);
    texture401.destroy();
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    render_bundle_encoder401.insertDebugMarker("marker");
    device40.pushErrorScope("validation");
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
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    render_pass_encoder0021.setPipeline(render_pipeline009);
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
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba32uint",
        dimension: "2d"
    });
    command_encoder602.pushDebugGroup("mygroupmarker")
    device00.queue.writeBuffer(buffer0010, 0, array5, 0, array5.length);
    command_encoder000.copyBufferToBuffer(
        buffer004,
        0,
        buffer001,
        0,
        400
    );
    device40.queue.writeTexture({ texture: texture402 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer0010, 0, array0, 0, array0.length);
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    compute_pass_encoder0000.popDebugGroup()
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline004.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group001);
    command_encoder400.popDebugGroup()
    device60.queue.submit([command_buffer600, command_buffer601, ]);
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline009.getBindGroupLayout(0),
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

    render_pass_encoder0021.setBindGroup(0, bind_group002);
    compute_pass_encoder0030.setPipeline(compute_pipeline000);
    render_pass_encoder0021.setVertexBuffer(0, buffer008);
    render_pass_encoder0021.draw(3);
    command_encoder602.popDebugGroup()
    render_pass_encoder0020.setVertexBuffer(0, buffer0013);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0020.setIndexBuffer(buffer004, "uint16");
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder0020.drawIndexed(3);
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder0020.drawIndexedIndirect(buffer007, 0);
    device60.queue.submit([command_buffer600, ]);
    const command_buffer602 = command_encoder602.finish();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0021.draw(3);
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.queue.submit([command_buffer602, ]);
    const command_buffer100 = command_encoder100.finish();
    const command_buffer001 = command_encoder001.finish();
    device40.queue.submit([]);
    compute_pass_encoder0030.popDebugGroup()
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0021.setIndexBuffer(buffer000, "uint16");
    device40.queue.submit([command_buffer400, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0021.draw(3);
    device40.queue.submit([]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer005, 0);
    device00.queue.submit([command_buffer003, ]);
    device00.queue.submit([command_buffer002, ]);
    device60.queue.submit([command_buffer602, ]);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
}