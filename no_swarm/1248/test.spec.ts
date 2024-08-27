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
    const array0 = new Float32Array([-1.0, 0.5, -0.25, 0.0, -0.25, 0.75, 0.5, -0.75, 0.0, -0.25, -0.75, -0.5, -1.0, -0.5, 0.75, 1.0, -0.75, -0.75, -0.5, -0.75, -0.25, -0.25, -0.75, -0.25, -0.5, 0.0, -1.0, 0.75, -1.0, -0.5, -1.0, 0.0, 0.5, 0.25, 0.5, 0.5, -0.25, 0.0, 0.0, -0.5, 1.0, -1.0, 0.5, -0.5, 0.25, -0.25, 0.75, 0.25, -0.25, -0.75, 0.0, -0.25, 1.0, 0.75, 0.25, 0.5, -0.25, -0.75, -0.25, 0.5, -0.5, -1.0, -0.5, -0.5, -0.25, 0.75, 0.5, -0.25, 1.0, 0.25, -0.5, -1.0, -0.75, 0.75, 1.0, 0.75, 0.25, 0.25, 0.75, 0.25, 0.75, -0.75, 0.25, -0.25, 1.0, -0.5, 1.0, -0.75, 0.75, 0.5, -1.0, -1.0, 0.5, -0.25, 0.25, 0.25, 0.0, 0.25, -0.25, -0.5, ]);
    const array1 = new Float32Array([0.5, 0.75, -0.25, -1.0, 0.5, 0.75, 0.25, 1.0, 0.75, -0.75, -0.5, -0.5, 0.0, -0.5, -0.5, 0.25, 0.25, -1.0, -1.0, 0.25, -0.5, 0.0, 1.0, -1.0, -0.25, 0.0, -0.25, 0.75, 0.5, 0.25, -1.0, -1.0, -1.0, 0.5, 0.75, 0.5, 0.5, -0.25, -0.5, 0.25, -0.5, -0.5, 1.0, 0.75, 1.0, 0.75, 0.5, 1.0, -0.75, -0.5, 0.75, -0.5, -0.25, 1.0, -0.5, -0.25, 0.0, 1.0, -0.75, 1.0, -0.25, -1.0, 0.0, -0.5, -0.75, 0.75, 0.5, -0.25, 0.75, 0.5, -0.5, 1.0, -1.0, 1.0, 0.25, 0.0, 0.0, -0.75, 1.0, -0.5, -1.0, -0.25, -0.5, -1.0, 0.25, -0.25, 0.75, 0.75, -1.0, 1.0, -1.0, -0.5, -0.25, 0.25, 0.25, -0.25, 0.0, 0.5, 0.5, 0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
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
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("out-of-memory");
    device00.destroy();
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
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
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device10.destroy();
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    device30.pushErrorScope("out-of-memory");
    command_encoder400.pushDebugGroup("mygroupmarker")
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
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
    compute_pass_encoder2000.insertDebugMarker("marker")
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
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
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "stencil8",
        dimension: "2d"
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
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
    buffer300.destroy()
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    texture300.destroy();
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth32float",
        dimension: "2d"
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device20.pushErrorScope("out-of-memory");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16uint",
        dimension: "2d"
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    command_encoder201.pushDebugGroup("mygroupmarker")
    
    texture400.destroy();
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg16float",
        dimension: "2d"
    });
    
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
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    device40.pushErrorScope("internal");
    texture200.destroy();
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.setPipeline(render_pipeline201);
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    command_encoder401.insertDebugMarker("mymarker");
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32uint",
        dimension: "2d"
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
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
    buffer200.destroy()
    query400.destroy()
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    texture203.destroy();
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device40.queue.submit([]);
    render_bundle_encoder400.insertDebugMarker("marker");
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    render_bundle_encoder400.insertDebugMarker("marker");
    query400.destroy()
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
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

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    render_bundle_encoder200.setVertexBuffer(0, buffer202);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    texture301.destroy();
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device20.queue.writeTexture({ texture: texture202 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    texture302.destroy();
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    command_encoder402.pushDebugGroup("mygroupmarker")
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    compute_pass_encoder4000.popDebugGroup()
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder402.insertDebugMarker("marker");
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    
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
        occlusionQuerySet: query201
    });
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    query400.destroy()
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.pushErrorScope("validation");
    
    
    
    command_encoder402.insertDebugMarker("mymarker");
    
    render_pass_encoder2010.beginOcclusionQuery(0)
    
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
    command_encoder402.popDebugGroup()
    command_encoder300.clearBuffer(buffer300);
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    
    render_bundle_encoder200.drawIndirect(buffer200, 0);
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    render_bundle_encoder200.drawIndirect(buffer200, 0);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    command_encoder201.copyBufferToTexture(
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
    
    render_pass_encoder2011.setStencilReference(1);
    command_encoder200.insertDebugMarker("mymarker");
    
    render_pass_encoder2010.endOcclusionQuery()
    compute_pass_encoder2000.insertDebugMarker("marker")
    texture202.destroy();
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
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    render_pass_encoder2011.insertDebugMarker("marker");
    texture302.destroy();
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    command_encoder401.pushDebugGroup("mygroupmarker")
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder300.pushDebugGroup("mygroupmarker")
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder2000.insertDebugMarker("marker")
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
    render_pass_encoder2011.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    texture500.destroy();
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    render_bundle_encoder200.finish();
    render_pass_encoder2011.setPipeline(render_pipeline200);
    
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder200.popDebugGroup();
    
    query201.destroy()
    render_bundle_encoder402.insertDebugMarker("marker");
    query201.destroy()
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder2001 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2001" });
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder4000.setPipeline(compute_pipeline400);
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_bundle_encoder402.insertDebugMarker("marker");
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3000.executeBundles([])
    compute_pass_encoder2001.setPipeline(compute_pipeline201);
    
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    device50.destroy();
    device20.pushErrorScope("validation");
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    {
        await buffer204.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer204.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer204.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    query201.destroy()
    render_bundle_encoder400.pushDebugGroup("group_marker");
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2012,
            },
        ],
        occlusionQuerySet: query202
    });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    query300.destroy()
    buffer301.destroy()
    
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3000.setStencilReference(1);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3000.setStencilReference(1);
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4010.setPipeline(compute_pipeline400);
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    compute_pass_encoder4000.insertDebugMarker("marker")
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer201,
        0
    )
    render_pass_encoder3000.setStencilReference(1);
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout201,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.beginOcclusionQuery(0)
    
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2011.pushDebugGroup("group_marker");
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

    render_pass_encoder2011.setBindGroup(0, bind_group201);
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    render_pass_encoder2010.pushDebugGroup("group_marker");
    buffer201.destroy()
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    
    
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
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_pass_encoder2010.insertDebugMarker("marker");
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
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder200.pushDebugGroup("mygroupmarker")
    const sampler201 = device20.createSampler( { label: "sampler201" } );
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
    
    
    render_pass_encoder2000.setPipeline(render_pipeline200);
    buffer302.destroy()
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    buffer202.destroy()
    render_pass_encoder2011.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    render_pass_encoder3000.pushDebugGroup("group_marker");
    
    command_encoder402.pushDebugGroup("mygroupmarker")
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
    
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer400,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer401,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group400);
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    device30.pushErrorScope("validation");
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
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
    const array2 = new Float32Array([-0.5, 0.75, -0.75, 1.0, 0.75, 0.75, -0.25, -0.75, 0.0, -1.0, 0.25, 0.25, -0.5, -0.75, 0.5, 0.5, -0.5, 0.5, -0.5, -0.75, -1.0, -0.25, -0.5, 1.0, 0.25, 0.75, -0.5, 0.25, 0.75, 1.0, -0.5, -1.0, -0.25, -1.0, 0.75, -0.5, 1.0, 1.0, 0.75, 0.25, -0.25, -0.75, 1.0, -0.5, 0.25, -0.5, 0.0, 0.75, 0.75, 0.0, 1.0, 0.5, -0.75, 0.0, -1.0, 0.75, 1.0, 1.0, -1.0, 0.0, 0.75, 0.5, -1.0, 0.5, 1.0, 0.0, 0.0, -0.25, 0.0, -0.75, -1.0, -0.25, -1.0, -0.25, -0.75, -0.25, 0.5, 0.5, 0.0, 0.5, 0.5, 0.75, -0.5, -1.0, -0.75, 0.25, -0.5, 0.25, 1.0, 1.0, -0.5, 1.0, 0.0, -0.75, 0.5, 0.0, -0.5, -0.25, 0.5, -1.0, ]);
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_pass_encoder3000.executeBundles([])
    query400.destroy()
    render_bundle_encoder400.popDebugGroup();
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    command_encoder301.pushDebugGroup("mygroupmarker")
    command_encoder200.resolveQuerySet(
        query204,
        0,
        32,
        buffer202,
        0
    )
    
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2012,
            },
        ],
        occlusionQuerySet: query203
    });
    render_pass_encoder3010.executeBundles([])
    render_pass_encoder2010.popDebugGroup();
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    render_pass_encoder2001.popDebugGroup();
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
    render_pass_encoder3000.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder201.setPipeline(render_pipeline200);
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    render_pass_encoder3010.executeBundles([])
    render_pass_encoder2020.insertDebugMarker("marker");
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    render_pass_encoder2020.executeBundles([render_bundle_encoder200, ])
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

    render_bundle_encoder201.setBindGroup(0, bind_group202);
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
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
        occlusionQuerySet: query201
    });
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_pass_encoder2000.setStencilReference(1);
    render_pass_encoder2001.setPipeline(render_pipeline200);
    render_pass_encoder2011.setVertexBuffer(0, buffer203);
    command_encoder203.resolveQuerySet(
        query204,
        0,
        32,
        buffer203,
        0
    )
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder401.insertDebugMarker("mymarker");
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const command_buffer403 = command_encoder403.finish();
    compute_pass_encoder4000.insertDebugMarker("marker")
    buffer600.destroy()
    command_encoder700.pushDebugGroup("mygroupmarker")
    render_pass_encoder3010.setPipeline(render_pipeline301);
    
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: query204
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
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
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    render_pass_encoder2030.insertDebugMarker("marker");
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    texture205.destroy();
    compute_pass_encoder4020.insertDebugMarker("marker")
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    device40.pushErrorScope("validation");
    const render_pass_encoder2031 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: query202
    });
    
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    render_pass_encoder2001.pushDebugGroup("group_marker");
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    render_pass_encoder2011.beginOcclusionQuery(0)
    buffer204.destroy()
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
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
    const command_buffer600 = command_encoder600.finish();
    render_pass_encoder2030.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    render_pass_encoder3010.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2011.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16float",
        dimension: "2d"
    });
    const render_pass_encoder3001 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query300
    });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    render_bundle_encoder401.insertDebugMarker("marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2001.popDebugGroup();
    
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3001.setPipeline(render_pipeline301);
    buffer207.destroy()
    
    render_pass_encoder2021.pushDebugGroup("group_marker");
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer206.destroy()
    
    device20.queue.writeBuffer(buffer205, 0, array0, 0, array0.length);
    render_pass_encoder2001.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    texture303.destroy();
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    
    render_pass_encoder3010.setStencilReference(1);
    render_pass_encoder2011.pushDebugGroup("group_marker");
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout202]
    });
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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

    render_pass_encoder2000.setBindGroup(0, bind_group203);
    render_pass_encoder2031.setPipeline(render_pipeline200);
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
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3010.setBindGroup(0, bind_group300);
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

    render_pass_encoder2010.setBindGroup(0, bind_group204);
    render_pass_encoder2000.endOcclusionQuery()
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder2000.setVertexBuffer(0, buffer201);
    render_pass_encoder2000.setIndexBuffer(buffer2011, "uint16");
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2031.setBindGroup(0, bind_group205);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer403, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer403, 0);
    render_pass_encoder2011.drawIndirect(buffer2010, 0);
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    render_pass_encoder3010.setVertexBuffer(0, buffer304);
    render_pass_encoder2000.draw(3);
    compute_pass_encoder4020.setPipeline(compute_pipeline400);
    command_encoder700.popDebugGroup()
    render_pass_encoder2021.setPipeline(render_pipeline201);
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
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2021.setBindGroup(0, bind_group206);
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
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3001.setBindGroup(0, bind_group301);
    command_encoder200.popDebugGroup()
    render_pass_encoder2021.popDebugGroup();
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2001.setBindGroup(0, bind_group207);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder2031.setVertexBuffer(0, buffer208);
    const command_buffer700 = command_encoder700.finish();
    render_pass_encoder3000.setPipeline(render_pipeline302);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder3010.draw(3);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2031.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2031.drawIndirect(buffer200, 0);
    render_pass_encoder3001.setVertexBuffer(0, buffer302);
    render_pass_encoder3001.drawIndirect(buffer300, 0);
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer404,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer405,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group401);
    render_pass_encoder2021.setVertexBuffer(0, buffer207);
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer406,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer407,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group402);
    render_pass_encoder2030.setPipeline(render_pipeline200);
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
        layout: render_pipeline302.getBindGroupLayout(0),
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

    render_pass_encoder3000.setBindGroup(0, bind_group302);
    render_pass_encoder2000.end();
    render_pass_encoder2001.popDebugGroup();
    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2020,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group208);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer408, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer408, 0);
    render_pass_encoder2021.setIndexBuffer(buffer202, "uint16");
    device20.queue.submit([]);
    render_pass_encoder3001.drawIndirect(buffer300, 0);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2001.setVertexBuffer(0, buffer2012);
    compute_pass_encoder4010.popDebugGroup()
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
        
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2001.setBindGroup(0, bind_group209);
    render_pass_encoder2010.setVertexBuffer(0, buffer2020);
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder4000.end();
    render_pass_encoder2030.setVertexBuffer(0, buffer2016);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder3001.endOcclusionQuery()
    render_pass_encoder2021.drawIndirect(buffer2012, 0);
    command_encoder400.popDebugGroup()
    render_pass_encoder2010.drawIndirect(buffer203, 0);
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder2001.drawIndirect(buffer2022, 0);
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
        
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4010.setBindGroup(0, bind_group403);
    render_pass_encoder2021.end();
    render_pass_encoder3000.setVertexBuffer(0, buffer302);
    render_pass_encoder2011.drawIndirect(buffer2018, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2030.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2011.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer200, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2031.end();
    render_pass_encoder2001.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2019, 0);
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
    
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
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

    render_pass_encoder2020.setBindGroup(0, bind_group2010);
    command_encoder201.popDebugGroup()
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndirect(buffer200, 0);
    render_pass_encoder2001.drawIndirect(buffer2019, 0);
    render_pass_encoder3010.end();
    compute_pass_encoder2001.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2023, 0);
    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4012,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group404);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder3000.drawIndirect(buffer300, 0);
    compute_pass_encoder4000.end();
    render_pass_encoder3000.end();
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder2020.end();
    render_pass_encoder2001.setIndexBuffer(buffer2018, "uint16");
    compute_pass_encoder4020.end();
    render_pass_encoder3000.drawIndirect(buffer300, 0);
    const command_buffer201 = command_encoder201.finish();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2010.end();
    render_pass_encoder3010.setIndexBuffer(buffer301, "uint16");
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder2021.drawIndexed(3);
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder4010.dispatchWorkgroups(100);
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
        
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2011);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2027 = device20.createBuffer({
        label: "buffer2027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2027, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2027, 0);
    compute_pass_encoder4010.end();
    render_pass_encoder2011.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2027, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder3001.endOcclusionQuery()
    const command_buffer401 = command_encoder401.finish();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2028 = device20.createBuffer({
        label: "buffer2028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2028, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2028, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer208, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2030.end();
    render_pass_encoder2001.end();
    render_pass_encoder2031.drawIndirect(buffer2012, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2011.drawIndexedIndirect(buffer2019, 0);
    device40.queue.submit([command_buffer401, ]);
    command_encoder402.popDebugGroup()
    render_pass_encoder2030.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2020.drawIndirect(buffer2014, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3001.draw(3);
    render_pass_encoder2030.end();
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder3010.drawIndirect(buffer304, 0);
    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4014,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group405);
    render_pass_encoder2000.drawIndexedIndirect(buffer2022, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2000.end();
    render_pass_encoder2000.drawIndirect(buffer2012, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder3001.end();
    compute_pass_encoder2000.end();
    render_pass_encoder2010.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2028, 0);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndirect(buffer2012, 0);
    command_encoder300.popDebugGroup()
    const command_buffer200 = command_encoder200.finish();
    device70.queue.submit([command_buffer700, ]);
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder2031.drawIndexedIndirect(buffer2016, 0);
    const command_buffer402 = command_encoder402.finish();
    device60.queue.submit([]);
    render_pass_encoder3001.end();
    render_pass_encoder2031.draw(3);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer200, 0);
    render_pass_encoder2000.drawIndirect(buffer2028, 0);
    render_pass_encoder2000.setIndexBuffer(buffer202, "uint16");
    compute_pass_encoder4000.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2030.drawIndirect(buffer203, 0);
    render_pass_encoder2001.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2030.drawIndirect(buffer209, 0);
    const command_buffer300 = command_encoder300.finish();
    compute_pass_encoder2000.end();
    render_pass_encoder3010.draw(3);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder2020.drawIndirect(buffer200, 0);
    compute_pass_encoder2001.dispatchWorkgroups(100);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2030.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2031.end();
    compute_pass_encoder2000.end();
    render_pass_encoder2010.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2030.drawIndirect(buffer200, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2001.drawIndirect(buffer2028, 0);
    render_pass_encoder2001.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2000.drawIndirect(buffer205, 0);
    device40.queue.submit([command_buffer402, ]);
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2012);
    render_pass_encoder2001.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer200, 0);
    device30.queue.submit([]);
    render_pass_encoder2030.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder3001.endOcclusionQuery()
    device70.queue.submit([]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer208, 0);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2020.end();
    render_pass_encoder2030.drawIndirect(buffer2018, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer300, 0);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder2021.drawIndirect(buffer2027, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2027, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer200, 0);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder3001.draw(3);
    device60.queue.submit([]);
    render_pass_encoder2001.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder2021.drawIndexed(3);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder2020.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder3010.setIndexBuffer(buffer304, "uint16");
    compute_pass_encoder4020.end();
    device40.queue.submit([]);
    render_pass_encoder2030.drawIndirect(buffer201, 0);
    render_pass_encoder2000.drawIndirect(buffer2030, 0);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder2001.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder3001.drawIndirect(buffer300, 0);
    compute_pass_encoder4020.end();
    render_pass_encoder3010.setIndexBuffer(buffer303, "uint16");
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder2000.draw(3);
    device60.queue.submit([]);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2031 = device20.createBuffer({
        label: "buffer2031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2031, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2031, 0);
    render_pass_encoder2030.drawIndirect(buffer2016, 0);
    render_pass_encoder2001.end();
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder2021.drawIndirect(buffer2028, 0);
    render_pass_encoder2001.drawIndirect(buffer2018, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2030.draw(3);
    compute_pass_encoder4010.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2030.drawIndirect(buffer2028, 0);
    render_pass_encoder2031.popDebugGroup();
    compute_pass_encoder2001.popDebugGroup()
    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4016 = device40.createBuffer({
        label: "buffer4016",
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
                    buffer: buffer4015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4016,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group406);
    render_pass_encoder2000.drawIndirect(buffer2031, 0);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2030.end();
    render_pass_encoder2020.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2027, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2020.drawIndirect(buffer2027, 0);
    render_pass_encoder2011.drawIndirect(buffer2027, 0);
    device30.queue.submit([]);
    device60.queue.submit([command_buffer600, ]);
    device30.queue.submit([]);
    render_pass_encoder2031.popDebugGroup();
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder2021.drawIndirect(buffer2023, 0);
    render_pass_encoder2011.drawIndirect(buffer2028, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2027, 0);
    compute_pass_encoder2001.end();
    render_pass_encoder2031.drawIndirect(buffer2031, 0);
    render_pass_encoder3001.draw(3);
    render_pass_encoder2021.setIndexBuffer(buffer2013, "uint16");
    const buffer4017 = device40.createBuffer({
        label: "buffer4017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4018 = device40.createBuffer({
        label: "buffer4018",
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
                    buffer: buffer4017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4018,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group407);
    compute_pass_encoder2000.end();
    render_pass_encoder2030.drawIndirect(buffer2031, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2000.end();
    device40.queue.submit([command_buffer402, ]);
    device60.queue.submit([]);
    render_pass_encoder2020.end();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder3001.draw(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2031.drawIndirect(buffer2011, 0);
    device30.queue.submit([]);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2021.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2028, 0);
    render_pass_encoder3001.drawIndirect(buffer300, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2001.drawIndirect(buffer2027, 0);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4019 = device40.createBuffer({
        label: "buffer4019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4019, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4019, 0);
    render_pass_encoder3001.draw(3);
    device30.queue.submit([]);
    render_pass_encoder2011.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2026, 0);
    render_pass_encoder2020.drawIndexed(3);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder3001.end();
    render_pass_encoder3001.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer200, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2030.end();
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder2000.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder3001.draw(3);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder2021.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2020.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2020.drawIndirect(buffer209, 0);
    render_pass_encoder2031.drawIndirect(buffer2027, 0);
    render_pass_encoder2001.drawIndirect(buffer200, 0);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4020 = device40.createBuffer({
        label: "buffer4020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4020, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4020, 0);
    device20.queue.submit([command_buffer203, ]);
    device30.queue.submit([command_buffer300, ]);
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
        
    const bind_group408 = device40.createBindGroup({
        label: "bind_group408",
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

    compute_pass_encoder4020.setBindGroup(0, bind_group408);
    compute_pass_encoder4010.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer200, 0);
    compute_pass_encoder2000.popDebugGroup()
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4023 = device40.createBuffer({
        label: "buffer4023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4023, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4023, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2021.drawIndirect(buffer2028, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2027, "uint16");
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2011.endOcclusionQuery()
    render_pass_encoder2020.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2021.drawIndirect(buffer2014, 0);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2031.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder2020.end();
    const buffer2032 = device20.createBuffer({
        label: "buffer2032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2033 = device20.createBuffer({
        label: "buffer2033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2013 = device20.createBindGroup({
        label: "bind_group2013",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2033,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2013);
    render_pass_encoder2000.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2000.drawIndirect(buffer204, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2018, 0);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder2001.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2020.drawIndirect(buffer206, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer2026, 0);
    render_pass_encoder2011.drawIndirect(buffer202, 0);
    render_pass_encoder2030.drawIndirect(buffer200, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder3010.drawIndirect(buffer300, 0);
    render_pass_encoder2000.drawIndirect(buffer2028, 0);
    render_pass_encoder3000.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2027, 0);
    device10.queue.submit([]);
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder4000.end();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2020.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2011.drawIndexedIndirect(buffer200, 0);
    const buffer2034 = device20.createBuffer({
        label: "buffer2034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2035 = device20.createBuffer({
        label: "buffer2035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2014 = device20.createBindGroup({
        label: "bind_group2014",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2035,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2014);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder3010.draw(3);
    device60.queue.submit([]);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder2010.drawIndirect(buffer2027, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2027, 0);
    render_pass_encoder2030.end();
    render_pass_encoder3010.drawIndirect(buffer300, 0);
    render_pass_encoder3001.endOcclusionQuery()
    render_pass_encoder2000.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2019, 0);
    render_pass_encoder2021.endOcclusionQuery()
    render_pass_encoder2001.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer2031, 0);
    compute_pass_encoder4010.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2020.end();
    render_pass_encoder2021.drawIndirect(buffer200, 0);
    render_pass_encoder2031.drawIndirect(buffer2026, 0);
    compute_pass_encoder2001.end();
    render_pass_encoder2000.drawIndirect(buffer2012, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2022, "uint16");
    device20.queue.submit([command_buffer201, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4000.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2027, 0);
    compute_pass_encoder4010.end();
    render_pass_encoder2031.end();
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder3000.drawIndirect(buffer300, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2030, 0);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    compute_pass_encoder4000.dispatchWorkgroups(100);
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
        
    const bind_group2015 = device20.createBindGroup({
        label: "bind_group2015",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2001.setBindGroup(0, bind_group2015);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2038 = device20.createBuffer({
        label: "buffer2038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2038, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2038, 0);
    render_pass_encoder2020.drawIndirect(buffer205, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2011.popDebugGroup();
    compute_pass_encoder2001.end();
    compute_pass_encoder4010.end();
    render_pass_encoder2030.drawIndirect(buffer2038, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer2034, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2031.drawIndexed(3);
    device70.queue.submit([]);
    render_pass_encoder2031.drawIndirect(buffer2010, 0);
    render_pass_encoder2001.drawIndirect(buffer2027, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder2021.end();
    render_pass_encoder3001.drawIndirect(buffer300, 0);
    const buffer2039 = device20.createBuffer({
        label: "buffer2039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2040 = device20.createBuffer({
        label: "buffer2040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2016 = device20.createBindGroup({
        label: "bind_group2016",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2040,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2016);
    render_pass_encoder2010.end();
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder2011.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer300, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2019, 0);
    render_pass_encoder2000.end();
    const buffer2041 = device20.createBuffer({
        label: "buffer2041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2042 = device20.createBuffer({
        label: "buffer2042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2017 = device20.createBindGroup({
        label: "bind_group2017",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2042,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2017);
    render_pass_encoder2001.drawIndirect(buffer204, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device20.queue.submit([]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2031, 0);
    compute_pass_encoder4000.end();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder3000.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer2029, "uint16");
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4024 = device40.createBuffer({
        label: "buffer4024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4024, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4024, 0);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4025 = device40.createBuffer({
        label: "buffer4025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4025, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4025, 0);
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2010.drawIndirect(buffer2027, 0);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder2000.setIndexBuffer(buffer2015, "uint16");
    const buffer2043 = device20.createBuffer({
        label: "buffer2043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2044 = device20.createBuffer({
        label: "buffer2044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2018 = device20.createBindGroup({
        label: "bind_group2018",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2044,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2018);
    render_pass_encoder2021.endOcclusionQuery()
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2027, 0);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4026 = device40.createBuffer({
        label: "buffer4026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4026, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4026, 0);
    render_pass_encoder2021.drawIndirect(buffer2030, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2028, 0);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder3010.end();
    render_pass_encoder2000.end();
    render_pass_encoder2031.drawIndirect(buffer2027, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder2000.drawIndirect(buffer2038, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2032, "uint16");
    compute_pass_encoder4020.dispatchWorkgroups(100);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4027 = device40.createBuffer({
        label: "buffer4027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4027, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4027, 0);
    render_pass_encoder3010.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder2020.drawIndirect(buffer203, 0);
    render_pass_encoder3010.drawIndirect(buffer305, 0);
    device40.queue.submit([]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2021.drawIndirect(buffer2028, 0);
    render_pass_encoder2011.drawIndirect(buffer2043, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder3000.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2031, 0);
    render_pass_encoder3000.draw(3);
    render_pass_encoder2020.end();
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2028, 0);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder3000.drawIndexed(3);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder2011.end();
    render_pass_encoder3010.draw(3);
    const buffer4028 = device40.createBuffer({
        label: "buffer4028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4029 = device40.createBuffer({
        label: "buffer4029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group409 = device40.createBindGroup({
        label: "bind_group409",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4029,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group409);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndirect(buffer2036, 0);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder2021.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder3000.drawIndexed(3);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4030 = device40.createBuffer({
        label: "buffer4030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4030, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4030, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2038, 0);
    device30.queue.submit([]);
    render_pass_encoder3001.popDebugGroup();
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer2012, 0);
    device20.queue.submit([command_buffer200, ]);
    device30.queue.submit([]);
    compute_pass_encoder2001.end();
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4031 = device40.createBuffer({
        label: "buffer4031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4031, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4031, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer2032, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2025, 0);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder2001.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2010.drawIndirect(buffer2025, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer2012, 0);
    compute_pass_encoder2001.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2010.drawIndirect(buffer2031, 0);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder3010.drawIndirect(buffer300, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2001.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2027, 0);
    device70.queue.submit([]);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndirect(buffer2043, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2044, "uint16");
    render_pass_encoder3000.popDebugGroup();
    const buffer4032 = device40.createBuffer({
        label: "buffer4032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4033 = device40.createBuffer({
        label: "buffer4033",
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
                    buffer: buffer4032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4033,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4010);
    compute_pass_encoder4000.end();
    device20.queue.submit([]);
    render_pass_encoder2021.end();
    render_pass_encoder2000.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2028, 0);
    const buffer2045 = device20.createBuffer({
        label: "buffer2045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2046 = device20.createBuffer({
        label: "buffer2046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2019 = device20.createBindGroup({
        label: "bind_group2019",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2046,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2019);
    render_pass_encoder3010.drawIndexedIndirect(buffer300, 0);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2047 = device20.createBuffer({
        label: "buffer2047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2047, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2047, 0);
    render_pass_encoder2031.drawIndexed(3);
    device70.queue.submit([]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2023, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2017, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder2030.drawIndirect(buffer201, 0);
    render_pass_encoder3000.drawIndirect(buffer301, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder3010.draw(3);
    render_pass_encoder2000.draw(3);
    render_pass_encoder3010.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer2047, 0);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4034 = device40.createBuffer({
        label: "buffer4034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4034, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4034, 0);
    render_pass_encoder3000.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer2042, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2041, 0);
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
        
    const bind_group4011 = device40.createBindGroup({
        label: "bind_group4011",
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

    compute_pass_encoder4000.setBindGroup(0, bind_group4011);
    render_pass_encoder2000.drawIndirect(buffer2027, 0);
    render_pass_encoder2011.drawIndirect(buffer2031, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2044, 0);
    render_pass_encoder2020.drawIndirect(buffer200, 0);
    render_pass_encoder2030.draw(3);
    device40.queue.submit([command_buffer401, ]);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4037 = device40.createBuffer({
        label: "buffer4037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4037, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4037, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer308, 0);
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
        
    const bind_group4012 = device40.createBindGroup({
        label: "bind_group4012",
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

    compute_pass_encoder4020.setBindGroup(0, bind_group4012);
    render_pass_encoder3000.setIndexBuffer(buffer308, "uint16");
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4040 = device40.createBuffer({
        label: "buffer4040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4040, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4040, 0);
    render_pass_encoder2021.setIndexBuffer(buffer209, "uint16");
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder2011.drawIndirect(buffer2031, 0);
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder4010.end();
    render_pass_encoder2010.drawIndirect(buffer200, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2021.drawIndirect(buffer2018, 0);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2011.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder3000.drawIndirect(buffer300, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2001.drawIndirect(buffer2047, 0);
    const buffer4041 = device40.createBuffer({
        label: "buffer4041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4042 = device40.createBuffer({
        label: "buffer4042",
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
                    buffer: buffer4041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4042,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4013);
    render_pass_encoder2010.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2010.drawIndirect(buffer2027, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2044, 0);
    compute_pass_encoder4000.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2031.end();
    const buffer2048 = device20.createBuffer({
        label: "buffer2048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2049 = device20.createBuffer({
        label: "buffer2049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2020 = device20.createBindGroup({
        label: "bind_group2020",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2049,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2020);
    render_pass_encoder2000.drawIndirect(buffer2031, 0);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer304, 0);
    render_pass_encoder2020.drawIndirect(buffer208, 0);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder2001.drawIndirect(buffer200, 0);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2042, 0);
    const buffer4043 = device40.createBuffer({
        label: "buffer4043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4044 = device40.createBuffer({
        label: "buffer4044",
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
                    buffer: buffer4043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4044,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4014);
    render_pass_encoder2031.drawIndirect(buffer200, 0);
    render_pass_encoder2031.drawIndirect(buffer2016, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2037, "uint16");
    render_pass_encoder3010.drawIndirect(buffer300, 0);
    render_pass_encoder2001.drawIndexed(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2010.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2031.drawIndirect(buffer2028, 0);
    render_pass_encoder2010.drawIndirect(buffer2047, 0);
    render_pass_encoder2011.popDebugGroup();
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4045 = device40.createBuffer({
        label: "buffer4045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4045, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4045, 0);
    render_pass_encoder3010.drawIndirect(buffer300, 0);
    render_pass_encoder3000.drawIndirect(buffer300, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2050 = device20.createBuffer({
        label: "buffer2050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2050, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2050, 0);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2051 = device20.createBuffer({
        label: "buffer2051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2051, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2051, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2052 = device20.createBuffer({
        label: "buffer2052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2052, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2052, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2028, "uint16");
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2021.drawIndirect(buffer2050, 0);
    render_pass_encoder2001.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2001.setIndexBuffer(buffer2045, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2031, 0);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer206, 0);
    device20.queue.submit([command_buffer201, ]);
    device30.queue.submit([command_buffer300, ]);
    device20.queue.submit([]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2021.popDebugGroup();
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
        
    const bind_group4015 = device40.createBindGroup({
        label: "bind_group4015",
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4020.setBindGroup(0, bind_group4015);
    device20.queue.submit([command_buffer201, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer200, 0);
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
        
    const bind_group4016 = device40.createBindGroup({
        label: "bind_group4016",
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4010.setBindGroup(0, bind_group4016);
    render_pass_encoder3000.end();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2031, 0);
    compute_pass_encoder4000.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2011.drawIndexedIndirect(buffer2038, 0);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2038, 0);
    device20.queue.submit([command_buffer202, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2001.drawIndirect(buffer2047, 0);
    render_pass_encoder2021.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2020.drawIndirect(buffer2024, 0);
    render_pass_encoder2030.end();
    compute_pass_encoder2000.end();
    render_pass_encoder2000.drawIndirect(buffer2031, 0);
    render_pass_encoder2031.drawIndirect(buffer2031, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2032, "uint16");
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2030.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2011.drawIndirect(buffer2028, 0);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder2021.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder2010.drawIndirect(buffer2028, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2000.drawIndirect(buffer2052, 0);
    render_pass_encoder3010.end();
    render_pass_encoder2001.drawIndirect(buffer2013, 0);
    device70.queue.submit([command_buffer700, ]);
    const buffer4050 = device40.createBuffer({
        label: "buffer4050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4051 = device40.createBuffer({
        label: "buffer4051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4017 = device40.createBindGroup({
        label: "bind_group4017",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4051,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4017);
    render_pass_encoder2010.drawIndexedIndirect(buffer2046, 0);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2053 = device20.createBuffer({
        label: "buffer2053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2053, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2053, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder2021.drawIndirect(buffer2031, 0);
    render_pass_encoder2031.drawIndirect(buffer2052, 0);
    render_pass_encoder2020.drawIndirect(buffer2038, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2011.drawIndirect(buffer2038, 0);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder2031.popDebugGroup();
    compute_pass_encoder4020.end();
    render_pass_encoder2001.drawIndirect(buffer200, 0);
    render_pass_encoder2011.drawIndirect(buffer2012, 0);
    const buffer4052 = device40.createBuffer({
        label: "buffer4052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4053 = device40.createBuffer({
        label: "buffer4053",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4018 = device40.createBindGroup({
        label: "bind_group4018",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4053,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4018);
    render_pass_encoder2000.drawIndirect(buffer2052, 0);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer2028, 0);
    compute_pass_encoder2001.popDebugGroup()
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4054 = device40.createBuffer({
        label: "buffer4054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4054, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4054, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2040, 0);
    device60.queue.submit([]);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder3010.end();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer2038, 0);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2054 = device20.createBuffer({
        label: "buffer2054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2054, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2054, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2019, 0);
    device70.queue.submit([]);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder3000.draw(3);
    render_pass_encoder2000.setIndexBuffer(buffer2040, "uint16");
    device20.queue.submit([command_buffer201, ]);
    const buffer4055 = device40.createBuffer({
        label: "buffer4055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4056 = device40.createBuffer({
        label: "buffer4056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4019 = device40.createBindGroup({
        label: "bind_group4019",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4056,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4019);
    render_pass_encoder2001.drawIndexedIndirect(buffer2054, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2000.setIndexBuffer(buffer201, "uint16");
    device40.queue.submit([command_buffer401, ]);
    device40.queue.submit([command_buffer402, ]);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2021.drawIndirect(buffer200, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2037, "uint16");
    render_pass_encoder2030.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2052, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2021.end();
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder2031.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder3001.drawIndexedIndirect(buffer305, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2011.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2001.end();
    render_pass_encoder2010.popDebugGroup();
    const buffer2055 = device20.createBuffer({
        label: "buffer2055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2056 = device20.createBuffer({
        label: "buffer2056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2021 = device20.createBindGroup({
        label: "bind_group2021",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2056,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2021);
    render_pass_encoder2011.draw(3);
    render_pass_encoder3000.drawIndirect(buffer301, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2038, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3001.end();
    device40.queue.submit([command_buffer401, command_buffer403, ]);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2021.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder3000.drawIndirect(buffer305, 0);
    render_pass_encoder3000.draw(3);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4057 = device40.createBuffer({
        label: "buffer4057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4057, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4057, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2031, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2049, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2019, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer2027, 0);
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder2011.drawIndirect(buffer200, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder2011.drawIndirect(buffer2054, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2031.drawIndirect(buffer200, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder3001.draw(3);
    render_pass_encoder2011.setIndexBuffer(buffer2038, "uint16");
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder2031.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2052, 0);
    render_pass_encoder2031.drawIndirect(buffer2051, 0);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    compute_pass_encoder2000.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2047, 0);
    render_pass_encoder2021.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder2031.drawIndirect(buffer2048, 0);
    render_pass_encoder2030.drawIndirect(buffer2028, 0);
    render_pass_encoder3010.drawIndirect(buffer300, 0);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    device70.queue.submit([]);
    device60.queue.submit([command_buffer600, ]);
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
    render_pass_encoder2030.setIndexBuffer(buffer2032, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2053, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer2016, "uint16");
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder2031.drawIndirect(buffer2013, 0);
    render_pass_encoder2020.drawIndirect(buffer2031, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2053, "uint16");
    render_pass_encoder3000.drawIndirect(buffer300, 0);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2057 = device20.createBuffer({
        label: "buffer2057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2057, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2057, 0);
    render_pass_encoder2031.drawIndirect(buffer207, 0);
    device40.queue.submit([]);
    render_pass_encoder2021.popDebugGroup();
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4059 = device40.createBuffer({
        label: "buffer4059",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4059, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4059, 0);
    device70.queue.submit([command_buffer700, ]);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder3001.drawIndirect(buffer304, 0);
    render_pass_encoder2010.drawIndirect(buffer2034, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2050, 0);
    render_pass_encoder2000.draw(3);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2021.drawIndirect(buffer2054, 0);
    render_pass_encoder2030.drawIndirect(buffer201, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder3001.end();
    render_pass_encoder3001.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder2020.drawIndirect(buffer2024, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer206, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2030.drawIndirect(buffer204, 0);
    compute_pass_encoder2000.popDebugGroup()
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2021.drawIndirect(buffer2038, 0);
    render_pass_encoder3000.setIndexBuffer(buffer301, "uint16");
    render_pass_encoder2020.drawIndirect(buffer203, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder2010.drawIndirect(buffer2024, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2046, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2047, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2030.end();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer2031, 0);
    render_pass_encoder2011.drawIndirect(buffer2031, 0);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder4020.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2000.setIndexBuffer(buffer2025, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2051, 0);
    const buffer2058 = device20.createBuffer({
        label: "buffer2058",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2059 = device20.createBuffer({
        label: "buffer2059",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2022 = device20.createBindGroup({
        label: "bind_group2022",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2058,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2059,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2022);
    render_pass_encoder2010.drawIndirect(buffer200, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder2030.drawIndirect(buffer2050, 0);
    render_pass_encoder2021.drawIndirect(buffer2053, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer2057, 0);
    const buffer4060 = device40.createBuffer({
        label: "buffer4060",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4061 = device40.createBuffer({
        label: "buffer4061",
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
                    buffer: buffer4060,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4061,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4020);
    render_pass_encoder3001.draw(3);
    render_pass_encoder2000.drawIndirect(buffer2054, 0);
    render_pass_encoder2001.drawIndirect(buffer2023, 0);
    render_pass_encoder2010.draw(3);
    device40.queue.submit([]);
    render_pass_encoder2000.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer2045, "uint16");
    render_pass_encoder3000.drawIndirect(buffer307, 0);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4062 = device40.createBuffer({
        label: "buffer4062",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4062, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4062, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2031.drawIndirect(buffer2047, 0);
    render_pass_encoder3000.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer2052, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2028, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2011.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2030.drawIndirect(buffer205, 0);
    render_pass_encoder2031.drawIndirect(buffer203, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder2001.drawIndirect(buffer2052, 0);
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndirect(buffer2053, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2060 = device20.createBuffer({
        label: "buffer2060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2060, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2060, 0);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder2030.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder3000.end();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2000.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2031.drawIndirect(buffer2043, 0);
    const buffer2061 = device20.createBuffer({
        label: "buffer2061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2062 = device20.createBuffer({
        label: "buffer2062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2023 = device20.createBindGroup({
        label: "bind_group2023",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2062,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2023);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device60.queue.submit([]);
    render_pass_encoder2010.drawIndirect(buffer200, 0);
    render_pass_encoder2031.end();
    render_pass_encoder3010.drawIndirect(buffer300, 0);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder2021.drawIndirect(buffer2027, 0);
    render_pass_encoder2020.drawIndirect(buffer2050, 0);
    render_pass_encoder2020.drawIndirect(buffer2050, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer200, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2030.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder3001.draw(3);
    render_pass_encoder2020.drawIndexedIndirect(buffer2047, 0);
    render_pass_encoder2031.drawIndirect(buffer2031, 0);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder2000.end();
    render_pass_encoder2030.end();
    render_pass_encoder2010.end();
    render_pass_encoder2010.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2027, 0);
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2001.drawIndirect(buffer202, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder2011.drawIndirect(buffer2057, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2000.drawIndirect(buffer2051, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder3000.drawIndirect(buffer300, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2031.end();
    render_pass_encoder2000.drawIndirect(buffer2011, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2000.drawIndirect(buffer2016, 0);
    const buffer2063 = device20.createBuffer({
        label: "buffer2063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2064 = device20.createBuffer({
        label: "buffer2064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2024 = device20.createBindGroup({
        label: "bind_group2024",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2064,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2024);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2065 = device20.createBuffer({
        label: "buffer2065",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2065, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2065, 0);
    render_pass_encoder2011.drawIndirect(buffer2021, 0);
    render_pass_encoder2000.drawIndirect(buffer2038, 0);
    render_pass_encoder2001.drawIndirect(buffer2047, 0);
    const buffer2066 = device20.createBuffer({
        label: "buffer2066",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2067 = device20.createBuffer({
        label: "buffer2067",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2025 = device20.createBindGroup({
        label: "bind_group2025",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2066,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2067,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2025);
    render_pass_encoder2021.drawIndirect(buffer2047, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2031.draw(3);
    render_pass_encoder2010.drawIndirect(buffer2028, 0);
    render_pass_encoder2010.drawIndirect(buffer2054, 0);
    const buffer2068 = device20.createBuffer({
        label: "buffer2068",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2069 = device20.createBuffer({
        label: "buffer2069",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2026 = device20.createBindGroup({
        label: "bind_group2026",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2068,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2069,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2026);
    render_pass_encoder3001.draw(3);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder3010.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2065, 0);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder2021.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2001.drawIndexedIndirect(buffer2033, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2021.setIndexBuffer(buffer2043, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2047, 0);
    render_pass_encoder2011.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer300, 0);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder2000.setIndexBuffer(buffer2063, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2010.drawIndirect(buffer200, 0);
    render_pass_encoder2010.drawIndirect(buffer2052, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder2021.drawIndirect(buffer2057, 0);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2020.drawIndirect(buffer2054, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2054, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2000.drawIndirect(buffer206, 0);
    render_pass_encoder2011.drawIndexed(3);
    device60.queue.submit([]);
    render_pass_encoder2001.end();
    render_pass_encoder2031.setIndexBuffer(buffer2055, "uint16");
    render_pass_encoder3010.drawIndirect(buffer300, 0);
    render_pass_encoder2030.drawIndirect(buffer2064, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder2000.drawIndirect(buffer2028, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder3010.draw(3);
    render_pass_encoder2030.draw(3);
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
        
    const bind_group4021 = device40.createBindGroup({
        label: "bind_group4021",
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

    compute_pass_encoder4020.setBindGroup(0, bind_group4021);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer2018, "uint16");
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder2010.end();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2052, 0);
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3000.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder3010.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2047, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2057, 0);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4065 = device40.createBuffer({
        label: "buffer4065",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4065, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4065, 0);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder2031.drawIndirect(buffer2054, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2011.drawIndirect(buffer2037, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2055, "uint16");
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder3000.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3000.drawIndirect(buffer307, 0);
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder2011.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder2011.drawIndirect(buffer2023, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2027, 0);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    const buffer2070 = device20.createBuffer({
        label: "buffer2070",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2071 = device20.createBuffer({
        label: "buffer2071",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2027 = device20.createBindGroup({
        label: "bind_group2027",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2070,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2071,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2027);
    render_pass_encoder2030.drawIndexedIndirect(buffer2047, 0);
    render_pass_encoder2020.draw(3);
    device40.queue.submit([command_buffer401, command_buffer402, ]);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2031.end();
    device60.queue.submit([]);
    render_pass_encoder3000.end();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer2070, 0);
    render_pass_encoder2001.drawIndirect(buffer2028, 0);
    render_pass_encoder2021.drawIndirect(buffer2054, 0);
    render_pass_encoder3000.end();
    render_pass_encoder3000.setIndexBuffer(buffer308, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2022, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2000.setIndexBuffer(buffer2059, "uint16");
    render_pass_encoder3010.drawIndirect(buffer300, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2054, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2050, 0);
    render_pass_encoder3010.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder2011.end();
    render_pass_encoder2011.setIndexBuffer(buffer2053, "uint16");
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder3010.draw(3);
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
        
    const bind_group4022 = device40.createBindGroup({
        label: "bind_group4022",
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

    compute_pass_encoder4000.setBindGroup(0, bind_group4022);
    device30.queue.submit([]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2047, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2010.drawIndirect(buffer2065, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2020.drawIndirect(buffer2013, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2031, 0);
    device30.queue.submit([]);
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
    render_pass_encoder2030.setIndexBuffer(buffer2056, "uint16");
    const buffer2072 = device20.createBuffer({
        label: "buffer2072",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2073 = device20.createBuffer({
        label: "buffer2073",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2028 = device20.createBindGroup({
        label: "bind_group2028",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2072,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2073,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2028);
    const buffer2074 = device20.createBuffer({
        label: "buffer2074",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2075 = device20.createBuffer({
        label: "buffer2075",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2029 = device20.createBindGroup({
        label: "bind_group2029",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2074,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2075,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2029);
    device20.queue.submit([]);
    render_pass_encoder2021.drawIndirect(buffer2052, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2010.drawIndirect(buffer2057, 0);
    compute_pass_encoder4010.end();
    render_pass_encoder2021.setIndexBuffer(buffer2019, "uint16");
    device10.queue.submit([]);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer200, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2011.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2027, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2064, 0);
    render_pass_encoder2000.drawIndirect(buffer2027, 0);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder3000.drawIndirect(buffer308, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder3000.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder3001.drawIndexed(3);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2050, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer202, 0);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder2031.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2001.drawIndirect(buffer200, 0);
    compute_pass_encoder4020.end();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder2031.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder3001.setIndexBuffer(buffer301, "uint16");
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder3000.drawIndirect(buffer300, 0);
    const buffer2076 = device20.createBuffer({
        label: "buffer2076",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2077 = device20.createBuffer({
        label: "buffer2077",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2030 = device20.createBindGroup({
        label: "bind_group2030",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2076,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2077,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2030);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4069 = device40.createBuffer({
        label: "buffer4069",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4069, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4069, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2021.drawIndirect(buffer200, 0);
    device20.queue.submit([]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2047, 0);
    render_pass_encoder2001.drawIndirect(buffer2014, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2075, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder2011.drawIndirect(buffer2047, 0);
    render_pass_encoder2000.drawIndirect(buffer2036, 0);
    render_pass_encoder2021.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2054, 0);
    render_pass_encoder3001.drawIndexed(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2011.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2031.end();
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder2011.drawIndirect(buffer2053, 0);
    device10.queue.submit([]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2064, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2000.drawIndirect(buffer2052, 0);
    render_pass_encoder2021.drawIndirect(buffer2065, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2057, 0);
    const buffer2078 = device20.createBuffer({
        label: "buffer2078",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2079 = device20.createBuffer({
        label: "buffer2079",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2031 = device20.createBindGroup({
        label: "bind_group2031",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2078,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2079,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2031);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2080 = device20.createBuffer({
        label: "buffer2080",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2080, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2080, 0);
    render_pass_encoder2020.drawIndirect(buffer2041, 0);
    render_pass_encoder3010.drawIndirect(buffer300, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2031, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2059, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2056, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer2032, 0);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4070 = device40.createBuffer({
        label: "buffer4070",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4070, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4070, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2047, 0);
    const buffer2081 = device20.createBuffer({
        label: "buffer2081",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2082 = device20.createBuffer({
        label: "buffer2082",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2032 = device20.createBindGroup({
        label: "bind_group2032",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2081,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2082,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2032);
    render_pass_encoder3001.draw(3);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2031.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer2053, 0);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2021.drawIndirect(buffer2027, 0);
    render_pass_encoder2031.drawIndirect(buffer2065, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2052, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2050, 0);
    render_pass_encoder3010.draw(3);
    render_pass_encoder2000.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2062, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2031.drawIndirect(buffer2028, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2000.setIndexBuffer(buffer2073, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder3000.drawIndirect(buffer300, 0);
    render_pass_encoder3000.end();
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder2010.drawIndirect(buffer2053, 0);
    render_pass_encoder2020.drawIndirect(buffer2079, 0);
    render_pass_encoder2020.drawIndirect(buffer2027, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2011.drawIndexedIndirect(buffer2047, 0);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder3001.end();
    render_pass_encoder2011.drawIndirect(buffer2063, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2064, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder2000.drawIndirect(buffer2038, 0);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2010.setIndexBuffer(buffer2023, "uint16");
    compute_pass_encoder4010.dispatchWorkgroups(100);
    device60.queue.submit([]);
    compute_pass_encoder4020.end();
    render_pass_encoder2011.end();
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder2021.drawIndirect(buffer2065, 0);
    render_pass_encoder3010.end();
    render_pass_encoder2030.drawIndirect(buffer200, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2047, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2050, 0);
    const buffer2083 = device20.createBuffer({
        label: "buffer2083",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2084 = device20.createBuffer({
        label: "buffer2084",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2033 = device20.createBindGroup({
        label: "bind_group2033",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2083,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2084,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2033);
    render_pass_encoder3010.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2059, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder3010.drawIndirect(buffer301, 0);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder2000.setIndexBuffer(buffer2084, "uint16");
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4071 = device40.createBuffer({
        label: "buffer4071",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4071, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4071, 0);
    compute_pass_encoder2001.end();
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4072 = device40.createBuffer({
        label: "buffer4072",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4072, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4072, 0);
    render_pass_encoder2021.drawIndirect(buffer2065, 0);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    compute_pass_encoder2001.popDebugGroup()
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder2020.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2065, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder3001.end();
    render_pass_encoder2001.drawIndirect(buffer209, 0);
    render_pass_encoder2030.drawIndirect(buffer2057, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2050, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2010.drawIndirect(buffer200, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2001.setIndexBuffer(buffer208, "uint16");
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder3001.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2020.drawIndirect(buffer2024, 0);
    render_pass_encoder2030.drawIndirect(buffer2063, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2018, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3001.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2080, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2068, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2021.drawIndirect(buffer2029, 0);
    device60.queue.submit([]);
    render_pass_encoder3010.end();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2011.drawIndirect(buffer2031, 0);
    render_pass_encoder3001.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2020.end();
    render_pass_encoder2030.setIndexBuffer(buffer2073, "uint16");
    const buffer2085 = device20.createBuffer({
        label: "buffer2085",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2086 = device20.createBuffer({
        label: "buffer2086",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2034 = device20.createBindGroup({
        label: "bind_group2034",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2085,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2086,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2034);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder2021.setIndexBuffer(buffer2035, "uint16");
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder2011.drawIndirect(buffer2051, 0);
    render_pass_encoder2020.drawIndirect(buffer2036, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2060, 0);
    compute_pass_encoder2000.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3010.draw(3);
    render_pass_encoder2030.drawIndexedIndirect(buffer2052, 0);
    const buffer2087 = device20.createBuffer({
        label: "buffer2087",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2088 = device20.createBuffer({
        label: "buffer2088",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2035 = device20.createBindGroup({
        label: "bind_group2035",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2087,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2088,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2035);
    render_pass_encoder2000.drawIndexedIndirect(buffer2050, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder2031.drawIndirect(buffer2028, 0);
    render_pass_encoder2020.drawIndirect(buffer2057, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder3010.draw(3);
    render_pass_encoder2001.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2050, 0);
    render_pass_encoder2010.drawIndirect(buffer2028, 0);
    render_pass_encoder2020.drawIndirect(buffer2047, 0);
    device40.queue.submit([command_buffer400, command_buffer403, ]);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3010.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder3001.drawIndirect(buffer300, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder2000.setIndexBuffer(buffer2060, "uint16");
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder3010.drawIndexedIndirect(buffer300, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder2011.drawIndirect(buffer2021, 0);
    compute_pass_encoder2001.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder2010.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2031.popDebugGroup();
    device40.queue.submit([command_buffer402, command_buffer403, ]);
    render_pass_encoder2010.drawIndirect(buffer2052, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2010.drawIndexedIndirect(buffer2080, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2076, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2038, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder2001.drawIndirect(buffer2050, 0);
    render_pass_encoder2031.drawIndirect(buffer2011, 0);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder3001.draw(3);
    render_pass_encoder3000.end();
    render_pass_encoder2011.end();
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4073 = device40.createBuffer({
        label: "buffer4073",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4073, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4073, 0);
    render_pass_encoder2031.drawIndirect(buffer2047, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2000.drawIndirect(buffer2057, 0);
    render_pass_encoder2030.drawIndirect(buffer2025, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2084, 0);
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    compute_pass_encoder4000.end();
    render_pass_encoder2000.end();
    render_pass_encoder2030.drawIndirect(buffer2027, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2031.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder2001.drawIndirect(buffer2080, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder2000.end();
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder2011.drawIndirect(buffer2033, 0);
    const buffer2089 = device20.createBuffer({
        label: "buffer2089",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2090 = device20.createBuffer({
        label: "buffer2090",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2036 = device20.createBindGroup({
        label: "bind_group2036",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2089,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2090,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2036);
    render_pass_encoder2010.drawIndirect(buffer2017, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2053, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2010.setIndexBuffer(buffer2017, "uint16");
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2078, 0);
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder2020.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2031.popDebugGroup();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2091 = device20.createBuffer({
        label: "buffer2091",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2091, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2091, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2080, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2052, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer206, 0);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2092 = device20.createBuffer({
        label: "buffer2092",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2092, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2092, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2050, 0);
    const buffer2093 = device20.createBuffer({
        label: "buffer2093",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2094 = device20.createBuffer({
        label: "buffer2094",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2037 = device20.createBindGroup({
        label: "bind_group2037",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2093,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2094,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2037);
    compute_pass_encoder4020.end();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder2021.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2027, 0);
    device20.queue.submit([command_buffer201, ]);
    device50.queue.submit([]);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer2075, 0);
    render_pass_encoder2001.drawIndirect(buffer2027, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2020.draw(3);
    render_pass_encoder2001.draw(3);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2021.draw(3);
    render_pass_encoder2020.drawIndirect(buffer2060, 0);
    device40.queue.submit([]);
    render_pass_encoder3001.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder2031.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder3000.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer2042, "uint16");
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder2020.drawIndirect(buffer2052, 0);
    render_pass_encoder2011.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2011.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder3010.end();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2028, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2010.drawIndirect(buffer2047, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2050, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2095 = device20.createBuffer({
        label: "buffer2095",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2095, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2095, 0);
    render_pass_encoder2001.drawIndirect(buffer2054, 0);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder2011.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer2093, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2000.drawIndirect(buffer2027, 0);
    render_pass_encoder3001.draw(3);
    render_pass_encoder2031.drawIndirect(buffer2095, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2092, 0);
    render_pass_encoder2030.drawIndirect(buffer2095, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder2021.setIndexBuffer(buffer2010, "uint16");
    const buffer2096 = device20.createBuffer({
        label: "buffer2096",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2097 = device20.createBuffer({
        label: "buffer2097",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2038 = device20.createBindGroup({
        label: "bind_group2038",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2096,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2097,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2038);
    render_pass_encoder2000.drawIndexedIndirect(buffer2064, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer2064, "uint16");
    render_pass_encoder3000.drawIndirect(buffer300, 0);
    render_pass_encoder2030.drawIndirect(buffer2095, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2051, 0);
    device40.queue.submit([]);
    device10.queue.submit([]);
    render_pass_encoder2021.drawIndirect(buffer2056, 0);
    render_pass_encoder2031.drawIndirect(buffer209, 0);
    device30.queue.submit([]);
    render_pass_encoder2001.setIndexBuffer(buffer2033, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer2047, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder2001.drawIndirect(buffer2080, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2091, 0);
    compute_pass_encoder4010.popDebugGroup()
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder2011.setIndexBuffer(buffer2013, "uint16");
    device40.queue.submit([]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2021.setIndexBuffer(buffer2056, "uint16");
    render_pass_encoder2010.end();
    render_pass_encoder2000.drawIndirect(buffer2080, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2011.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2001.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder3000.drawIndexed(3);
    device30.queue.submit([]);
    render_pass_encoder2011.setIndexBuffer(buffer2036, "uint16");
    render_pass_encoder3010.drawIndirect(buffer300, 0);
    device60.queue.submit([]);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder3001.drawIndirect(buffer300, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2027, 0);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4074 = device40.createBuffer({
        label: "buffer4074",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4074, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4074, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer305, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer300, 0);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder3001.end();
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2080, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder2021.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2050, 0);
    render_pass_encoder2030.drawIndirect(buffer2091, 0);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer2060, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer2052, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer2010, 0);
    render_pass_encoder2031.drawIndirect(buffer2052, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder3000.draw(3);
    render_pass_encoder2011.drawIndexedIndirect(buffer2085, 0);
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    render_pass_encoder2020.drawIndirect(buffer2057, 0);
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndirect(buffer2024, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2000.drawIndirect(buffer2031, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2001.drawIndirect(buffer2050, 0);
    render_pass_encoder2030.drawIndirect(buffer2074, 0);
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder2001.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder2020.end();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3001.end();
    render_pass_encoder2011.drawIndirect(buffer2080, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2038, 0);
    device60.queue.submit([]);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2000.end();
    render_pass_encoder2010.setIndexBuffer(buffer2054, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2021.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2031, 0);
    compute_pass_encoder2001.popDebugGroup()
    const buffer2098 = device20.createBuffer({
        label: "buffer2098",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2099 = device20.createBuffer({
        label: "buffer2099",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2039 = device20.createBindGroup({
        label: "bind_group2039",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2098,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2099,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2039);
    render_pass_encoder2030.drawIndexedIndirect(buffer2080, 0);
    compute_pass_encoder4010.end();
    render_pass_encoder2011.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2041, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2092, 0);
    render_pass_encoder2020.drawIndirect(buffer2028, 0);
    render_pass_encoder2031.drawIndirect(buffer2027, 0);
    render_pass_encoder2000.drawIndirect(buffer2066, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer300, 0);
    device40.queue.submit([command_buffer400, command_buffer403, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndirect(buffer2092, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2000.drawIndirect(buffer2095, 0);
    render_pass_encoder2010.drawIndirect(buffer2050, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2065, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder3000.drawIndexedIndirect(buffer308, 0);
    render_pass_encoder3010.end();
    render_pass_encoder2001.drawIndirect(buffer2063, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2050, 0);
    render_pass_encoder3000.popDebugGroup();
    const buffer20100 = device20.createBuffer({
        label: "buffer20100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20101 = device20.createBuffer({
        label: "buffer20101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2040 = device20.createBindGroup({
        label: "bind_group2040",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20101,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2040);
    render_pass_encoder3000.drawIndexed(3);
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
        
    const bind_group4023 = device40.createBindGroup({
        label: "bind_group4023",
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

    compute_pass_encoder4000.setBindGroup(0, bind_group4023);
    render_pass_encoder2030.setIndexBuffer(buffer2050, "uint16");
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
        
    const bind_group4024 = device40.createBindGroup({
        label: "bind_group4024",
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4000.setBindGroup(0, bind_group4024);
    const buffer20102 = device20.createBuffer({
        label: "buffer20102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20103 = device20.createBuffer({
        label: "buffer20103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2041 = device20.createBindGroup({
        label: "bind_group2041",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20103,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2041);
    render_pass_encoder3010.drawIndexedIndirect(buffer302, 0);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndexedIndirect(buffer2092, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2065, 0);
    compute_pass_encoder2001.end();
    device60.queue.submit([]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2030.setIndexBuffer(buffer2059, "uint16");
    render_pass_encoder2030.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2021.drawIndirect(buffer2076, 0);
    render_pass_encoder2020.drawIndirect(buffer2087, 0);
    render_pass_encoder2001.drawIndirect(buffer207, 0);
    render_pass_encoder3001.end();
    render_pass_encoder3010.drawIndexedIndirect(buffer300, 0);
    compute_pass_encoder2001.dispatchWorkgroups(100);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndirect(buffer2031, 0);
    render_pass_encoder2001.drawIndirect(buffer2028, 0);
    render_pass_encoder2011.drawIndirect(buffer2053, 0);
    render_pass_encoder2030.end();
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder2010.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder2031.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2051, 0);
    compute_pass_encoder2001.popDebugGroup()
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2030.end();
    const buffer4079 = device40.createBuffer({
        label: "buffer4079",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4080 = device40.createBuffer({
        label: "buffer4080",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4025 = device40.createBindGroup({
        label: "bind_group4025",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4079,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4080,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4025);
    render_pass_encoder2011.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder3000.popDebugGroup();
    const buffer20104 = device20.createBuffer({
        label: "buffer20104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20105 = device20.createBuffer({
        label: "buffer20105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2042 = device20.createBindGroup({
        label: "bind_group2042",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20105,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2042);
    render_pass_encoder2030.setIndexBuffer(buffer2052, "uint16");
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder2031.drawIndirect(buffer2051, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2057, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2050, 0);
    render_pass_encoder2011.drawIndirect(buffer200, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2069, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2065, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2027, 0);
    device40.queue.submit([]);
    render_pass_encoder2031.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3000.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2035, "uint16");
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder4010.end();
    render_pass_encoder2011.popDebugGroup();
    device70.queue.submit([]);
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder3000.drawIndirect(buffer300, 0);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder3001.setIndexBuffer(buffer308, "uint16");
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder2000.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer20103, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2059, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2074, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2095, 0);
    render_pass_encoder2031.setIndexBuffer(buffer20105, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2092, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2080, 0);
    compute_pass_encoder4000.end();
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    device20.queue.submit([command_buffer200, ]);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder2031.drawIndirect(buffer2013, 0);
    render_pass_encoder2030.drawIndirect(buffer204, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2049, 0);
    const buffer4081 = device40.createBuffer({
        label: "buffer4081",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4082 = device40.createBuffer({
        label: "buffer4082",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4026 = device40.createBindGroup({
        label: "bind_group4026",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4081,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4082,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4026);
    const buffer4083 = device40.createBuffer({
        label: "buffer4083",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4084 = device40.createBuffer({
        label: "buffer4084",
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
                    buffer: buffer4083,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4084,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4027);
    render_pass_encoder2010.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2056, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2050, 0);
    render_pass_encoder2011.drawIndirect(buffer2050, 0);
    device70.queue.submit([command_buffer700, ]);
    compute_pass_encoder2001.end();
    render_pass_encoder2020.drawIndirect(buffer2057, 0);
    render_pass_encoder2001.drawIndirect(buffer2091, 0);
    render_pass_encoder2031.drawIndirect(buffer2072, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder2021.setIndexBuffer(buffer20101, "uint16");
    compute_pass_encoder4010.popDebugGroup()
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3001.setIndexBuffer(buffer307, "uint16");
    device40.queue.submit([]);
    render_pass_encoder2030.setIndexBuffer(buffer2095, "uint16");
    compute_pass_encoder2000.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2001.setIndexBuffer(buffer2064, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2060, 0);
    render_pass_encoder2001.drawIndirect(buffer2047, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2045, "uint16");
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndexedIndirect(buffer2051, 0);
    const buffer4085 = device40.createBuffer({
        label: "buffer4085",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4086 = device40.createBuffer({
        label: "buffer4086",
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
                    buffer: buffer4085,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4086,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4028);
    render_pass_encoder2001.drawIndexedIndirect(buffer2028, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder2020.drawIndirect(buffer2027, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2087, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2030.drawIndirect(buffer200, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2070, 0);
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2011.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2030.end();
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder3010.end();
    render_pass_encoder3010.drawIndirect(buffer304, 0);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2089, 0);
    compute_pass_encoder4000.popDebugGroup()
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20106 = device20.createBuffer({
        label: "buffer20106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20106, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20106, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2011.drawIndirect(buffer20106, 0);
    render_pass_encoder2021.end();
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2093, 0);
    render_pass_encoder2021.end();
    const buffer4087 = device40.createBuffer({
        label: "buffer4087",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4088 = device40.createBuffer({
        label: "buffer4088",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4029 = device40.createBindGroup({
        label: "bind_group4029",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4087,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4088,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4029);
    render_pass_encoder2030.setIndexBuffer(buffer2088, "uint16");
    render_pass_encoder3001.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2050, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2031, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2095, "uint16");
    render_pass_encoder2031.setIndexBuffer(buffer2052, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer2082, "uint16");
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4089 = device40.createBuffer({
        label: "buffer4089",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4089, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4089, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2096, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2060, 0);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder2010.drawIndirect(buffer2010, 0);
    const buffer20107 = device20.createBuffer({
        label: "buffer20107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20108 = device20.createBuffer({
        label: "buffer20108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2043 = device20.createBindGroup({
        label: "bind_group2043",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20108,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2043);
    render_pass_encoder2000.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2000.drawIndirect(buffer2084, 0);
    render_pass_encoder2010.drawIndirect(buffer2053, 0);
    render_pass_encoder2031.drawIndirect(buffer2092, 0);
    render_pass_encoder3010.end();
    render_pass_encoder2020.popDebugGroup();
    const buffer20109 = device20.createBuffer({
        label: "buffer20109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20110 = device20.createBuffer({
        label: "buffer20110",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2044 = device20.createBindGroup({
        label: "bind_group2044",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20110,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2044);
    render_pass_encoder2030.drawIndexedIndirect(buffer20106, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2092, "uint16");
    render_pass_encoder3001.end();
    render_pass_encoder2000.setIndexBuffer(buffer20103, "uint16");
    render_pass_encoder3001.end();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3000.end();
    render_pass_encoder3000.drawIndirect(buffer301, 0);
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder2000.drawIndirect(buffer2051, 0);
    render_pass_encoder2000.drawIndirect(buffer2025, 0);
    render_pass_encoder2000.drawIndirect(buffer20106, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer307, 0);
    render_pass_encoder3010.drawIndexed(3);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2031.drawIndexedIndirect(buffer2070, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20111 = device20.createBuffer({
        label: "buffer20111",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20111, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20111, 0);
    render_pass_encoder2000.drawIndirect(buffer20111, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2027, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder2000.drawIndirect(buffer2085, 0);
    render_pass_encoder2010.drawIndirect(buffer2028, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2047, 0);
    render_pass_encoder2021.drawIndirect(buffer2060, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer20111, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2053, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3010.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder3000.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2011.drawIndirect(buffer2053, 0);
    render_pass_encoder2000.drawIndirect(buffer2027, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer2089, 0);
    render_pass_encoder3001.drawIndirect(buffer300, 0);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    device20.queue.submit([]);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2030.end();
    render_pass_encoder2010.draw(3);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder2021.drawIndirect(buffer2011, 0);
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder3001.draw(3);
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder2001.drawIndirect(buffer2092, 0);
    render_pass_encoder2030.drawIndirect(buffer2065, 0);
    render_pass_encoder2021.endOcclusionQuery()
    render_pass_encoder2011.drawIndirect(buffer2045, 0);
    render_pass_encoder2021.drawIndirect(buffer2054, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2095, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder2000.drawIndirect(buffer2026, 0);
    render_pass_encoder2011.drawIndirect(buffer2013, 0);
    render_pass_encoder2010.drawIndirect(buffer207, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2031, 0);
    device60.queue.submit([]);
    render_pass_encoder2011.setIndexBuffer(buffer2033, "uint16");
    render_pass_encoder3000.drawIndirect(buffer300, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2000.end();
    render_pass_encoder2000.drawIndirect(buffer2054, 0);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4090 = device40.createBuffer({
        label: "buffer4090",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4090, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4090, 0);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    compute_pass_encoder4020.end();
    render_pass_encoder2000.drawIndirect(buffer2042, 0);
    render_pass_encoder3001.drawIndirect(buffer300, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer2073, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2095, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2057, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3000.drawIndexedIndirect(buffer300, 0);
}