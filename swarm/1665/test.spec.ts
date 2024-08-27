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
    
    const array0 = new Float32Array([0.25, -1.0, 0.5, 0.25, -1.0, 0.0, 0.25, 0.0, 0.75, 0.25, 0.75, 0.25, -0.75, 0.25, 0.75, -0.75, -0.5, -0.5, -0.25, 1.0, 1.0, 0.75, -0.5, 0.75, 0.25, 0.0, 0.0, -0.75, 0.5, 0.0, 0.25, -0.75, 0.75, -0.5, -0.5, -0.25, -1.0, -0.5, 0.25, 1.0, -0.5, 0.5, -0.75, -0.5, 0.75, 1.0, 0.25, 0.75, 1.0, -0.5, 0.0, 0.75, 1.0, 0.5, -1.0, -0.5, -0.5, -0.5, 0.0, 0.0, 1.0, 0.25, -1.0, 0.0, 0.25, -0.25, 1.0, -1.0, -0.5, 0.5, 0.75, 0.75, 0.5, -1.0, -0.25, 1.0, -1.0, 1.0, -0.75, 0.0, 0.25, -1.0, -0.5, -0.25, -0.75, -1.0, -0.5, 0.25, 0.5, 0.75, -0.75, 0.75, 0.5, 0.25, 0.0, 0.25, 0.75, -1.0, 0.25, 0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([-0.75, -1.0, -0.5, -0.75, 0.25, -0.5, -0.5, -1.0, 0.0, -0.5, -0.25, 1.0, 0.5, -0.75, -1.0, 1.0, 0.0, 0.5, -1.0, -0.25, 0.25, 0.5, -1.0, 0.5, 0.25, 0.5, 0.0, -0.5, -0.25, -0.75, 0.0, 0.25, 0.0, -0.5, 0.25, 0.25, -0.25, -0.25, 0.5, 0.25, -1.0, -1.0, 1.0, 0.0, 0.5, -1.0, 0.75, 0.75, 0.25, 0.75, 0.75, 0.0, 0.25, -0.25, -1.0, 0.0, 0.0, -0.75, 0.75, 0.5, 0.0, -0.75, 0.0, 0.0, 1.0, -1.0, -0.5, 0.0, 1.0, 0.25, 0.0, -1.0, 0.25, 1.0, -1.0, -0.5, 0.0, -0.25, 0.0, -0.75, -1.0, -0.75, -0.25, -0.75, 0.75, 0.25, 0.25, -0.75, 0.5, 0.75, 0.5, 0.5, -1.0, 0.0, -0.5, 0.75, 0.25, -0.75, 0.5, 0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
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
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    buffer100.destroy()
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    device10.pushErrorScope("validation");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    buffer101.destroy()
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device50.destroy();
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
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
    query200.destroy()
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
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder100.copyBufferToBuffer(
        buffer100,
        0,
        buffer100,
        0,
        400
    );
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
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
    compute_pass_encoder1010.insertDebugMarker("marker")
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    query200.destroy()
    
    const array2 = new Float32Array([0.25, 1.0, -0.25, 0.75, 0.5, 0.75, 1.0, 0.5, -1.0, -1.0, -0.25, -1.0, -0.25, 0.0, -1.0, 0.5, 0.5, -0.5, 0.0, 1.0, 0.25, -0.5, -0.75, -0.5, 0.0, 0.75, -0.5, -1.0, 0.0, 0.25, 1.0, -0.5, -0.5, 0.25, 1.0, 0.5, -0.5, -0.75, -1.0, 0.75, -0.25, -0.75, -0.75, -1.0, -0.75, 1.0, 0.25, -0.75, 0.25, -0.75, 0.0, -1.0, -0.75, -0.25, -1.0, -0.25, 0.0, 0.75, -0.25, 0.5, 0.75, 0.25, 0.5, 1.0, -1.0, 0.5, 1.0, 1.0, 0.5, 0.0, -0.5, 0.75, -0.25, -1.0, -0.25, 1.0, -0.25, 0.5, 0.25, -0.75, -0.5, 0.0, 0.75, -0.5, 0.0, 0.0, -0.5, -1.0, 0.0, 0.25, 0.75, 0.25, 0.75, -0.25, 0.25, -0.25, -0.75, 0.5, -0.5, 0.0, ]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    buffer102.destroy()
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    buffer200.destroy()
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
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device30.destroy();
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    texture200.destroy();
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
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device10.pushErrorScope("out-of-memory");
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const texture202 = device20.createTexture({
        label: "texture202",
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
    query202.destroy()
    
    
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
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
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device00.destroy();
    query100.destroy()
    
    
    device30.destroy();
    render_bundle_encoder400.pushDebugGroup("group_marker");
    device10.destroy();
    const sampler400 = device40.createSampler( { label: "sampler400" } );
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
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    command_encoder200.clearBuffer(buffer200);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    
    device40.queue.submit([]);
    render_bundle_encoder400.insertDebugMarker("marker");
    command_encoder400.pushDebugGroup("mygroupmarker")
    const array3 = new Float32Array([-0.75, 0.0, 0.75, 1.0, 0.25, -0.75, -0.5, 1.0, -1.0, 0.75, 0.0, 0.25, 1.0, -0.25, -1.0, -0.75, 0.5, 0.0, 0.0, 0.0, 1.0, 0.75, -0.25, 0.25, -0.5, 0.25, -0.25, -0.75, 0.75, -0.25, -0.25, 0.25, 0.0, 0.25, -1.0, 0.5, 0.0, -0.5, 0.5, -0.75, 0.5, 1.0, 0.75, 0.75, -0.5, -1.0, 0.5, 0.25, -0.75, -0.75, 0.0, -0.25, -0.75, -0.25, -1.0, 0.75, -0.75, 0.5, 0.0, 0.0, 0.0, 0.75, 0.5, 0.75, -0.25, 1.0, 0.0, 0.25, -1.0, 0.0, 1.0, -0.25, 0.5, -0.25, 1.0, 0.25, -1.0, -0.75, 1.0, -0.25, 1.0, -0.25, -1.0, 0.75, -0.75, -1.0, -0.75, 0.5, 0.0, -0.25, -1.0, 0.0, 0.0, 0.0, 0.25, 1.0, -0.75, 1.0, -0.75, 0.75, ]);
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
    
    command_encoder400.insertDebugMarker("mymarker");
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    
    query200.destroy()
    command_encoder400.insertDebugMarker("mymarker");
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    query201.destroy()
    texture401.destroy();
    texture201.destroy();
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query201.destroy()
    device40.pushErrorScope("validation");
    
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    query200.destroy()
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    texture202.destroy();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    command_encoder401.pushDebugGroup("mygroupmarker")
    buffer400.destroy()
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("out-of-memory");
    query201.destroy()
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
    query400.destroy()
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    compute_pass_encoder4020.popDebugGroup()
    query400.destroy()
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.pushErrorScope("internal");
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture203 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device20.queue.writeTexture({ texture: texture203 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query200.destroy()
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    command_encoder401.insertDebugMarker("mymarker");
    device30.pushErrorScope("internal");
    
    command_encoder403.resolveQuerySet(
        query400,
        0,
        32,
        buffer401,
        0
    )
    const compute_pass_encoder4001 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4001" });
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
    
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
    query203.destroy()
    query401.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    buffer402.destroy()
    device20.queue.writeTexture({ texture: texture203 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    device20.queue.writeTexture({ texture: texture203 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    device20.queue.writeTexture({ texture: texture203 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder401.setPipeline(render_pipeline400);
    
    
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device50.destroy();
    buffer401.destroy()
    compute_pass_encoder4000.insertDebugMarker("marker")
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
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    command_encoder401.insertDebugMarker("mymarker");
    device20.queue.writeTexture({ texture: texture203 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder401.popDebugGroup()
    command_encoder404.pushDebugGroup("mygroupmarker")
    command_encoder403.resolveQuerySet(
        query402,
        0,
        32,
        buffer400,
        0
    )
    command_encoder401.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    compute_pass_encoder4020.insertDebugMarker("marker")
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    render_bundle_encoder200.insertDebugMarker("marker");
    
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query402.destroy()
    query203.destroy()
    compute_pass_encoder4020.insertDebugMarker("marker")
    command_encoder201.insertDebugMarker("mymarker");
    query200.destroy()
    const array4 = new Float32Array([0.75, -0.5, -1.0, 0.25, -1.0, 0.25, 0.75, 0.75, -1.0, -0.25, -0.5, 0.75, -1.0, 0.0, 0.75, -0.5, 0.25, -0.75, 0.0, 0.0, -0.5, 1.0, -0.25, -0.25, 0.5, -0.25, -1.0, 1.0, -1.0, -0.75, -0.5, -1.0, 0.5, -0.75, 0.0, 0.5, 0.25, 1.0, 0.5, -0.25, 0.5, 1.0, -0.25, -0.75, 0.5, -0.75, 0.75, -0.5, 0.5, 0.25, -0.5, -0.25, -0.5, -0.5, -0.25, 0.5, -0.5, -1.0, -0.75, 0.5, -0.5, 0.25, 0.25, 0.75, -0.75, 0.25, -0.5, 0.5, 0.0, -0.75, 0.5, 1.0, -1.0, -0.5, 1.0, 1.0, 0.25, -1.0, 1.0, 1.0, -0.5, -0.25, -1.0, 1.0, 0.25, 0.5, 0.0, 0.5, 0.25, 0.0, 0.75, -1.0, -0.75, 0.75, -0.75, 0.5, -0.75, -0.5, -0.25, 0.75, ]);
    query203.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    query400.destroy()
    query203.destroy()
    texture202.destroy();
    command_encoder201.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1000.popDebugGroup()
    query400.destroy()
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    command_encoder404.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder401.resolveQuerySet(
        query400,
        0,
        32,
        buffer401,
        0
    )
    device20.queue.writeTexture({ texture: texture203 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query401.destroy()
    command_encoder404.resolveQuerySet(
        query402,
        0,
        32,
        buffer400,
        0
    )
    query402.destroy()
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer403,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer404,
                },
            },
        ],
    });

    render_bundle_encoder401.setBindGroup(0, bind_group400);
    compute_pass_encoder4020.insertDebugMarker("marker")
    device20.queue.writeTexture({ texture: texture203 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.pushErrorScope("validation");
    command_encoder404.resolveQuerySet(
        query401,
        0,
        32,
        buffer400,
        0
    )
    command_encoder401.resolveQuerySet(
        query401,
        0,
        32,
        buffer400,
        0
    )
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    buffer200.destroy()
    command_encoder400.insertDebugMarker("mymarker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    command_encoder404.resolveQuerySet(
        query401,
        0,
        32,
        buffer400,
        0
    )
    query400.destroy()
    compute_pass_encoder4000.insertDebugMarker("marker")
    compute_pass_encoder4030.pushDebugGroup("group_marker")
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
    
    render_bundle_encoder400.insertDebugMarker("marker");
    command_encoder404.clearBuffer(buffer402);
    command_encoder403.resolveQuerySet(
        query402,
        0,
        32,
        buffer400,
        0
    )
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    device00.destroy();
    query402.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    command_encoder404.resolveQuerySet(
        query401,
        0,
        32,
        buffer403,
        0
    )
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder4000.popDebugGroup()
    command_encoder404.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    device50.destroy();
    query402.destroy()
    device20.pushErrorScope("out-of-memory");
    compute_pass_encoder4030.insertDebugMarker("marker")
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    command_encoder401.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    compute_pass_encoder4000.insertDebugMarker("marker")
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    command_encoder404.resolveQuerySet(
        query402,
        0,
        32,
        buffer400,
        0
    )
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    query203.destroy()
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    device40.queue.writeBuffer(buffer404, 0, array4, 0, array4.length);
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
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder400.setPipeline(render_pipeline403);
    command_encoder402.resolveQuerySet(
        query403,
        0,
        32,
        buffer400,
        0
    )
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device20.queue.writeTexture({ texture: texture203 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder404.resolveQuerySet(
        query403,
        0,
        32,
        buffer400,
        0
    )
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder4020.insertDebugMarker("marker")
    command_encoder405.insertDebugMarker("mymarker");
    command_encoder405.pushDebugGroup("mygroupmarker")
    query400.destroy()
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    compute_pass_encoder4000.insertDebugMarker("marker")
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_bundle_encoder401.setVertexBuffer(0, buffer401);
    command_encoder405.resolveQuerySet(
        query402,
        0,
        32,
        buffer401,
        0
    )
    device20.queue.writeTexture({ texture: texture203 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder405.resolveQuerySet(
        query400,
        0,
        32,
        buffer404,
        0
    )
    render_bundle_encoder401.insertDebugMarker("marker");
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder405.resolveQuerySet(
        query401,
        0,
        32,
        buffer400,
        0
    )
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    device60.destroy();
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    device00.destroy();
    render_bundle_encoder402.setPipeline(render_pipeline400);
    query206.destroy()
    compute_pass_encoder2000.popDebugGroup()
    device20.queue.writeTexture({ texture: texture203 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const array5 = new Float32Array([0.25, 1.0, 0.5, 0.5, -0.5, 0.0, -0.5, -0.5, -0.75, 0.0, -0.5, 0.5, 1.0, 0.5, 1.0, 1.0, -0.5, 0.25, -1.0, -0.75, 0.25, 1.0, -0.75, 0.25, -1.0, -1.0, 0.5, 0.5, -0.25, -0.25, 0.25, 0.0, 1.0, 1.0, 0.75, -0.25, 0.25, -0.25, 0.25, -0.5, 0.0, -1.0, 0.25, 0.5, -0.75, 0.25, -1.0, 1.0, -0.75, 1.0, -1.0, 0.75, 1.0, 0.0, -1.0, -0.5, -0.75, 0.5, -1.0, -1.0, -0.5, 0.25, -0.75, 0.75, -0.5, 0.5, -0.5, -1.0, -0.25, 1.0, 0.0, -0.75, 0.25, -0.5, -0.25, -1.0, -1.0, -0.5, 0.75, -0.75, -1.0, -0.75, 1.0, -0.25, 0.5, 0.5, -1.0, -0.5, -0.75, 0.5, -0.75, -0.5, 0.25, -1.0, 1.0, -0.5, -0.5, 0.0, 0.5, -0.75, ]);
    command_encoder404.popDebugGroup()
    compute_pass_encoder4000.insertDebugMarker("marker")
    compute_pass_encoder4010.popDebugGroup()
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
    device40.destroy();
    
    
    device20.queue.writeTexture({ texture: texture203 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    command_encoder202.pushDebugGroup("mygroupmarker")
    command_encoder202.insertDebugMarker("mymarker");
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    const compute_pass_encoder2001 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2001" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    texture203.destroy();
    device20.destroy();
    
    
    device70.pushErrorScope("validation");
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    render_bundle_encoder200.setPipeline(render_pipeline200);
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16uint",
        dimension: "2d"
    });
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query700.destroy()
    
    
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder700.insertDebugMarker("mymarker");
    device60.pushErrorScope("validation");
    command_encoder701.copyBufferToBuffer(
        buffer701,
        0,
        buffer701,
        0,
        400
    );
    command_encoder700.pushDebugGroup("mygroupmarker")
    
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder701.insertDebugMarker("mymarker");
    
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
    
    {
        await buffer701.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer701.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer701.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder700.clearBuffer(buffer700);
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device70.pushErrorScope("internal");
    
    const compute_pass_encoder4040 = command_encoder404.beginComputePass({ label: "compute_pass_encoder4040" });
    const sampler704 = device70.createSampler( { label: "sampler704" } );
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder700.insertDebugMarker("mymarker");
    render_bundle_encoder700.insertDebugMarker("marker");
    texture700.destroy();
    command_encoder701.pushDebugGroup("mygroupmarker")
    texture701.destroy();
    buffer700.destroy()
    query204.destroy()
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout102 = device10.createBindGroupLayout({ 
        label: "bind_group_layout102",
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
    render_bundle_encoder700.insertDebugMarker("marker");
    render_bundle_encoder701.pushDebugGroup("group_marker");
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    query701.destroy()
    query205.destroy()
    query700.destroy()
    compute_pass_encoder2001.pushDebugGroup("group_marker")
    compute_pass_encoder7010.insertDebugMarker("marker")
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    command_encoder600.pushDebugGroup("mygroupmarker")
    render_bundle_encoder401.insertDebugMarker("marker");
    command_encoder202.resolveQuerySet(
        query204,
        0,
        32,
        buffer201,
        0
    )
    device50.destroy();
    render_bundle_encoder701.insertDebugMarker("marker");
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query702.destroy()
    
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder7010.pushDebugGroup("group_marker")
    
    compute_pass_encoder7010.insertDebugMarker("marker")
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    command_encoder700.resolveQuerySet(
        query701,
        0,
        32,
        buffer702,
        0
    )
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    compute_pass_encoder7010.insertDebugMarker("marker")
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    
    
    query700.destroy()
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device70.queue.submit([]);
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    render_bundle_encoder700.insertDebugMarker("marker");
    render_bundle_encoder700.insertDebugMarker("marker");
    command_encoder700.resolveQuerySet(
        query702,
        0,
        32,
        buffer702,
        0
    )
    command_encoder700.resolveQuerySet(
        query700,
        0,
        32,
        buffer702,
        0
    )
    command_encoder700.resolveQuerySet(
        query700,
        0,
        32,
        buffer702,
        0
    )
    render_bundle_encoder700.popDebugGroup();
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device70.queue.writeBuffer(buffer701, 0, array0, 0, array0.length);
    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder703.resolveQuerySet(
        query700,
        0,
        32,
        buffer702,
        0
    )
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    command_encoder703.pushDebugGroup("mygroupmarker")
    command_encoder702.resolveQuerySet(
        query703,
        0,
        32,
        buffer704,
        0
    )
    query701.destroy()
    command_encoder700.resolveQuerySet(
        query703,
        0,
        32,
        buffer702,
        0
    )
    
    
    device70.queue.writeBuffer(buffer701, 0, array2, 0, array2.length);
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    
    compute_pass_encoder7010.popDebugGroup()
    render_bundle_encoder702.popDebugGroup();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder703.popDebugGroup()
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2001.popDebugGroup()
}