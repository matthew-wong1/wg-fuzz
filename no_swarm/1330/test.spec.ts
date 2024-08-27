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
    
    const array0 = new Float32Array([-0.75, -0.5, -0.75, -0.5, -0.25, -0.5, 1.0, -0.5, -0.75, 0.0, 0.75, -0.5, -0.25, 0.0, 0.25, -0.5, 0.0, -0.5, 1.0, 0.0, -1.0, -0.5, 0.5, 0.5, 1.0, -0.5, -1.0, 1.0, -0.25, -1.0, 0.25, -0.75, 0.0, -0.75, -1.0, -0.25, -0.25, 0.25, -0.25, -0.75, 0.0, -0.75, 0.25, 0.75, -0.75, -0.5, 1.0, -0.25, 0.5, 0.5, 0.0, -0.25, 0.25, -0.75, 0.25, -0.25, 0.75, 0.25, -0.5, 0.0, -0.75, -0.5, -0.25, -0.75, -0.75, 0.25, -0.5, -0.5, 0.5, -0.75, -0.5, 1.0, 0.5, 0.25, -1.0, 0.75, 1.0, 0.5, -0.5, 0.0, 1.0, 0.75, -1.0, -0.25, 1.0, -0.75, 0.75, 0.25, 0.75, -0.5, 0.0, 0.0, 0.25, 1.0, 1.0, 0.5, 0.25, 0.5, -1.0, 1.0, ]);
    const array1 = new Float32Array([-1.0, 0.75, 0.5, 0.25, -0.75, 0.75, -1.0, -0.25, -1.0, 0.25, 0.5, 0.0, -1.0, 0.5, 0.75, -0.25, 0.5, -0.5, 0.25, 0.5, -1.0, -1.0, 0.5, 0.5, 0.0, 0.5, 0.5, -0.75, 0.5, 0.0, -1.0, 1.0, 0.25, 1.0, -0.25, -1.0, -0.75, -0.25, 0.0, 0.0, 0.0, -0.25, 1.0, -1.0, 0.25, -0.75, 0.25, 1.0, -0.75, 0.25, -0.75, -0.75, -0.5, 0.25, -0.75, 0.25, 1.0, -0.25, -1.0, 0.5, 0.75, 0.5, -1.0, 0.25, 0.0, 0.5, -0.75, -0.5, 0.0, 0.25, 1.0, -0.5, -0.75, -1.0, 0.75, 0.75, -1.0, 0.0, -0.5, -0.5, 0.0, -0.5, -0.5, 0.5, 1.0, 1.0, -0.25, 0.75, 0.5, 0.5, -0.25, 0.0, 0.25, 0.25, 0.25, 0.75, 0.5, -0.5, 0.75, -1.0, ]);
    const array2 = new Float32Array([0.25, -0.25, -0.75, 0.5, 0.75, 0.5, 0.5, -1.0, 0.0, -0.25, -1.0, -0.25, -0.25, -0.25, -0.75, 0.5, 0.25, -0.5, 0.0, -0.75, -0.75, -0.75, -1.0, -0.5, 0.25, -0.75, 0.75, 0.0, -0.75, -0.75, -0.75, -0.5, 0.5, -0.25, 0.0, -1.0, 0.25, 1.0, 0.5, 0.75, -0.25, -0.25, 0.75, 1.0, -1.0, -0.75, 1.0, 0.0, -0.5, 0.25, -1.0, 0.5, 0.75, 1.0, 0.25, -1.0, -0.25, 0.75, 1.0, 0.0, -0.25, -0.5, 0.0, 0.0, 0.5, -0.75, 1.0, 0.5, 0.75, -0.5, -1.0, 0.25, -0.75, 0.75, -1.0, -0.25, -1.0, -0.25, -0.25, 0.75, -0.75, -0.75, 1.0, 0.75, 1.0, 0.25, -0.25, -0.5, -0.75, 0.25, 1.0, 0.0, -0.25, -0.25, 0.25, 1.0, -1.0, -1.0, -0.5, 0.75, ]);
    
    
    const array3 = new Float32Array([-0.25, -1.0, -0.5, -0.25, -0.75, 1.0, -0.25, 0.0, -0.75, -1.0, -1.0, 0.0, -1.0, 0.0, 0.5, -0.75, -0.5, -0.75, -1.0, 0.25, 0.0, -1.0, 1.0, -0.25, -0.75, 0.75, 0.75, -1.0, 1.0, 1.0, 0.75, 0.25, -1.0, 0.5, -0.25, 1.0, 0.0, -1.0, -0.5, 0.25, 0.0, 0.0, -0.25, -1.0, 1.0, 0.5, -0.5, 0.5, -0.5, -0.25, 1.0, 0.0, 0.0, 0.5, 0.75, 0.75, -0.25, -1.0, -1.0, 0.25, 0.75, -0.25, -1.0, 0.0, 0.75, -1.0, -0.75, -0.25, 0.75, 0.25, 0.75, 0.25, 0.25, -0.25, -0.75, 0.25, 0.25, -1.0, 0.25, -0.75, 0.0, -1.0, -0.75, 0.0, 0.0, 0.75, -0.75, -1.0, -0.75, -0.25, 0.0, 0.25, 0.75, 0.0, -1.0, -1.0, -0.5, 0.25, 1.0, -1.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    device00.destroy();
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer100 = command_encoder100.finish();
    
    device10.destroy();
    
    
    
    
    const array4 = new Float32Array([-0.75, -0.5, 0.75, 0.75, -1.0, 0.75, -0.75, 0.75, 0.0, 0.25, -0.75, 1.0, 0.0, 0.0, 0.75, -0.5, 1.0, -0.5, -1.0, -1.0, -0.75, 0.75, 0.25, -0.5, 0.5, 1.0, -0.25, 0.75, 0.0, 0.0, 0.5, -0.25, 0.25, 1.0, 0.25, 0.25, 0.25, -1.0, 0.0, 0.25, 0.0, 0.5, 0.25, 0.25, 0.5, 0.75, -0.5, 0.0, -0.75, -1.0, -0.25, -0.75, -0.75, 0.0, -0.75, 0.0, 0.25, 0.5, 0.25, -0.25, 0.5, 1.0, -0.75, 0.0, -1.0, 1.0, -0.25, 0.75, 1.0, 0.0, 0.75, 0.0, -0.5, 1.0, 0.0, 1.0, 0.5, 0.75, 0.75, -0.5, -0.5, 0.75, -0.75, -0.5, -1.0, 0.0, -0.75, -1.0, 0.0, -0.25, -0.75, -1.0, 0.5, -0.5, 0.5, -0.25, -0.5, -0.25, 1.0, -0.5, ]);
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.pushErrorScope("out-of-memory");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    command_encoder201.pushDebugGroup("mygroupmarker")
    command_encoder201.insertDebugMarker("mymarker");
    const command_buffer200 = command_encoder200.finish();
    buffer200.destroy()
    command_encoder201.insertDebugMarker("mymarker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    device20.queue.submit([command_buffer200, ]);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
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
    command_encoder201.popDebugGroup()
    
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    texture300.destroy();
    render_pass_encoder2020.beginOcclusionQuery(0)
    
    command_encoder201.insertDebugMarker("mymarker");
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2020.setStencilReference(1);
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
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
    device30.pushErrorScope("out-of-memory");
    texture200.destroy();
    
    
    texture201.destroy();
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
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
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2020.insertDebugMarker("marker");
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    
    render_pass_encoder2010.insertDebugMarker("marker");
    texture202.destroy();
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2010.beginOcclusionQuery(1)
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    const array5 = new Float32Array([-1.0, -0.5, 0.0, 0.5, -0.75, 0.25, -0.5, -0.25, -1.0, 1.0, -0.25, 0.75, 0.0, 0.25, 0.75, 0.0, 0.5, 0.5, 1.0, 0.0, 1.0, 0.25, 0.0, -0.5, 0.25, -0.5, 1.0, -1.0, -1.0, -1.0, 0.5, 0.25, -0.25, 0.0, -0.25, 0.0, 0.0, -1.0, -0.25, 1.0, -0.25, -1.0, -1.0, -1.0, 1.0, -0.75, -0.5, -0.75, 1.0, -0.75, -1.0, 0.75, 1.0, -0.75, 0.25, -0.25, 0.25, -1.0, 0.25, 0.25, 1.0, 1.0, 0.75, -0.25, -1.0, 0.5, 0.0, 0.0, -0.75, -1.0, 0.25, -0.25, -1.0, 0.5, -0.5, 0.0, 0.5, 0.75, 0.25, 0.75, -0.5, 0.0, 0.5, 0.0, 0.25, 0.75, -1.0, 0.75, -0.75, 0.5, 0.25, -0.5, -0.75, 0.75, -1.0, 0.75, -0.5, 0.0, 0.75, 1.0, ]);
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder2020.pushDebugGroup("group_marker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder2010.endOcclusionQuery()
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2010.beginOcclusionQuery(2)
    
    render_pass_encoder2010.insertDebugMarker("marker");
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_pass_encoder2021.insertDebugMarker("marker");
    render_pass_encoder2010.insertDebugMarker("marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_pass_encoder2021.setStencilReference(1);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    query202.destroy()
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    render_pass_encoder2021.beginOcclusionQuery(3)
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    
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
    const array6 = new Float32Array([0.25, 0.75, 1.0, -1.0, -1.0, -0.25, 0.0, 0.5, 0.0, -1.0, -0.5, 0.5, 0.0, 0.0, -1.0, -0.75, -0.75, 1.0, -0.75, 0.5, 0.5, 0.75, 1.0, -0.25, -1.0, 0.25, 0.0, 0.25, 1.0, -0.75, 0.25, 0.25, 0.25, 0.75, -0.5, -1.0, 0.75, 0.0, -0.75, 0.25, -0.5, -0.75, -1.0, 0.25, -1.0, -1.0, -1.0, 1.0, 0.0, 1.0, 0.25, -1.0, 0.5, 1.0, -0.75, -0.75, -0.25, 0.25, -0.25, 0.5, -1.0, 0.5, -0.25, -0.25, 0.0, 0.25, 0.25, -0.5, 0.0, 1.0, 0.75, 1.0, 0.25, -1.0, 0.5, -0.25, -0.25, -0.5, 1.0, 0.5, 0.5, -0.25, 1.0, -1.0, -0.75, -0.25, 0.75, 0.25, 0.25, 0.5, 1.0, -0.5, -0.5, 0.0, 0.5, -0.5, -0.5, -1.0, -0.75, 0.75, ]);
    render_pass_encoder2020.endOcclusionQuery()
    query200.destroy()
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2020.executeBundles([])
    device20.pushErrorScope("out-of-memory");
    render_bundle_encoder300.popDebugGroup();
    render_bundle_encoder300.pushDebugGroup("group_marker");
    query200.destroy()
    command_encoder300.popDebugGroup()
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder300.insertDebugMarker("mymarker");
    
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    texture203.destroy();
    render_pass_encoder2021.setStencilReference(1);
    query201.destroy()
    
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    query100.destroy()
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2010.setStencilReference(1);
    const array7 = new Float32Array([1.0, 0.25, 0.75, 0.75, 0.25, 0.5, -0.75, 0.75, -0.25, 1.0, -0.75, 0.5, 1.0, 0.0, -1.0, 0.5, -0.5, -0.75, 0.5, -0.5, -0.5, 0.5, 0.25, 0.5, -0.5, -0.75, -0.25, -0.75, 1.0, 1.0, -0.5, -0.5, 1.0, -0.75, 0.75, -0.25, 0.0, 0.5, -0.5, -0.25, -0.5, 0.25, 0.5, -0.25, -0.5, 0.25, 0.0, 0.75, 1.0, 0.0, 0.25, 0.25, -1.0, 1.0, 1.0, 1.0, -0.25, -1.0, -0.5, 0.25, 1.0, 0.5, 1.0, -0.75, -1.0, 1.0, -0.25, 0.25, 0.5, 0.0, -0.75, -1.0, 0.25, -0.75, -0.75, -0.25, -0.5, 0.75, 0.25, 0.0, -0.75, 0.0, -0.25, -0.5, 0.0, 0.75, -0.75, -0.75, -1.0, 0.5, 0.0, -0.25, 0.5, 1.0, 0.75, 0.75, -0.25, 0.0, 0.25, -0.25, ]);
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2021.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    
    
    render_pass_encoder2010.setPipeline(render_pipeline201);
    render_pass_encoder2020.setStencilReference(1);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    render_pass_encoder2021.setStencilReference(1);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module206,
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
            module: shader_module206,
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
    
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
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
    render_bundle_encoder301.insertDebugMarker("marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    render_pass_encoder2021.beginOcclusionQuery(3)
    const texture_view2041 = texture204.createView({ label: "texture_view2041" });
    
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_pass_encoder2020.setStencilReference(1);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_pass_encoder2021.setPipeline(render_pipeline200);
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    command_encoder302.pushDebugGroup("mygroupmarker")
    render_pass_encoder2010.setStencilReference(1);
    
    render_pass_encoder2020.executeBundles([])
    query100.destroy()
    const render_pass_encoder2012 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2012",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: query203
    });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.setPipeline(render_pipeline202);
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    command_encoder301.insertDebugMarker("mymarker");
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    render_pass_encoder2011.executeBundles([render_bundle_encoder200, ])
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    query202.destroy()
    query201.destroy()
    render_bundle_encoder300.setPipeline(render_pipeline300);
    query202.destroy()
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
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    compute_pass_encoder3000.insertDebugMarker("marker")
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    render_pass_encoder2020.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2012.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    command_encoder202.resolveQuerySet(
        query202,
        0,
        32,
        buffer200,
        0
    )
    render_pass_encoder2012.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
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
    render_pass_encoder2012.setPipeline(render_pipeline202);
    render_pass_encoder2010.setStencilReference(1);
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
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
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
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_pass_encoder2012.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer201,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer202,
                },
            },
        ],
    });

    render_pass_encoder2012.setBindGroup(0, bind_group200);
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_pass_encoder2011.setBindGroup(0, bind_group201);
    render_pass_encoder2012.setStencilReference(1);
    render_pass_encoder2012.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.pushErrorScope("out-of-memory");
    command_encoder303.clearBuffer(buffer300);
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    render_bundle_encoder301.setPipeline(render_pipeline300);
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder301.pushDebugGroup("mygroupmarker")
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    render_pass_encoder2020.executeBundles([])
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    command_encoder303.clearBuffer(buffer300);
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    device20.queue.writeBuffer(buffer203, 0, array7, 0, array7.length);
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    command_encoder400.insertDebugMarker("mymarker");
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    
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
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device40.queue.submit([]);
    render_pass_encoder2010.endOcclusionQuery()
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    buffer302.destroy()
    query200.destroy()
    
    buffer203.destroy()
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
        vertex: {
            module: shader_module206,
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
            module: shader_module206,
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
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    render_pass_encoder2020.setPipeline(render_pipeline205);
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    
    query201.destroy()
    query200.destroy()
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    render_pass_encoder2012.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    device40.destroy();
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    render_bundle_encoder302.setPipeline(render_pipeline300);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    render_pass_encoder2012.beginOcclusionQuery(0)
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2041,
            },
        ],
        occlusionQuerySet: undefined
    });
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
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline205.getBindGroupLayout(0),
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

    render_pass_encoder2020.setBindGroup(0, bind_group202);
    device10.queue.submit([command_buffer100, ]);
    query201.destroy()
    render_pass_encoder2030.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer207,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer208,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group203);
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    
    command_encoder305.insertDebugMarker("mymarker");
    render_pass_encoder2012.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2030.setPipeline(render_pipeline204);
    
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group204);
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    command_encoder305.clearBuffer(buffer300);
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
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
    query200.destroy()
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    compute_pass_encoder3000.popDebugGroup()
    buffer209.destroy()
    render_bundle_encoder300.popDebugGroup();
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
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
    render_pass_encoder2030.setVertexBuffer(0, buffer208);
    render_pass_encoder2011.setVertexBuffer(0, buffer201);
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    command_encoder301.copyBufferToBuffer(
        buffer301,
        0,
        buffer300,
        0,
        400
    );
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const texture_view2042 = texture204.createView({ label: "texture_view2042" });
    query201.destroy()
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_pass_encoder2030.insertDebugMarker("marker");
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2041,
            },
        ],
        occlusionQuerySet: query200
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16uint",
        dimension: "2d"
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
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
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder3040.insertDebugMarker("marker");
    buffer303.destroy()
    command_encoder301.popDebugGroup()
    const render_pass_encoder2041 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query201
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    command_encoder301.copyTextureToTexture(
        {
            texture: texture300
        },
        {
            texture: texture301
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2013,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group205);
    render_pass_encoder2010.setVertexBuffer(0, buffer208);
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer2010,
        0
    )
    render_pass_encoder2041.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
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
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    buffer301.destroy()
    device20.queue.writeBuffer(buffer206, 0, array6, 0, array6.length);
    const render_pass_encoder2031 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2040,
            },
        ],
        occlusionQuerySet: query203
    });
    render_pass_encoder2012.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder305.copyBufferToBuffer(
        buffer300,
        0,
        buffer300,
        0,
        400
    );
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    render_pass_encoder2031.setPipeline(render_pipeline206);
    
    render_pass_encoder2031.setViewport(0, 0, texture204.width / 2, texture204.height / 2, 0, 1);
    render_pass_encoder2020.setVertexBuffer(0, buffer203);
    render_pass_encoder2041.setStencilReference(1);
    
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    render_pass_encoder2031.setStencilReference(1);
    
    render_pass_encoder3040.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeBuffer(buffer205, 0, array1, 0, array1.length);
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2011.setStencilReference(1);
    render_pass_encoder2041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2040.setPipeline(render_pipeline202);
    device20.queue.writeBuffer(buffer2011, 0, array5, 0, array5.length);
    render_pass_encoder2020.setIndexBuffer(buffer206, "uint16");
    
    render_pass_encoder3040.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    render_pass_encoder2020.draw(3);
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder3040.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    render_pass_encoder2041.setPipeline(render_pipeline205);
    buffer207.destroy()
    buffer302.destroy()
    
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
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device20.pushErrorScope("out-of-memory");
    
    
    
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout201,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    query201.destroy()
    render_pass_encoder2031.setScissorRect(0, 0, texture204.width / 2, texture204.height / 2);
    render_pass_encoder2012.pushDebugGroup("group_marker");
    
    command_encoder204.copyBufferToBuffer(
        buffer203,
        0,
        buffer2011,
        0,
        400
    );
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder2010.drawIndirect(buffer206, 0);
    
    command_encoder305.clearBuffer(buffer301);
    device20.queue.writeBuffer(buffer208, 0, array6, 0, array6.length);
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.popDebugGroup();
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    render_pass_encoder3040.insertDebugMarker("marker");
    render_pass_encoder2030.setViewport(0, 0, texture204.width / 2, texture204.height / 2, 0, 1);
    compute_pass_encoder3000.popDebugGroup()
    const command_buffer204 = command_encoder204.finish();
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder2012.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer204, 0);
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2015,
                },
            },
        ],
    });

    render_pass_encoder2040.setBindGroup(0, bind_group206);
    render_pass_encoder3040.setPipeline(render_pipeline300);
    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: render_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2017,
                },
            },
        ],
    });

    render_pass_encoder2041.setBindGroup(0, bind_group207);
    render_pass_encoder2040.setVertexBuffer(0, buffer2010);
    render_pass_encoder2041.setVertexBuffer(0, buffer2013);
    render_pass_encoder2040.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2011.setIndexBuffer(buffer209, "uint16");
    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: render_pipeline206.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2019,
                },
            },
        ],
    });

    render_pass_encoder2031.setBindGroup(0, bind_group208);
    render_pass_encoder2040.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2041.draw(3);
    render_pass_encoder2040.drawIndirect(buffer205, 0);
    render_pass_encoder2010.drawIndirect(buffer2014, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2012.setVertexBuffer(0, buffer206);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2012.drawIndirect(buffer2010, 0);
    render_pass_encoder2040.endOcclusionQuery()
    render_pass_encoder2010.drawIndirect(buffer205, 0);
    render_pass_encoder2031.setVertexBuffer(0, buffer2010);
    render_pass_encoder2010.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2031.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2018, 0);
    compute_pass_encoder3030.popDebugGroup()
    const command_buffer400 = command_encoder400.finish();
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder2021.endOcclusionQuery()
    render_pass_encoder2012.endOcclusionQuery()
    render_pass_encoder2031.end();
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2020.popDebugGroup();
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder2012.end();
    render_pass_encoder2040.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    const command_buffer304 = command_encoder304.finish();
    render_pass_encoder2030.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2030.end();
    const command_buffer201 = command_encoder201.finish();
    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2021,
                },
            },
        ],
    });

    render_pass_encoder2021.setBindGroup(0, bind_group209);
    const command_buffer305 = command_encoder305.finish();
    render_pass_encoder2021.setVertexBuffer(0, buffer2013);
    render_pass_encoder2020.drawIndirect(buffer205, 0);
    render_pass_encoder2021.drawIndirect(buffer2017, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2020.drawIndirect(buffer205, 0);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2012.draw(3);
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    render_pass_encoder3040.setBindGroup(0, bind_group301);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2012.popDebugGroup();
    render_pass_encoder2020.draw(3);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2030.end();
    render_pass_encoder2041.drawIndirect(buffer209, 0);
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2021.end();
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder2041.end();
    render_pass_encoder2040.end();
    device30.queue.submit([command_buffer300, command_buffer304, ]);
    render_pass_encoder2040.end();
    render_pass_encoder2010.drawIndirect(buffer2018, 0);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder2012.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2041.drawIndirect(buffer205, 0);
    render_pass_encoder3040.setVertexBuffer(0, buffer305);
    render_pass_encoder2010.draw(3);
    render_pass_encoder3040.draw(3);
    render_pass_encoder3040.draw(3);
    render_pass_encoder2011.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer202, 0);
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder2041.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2010.drawIndirect(buffer208, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2031.popDebugGroup();
    device30.queue.submit([command_buffer305, ]);
    render_pass_encoder2011.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2020.popDebugGroup();
    device20.queue.submit([command_buffer200, command_buffer203, ]);
    render_pass_encoder3040.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder2040.drawIndirect(buffer2012, 0);
    render_pass_encoder2012.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder3040.end();
    device20.queue.submit([command_buffer201, command_buffer202, command_buffer203, ]);
    render_pass_encoder2020.drawIndirect(buffer2014, 0);
    device30.queue.submit([command_buffer305, ]);
    render_pass_encoder2030.drawIndexed(3);
    const command_buffer303 = command_encoder303.finish();
    render_pass_encoder2020.setIndexBuffer(buffer2016, "uint16");
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder3040.drawIndexed(3);
    render_pass_encoder2021.drawIndirect(buffer2019, 0);
    device30.queue.submit([command_buffer303, ]);
    const command_buffer002 = command_encoder002.finish();
    device50.queue.submit([]);
    render_pass_encoder2010.drawIndexedIndirect(buffer204, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2021.drawIndirect(buffer2019, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2011.drawIndexedIndirect(buffer203, 0);
    device30.queue.submit([command_buffer305, ]);
    render_pass_encoder2020.drawIndexed(3);
    device30.queue.submit([]);
    command_encoder302.popDebugGroup()
    render_pass_encoder2040.drawIndirect(buffer204, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2031.setIndexBuffer(buffer2019, "uint16");
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder2010.drawIndirect(buffer206, 0);
    device30.queue.submit([command_buffer305, ]);
    render_pass_encoder3040.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder2040.end();
    render_pass_encoder2012.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder3030.popDebugGroup()
    const command_buffer302 = command_encoder302.finish();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2012.drawIndirect(buffer2021, 0);
    render_pass_encoder3040.end();
    render_pass_encoder2020.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2011, 0);
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder2040.end();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2031.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer202, "uint16");
    device30.queue.submit([command_buffer301, ]);
    device50.queue.submit([]);
    render_pass_encoder2041.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2030.drawIndirect(buffer205, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    device30.queue.submit([command_buffer302, ]);
    device50.queue.submit([]);
    render_pass_encoder2012.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2019, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2011.draw(3);
    render_pass_encoder2041.end();
    render_pass_encoder2030.drawIndirect(buffer2011, 0);
    device30.queue.submit([command_buffer305, ]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2021.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder3040.drawIndirect(buffer301, 0);
    render_pass_encoder2030.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2012.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder2012.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2012.drawIndexedIndirect(buffer204, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder2010.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2010.draw(3);
    render_pass_encoder2020.setIndexBuffer(buffer207, "uint16");
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2041.end();
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2040.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2020.setIndexBuffer(buffer201, "uint16");
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2012.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    device30.queue.submit([]);
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2041.draw(3);
    render_pass_encoder2012.popDebugGroup();
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder2031.end();
    device40.queue.submit([]);
    render_pass_encoder2041.drawIndirect(buffer2021, 0);
    render_pass_encoder2012.draw(3);
    render_pass_encoder2041.draw(3);
    render_pass_encoder2040.popDebugGroup();
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2040.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2011.drawIndirect(buffer2010, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2041.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2020, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2010.draw(3);
    render_pass_encoder2031.end();
    render_pass_encoder2021.drawIndirect(buffer206, 0);
    render_pass_encoder2041.setIndexBuffer(buffer2011, "uint16");
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2011.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2011, 0);
    render_pass_encoder2031.drawIndirect(buffer2018, 0);
    device30.queue.submit([]);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2021.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2012.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2012.drawIndirect(buffer206, 0);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2030.draw(3);
    device50.queue.submit([]);
    render_pass_encoder2020.drawIndirect(buffer2016, 0);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder2011.drawIndirect(buffer207, 0);
    render_pass_encoder3040.end();
    render_pass_encoder2020.draw(3);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder3040.draw(3);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder2020.end();
    render_pass_encoder2041.setIndexBuffer(buffer208, "uint16");
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2040.drawIndirect(buffer2011, 0);
    device20.queue.submit([command_buffer201, ]);
    device30.queue.submit([command_buffer305, ]);
    render_pass_encoder3040.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2040.drawIndirect(buffer2017, 0);
    device30.queue.submit([command_buffer305, ]);
    render_pass_encoder2011.popDebugGroup();
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2020.draw(3);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2020.drawIndirect(buffer208, 0);
    render_pass_encoder2020.end();
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder2021.setIndexBuffer(buffer2013, "uint16");
    device30.queue.submit([]);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2040.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2031.popDebugGroup();
    device50.queue.submit([]);
    render_pass_encoder2010.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2011.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2012.drawIndexed(3);
    render_pass_encoder3040.end();
    render_pass_encoder2041.drawIndexedIndirect(buffer2012, 0);
    device20.queue.submit([]);
    render_pass_encoder2012.drawIndexed(3);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2020.draw(3);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2011.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2011.drawIndirect(buffer204, 0);
    render_pass_encoder2012.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2040.draw(3);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer209, 0);
    render_pass_encoder2031.drawIndirect(buffer2011, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2020.setIndexBuffer(buffer208, "uint16");
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2030.end();
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer2015, "uint16");
    device50.queue.submit([]);
    render_pass_encoder2041.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder3040.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder3040.popDebugGroup();
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder2010.drawIndirect(buffer204, 0);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2011.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2040.end();
    render_pass_encoder2041.draw(3);
    render_pass_encoder2031.drawIndexed(3);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2030.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2031.draw(3);
    render_pass_encoder2030.drawIndexedIndirect(buffer2021, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2012.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2040.end();
    render_pass_encoder2040.draw(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2040.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2020.drawIndirect(buffer207, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer208, 0);
    render_pass_encoder3040.drawIndexedIndirect(buffer304, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2021.end();
    render_pass_encoder2031.drawIndirect(buffer2016, 0);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2030.end();
    render_pass_encoder2012.popDebugGroup();
    device20.queue.submit([command_buffer201, command_buffer203, command_buffer204, ]);
    render_pass_encoder2020.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer2019, 0);
    render_pass_encoder2010.drawIndirect(buffer200, 0);
    render_pass_encoder2030.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3040.drawIndexedIndirect(buffer304, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder2040.draw(3);
    render_pass_encoder2012.draw(3);
    render_pass_encoder2040.endOcclusionQuery()
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2031.drawIndexed(3);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2010.end();
    render_pass_encoder2031.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2040.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder3040.drawIndirect(buffer302, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2020.draw(3);
    render_pass_encoder2041.drawIndirect(buffer2010, 0);
    render_pass_encoder2040.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer2018, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2021.drawIndirect(buffer2019, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2012.drawIndirect(buffer206, 0);
    render_pass_encoder2030.drawIndirect(buffer205, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer203, 0);
    render_pass_encoder2012.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2021.drawIndexed(3);
    device10.queue.submit([]);
    render_pass_encoder3040.drawIndexedIndirect(buffer303, 0);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder3040.draw(3);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer2019, 0);
    render_pass_encoder3040.end();
}