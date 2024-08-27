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
    
    
    
    
    
    const array0 = new Float32Array([0.25, 1.0, -0.75, 0.75, -0.5, -0.25, -0.75, 0.0, 1.0, 0.0, -0.75, 1.0, 0.75, 0.0, 0.75, 0.5, 0.25, -0.75, -0.5, 0.0, 0.0, 1.0, 1.0, 1.0, -1.0, 1.0, 1.0, 0.5, 1.0, -1.0, 0.5, 0.0, -0.25, 0.5, 0.0, 0.5, 0.75, -0.25, -1.0, -0.25, 0.25, -0.25, 0.75, -0.5, -0.5, 0.0, 0.25, 0.25, 1.0, 0.75, 0.0, -0.25, 0.25, 0.75, 1.0, -0.5, 0.5, 0.5, 0.75, -1.0, -0.75, 1.0, 0.25, -1.0, 0.25, -0.75, 0.75, -0.5, -0.75, 0.25, -0.5, 0.75, 1.0, 0.75, 0.0, 0.25, -1.0, -0.25, 0.25, -0.5, -0.25, 0.75, -1.0, -0.75, 0.25, 1.0, -0.25, -0.25, -0.25, 1.0, 0.5, -0.75, 0.5, 1.0, -0.25, -1.0, 0.0, -0.5, -0.5, -0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array1 = new Float32Array([-0.5, 0.25, -0.75, -0.25, 0.5, 0.75, -1.0, 0.5, -0.25, -1.0, -1.0, 0.75, 0.25, 0.75, 0.5, 0.75, 0.0, -1.0, 0.75, 0.25, 0.25, -0.75, 0.25, -0.75, -0.5, 0.5, 0.75, 0.0, -0.5, -0.5, 0.0, -0.25, 0.25, 0.25, 0.5, -0.75, -0.5, 0.25, 0.5, 1.0, -0.5, -0.25, -0.25, 0.5, 1.0, 0.25, -0.75, 0.75, 0.25, 0.75, -0.5, 0.5, -0.5, -0.5, 0.5, 0.25, -0.75, -0.75, 0.5, -0.5, 1.0, -0.5, 0.25, -0.5, 0.75, -0.75, 0.5, 0.5, -0.5, 0.75, 0.0, -0.25, -0.25, 0.5, -0.5, 1.0, 0.0, -0.75, 0.5, 0.5, -1.0, -0.75, -1.0, 0.25, -0.5, 0.25, 0.25, 0.25, 0.75, 0.0, 0.5, -0.75, -0.5, 0.5, -0.75, 1.0, 0.5, -0.5, -1.0, 0.0, ]);
    
    const array2 = new Float32Array([-0.75, 0.25, 0.5, 0.25, 1.0, -0.25, 0.5, -0.75, 0.75, 1.0, 0.25, 0.5, -0.5, -0.75, -0.25, -0.25, 0.5, -0.75, 0.5, 0.5, 0.0, 0.75, 0.25, -0.5, 0.75, -0.5, -1.0, -0.5, -0.75, -0.5, 0.75, -0.75, 0.5, 0.5, 0.25, 0.75, -0.75, 0.75, 0.25, -0.5, 0.5, 1.0, -0.5, 1.0, -0.25, 0.75, 0.25, 0.0, 0.25, 0.25, 0.5, 0.5, -0.25, -0.75, -1.0, 0.25, 1.0, 0.0, 0.25, -0.25, 1.0, 0.75, -0.75, 0.0, -0.25, -1.0, 0.5, -1.0, 0.0, -0.5, 0.0, 0.25, 1.0, -0.5, -0.25, -0.75, 0.0, 1.0, 0.75, 0.75, 0.75, 0.5, 0.75, 0.75, 1.0, 0.0, 0.75, 0.75, 1.0, -1.0, 0.0, 0.25, 0.25, -0.5, -1.0, -0.25, -0.25, 0.0, 1.0, -0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    texture000.destroy();
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.queue.submit([]);
    
    command_encoder001.insertDebugMarker("mymarker");
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query000
    });
    buffer000.destroy()
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_pass_encoder0010.pushDebugGroup("group_marker");
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0010.popDebugGroup();
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
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    device00.pushErrorScope("validation");
    
    
    
    render_pass_encoder0010.beginOcclusionQuery(0)
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const array3 = new Float32Array([0.0, -0.25, 1.0, -1.0, 0.25, 0.0, 0.75, -0.75, 1.0, 0.5, 0.75, -0.25, -1.0, -0.75, 1.0, 0.5, -0.75, -0.5, -0.75, -1.0, 1.0, -0.25, 1.0, 0.0, 0.75, 0.5, -0.5, 0.75, 0.0, -1.0, -0.5, 0.5, -0.75, 1.0, -1.0, -1.0, -0.25, -0.75, 1.0, -1.0, 0.25, 0.75, 0.25, 0.25, 0.25, 0.0, -0.5, 0.0, 1.0, 0.75, 1.0, -0.5, 0.0, -0.5, -0.25, 0.0, -0.75, -0.75, -0.25, -1.0, -0.25, -1.0, 0.75, 0.5, 0.0, -0.5, 0.5, 0.75, 0.0, -0.5, 0.75, -0.25, 1.0, -1.0, 0.0, -0.25, -0.75, 0.75, 1.0, 0.0, 0.75, -1.0, 0.5, 0.25, 0.0, 0.0, 0.0, 0.75, 1.0, 0.0, 0.5, 1.0, 0.5, -0.75, 0.75, 1.0, 0.75, 1.0, 0.0, -0.5, ]);
    command_encoder002.insertDebugMarker("mymarker");
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    command_encoder002.pushDebugGroup("mygroupmarker")
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    compute_pass_encoder0000.popDebugGroup()
    command_encoder002.resolveQuerySet(
        query002,
        0,
        32,
        buffer000,
        0
    )
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query001.destroy()
    render_pass_encoder0010.endOcclusionQuery()
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
        occlusionQuerySet: query002
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder0012 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0012",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query000
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array4 = new Float32Array([-0.25, -0.25, 0.75, -0.5, -0.75, 0.75, 0.75, -0.75, 0.0, -0.75, -0.25, -0.5, -0.25, -0.5, 0.5, 0.25, -1.0, 1.0, -0.75, -0.75, 0.75, -0.75, 0.25, 0.0, 0.5, 0.25, 1.0, 0.75, 1.0, -0.5, 0.25, 1.0, 0.75, -0.75, -0.5, 0.75, 0.0, -0.25, -1.0, 0.5, 1.0, -0.25, 0.25, 1.0, -0.75, -0.25, -1.0, 0.75, 0.5, 0.5, 0.5, -0.75, -0.75, -1.0, -0.75, 1.0, 0.75, -0.5, 0.25, 0.0, 0.0, 0.5, -0.25, 0.25, 0.75, 0.0, 0.75, 1.0, -1.0, 1.0, -0.75, 1.0, 0.25, 0.0, 0.5, 0.5, -0.25, 1.0, 1.0, -1.0, 1.0, -0.25, -1.0, 0.5, 0.0, -1.0, 1.0, 1.0, -1.0, -0.25, 0.25, -1.0, 0.0, -1.0, 0.0, 0.25, -0.5, 0.0, -0.5, 1.0, ]);
    render_pass_encoder0011.setPipeline(render_pipeline000);
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0010.setPipeline(render_pipeline000);
    
    const array5 = new Float32Array([0.5, -0.25, -0.25, -0.5, 1.0, 0.25, 1.0, 0.75, 0.75, -1.0, 1.0, -0.75, -0.25, -1.0, -0.5, 0.5, -1.0, -0.25, 0.5, -1.0, 1.0, -0.5, 0.5, 0.5, 0.0, -0.5, 0.25, -0.75, -1.0, -0.75, 1.0, 0.5, -0.5, 1.0, -1.0, -0.5, -0.75, 0.75, -1.0, -0.5, -0.5, 1.0, -1.0, 0.75, -1.0, 0.0, 0.25, 0.0, 0.5, -0.5, -1.0, -0.5, 0.0, 1.0, 0.25, 0.5, 0.5, 0.5, 0.75, -0.75, -0.75, 0.0, 0.75, -0.75, -1.0, 0.75, 1.0, -0.25, 1.0, -0.5, -0.25, 1.0, -1.0, 0.75, 0.5, 0.0, 0.75, 0.0, -0.5, 1.0, 1.0, 0.5, 0.0, 1.0, 1.0, -0.75, 0.5, -1.0, 0.75, -0.5, -0.5, 0.5, 0.25, -0.5, -0.25, 0.0, 0.0, 0.75, -0.25, 0.5, ]);
    render_pass_encoder0020.setPipeline(render_pipeline000);
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0012.executeBundles([])
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query002.destroy()
    
    query001.destroy()
    
    render_pass_encoder0011.beginOcclusionQuery(1)
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer002 = device00.createBuffer({
        label: "buffer002",
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
                    buffer: buffer001,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer002,
                },
            },
        ],
    });

    render_pass_encoder0010.setBindGroup(0, bind_group000);
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0012.beginOcclusionQuery(1)
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const array6 = new Float32Array([-1.0, -0.75, 0.25, -1.0, 0.75, 0.25, -0.5, 0.0, 0.5, 0.5, 0.5, 0.25, -0.75, -1.0, 0.25, -0.25, -0.25, -0.75, 1.0, -0.25, 1.0, -1.0, -0.5, 0.0, 0.0, -0.75, 0.0, -1.0, 0.0, -0.5, -0.5, 0.5, -1.0, 0.0, -0.25, 0.75, 0.25, -1.0, 1.0, 0.75, -0.5, 0.75, -1.0, -0.75, -0.25, -0.75, 0.75, 0.25, 0.5, -0.75, 0.75, -0.25, -0.25, 1.0, -0.5, 0.0, -0.25, 0.5, -0.5, 0.0, 0.5, -1.0, -1.0, 0.5, 0.5, 0.5, 0.75, 0.25, 0.75, -0.5, -1.0, 0.75, -1.0, 0.5, -0.75, 1.0, -0.5, -0.25, 1.0, 0.0, -0.25, 0.5, 0.25, -1.0, -1.0, 1.0, -0.75, 0.0, -0.75, -1.0, -0.75, -0.25, 1.0, 0.5, -0.75, -0.25, -0.25, -0.25, 0.0, 0.0, ]);
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder0011.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    command_encoder003.pushDebugGroup("mygroupmarker")
    render_pass_encoder0020.setStencilReference(1);
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
        occlusionQuerySet: query002
    });
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0010.setStencilReference(1);
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
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

    render_pass_encoder0020.setBindGroup(0, bind_group001);
    const array7 = new Float32Array([-1.0, -0.25, 0.5, -0.25, 0.75, 0.5, 0.5, -0.5, -0.5, 0.0, -0.25, -0.5, 0.75, 0.25, 0.0, 0.0, 0.75, -0.25, 0.25, -1.0, -0.75, 0.25, -1.0, 0.0, -1.0, 0.75, -0.25, -0.5, 1.0, -0.25, 0.25, -0.25, -0.5, -0.25, -0.25, -0.75, -0.5, -1.0, 1.0, 1.0, -0.5, 0.75, 1.0, 0.25, 0.25, 0.0, 0.5, -1.0, 0.25, 0.75, -0.25, -1.0, 1.0, 0.25, -0.25, 1.0, -0.75, -0.25, -0.25, 0.25, -0.25, 0.75, 1.0, -0.5, -0.75, 1.0, -0.5, -1.0, -1.0, -0.75, 1.0, -0.25, 0.25, 0.75, 0.0, -0.5, 0.25, 0.25, -0.5, 1.0, -0.5, -1.0, 0.5, 0.75, 0.25, 0.25, -1.0, -1.0, 0.0, -0.75, 0.5, -0.75, 0.5, -0.5, 0.0, -0.25, -0.75, -0.5, 0.75, -1.0, ]);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    query003.destroy()
    
    render_pass_encoder0011.setStencilReference(1);
    query001.destroy()
    render_bundle_encoder000.setPipeline(render_pipeline000);
    
    device00.pushErrorScope("validation");
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    render_pass_encoder0010.pushDebugGroup("group_marker");
    
    const array8 = new Float32Array([0.5, 1.0, 0.25, -0.75, -0.75, -1.0, 1.0, -0.5, 0.75, -0.25, -1.0, -0.5, 1.0, -0.5, 0.75, -0.5, 0.25, -0.75, -0.75, -0.5, -0.5, -0.5, 0.25, -0.5, -0.75, -0.5, 0.5, 0.0, -0.5, 0.5, -0.75, 0.75, -1.0, 0.25, 0.75, 0.0, -0.25, -0.25, 0.25, 0.5, -0.75, -1.0, 0.5, 0.0, 0.75, 0.5, -0.25, -0.75, 0.0, 0.5, 0.25, 0.5, 0.0, -0.25, -0.75, 0.25, -0.5, 1.0, -0.5, -0.75, 1.0, 0.75, 0.0, 0.75, -0.5, -0.5, 0.75, -1.0, -0.75, 0.75, 0.25, -0.5, -0.25, 0.75, 0.5, 0.25, 0.25, -0.25, 0.5, -0.5, -0.75, -1.0, -1.0, -1.0, 0.5, 0.5, 0.0, -0.5, -1.0, 0.0, -0.5, -0.75, 1.0, -0.5, -1.0, 0.5, -0.5, 0.5, 0.5, 0.75, ]);
    render_pass_encoder0012.executeBundles([])
    render_pass_encoder0030.insertDebugMarker("marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
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
    render_pass_encoder0012.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device00.queue.writeBuffer(buffer002, 0, array8, 0, array8.length);
    
    
    command_encoder002.resolveQuerySet(
        query003,
        0,
        32,
        buffer000,
        0
    )
    
    render_bundle_encoder000.insertDebugMarker("marker");
    buffer004.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder001.setPipeline(render_pipeline000);
    render_pass_encoder0010.insertDebugMarker("marker");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device00.queue.writeBuffer(buffer003, 0, array7, 0, array7.length);
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    query003.destroy()
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
    render_pass_encoder0011.insertDebugMarker("marker");
    render_pass_encoder0012.insertDebugMarker("marker");
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    render_pass_encoder0012.setStencilReference(1);
    query002.destroy()
    
    
    
    render_pass_encoder0011.insertDebugMarker("marker");
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0030.setPipeline(render_pipeline003);
    
    render_pass_encoder0012.setStencilReference(1);
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8sint",
        dimension: "2d"
    });
    
    buffer003.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query001
    });
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0020.setVertexBuffer(0, buffer003);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.pushErrorScope("out-of-memory");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
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
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0000.setPipeline(render_pipeline000);
    render_pass_encoder0010.setStencilReference(1);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0031.insertDebugMarker("marker");
    render_pass_encoder0010.setStencilReference(1);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device20.destroy();
    {
        await buffer002.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer002.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer002.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder0020.setIndexBuffer(buffer002, "uint16");
    
    render_pass_encoder0012.setPipeline(render_pipeline000);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder0031.setStencilReference(1);
    device00.queue.writeTexture({ texture: texture002 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_pass_encoder0011.insertDebugMarker("marker");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
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
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder004.clearBuffer(buffer003);
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device10.pushErrorScope("out-of-memory");
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query004
    });
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0012.endOcclusionQuery()
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    command_encoder002.resolveQuerySet(
        query002,
        0,
        32,
        buffer003,
        0
    )
    device30.pushErrorScope("out-of-memory");
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    device00.pushErrorScope("out-of-memory");
    device00.queue.writeTexture({ texture: texture002 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query003.destroy()
    render_pass_encoder0010.beginOcclusionQuery(1)
    
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer006,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer007,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
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
    
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0012.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.setStencilReference(1);
    
    render_pass_encoder0040.setPipeline(render_pipeline003);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder0031.setPipeline(render_pipeline004);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0041.executeBundles([])
    render_pass_encoder0041.setPipeline(render_pipeline003);
    render_pass_encoder0012.insertDebugMarker("marker");
    
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
    command_encoder003.resolveQuerySet(
        query004,
        0,
        32,
        buffer000,
        0
    )
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.setStencilReference(1);
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
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0011.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query200.destroy()
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer008,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer009,
                },
            },
        ],
    });

    render_pass_encoder0041.setBindGroup(0, bind_group003);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    
    render_pass_encoder0031.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    {
        await buffer101.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer101.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer101.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder003.copyBufferToTexture(
        {
            buffer: buffer005
        },
        {
            texture: texture002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0030.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    query003.destroy()
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pass_encoder0001 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0001" });
    
    render_pass_encoder0011.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0041.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    command_encoder005.copyBufferToBuffer(
        buffer000,
        0,
        buffer007,
        0,
        400
    );
    render_pass_encoder0001.setPipeline(render_pipeline003);
    
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder100.clearBuffer(buffer101);
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0020.setStencilReference(1);
    
    render_pass_encoder0031.setStencilReference(1);
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    buffer001.destroy()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0030.setStencilReference(1);
    render_bundle_encoder002.setPipeline(render_pipeline006);
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
        occlusionQuerySet: query002
    });
    buffer007.destroy()
    render_pass_encoder0001.setStencilReference(1);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    command_encoder005.resolveQuerySet(
        query004,
        0,
        32,
        buffer005,
        0
    )
    device10.queue.writeTexture({ texture: texture100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder002.popDebugGroup();
    render_pass_encoder0011.setStencilReference(1);
    render_bundle_encoder100.insertDebugMarker("marker");
    query001.destroy()
    render_pass_encoder0021.setPipeline(render_pipeline005);
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0011.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device10.queue.writeTexture({ texture: texture100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer008,
        0
    )
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    
    
    render_bundle_encoder001.popDebugGroup();
    
    render_pass_encoder0001.setStencilReference(1);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0021.setStencilReference(1);
    render_pass_encoder0031.pushDebugGroup("group_marker");
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
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
    render_pass_encoder0041.insertDebugMarker("marker");
    render_pass_encoder0040.beginOcclusionQuery(0)
    render_pass_encoder0050.setPipeline(render_pipeline005);
    render_pass_encoder0011.setStencilReference(1);
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array9 = new Float32Array([0.75, -0.25, -0.25, 0.25, 0.5, -1.0, -1.0, 0.5, 1.0, 0.25, 0.5, 0.0, -0.75, 0.25, 1.0, 1.0, -0.5, 0.75, 0.5, 0.5, 0.0, -1.0, 0.5, -0.5, 0.5, -0.25, -0.5, 1.0, 0.75, -1.0, 0.5, -1.0, -0.5, 0.5, 1.0, -0.25, 1.0, -0.5, -1.0, 0.25, 0.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, 0.25, -0.75, -0.25, -0.75, 0.25, 1.0, 1.0, 0.25, 1.0, 0.5, -0.25, 0.0, -0.5, 0.75, 1.0, 0.5, 0.25, 0.75, -0.25, -0.25, -1.0, -0.5, 0.75, -0.75, 0.25, -0.75, 0.75, -0.25, -0.75, 1.0, 0.25, 0.0, 0.5, -1.0, -0.25, -0.5, -1.0, -0.5, 1.0, 0.25, -0.25, -1.0, 0.75, 0.5, 0.5, 0.5, 0.25, 0.75, 0.5, 0.25, -0.25, 0.5, ]);
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer006,
        0
    )
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_pass_encoder0012.beginOcclusionQuery(3)
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0050.pushDebugGroup("group_marker");
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
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
                    buffer: buffer0010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0011,
                },
            },
        ],
    });

    render_pass_encoder0012.setBindGroup(0, bind_group004);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.submit([]);
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
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
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline005.getBindGroupLayout(0),
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

    render_pass_encoder0050.setBindGroup(0, bind_group005);
    render_pass_encoder0020.setStencilReference(1);
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    render_bundle_encoder100.popDebugGroup();
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0015,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group006);
    render_pass_encoder0041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    
    render_pass_encoder0041.setVertexBuffer(0, buffer0013);
    command_encoder006.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    command_encoder006.copyBufferToBuffer(
        buffer0014,
        0,
        buffer006,
        0,
        400
    );
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query005
    });
    buffer0013.destroy()
    render_pass_encoder0040.setStencilReference(1);
    
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder0041.drawIndirect(buffer0014, 0);
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device10.queue.writeBuffer(buffer101, 0, array7, 0, array7.length);
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0010.popDebugGroup();
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0041.popDebugGroup();
    command_encoder100.popDebugGroup()
    render_pass_encoder0041.insertDebugMarker("marker");
    render_pass_encoder0010.setVertexBuffer(0, buffer000);
    device00.queue.writeBuffer(buffer002, 0, array8, 0, array8.length);
    command_encoder001.copyBufferToTexture(
        {
            buffer: buffer002
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
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_pass_encoder0030.setVertexBuffer(0, buffer0014);
    render_pass_encoder0030.draw(3);
    command_encoder002.copyBufferToBuffer(
        buffer006,
        0,
        buffer0013,
        0,
        400
    );
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    render_pass_encoder0010.drawIndirect(buffer0015, 0);
    
    render_pass_encoder0060.beginOcclusionQuery(0)
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    render_bundle_encoder101.popDebugGroup();
    
    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0017,
                },
            },
        ],
    });

    render_pass_encoder0001.setBindGroup(0, bind_group007);
    render_pass_encoder0030.insertDebugMarker("marker");
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0020.setStencilReference(1);
    
    
    render_pass_encoder0031.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device00.queue.writeBuffer(buffer0011, 0, array8, 0, array8.length);
    
    
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    render_pass_encoder0021.setStencilReference(1);
    
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer008.destroy()
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder0060.setPipeline(render_pipeline002);
    texture301.destroy();
    command_encoder100.pushDebugGroup("mygroupmarker")
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer101, 0, array9, 0, array9.length);
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    render_pass_encoder0041.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_pass_encoder0060.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    command_encoder001.resolveQuerySet(
        query005,
        0,
        32,
        buffer002,
        0
    )
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_pass_encoder0001.beginOcclusionQuery(4)
    
    render_pass_encoder0010.setIndexBuffer(buffer0015, "uint16");
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
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline004.getBindGroupLayout(0),
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

    render_pass_encoder0031.setBindGroup(0, bind_group008);
    render_pass_encoder0040.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer0014, 0, array7, 0, array7.length);
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0031.setVertexBuffer(0, buffer0013);
    device10.queue.writeBuffer(buffer101, 0, array8, 0, array8.length);
    render_pass_encoder0021.insertDebugMarker("marker");
    buffer005.destroy()
    
    
    const array10 = new Float32Array([0.75, 0.75, -0.25, -0.5, 0.75, 0.75, -1.0, -0.75, 0.75, -1.0, 0.75, 0.5, -1.0, -0.75, 0.75, -0.25, 0.75, 1.0, 0.5, 0.5, 0.75, 0.0, -1.0, -0.5, 0.0, 0.0, -0.75, -1.0, 0.0, -0.25, -0.5, 0.5, -1.0, 0.75, 1.0, 1.0, -0.5, 0.0, 0.75, -0.25, 0.25, -0.25, 1.0, 0.75, 0.75, 0.25, -0.25, 0.5, 1.0, 0.0, 0.0, -1.0, -0.75, -0.25, -0.75, 0.25, -0.75, -0.25, 0.0, 0.5, 0.75, -1.0, 0.25, -0.5, -0.75, 0.75, 1.0, -0.75, 0.0, -0.25, 0.75, 0.5, -0.75, -0.75, -0.25, 1.0, 0.25, -0.75, -0.5, -1.0, -0.25, 0.25, -0.75, -0.5, 0.0, 0.25, -0.25, 0.75, 0.0, 0.75, -0.5, 0.5, 0.0, 0.25, -0.5, 0.25, -0.5, 0.25, -0.25, -0.75, ]);
    device00.queue.writeBuffer(buffer0015, 0, array0, 0, array0.length);
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const render_pass_encoder0061 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query002
    });
    device00.queue.writeBuffer(buffer0018, 0, array2, 0, array2.length);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_pass_encoder0021.setStencilReference(1);
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    texture001.destroy();
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0031.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_bundle_encoder001.popDebugGroup();
    texture002.destroy();
    render_pass_encoder0040.setStencilReference(1);
    buffer300.destroy()
    render_pass_encoder0020.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0061.pushDebugGroup("group_marker");
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder0031.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0031.drawIndirect(buffer0015, 0);
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    render_pass_encoder0061.setStencilReference(1);
    buffer0014.destroy()
    
    
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_pass_encoder0042 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0042",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query002
    });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture300.destroy();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer0015.destroy()
    
    render_pass_encoder0050.setVertexBuffer(0, buffer003);
    render_pass_encoder0012.endOcclusionQuery()
    render_pass_encoder0042.setPipeline(render_pipeline000);
    render_pass_encoder0041.end();
    render_pass_encoder0040.endOcclusionQuery()
    render_pass_encoder0061.setPipeline(render_pipeline003);
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
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0061.setBindGroup(0, bind_group009);
    render_pass_encoder0030.popDebugGroup();
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
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline005.getBindGroupLayout(0),
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

    render_pass_encoder0021.setBindGroup(0, bind_group0010);
    render_pass_encoder0030.end();
    render_pass_encoder0060.endOcclusionQuery()
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder0012.setVertexBuffer(0, buffer0011);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder0001.setVertexBuffer(0, buffer001);
    render_pass_encoder0031.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer007, 0);
    render_pass_encoder0012.drawIndirect(buffer0012, 0);
    render_pass_encoder0012.end();
    render_pass_encoder0050.draw(3);
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
    
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group0011);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0021.setVertexBuffer(0, buffer0020);
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
    
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0060.setBindGroup(0, bind_group0012);
    render_pass_encoder0021.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0001.end();
    render_pass_encoder0020.end();
    render_pass_encoder0021.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0031.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0012.drawIndirect(buffer0019, 0);
    render_pass_encoder0061.setVertexBuffer(0, buffer0013);
    const command_buffer006 = command_encoder006.finish();
    device30.queue.submit([]);
    render_pass_encoder0061.setIndexBuffer(buffer009, "uint16");
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
    
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0042.setBindGroup(0, bind_group0013);
    render_pass_encoder0040.setVertexBuffer(0, buffer0012);
    render_pass_encoder0060.setVertexBuffer(0, buffer0017);
    render_pass_encoder0060.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0021.draw(3);
    render_pass_encoder0060.draw(3);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0042.setVertexBuffer(0, buffer0013);
    render_pass_encoder0060.end();
    render_pass_encoder0031.end();
    render_pass_encoder0042.drawIndirect(buffer0022, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0061.end();
    render_pass_encoder0061.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0040.drawIndirect(buffer000, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0031.drawIndirect(buffer0028, 0);
    render_pass_encoder0040.end();
    command_encoder003.popDebugGroup()
    render_pass_encoder0030.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0011.popDebugGroup();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0021.end();
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
    
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0000.setBindGroup(0, bind_group0014);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0000.setVertexBuffer(0, buffer0012);
    render_pass_encoder0000.draw(3);
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0021.drawIndirect(buffer0022, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer008, 0);
    const command_buffer005 = command_encoder005.finish();
    render_pass_encoder0050.end();
    device30.queue.submit([]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0029, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer002, 0);
    device00.queue.submit([command_buffer006, ]);
    command_encoder100.popDebugGroup()
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
    
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
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

    render_pass_encoder0011.setBindGroup(0, bind_group0015);
    render_pass_encoder0042.drawIndirect(buffer0026, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0061.drawIndirect(buffer008, 0);
    render_pass_encoder0061.drawIndirect(buffer0010, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0011.setVertexBuffer(0, buffer0016);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0016, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0010, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0010.drawIndirect(buffer000, 0);
    device30.queue.submit([]);
    render_pass_encoder0061.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0000.drawIndirect(buffer000, 0);
    render_pass_encoder0042.end();
    render_pass_encoder0061.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0050.drawIndirect(buffer0015, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0061.drawIndirect(buffer0023, 0);
    render_pass_encoder0041.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0011.drawIndirect(buffer0012, 0);
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder0060.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0061.drawIndexed(3);
    render_pass_encoder0001.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0000.draw(3);
    render_pass_encoder0041.setIndexBuffer(buffer0014, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0042.drawIndirect(buffer0030, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0000.setIndexBuffer(buffer007, "uint16");
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0042.draw(3);
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder0001.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0026, 0);
    device00.queue.submit([command_buffer004, ]);
    device00.queue.submit([command_buffer004, ]);
    device10.queue.submit([command_buffer100, ]);
    command_encoder000.popDebugGroup()
    render_pass_encoder0011.setIndexBuffer(buffer0013, "uint16");
    device30.queue.submit([]);
    render_pass_encoder0031.end();
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0042.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0030.draw(3);
    render_pass_encoder0000.setIndexBuffer(buffer0026, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0041.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0042.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0027, 0);
    device00.queue.submit([]);
    const command_buffer003 = command_encoder003.finish();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0012.end();
    render_pass_encoder0041.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0019, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0050.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0010.draw(3);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0061.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0022, 0);
    device00.queue.submit([command_buffer006, ]);
    device40.queue.submit([]);
    render_pass_encoder0021.end();
    render_pass_encoder0040.drawIndirect(buffer0010, 0);
    device00.queue.submit([]);
    render_pass_encoder0060.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0040.drawIndirect(buffer000, 0);
    render_pass_encoder0012.drawIndirect(buffer0019, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0012.drawIndirect(buffer0023, 0);
    render_pass_encoder0001.drawIndirect(buffer0028, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0012.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer007, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0030.end();
    device00.queue.submit([]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0012.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0031, 0);
    render_pass_encoder0011.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0010.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0011.end();
    render_pass_encoder0061.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0060.end();
    render_pass_encoder0041.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0001.draw(3);
    render_pass_encoder0050.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0000.drawIndirect(buffer0012, 0);
    render_pass_encoder0061.drawIndirect(buffer006, 0);
    render_pass_encoder0060.setIndexBuffer(buffer006, "uint16");
    device40.queue.submit([]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0030.drawIndirect(buffer0012, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0042.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0031.drawIndirect(buffer0019, 0);
    render_pass_encoder0012.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0061.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0050.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0060.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0031, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0061.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0001.draw(3);
    render_pass_encoder0042.drawIndexed(3);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0000.drawIndirect(buffer0024, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0010, 0);
    render_pass_encoder0020.drawIndirect(buffer0010, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0001.drawIndirect(buffer008, 0);
    render_pass_encoder0060.drawIndirect(buffer006, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0030.end();
    render_pass_encoder0001.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0032, 0);
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    device30.queue.submit([]);
    render_pass_encoder0010.drawIndirect(buffer0010, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0021.drawIndirect(buffer0023, 0);
    render_pass_encoder0041.drawIndirect(buffer0031, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0012.drawIndirect(buffer0033, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0011.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0001.end();
    render_pass_encoder0030.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0030.draw(3);
    render_pass_encoder0001.drawIndirect(buffer0031, 0);
    render_pass_encoder0020.drawIndirect(buffer0016, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0050.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0012.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0060.drawIndexed(3);
    render_pass_encoder0060.drawIndirect(buffer000, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0040.draw(3);
    render_pass_encoder0031.drawIndirect(buffer0025, 0);
    render_pass_encoder0042.end();
    render_pass_encoder0021.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0020.end();
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0041.draw(3);
    device00.queue.submit([]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0010.draw(3);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0031.end();
    render_pass_encoder0050.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0019, "uint16");
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0060.end();
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder0012.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0050.draw(3);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0042.end();
    render_pass_encoder0011.setIndexBuffer(buffer0012, "uint16");
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0021.end();
    render_pass_encoder0041.drawIndirect(buffer0026, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0001.drawIndexed(3);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0012.draw(3);
    render_pass_encoder0050.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0025, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0033, 0);
    device40.queue.submit([]);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0001.end();
    render_pass_encoder0021.drawIndirect(buffer000, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0061.drawIndirect(buffer0019, 0);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0001.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0040.end();
    render_pass_encoder0050.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0061.drawIndirect(buffer0010, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0041.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0028, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0061.drawIndirect(buffer0032, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0017, 0);
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0050.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0042.end();
    render_pass_encoder0012.draw(3);
    render_pass_encoder0031.drawIndirect(buffer007, 0);
    render_pass_encoder0060.drawIndirect(buffer0028, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0010.drawIndirect(buffer0032, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0040.end();
    render_pass_encoder0001.endOcclusionQuery()
    device10.queue.submit([]);
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0042.drawIndexed(3);
    render_pass_encoder0042.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0000.drawIndirect(buffer0029, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0012.drawIndirect(buffer0031, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0001.drawIndirect(buffer0019, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0011.draw(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0012.draw(3);
    render_pass_encoder0012.drawIndirect(buffer0015, 0);
    device00.queue.submit([command_buffer003, ]);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0042.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0041.end();
    render_pass_encoder0061.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0041.end();
    render_pass_encoder0031.drawIndirect(buffer000, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0060.end();
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0017, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer002, 0);
    render_pass_encoder0041.drawIndirect(buffer001, 0);
    render_pass_encoder0001.drawIndirect(buffer0027, 0);
    device30.queue.submit([]);
    render_pass_encoder0021.drawIndirect(buffer0018, 0);
    render_pass_encoder0021.drawIndirect(buffer0017, 0);
    device30.queue.submit([]);
    render_pass_encoder0011.drawIndirect(buffer0015, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0031.end();
    render_pass_encoder0011.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0012.end();
    device00.queue.submit([command_buffer005, command_buffer006, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0030.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer007, "uint16");
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0042.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0042.setIndexBuffer(buffer0030, "uint16");
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0000.end();
    render_pass_encoder0040.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer005, 0);
    device00.queue.submit([command_buffer005, command_buffer006, ]);
    render_pass_encoder0060.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0010.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder0042.drawIndirect(buffer008, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0020, "uint16");
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0011, 0);
    device40.queue.submit([]);
    render_pass_encoder0030.drawIndirect(buffer002, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0012.drawIndirect(buffer0029, 0);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0010.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0030.drawIndirect(buffer003, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0024, 0);
    render_pass_encoder0061.drawIndexed(3);
    render_pass_encoder0011.end();
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0023, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0000.drawIndirect(buffer0029, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0012, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0011.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0000.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0030.drawIndirect(buffer002, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0040.end();
    render_pass_encoder0030.draw(3);
    render_pass_encoder0012.drawIndirect(buffer0013, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0011.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0001.end();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0041.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0031, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0050.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0018, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0011.drawIndirect(buffer0021, 0);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0040.drawIndirect(buffer009, 0);
    render_pass_encoder0061.drawIndirect(buffer0026, 0);
    render_pass_encoder0001.drawIndirect(buffer0021, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0020.drawIndirect(buffer002, 0);
    render_pass_encoder0012.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0012.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0012.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0024, 0);
    render_pass_encoder0012.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0042.drawIndirect(buffer0030, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0031.draw(3);
    render_pass_encoder0011.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0061.drawIndirect(buffer0016, 0);
    render_pass_encoder0061.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0012.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0012.end();
    render_pass_encoder0030.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0012.draw(3);
    render_pass_encoder0000.drawIndirect(buffer0031, 0);
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0042.draw(3);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0041.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0001.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0011.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    render_pass_encoder0061.end();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer0018, "uint16");
    device30.queue.submit([]);
    render_pass_encoder0001.draw(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0011.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0017, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0030.setIndexBuffer(buffer0026, "uint16");
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0012.end();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0061.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0041.drawIndirect(buffer0031, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0020.drawIndirect(buffer005, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0050.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0061.drawIndirect(buffer001, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0000.drawIndirect(buffer0018, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0026, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0012.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0060.end();
    render_pass_encoder0042.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0001.drawIndirect(buffer005, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0012.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0010.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer004, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0061.end();
    render_pass_encoder0050.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0024, 0);
    render_pass_encoder0042.end();
    render_pass_encoder0021.draw(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0061.drawIndirect(buffer009, 0);
    render_pass_encoder0001.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0050.draw(3);
    device00.queue.submit([command_buffer000, command_buffer006, ]);
    render_pass_encoder0020.drawIndirect(buffer0013, 0);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0050.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0042.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0042.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0010.drawIndirect(buffer0011, 0);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0001.draw(3);
    device00.queue.submit([]);
    render_pass_encoder0020.drawIndirect(buffer0011, 0);
    render_pass_encoder0031.drawIndirect(buffer0021, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0061.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0040.end();
    render_pass_encoder0041.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0001.popDebugGroup();
    compute_pass_encoder0001.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0042.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0021.drawIndirect(buffer0016, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0030.drawIndirect(buffer0021, 0);
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0061.end();
    render_pass_encoder0061.draw(3);
    render_pass_encoder0001.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0012.draw(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0050.draw(3);
    device00.queue.submit([]);
    device10.queue.submit([]);
    render_pass_encoder0061.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0000.draw(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0040.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0012.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0050.drawIndirect(buffer0010, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0060.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0012.draw(3);
    render_pass_encoder0041.drawIndirect(buffer0024, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0016, 0);
    render_pass_encoder0030.drawIndirect(buffer0016, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0010.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0061.end();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0021.drawIndirect(buffer001, 0);
    render_pass_encoder0011.drawIndirect(buffer0025, 0);
    device30.queue.submit([]);
    render_pass_encoder0041.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0030.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0042.draw(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0010.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer001, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer007, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0012.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0060.end();
    render_pass_encoder0030.drawIndirect(buffer005, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0061.drawIndirect(buffer0027, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0029, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0031.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0031, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0061.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0012.drawIndexed(3);
    render_pass_encoder0042.drawIndexed(3);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0012, 0);
    render_pass_encoder0061.drawIndirect(buffer0031, 0);
    render_pass_encoder0041.draw(3);
    render_pass_encoder0010.drawIndirect(buffer0019, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0030.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0020, 0);
    render_pass_encoder0001.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer006, ]);
    render_pass_encoder0031.drawIndirect(buffer0017, 0);
    render_pass_encoder0061.end();
    render_pass_encoder0020.drawIndirect(buffer0019, 0);
    render_pass_encoder0000.drawIndirect(buffer0029, 0);
    render_pass_encoder0042.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0042.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0016, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0050.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0061.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0021.draw(3);
    render_pass_encoder0021.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0061.drawIndirect(buffer0010, 0);
    render_pass_encoder0060.drawIndirect(buffer0030, 0);
    render_pass_encoder0031.drawIndirect(buffer0025, 0);
    render_pass_encoder0012.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0060.draw(3);
    device10.queue.submit([]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0042.drawIndirect(buffer0025, 0);
    device00.queue.submit([command_buffer001, command_buffer003, command_buffer005, ]);
    render_pass_encoder0061.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0061.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0031.drawIndirect(buffer0027, 0);
    render_pass_encoder0061.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0020.drawIndirect(buffer001, 0);
    render_pass_encoder0042.drawIndirect(buffer001, 0);
    render_pass_encoder0061.end();
    render_pass_encoder0030.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0012.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0011.drawIndirect(buffer0015, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0013, "uint16");
    device00.queue.submit([]);
    render_pass_encoder0011.popDebugGroup();
    device00.queue.submit([command_buffer004, command_buffer005, ]);
    render_pass_encoder0020.drawIndirect(buffer007, 0);
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder0011.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0012.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0000.drawIndirect(buffer0013, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0025, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0050.drawIndirect(buffer005, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0015, 0);
    device40.queue.submit([]);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0015, 0);
    device10.queue.submit([]);
    render_pass_encoder0021.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0023, 0);
    device10.queue.submit([]);
    render_pass_encoder0020.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0042.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0060.end();
    render_pass_encoder0041.drawIndirect(buffer0012, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0050.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0061.end();
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0020.drawIndirect(buffer0020, 0);
    render_pass_encoder0031.drawIndirect(buffer0027, 0);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0021.draw(3);
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0020.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0061.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0030, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0001.drawIndirect(buffer0017, 0);
    device00.queue.submit([command_buffer000, command_buffer002, command_buffer003, ]);
    device00.queue.submit([]);
    render_pass_encoder0031.drawIndirect(buffer0021, 0);
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer008, 0);
    render_pass_encoder0012.end();
    render_pass_encoder0041.end();
    render_pass_encoder0001.drawIndirect(buffer0013, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0012.drawIndirect(buffer0023, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0020.drawIndirect(buffer007, 0);
    render_pass_encoder0042.setIndexBuffer(buffer002, "uint16");
    device10.queue.submit([]);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0061.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0028, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0001.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0025, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0019, 0);
    render_pass_encoder0012.drawIndirect(buffer0030, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0040.end();
    render_pass_encoder0021.drawIndirect(buffer0020, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0019, 0);
    render_pass_encoder0060.drawIndirect(buffer0030, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0000.drawIndirect(buffer004, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0061.drawIndirect(buffer000, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0031.draw(3);
    render_pass_encoder0061.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0022, 0);
    render_pass_encoder0001.drawIndirect(buffer002, 0);
    render_pass_encoder0012.drawIndirect(buffer005, 0);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0021.setIndexBuffer(buffer0015, "uint16");
    device00.queue.submit([command_buffer002, ]);
    device00.queue.submit([command_buffer002, command_buffer006, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0012.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0011.drawIndirect(buffer009, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0030.end();
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0050.draw(3);
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0001.end();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0031.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0061.drawIndirect(buffer007, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer003, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0000.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0041.end();
    render_pass_encoder0021.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0061.drawIndirect(buffer0011, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0001.draw(3);
    render_pass_encoder0020.drawIndirect(buffer0020, 0);
    render_pass_encoder0061.drawIndirect(buffer0019, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0020.drawIndirect(buffer001, 0);
    render_pass_encoder0020.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0041.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0042.draw(3);
    render_pass_encoder0020.end();
    render_pass_encoder0041.drawIndirect(buffer008, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0012.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0022, 0);
    device30.queue.submit([]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0031.drawIndexed(3);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0011.end();
    render_pass_encoder0010.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0010.drawIndirect(buffer008, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0030.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0061.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0016, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0011.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0061.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0030.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0001.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0001.drawIndirect(buffer007, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0050.drawIndirect(buffer0015, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0033, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0001.drawIndirect(buffer0011, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0014, 0);
    render_pass_encoder0050.drawIndirect(buffer001, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder0011.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer006, 0);
    render_pass_encoder0000.drawIndirect(buffer0023, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0021.endOcclusionQuery()
    device10.queue.submit([]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0000.drawIndirect(buffer0024, 0);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0012.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0025, 0);
    render_pass_encoder0021.drawIndirect(buffer0018, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0041.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0012.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0060.draw(3);
    render_pass_encoder0010.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0021.end();
    render_pass_encoder0061.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0012.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0001.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0050.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0029, 0);
    render_pass_encoder0000.drawIndirect(buffer0017, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0030.draw(3);
    render_pass_encoder0061.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0040.drawIndirect(buffer0018, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0040.end();
    render_pass_encoder0040.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0041.draw(3);
    render_pass_encoder0030.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0000.drawIndirect(buffer006, 0);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0061.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder0020.drawIndirect(buffer0028, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder0012.drawIndirect(buffer0011, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0031.drawIndirect(buffer0033, 0);
    render_pass_encoder0060.drawIndirect(buffer0016, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer0014, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer008, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0061.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0042.end();
    render_pass_encoder0020.draw(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0061.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0025, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0020.drawIndexed(3);
    device10.queue.submit([]);
    render_pass_encoder0001.drawIndirect(buffer0021, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0042.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0012.drawIndirect(buffer0023, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0000.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0026, 0);
    device00.queue.submit([]);
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0061.drawIndirect(buffer003, 0);
    render_pass_encoder0031.drawIndirect(buffer004, 0);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0060.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0001.drawIndirect(buffer004, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0061.drawIndexed(3);
    render_pass_encoder0061.drawIndirect(buffer0023, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0042.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0050.drawIndirect(buffer000, 0);
    render_pass_encoder0060.setIndexBuffer(buffer007, "uint16");
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0031.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0050.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0021.drawIndirect(buffer007, 0);
    render_pass_encoder0042.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer008, "uint16");
    device00.queue.submit([]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0040.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0050.draw(3);
    device10.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0019, "uint16");
    device30.queue.submit([]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0025, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer004, 0);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0061.drawIndirect(buffer0011, 0);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0011.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0021.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0000.end();
    render_pass_encoder0031.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0061.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0042.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0012.drawIndirect(buffer0021, 0);
    render_pass_encoder0060.drawIndexed(3);
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0041.end();
    render_pass_encoder0012.drawIndirect(buffer0022, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0026, 0);
    render_pass_encoder0031.drawIndirect(buffer0022, 0);
    render_pass_encoder0001.drawIndirect(buffer0013, 0);
    render_pass_encoder0021.draw(3);
    render_pass_encoder0030.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0041.draw(3);
    render_pass_encoder0041.end();
    render_pass_encoder0030.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0001.end();
    device30.queue.submit([]);
    render_pass_encoder0021.drawIndirect(buffer0019, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0060.end();
    render_pass_encoder0042.end();
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer002, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0000.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0001.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0061.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0021, 0);
    render_pass_encoder0001.drawIndirect(buffer008, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0061.drawIndirect(buffer009, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0042.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0012.draw(3);
    render_pass_encoder0030.drawIndirect(buffer0032, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0031.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0061.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0042.draw(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0010, 0);
    render_pass_encoder0060.drawIndirect(buffer0025, 0);
    render_pass_encoder0012.end();
    render_pass_encoder0020.drawIndirect(buffer0012, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0021.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0001.draw(3);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0011.drawIndirect(buffer0021, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer003, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0000.end();
    render_pass_encoder0021.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0030, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0042.drawIndirect(buffer0013, 0);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0021.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0040.drawIndirect(buffer001, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0012, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0060.drawIndirect(buffer0025, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0001.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0042.drawIndirect(buffer0024, 0);
    render_pass_encoder0042.setIndexBuffer(buffer0010, "uint16");
    device10.queue.submit([]);
    render_pass_encoder0041.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0042.drawIndexed(3);
    render_pass_encoder0001.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0012.drawIndexedIndirect(buffer004, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0041.draw(3);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0040.drawIndirect(buffer0017, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0050.drawIndirect(buffer0028, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0050.drawIndirect(buffer000, 0);
    render_pass_encoder0012.popDebugGroup();
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0031.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0012.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0021.drawIndirect(buffer0018, 0);
    render_pass_encoder0012.drawIndirect(buffer005, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0011.drawIndirect(buffer007, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0021.drawIndirect(buffer0030, 0);
    render_pass_encoder0050.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0042.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0031, 0);
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0031.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0041.drawIndirect(buffer007, 0);
    render_pass_encoder0031.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0024, 0);
    render_pass_encoder0041.drawIndirect(buffer0032, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0061.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0060.drawIndirect(buffer0011, 0);
    render_pass_encoder0011.end();
    device30.queue.submit([]);
    device40.queue.submit([command_buffer400, ]);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0030.drawIndirect(buffer004, 0);
    render_pass_encoder0042.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0050.drawIndirect(buffer0026, 0);
    render_pass_encoder0020.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0031.drawIndirect(buffer002, 0);
    render_pass_encoder0000.drawIndirect(buffer0032, 0);
    render_pass_encoder0021.endOcclusionQuery()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0060.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0001.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder0020.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder0041.end();
    device10.queue.submit([]);
    render_pass_encoder0060.end();
    render_pass_encoder0060.drawIndirect(buffer001, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0020.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0000.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0001.popDebugGroup();
    device00.queue.submit([command_buffer004, command_buffer006, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0050.drawIndirect(buffer0019, 0);
    render_pass_encoder0001.drawIndirect(buffer0014, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0060.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0010.end();
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0031.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0000.draw(3);
    render_pass_encoder0021.drawIndirect(buffer0029, 0);
    render_pass_encoder0012.drawIndirect(buffer0012, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0030.drawIndirect(buffer0014, 0);
    render_pass_encoder0042.draw(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0041.draw(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0030.drawIndirect(buffer0017, 0);
    render_pass_encoder0012.drawIndirect(buffer0011, 0);
    device00.queue.submit([command_buffer002, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0011.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0061.draw(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0012.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0015, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0050.draw(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0061.drawIndirect(buffer0030, 0);
    render_pass_encoder0061.end();
    render_pass_encoder0021.drawIndirect(buffer004, 0);
    render_pass_encoder0050.draw(3);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0050.end();
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0060.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0030.drawIndirect(buffer006, 0);
    render_pass_encoder0060.drawIndirect(buffer0011, 0);
    render_pass_encoder0050.drawIndirect(buffer0017, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0061.drawIndirect(buffer0015, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0042.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0017, 0);
    render_pass_encoder0061.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0061.draw(3);
    render_pass_encoder0012.drawIndirect(buffer0011, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0027, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0061.drawIndirect(buffer0032, 0);
    device10.queue.submit([]);
    render_pass_encoder0010.drawIndirect(buffer005, 0);
    render_pass_encoder0010.drawIndexed(3);
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder0021.drawIndirect(buffer0024, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0041.drawIndirect(buffer000, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0040.drawIndirect(buffer001, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0040.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0031, "uint16");
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0041.draw(3);
    render_pass_encoder0042.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0024, 0);
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0021.end();
    render_pass_encoder0011.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0021.end();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0012.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer002, 0);
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer003, ]);
    render_pass_encoder0010.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0000.draw(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0060.drawIndirect(buffer0020, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0011.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0042.drawIndexed(3);
    render_pass_encoder0050.end();
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0021.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0026, 0);
    render_pass_encoder0031.drawIndexed(3);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0061.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0061.endOcclusionQuery()
    render_pass_encoder0030.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0061.drawIndirect(buffer004, 0);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0012.drawIndirect(buffer0013, 0);
    render_pass_encoder0011.end();
    device40.queue.submit([]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0040.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer002, "uint16");
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder0060.drawIndirect(buffer0016, 0);
    render_pass_encoder0021.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0012, 0);
    render_pass_encoder0041.draw(3);
    render_pass_encoder0031.drawIndirect(buffer0025, 0);
    render_pass_encoder0012.drawIndirect(buffer0018, 0);
    render_pass_encoder0030.drawIndirect(buffer0014, 0);
    render_pass_encoder0060.drawIndirect(buffer006, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0040.drawIndirect(buffer0018, 0);
    render_pass_encoder0011.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0011.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0012.drawIndirect(buffer001, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0000.end();
    render_pass_encoder0042.drawIndirect(buffer006, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0021.drawIndirect(buffer0012, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0030.drawIndirect(buffer003, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0020.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0030.setIndexBuffer(buffer0028, "uint16");
    device40.queue.submit([]);
    render_pass_encoder0012.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0061.drawIndirect(buffer0011, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0020, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0016, 0);
    render_pass_encoder0012.end();
    render_pass_encoder0012.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0021.endOcclusionQuery()
    render_pass_encoder0030.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0060.end();
    render_pass_encoder0031.end();
    render_pass_encoder0020.drawIndexed(3);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0026, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0050.end();
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0010.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0014, 0);
    render_pass_encoder0040.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0061.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0041.drawIndirect(buffer0016, 0);
    render_pass_encoder0040.drawIndirect(buffer007, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0050.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0028, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0042.drawIndirect(buffer0010, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0040.end();
    render_pass_encoder0000.setIndexBuffer(buffer0023, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0030.drawIndirect(buffer0020, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer0010, 0);
    device10.queue.submit([]);
    render_pass_encoder0000.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0011.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0001.end();
    render_pass_encoder0041.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0000.drawIndirect(buffer0021, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0061.draw(3);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0042.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0011.draw(3);
    render_pass_encoder0042.end();
    render_pass_encoder0050.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0060.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0000.draw(3);
    render_pass_encoder0041.drawIndirect(buffer0020, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0061.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0012.end();
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0061.drawIndirect(buffer001, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0024, 0);
    device10.queue.submit([]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0042.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer004, "uint16");
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0020.drawIndexed(3);
    device00.queue.submit([command_buffer003, ]);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0060.drawIndirect(buffer007, 0);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0020.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0010.draw(3);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0011.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0021, 0);
    render_pass_encoder0060.drawIndirect(buffer0028, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0061.drawIndirect(buffer001, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0040.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0010, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer001, 0);
    render_pass_encoder0012.drawIndirect(buffer0017, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0001.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0050.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0012.drawIndexed(3);
    render_pass_encoder0012.end();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0050.drawIndirect(buffer001, 0);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer0012, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0011.end();
    render_pass_encoder0012.drawIndirect(buffer0025, 0);
    render_pass_encoder0042.draw(3);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0012.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0041.draw(3);
    render_pass_encoder0001.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0012.drawIndirect(buffer000, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0012.drawIndexedIndirect(buffer0015, 0);
    device00.queue.submit([]);
    render_pass_encoder0042.drawIndirect(buffer0029, 0);
    render_pass_encoder0042.drawIndexed(3);
    render_pass_encoder0012.end();
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0012.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0010.drawIndirect(buffer0022, 0);
    render_pass_encoder0040.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0001.drawIndirect(buffer001, 0);
    render_pass_encoder0021.drawIndirect(buffer002, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0021.drawIndirect(buffer0032, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0001.end();
    render_pass_encoder0040.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0060.draw(3);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0012.drawIndirect(buffer0024, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0020.drawIndirect(buffer002, 0);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0021.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer0021, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder0010.drawIndirect(buffer0016, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0019, 0);
    device10.queue.submit([]);
    render_pass_encoder0010.end();
    render_pass_encoder0001.end();
    render_pass_encoder0060.setIndexBuffer(buffer0021, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0042.end();
    render_pass_encoder0011.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0061.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0012.end();
    render_pass_encoder0012.end();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer007, 0);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0012.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0030.end();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0010.drawIndirect(buffer0027, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0060.end();
    render_pass_encoder0001.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0061.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0012.end();
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0041.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0022, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0061.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0021, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0000.setIndexBuffer(buffer0022, "uint16");
    compute_pass_encoder0001.popDebugGroup()
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0061.drawIndirect(buffer003, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0012.end();
    render_pass_encoder0040.end();
    render_pass_encoder0050.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0020, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0061.end();
    render_pass_encoder0011.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0001.draw(3);
    render_pass_encoder0060.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0000.drawIndirect(buffer005, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0031.draw(3);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0001.drawIndirect(buffer009, 0);
    render_pass_encoder0012.end();
    render_pass_encoder0021.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0001.draw(3);
    render_pass_encoder0060.drawIndirect(buffer0014, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0040.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0041.end();
    device10.queue.submit([]);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0001.setIndexBuffer(buffer0012, "uint16");
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer005, ]);
    render_pass_encoder0010.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0042.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0040.draw(3);
    render_pass_encoder0041.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0060.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0061.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0025, 0);
    render_pass_encoder0000.drawIndirect(buffer0022, 0);
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0015, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer008, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.end();
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0012.drawIndirect(buffer0023, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0042.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0060.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0042.drawIndirect(buffer0019, 0);
    render_pass_encoder0050.drawIndirect(buffer004, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0012.end();
    render_pass_encoder0050.drawIndirect(buffer007, 0);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0030.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0012.drawIndirect(buffer0018, 0);
    render_pass_encoder0010.drawIndirect(buffer0011, 0);
    device40.queue.submit([command_buffer400, ]);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0060.drawIndirect(buffer0031, 0);
    render_pass_encoder0001.drawIndirect(buffer0026, 0);
    render_pass_encoder0012.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0042.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0061.end();
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0042.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0041.drawIndirect(buffer0018, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0031.end();
    render_pass_encoder0031.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0020, 0);
    render_pass_encoder0060.draw(3);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0021.draw(3);
    render_pass_encoder0061.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0041.draw(3);
    render_pass_encoder0050.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder0040.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0061.drawIndexed(3);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0010.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0001.drawIndirect(buffer0022, 0);
    render_pass_encoder0031.drawIndirect(buffer008, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0018, "uint16");
    device00.queue.submit([]);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0000.drawIndirect(buffer001, 0);
    render_pass_encoder0040.drawIndirect(buffer008, 0);
    render_pass_encoder0031.drawIndirect(buffer0025, 0);
    render_pass_encoder0000.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0042.draw(3);
    render_pass_encoder0010.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0042.drawIndirect(buffer0023, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0000.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0016, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0013, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0001.drawIndirect(buffer007, 0);
    device40.queue.submit([]);
    render_pass_encoder0041.setIndexBuffer(buffer0024, "uint16");
    device10.queue.submit([]);
    render_pass_encoder0041.end();
    render_pass_encoder0042.end();
    render_pass_encoder0041.drawIndirect(buffer001, 0);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0050.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0042.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0061.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0013, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0061.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0041.draw(3);
    render_pass_encoder0011.drawIndirect(buffer003, 0);
    render_pass_encoder0042.drawIndirect(buffer003, 0);
    render_pass_encoder0021.drawIndirect(buffer0014, 0);
    render_pass_encoder0060.draw(3);
    device00.queue.submit([command_buffer006, ]);
    device00.queue.submit([]);
    render_pass_encoder0060.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0050.drawIndirect(buffer0024, 0);
    render_pass_encoder0001.draw(3);
    render_pass_encoder0020.setIndexBuffer(buffer0031, "uint16");
    device10.queue.submit([]);
    render_pass_encoder0050.drawIndirect(buffer0030, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.draw(3);
    render_pass_encoder0011.end();
    render_pass_encoder0060.end();
    render_pass_encoder0040.drawIndirect(buffer0024, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0000.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0017, 0);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0061.drawIndexed(3);
    render_pass_encoder0031.drawIndirect(buffer0027, 0);
    render_pass_encoder0060.drawIndirect(buffer009, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0018, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0031.drawIndirect(buffer0033, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0011.drawIndirect(buffer0011, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0016, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0061.drawIndirect(buffer0021, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0050.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0030.drawIndexed(3);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0061.end();
}