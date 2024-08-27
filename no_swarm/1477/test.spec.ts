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
        powerPreference: "low-power"
    });
    
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.pushErrorScope("internal");
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array0 = new Float32Array([-0.25, 1.0, 0.0, -0.75, -0.75, 0.75, 0.0, 0.5, 0.5, 1.0, 0.75, 0.25, 0.0, -1.0, 0.5, 0.0, 0.25, 1.0, -0.75, 0.75, -0.75, -0.75, 0.75, 0.75, -0.5, 0.25, -0.5, -1.0, 0.0, 0.25, -1.0, -1.0, 0.75, 0.5, 0.5, -0.25, 1.0, 0.0, 0.75, -0.75, 0.25, -0.75, -0.75, -0.5, 0.25, 0.75, 1.0, -0.5, 0.75, -0.75, 0.0, -1.0, -1.0, -0.5, 0.75, 0.75, 1.0, 1.0, 1.0, 1.0, 0.75, 0.0, 0.75, -0.75, -0.25, 1.0, 0.25, -0.75, -0.25, -1.0, 0.25, 0.25, -0.75, -0.5, -0.25, -0.75, 1.0, 0.0, 0.75, -0.75, -0.25, 1.0, -1.0, -1.0, 0.75, -0.25, -0.25, 0.75, -0.25, 0.25, 0.5, -0.5, 0.25, 0.5, 1.0, 1.0, 1.0, 0.5, -0.75, -0.75, ]);
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    
    buffer101.destroy()
    
    
    buffer100.destroy()
    query101.destroy()
    
    device10.destroy();
    
    const array1 = new Float32Array([-1.0, -0.5, -0.5, 0.5, 1.0, 0.75, 1.0, 0.5, -0.75, -1.0, 1.0, -0.5, 0.5, -0.25, -0.5, -1.0, 0.75, -0.5, -0.25, -0.25, 0.0, 1.0, -0.5, 0.0, -0.25, 0.0, -0.5, -0.75, -0.75, 0.75, -0.75, -0.75, -1.0, -0.75, 0.25, 0.75, -0.25, -0.25, 0.25, 0.75, 0.75, -0.5, -0.75, 1.0, 0.75, -0.25, -1.0, 0.25, 0.75, 0.0, -0.5, 1.0, 0.5, 0.0, 0.0, 0.0, 0.0, 0.25, 0.5, 0.5, -0.5, 1.0, -0.75, -0.75, 0.0, 0.25, 0.25, -0.25, 0.0, 1.0, 0.25, 0.25, -0.75, 0.75, -1.0, 0.0, -0.5, 0.0, 0.0, 0.0, -0.25, 0.0, -0.5, 0.0, 0.0, -0.5, 0.25, -0.25, -1.0, 0.75, -0.75, -1.0, 0.5, 0.5, -0.75, 0.0, 0.75, -0.75, -1.0, 0.0, ]);
    const array2 = new Float32Array([1.0, 0.5, 0.5, 1.0, -0.75, -0.5, -0.25, 1.0, 0.75, -0.5, -0.25, -1.0, 0.5, 1.0, -1.0, -0.5, 0.75, 0.75, 0.75, 0.75, -0.25, -0.75, 0.0, 0.0, -0.25, -0.25, 0.5, 0.25, 0.0, 0.0, 0.75, 0.25, -0.5, 0.0, 0.0, -0.25, 1.0, -0.75, -1.0, 0.75, -0.75, 0.25, 1.0, 0.0, 1.0, -0.25, -1.0, 1.0, 0.25, 0.75, 0.5, -1.0, -0.75, -0.25, -1.0, -0.5, -1.0, -1.0, 0.5, 1.0, -0.75, -1.0, -0.25, 0.0, 1.0, 1.0, -0.25, 1.0, -0.25, 0.5, -0.5, -1.0, 0.5, -0.75, 0.5, -1.0, 0.0, 0.25, 0.0, 0.75, -0.5, -0.5, 0.0, 1.0, 0.75, 0.0, 0.75, -0.25, 1.0, -0.25, 0.25, -1.0, -0.5, 0.25, -0.5, -0.75, 0.75, -1.0, -0.25, -0.5, ]);
    const array3 = new Float32Array([0.25, -1.0, 0.0, -1.0, -1.0, 0.0, 0.0, 0.0, 1.0, 1.0, -0.75, -1.0, 0.25, 0.25, -0.25, -0.25, -0.25, 1.0, 1.0, 0.75, -1.0, -0.5, 1.0, -0.75, 0.75, 0.5, -0.25, -0.75, 0.0, 0.75, 0.75, 0.0, 0.25, 0.25, -1.0, 0.25, -1.0, 0.25, -0.25, -1.0, -0.75, 0.75, 1.0, -0.75, 0.5, 0.75, -0.25, 0.0, 0.0, -0.75, -0.25, -1.0, 0.0, -0.75, 0.75, 1.0, 0.75, 1.0, 0.5, -0.75, -0.5, -0.75, -0.5, -0.75, 0.25, 0.0, 0.5, 1.0, 1.0, 0.0, 0.75, 0.25, -0.75, -0.75, 0.75, 1.0, 0.75, 0.5, 0.25, -0.75, 0.5, 0.0, -0.25, -1.0, -0.5, -1.0, 0.0, 0.25, -1.0, 0.5, -0.75, 0.25, -0.5, -0.25, 0.25, 0.25, -0.25, 0.25, -0.75, 0.25, ]);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    device00.pushErrorScope("out-of-memory");
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    device30.pushErrorScope("validation");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
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
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba32float",
        dimension: "2d"
    });
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba32sint",
        dimension: "2d"
    });
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
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer203,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    command_encoder200.insertDebugMarker("mymarker");
    buffer200.destroy()
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16uint",
        dimension: "2d"
    });
    render_bundle_encoder200.setVertexBuffer(0, buffer203);
    
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
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
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    
    command_encoder200.clearBuffer(buffer201);
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    texture301.destroy();
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    buffer202.destroy()
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
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
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
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
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    query300.destroy()
    texture201.destroy();
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    texture300.destroy();
    
    render_bundle_encoder300.popDebugGroup();
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query201
    });
    
    render_pass_encoder2000.pushDebugGroup("group_marker");
    
    render_bundle_encoder200.draw(3);
    
    query300.destroy()
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2021,
            },
        ],
        occlusionQuerySet: query200
    });
    render_pass_encoder2001.pushDebugGroup("group_marker");
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
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2001.setStencilReference(1);
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder2000.insertDebugMarker("marker");
    {
        await buffer203.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer203.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer203.unmap();
        console.log(new Float32Array(data));
    }
    
    buffer201.destroy()
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query300.destroy()
    render_pass_encoder2000.setPipeline(render_pipeline200);
    
    device20.queue.writeTexture({ texture: texture203 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3030,
            },
        ],
        occlusionQuerySet: query301
    });
    
    
    render_pass_encoder2000.insertDebugMarker("marker");
    render_pass_encoder2001.setPipeline(render_pipeline200);
    const texture_view3031 = texture303.createView({ label: "texture_view3031" });
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32sint",
        dimension: "2d"
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_bundle_encoder301.insertDebugMarker("marker");
    
    render_pass_encoder3000.setViewport(0, 0, texture303.width / 2, texture303.height / 2, 0, 1);
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2000.setStencilReference(1);
    render_pass_encoder2000.beginOcclusionQuery(0)
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    render_pass_encoder3000.setStencilReference(1);
    
    render_pass_encoder3000.beginOcclusionQuery(0)
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const texture_view3032 = texture303.createView({ label: "texture_view3032" });
    command_encoder200.copyTextureToTexture(
        {
            texture: texture202
        },
        {
            texture: texture202
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const render_pass_encoder3001 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    render_pass_encoder3000.pushDebugGroup("group_marker");
    device20.pushErrorScope("out-of-memory");
    render_pass_encoder2000.insertDebugMarker("marker");
    render_pass_encoder2000.insertDebugMarker("marker");
    render_pass_encoder3000.setScissorRect(0, 0, texture303.width / 2, texture303.height / 2);
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder3000.setStencilReference(1);
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    
    texture303.destroy();
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    render_pass_encoder2001.setStencilReference(1);
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    render_pass_encoder2001.insertDebugMarker("marker");
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer300 = command_encoder300.finish();
    
    
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
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
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    
    render_pass_encoder2000.popDebugGroup();
    texture203.destroy();
    
    render_pass_encoder2000.insertDebugMarker("marker");
    render_pass_encoder2000.setStencilReference(1);
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    render_pass_encoder3001.pushDebugGroup("group_marker");
    texture304.destroy();
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
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2000.endOcclusionQuery()
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    buffer203.destroy()
    render_pass_encoder3001.popDebugGroup();
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    buffer301.destroy()
    render_pass_encoder3000.setViewport(0, 0, texture303.width / 2, texture303.height / 2, 0, 1);
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    
    texture202.destroy();
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    compute_pass_encoder2000.setPipeline(compute_pipeline202);
    
    render_pass_encoder3000.setViewport(0, 0, texture303.width / 2, texture303.height / 2, 0, 1);
    render_pass_encoder3001.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2000.setBindGroup(0, bind_group201);
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
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline202.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group202);
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_bundle_encoder200.popDebugGroup();
    
    
    buffer206.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const texture_view3050 = texture305.createView({ label: "texture_view3050" });
    render_pass_encoder3001.executeBundles([render_bundle_encoder302, ])
    compute_pass_encoder2000.popDebugGroup()
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
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2001.setBindGroup(0, bind_group203);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3050,
            },
        ],
        occlusionQuerySet: query300
    });
    const render_pass_encoder3011 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3032,
            },
        ],
        occlusionQuerySet: undefined
    });
    buffer205.destroy()
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    render_pass_encoder3000.endOcclusionQuery()
    render_pass_encoder3011.executeBundles([])
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    command_encoder201.insertDebugMarker("mymarker");
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
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture_view3041 = texture304.createView({ label: "texture_view3041" });
    render_pass_encoder3010.pushDebugGroup("group_marker");
    
    const array4 = new Float32Array([0.75, 0.0, 0.0, 0.25, -1.0, -0.25, 0.5, 0.25, 0.75, 0.0, -0.25, -0.5, 1.0, -1.0, 0.25, 0.75, 0.0, -0.5, 0.25, -0.75, -0.75, 0.0, 1.0, 1.0, -0.5, 0.25, 0.75, -0.75, 0.0, 0.0, 0.5, 0.75, 1.0, -0.5, 0.5, 0.0, -0.5, 1.0, 1.0, -0.75, 0.25, -1.0, 0.25, 1.0, 0.0, -0.5, -0.75, -0.5, 0.75, 0.5, 0.25, -0.25, 0.25, 0.5, 0.75, -0.75, 0.75, -0.75, -1.0, 1.0, -1.0, -0.5, -0.75, -1.0, -0.25, -0.5, 0.0, 0.5, -0.25, -1.0, -0.75, -0.5, 1.0, 0.25, -0.25, -0.25, 0.75, 0.5, -0.25, 0.75, -0.75, 0.25, 0.5, 0.5, -0.5, 0.0, 0.75, 0.5, 0.0, -1.0, 0.0, 1.0, -0.75, -1.0, 1.0, 0.25, -0.25, -0.75, -0.5, 0.5, ]);
    query200.destroy()
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder3011.setScissorRect(0, 0, texture303.width / 2, texture303.height / 2);
    render_pass_encoder3000.beginOcclusionQuery(0)
    render_pass_encoder3011.setViewport(0, 0, texture303.width / 2, texture303.height / 2, 0, 1);
    render_pass_encoder3011.setScissorRect(0, 0, texture303.width / 2, texture303.height / 2);
    device30.queue.writeTexture({ texture: texture305 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_pass_encoder2000.beginOcclusionQuery(0)
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
    device00.pushErrorScope("out-of-memory");
    render_pass_encoder3010.setStencilReference(1);
    
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer207,
        0
    )
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query300.destroy()
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder201.copyBufferToTexture(
        {
            buffer: buffer207
        },
        {
            texture: texture200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder3011.setScissorRect(0, 0, texture303.width / 2, texture303.height / 2);
    compute_pass_encoder2000.insertDebugMarker("marker")
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2040,
            },
        ],
        occlusionQuerySet: query201
    });
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder2001.setVertexBuffer(0, buffer205);
    render_pass_encoder2000.setVertexBuffer(0, buffer207);
    
    buffer207.destroy()
    render_pass_encoder2000.pushDebugGroup("group_marker");
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    render_bundle_encoder200.pushDebugGroup("group_marker");
    compute_pass_encoder2000.insertDebugMarker("marker")
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    render_pass_encoder3011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer300.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_pass_encoder2000.setIndexBuffer(buffer209, "uint16");
    
    query300.destroy()
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2000.popDebugGroup();
    render_bundle_encoder301.popDebugGroup();
    render_pass_encoder3000.executeBundles([])
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3040,
            },
        ],
        occlusionQuerySet: undefined
    });
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
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder3011.setStencilReference(1);
    {
        await buffer209.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer209.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer209.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer205,
        0
    )
    buffer208.destroy()
    render_bundle_encoder200.draw(3);
    
    const texture_view3022 = texture302.createView({ label: "texture_view3022" });
    render_pass_encoder2010.executeBundles([])
    query200.destroy()
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder2001.insertDebugMarker("marker");
    render_pass_encoder2010.executeBundles([])
    device50.queue.writeBuffer(buffer501, 0, array3, 0, array3.length);
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder2001.setIndexBuffer(buffer208, "uint16");
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2021,
            },
        ],
        occlusionQuerySet: undefined
    });
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    render_pass_encoder2001.drawIndexedIndirect(buffer2010, 0);
    
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    render_pass_encoder2010.setScissorRect(0, 0, texture204.width / 2, texture204.height / 2);
    texture302.destroy();
    {
        await buffer501.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer501.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer501.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder3011.pushDebugGroup("group_marker");
    device50.queue.submit([command_buffer500, ]);
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    texture200.destroy();
    device30.queue.writeTexture({ texture: texture305 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3010.setStencilReference(1);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_pass_encoder2001.drawIndexedIndirect(buffer205, 0);
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
    render_bundle_encoder200.insertDebugMarker("marker");
    
    buffer209.destroy()
    
    render_pass_encoder3011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer500.destroy()
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_pass_encoder2011.setPipeline(render_pipeline201);
    const bind_group_layout205 = device20.createBindGroupLayout({ 
        label: "bind_group_layout205",
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
    render_pass_encoder3011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    render_bundle_encoder301.insertDebugMarker("marker");
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    device50.queue.writeTexture({ texture: texture500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer205, 0, array4, 0, array4.length);
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
    device30.queue.writeTexture({ texture: texture305 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3011.setScissorRect(0, 0, texture303.width / 2, texture303.height / 2);
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    
    render_pass_encoder3000.setScissorRect(0, 0, texture303.width / 2, texture303.height / 2);
    render_pass_encoder3001.executeBundles([])
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2010.setViewport(0, 0, texture204.width / 2, texture204.height / 2, 0, 1);
    
    query500.destroy()
    
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2012,
                },
            },
        ],
    });

    render_pass_encoder2011.setBindGroup(0, bind_group204);
    buffer2012.destroy()
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    render_pass_encoder2010.setPipeline(render_pipeline201);
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    texture204.destroy();
    render_pass_encoder3010.setScissorRect(0, 0, texture305.width / 2, texture305.height / 2);
    command_encoder501.resolveQuerySet(
        query502,
        0,
        32,
        buffer500,
        0
    )
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder2011.setVertexBuffer(0, buffer202);
    render_pass_encoder3011.setStencilReference(1);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
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
    render_pass_encoder3000.insertDebugMarker("marker");
    device50.queue.writeTexture({ texture: texture500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2011.insertDebugMarker("marker");
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    buffer204.destroy()
    
    render_pass_encoder3001.executeBundles([])
    device30.queue.writeTexture({ texture: texture305 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture303 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query301.destroy()
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
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2010.setBindGroup(0, bind_group205);
    render_pass_encoder3001.setPipeline(render_pipeline300);
    const command_buffer501 = command_encoder501.finish();
    compute_pass_encoder2000.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2011.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2011.draw(3);
    render_pass_encoder2000.endOcclusionQuery()
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder2001.end();
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder3000.setPipeline(render_pipeline300);
    render_pass_encoder3011.popDebugGroup();
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder3000.endOcclusionQuery()
    render_pass_encoder2011.drawIndirect(buffer200, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2000.end();
    render_pass_encoder3010.setPipeline(render_pipeline300);
    const command_buffer800 = command_encoder800.finish();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder2010.setVertexBuffer(0, buffer209);
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder3020.setPipeline(render_pipeline300);
    render_pass_encoder2010.drawIndirect(buffer208, 0);
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
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3000.setBindGroup(0, bind_group300);
    render_pass_encoder2011.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder3011.setPipeline(render_pipeline300);
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer306 = device30.createBuffer({
        label: "buffer306",
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
                    buffer: buffer305,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer306,
                },
            },
        ],
    });

    render_pass_encoder3010.setBindGroup(0, bind_group301);
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder2011.end();
    render_pass_encoder3010.popDebugGroup();
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer307,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer308,
                },
            },
        ],
    });

    render_pass_encoder3001.setBindGroup(0, bind_group302);
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer309,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3010,
                },
            },
        ],
    });

    render_pass_encoder3020.setBindGroup(0, bind_group303);
    render_pass_encoder3000.setVertexBuffer(0, buffer302);
    render_pass_encoder3020.setVertexBuffer(0, buffer305);
    render_pass_encoder2010.end();
    compute_pass_encoder2000.end();
    render_pass_encoder3020.setIndexBuffer(buffer301, "uint16");
    command_encoder200.popDebugGroup()
    render_pass_encoder3000.setIndexBuffer(buffer301, "uint16");
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3012,
                },
            },
        ],
    });

    render_pass_encoder3011.setBindGroup(0, bind_group304);
    render_pass_encoder3000.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder3020.setIndexBuffer(buffer3010, "uint16");
    render_pass_encoder3020.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder3000.end();
    render_pass_encoder3020.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder3020.setIndexBuffer(buffer301, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3020.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder3020.draw(3);
    render_pass_encoder2011.drawIndirect(buffer204, 0);
    render_pass_encoder3001.setVertexBuffer(0, buffer301);
    render_pass_encoder2010.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2013, 0);
    render_pass_encoder3011.setVertexBuffer(0, buffer3010);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3000.draw(3);
    render_pass_encoder2010.drawIndirect(buffer204, 0);
    render_pass_encoder3011.draw(3);
    render_pass_encoder3001.setIndexBuffer(buffer302, "uint16");
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder2000.end();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2016, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2016, 0);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2000.end();
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder3000.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3011.drawIndirect(buffer308, 0);
    render_pass_encoder2001.popDebugGroup();
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder3011.drawIndirect(buffer308, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2000.drawIndirect(buffer204, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder3011.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder2010.popDebugGroup();
    device50.queue.submit([command_buffer500, ]);
    device20.queue.submit([command_buffer201, ]);
    device80.queue.submit([]);
    render_pass_encoder3001.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder3010.setVertexBuffer(0, buffer307);
    device30.queue.submit([command_buffer300, ]);
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    render_pass_encoder3011.end();
    render_pass_encoder3020.end();
    render_pass_encoder3010.draw(3);
    render_pass_encoder3020.popDebugGroup();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2017, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2017, 0);
    render_pass_encoder2000.end();
    render_pass_encoder3000.drawIndexedIndirect(buffer302, 0);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2000.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder3001.end();
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder2010.drawIndirect(buffer2013, 0);
    device30.queue.submit([]);
    render_pass_encoder2001.drawIndirect(buffer204, 0);
    const command_buffer301 = command_encoder301.finish();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2011.drawIndexedIndirect(buffer2016, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder3020.setIndexBuffer(buffer3011, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder3010.draw(3);
    render_pass_encoder2001.drawIndirect(buffer204, 0);
    render_pass_encoder3010.end();
    render_pass_encoder3000.endOcclusionQuery()
    compute_pass_encoder2000.end();
    render_pass_encoder3020.drawIndexedIndirect(buffer307, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder3000.setIndexBuffer(buffer301, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder2010.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3020.drawIndexed(3);
    render_pass_encoder2000.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder3001.drawIndirect(buffer3011, 0);
    render_pass_encoder3011.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder3001.drawIndexedIndirect(buffer307, 0);
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
        
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: compute_pipeline202.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group206);
    device50.queue.submit([command_buffer501, ]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2020, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2020, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder3011.end();
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2010.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder3011.drawIndexed(3);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3001.popDebugGroup();
    compute_pass_encoder2000.end();
    render_pass_encoder3000.drawIndexedIndirect(buffer308, 0);
    render_pass_encoder3020.drawIndirect(buffer306, 0);
    render_pass_encoder2010.drawIndirect(buffer204, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer309, 0);
    render_pass_encoder2010.drawIndirect(buffer2015, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder3001.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder3010.end();
    device30.queue.submit([]);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2000.drawIndirect(buffer2016, 0);
    render_pass_encoder3000.end();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3001.popDebugGroup();
}