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
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array0 = new Float32Array([1.0, 0.5, -0.5, -1.0, 0.75, 0.75, -0.75, 0.0, -0.75, -0.25, 0.0, -0.5, 0.25, 0.0, 0.0, 0.75, -0.5, 1.0, -1.0, 1.0, 0.75, 0.25, 1.0, -1.0, 0.75, -0.25, -0.5, 0.0, 0.0, 0.75, -0.75, 0.5, 0.75, 0.5, 0.25, -0.25, 0.5, 0.25, -0.5, -0.5, 1.0, 0.0, -0.25, 0.0, -1.0, 0.25, -0.25, -0.5, 0.0, -0.75, -0.75, 0.5, 0.25, 0.25, 0.5, 0.25, 0.25, 0.5, 0.25, -1.0, -1.0, 0.75, -0.5, 0.75, -0.75, -0.25, -0.75, 0.0, 0.0, 1.0, -0.5, 0.5, 0.75, 0.0, 0.75, -0.75, 0.5, -0.75, -0.75, 0.5, 0.0, 0.0, -1.0, -0.25, 1.0, 0.75, -1.0, -0.5, -0.25, 0.0, 1.0, 0.75, 1.0, 0.5, 0.25, 0.75, 0.5, 1.0, 0.5, -0.75, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
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
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    device00.queue.submit([]);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    
    query000.destroy()
    device00.destroy();
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    const command_buffer001 = command_encoder001.finish();
    const command_buffer000 = command_encoder000.finish();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const array1 = new Float32Array([-0.25, 0.75, -0.25, -0.5, 1.0, 1.0, -0.75, -0.75, 0.5, 1.0, 0.25, -0.75, 1.0, 0.25, -0.75, 0.5, 0.0, -1.0, 0.25, 0.0, 0.75, 0.75, -0.25, 0.25, -1.0, 0.25, -0.25, -0.25, 1.0, 0.25, 0.25, 0.75, -0.25, -1.0, -0.5, 1.0, -0.5, 0.25, -0.5, 0.25, -0.75, -0.25, 1.0, -1.0, -0.5, -0.75, 0.25, 0.0, 1.0, -0.75, -1.0, -0.5, 0.25, -0.5, 0.5, 0.25, 1.0, -0.25, -0.5, 0.5, 0.5, 0.0, -1.0, 0.0, -1.0, -0.25, -0.75, 0.25, -0.5, 0.0, -0.5, -0.75, 1.0, -1.0, -0.75, -0.75, 0.0, 0.25, 0.0, -1.0, -0.75, 1.0, 0.75, -0.75, -0.75, 0.5, 1.0, -1.0, -0.5, 0.0, -0.25, 0.0, -1.0, 1.0, 1.0, -0.75, 1.0, 0.75, -0.5, -0.5, ]);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
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
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.destroy();
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device30.pushErrorScope("internal");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.pushErrorScope("out-of-memory");
    
    
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
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
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    command_encoder300.pushDebugGroup("mygroupmarker")
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device30.pushErrorScope("validation");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
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
    command_encoder201.insertDebugMarker("mymarker");
    
    command_encoder201.pushDebugGroup("mygroupmarker")
    query000.destroy()
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    command_encoder201.insertDebugMarker("mymarker");
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    query200.destroy()
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder201.popDebugGroup()
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const command_buffer401 = command_encoder401.finish();
    query200.destroy()
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pass_encoder2001 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2001" });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    command_encoder300.insertDebugMarker("mymarker");
    
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    
    command_encoder201.insertDebugMarker("mymarker");
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
    compute_pass_encoder2001.insertDebugMarker("marker")
    
    buffer300.destroy()
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    command_encoder201.clearBuffer(buffer200);
    
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
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
    const command_buffer201 = command_encoder201.finish();
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    const command_buffer202 = command_encoder202.finish();
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    
    
    render_bundle_encoder201.setPipeline(render_pipeline200);
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    device30.pushErrorScope("internal");
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    buffer301.destroy()
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout202]
    });
    command_encoder300.insertDebugMarker("mymarker");
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
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
    buffer400.destroy()
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_bundle_encoder201.setBindGroup(0, bind_group200);
    compute_pass_encoder4000.insertDebugMarker("marker")
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder300.popDebugGroup()
    compute_pass_encoder2020.setPipeline(compute_pipeline200);
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    
    command_encoder402.insertDebugMarker("mymarker");
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
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
    
    
    buffer202.destroy()
    
    
    
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder2001.setPipeline(compute_pipeline202);
    
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    device30.pushErrorScope("validation");
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    render_bundle_encoder202.insertDebugMarker("marker");
    
    device40.queue.submit([command_buffer401, ]);
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    render_bundle_encoder300.setPipeline(render_pipeline300);
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout203]
    });
    command_encoder402.pushDebugGroup("mygroupmarker")
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    render_bundle_encoder300.popDebugGroup();
    compute_pass_encoder2001.pushDebugGroup("group_marker")
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout202,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout201,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder203 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder203",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder202.popDebugGroup();
    
    
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    render_bundle_encoder400.popDebugGroup();
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder200.setPipeline(render_pipeline201);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout203]
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder200.popDebugGroup();
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer303 = device30.createBuffer({
        label: "buffer303",
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
                    buffer: buffer302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer303,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group300);
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
        layout: compute_pipeline202.getBindGroupLayout(0),
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

    compute_pass_encoder2001.setBindGroup(0, bind_group201);
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    compute_pass_encoder2000.setPipeline(compute_pipeline205);
    buffer203.destroy()
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder201.popDebugGroup();
    
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout202,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    command_encoder403.insertDebugMarker("mymarker");
    
    command_encoder403.clearBuffer(buffer400);
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder202.setPipeline(render_pipeline202);
    render_bundle_encoder201.setVertexBuffer(0, buffer205);
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    device40.pushErrorScope("out-of-memory");
    compute_pass_encoder4000.insertDebugMarker("marker")
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    compute_pass_encoder4020.pushDebugGroup("group_marker")
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
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    
    compute_pass_encoder2001.dispatchWorkgroups(100);
    query200.destroy()
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout204]
    });
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
    render_bundle_encoder400.popDebugGroup();
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
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
    compute_pass_encoder4030.pushDebugGroup("group_marker")
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
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const compute_pass_encoder4040 = command_encoder404.beginComputePass({ label: "compute_pass_encoder4040" });
    
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    buffer302.destroy()
    buffer402.destroy()
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder4040.pushDebugGroup("group_marker")
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    command_encoder404.pushDebugGroup("mygroupmarker")
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer207,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group202);
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder401.popDebugGroup();
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
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
    
    buffer300.destroy()
    compute_pass_encoder4020.popDebugGroup()
    
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
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    const render_pass_encoder4040 = command_encoder404.beginRenderPass({
        label: "render_pass_encoder4040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder4040.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder4020.popDebugGroup()
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_bundle_encoder402.setPipeline(render_pipeline401);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder301.popDebugGroup();
    render_bundle_encoder401.setPipeline(render_pipeline401);
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array2 = new Float32Array([0.75, 0.0, -0.75, -0.5, 0.75, 0.25, -0.25, 1.0, -0.75, -0.5, 0.5, 1.0, 0.25, -1.0, 0.5, -1.0, -1.0, 0.25, 0.0, -0.75, -0.75, 0.75, -0.5, 0.0, -0.25, 0.75, 0.75, 0.0, 0.0, -1.0, 0.75, -1.0, -0.75, 0.5, -0.75, 0.5, 0.75, -1.0, 0.75, 0.25, 0.0, -0.75, -0.5, -0.75, 0.0, -0.25, -0.5, 0.0, 1.0, 1.0, 0.75, 0.25, 0.5, 1.0, -0.75, -0.5, 0.5, -1.0, 0.5, 1.0, -1.0, -0.25, -0.25, 0.0, 0.5, 0.0, -0.25, 0.25, 0.25, 0.5, 0.5, 0.0, 1.0, -1.0, -0.75, -0.25, -0.25, -0.25, -0.5, -0.25, 1.0, 1.0, -0.5, 0.25, -0.75, -0.25, -0.5, 0.25, 1.0, -0.75, -0.25, 1.0, -1.0, 0.25, 0.75, -1.0, 0.75, 0.75, -0.75, 0.25, ]);
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
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
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline401.getBindGroupLayout(0),
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

    render_bundle_encoder401.setBindGroup(0, bind_group400);
    compute_pass_encoder4000.setPipeline(compute_pipeline400);
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    const render_pass_encoder4031 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    render_pass_encoder4040.insertDebugMarker("marker");
    render_pass_encoder4031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device40.pushErrorScope("out-of-memory");
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
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
    
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder400.setPipeline(render_pipeline401);
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    const array3 = new Float32Array([0.5, -1.0, 0.25, -1.0, -1.0, -0.25, 0.5, 0.5, 0.75, -1.0, 0.75, 0.0, -0.5, -0.75, 1.0, 1.0, 1.0, 0.75, 0.25, -0.5, 0.75, 0.75, -0.5, -0.5, 0.5, -0.5, 1.0, -1.0, 0.5, -0.5, 1.0, 0.25, -0.5, 0.75, -0.25, -0.25, 0.5, 0.5, -0.5, 0.0, 0.75, -1.0, 0.25, 0.25, 0.5, 0.0, 0.0, 0.5, 1.0, 0.5, -0.75, -0.5, 0.75, -0.75, 0.5, -0.5, 0.0, -1.0, -0.5, 0.25, -0.75, 0.25, 0.75, 1.0, 0.75, 0.75, -0.75, -0.75, 0.0, -0.25, -1.0, -0.25, 0.25, 1.0, -0.75, 0.25, -0.75, -0.75, 1.0, 1.0, -1.0, -0.5, -0.5, 0.0, -1.0, -0.25, -0.5, -1.0, -0.75, 0.0, 1.0, 1.0, 0.25, -0.5, 1.0, 0.5, 0.25, -0.25, -0.75, -0.25, ]);
    
    compute_pass_encoder4040.setPipeline(compute_pipeline401);
    buffer404.destroy()
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    compute_pass_encoder3000.popDebugGroup()
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer303, 0, array3, 0, array3.length);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    render_pass_encoder4040.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    compute_pass_encoder4030.setPipeline(compute_pipeline400);
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    render_bundle_encoder300.setVertexBuffer(0, buffer301);
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    render_pass_encoder4030.setPipeline(render_pipeline402);
    
    
    
    render_pass_encoder4030.insertDebugMarker("marker");
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const render_pass_encoder4041 = command_encoder404.beginRenderPass({
        label: "render_pass_encoder4041",
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
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder4041.executeBundles([render_bundle_encoder401, ])
    render_bundle_encoder301.setPipeline(render_pipeline302);
    
    device60.queue.writeTexture({ texture: texture600 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_pass_encoder4030.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    buffer405.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder405.insertDebugMarker("mymarker");
    
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder400.popDebugGroup();
    render_pass_encoder4031.setPipeline(render_pipeline402);
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer407,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer408,
                },
            },
        ],
    });

    compute_pass_encoder4040.setBindGroup(0, bind_group401);
    render_pass_encoder4040.setPipeline(render_pipeline400);
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
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
                    buffer: buffer409,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4010,
                },
            },
        ],
    });

    render_pass_encoder4030.setBindGroup(0, bind_group402);
    render_pass_encoder4030.pushDebugGroup("group_marker");
    
    
    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4013,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group403);
    device60.destroy();
    render_pass_encoder4040.insertDebugMarker("marker");
    render_bundle_encoder203.setPipeline(render_pipeline200);
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    command_encoder402.copyBufferToBuffer(
        buffer408,
        0,
        buffer408,
        0,
        400
    );
    
    device40.queue.submit([]);
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout302]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
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
    render_bundle_encoder300.popDebugGroup();
    render_pass_encoder4040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout302,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout302,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const render_pass_encoder4050 = command_encoder405.beginRenderPass({
        label: "render_pass_encoder4050",
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
    render_pass_encoder4030.setVertexBuffer(0, buffer402);
    compute_pass_encoder4020.insertDebugMarker("marker")
    render_pass_encoder4040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.queue.submit([command_buffer401, ]);
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    compute_pass_encoder4020.setPipeline(compute_pipeline401);
    const array4 = new Float32Array([-0.25, -0.25, 0.0, -0.75, 0.75, -0.25, -0.75, 0.75, 1.0, -0.5, 1.0, -0.25, -0.25, -0.25, -0.25, 0.5, 0.75, -0.75, 0.75, -0.25, 0.25, 0.0, 0.5, -0.75, -1.0, 0.5, -0.5, 0.75, 0.0, 0.5, 0.75, -1.0, -0.5, 1.0, 0.0, 0.5, -1.0, 1.0, 0.0, -0.25, -0.75, -0.75, -0.75, 0.25, -0.75, 0.5, 0.0, 0.0, -0.75, -0.5, 0.75, 0.25, -0.75, 1.0, 0.0, -0.75, 0.5, 0.0, 0.25, -0.75, -0.5, -0.75, -1.0, -0.5, 1.0, 0.0, 0.75, 1.0, 1.0, 0.75, 0.0, 0.25, 0.5, -0.5, 0.75, -1.0, 0.25, 1.0, -0.75, 0.25, 0.25, 0.75, 0.75, -0.5, -1.0, 0.5, -0.5, -0.5, -0.75, -0.25, -1.0, 1.0, 0.5, 0.75, -0.75, 0.0, 0.25, 0.5, 0.0, 0.5, ]);
    
    render_pass_encoder4050.setPipeline(render_pipeline401);
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout302,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    const compute_pass_encoder4001 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4001" });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4015,
                },
            },
        ],
    });

    render_pass_encoder4050.setBindGroup(0, bind_group404);
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    render_pass_encoder4030.setIndexBuffer(buffer404, "uint16");
    render_pass_encoder4040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder300.draw(3);
    
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout301,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module408.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    render_pass_encoder4030.insertDebugMarker("marker");
    
    compute_pass_encoder4001.setPipeline(compute_pipeline400);
    render_pass_encoder4030.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    
    command_encoder400.pushDebugGroup("mygroupmarker")
    render_bundle_encoder400.setVertexBuffer(0, buffer4013);
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder4031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.finish();
    buffer407.destroy()
    const buffer4016 = device40.createBuffer({
        label: "buffer4016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4017 = device40.createBuffer({
        label: "buffer4017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: render_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4017,
                },
            },
        ],
    });

    render_pass_encoder4031.setBindGroup(0, bind_group405);
    
    device40.pushErrorScope("internal");
    render_pass_encoder4040.pushDebugGroup("group_marker");
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    query301.destroy()
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
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    texture400.destroy();
    buffer403.destroy()
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
    render_pass_encoder4030.draw(3);
    compute_pass_encoder4040.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder4040.dispatchWorkgroups(100);
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder4031.setVertexBuffer(0, buffer4013);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer208, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer208, 0);
    device30.queue.submit([]);
    render_pass_encoder4041.popDebugGroup();
    render_pass_encoder4050.setVertexBuffer(0, buffer4010);
    render_pass_encoder4050.setIndexBuffer(buffer4015, "uint16");
    render_pass_encoder4050.drawIndexed(3);
    render_pass_encoder4041.popDebugGroup();
    render_pass_encoder4031.draw(3);
    render_pass_encoder4050.end();
    render_pass_encoder4031.drawIndirect(buffer4010, 0);
    const command_buffer405 = command_encoder405.finish();
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder4050.drawIndirect(buffer4011, 0);
    const buffer4018 = device40.createBuffer({
        label: "buffer4018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4019 = device40.createBuffer({
        label: "buffer4019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group406 = device40.createBindGroup({
        label: "bind_group406",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4019,
                },
            },
        ],
    });

    compute_pass_encoder4001.setBindGroup(0, bind_group406);
    const uint32_4001 = new Uint32Array(3);

    uint32_4001[0] = 100;
    uint32_4001[1] = 1;
    uint32_4001[2] = 1;

    const buffer4020 = device40.createBuffer({
        label: "buffer4020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4020, 0, uint32_4001, 0, uint32_4001.length);

    compute_pass_encoder4001.dispatchWorkgroupsIndirect(buffer4020, 0);
    render_pass_encoder4030.drawIndexedIndirect(buffer4014, 0);
    render_pass_encoder4030.drawIndexedIndirect(buffer4016, 0);
    const buffer4021 = device40.createBuffer({
        label: "buffer4021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4022 = device40.createBuffer({
        label: "buffer4022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group407 = device40.createBindGroup({
        label: "bind_group407",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4022,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group407);
    const buffer4023 = device40.createBuffer({
        label: "buffer4023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4024 = device40.createBuffer({
        label: "buffer4024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group408 = device40.createBindGroup({
        label: "bind_group408",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4024,
                },
            },
        ],
    });

    render_pass_encoder4040.setBindGroup(0, bind_group408);
    render_pass_encoder4040.setVertexBuffer(0, buffer4021);
    render_pass_encoder4040.drawIndirect(buffer401, 0);
    compute_pass_encoder4040.end();
    const buffer4025 = device40.createBuffer({
        label: "buffer4025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4026 = device40.createBuffer({
        label: "buffer4026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group409 = device40.createBindGroup({
        label: "bind_group409",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4026,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group409);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder4040.end();
    compute_pass_encoder4020.dispatchWorkgroups(100);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder4030.end();
    render_pass_encoder4050.draw(3);
    render_pass_encoder4031.end();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4041.popDebugGroup();
    const buffer4027 = device40.createBuffer({
        label: "buffer4027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4028 = device40.createBuffer({
        label: "buffer4028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4010 = device40.createBindGroup({
        label: "bind_group4010",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4028,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4010);
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
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group301);
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
    compute_pass_encoder4020.end();
    render_pass_encoder4030.setIndexBuffer(buffer4018, "uint16");
    render_pass_encoder4030.drawIndexed(3);
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2020.setBindGroup(0, bind_group203);
    render_pass_encoder4030.drawIndexedIndirect(buffer409, 0);
    compute_pass_encoder3000.end();
    compute_pass_encoder4030.popDebugGroup()
    const buffer4029 = device40.createBuffer({
        label: "buffer4029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4030 = device40.createBuffer({
        label: "buffer4030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group4011 = device40.createBindGroup({
        label: "bind_group4011",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4030,
                },
            },
        ],
    });

    render_pass_encoder4041.setBindGroup(0, bind_group4011);
    compute_pass_encoder4040.end();
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder4040.draw(3);
    render_pass_encoder4041.setVertexBuffer(0, buffer4028);
    render_pass_encoder4030.setIndexBuffer(buffer4018, "uint16");
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder4031.setIndexBuffer(buffer4019, "uint16");
    render_pass_encoder4041.end();
    render_pass_encoder4050.setIndexBuffer(buffer4016, "uint16");
    const buffer4031 = device40.createBuffer({
        label: "buffer4031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4032 = device40.createBuffer({
        label: "buffer4032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4012 = device40.createBindGroup({
        label: "bind_group4012",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4032,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4012);
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer4033 = device40.createBuffer({
        label: "buffer4033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4033, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer4033, 0);
    compute_pass_encoder4000.end();
    compute_pass_encoder4001.popDebugGroup()
    command_encoder404.popDebugGroup()
    compute_pass_encoder4040.popDebugGroup()
    command_encoder402.popDebugGroup()
    const command_buffer402 = command_encoder402.finish();
    device40.queue.submit([command_buffer405, ]);
    compute_pass_encoder4001.end();
    compute_pass_encoder3000.popDebugGroup()
    device60.queue.submit([]);
    const uint32_4001 = new Uint32Array(3);

    uint32_4001[0] = 100;
    uint32_4001[1] = 1;
    uint32_4001[2] = 1;

    const buffer4034 = device40.createBuffer({
        label: "buffer4034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4034, 0, uint32_4001, 0, uint32_4001.length);

    compute_pass_encoder4001.dispatchWorkgroupsIndirect(buffer4034, 0);
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    compute_pass_encoder4030.end();
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
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group302);
    render_pass_encoder4030.drawIndexedIndirect(buffer4034, 0);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder4020.end();
    render_pass_encoder4050.drawIndirect(buffer4031, 0);
    render_pass_encoder4030.drawIndirect(buffer401, 0);
    render_pass_encoder4030.drawIndirect(buffer4034, 0);
    const buffer4035 = device40.createBuffer({
        label: "buffer4035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4036 = device40.createBuffer({
        label: "buffer4036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4013 = device40.createBindGroup({
        label: "bind_group4013",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4036,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4013);
    render_pass_encoder4031.popDebugGroup();
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
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group303);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4037 = device40.createBuffer({
        label: "buffer4037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4037, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4037, 0);
    const buffer4038 = device40.createBuffer({
        label: "buffer4038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4039 = device40.createBuffer({
        label: "buffer4039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4014 = device40.createBindGroup({
        label: "bind_group4014",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4039,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4014);
    const buffer4040 = device40.createBuffer({
        label: "buffer4040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4041 = device40.createBuffer({
        label: "buffer4041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4015 = device40.createBindGroup({
        label: "bind_group4015",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4041,
                },
            },
        ],
    });

    compute_pass_encoder4001.setBindGroup(0, bind_group4015);
    render_pass_encoder4040.setIndexBuffer(buffer4010, "uint16");
    device30.queue.submit([]);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder4031.drawIndexedIndirect(buffer4028, 0);
    const uint32_4040 = new Uint32Array(3);

    uint32_4040[0] = 100;
    uint32_4040[1] = 1;
    uint32_4040[2] = 1;

    const buffer4042 = device40.createBuffer({
        label: "buffer4042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4042, 0, uint32_4040, 0, uint32_4040.length);

    compute_pass_encoder4040.dispatchWorkgroupsIndirect(buffer4042, 0);
    render_pass_encoder4041.drawIndirect(buffer4020, 0);
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder4040.popDebugGroup()
    render_pass_encoder4041.setIndexBuffer(buffer408, "uint16");
    const command_buffer403 = command_encoder403.finish();
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder4040.end();
    const command_buffer404 = command_encoder404.finish();
    device40.queue.submit([command_buffer402, command_buffer404, command_buffer405, ]);
    render_pass_encoder4050.drawIndexedIndirect(buffer4028, 0);
    render_pass_encoder4050.drawIndexedIndirect(buffer4022, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder4041.end();
    render_pass_encoder4030.drawIndirect(buffer4034, 0);
    render_pass_encoder4041.setIndexBuffer(buffer4028, "uint16");
    compute_pass_encoder4020.end();
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer4043 = device40.createBuffer({
        label: "buffer4043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4043, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer4043, 0);
    render_pass_encoder4031.drawIndexedIndirect(buffer401, 0);
    render_pass_encoder4040.setIndexBuffer(buffer4012, "uint16");
    render_pass_encoder4031.drawIndexedIndirect(buffer4037, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder4031.setIndexBuffer(buffer4013, "uint16");
    const command_buffer400 = command_encoder400.finish();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder4050.drawIndexedIndirect(buffer408, 0);
    render_pass_encoder4050.end();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4041.drawIndirect(buffer4034, 0);
    render_pass_encoder4050.drawIndirect(buffer4033, 0);
    compute_pass_encoder4020.popDebugGroup()
    compute_pass_encoder4020.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder4040.popDebugGroup();
    compute_pass_encoder2020.end();
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder4031.setIndexBuffer(buffer407, "uint16");
    render_pass_encoder4031.drawIndexedIndirect(buffer4042, 0);
    render_pass_encoder4041.drawIndirect(buffer4018, 0);
    render_pass_encoder4030.drawIndexedIndirect(buffer4043, 0);
    const buffer4044 = device40.createBuffer({
        label: "buffer4044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4045 = device40.createBuffer({
        label: "buffer4045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4016 = device40.createBindGroup({
        label: "bind_group4016",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4045,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4016);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder4030.drawIndirect(buffer4023, 0);
    compute_pass_encoder4040.popDebugGroup()
    const buffer4046 = device40.createBuffer({
        label: "buffer4046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4047 = device40.createBuffer({
        label: "buffer4047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4017 = device40.createBindGroup({
        label: "bind_group4017",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4047,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4017);
    const buffer4048 = device40.createBuffer({
        label: "buffer4048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4049 = device40.createBuffer({
        label: "buffer4049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4018 = device40.createBindGroup({
        label: "bind_group4018",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4049,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4018);
    device40.queue.submit([command_buffer404, command_buffer405, ]);
    render_pass_encoder4041.drawIndexedIndirect(buffer4031, 0);
    render_pass_encoder4040.drawIndexedIndirect(buffer407, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder4030.drawIndexedIndirect(buffer401, 0);
    render_pass_encoder4040.drawIndexedIndirect(buffer4020, 0);
    render_pass_encoder4040.end();
    render_pass_encoder4030.drawIndexedIndirect(buffer402, 0);
    device40.queue.submit([command_buffer400, command_buffer402, command_buffer404, command_buffer405, ]);
    render_pass_encoder4030.drawIndirect(buffer4043, 0);
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
    render_pass_encoder4030.drawIndirect(buffer406, 0);
    compute_pass_encoder4001.popDebugGroup()
    render_pass_encoder4040.drawIndirect(buffer4042, 0);
    const uint32_4001 = new Uint32Array(3);

    uint32_4001[0] = 100;
    uint32_4001[1] = 1;
    uint32_4001[2] = 1;

    const buffer4050 = device40.createBuffer({
        label: "buffer4050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4050, 0, uint32_4001, 0, uint32_4001.length);

    compute_pass_encoder4001.dispatchWorkgroupsIndirect(buffer4050, 0);
    render_pass_encoder4040.setIndexBuffer(buffer408, "uint16");
    device30.queue.submit([]);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4051 = device40.createBuffer({
        label: "buffer4051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4051, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4051, 0);
    compute_pass_encoder4030.popDebugGroup()
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer4052 = device40.createBuffer({
        label: "buffer4052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4052, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer4052, 0);
    device40.queue.submit([command_buffer400, command_buffer404, ]);
    render_pass_encoder4041.drawIndirect(buffer4016, 0);
    render_pass_encoder4030.drawIndirect(buffer4030, 0);
    render_pass_encoder4041.drawIndirect(buffer4051, 0);
    render_pass_encoder4031.drawIndirect(buffer4042, 0);
    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3013,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group304);
    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3015,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group305);
    compute_pass_encoder4000.popDebugGroup()
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4053 = device40.createBuffer({
        label: "buffer4053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4053, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4053, 0);
    const buffer4054 = device40.createBuffer({
        label: "buffer4054",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4055 = device40.createBuffer({
        label: "buffer4055",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4019 = device40.createBindGroup({
        label: "bind_group4019",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4054,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4055,
                },
            },
        ],
    });

    compute_pass_encoder4040.setBindGroup(0, bind_group4019);
    render_pass_encoder4050.drawIndexedIndirect(buffer401, 0);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder4050.drawIndexedIndirect(buffer4030, 0);
    device40.queue.submit([command_buffer405, ]);
    compute_pass_encoder4030.end();
    compute_pass_encoder4040.end();
    compute_pass_encoder4001.end();
    compute_pass_encoder3000.end();
    device40.queue.submit([]);
    compute_pass_encoder4001.popDebugGroup()
    render_pass_encoder4031.drawIndexed(3);
    render_pass_encoder4040.drawIndirect(buffer4020, 0);
    compute_pass_encoder4020.end();
    render_pass_encoder4050.drawIndexedIndirect(buffer4043, 0);
    render_pass_encoder4030.drawIndexedIndirect(buffer4049, 0);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder4030.dispatchWorkgroups(100);
    render_pass_encoder4031.setIndexBuffer(buffer4036, "uint16");
    render_pass_encoder4050.drawIndexedIndirect(buffer4050, 0);
    render_pass_encoder4041.setIndexBuffer(buffer4051, "uint16");
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder4050.drawIndexedIndirect(buffer4048, 0);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder4030.drawIndirect(buffer4043, 0);
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder4050.drawIndirect(buffer4051, 0);
    device40.queue.submit([]);
    render_pass_encoder4041.drawIndexedIndirect(buffer407, 0);
    render_pass_encoder4041.popDebugGroup();
    const buffer4056 = device40.createBuffer({
        label: "buffer4056",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4057 = device40.createBuffer({
        label: "buffer4057",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4020 = device40.createBindGroup({
        label: "bind_group4020",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4056,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4057,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4020);
    compute_pass_encoder4020.end();
    device40.queue.submit([]);
    render_pass_encoder4050.popDebugGroup();
    render_pass_encoder4030.drawIndexedIndirect(buffer4028, 0);
    render_pass_encoder4050.drawIndexedIndirect(buffer4038, 0);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder4041.drawIndexedIndirect(buffer4051, 0);
    render_pass_encoder4041.drawIndirect(buffer4043, 0);
    render_pass_encoder4050.drawIndirect(buffer4050, 0);
    render_pass_encoder4031.end();
    compute_pass_encoder4000.popDebugGroup()
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder4030.drawIndirect(buffer4037, 0);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4058 = device40.createBuffer({
        label: "buffer4058",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4058, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4058, 0);
    render_pass_encoder4030.popDebugGroup();
    const buffer4059 = device40.createBuffer({
        label: "buffer4059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4060 = device40.createBuffer({
        label: "buffer4060",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4021 = device40.createBindGroup({
        label: "bind_group4021",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4060,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4021);
    const buffer4061 = device40.createBuffer({
        label: "buffer4061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4062 = device40.createBuffer({
        label: "buffer4062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4022 = device40.createBindGroup({
        label: "bind_group4022",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4062,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4022);
    compute_pass_encoder4040.end();
    render_pass_encoder4050.drawIndexedIndirect(buffer405, 0);
    device40.queue.submit([command_buffer403, command_buffer405, ]);
    render_pass_encoder4050.draw(3);
    render_pass_encoder4031.drawIndirect(buffer4020, 0);
    render_pass_encoder4040.draw(3);
    const buffer4063 = device40.createBuffer({
        label: "buffer4063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4064 = device40.createBuffer({
        label: "buffer4064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4023 = device40.createBindGroup({
        label: "bind_group4023",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4064,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4023);
    render_pass_encoder4031.setIndexBuffer(buffer4017, "uint16");
    render_pass_encoder4040.setIndexBuffer(buffer400, "uint16");
    render_pass_encoder4050.end();
    compute_pass_encoder3000.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4050.setIndexBuffer(buffer4029, "uint16");
    compute_pass_encoder4000.end();
    compute_pass_encoder3000.end();
    compute_pass_encoder4000.end();
    render_pass_encoder4031.setIndexBuffer(buffer4050, "uint16");
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer4065 = device40.createBuffer({
        label: "buffer4065",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4065, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer4065, 0);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder4040.drawIndirect(buffer4021, 0);
    device30.queue.submit([]);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder4040.popDebugGroup();
    compute_pass_encoder4040.dispatchWorkgroups(100);
    compute_pass_encoder4040.end();
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder2001.end();
    render_pass_encoder4041.drawIndexedIndirect(buffer4020, 0);
    device30.queue.submit([]);
    render_pass_encoder4040.end();
    render_pass_encoder4050.drawIndexedIndirect(buffer4051, 0);
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder4031.drawIndexed(3);
    compute_pass_encoder4040.dispatchWorkgroups(100);
    device40.queue.submit([]);
    render_pass_encoder4030.end();
    render_pass_encoder4041.setIndexBuffer(buffer4064, "uint16");
    const buffer4066 = device40.createBuffer({
        label: "buffer4066",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4067 = device40.createBuffer({
        label: "buffer4067",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4024 = device40.createBindGroup({
        label: "bind_group4024",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4066,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4067,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4024);
    render_pass_encoder4031.drawIndexedIndirect(buffer402, 0);
    render_pass_encoder4030.end();
    device40.queue.submit([command_buffer402, command_buffer404, ]);
    device40.queue.submit([command_buffer400, command_buffer402, command_buffer403, ]);
    compute_pass_encoder3000.end();
    device40.queue.submit([command_buffer403, ]);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4068 = device40.createBuffer({
        label: "buffer4068",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4068, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4068, 0);
    render_pass_encoder4050.popDebugGroup();
    const buffer4069 = device40.createBuffer({
        label: "buffer4069",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4070 = device40.createBuffer({
        label: "buffer4070",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4025 = device40.createBindGroup({
        label: "bind_group4025",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4069,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4070,
                },
            },
        ],
    });

    compute_pass_encoder4040.setBindGroup(0, bind_group4025);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2011, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2011, 0);
    render_pass_encoder4040.drawIndexedIndirect(buffer4034, 0);
    render_pass_encoder4040.popDebugGroup();
    const buffer4071 = device40.createBuffer({
        label: "buffer4071",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4072 = device40.createBuffer({
        label: "buffer4072",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4026 = device40.createBindGroup({
        label: "bind_group4026",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4071,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4072,
                },
            },
        ],
    });

    compute_pass_encoder4040.setBindGroup(0, bind_group4026);
    render_pass_encoder4040.end();
    render_pass_encoder4050.end();
    render_pass_encoder4041.setIndexBuffer(buffer4030, "uint16");
    render_pass_encoder4030.drawIndexedIndirect(buffer4047, 0);
    render_pass_encoder4041.drawIndirect(buffer401, 0);
    render_pass_encoder4050.drawIndirect(buffer401, 0);
    compute_pass_encoder4020.popDebugGroup()
    compute_pass_encoder4000.dispatchWorkgroups(100);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder4050.drawIndirect(buffer4065, 0);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder4001.end();
    compute_pass_encoder4001.popDebugGroup()
    render_pass_encoder4050.drawIndexedIndirect(buffer4067, 0);
    render_pass_encoder4040.drawIndexedIndirect(buffer4065, 0);
    compute_pass_encoder4000.popDebugGroup()
    const buffer4073 = device40.createBuffer({
        label: "buffer4073",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4074 = device40.createBuffer({
        label: "buffer4074",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4027 = device40.createBindGroup({
        label: "bind_group4027",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4073,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4074,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4027);
    const buffer4075 = device40.createBuffer({
        label: "buffer4075",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4076 = device40.createBuffer({
        label: "buffer4076",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4028 = device40.createBindGroup({
        label: "bind_group4028",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4075,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4076,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4028);
    render_pass_encoder4031.drawIndirect(buffer4044, 0);
    const buffer4077 = device40.createBuffer({
        label: "buffer4077",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4078 = device40.createBuffer({
        label: "buffer4078",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4029 = device40.createBindGroup({
        label: "bind_group4029",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4077,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4078,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4029);
    render_pass_encoder4030.setIndexBuffer(buffer4027, "uint16");
    render_pass_encoder4030.drawIndirect(buffer4068, 0);
    render_pass_encoder4030.end();
    const uint32_4001 = new Uint32Array(3);

    uint32_4001[0] = 100;
    uint32_4001[1] = 1;
    uint32_4001[2] = 1;

    const buffer4079 = device40.createBuffer({
        label: "buffer4079",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4079, 0, uint32_4001, 0, uint32_4001.length);

    compute_pass_encoder4001.dispatchWorkgroupsIndirect(buffer4079, 0);
    compute_pass_encoder4030.end();
    device30.queue.submit([]);
    compute_pass_encoder4001.end();
    compute_pass_encoder3000.popDebugGroup()
    device40.queue.submit([command_buffer403, ]);
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder4030.popDebugGroup()
    render_pass_encoder4041.drawIndirect(buffer4053, 0);
    device40.queue.submit([]);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3016, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3016, 0);
    const buffer4080 = device40.createBuffer({
        label: "buffer4080",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4081 = device40.createBuffer({
        label: "buffer4081",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4030 = device40.createBindGroup({
        label: "bind_group4030",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4080,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4081,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4030);
    render_pass_encoder4050.end();
    const buffer4082 = device40.createBuffer({
        label: "buffer4082",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4083 = device40.createBuffer({
        label: "buffer4083",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4031 = device40.createBindGroup({
        label: "bind_group4031",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4082,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4083,
                },
            },
        ],
    });

    compute_pass_encoder4040.setBindGroup(0, bind_group4031);
    const buffer4084 = device40.createBuffer({
        label: "buffer4084",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4085 = device40.createBuffer({
        label: "buffer4085",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4032 = device40.createBindGroup({
        label: "bind_group4032",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4084,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4085,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4032);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder4040.drawIndexedIndirect(buffer4037, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3017, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3017, 0);
    render_pass_encoder4031.drawIndirect(buffer405, 0);
    render_pass_encoder4050.drawIndexedIndirect(buffer4053, 0);
    render_pass_encoder4031.end();
    const buffer4086 = device40.createBuffer({
        label: "buffer4086",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4087 = device40.createBuffer({
        label: "buffer4087",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4033 = device40.createBindGroup({
        label: "bind_group4033",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4086,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4087,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4033);
    render_pass_encoder4040.setIndexBuffer(buffer4080, "uint16");
    render_pass_encoder4050.drawIndirect(buffer4037, 0);
    compute_pass_encoder4030.dispatchWorkgroups(100);
    render_pass_encoder4050.setIndexBuffer(buffer4079, "uint16");
    render_pass_encoder4041.drawIndexedIndirect(buffer4079, 0);
    render_pass_encoder4040.drawIndirect(buffer401, 0);
    compute_pass_encoder4040.dispatchWorkgroups(100);
    render_pass_encoder4031.end();
    const buffer4088 = device40.createBuffer({
        label: "buffer4088",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4089 = device40.createBuffer({
        label: "buffer4089",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4034 = device40.createBindGroup({
        label: "bind_group4034",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4088,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4089,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4034);
    compute_pass_encoder4030.end();
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder4030.drawIndirect(buffer401, 0);
    render_pass_encoder4030.drawIndirect(buffer4068, 0);
    render_pass_encoder4041.drawIndexedIndirect(buffer4042, 0);
    render_pass_encoder4040.end();
    render_pass_encoder4041.end();
    render_pass_encoder4030.drawIndirect(buffer4020, 0);
    const uint32_4001 = new Uint32Array(3);

    uint32_4001[0] = 100;
    uint32_4001[1] = 1;
    uint32_4001[2] = 1;

    const buffer4090 = device40.createBuffer({
        label: "buffer4090",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4090, 0, uint32_4001, 0, uint32_4001.length);

    compute_pass_encoder4001.dispatchWorkgroupsIndirect(buffer4090, 0);
    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3019,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group306);
    render_pass_encoder4041.drawIndirect(buffer401, 0);
    render_pass_encoder4040.drawIndirect(buffer4017, 0);
    render_pass_encoder4031.drawIndirect(buffer4054, 0);
    render_pass_encoder4041.setIndexBuffer(buffer4027, "uint16");
    render_pass_encoder4030.drawIndirect(buffer401, 0);
    compute_pass_encoder4000.end();
    compute_pass_encoder4001.dispatchWorkgroups(100);
    const buffer4091 = device40.createBuffer({
        label: "buffer4091",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4092 = device40.createBuffer({
        label: "buffer4092",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4035 = device40.createBindGroup({
        label: "bind_group4035",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4091,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4092,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4035);
    render_pass_encoder4031.drawIndirect(buffer4079, 0);
    render_pass_encoder4030.draw(3);
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
        
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group307);
    compute_pass_encoder4030.popDebugGroup()
    render_pass_encoder4041.popDebugGroup();
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3022, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3022, 0);
    render_pass_encoder4030.drawIndirect(buffer4033, 0);
    compute_pass_encoder4040.dispatchWorkgroups(100);
    render_pass_encoder4040.drawIndirect(buffer4084, 0);
    render_pass_encoder4030.setIndexBuffer(buffer4050, "uint16");
    device40.queue.submit([command_buffer405, ]);
    render_pass_encoder4041.drawIndexedIndirect(buffer4020, 0);
    device40.queue.submit([]);
    render_pass_encoder4041.popDebugGroup();
    compute_pass_encoder4001.end();
    render_pass_encoder4030.drawIndirect(buffer4020, 0);
    render_pass_encoder4031.popDebugGroup();
    render_pass_encoder4031.end();
    render_pass_encoder4041.drawIndirect(buffer4092, 0);
    const command_buffer200 = command_encoder200.finish();
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder4050.drawIndirect(buffer4042, 0);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder4031.drawIndexed(3);
    const buffer4093 = device40.createBuffer({
        label: "buffer4093",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4094 = device40.createBuffer({
        label: "buffer4094",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4036 = device40.createBindGroup({
        label: "bind_group4036",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4093,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4094,
                },
            },
        ],
    });

    compute_pass_encoder4001.setBindGroup(0, bind_group4036);
    compute_pass_encoder4030.dispatchWorkgroups(100);
    const buffer4095 = device40.createBuffer({
        label: "buffer4095",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4096 = device40.createBuffer({
        label: "buffer4096",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4037 = device40.createBindGroup({
        label: "bind_group4037",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4095,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4096,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4037);
    render_pass_encoder4050.drawIndirect(buffer4090, 0);
    render_pass_encoder4041.drawIndirect(buffer4019, 0);
    device40.queue.submit([]);
    render_pass_encoder4030.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder4040.setIndexBuffer(buffer4038, "uint16");
    render_pass_encoder4050.drawIndexedIndirect(buffer4077, 0);
    render_pass_encoder4030.drawIndirect(buffer4068, 0);
    render_pass_encoder4040.setIndexBuffer(buffer4037, "uint16");
    render_pass_encoder4030.end();
    compute_pass_encoder3000.end();
    const buffer4097 = device40.createBuffer({
        label: "buffer4097",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4098 = device40.createBuffer({
        label: "buffer4098",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4038 = device40.createBindGroup({
        label: "bind_group4038",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4097,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4098,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4038);
    render_pass_encoder4041.setIndexBuffer(buffer4053, "uint16");
    render_pass_encoder4041.drawIndexedIndirect(buffer4058, 0);
    device40.queue.submit([]);
    render_pass_encoder4031.popDebugGroup();
    render_pass_encoder4041.drawIndirect(buffer402, 0);
    render_pass_encoder4031.drawIndexedIndirect(buffer4017, 0);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder4050.end();
    compute_pass_encoder4000.popDebugGroup()
    device40.queue.submit([command_buffer401, command_buffer404, ]);
    render_pass_encoder4050.drawIndexedIndirect(buffer4090, 0);
    const buffer4099 = device40.createBuffer({
        label: "buffer4099",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40100 = device40.createBuffer({
        label: "buffer40100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4039 = device40.createBindGroup({
        label: "bind_group4039",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4099,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40100,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4039);
    render_pass_encoder4030.drawIndirect(buffer4042, 0);
    render_pass_encoder4041.drawIndexedIndirect(buffer4053, 0);
    render_pass_encoder4041.drawIndirect(buffer4013, 0);
    render_pass_encoder4050.setIndexBuffer(buffer4057, "uint16");
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder4030.drawIndirect(buffer4068, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder4040.drawIndirect(buffer4071, 0);
    const buffer40101 = device40.createBuffer({
        label: "buffer40101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40102 = device40.createBuffer({
        label: "buffer40102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4040 = device40.createBindGroup({
        label: "bind_group4040",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40102,
                },
            },
        ],
    });

    compute_pass_encoder4040.setBindGroup(0, bind_group4040);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4041.drawIndexedIndirect(buffer4029, 0);
    const buffer40103 = device40.createBuffer({
        label: "buffer40103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40104 = device40.createBuffer({
        label: "buffer40104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4041 = device40.createBindGroup({
        label: "bind_group4041",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40104,
                },
            },
        ],
    });

    compute_pass_encoder4040.setBindGroup(0, bind_group4041);
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder4031.drawIndexedIndirect(buffer4052, 0);
    render_pass_encoder4040.drawIndexedIndirect(buffer4095, 0);
    device40.queue.submit([command_buffer401, ]);
    const buffer40105 = device40.createBuffer({
        label: "buffer40105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40106 = device40.createBuffer({
        label: "buffer40106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4042 = device40.createBindGroup({
        label: "bind_group4042",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40106,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4042);
    compute_pass_encoder4040.end();
    render_pass_encoder4050.drawIndexedIndirect(buffer4042, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder4030.drawIndirect(buffer4079, 0);
    render_pass_encoder4030.drawIndirect(buffer4042, 0);
    render_pass_encoder4031.drawIndexedIndirect(buffer4085, 0);
    render_pass_encoder4031.drawIndexed(3);
    render_pass_encoder4050.drawIndexedIndirect(buffer4090, 0);
    render_pass_encoder4031.end();
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder4050.drawIndexedIndirect(buffer4037, 0);
    render_pass_encoder4031.drawIndirect(buffer4063, 0);
    render_pass_encoder4050.end();
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer40107 = device40.createBuffer({
        label: "buffer40107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40107, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer40107, 0);
    render_pass_encoder4041.drawIndexedIndirect(buffer4033, 0);
    const uint32_4001 = new Uint32Array(3);

    uint32_4001[0] = 100;
    uint32_4001[1] = 1;
    uint32_4001[2] = 1;

    const buffer40108 = device40.createBuffer({
        label: "buffer40108",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40108, 0, uint32_4001, 0, uint32_4001.length);

    compute_pass_encoder4001.dispatchWorkgroupsIndirect(buffer40108, 0);
    device40.queue.submit([]);
    render_pass_encoder4040.drawIndexedIndirect(buffer4058, 0);
    compute_pass_encoder4040.popDebugGroup()
    render_pass_encoder4050.setIndexBuffer(buffer4028, "uint16");
    render_pass_encoder4031.drawIndexedIndirect(buffer4043, 0);
    render_pass_encoder4041.drawIndexedIndirect(buffer4053, 0);
    render_pass_encoder4041.end();
    const buffer40109 = device40.createBuffer({
        label: "buffer40109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40110 = device40.createBuffer({
        label: "buffer40110",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4043 = device40.createBindGroup({
        label: "bind_group4043",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40110,
                },
            },
        ],
    });

    compute_pass_encoder4001.setBindGroup(0, bind_group4043);
    render_pass_encoder4030.popDebugGroup();
    compute_pass_encoder2000.end();
    render_pass_encoder4041.drawIndirect(buffer4049, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder4031.drawIndexedIndirect(buffer4043, 0);
    compute_pass_encoder4040.dispatchWorkgroups(100);
    render_pass_encoder4041.drawIndirect(buffer4076, 0);
    render_pass_encoder4050.drawIndirect(buffer4050, 0);
    compute_pass_encoder4040.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer203, ]);
    render_pass_encoder4041.drawIndirect(buffer4094, 0);
    compute_pass_encoder4040.end();
    render_pass_encoder4030.draw(3);
    render_pass_encoder4041.popDebugGroup();
    compute_pass_encoder4020.popDebugGroup()
    device40.queue.submit([command_buffer404, ]);
    const buffer40111 = device40.createBuffer({
        label: "buffer40111",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40112 = device40.createBuffer({
        label: "buffer40112",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4044 = device40.createBindGroup({
        label: "bind_group4044",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40111,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40112,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4044);
    compute_pass_encoder4040.dispatchWorkgroups(100);
    render_pass_encoder4040.drawIndexedIndirect(buffer40107, 0);
    const buffer40113 = device40.createBuffer({
        label: "buffer40113",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40114 = device40.createBuffer({
        label: "buffer40114",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4045 = device40.createBindGroup({
        label: "bind_group4045",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40113,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40114,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4045);
    device30.queue.submit([]);
    render_pass_encoder4031.drawIndexedIndirect(buffer4049, 0);
    render_pass_encoder4030.drawIndirect(buffer4020, 0);
    render_pass_encoder4050.popDebugGroup();
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder4001.popDebugGroup()
    render_pass_encoder4040.drawIndexedIndirect(buffer40108, 0);
    compute_pass_encoder4040.end();
    render_pass_encoder4041.setIndexBuffer(buffer4016, "uint16");
    render_pass_encoder4050.drawIndirect(buffer4065, 0);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder4040.popDebugGroup()
    render_pass_encoder4031.setIndexBuffer(buffer4097, "uint16");
    compute_pass_encoder4000.end();
    render_pass_encoder4050.setIndexBuffer(buffer40108, "uint16");
    render_pass_encoder4041.drawIndexedIndirect(buffer405, 0);
    render_pass_encoder4031.drawIndirect(buffer4020, 0);
    const uint32_4001 = new Uint32Array(3);

    uint32_4001[0] = 100;
    uint32_4001[1] = 1;
    uint32_4001[2] = 1;

    const buffer40115 = device40.createBuffer({
        label: "buffer40115",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40115, 0, uint32_4001, 0, uint32_4001.length);

    compute_pass_encoder4001.dispatchWorkgroupsIndirect(buffer40115, 0);
    device30.queue.submit([command_buffer300, ]);
    device40.queue.submit([command_buffer405, ]);
}