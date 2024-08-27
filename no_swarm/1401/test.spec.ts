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
    
    const array0 = new Float32Array([-0.25, 0.5, -0.25, 0.75, -0.5, 0.5, 0.25, -0.75, -1.0, 1.0, -0.5, 1.0, -0.25, -0.5, -0.25, -0.5, 0.0, -0.75, 0.25, -0.25, -0.5, 1.0, 0.25, 0.75, 0.25, -1.0, 1.0, 0.25, 0.25, -0.5, 0.75, 0.0, 0.0, -0.5, -0.75, -0.5, 1.0, 1.0, 0.75, -0.5, -0.25, 1.0, 0.25, 0.5, -0.5, 0.0, 0.25, 0.75, -0.5, 1.0, -1.0, 1.0, 0.0, -0.25, 0.0, 0.5, 0.75, -0.5, -0.5, -1.0, -0.5, 0.0, 0.5, 0.75, 0.5, 0.5, 0.75, 0.5, 1.0, 0.75, 0.25, -1.0, -0.5, 0.5, 0.75, -0.5, 0.25, 0.0, 0.75, -0.5, -1.0, 1.0, 0.5, -1.0, -1.0, 0.5, 1.0, -0.25, 0.25, -1.0, 0.75, 0.5, 1.0, 1.0, 0.5, -0.25, -0.25, -0.75, -1.0, -0.5, ]);
    const array1 = new Float32Array([0.5, 0.75, 1.0, -0.75, 0.75, -0.75, -0.25, 0.0, 1.0, -0.75, 1.0, 0.5, -0.25, 1.0, 0.0, -1.0, 1.0, 0.5, 0.5, -1.0, 0.0, 0.0, 0.75, -1.0, 0.0, -0.5, -0.5, 0.5, -0.75, 1.0, 1.0, -0.5, 0.5, 1.0, 0.5, -0.5, 0.75, 0.75, 0.75, 0.0, -1.0, 0.75, -1.0, -1.0, -1.0, -0.5, 0.75, -1.0, -0.25, 0.25, 1.0, 0.25, -0.5, 0.5, -0.5, 0.75, 0.75, -0.5, 0.75, -0.75, 0.75, 1.0, 0.5, -0.5, -0.5, -1.0, -0.5, 0.0, -0.5, 0.5, 1.0, 0.25, 0.25, -1.0, 0.0, 0.0, -0.75, 0.25, 0.25, -0.75, -1.0, -1.0, -0.5, 0.25, -1.0, 0.75, -1.0, 0.25, -0.25, 1.0, -1.0, 0.0, 1.0, 0.5, -0.75, 0.75, -0.75, -0.25, 0.5, -0.75, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array2 = new Float32Array([0.0, 0.75, -0.25, -1.0, 0.75, -0.75, 1.0, -0.25, 0.25, 1.0, 0.5, -0.75, 1.0, 0.0, 0.5, 0.75, 1.0, 0.75, -0.75, -0.75, 0.5, -0.25, 0.25, -0.25, 1.0, -0.25, -0.5, -0.25, 0.25, -0.75, -0.5, -0.5, 0.75, 0.25, 0.25, -0.75, 1.0, 0.0, 0.25, -0.75, -0.5, 0.25, 1.0, 0.75, -1.0, 0.75, -0.25, 0.0, -1.0, -1.0, 0.25, -1.0, 0.0, -0.75, 1.0, 0.0, 0.0, -0.5, 0.0, 0.75, 0.75, -0.5, -1.0, -1.0, 0.75, 0.5, 0.5, 0.75, 0.5, 0.25, 1.0, 1.0, -0.25, 0.0, 1.0, 0.75, 0.25, 1.0, 0.0, -0.5, 0.75, -0.75, 0.75, 0.25, 1.0, -1.0, -0.5, 0.25, -0.5, -0.5, 0.75, -0.75, 0.0, -0.5, 0.25, -0.5, 0.0, 0.25, 0.75, -1.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array3 = new Float32Array([0.5, 0.5, -1.0, -0.5, -1.0, -0.5, -0.25, -1.0, -0.75, -0.25, 1.0, 0.5, -0.5, -0.75, 1.0, -1.0, 0.25, 1.0, 0.0, 0.25, -1.0, -0.75, 0.0, 0.5, 0.5, 0.0, -0.75, 0.75, 0.75, 0.0, -1.0, 0.25, -0.25, -1.0, 0.0, 0.25, 0.75, 0.25, 1.0, 0.25, 1.0, 0.75, 0.5, 1.0, -0.75, 0.25, -1.0, 0.25, 0.75, -1.0, 1.0, 0.75, 0.5, -0.25, 1.0, 0.75, -0.75, -0.5, 0.0, -1.0, 0.75, -0.25, 0.5, -0.5, -0.75, -0.75, -0.75, 1.0, 0.25, 0.0, -0.5, -1.0, 0.5, -0.5, -0.25, -0.75, 1.0, -0.5, 0.75, -0.5, 1.0, -0.75, -0.5, 1.0, 0.75, 0.5, 1.0, 0.75, -0.75, -0.75, 0.0, 1.0, -0.25, 0.75, 0.25, -0.5, -1.0, -0.75, -0.25, 0.0, ]);
    const array4 = new Float32Array([-0.25, 0.25, 1.0, 0.5, 0.0, -0.75, 1.0, 0.5, 0.5, 0.75, -0.25, 0.5, -0.25, 0.25, -0.5, 0.25, 0.75, 0.25, 0.0, 0.25, 1.0, 0.25, 0.5, -0.5, -0.25, -1.0, 0.25, 0.25, -0.75, 0.25, -0.75, -1.0, -0.75, 0.75, 0.75, 0.5, -0.75, 0.75, -0.5, 1.0, -0.25, -0.75, -0.5, -0.75, -0.25, -1.0, 1.0, -0.5, -0.25, 1.0, -0.5, -0.25, 0.0, -0.5, 1.0, 0.75, 0.5, 0.0, -0.5, 0.0, 0.0, 0.25, 0.0, 1.0, 1.0, -0.25, -0.25, 0.75, 0.75, -1.0, 0.5, -0.75, 0.0, -0.5, -0.25, 1.0, 0.5, 0.25, 1.0, 0.75, -0.5, -0.25, 0.25, 0.5, 0.5, -1.0, 1.0, -0.5, -0.25, 1.0, -0.5, -0.25, -1.0, -1.0, 1.0, 1.0, -0.25, 1.0, 0.25, -0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer000.destroy()
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer000 = command_encoder000.finish();
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const array5 = new Float32Array([-0.25, -1.0, -0.5, 0.5, 0.0, -0.75, -0.25, 0.5, 1.0, 0.0, -0.25, -0.25, 0.5, 0.5, -1.0, 0.75, 0.25, 0.75, -0.5, 0.0, 1.0, -0.25, -0.5, -0.25, 0.25, -0.75, -0.25, -1.0, -0.25, 0.25, 0.5, -0.5, 0.75, -0.75, 1.0, 0.75, -0.5, -1.0, 0.0, -0.5, 0.0, -1.0, -0.75, -1.0, 1.0, 0.75, 0.0, 0.0, 0.5, -0.5, -0.75, -1.0, -0.5, 0.25, -0.5, -1.0, 0.75, 0.75, -1.0, 1.0, 1.0, 0.25, -0.25, 1.0, -0.75, -0.75, 0.0, -1.0, 0.0, -0.75, -0.5, 1.0, 0.5, 0.25, -1.0, 0.0, 0.75, -0.75, -0.5, 0.0, 1.0, 0.75, -1.0, 1.0, -0.75, -0.25, 0.25, -0.75, 0.75, -0.75, -0.75, -0.25, 0.25, 0.0, -0.75, 0.75, 0.0, 0.75, -1.0, 0.0, ]);
    
    buffer001.destroy()
    command_encoder001.insertDebugMarker("mymarker");
    device00.queue.submit([command_buffer000, ]);
    
    command_encoder001.insertDebugMarker("mymarker");
    
    const array6 = new Float32Array([-1.0, 1.0, -0.25, -1.0, 0.5, 0.75, 0.25, 1.0, -0.25, -0.75, -1.0, -0.75, -0.75, -0.75, -0.75, -0.75, 0.75, 0.25, -1.0, 1.0, 0.0, 0.25, -0.25, -1.0, -0.75, -0.5, 0.25, -0.25, -0.25, 0.0, 0.5, -0.25, -1.0, -0.75, 1.0, 0.5, -0.75, -1.0, -0.25, -0.25, 0.25, -1.0, 0.0, 0.5, -1.0, 0.5, -0.5, 0.0, 1.0, 1.0, 1.0, 0.5, 0.75, -1.0, 1.0, -0.25, -0.25, 0.25, -0.25, 0.5, 0.25, 0.75, 0.75, 0.75, -0.5, -1.0, -0.75, 0.5, 0.75, 0.75, 1.0, -0.75, -0.25, 1.0, -0.75, 0.25, -0.5, 1.0, -1.0, 0.0, -0.75, -0.5, 1.0, 0.75, -1.0, 0.25, 0.5, 1.0, 0.25, 0.5, -0.25, 0.0, -0.5, 0.75, 0.0, 0.0, 0.0, -0.25, 0.25, 0.75, ]);
    device00.pushErrorScope("out-of-memory");
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer002.destroy()
    const command_buffer001 = command_encoder001.finish();
    query000.destroy()
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const array7 = new Float32Array([0.25, 0.0, -1.0, 0.5, 0.75, 0.25, 0.5, -0.25, 0.0, 0.25, 0.5, 0.5, 0.75, 0.75, 0.5, -1.0, 0.75, 0.25, 1.0, 0.25, -1.0, 0.25, -0.5, 0.25, -0.75, 0.75, 0.0, -1.0, -1.0, 0.5, 0.5, -0.5, 0.25, 0.5, 0.0, 1.0, 0.25, 0.75, 0.0, -0.75, -0.5, 1.0, 0.0, -0.5, -0.25, 0.75, 0.5, 1.0, -1.0, -0.5, -0.75, 1.0, 0.0, -0.75, 0.5, -1.0, 1.0, 0.0, -0.75, 0.75, -0.75, -0.75, 0.5, -0.25, 0.0, 0.25, -0.25, 1.0, 0.5, -0.5, 0.75, 0.25, 1.0, -0.5, 0.25, -0.25, -0.5, -0.25, 0.25, -0.25, -0.75, -0.75, 0.25, -0.75, 0.75, 1.0, 0.75, -1.0, -0.25, -0.75, 1.0, 0.25, -0.5, -0.5, -1.0, 0.25, -1.0, -0.75, 0.5, 0.5, ]);
    query001.destroy()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb10a2uint",
        dimension: "2d"
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
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query001.destroy()
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query000.destroy()
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    const array8 = new Float32Array([1.0, 1.0, -1.0, -1.0, -1.0, -0.75, 0.25, 0.75, 0.0, 0.0, -0.5, -0.5, 0.0, 0.5, -0.75, -0.75, 0.75, 1.0, 0.25, -0.5, -1.0, 0.0, 1.0, 0.0, -0.25, 1.0, 0.0, -1.0, -0.75, 0.5, 1.0, 0.25, -0.5, -1.0, -0.25, -0.75, 0.25, 0.0, 1.0, -0.75, 0.5, 0.25, -0.25, 1.0, -0.5, -0.75, 0.75, 0.25, -0.25, -0.5, 1.0, 0.25, -0.5, 0.25, -0.75, 0.25, -0.25, 0.75, -0.25, 0.25, -0.75, 1.0, 0.5, -1.0, 0.0, 0.0, -0.5, -0.5, -0.5, -0.5, -0.5, -1.0, 0.5, -0.5, -0.75, -1.0, -0.25, 0.25, 0.25, 0.75, 1.0, 1.0, -0.5, 0.0, 0.25, 0.0, -0.75, -0.5, -1.0, 0.25, 0.0, 0.5, -1.0, -0.75, 0.75, 0.0, 0.0, -0.25, -0.75, -1.0, ]);
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    
    query000.destroy()
    command_encoder002.pushDebugGroup("mygroupmarker")
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder0020.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    texture003.destroy();
    
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
    render_pass_encoder0020.setPipeline(render_pipeline002);
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
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group000);
    
    
    texture001.destroy();
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8sint",
        dimension: "2d"
    });
    texture002.destroy();
    device00.queue.writeTexture({ texture: texture004 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    {
        await buffer003.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer003.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer003.unmap();
        console.log(new Float32Array(data));
    }
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    render_bundle_encoder000.setPipeline(render_pipeline000);
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
    device00.queue.submit([command_buffer001, ]);
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer006.destroy()
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    texture000.destroy();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const array9 = new Float32Array([0.75, 0.25, -1.0, -0.25, -0.25, -1.0, -0.25, 0.75, 1.0, 1.0, 0.25, 0.25, -0.5, -1.0, 1.0, -0.25, -0.75, 0.25, 0.25, 1.0, -0.25, 0.5, -0.75, -1.0, -1.0, -1.0, 0.5, -0.75, -0.5, -0.75, -1.0, -0.5, 0.25, -0.25, -0.25, -0.75, 1.0, 0.25, -0.25, 1.0, -0.25, 0.5, -1.0, 0.5, -0.5, -0.5, 1.0, -0.25, 0.0, 1.0, -0.25, -0.75, -0.75, 0.75, -1.0, 0.75, -0.75, 0.25, 0.25, 0.25, 0.0, -0.5, 0.5, 0.25, 0.5, -0.5, 0.5, 0.75, 0.0, 1.0, 0.0, -1.0, 1.0, 0.0, 1.0, 0.75, 0.25, 1.0, -0.25, 0.5, 1.0, 0.0, 0.75, -1.0, 1.0, 0.0, -0.25, 0.25, 0.75, -0.75, -1.0, -1.0, -0.75, 1.0, -0.5, 0.0, 0.5, -0.5, -0.5, -0.75, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_bundle_encoder000.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer100, 0, array9, 0, array9.length);
    render_pass_encoder0021.insertDebugMarker("marker");
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
    device10.queue.writeBuffer(buffer100, 0, array9, 0, array9.length);
    device10.queue.submit([]);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    device10.destroy();
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    render_bundle_encoder000.insertDebugMarker("marker");
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0021.setPipeline(render_pipeline002);
    render_pass_encoder0021.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.writeBuffer(buffer004, 0, array6, 0, array6.length);
    render_pass_encoder0021.setStencilReference(1);
    device00.pushErrorScope("validation");
    render_pass_encoder0020.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    buffer005.destroy()
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
    {
        await buffer003.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer003.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer003.unmap();
        console.log(new Float32Array(data));
    }
    
    render_pass_encoder0021.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.setVertexBuffer(0, buffer001);
    render_pass_encoder0020.draw(3);
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

    render_pass_encoder0021.setBindGroup(0, bind_group002);
    const array10 = new Float32Array([0.25, 0.75, 0.75, 0.75, 0.0, -0.25, 0.5, -0.75, -0.75, -0.5, 0.25, -0.25, -0.25, -0.25, -0.25, 0.5, -1.0, -0.25, 0.0, -0.25, 0.75, -1.0, 0.75, 0.5, -0.5, -0.5, 0.5, 1.0, 0.75, 0.75, 0.75, -0.5, -1.0, 0.0, -0.5, -0.75, -0.25, -1.0, 0.5, 0.25, 0.5, -1.0, -0.5, -0.75, 0.25, -0.75, -0.75, -0.5, -0.5, 0.0, 0.0, -1.0, 0.0, 0.0, 0.5, 0.25, 0.5, -1.0, -1.0, 0.5, -0.25, -0.25, 0.75, -0.25, -0.25, 0.0, -0.5, -0.5, 0.5, -1.0, 1.0, 0.5, -1.0, -1.0, -0.5, 0.0, 1.0, -0.25, 0.25, -0.75, -0.25, -1.0, 0.5, 0.0, 0.5, -0.25, 0.75, 0.75, -0.75, -0.25, 0.25, -0.25, 0.0, -0.75, -1.0, 0.25, -0.25, -1.0, 1.0, 1.0, ]);
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder0021.setVertexBuffer(0, buffer000);
    
    
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
    buffer004.destroy()
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    buffer007.destroy()
    
    const array11 = new Float32Array([-1.0, -0.5, 0.0, 1.0, -1.0, 1.0, 1.0, -1.0, -0.25, -1.0, -0.25, 1.0, -1.0, 0.0, 0.75, 0.75, -0.25, -0.75, -0.75, 0.25, 0.5, 0.25, -0.25, 0.5, 0.0, 0.5, -0.25, -0.5, -0.5, -0.75, -1.0, 0.0, 1.0, -0.5, 0.5, 1.0, -1.0, 1.0, 0.25, -1.0, 0.25, 0.5, -0.75, 0.75, -0.75, 0.0, -1.0, -0.75, 0.5, 0.5, 0.0, 0.25, 0.75, 1.0, 0.25, -0.5, 0.5, 0.75, -0.75, 0.0, 0.0, 1.0, 0.5, -0.5, -0.25, -1.0, 0.0, 1.0, 0.0, 0.75, -0.25, 0.0, 1.0, -0.5, 0.75, 1.0, 1.0, -0.5, 0.5, 0.25, -0.5, 0.25, -0.5, 0.25, 0.75, 0.5, 0.5, 1.0, 0.0, 0.25, -0.75, 0.25, 0.0, -0.25, 0.75, 0.25, 1.0, 0.0, -1.0, -0.5, ]);
    render_pass_encoder0020.insertDebugMarker("marker");
    
    
    render_pass_encoder0020.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    command_encoder002.copyBufferToBuffer(
        buffer003,
        0,
        buffer008,
        0,
        400
    );
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    buffer003.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query000.destroy()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
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
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
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
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    
    render_pass_encoder0021.draw(3);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    device00.pushErrorScope("internal");
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    query000.destroy()
    query003.destroy()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    render_pass_encoder0021.setStencilReference(1);
    device00.queue.writeBuffer(buffer006, 0, array11, 0, array11.length);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_bundle_encoder001.setPipeline(render_pipeline003);
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    render_pass_encoder0021.end();
    buffer009.destroy()
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_bundle_encoder400.insertDebugMarker("marker");
    
    query000.destroy()
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device20.pushErrorScope("internal");
    buffer006.destroy()
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    
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
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder0020.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer0010, 0, array4, 0, array4.length);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const array12 = new Float32Array([-0.25, -1.0, 0.0, 0.0, -0.5, 0.25, -0.5, 0.5, -0.5, 1.0, 0.25, 1.0, 0.75, -0.75, 0.0, -0.75, 1.0, -0.25, -0.75, 1.0, 0.5, -1.0, 0.5, 0.75, 0.75, 0.0, -0.75, 1.0, 0.75, -1.0, -0.5, -0.25, 0.0, 0.0, -0.25, 0.75, 0.5, -0.75, 0.5, -0.25, 0.0, 0.0, -1.0, 1.0, 1.0, 0.25, -0.75, -0.5, -0.5, 0.5, -0.5, 0.75, 0.25, -0.5, 0.5, 1.0, 1.0, -0.5, 1.0, -1.0, 0.75, 0.25, -0.5, 0.5, 1.0, -0.75, -1.0, -1.0, 1.0, 0.0, 0.75, 0.25, -0.5, 0.5, 0.0, -0.25, 1.0, 1.0, 1.0, -0.5, -0.25, 1.0, 0.0, -0.5, 1.0, 0.0, -0.5, 0.5, 0.5, 1.0, 0.0, -0.25, -1.0, 0.25, -1.0, -1.0, 0.0, -1.0, -1.0, 0.25, ]);
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.popDebugGroup();
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    buffer000.destroy()
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout004]
    });
    render_bundle_encoder001.popDebugGroup();
    query004.destroy()
    
    
    
    device00.queue.writeBuffer(buffer0011, 0, array3, 0, array3.length);
    render_pass_encoder0020.draw(3);
    device00.queue.writeBuffer(buffer0011, 0, array12, 0, array12.length);
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
    buffer005.destroy()
    
    device00.queue.writeBuffer(buffer0011, 0, array4, 0, array4.length);
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer0010,
        0
    )
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    buffer0011.destroy()
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    query003.destroy()
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    query000.destroy()
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const bind_group_layout005 = device00.createBindGroupLayout({ 
        label: "bind_group_layout005",
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder401.insertDebugMarker("mymarker");
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer0010, 0, array5, 0, array5.length);
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    buffer0010.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32uint",
        dimension: "2d"
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    device40.queue.writeTexture({ texture: texture400 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    render_bundle_encoder402.popDebugGroup();
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query001.destroy()
    device00.pushErrorScope("internal");
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder400.popDebugGroup();
    device00.queue.writeBuffer(buffer006, 0, array10, 0, array10.length);
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
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout003]
    });
    command_encoder400.copyBufferToTexture(
        {
            buffer: buffer400
        },
        {
            texture: texture402
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder000.setVertexBuffer(0, buffer000);
    device40.queue.writeTexture({ texture: texture402 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    
    command_encoder002.resolveQuerySet(
        query004,
        0,
        32,
        buffer001,
        0
    )
    
    render_bundle_encoder402.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device40.queue.writeTexture({ texture: texture402 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture000 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.drawIndirect(buffer009, 0);
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    texture004.destroy();
    
    device40.queue.writeTexture({ texture: texture402 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder401.copyBufferToTexture(
        {
            buffer: buffer401
        },
        {
            texture: texture402
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
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
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout002]
    });
    texture401.destroy();
    render_pass_encoder0020.insertDebugMarker("marker");
    texture006.destroy();
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    device40.queue.writeTexture({ texture: texture402 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    
    
    render_pass_encoder0020.end();
    render_bundle_encoder402.insertDebugMarker("marker");
    buffer0012.destroy()
    device40.queue.writeTexture({ texture: texture402 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query002.destroy()
    
    const bind_group_layout006 = device00.createBindGroupLayout({ 
        label: "bind_group_layout006",
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
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    
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
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout003]
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    device40.queue.writeTexture({ texture: texture402 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder002.pushDebugGroup("mygroupmarker")
    device00.queue.writeTexture({ texture: texture005 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder400.copyBufferToTexture(
        {
            buffer: buffer400
        },
        {
            texture: texture402
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder002.copyBufferToBuffer(
        buffer009,
        0,
        buffer001,
        0,
        400
    );
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    command_encoder401.copyBufferToTexture(
        {
            buffer: buffer400
        },
        {
            texture: texture402
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    command_encoder401.insertDebugMarker("mymarker");
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout002]
    });
    const render_pass_encoder0022 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0022",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0050,
            },
        ],
        occlusionQuerySet: query001
    });
    device20.pushErrorScope("internal");
    const command_buffer400 = command_encoder400.finish();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    device00.queue.writeBuffer(buffer0011, 0, array12, 0, array12.length);
    render_pass_encoder0022.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device40.queue.writeTexture({ texture: texture402 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer400.destroy()
    device00.pushErrorScope("out-of-memory");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query003
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    command_encoder401.pushDebugGroup("mygroupmarker")
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout004]
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder0030.pushDebugGroup("group_marker");
    
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout004]
    });
    render_pass_encoder0030.setPipeline(render_pipeline003);
    render_bundle_encoder002.setPipeline(render_pipeline006);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pass_encoder0023 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0023",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query004
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout006]
    });
    device40.queue.writeTexture({ texture: texture402 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0022.setPipeline(render_pipeline005);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    
    buffer402.destroy()
    texture005.destroy();
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    render_pass_encoder0023.setPipeline(render_pipeline006);
    const array13 = new Float32Array([0.0, 0.25, 1.0, 0.0, -1.0, 0.5, 0.0, -1.0, -0.25, 0.0, 0.25, 0.75, -0.5, 0.0, -1.0, 0.5, 0.0, -0.25, 1.0, -1.0, -1.0, -0.75, -0.25, -0.75, -0.5, -0.25, -0.75, 1.0, 1.0, 0.5, 0.0, 0.75, 1.0, 1.0, -0.75, 0.75, 0.5, 1.0, -0.5, 0.25, -0.25, -0.75, 0.5, 1.0, -0.75, -0.5, 0.0, -1.0, 0.25, -0.25, 0.5, -0.75, 0.5, 1.0, -0.5, 0.75, -0.25, 0.0, -0.75, -0.75, -0.5, -1.0, 0.0, 0.75, -0.25, -1.0, -1.0, -0.25, 0.5, -0.5, 0.5, -0.5, 0.25, 0.0, -0.25, -1.0, -1.0, -0.5, 0.25, -1.0, -0.5, 0.0, 0.5, -0.75, 0.75, -1.0, -0.5, -0.75, -0.25, -0.25, -0.5, 0.75, 1.0, 0.25, -0.25, 1.0, -0.75, 0.5, 0.5, 0.25, ]);
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
    device40.queue.writeTexture({ texture: texture402 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture402 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0031.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline006.getBindGroupLayout(0),
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

    render_pass_encoder0023.setBindGroup(0, bind_group003);
    const sampler004 = device00.createSampler( { label: "sampler004" } );
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
    command_encoder401.resolveQuerySet(
        query401,
        0,
        32,
        buffer403,
        0
    )
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
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
    
    const bind_group_layout007 = device00.createBindGroupLayout({ 
        label: "bind_group_layout007",
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
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0023.setStencilReference(1);
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    
    render_bundle_encoder000.popDebugGroup();
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
        layout: render_pipeline006.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group004);
    device40.queue.submit([command_buffer400, ]);
    command_encoder401.copyBufferToTexture(
        {
            buffer: buffer401
        },
        {
            texture: texture400
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    render_pass_encoder0023.setVertexBuffer(0, buffer004);
    render_pass_encoder0031.insertDebugMarker("marker");
    query001.destroy()
    render_pass_encoder0023.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    device40.queue.writeTexture({ texture: texture402 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    
    device40.queue.writeTexture({ texture: texture402 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture402 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer0014, 0, array1, 0, array1.length);
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0031.setStencilReference(1);
    query000.destroy()
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder401.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    query002.destroy()
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    render_pass_encoder0023.setIndexBuffer(buffer0012, "uint16");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder401.copyBufferToTexture(
        {
            buffer: buffer401
        },
        {
            texture: texture402
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    render_pass_encoder0022.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_pass_encoder0022.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4020,
            },
        ],
        occlusionQuerySet: query401
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_pass_encoder0023.setIndexBuffer(buffer0012, "uint16");
    command_encoder002.clearBuffer(buffer008);
    render_pass_encoder0023.insertDebugMarker("marker");
    render_pass_encoder0023.drawIndexed(3);
    render_pass_encoder0030.insertDebugMarker("marker");
    query002.destroy()
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const render_pass_encoder4011 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    device00.queue.writeTexture({ texture: texture006 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0023.pushDebugGroup("group_marker");
    render_pass_encoder0022.pushDebugGroup("group_marker");
    const render_pass_encoder0032 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0032",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query000
    });
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout002]
    });
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
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
    
    render_pass_encoder0023.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder4011.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout001]
    });
    device40.queue.writeTexture({ texture: texture402 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4010.insertDebugMarker("marker");
    render_bundle_encoder402.pushDebugGroup("group_marker");
    render_pass_encoder0032.setPipeline(render_pipeline0011);
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer403, 0, array3, 0, array3.length);
    render_pass_encoder0031.setPipeline(render_pipeline0013);
    
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    buffer401.destroy()
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
    render_pass_encoder0023.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0023.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder0023.drawIndirect(buffer0012, 0);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_pass_encoder0023.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    device00.queue.writeBuffer(buffer0013, 0, array1, 0, array1.length);
    render_pass_encoder0030.setStencilReference(1);
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout001]
    });
    const texture_view0042 = texture004.createView({ label: "texture_view0042" });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0021.popDebugGroup();
    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline0011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0018,
                },
            },
        ],
    });

    render_pass_encoder0032.setBindGroup(0, bind_group005);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0023.popDebugGroup();
    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline0013.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0020,
                },
            },
        ],
    });

    render_pass_encoder0031.setBindGroup(0, bind_group006);
    render_pass_encoder0031.setVertexBuffer(0, buffer0016);
    render_pass_encoder0023.endOcclusionQuery()
    render_pass_encoder0031.setIndexBuffer(buffer006, "uint16");
    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0022,
                },
            },
        ],
    });

    render_pass_encoder0022.setBindGroup(0, bind_group007);
    render_pass_encoder0023.drawIndirect(buffer0017, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0031.drawIndirect(buffer000, 0);
    render_pass_encoder0032.setVertexBuffer(0, buffer0018);
    render_pass_encoder0031.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0032.drawIndirect(buffer000, 0);
    render_pass_encoder0022.setVertexBuffer(0, buffer0020);
    render_pass_encoder0022.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0022.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0022.drawIndexed(3);
    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0024,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group008);
    render_pass_encoder0023.drawIndexedIndirect(buffer000, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0020.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0032.end();
    render_pass_encoder0023.end();
    render_pass_encoder0022.end();
    render_pass_encoder0030.setVertexBuffer(0, buffer0023);
    render_pass_encoder0023.drawIndirect(buffer000, 0);
    render_pass_encoder0031.end();
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder0031.draw(3);
    render_pass_encoder0032.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0030.draw(3);
    render_pass_encoder0022.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0030.end();
    render_pass_encoder0023.drawIndirect(buffer006, 0);
    render_pass_encoder0020.drawIndexed(3);
    const command_buffer003 = command_encoder003.finish();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0023.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0032.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0022.setIndexBuffer(buffer0012, "uint16");
    device00.queue.submit([command_buffer003, ]);
    command_encoder002.popDebugGroup()
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0023.drawIndirect(buffer005, 0);
    render_pass_encoder4010.popDebugGroup();
    command_encoder401.popDebugGroup()
    render_pass_encoder0031.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0021.setIndexBuffer(buffer004, "uint16");
    device20.queue.submit([]);
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0030.end();
    render_pass_encoder0021.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0032.drawIndirect(buffer0020, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0022.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder0032.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0023.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder0021.end();
    render_pass_encoder0031.end();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder0022.drawIndirect(buffer000, 0);
    device00.queue.submit([]);
    render_pass_encoder0031.draw(3);
}