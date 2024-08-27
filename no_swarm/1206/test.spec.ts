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
    
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
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
    const array0 = new Float32Array([0.5, 0.25, 0.0, 0.5, 0.0, 0.25, -0.25, 0.5, 0.5, -1.0, 0.5, 0.0, 0.0, -0.75, -0.5, 0.25, -0.5, -1.0, 0.25, 0.75, -1.0, 0.25, -1.0, 1.0, 1.0, -0.25, -1.0, -1.0, 0.75, -1.0, -1.0, 1.0, 0.0, -0.25, 0.75, -1.0, -0.5, 1.0, 0.25, -1.0, 0.25, 0.5, 0.0, -0.75, 1.0, 0.0, -0.75, -1.0, 0.75, 1.0, 0.5, -0.5, 0.25, 0.25, 0.25, -1.0, 1.0, 0.0, 1.0, 1.0, -0.75, -1.0, -0.5, 1.0, 0.25, -1.0, -0.75, 0.75, -0.5, -0.75, 0.0, -0.75, 0.5, -0.25, 0.75, 0.75, 1.0, -0.5, -1.0, -1.0, 0.5, 0.25, -0.75, -1.0, 0.25, -0.25, 1.0, 0.0, 0.0, 0.75, 0.75, -0.75, 0.25, 1.0, -0.5, 0.5, 0.75, -0.75, -1.0, 0.25, ]);
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const array1 = new Float32Array([-0.75, 0.5, -0.75, 1.0, -1.0, -0.25, -0.5, 0.25, 0.25, -0.25, 0.25, -0.25, -0.5, 0.25, -0.25, 1.0, -0.75, 0.75, 0.0, 0.75, -1.0, -0.5, 0.5, -1.0, -0.75, 0.75, 0.75, -0.5, -0.5, -0.5, -0.25, -0.5, 0.5, -0.25, 1.0, -0.75, -0.5, -0.75, -0.75, 0.25, -0.5, -0.75, 0.0, -0.25, 0.25, -0.25, -1.0, 0.75, 0.5, -0.75, 1.0, 0.0, -1.0, -0.75, 0.5, -0.75, 1.0, 0.0, -1.0, 0.0, -0.25, 0.75, 1.0, 0.0, -0.75, 1.0, -1.0, -1.0, -0.25, -1.0, 0.0, -1.0, 0.75, -0.25, -0.5, 0.0, 1.0, -0.25, 1.0, -0.5, -0.5, 0.5, 1.0, 0.0, -0.25, -0.5, 1.0, 0.75, -0.75, -1.0, 0.75, -0.25, 0.0, 0.75, -0.25, -0.75, 1.0, -0.25, -0.25, -1.0, ]);
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
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
    device20.destroy();
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const command_buffer300 = command_encoder300.finish();
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
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
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
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
    query200.destroy()
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    texture100.destroy();
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device70.pushErrorScope("out-of-memory");
    device30.queue.submit([command_buffer300, ]);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    const command_buffer101 = command_encoder101.finish();
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    device10.queue.submit([command_buffer101, ]);
    device70.queue.writeBuffer(buffer700, 0, array0, 0, array0.length);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    device30.destroy();
    buffer400.destroy()
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    query100.destroy()
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    texture400.destroy();
    
    command_encoder401.insertDebugMarker("mymarker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    device60.destroy();
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device70.queue.writeBuffer(buffer700, 0, array1, 0, array1.length);
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8snorm",
        dimension: "2d"
    });
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device40.pushErrorScope("out-of-memory");
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    device70.pushErrorScope("out-of-memory");
    
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder401.pushDebugGroup("mygroupmarker")
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    device70.queue.writeBuffer(buffer701, 0, array0, 0, array0.length);
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    command_encoder401.insertDebugMarker("mymarker");
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1020.setPipeline(render_pipeline101);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer101 = device10.createBuffer({
        label: "buffer101",
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
                    buffer: buffer100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer101,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group100);
    buffer1000.destroy()
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder400.insertDebugMarker("mymarker");
    command_encoder400.pushDebugGroup("mygroupmarker")
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device100.pushErrorScope("internal");
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    device10.pushErrorScope("out-of-memory");
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query102
    });
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
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
    
    texture102.destroy();
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder1031.popDebugGroup();
    
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    compute_pass_encoder1000.popDebugGroup()
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
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
    
    query100.destroy()
    device50.pushErrorScope("validation");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    device70.queue.writeBuffer(buffer700, 0, array1, 0, array1.length);
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    render_pass_encoder1031.insertDebugMarker("marker");
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    const command_buffer402 = command_encoder402.finish();
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    device70.pushErrorScope("internal");
    
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1012,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder1030.executeBundles([])
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder1030.setPipeline(render_pipeline100);
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    
    texture101.destroy();
    render_bundle_encoder701.pushDebugGroup("group_marker");
    
    
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
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const array2 = new Float32Array([0.75, 0.75, 0.5, 0.25, -1.0, -0.75, -0.25, -1.0, -1.0, 0.25, 0.25, -0.75, 0.0, -0.25, -0.75, 0.5, 0.25, 1.0, -0.25, -0.75, 1.0, -0.5, 0.25, 0.75, 0.5, -0.25, 1.0, -0.25, 0.0, -1.0, 0.25, -0.5, 0.5, 0.75, 0.25, 0.0, -1.0, -1.0, -1.0, -0.5, 0.25, 0.5, 0.0, -0.5, 1.0, 0.75, 0.5, 0.75, 0.25, -0.25, 0.25, -0.5, -0.75, 1.0, 0.75, 0.0, 1.0, -0.25, -0.5, 0.75, 0.25, -0.25, -0.75, 0.25, 0.5, -0.5, 0.25, 0.5, 0.0, -0.25, -1.0, 0.75, 0.25, 0.75, 0.25, 0.0, 0.0, 0.0, 0.25, 1.0, 0.5, -0.5, 0.75, -0.25, -1.0, -0.75, 0.5, 1.0, -0.5, 1.0, -0.25, -0.5, 0.0, 0.75, -1.0, 0.25, 0.25, 0.5, 0.5, 1.0, ]);
    render_pass_encoder1000.setPipeline(render_pipeline100);
    command_encoder401.pushDebugGroup("mygroupmarker")
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query101
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
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    command_encoder401.popDebugGroup()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    command_encoder401.resolveQuerySet(
        query401,
        0,
        32,
        buffer400,
        0
    )
    
    buffer702.destroy()
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder1021.beginOcclusionQuery(0)
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32uint",
        dimension: "2d"
    });
    
    render_pass_encoder1021.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    command_encoder102.insertDebugMarker("mymarker");
    
    
    
    device70.queue.writeBuffer(buffer700, 0, array0, 0, array0.length);
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1000.insertDebugMarker("marker");
    
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer1002 = device100.createBuffer({
        label: "buffer1002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    query100.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    
    texture401.destroy();
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    buffer300.destroy()
    
    
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    
    render_pass_encoder1031.setPipeline(render_pipeline100);
    
    render_pass_encoder1031.setStencilReference(1);
    
    query400.destroy()
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    
    render_pass_encoder1031.insertDebugMarker("marker");
    command_encoder400.insertDebugMarker("mymarker");
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_bundle_encoder1001.pushDebugGroup("group_marker");
    
    device40.queue.submit([]);
    render_pass_encoder1021.setPipeline(render_pipeline100);
    render_pass_encoder1021.setStencilReference(1);
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    buffer100.destroy()
    query400.destroy()
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    compute_pass_encoder1020.setPipeline(compute_pipeline100);
    render_pass_encoder1030.insertDebugMarker("marker");
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout701]
    });
    buffer1001.destroy()
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_bundle_encoder1001.insertDebugMarker("marker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder1002 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1002",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1031.insertDebugMarker("marker");
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const buffer1003 = device100.createBuffer({
        label: "buffer1003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    
    
    const array3 = new Float32Array([0.5, -0.5, -0.75, -1.0, -1.0, 0.75, 0.25, 0.25, 0.5, 1.0, -0.5, 1.0, -1.0, 0.25, 0.0, -0.5, 0.5, -0.25, -0.25, 0.0, 0.25, -0.5, 0.0, 0.0, -1.0, 0.5, -1.0, 0.75, 1.0, 0.75, -0.5, 1.0, 0.75, -0.5, -0.25, 0.5, -0.25, -0.25, 0.5, -1.0, 0.25, 0.5, 0.75, -0.25, -0.25, -0.25, 0.75, 0.25, 0.0, -0.25, -0.75, 1.0, 0.5, -0.5, -1.0, 0.5, 1.0, -0.25, 0.25, -1.0, 0.0, 0.5, -1.0, -0.25, 0.75, 0.5, 0.25, 0.75, 0.75, -0.75, -0.25, -1.0, 0.5, 0.0, -0.5, -1.0, -0.5, 0.0, 0.25, -0.75, -0.5, 0.25, -1.0, 0.75, -0.75, 1.0, 0.0, 0.5, 0.5, 0.0, 0.75, 0.25, 0.5, 0.25, 0.75, -0.25, -1.0, -1.0, 0.25, -0.5, ]);
    
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    compute_pass_encoder1020.popDebugGroup()
    
    render_pass_encoder1031.insertDebugMarker("marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder1021.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder700.setPipeline(render_pipeline700);
    buffer1003.destroy()
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder702.insertDebugMarker("marker");
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_pass_encoder1040.setStencilReference(1);
    render_pass_encoder1031.pushDebugGroup("group_marker");
    render_pass_encoder1040.setPipeline(render_pipeline100);
    render_pass_encoder1040.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    render_bundle_encoder1000.pushDebugGroup("group_marker");
    
    compute_pass_encoder1000.setPipeline(compute_pipeline102);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    render_bundle_encoder701.setPipeline(render_pipeline700);
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    device10.pushErrorScope("validation");
    render_bundle_encoder1000.insertDebugMarker("marker");
    texture500.destroy();
    compute_pass_encoder1030.setPipeline(compute_pipeline101);
    render_bundle_encoder100.setPipeline(render_pipeline102);
    
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query100
    });
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    device70.destroy();
    device80.pushErrorScope("internal");
    
    render_bundle_encoder501.setPipeline(render_pipeline500);
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    render_bundle_encoder101.popDebugGroup();
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1031.beginOcclusionQuery(0)
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer104 = device10.createBuffer({
        label: "buffer104",
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
                    buffer: buffer103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer104,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group101);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pass_encoder10000 = command_encoder1000.beginComputePass({ label: "compute_pass_encoder10000" });
    compute_pass_encoder10000.insertDebugMarker("marker")
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder101.setPipeline(render_pipeline100);
    render_pass_encoder1031.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const compute_pass_encoder1021 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1021" });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer106,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group102);
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    render_bundle_encoder1002.pushDebugGroup("group_marker");
    render_pass_encoder1040.pushDebugGroup("group_marker");
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    const texture1101 = device110.createTexture({
        label: "texture1101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const texture1102 = device110.createTexture({
        label: "texture1102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    const sampler1101 = device110.createSampler( { label: "sampler1101" } );
    
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    render_pass_encoder1001.setStencilReference(1);
    compute_pass_encoder1021.setPipeline(compute_pipeline103);
    render_bundle_encoder1002.insertDebugMarker("marker");
    
    const command_encoder1001 = device100.createCommandEncoder({ label: "command_encoder1001" });
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture1101.destroy();
    render_pass_encoder4000.pushDebugGroup("group_marker");
    render_pass_encoder4000.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    device110.destroy();
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer502 = device50.createBuffer({
        label: "buffer502",
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
                    buffer: buffer501,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer502,
                },
            },
        ],
    });

    render_bundle_encoder501.setBindGroup(0, bind_group500);
    render_bundle_encoder500.setPipeline(render_pipeline500);
    render_bundle_encoder401.setPipeline(render_pipeline401);
    buffer101.destroy()
    render_bundle_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1021.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
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
    render_pass_encoder1001.executeBundles([])
    render_pass_encoder1030.insertDebugMarker("marker");
    device70.queue.writeBuffer(buffer700, 0, array1, 0, array1.length);
    
    render_bundle_encoder100.popDebugGroup();
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder1001.setStencilReference(1);
    render_bundle_encoder400.setPipeline(render_pipeline402);
    const command_buffer800 = command_encoder800.finish();
    render_pass_encoder1030.insertDebugMarker("marker");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1000.popDebugGroup()
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_pass_encoder1031.setStencilReference(1);
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
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
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer108,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group103);
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout701]
    });
    query400.destroy()
    device40.queue.writeTexture({ texture: texture402 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4000.insertDebugMarker("marker");
    buffer106.destroy()
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    compute_pass_encoder1030.insertDebugMarker("marker")
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer401,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer402,
                },
            },
        ],
    });

    render_bundle_encoder401.setBindGroup(0, bind_group400);
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
        occlusionQuerySet: query402
    });
    
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    
    const buffer1004 = device100.createBuffer({
        label: "buffer1004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer107, 0, array1, 0, array1.length);
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1001.setStencilReference(1);
    
    render_pass_encoder1001.pushDebugGroup("group_marker");
    render_pass_encoder4000.executeBundles([])
    const texture_view10000 = texture1000.createView({ label: "texture_view10000" });
    render_bundle_encoder1001.popDebugGroup();
    
    render_pass_encoder1001.popDebugGroup();
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder4010.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1010,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group104);
    buffer401.destroy()
    render_bundle_encoder502.insertDebugMarker("marker");
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
        vertex: {
            module: shader_module406,
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
            module: shader_module406,
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
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1012,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group105);
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    render_pass_encoder4010.setPipeline(render_pipeline402);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1001.setPipeline(render_pipeline100);
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1014,
                },
            },
        ],
    });

    render_pass_encoder1021.setBindGroup(0, bind_group106);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder4000.setPipeline(render_pipeline402);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1015, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1015, 0);
    render_pass_encoder1031.endOcclusionQuery()
    command_encoder400.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
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

    render_pass_encoder1001.setBindGroup(0, bind_group107);
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1019,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group108);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder1001.setVertexBuffer(0, buffer105);
    render_pass_encoder1001.drawIndirect(buffer102, 0);
    render_pass_encoder1040.setVertexBuffer(0, buffer1019);
    render_pass_encoder1001.drawIndirect(buffer1015, 0);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1001.drawIndirect(buffer1016, 0);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder1040.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1030.setVertexBuffer(0, buffer103);
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
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1021.setBindGroup(0, bind_group109);
    const command_buffer1001 = command_encoder1001.finish();
    render_pass_encoder1030.draw(3);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1015, 0);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1020.setVertexBuffer(0, buffer104);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1021.setVertexBuffer(0, buffer1018);
    device100.queue.submit([command_buffer1001, ]);
    render_pass_encoder1021.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder1030.end();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1018, "uint16");
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1020.drawIndirect(buffer106, 0);
    compute_pass_encoder1021.dispatchWorkgroups(100);
    render_pass_encoder1020.end();
    render_pass_encoder1030.setIndexBuffer(buffer1013, "uint16");
    compute_pass_encoder1021.end();
    render_pass_encoder1030.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1021.drawIndirect(buffer105, 0);
    compute_pass_encoder1000.end();
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device100.queue.submit([]);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1022, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1022, 0);
    render_pass_encoder1040.drawIndexed(3);
    compute_pass_encoder1020.end();
    render_pass_encoder1001.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1040.draw(3);
    const command_buffer500 = command_encoder500.finish();
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
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline402.getBindGroupLayout(0),
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

    render_pass_encoder4010.setBindGroup(0, bind_group401);
    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1024,
                },
            },
        ],
    });

    render_pass_encoder1031.setBindGroup(0, bind_group1010);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1001.drawIndirect(buffer100, 0);
    render_pass_encoder1031.setVertexBuffer(0, buffer105);
    render_pass_encoder1031.drawIndirect(buffer1020, 0);
    render_pass_encoder1031.end();
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder1040.end();
    render_pass_encoder1030.drawIndirect(buffer104, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1021.end();
    render_pass_encoder1021.popDebugGroup();
    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1026,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group1011);
    render_pass_encoder1040.drawIndirect(buffer1015, 0);
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
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group1012);
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder1000.setVertexBuffer(0, buffer1014);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1040.end();
    render_pass_encoder4010.setVertexBuffer(0, buffer400);
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1030.setIndexBuffer(buffer1024, "uint16");
    device100.queue.submit([command_buffer1001, ]);
    render_pass_encoder1000.drawIndirect(buffer1014, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1001.drawIndirect(buffer109, 0);
    render_pass_encoder4010.draw(3);
    compute_pass_encoder1030.end();
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1001.popDebugGroup();
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder4010.end();
    render_pass_encoder1021.setIndexBuffer(buffer1018, "uint16");
    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1030,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1013);
    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1032,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1014);
    const command_buffer401 = command_encoder401.finish();
    render_pass_encoder1020.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1030.drawIndirect(buffer1015, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1000.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1000.drawIndirect(buffer1022, 0);
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
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1015);
    render_pass_encoder1001.setIndexBuffer(buffer101, "uint16");
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1035, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1035, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1000.end();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer1035, 0);
    render_pass_encoder4000.popDebugGroup();
    device40.queue.submit([]);
    command_encoder100.popDebugGroup()
    render_pass_encoder4010.end();
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer405,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer406,
                },
            },
        ],
    });

    render_pass_encoder4000.setBindGroup(0, bind_group402);
    device50.queue.submit([]);
    device40.queue.submit([command_buffer401, ]);
    const command_buffer103 = command_encoder103.finish();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    device60.queue.submit([]);
    render_pass_encoder1031.draw(3);
    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
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
                    buffer: buffer1036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1037,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1016);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1020.setIndexBuffer(buffer1023, "uint16");
    const command_buffer1000 = command_encoder1000.finish();
    render_pass_encoder1031.setIndexBuffer(buffer1022, "uint16");
    compute_pass_encoder1030.end();
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1021.dispatchWorkgroups(100);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder4000.setVertexBuffer(0, buffer400);
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder1031.drawIndirect(buffer1035, 0);
    device40.queue.submit([command_buffer400, ]);
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
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1021.setBindGroup(0, bind_group1017);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1040, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1040, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1040, 0);
    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1042,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1018);
    render_pass_encoder4000.setIndexBuffer(buffer404, "uint16");
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder4000.drawIndexedIndirect(buffer406, 0);
    render_pass_encoder1000.drawIndirect(buffer1035, 0);
    render_pass_encoder1031.setIndexBuffer(buffer104, "uint16");
    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1044,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1019);
    render_pass_encoder1001.drawIndirect(buffer1022, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1035, 0);
    compute_pass_encoder10000.popDebugGroup()
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1045, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1045, 0);
    device50.queue.submit([]);
    render_pass_encoder1030.drawIndirect(buffer1040, 0);
    render_pass_encoder1020.drawIndexed(3);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1030.popDebugGroup();
    device100.queue.submit([command_buffer1000, ]);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder1020.draw(3);
    render_pass_encoder1030.end();
    render_pass_encoder1021.drawIndirect(buffer1022, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1046, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1046, 0);
    render_pass_encoder1000.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder4000.end();
    render_pass_encoder1040.setIndexBuffer(buffer1010, "uint16");
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
        
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1020);
    render_pass_encoder1021.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1024, 0);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1049, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1049, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1021.drawIndirect(buffer1048, 0);
    const buffer1050 = device10.createBuffer({
        label: "buffer1050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1051 = device10.createBuffer({
        label: "buffer1051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1021 = device10.createBindGroup({
        label: "bind_group1021",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1051,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1021);
    const buffer1052 = device10.createBuffer({
        label: "buffer1052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1022 = device10.createBindGroup({
        label: "bind_group1022",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1053,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1022);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1031.end();
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer1046, 0);
    compute_pass_encoder4020.popDebugGroup()
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1049, 0);
    const buffer1054 = device10.createBuffer({
        label: "buffer1054",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1055 = device10.createBuffer({
        label: "buffer1055",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1023 = device10.createBindGroup({
        label: "bind_group1023",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1054,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1055,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1023);
    render_pass_encoder1020.setIndexBuffer(buffer1044, "uint16");
    device100.queue.submit([]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1049, 0);
    compute_pass_encoder1021.end();
    compute_pass_encoder1021.end();
    render_pass_encoder1031.setIndexBuffer(buffer1012, "uint16");
    compute_pass_encoder1030.end();
    device100.queue.submit([command_buffer1001, ]);
    render_pass_encoder1030.draw(3);
    const buffer1056 = device10.createBuffer({
        label: "buffer1056",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1057 = device10.createBuffer({
        label: "buffer1057",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1024 = device10.createBindGroup({
        label: "bind_group1024",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1056,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1057,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1024);
    render_pass_encoder1030.setIndexBuffer(buffer1027, "uint16");
    const buffer1058 = device10.createBuffer({
        label: "buffer1058",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1059 = device10.createBuffer({
        label: "buffer1059",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1025 = device10.createBindGroup({
        label: "bind_group1025",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1058,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1059,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1025);
    render_pass_encoder1020.drawIndirect(buffer1016, 0);
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder1000.end();
    render_pass_encoder1000.end();
    render_pass_encoder1021.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1021.draw(3);
    compute_pass_encoder1030.end();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder4010.popDebugGroup();
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndexedIndirect(buffer1028, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndirect(buffer1033, 0);
    render_pass_encoder1030.drawIndirect(buffer1024, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1030.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder4000.draw(3);
    device10.queue.submit([command_buffer102, ]);
    device50.queue.submit([]);
    render_pass_encoder1001.drawIndirect(buffer1046, 0);
    render_pass_encoder1030.popDebugGroup();
    device80.queue.submit([]);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder1021.end();
    render_pass_encoder1020.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder1020.draw(3);
    compute_pass_encoder1020.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1000.end();
    compute_pass_encoder1021.end();
    render_pass_encoder1031.drawIndirect(buffer1022, 0);
    render_pass_encoder4000.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1040.drawIndirect(buffer1041, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1021.setIndexBuffer(buffer1056, "uint16");
    render_pass_encoder1020.end();
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1021.drawIndirect(buffer1040, 0);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder4000.end();
    render_pass_encoder1020.drawIndirect(buffer1015, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1060 = device10.createBuffer({
        label: "buffer1060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1060, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1060, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1035, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    compute_pass_encoder1000.end();
    render_pass_encoder1001.drawIndirect(buffer1045, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder4000.drawIndirect(buffer406, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder4010.setIndexBuffer(buffer402, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1052, "uint16");
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1061 = device10.createBuffer({
        label: "buffer1061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1061, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1061, 0);
    render_pass_encoder4000.drawIndirect(buffer406, 0);
    device100.queue.submit([command_buffer1001, ]);
    render_pass_encoder1031.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1030.drawIndirect(buffer1052, 0);
    render_pass_encoder1040.drawIndirect(buffer1015, 0);
    render_pass_encoder4000.drawIndexedIndirect(buffer402, 0);
    device110.queue.submit([]);
    compute_pass_encoder1030.end();
    render_pass_encoder4000.drawIndexedIndirect(buffer404, 0);
    render_pass_encoder1030.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1060, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1000.drawIndirect(buffer1045, 0);
    compute_pass_encoder1021.dispatchWorkgroups(100);
    compute_pass_encoder1021.popDebugGroup()
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndirect(buffer1035, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1013, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1001.drawIndirect(buffer1018, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1019, 0);
    device100.queue.submit([command_buffer1001, ]);
    render_pass_encoder1031.draw(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1050, "uint16");
    compute_pass_encoder1021.end();
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1000.drawIndirect(buffer1049, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1030.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder4010.drawIndexed(3);
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder1030.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1015, 0);
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    render_pass_encoder4010.drawIndexedIndirect(buffer400, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder4000.setIndexBuffer(buffer406, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1038, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1030, 0);
    device40.queue.submit([]);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1062 = device10.createBuffer({
        label: "buffer1062",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1062, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1062, 0);
    render_pass_encoder1031.drawIndirect(buffer1045, 0);
    render_pass_encoder1001.drawIndirect(buffer1040, 0);
    render_pass_encoder1021.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1001.drawIndirect(buffer107, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1040.drawIndirect(buffer1049, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1001.drawIndirect(buffer1061, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder4010.drawIndexed(3);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1021.drawIndirect(buffer1014, 0);
    render_pass_encoder1001.drawIndirect(buffer1046, 0);
    render_pass_encoder1021.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1045, 0);
    device40.queue.submit([command_buffer401, ]);
    const buffer1063 = device10.createBuffer({
        label: "buffer1063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1064 = device10.createBuffer({
        label: "buffer1064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1026 = device10.createBindGroup({
        label: "bind_group1026",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1064,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1026);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1031.drawIndexedIndirect(buffer1040, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1020.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1062, 0);
    render_pass_encoder1040.drawIndirect(buffer1022, 0);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1065 = device10.createBuffer({
        label: "buffer1065",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1065, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1065, 0);
    const buffer1066 = device10.createBuffer({
        label: "buffer1066",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1067 = device10.createBuffer({
        label: "buffer1067",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1027 = device10.createBindGroup({
        label: "bind_group1027",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1066,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1067,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1027);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1040.end();
    render_pass_encoder1030.end();
    render_pass_encoder4010.setIndexBuffer(buffer401, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1046, 0);
    device00.queue.submit([]);
    compute_pass_encoder1021.dispatchWorkgroups(100);
    render_pass_encoder4010.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1060, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1031.drawIndirect(buffer1031, 0);
    render_pass_encoder4000.drawIndirect(buffer403, 0);
    render_pass_encoder1020.drawIndirect(buffer1020, 0);
    render_pass_encoder1001.drawIndirect(buffer1015, 0);
    compute_pass_encoder1021.dispatchWorkgroups(100);
    device80.queue.submit([]);
    compute_pass_encoder1020.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1060, 0);
    compute_pass_encoder1021.popDebugGroup()
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1040.end();
    render_pass_encoder4010.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder4000.drawIndexedIndirect(buffer404, 0);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1040.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1000.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1022, 0);
    device40.queue.submit([command_buffer401, ]);
    device40.queue.submit([]);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder4000.popDebugGroup();
    device100.queue.submit([command_buffer1001, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1021.drawIndirect(buffer1062, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer105, "uint16");
    device80.queue.submit([command_buffer800, ]);
    const buffer1068 = device10.createBuffer({
        label: "buffer1068",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1069 = device10.createBuffer({
        label: "buffer1069",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1028 = device10.createBindGroup({
        label: "bind_group1028",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1068,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1069,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1028);
    render_pass_encoder1021.setIndexBuffer(buffer1063, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1050, 0);
    render_pass_encoder4000.draw(3);
    render_pass_encoder1001.drawIndirect(buffer1040, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1020.drawIndirect(buffer1024, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder4010.drawIndexed(3);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder4000.drawIndexedIndirect(buffer402, 0);
    render_pass_encoder1001.drawIndirect(buffer1062, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1021.drawIndirect(buffer1049, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer109, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1021.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1060, 0);
    compute_pass_encoder10000.popDebugGroup()
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1070 = device10.createBuffer({
        label: "buffer1070",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1070, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1070, 0);
    render_pass_encoder4000.end();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1040, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1021.drawIndexedIndirect(buffer1059, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1000.drawIndirect(buffer1070, 0);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder1001.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder4010.drawIndexedIndirect(buffer402, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1022, 0);
    const buffer1071 = device10.createBuffer({
        label: "buffer1071",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1072 = device10.createBuffer({
        label: "buffer1072",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1029 = device10.createBindGroup({
        label: "bind_group1029",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1071,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1072,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1029);
    render_pass_encoder1001.drawIndexedIndirect(buffer1034, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1000.drawIndirect(buffer1046, 0);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder1020.drawIndirect(buffer1046, 0);
    const buffer1073 = device10.createBuffer({
        label: "buffer1073",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1074 = device10.createBuffer({
        label: "buffer1074",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1030 = device10.createBindGroup({
        label: "bind_group1030",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1073,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1074,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1030);
    device100.queue.submit([]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1065, 0);
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1020.drawIndirect(buffer1073, 0);
    render_pass_encoder4010.draw(3);
    render_pass_encoder4000.drawIndexed(3);
    render_pass_encoder1040.end();
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder10000.popDebugGroup()
    render_pass_encoder1001.drawIndirect(buffer1030, 0);
    render_pass_encoder4000.end();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.setIndexBuffer(buffer1046, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer1060, 0);
    render_pass_encoder4000.setIndexBuffer(buffer400, "uint16");
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1001.drawIndirect(buffer1062, 0);
    const buffer1075 = device10.createBuffer({
        label: "buffer1075",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1076 = device10.createBuffer({
        label: "buffer1076",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1031 = device10.createBindGroup({
        label: "bind_group1031",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1075,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1076,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1031);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1031.drawIndirect(buffer1062, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1077 = device10.createBuffer({
        label: "buffer1077",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1077, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1077, 0);
    render_pass_encoder4010.drawIndexedIndirect(buffer400, 0);
    render_pass_encoder1021.drawIndirect(buffer1077, 0);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder4000.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1001.popDebugGroup();
    device80.queue.submit([command_buffer800, ]);
    compute_pass_encoder1030.popDebugGroup()
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1078 = device10.createBuffer({
        label: "buffer1078",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1078, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1078, 0);
    render_pass_encoder1021.drawIndirect(buffer1066, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1079 = device10.createBuffer({
        label: "buffer1079",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1079, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1079, 0);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1080 = device10.createBuffer({
        label: "buffer1080",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1080, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1080, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1061, 0);
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer1035, 0);
    device60.queue.submit([]);
    render_pass_encoder1020.setIndexBuffer(buffer109, "uint16");
    device100.queue.submit([]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder4000.draw(3);
    render_pass_encoder1021.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1067, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1060, 0);
    compute_pass_encoder1021.end();
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1081 = device10.createBuffer({
        label: "buffer1081",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1081, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1081, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1021.drawIndirect(buffer1060, 0);
    render_pass_encoder1001.drawIndirect(buffer1040, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder4000.end();
    compute_pass_encoder1020.end();
    render_pass_encoder1001.setIndexBuffer(buffer1059, "uint16");
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1000.end();
    render_pass_encoder1031.setIndexBuffer(buffer1076, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1075, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer1056, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1022, 0);
    device100.queue.submit([command_buffer1001, ]);
    render_pass_encoder1031.drawIndirect(buffer1022, 0);
    render_pass_encoder4000.end();
    render_pass_encoder1020.drawIndirect(buffer1054, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1000.drawIndirect(buffer1062, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1040.drawIndirect(buffer1079, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1070, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1079, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1000.drawIndirect(buffer1036, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1061, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1079, 0);
    compute_pass_encoder10000.popDebugGroup()
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder4000.end();
    render_pass_encoder4010.draw(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1062, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1077, 0);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder4000.drawIndirect(buffer405, 0);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1001.drawIndirect(buffer1060, 0);
    render_pass_encoder1040.drawIndirect(buffer1078, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1001.drawIndirect(buffer1018, 0);
    device100.queue.submit([command_buffer1001, ]);
    device40.queue.submit([]);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1031.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1031.end();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1079, 0);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder1001.drawIndirect(buffer1049, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1031.drawIndirect(buffer1077, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1065, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1030.drawIndirect(buffer1015, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1065, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder4000.end();
    render_pass_encoder1021.drawIndirect(buffer1070, 0);
    render_pass_encoder4010.drawIndirect(buffer405, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1060, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder4010.draw(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1030.drawIndirect(buffer1062, 0);
    render_pass_encoder1040.popDebugGroup();
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1082 = device10.createBuffer({
        label: "buffer1082",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1082, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1082, 0);
    render_pass_encoder1031.drawIndirect(buffer1081, 0);
    render_pass_encoder1031.drawIndirect(buffer1035, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1021.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.end();
    render_pass_encoder1020.drawIndirect(buffer1065, 0);
    render_pass_encoder1021.drawIndirect(buffer1045, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1020.end();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1083 = device10.createBuffer({
        label: "buffer1083",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1083, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1083, 0);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4000.draw(3);
    render_pass_encoder4000.setIndexBuffer(buffer400, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1046, 0);
    render_pass_encoder1040.drawIndirect(buffer1014, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1040.drawIndirect(buffer1015, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1021.drawIndirect(buffer1049, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1031.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1001.drawIndirect(buffer1059, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1001.drawIndirect(buffer1018, 0);
    render_pass_encoder1021.drawIndirect(buffer1077, 0);
    compute_pass_encoder1000.popDebugGroup()
    device100.queue.submit([command_buffer1000, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1031.end();
    render_pass_encoder1031.drawIndirect(buffer1080, 0);
    render_pass_encoder1031.end();
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder4000.drawIndexedIndirect(buffer402, 0);
    render_pass_encoder4010.drawIndexedIndirect(buffer402, 0);
    render_pass_encoder1031.drawIndirect(buffer1054, 0);
    device10.queue.submit([command_buffer104, ]);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1030.drawIndirect(buffer1023, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1065, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1022, 0);
    device100.queue.submit([]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1010, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    const buffer1084 = device10.createBuffer({
        label: "buffer1084",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1085 = device10.createBuffer({
        label: "buffer1085",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1032 = device10.createBindGroup({
        label: "bind_group1032",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1084,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1085,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1032);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder1021.dispatchWorkgroups(100);
    render_pass_encoder1001.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1035, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1030.drawIndirect(buffer1065, 0);
    render_pass_encoder1040.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1086 = device10.createBuffer({
        label: "buffer1086",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1086, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1086, 0);
    const buffer1087 = device10.createBuffer({
        label: "buffer1087",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1088 = device10.createBuffer({
        label: "buffer1088",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1033 = device10.createBindGroup({
        label: "bind_group1033",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1087,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1088,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1033);
    const buffer1089 = device10.createBuffer({
        label: "buffer1089",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1090 = device10.createBuffer({
        label: "buffer1090",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1034 = device10.createBindGroup({
        label: "bind_group1034",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1089,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1090,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1034);
    render_pass_encoder4010.draw(3);
    render_pass_encoder1030.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1061, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1021.end();
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1031.drawIndirect(buffer1049, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4000.draw(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1087, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1062, 0);
    device40.queue.submit([]);
    render_pass_encoder1000.drawIndirect(buffer1086, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1067, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1070, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1091 = device10.createBuffer({
        label: "buffer1091",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1091, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1091, 0);
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    compute_pass_encoder1021.dispatchWorkgroups(100);
    render_pass_encoder1021.drawIndirect(buffer1022, 0);
    render_pass_encoder4010.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1023, 0);
    compute_pass_encoder1020.end();
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1092 = device10.createBuffer({
        label: "buffer1092",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1092, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1092, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder4010.end();
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1030.end();
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1021.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1086, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer103, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder1001.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1040.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1086, 0);
    render_pass_encoder1020.drawIndirect(buffer1036, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1031.drawIndirect(buffer1091, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1021.drawIndirect(buffer1077, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1079, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1093 = device10.createBuffer({
        label: "buffer1093",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1093, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1093, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder4000.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder4010.draw(3);
    render_pass_encoder1020.drawIndirect(buffer1012, 0);
    render_pass_encoder1000.drawIndirect(buffer1043, 0);
    device40.queue.submit([command_buffer401, command_buffer402, ]);
    device00.queue.submit([]);
    render_pass_encoder1031.drawIndexedIndirect(buffer1040, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1030.end();
    const buffer1094 = device10.createBuffer({
        label: "buffer1094",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1095 = device10.createBuffer({
        label: "buffer1095",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1035 = device10.createBindGroup({
        label: "bind_group1035",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1094,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1095,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1035);
    render_pass_encoder4010.end();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1096 = device10.createBuffer({
        label: "buffer1096",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1096, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1096, 0);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1040.drawIndirect(buffer1045, 0);
    render_pass_encoder1001.setIndexBuffer(buffer107, "uint16");
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1030.popDebugGroup();
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1097 = device10.createBuffer({
        label: "buffer1097",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1097, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1097, 0);
    render_pass_encoder1000.drawIndirect(buffer1040, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder4000.setIndexBuffer(buffer406, "uint16");
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder4000.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1096, 0);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1098 = device10.createBuffer({
        label: "buffer1098",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1098, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1098, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder4010.setIndexBuffer(buffer400, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1066, 0);
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer1049, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1096, 0);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1040, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1021.end();
    const buffer1099 = device10.createBuffer({
        label: "buffer1099",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10100 = device10.createBuffer({
        label: "buffer10100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1036 = device10.createBindGroup({
        label: "bind_group1036",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1099,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10100,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1036);
    render_pass_encoder1031.drawIndirect(buffer1075, 0);
    compute_pass_encoder10000.popDebugGroup()
    const buffer10101 = device10.createBuffer({
        label: "buffer10101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10102 = device10.createBuffer({
        label: "buffer10102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1037 = device10.createBindGroup({
        label: "bind_group1037",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10102,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1037);
    device80.queue.submit([command_buffer800, ]);
    const buffer10103 = device10.createBuffer({
        label: "buffer10103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10104 = device10.createBuffer({
        label: "buffer10104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1038 = device10.createBindGroup({
        label: "bind_group1038",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10104,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1038);
    device100.queue.submit([]);
    render_pass_encoder1021.setIndexBuffer(buffer1052, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1078, 0);
    render_pass_encoder1020.drawIndirect(buffer1046, 0);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1000.drawIndirect(buffer1065, 0);
    render_pass_encoder1040.end();
    device10.queue.submit([]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1001.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    device10.queue.submit([]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1084, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1020.drawIndirect(buffer1070, 0);
    const buffer10105 = device10.createBuffer({
        label: "buffer10105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10106 = device10.createBuffer({
        label: "buffer10106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1039 = device10.createBindGroup({
        label: "bind_group1039",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10106,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1039);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder1040.drawIndirect(buffer1035, 0);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer101, ]);
    device100.queue.submit([]);
    device100.queue.submit([command_buffer1001, ]);
    render_pass_encoder1040.drawIndirect(buffer1028, 0);
    render_pass_encoder1031.drawIndirect(buffer1022, 0);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4010.draw(3);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer10107 = device10.createBuffer({
        label: "buffer10107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10107, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer10107, 0);
    render_pass_encoder1020.drawIndirect(buffer1065, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1040.end();
    render_pass_encoder4010.draw(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer1092, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1020.drawIndirect(buffer1022, 0);
    render_pass_encoder1021.end();
    render_pass_encoder4000.end();
    render_pass_encoder4000.end();
    render_pass_encoder1040.drawIndirect(buffer1078, 0);
    render_pass_encoder1001.end();
    render_pass_encoder4010.drawIndirect(buffer400, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1096, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1096, 0);
    render_pass_encoder1000.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1031.drawIndexedIndirect(buffer1096, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1096, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder1020.setIndexBuffer(buffer1083, "uint16");
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer10108 = device10.createBuffer({
        label: "buffer10108",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10108, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer10108, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1092, 0);
    compute_pass_encoder10000.popDebugGroup()
    render_pass_encoder1001.drawIndexedIndirect(buffer1086, 0);
    render_pass_encoder1020.drawIndirect(buffer1098, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder4010.draw(3);
    render_pass_encoder1030.drawIndirect(buffer1046, 0);
    render_pass_encoder1020.drawIndirect(buffer1060, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1091, 0);
    device80.queue.submit([]);
    render_pass_encoder1030.end();
    render_pass_encoder1040.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1000.drawIndirect(buffer1080, 0);
    render_pass_encoder4000.drawIndirect(buffer400, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1081, 0);
    device10.queue.submit([command_buffer102, ]);
    device100.queue.submit([command_buffer1001, ]);
    render_pass_encoder1021.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1001.drawIndirect(buffer1062, 0);
    render_pass_encoder4010.end();
    render_pass_encoder1030.drawIndirect(buffer1049, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer103, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10109 = device10.createBuffer({
        label: "buffer10109",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10109, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10109, 0);
    render_pass_encoder1020.drawIndirect(buffer1060, 0);
    device100.queue.submit([command_buffer1001, ]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder1000.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer10108, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder4000.drawIndexed(3);
    render_pass_encoder1040.drawIndexedIndirect(buffer1078, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder4000.setIndexBuffer(buffer403, "uint16");
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1021.end();
    render_pass_encoder4000.drawIndexedIndirect(buffer404, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1078, 0);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer1096, 0);
    render_pass_encoder4000.drawIndexedIndirect(buffer406, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder4000.end();
    render_pass_encoder1001.end();
    render_pass_encoder1030.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1091, 0);
    render_pass_encoder1040.drawIndirect(buffer1045, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1096, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder4000.draw(3);
    render_pass_encoder1040.end();
    render_pass_encoder1001.drawIndirect(buffer1071, 0);
    const buffer10110 = device10.createBuffer({
        label: "buffer10110",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10111 = device10.createBuffer({
        label: "buffer10111",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1040 = device10.createBindGroup({
        label: "bind_group1040",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10110,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10111,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1040);
    const buffer10112 = device10.createBuffer({
        label: "buffer10112",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10113 = device10.createBuffer({
        label: "buffer10113",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1041 = device10.createBindGroup({
        label: "bind_group1041",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10112,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10113,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1041);
    render_pass_encoder1040.drawIndirect(buffer1082, 0);
    render_pass_encoder4010.draw(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1082, 0);
    compute_pass_encoder1021.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4010.end();
    device50.queue.submit([]);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1062, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1077, 0);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer10114 = device10.createBuffer({
        label: "buffer10114",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10114, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer10114, 0);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer10115 = device10.createBuffer({
        label: "buffer10115",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10115, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer10115, 0);
    device30.queue.submit([]);
    compute_pass_encoder1000.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1040.drawIndirect(buffer1060, 0);
    render_pass_encoder4000.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1096, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1096, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10116 = device10.createBuffer({
        label: "buffer10116",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10116, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10116, 0);
    compute_pass_encoder1020.end();
    compute_pass_encoder1000.end();
    compute_pass_encoder1030.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder1000.end();
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1001.end();
    compute_pass_encoder1030.end();
    device10.queue.submit([command_buffer104, ]);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1001.drawIndirect(buffer1061, 0);
    render_pass_encoder1000.drawIndirect(buffer10116, 0);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer10117 = device10.createBuffer({
        label: "buffer10117",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10117, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer10117, 0);
    render_pass_encoder1031.drawIndirect(buffer10101, 0);
    render_pass_encoder1001.drawIndirect(buffer1048, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1065, 0);
    device80.queue.submit([]);
    render_pass_encoder1001.end();
    render_pass_encoder1000.drawIndirect(buffer102, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1030.drawIndirect(buffer1083, 0);
    render_pass_encoder1040.end();
    device100.queue.submit([command_buffer1000, ]);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer10109, 0);
    device100.queue.submit([command_buffer1001, ]);
    render_pass_encoder1000.drawIndirect(buffer10114, 0);
    render_pass_encoder4000.popDebugGroup();
    device100.queue.submit([command_buffer1000, ]);
    render_pass_encoder1001.drawIndirect(buffer1040, 0);
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder1021.setIndexBuffer(buffer1046, "uint16");
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    render_pass_encoder4010.end();
    render_pass_encoder1001.end();
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1021.dispatchWorkgroups(100);
    render_pass_encoder1030.setIndexBuffer(buffer1048, "uint16");
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder1021.popDebugGroup()
    device40.queue.submit([command_buffer402, ]);
    device100.queue.submit([command_buffer1000, ]);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10118 = device10.createBuffer({
        label: "buffer10118",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10118, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10118, 0);
    render_pass_encoder1020.setIndexBuffer(buffer10116, "uint16");
    compute_pass_encoder1021.end();
    render_pass_encoder1020.drawIndirect(buffer10115, 0);
    render_pass_encoder4000.setIndexBuffer(buffer405, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1071, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1042, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer1092, 0);
    render_pass_encoder4010.drawIndexed(3);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1021.drawIndirect(buffer1035, 0);
    render_pass_encoder1000.drawIndirect(buffer1086, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1093, 0);
    device100.queue.submit([command_buffer1001, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1079, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1020.drawIndirect(buffer1086, 0);
    render_pass_encoder4010.draw(3);
    render_pass_encoder1000.drawIndirect(buffer1046, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1097, 0);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer1086, 0);
    render_pass_encoder1001.drawIndirect(buffer10115, 0);
    render_pass_encoder1040.drawIndirect(buffer10117, 0);
    device50.queue.submit([]);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer10119 = device10.createBuffer({
        label: "buffer10119",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10119, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer10119, 0);
    render_pass_encoder1021.drawIndirect(buffer1060, 0);
    render_pass_encoder1030.drawIndirect(buffer1082, 0);
    const buffer10120 = device10.createBuffer({
        label: "buffer10120",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10121 = device10.createBuffer({
        label: "buffer10121",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1042 = device10.createBindGroup({
        label: "bind_group1042",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10120,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10121,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1042);
    device50.queue.submit([]);
    render_pass_encoder1020.setIndexBuffer(buffer10119, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder4010.draw(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1064, 0);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1086, 0);
    render_pass_encoder1000.drawIndirect(buffer1081, 0);
    render_pass_encoder4010.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1097, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10122 = device10.createBuffer({
        label: "buffer10122",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10122, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10122, 0);
    device100.queue.submit([command_buffer1001, ]);
    render_pass_encoder4010.draw(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1040.drawIndirect(buffer1098, 0);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer10122, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer10108, 0);
    render_pass_encoder1000.drawIndirect(buffer1083, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1035, 0);
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1031.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1061, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1030.drawIndirect(buffer1070, 0);
    compute_pass_encoder1030.popDebugGroup()
    device100.queue.submit([command_buffer1001, ]);
    render_pass_encoder1000.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1001.end();
    render_pass_encoder4010.draw(3);
    render_pass_encoder1001.drawIndirect(buffer1081, 0);
    const buffer10123 = device10.createBuffer({
        label: "buffer10123",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10124 = device10.createBuffer({
        label: "buffer10124",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1043 = device10.createBindGroup({
        label: "bind_group1043",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10123,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10124,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1043);
    render_pass_encoder1030.drawIndirect(buffer1060, 0);
    render_pass_encoder4010.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder1000.drawIndirect(buffer1016, 0);
    render_pass_encoder1001.drawIndirect(buffer1060, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder4010.drawIndexedIndirect(buffer403, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1050, 0);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder4010.drawIndirect(buffer402, 0);
    render_pass_encoder4000.end();
    render_pass_encoder1040.setIndexBuffer(buffer102, "uint16");
    compute_pass_encoder1000.end();
    render_pass_encoder1021.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1097, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1086, 0);
    render_pass_encoder1030.drawIndirect(buffer1022, 0);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer10125 = device10.createBuffer({
        label: "buffer10125",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10125, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer10125, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1097, 0);
    render_pass_encoder1031.drawIndirect(buffer1080, 0);
    compute_pass_encoder1030.end();
    render_pass_encoder1001.end();
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1031.end();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1096, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1021.setIndexBuffer(buffer10121, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1030, 0);
    device40.queue.submit([command_buffer401, ]);
    const buffer10126 = device10.createBuffer({
        label: "buffer10126",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10127 = device10.createBuffer({
        label: "buffer10127",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1044 = device10.createBindGroup({
        label: "bind_group1044",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10126,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10127,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1044);
    device50.queue.submit([]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer1081, "uint16");
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1021.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10109, 0);
    render_pass_encoder1030.drawIndirect(buffer1060, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1040, 0);
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1040.drawIndirect(buffer10114, 0);
    render_pass_encoder1031.end();
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer10125, 0);
    render_pass_encoder4010.drawIndirect(buffer405, 0);
    render_pass_encoder1021.drawIndirect(buffer1049, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1062, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1040.drawIndirect(buffer1079, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10113, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10108, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1021.drawIndirect(buffer1070, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10117, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer10101, 0);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer10117, 0);
    device100.queue.submit([command_buffer1000, ]);
    render_pass_encoder1021.drawIndirect(buffer10110, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1059, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1031.draw(3);
    render_pass_encoder1031.drawIndirect(buffer1013, 0);
    render_pass_encoder1001.drawIndirect(buffer1092, 0);
    render_pass_encoder1040.drawIndirect(buffer1076, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10108, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1020.drawIndirect(buffer1022, 0);
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1031.drawIndirect(buffer10107, 0);
    render_pass_encoder1031.drawIndirect(buffer1061, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10108, 0);
    device10.queue.submit([command_buffer102, ]);
    device50.queue.submit([]);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1031.drawIndirect(buffer1083, 0);
    render_pass_encoder1040.drawIndirect(buffer10108, 0);
    render_pass_encoder1001.drawIndirect(buffer1078, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10109, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10128 = device10.createBuffer({
        label: "buffer10128",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10128, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10128, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1061, "uint16");
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer10125, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10109, 0);
    render_pass_encoder1021.drawIndirect(buffer1031, 0);
    render_pass_encoder1030.end();
    render_pass_encoder4010.setIndexBuffer(buffer401, "uint16");
    render_pass_encoder4000.draw(3);
    device20.queue.submit([]);
    render_pass_encoder1020.drawIndirect(buffer1039, 0);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1031.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1030.setIndexBuffer(buffer10128, "uint16");
    render_pass_encoder1000.drawIndirect(buffer10119, 0);
    render_pass_encoder4010.end();
    render_pass_encoder1040.drawIndirect(buffer1093, 0);
    render_pass_encoder1031.setIndexBuffer(buffer10102, "uint16");
    render_pass_encoder4010.drawIndirect(buffer403, 0);
    render_pass_encoder4000.popDebugGroup();
    const buffer10129 = device10.createBuffer({
        label: "buffer10129",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10130 = device10.createBuffer({
        label: "buffer10130",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1045 = device10.createBindGroup({
        label: "bind_group1045",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10129,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10130,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1045);
    render_pass_encoder1001.end();
    render_pass_encoder1040.drawIndirect(buffer1086, 0);
    render_pass_encoder1031.end();
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer10131 = device10.createBuffer({
        label: "buffer10131",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10131, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer10131, 0);
    render_pass_encoder4000.draw(3);
    render_pass_encoder1031.drawIndirect(buffer1079, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1069, 0);
    device80.queue.submit([command_buffer800, ]);
    device40.queue.submit([command_buffer402, ]);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1031.end();
    render_pass_encoder1040.drawIndirect(buffer1049, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10126, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1039, 0);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer10132 = device10.createBuffer({
        label: "buffer10132",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10132, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer10132, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer10108, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1020.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder4000.drawIndirect(buffer406, 0);
    render_pass_encoder1021.drawIndirect(buffer10100, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1001.drawIndirect(buffer1083, 0);
    compute_pass_encoder1030.end();
    compute_pass_encoder1021.dispatchWorkgroups(100);
    render_pass_encoder1021.end();
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1040.drawIndirect(buffer1015, 0);
    render_pass_encoder1031.drawIndirect(buffer1080, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1030.drawIndirect(buffer1077, 0);
    render_pass_encoder1030.popDebugGroup();
    device50.queue.submit([]);
    render_pass_encoder4000.drawIndexed(3);
    render_pass_encoder1030.drawIndirect(buffer1061, 0);
    device40.queue.submit([]);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1037, 0);
    device30.queue.submit([]);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer10108, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1030.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer10122, 0);
    device10.queue.submit([command_buffer103, ]);
    device100.queue.submit([]);
    compute_pass_encoder4020.popDebugGroup()
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1030.drawIndirect(buffer1079, 0);
    device10.queue.submit([]);
    render_pass_encoder1000.drawIndirect(buffer1093, 0);
    device100.queue.submit([]);
    compute_pass_encoder1021.end();
    render_pass_encoder1001.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder4010.drawIndexed(3);
    render_pass_encoder1001.drawIndirect(buffer1061, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1097, 0);
    render_pass_encoder1020.setIndexBuffer(buffer10123, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1046, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1021.drawIndirect(buffer1081, 0);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer10133 = device10.createBuffer({
        label: "buffer10133",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10133, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer10133, 0);
    render_pass_encoder1020.drawIndirect(buffer1047, 0);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer10134 = device10.createBuffer({
        label: "buffer10134",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10134, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer10134, 0);
    render_pass_encoder1021.drawIndirect(buffer1062, 0);
    render_pass_encoder1000.popDebugGroup();
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer10115, 0);
    device100.queue.submit([command_buffer1001, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer10106, 0);
    render_pass_encoder1031.drawIndirect(buffer1077, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10135 = device10.createBuffer({
        label: "buffer10135",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10135, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10135, 0);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer10136 = device10.createBuffer({
        label: "buffer10136",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10136, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer10136, 0);
    render_pass_encoder1000.drawIndexed(3);
    compute_pass_encoder1020.end();
    render_pass_encoder4010.setIndexBuffer(buffer401, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1065, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer1040, 0);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer10137 = device10.createBuffer({
        label: "buffer10137",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10137, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer10137, 0);
    render_pass_encoder1030.drawIndirect(buffer10137, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1021.end();
    render_pass_encoder1000.setIndexBuffer(buffer1095, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1020.drawIndirect(buffer1070, 0);
    render_pass_encoder4010.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1030.drawIndirect(buffer1088, 0);
    render_pass_encoder1021.drawIndirect(buffer10115, 0);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer10138 = device10.createBuffer({
        label: "buffer10138",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10138, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer10138, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10136, 0);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder1031.drawIndirect(buffer10132, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1096, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1000.drawIndirect(buffer1093, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10139 = device10.createBuffer({
        label: "buffer10139",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10139, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10139, 0);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer1074, "uint16");
    render_pass_encoder4010.popDebugGroup();
    device50.queue.submit([]);
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer1030, 0);
    device100.queue.submit([command_buffer1001, ]);
    render_pass_encoder1031.drawIndirect(buffer10124, 0);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer10128, 0);
    render_pass_encoder1001.drawIndirect(buffer10135, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1040.popDebugGroup();
    device100.queue.submit([]);
    render_pass_encoder1040.drawIndirect(buffer1061, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10125, 0);
    render_pass_encoder1001.setIndexBuffer(buffer10129, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1075, "uint16");
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10140 = device10.createBuffer({
        label: "buffer10140",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10140, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10140, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1040.drawIndirect(buffer10108, 0);
    compute_pass_encoder1000.end();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10141 = device10.createBuffer({
        label: "buffer10141",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10141, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10141, 0);
    render_pass_encoder4010.drawIndexed(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10108, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1031.end();
    render_pass_encoder1020.drawIndirect(buffer1080, 0);
    render_pass_encoder4000.drawIndexed(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer10139, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1040.drawIndirect(buffer1098, 0);
    render_pass_encoder4000.end();
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1021.drawIndirect(buffer1080, 0);
    render_pass_encoder4010.drawIndexed(3);
    device100.queue.submit([]);
    render_pass_encoder1031.drawIndirect(buffer1082, 0);
    render_pass_encoder1030.drawIndirect(buffer1035, 0);
    compute_pass_encoder1021.end();
    render_pass_encoder1030.drawIndirect(buffer10114, 0);
    render_pass_encoder4010.draw(3);
    render_pass_encoder1030.end();
    render_pass_encoder4010.drawIndexedIndirect(buffer403, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10139, 0);
    render_pass_encoder1020.drawIndirect(buffer10140, 0);
    render_pass_encoder1021.drawIndirect(buffer1093, 0);
    render_pass_encoder1030.drawIndirect(buffer10117, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10114, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1093, 0);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1087, 0);
    compute_pass_encoder1030.end();
    render_pass_encoder1000.end();
    device10.queue.submit([command_buffer102, ]);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer10142 = device10.createBuffer({
        label: "buffer10142",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10142, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer10142, 0);
    render_pass_encoder1000.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder4000.setIndexBuffer(buffer402, "uint16");
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1097, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1020.drawIndirect(buffer1081, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1097, 0);
    render_pass_encoder1021.drawIndirect(buffer1077, 0);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer10114, 0);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer10143 = device10.createBuffer({
        label: "buffer10143",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10143, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer10143, 0);
    render_pass_encoder1040.drawIndirect(buffer10140, 0);
    render_pass_encoder1030.drawIndirect(buffer10113, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10118, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1000.drawIndirect(buffer1049, 0);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1020.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1031.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1045, 0);
    device10.queue.submit([command_buffer104, ]);
    compute_pass_encoder1000.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1098, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer10134, 0);
    device10.queue.submit([command_buffer100, ]);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder1000.drawIndirect(buffer10107, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder4000.popDebugGroup();
    device100.queue.submit([command_buffer1000, ]);
    render_pass_encoder1040.drawIndirect(buffer1096, 0);
    compute_pass_encoder1030.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer10142, 0);
    render_pass_encoder1001.drawIndirect(buffer10115, 0);
    compute_pass_encoder10000.popDebugGroup()
    device80.queue.submit([]);
    render_pass_encoder1040.drawIndirect(buffer10141, 0);
    render_pass_encoder4010.end();
    render_pass_encoder1020.drawIndirect(buffer10116, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1066, "uint16");
    const buffer10144 = device10.createBuffer({
        label: "buffer10144",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10145 = device10.createBuffer({
        label: "buffer10145",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1046 = device10.createBindGroup({
        label: "bind_group1046",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10144,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10145,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1046);
    device00.queue.submit([]);
    render_pass_encoder1021.setIndexBuffer(buffer1077, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1065, 0);
    render_pass_encoder1000.drawIndirect(buffer1043, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1092, 0);
    render_pass_encoder1000.drawIndirect(buffer1086, 0);
    compute_pass_encoder1021.dispatchWorkgroups(100);
    render_pass_encoder1021.drawIndexedIndirect(buffer10143, 0);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer10143, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1001.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer10143, 0);
    render_pass_encoder4000.popDebugGroup();
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer10146 = device10.createBuffer({
        label: "buffer10146",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10146, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer10146, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndexedIndirect(buffer1082, 0);
    device80.queue.submit([]);
}