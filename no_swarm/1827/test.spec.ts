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
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_buffer000 = command_encoder000.finish();
    const array0 = new Float32Array([0.0, -0.5, 0.0, 0.5, 1.0, -0.5, -0.25, -0.25, 0.75, 1.0, 0.25, 1.0, 0.25, 0.0, 1.0, -1.0, 0.75, -0.5, 0.0, -0.75, -0.5, -0.5, -0.25, -1.0, 0.25, 1.0, -0.25, -0.5, 0.25, 0.25, -0.5, 0.75, 0.25, 0.75, -0.25, -1.0, 0.5, -0.75, -1.0, 0.25, -0.5, 0.25, -0.5, 0.0, -0.25, -0.25, 0.75, -0.75, 0.25, 0.0, 0.0, -1.0, 0.75, 0.0, 0.0, -0.75, -0.5, 0.0, -0.75, 1.0, 0.5, -1.0, 0.0, -1.0, 0.0, 0.75, -0.5, -0.5, 1.0, 0.5, 1.0, 1.0, -0.75, -0.5, -0.25, 0.0, 0.0, -0.5, 0.0, 0.25, 0.75, 0.5, 0.25, 0.0, -0.25, -1.0, 1.0, -0.75, 0.0, 0.5, 0.0, -0.75, 0.75, 1.0, 1.0, 0.0, 0.25, -0.75, 1.0, 0.5, ]);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const command_buffer001 = command_encoder001.finish();
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("out-of-memory");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    
    const array1 = new Float32Array([0.5, 1.0, 0.5, 0.0, -0.25, -1.0, -0.75, 0.25, 1.0, 0.0, -1.0, 0.25, 0.0, 0.25, -0.25, 0.0, 0.75, 0.75, -0.5, -1.0, -0.5, -1.0, -0.75, 0.0, 0.75, 1.0, 0.0, 0.0, -0.5, 0.5, 0.25, -0.5, -0.75, -0.5, 0.5, -0.5, 0.0, 0.5, -1.0, -0.75, -0.5, 1.0, 0.5, -1.0, 1.0, -0.75, -1.0, 0.25, 0.5, -1.0, -0.25, -1.0, 0.75, 0.25, -0.25, 0.75, 0.5, 0.0, 0.25, -1.0, 1.0, -1.0, -0.75, 1.0, -0.25, -0.25, 1.0, 0.0, 0.75, 0.5, -1.0, -0.75, 0.5, 0.75, 0.0, 0.5, 1.0, 0.5, -0.5, 0.25, 1.0, 0.5, 0.25, -0.25, 0.25, 1.0, 0.75, -0.25, 0.5, 0.5, -0.25, 0.5, 0.0, -1.0, -0.25, -0.25, -1.0, -1.0, -1.0, -0.5, ]);
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
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
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer001.destroy()
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.destroy();
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    query100.destroy()
    
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    
    
    query201.destroy()
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
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
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
    render_bundle_encoder200.pushDebugGroup("group_marker");
    query101.destroy()
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_bundle_encoder200.popDebugGroup();
    
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    device10.destroy();
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    buffer200.destroy()
    
    device20.pushErrorScope("validation");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    command_encoder201.pushDebugGroup("mygroupmarker")
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const array2 = new Float32Array([-0.25, -1.0, -0.25, -1.0, -0.75, 0.0, 0.25, -0.25, 1.0, -0.5, -1.0, -0.25, 0.0, 0.75, 0.25, 0.5, 0.5, 0.75, 0.25, 1.0, 0.0, -0.5, 0.25, 0.0, 0.75, -0.5, -1.0, -0.25, 0.0, 0.25, -0.25, -0.25, 0.5, 0.0, 1.0, 0.0, -0.75, 0.75, 0.0, 0.25, 0.0, -0.75, -1.0, 0.75, 0.5, 0.0, 0.75, 0.5, 0.25, 0.25, 0.75, 1.0, -1.0, 0.0, 0.75, -0.75, 1.0, -1.0, 0.5, 0.75, 0.0, 0.75, 0.75, -0.75, -0.75, 1.0, 0.75, 0.25, 0.75, -0.75, 0.25, -0.75, -0.25, -1.0, 0.0, -0.75, 0.0, 0.25, 0.25, 0.0, -1.0, 1.0, -0.5, 0.0, -0.5, -0.25, 0.75, -0.25, 0.5, 0.75, 0.5, -0.75, 0.5, -0.5, 0.25, 0.5, 0.0, 1.0, 0.0, -0.5, ]);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const array3 = new Float32Array([0.0, -0.5, -0.5, 0.25, -1.0, -0.75, -0.5, 0.0, -1.0, 0.5, 0.25, 0.75, 0.5, -0.25, -0.5, -0.25, -0.75, -0.25, -0.5, -0.25, -0.5, 0.5, -0.5, 0.5, -0.5, 0.25, 0.0, 0.75, 0.0, 1.0, 0.25, 0.0, 0.5, 0.5, 1.0, 0.0, -0.75, 0.0, 0.5, 0.25, -0.25, -1.0, -1.0, 0.75, 0.5, 0.0, -0.5, -0.75, 1.0, -0.75, 0.0, -0.5, -0.5, -0.5, 0.25, 0.25, 0.5, 0.75, 1.0, 0.25, 0.5, -0.25, 1.0, -0.5, -0.5, -0.75, 0.75, -0.5, 0.0, -0.5, -1.0, 0.5, -1.0, 0.0, 1.0, 0.5, 0.0, 0.25, -1.0, 0.0, 0.0, 1.0, -0.75, -0.25, -0.25, -0.5, -0.5, -0.5, -0.25, -0.25, -0.75, -0.75, 0.75, 0.5, 0.0, 0.0, -0.75, 0.5, 0.75, 0.0, ]);
    device20.pushErrorScope("internal");
    buffer200.destroy()
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
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
    query200.destroy()
    query200.destroy()
    render_pass_encoder2010.executeBundles([])
    
    command_encoder200.insertDebugMarker("mymarker");
    
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    query200.destroy()
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    render_pass_encoder2011.executeBundles([])
    
    render_bundle_encoder200.popDebugGroup();
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    
    render_pass_encoder2010.executeBundles([])
    
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_pass_encoder2010.executeBundles([])
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2011.setStencilReference(1);
    render_pass_encoder2011.insertDebugMarker("marker");
    render_pass_encoder2011.pushDebugGroup("group_marker");
    device20.pushErrorScope("validation");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query201.destroy()
    texture200.destroy();
    render_pass_encoder2010.executeBundles([])
    const array4 = new Float32Array([-0.5, -0.75, 0.75, 0.75, -0.5, 0.25, 1.0, 1.0, 0.75, -1.0, -0.75, 0.75, -0.75, 1.0, 0.5, -0.5, 0.0, -0.75, 0.75, -1.0, -1.0, -0.5, 0.0, -0.25, -1.0, -1.0, 1.0, -1.0, 0.5, 0.5, 0.0, 0.75, -0.75, 1.0, -0.5, -0.5, -0.5, 0.5, -1.0, 1.0, -0.25, 0.75, -0.5, -1.0, -0.25, -0.25, 0.75, 0.75, 0.25, 0.5, -0.75, 1.0, 0.5, -0.5, 0.75, -1.0, -0.5, -0.75, 1.0, -0.5, -0.5, -0.5, -1.0, 0.75, 0.75, 1.0, -0.75, -0.75, 0.25, 0.5, 0.0, 0.5, 0.75, -1.0, 0.0, -0.25, 0.25, -0.25, 0.5, -0.25, -1.0, 1.0, 0.0, -0.5, -0.25, -0.75, -0.5, 0.0, -0.75, 0.5, 1.0, 0.0, 0.0, 0.75, 0.0, 0.25, 0.5, -0.5, 0.75, 0.0, ]);
    
    render_pass_encoder2011.insertDebugMarker("marker");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    
    texture201.destroy();
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder2011.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2011.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    buffer201.destroy()
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_pass_encoder2011.setStencilReference(1);
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder2020.setPipeline(render_pipeline200);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_pass_encoder2011.insertDebugMarker("marker");
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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

    render_pass_encoder2020.setBindGroup(0, bind_group200);
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder2011.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2011.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    query201.destroy()
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device30.destroy();
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    
    render_pass_encoder2010.executeBundles([render_bundle_encoder200, ])
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder2020.pushDebugGroup("group_marker");
    
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2011.popDebugGroup();
    buffer204.destroy()
    render_pass_encoder2011.insertDebugMarker("marker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    render_pass_encoder2010.executeBundles([])
    render_bundle_encoder200.insertDebugMarker("marker");
    device40.destroy();
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder2020.popDebugGroup()
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder2020.insertDebugMarker("marker")
    buffer200.destroy()
    const array5 = new Float32Array([-0.75, 0.75, 0.5, 0.0, -0.75, 1.0, 0.75, 0.75, -0.25, -1.0, -0.75, 0.75, -0.5, 0.0, 0.5, 0.75, 0.25, 1.0, 0.0, -0.75, 0.75, 0.25, 1.0, 0.0, -0.5, 0.0, 0.25, -1.0, 0.25, -1.0, -0.5, 0.0, -1.0, -0.25, -0.25, -0.25, -0.5, 0.25, 1.0, 0.25, -0.5, -0.25, -0.25, 0.75, 0.0, 1.0, -1.0, 0.75, -0.5, 0.0, 0.75, -0.5, -1.0, 1.0, 0.5, 0.75, 0.0, 1.0, -0.25, -0.75, 0.0, 0.0, -0.25, -0.75, 0.75, 0.75, 0.25, 0.0, 0.5, 0.25, -0.75, -0.25, 0.0, -0.5, 0.0, 0.0, -1.0, 0.5, 0.5, 0.5, -0.75, 0.5, 0.25, 0.5, -0.5, 0.5, 0.5, 0.5, -0.5, 0.25, 0.75, -0.25, -1.0, -0.5, 0.0, 0.0, 0.75, -0.5, 0.25, -0.75, ]);
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
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
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
    
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    render_pass_encoder2011.insertDebugMarker("marker");
    
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
    
    render_pass_encoder2020.insertDebugMarker("marker");
    
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    compute_pass_encoder2000.popDebugGroup()
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    render_pass_encoder2011.insertDebugMarker("marker");
    
    device20.pushErrorScope("out-of-memory");
    render_bundle_encoder201.insertDebugMarker("marker");
    
    render_pass_encoder2010.pushDebugGroup("group_marker");
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
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
        occlusionQuerySet: query201
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_pass_encoder2012.executeBundles([render_bundle_encoder201, ])
    buffer000.destroy()
    const array6 = new Float32Array([0.25, 0.25, 0.25, -1.0, -0.75, -1.0, 0.25, -1.0, 0.0, -1.0, -0.25, 1.0, -0.5, -1.0, -1.0, 0.25, 0.25, -1.0, 0.25, -1.0, 1.0, -0.75, 0.75, 0.5, 0.5, 1.0, 0.75, 0.75, 0.75, 0.5, 0.0, -0.5, -1.0, -0.25, -0.5, -0.75, 1.0, 0.0, 0.0, 0.75, -1.0, 0.5, -0.5, -1.0, 1.0, 0.75, 1.0, 1.0, -1.0, -0.75, -1.0, 0.75, -0.25, 1.0, -0.5, 0.5, 0.25, 0.25, 0.0, -0.75, -0.75, 0.0, -0.75, -1.0, 0.25, 1.0, -0.5, -0.5, 0.0, 0.5, -0.25, -1.0, -0.5, -0.75, -0.25, 0.75, -0.5, 1.0, 0.5, -1.0, 0.75, 0.0, -1.0, -0.75, 1.0, 0.75, 0.0, 1.0, 0.0, -0.5, 0.0, 0.0, 0.75, 0.5, 0.25, 0.75, 0.75, -1.0, 1.0, 0.5, ]);
    render_bundle_encoder202.pushDebugGroup("group_marker");
    buffer203.destroy()
    
    render_pass_encoder2011.setPipeline(render_pipeline200);
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_pass_encoder2012.setPipeline(render_pipeline201);
    render_pass_encoder2010.setPipeline(render_pipeline200);
    render_bundle_encoder200.popDebugGroup();
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
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2012.setBindGroup(0, bind_group201);
    command_encoder203.clearBuffer(buffer204);
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    device20.queue.writeBuffer(buffer206, 0, array4, 0, array4.length);
    render_bundle_encoder201.setPipeline(render_pipeline200);
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    render_pass_encoder2011.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    command_encoder203.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder200.insertDebugMarker("marker");
    buffer202.destroy()
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    compute_pass_encoder2000.popDebugGroup()
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder2020.popDebugGroup()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder200.setPipeline(render_pipeline200);
    buffer202.destroy()
    
    render_pass_encoder2011.setStencilReference(1);
    render_pass_encoder2020.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2010.setStencilReference(1);
    buffer205.destroy()
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: query201
    });
    
    
    query201.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder2020.insertDebugMarker("marker");
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    render_pass_encoder2000.pushDebugGroup("group_marker");
    
    
    
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    
    render_bundle_encoder201.popDebugGroup();
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder2030.insertDebugMarker("marker")
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2000.popDebugGroup();
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_bundle_encoder200.setBindGroup(0, bind_group202);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder2000.setPipeline(render_pipeline200);
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    query200.destroy()
    query201.destroy()
    compute_pass_encoder2000.setPipeline(compute_pipeline201);
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder2030.popDebugGroup()
    
    render_bundle_encoder202.setPipeline(render_pipeline200);
    device20.queue.writeTexture({ texture: texture203 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder202.insertDebugMarker("marker");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    buffer202.destroy()
    compute_pass_encoder2020.setPipeline(compute_pipeline201);
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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

    render_pass_encoder2010.setBindGroup(0, bind_group203);
    
    query200.destroy()
    render_pass_encoder2020.setStencilReference(1);
    compute_pass_encoder2000.popDebugGroup()
    device20.queue.writeTexture({ texture: texture203 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2000.setStencilReference(1);
    const command_buffer203 = command_encoder203.finish();
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
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2020.setBindGroup(0, bind_group204);
    
    command_encoder201.copyBufferToTexture(
        {
            buffer: buffer209
        },
        {
            texture: texture203
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    query200.destroy()
    
    render_pass_encoder2020.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    buffer208.destroy()
    device20.pushErrorScope("out-of-memory");
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2014,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group205);
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer2013.destroy()
    
    
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    command_encoder201.copyBufferToBuffer(
        buffer208,
        0,
        buffer207,
        0,
        400
    );
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeTexture({ texture: texture203 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    const sampler208 = device20.createSampler( { label: "sampler208" } );
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2020.dispatchWorkgroups(100);
    
    
    buffer2014.destroy()
    const bind_group_layout901 = device90.createBindGroupLayout({ 
        label: "bind_group_layout901",
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
    render_pass_encoder2000.popDebugGroup();
    command_encoder200.copyBufferToTexture(
        {
            buffer: buffer200
        },
        {
            texture: texture203
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder202.insertDebugMarker("marker");
    render_pass_encoder2020.setStencilReference(1);
    
    device20.queue.writeTexture({ texture: texture203 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture203 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer209.destroy()
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_pass_encoder2020.insertDebugMarker("marker");
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const texture_view2032 = texture203.createView({ label: "texture_view2032" });
    
    render_pass_encoder2000.setStencilReference(1);
    
    
    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2016,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group206);
    const render_pipeline900 = device90.createRenderPipeline({
        label: "render_pipeline900",
        vertex: {
            module: shader_module901,
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
            module: shader_module901,
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
    compute_pass_encoder2030.insertDebugMarker("marker")
    render_pass_encoder2011.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module902.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    compute_pass_encoder2030.setPipeline(compute_pipeline204);
    
    buffer2015.destroy()
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer2012.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2018,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group207);
    render_pass_encoder2020.setVertexBuffer(0, buffer203);
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    device20.queue.submit([]);
    render_bundle_encoder900.setPipeline(render_pipeline900);
    const texture_view2033 = texture203.createView({ label: "texture_view2033" });
    buffer206.destroy()
    device90.pushErrorScope("internal");
    render_pass_encoder2001.setPipeline(render_pipeline202);
    buffer209.destroy()
    render_pass_encoder2020.popDebugGroup();
    
    buffer2017.destroy()
    render_pass_encoder2011.insertDebugMarker("marker");
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2019, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2019, 0);
    render_bundle_encoder900.insertDebugMarker("marker");
    const pipeline_layout901 = device90.createPipelineLayout({ 
        label: "pipeline_layout901",
        bindGroupLayouts: [bind_group_layout901]
    });
    const compute_pipeline900 = device90.createComputePipeline({
        label: "compute_pipeline900",
        layout: pipeline_layout901,
        compute: {
            module: shader_module902,
            entryPoint: "main"
        }
    });
    
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder202.setVertexBuffer(0, buffer202);
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    buffer2012.destroy()
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder202.setIndexBuffer(buffer2017, "uint16");
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module208,
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
            module: shader_module208,
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
    device20.queue.writeTexture({ texture: texture202 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture203 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder2020.drawIndirect(buffer2010, 0);
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    render_pass_encoder2020.end();
    command_encoder204.copyBufferToTexture(
        {
            buffer: buffer202
        },
        {
            texture: texture203
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder202.drawIndexedIndirect(buffer200, 0);
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2032,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    compute_pass_encoder2020.end();
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    device20.queue.writeBuffer(buffer2016, 0, array3, 0, array3.length);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder2040.setPipeline(render_pipeline202);
    device60.pushErrorScope("internal");
    
    render_pass_encoder2012.setStencilReference(1);
    
    compute_pass_encoder2030.end();
    render_pass_encoder2012.setVertexBuffer(0, buffer209);
    const command_buffer501 = command_encoder501.finish();
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2022,
                },
            },
        ],
    });

    render_pass_encoder2001.setBindGroup(0, bind_group208);
    render_pass_encoder2001.setVertexBuffer(0, buffer2010);
    render_pass_encoder2001.drawIndirect(buffer207, 0);
    render_pass_encoder2001.end();
    compute_pass_encoder2000.end();
    render_pass_encoder2001.setIndexBuffer(buffer2010, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2012.draw(3);
    render_pass_encoder2012.drawIndirect(buffer2019, 0);
    render_pass_encoder2020.popDebugGroup();
    const command_buffer204 = command_encoder204.finish();
    render_pass_encoder2010.setVertexBuffer(0, buffer207);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer209, 0);
    device20.queue.submit([command_buffer204, ]);
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder2001.popDebugGroup();
    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
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
                    buffer: buffer2023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2024,
                },
            },
        ],
    });

    render_pass_encoder2000.setBindGroup(0, bind_group209);
    render_pass_encoder2000.setVertexBuffer(0, buffer2018);
    render_pass_encoder2011.popDebugGroup();
    device60.queue.submit([]);
    render_pass_encoder2000.drawIndirect(buffer204, 0);
    render_pass_encoder2010.draw(3);
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2026 = device20.createBuffer({
        label: "buffer2026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2026,
                },
            },
        ],
    });

    render_pass_encoder2011.setBindGroup(0, bind_group2010);
    const buffer2027 = device20.createBuffer({
        label: "buffer2027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2028 = device20.createBuffer({
        label: "buffer2028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2028,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2011);
    device20.queue.submit([]);
    render_pass_encoder2011.setVertexBuffer(0, buffer2017);
    render_pass_encoder2001.end();
    render_pass_encoder2011.drawIndirect(buffer2016, 0);
    render_pass_encoder2011.end();
    const command_buffer002 = command_encoder002.finish();
    const buffer2029 = device20.createBuffer({
        label: "buffer2029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2030 = device20.createBuffer({
        label: "buffer2030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2030,
                },
            },
        ],
    });

    render_pass_encoder2040.setBindGroup(0, bind_group2012);
    render_pass_encoder2011.draw(3);
    render_pass_encoder2040.setVertexBuffer(0, buffer2030);
    render_pass_encoder2001.drawIndexedIndirect(buffer2030, 0);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer002, ]);
    render_pass_encoder2040.draw(3);
    render_pass_encoder2040.drawIndirect(buffer2021, 0);
    render_pass_encoder2001.draw(3);
    device40.queue.submit([]);
    render_pass_encoder2011.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2040.drawIndirect(buffer2021, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2000.drawIndirect(buffer209, 0);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2040.end();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2019, 0);
    render_pass_encoder2000.end();
    compute_pass_encoder2000.end();
    render_pass_encoder2001.setIndexBuffer(buffer2012, "uint16");
    const buffer2031 = device20.createBuffer({
        label: "buffer2031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2032 = device20.createBuffer({
        label: "buffer2032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2013 = device20.createBindGroup({
        label: "bind_group2013",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2032,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2013);
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder2000.setIndexBuffer(buffer2010, "uint16");
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2033 = device20.createBuffer({
        label: "buffer2033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2033, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2033, 0);
    device90.queue.submit([]);
    render_pass_encoder2001.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer207, 0);
    render_pass_encoder2001.drawIndirect(buffer2020, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2032, "uint16");
    device50.queue.submit([]);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2034 = device20.createBuffer({
        label: "buffer2034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2034, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2034, 0);
    compute_pass_encoder2020.end();
    command_encoder201.popDebugGroup()
    device50.queue.submit([command_buffer500, command_buffer501, ]);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2011.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2040.drawIndirect(buffer2019, 0);
    device20.queue.submit([command_buffer200, command_buffer203, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder2011.drawIndirect(buffer2034, 0);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder2012.drawIndirect(buffer2018, 0);
    compute_pass_encoder2020.end();
    const command_buffer201 = command_encoder201.finish();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2020.setIndexBuffer(buffer201, "uint16");
    device80.queue.submit([]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2010.drawIndirect(buffer2019, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2020.drawIndirect(buffer2034, 0);
    render_pass_encoder2040.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer2019, 0);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2035 = device20.createBuffer({
        label: "buffer2035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2035, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2035, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2019, 0);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder2012.drawIndirect(buffer2034, 0);
    const buffer2036 = device20.createBuffer({
        label: "buffer2036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2037 = device20.createBuffer({
        label: "buffer2037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2014 = device20.createBindGroup({
        label: "bind_group2014",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2037,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2014);
    render_pass_encoder2040.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2011.drawIndirect(buffer2035, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2033, 0);
    device50.queue.submit([]);
    render_pass_encoder2012.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2040.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2034, 0);
    device50.queue.submit([]);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2001.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2033, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2020.popDebugGroup();
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2015, 0);
    const buffer2038 = device20.createBuffer({
        label: "buffer2038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2039 = device20.createBuffer({
        label: "buffer2039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2015 = device20.createBindGroup({
        label: "bind_group2015",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2039,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2015);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2011.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2001.drawIndirect(buffer2020, 0);
    render_pass_encoder2040.drawIndirect(buffer2033, 0);
    render_pass_encoder2040.draw(3);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2012.setIndexBuffer(buffer2030, "uint16");
    const buffer2040 = device20.createBuffer({
        label: "buffer2040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2041 = device20.createBuffer({
        label: "buffer2041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2016 = device20.createBindGroup({
        label: "bind_group2016",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2041,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2016);
    device80.queue.submit([]);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder2012.drawIndirect(buffer208, 0);
    render_pass_encoder2000.drawIndirect(buffer2020, 0);
    render_pass_encoder2012.setIndexBuffer(buffer201, "uint16");
    device80.queue.submit([]);
    compute_pass_encoder2000.end();
    render_pass_encoder2040.drawIndexedIndirect(buffer2035, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2042 = device20.createBuffer({
        label: "buffer2042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2042, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2042, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer2022, 0);
    device50.queue.submit([command_buffer501, ]);
    device20.queue.submit([]);
    render_pass_encoder2012.drawIndirect(buffer2019, 0);
    render_pass_encoder2040.end();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2043 = device20.createBuffer({
        label: "buffer2043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2043, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2043, 0);
    render_pass_encoder2020.end();
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2034, 0);
    device20.queue.submit([command_buffer204, ]);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2044 = device20.createBuffer({
        label: "buffer2044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2044, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2044, 0);
}