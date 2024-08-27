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
        powerPreference: "low-power"
    });
    const array0 = new Float32Array([-0.5, -0.5, -0.75, -1.0, -0.75, 0.0, 0.75, 0.5, 0.25, -0.5, 0.0, -1.0, -0.5, 0.0, 0.5, 0.25, -0.5, -0.5, 1.0, -0.5, -1.0, 1.0, -0.5, -0.5, 0.5, 0.0, -1.0, 0.75, -0.75, -1.0, 1.0, -0.25, 0.25, 0.0, 0.25, 1.0, 0.25, -1.0, -0.5, -0.5, -1.0, -0.5, -0.5, -1.0, 0.75, 0.25, 0.25, -0.25, 0.25, 0.25, 1.0, 0.5, 0.25, 0.5, -0.5, -0.25, 0.0, -0.5, -0.75, -0.75, -0.5, 0.0, -1.0, 1.0, -0.25, 0.0, 0.75, -0.5, 0.25, -0.5, 0.75, -1.0, -1.0, 1.0, 0.25, 0.0, 0.25, 0.5, 0.0, 1.0, -0.25, -0.75, -0.25, -0.75, 0.75, 0.0, 0.0, 0.5, 1.0, 0.25, 0.75, -0.75, -0.5, -0.75, 0.0, -0.25, -0.5, -1.0, -0.75, 0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.destroy();
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    
    
    
    
    
    
    device10.pushErrorScope("validation");
    
    
    
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const array1 = new Float32Array([-0.75, -1.0, -0.25, -0.25, 0.5, -1.0, 0.25, 1.0, 1.0, 0.25, -0.5, 0.0, 1.0, 0.75, 0.75, 0.75, 0.75, 0.5, 0.75, 0.75, 0.5, -0.25, 0.0, 0.25, 0.5, 0.25, 0.5, 0.25, -0.75, -1.0, -1.0, 0.5, 0.75, -0.75, -0.5, -0.75, 0.25, 1.0, 0.5, 0.5, 0.0, -0.25, 0.0, 0.25, -1.0, -1.0, -0.75, 0.75, -1.0, 0.5, 0.5, 0.25, -0.75, 1.0, 0.75, -0.75, 0.75, -1.0, 0.0, -1.0, 0.75, -0.75, 0.75, -1.0, 0.0, -0.25, -0.75, -0.25, 0.75, -1.0, 1.0, 0.0, -1.0, -1.0, 0.25, 0.25, 0.5, 0.75, 0.25, -0.5, -0.75, 1.0, -0.75, 0.5, 0.0, 0.75, -0.75, 0.5, 0.75, 0.25, 0.25, 0.75, -0.75, -0.25, -0.5, -0.25, 0.5, 1.0, -1.0, 0.0, ]);
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const array2 = new Float32Array([-0.5, 0.75, 1.0, -1.0, -0.25, -0.25, 0.0, -1.0, -1.0, -0.25, 1.0, -0.5, 0.5, 0.0, -0.25, -1.0, 0.0, 0.5, 0.75, 0.0, -0.75, 0.25, -0.5, 0.0, -0.75, 0.5, 0.25, 0.25, 0.5, -0.25, 1.0, 0.75, 0.0, -0.25, 0.5, -0.75, -1.0, 0.75, -0.75, -0.75, -0.25, 0.25, 0.75, 0.75, -0.5, 0.75, 0.0, -0.25, 0.75, -0.5, 1.0, -0.5, -0.25, -1.0, -1.0, -0.75, -0.5, -0.5, 0.25, 1.0, 0.75, -0.25, 0.5, 1.0, 0.25, -0.5, -0.5, -0.25, -0.75, -0.75, 0.0, -0.5, 0.5, -0.25, -0.5, 0.25, -0.75, -0.25, 0.5, 0.0, -1.0, 0.25, -1.0, 0.0, -0.75, -0.5, 0.75, 0.5, -0.25, 0.25, 1.0, 0.5, -0.25, 0.5, 0.75, 0.75, -0.25, 0.0, 0.5, 1.0, ]);
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    const command_buffer100 = command_encoder100.finish();
    device20.pushErrorScope("out-of-memory");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder200.insertDebugMarker("mymarker");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    buffer100.destroy()
    const array3 = new Float32Array([0.25, -0.75, 0.75, 0.25, 1.0, -0.5, 0.25, 1.0, 0.75, 1.0, -0.25, -0.5, -0.25, 0.75, 1.0, 1.0, 0.5, 0.0, 0.5, -1.0, 0.0, -0.25, 0.0, -0.75, -1.0, -0.75, 0.75, 0.0, 0.75, -1.0, 1.0, 0.25, 0.5, -1.0, 0.75, -0.25, -0.75, -0.75, 0.0, -0.75, 0.75, 0.5, 0.5, 0.75, -0.75, 0.5, -0.25, 0.0, 0.75, -0.25, -0.75, 0.5, 0.0, 0.0, -0.5, -0.5, 0.75, 0.75, -0.75, -0.25, 1.0, 1.0, 0.75, -0.25, 1.0, 0.75, 0.75, 0.5, 0.75, -0.75, 1.0, 0.5, -0.75, 1.0, -0.25, 0.75, 0.0, 0.0, -0.5, -0.5, -1.0, 0.75, -0.5, -0.25, 0.75, 0.75, 0.75, 1.0, -1.0, -0.25, 0.25, -0.5, 0.0, 0.5, 0.25, -0.5, 0.75, -0.5, 0.0, 0.25, ]);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const array4 = new Float32Array([0.5, 1.0, 0.75, -0.75, 0.5, 0.0, -0.5, 0.5, 1.0, -0.5, -0.75, -0.5, 0.0, 0.75, 0.0, -0.75, -0.25, -0.75, 0.75, -0.75, 0.75, 0.75, -1.0, 1.0, -1.0, 0.75, 0.75, -0.75, -0.5, -0.25, 0.25, -0.5, 0.5, 0.0, 0.75, 0.0, 0.25, 0.5, 0.0, 0.5, -1.0, 0.25, 0.75, 1.0, 0.75, 0.75, 0.0, 0.25, -0.75, -1.0, -0.75, 1.0, 0.25, -0.75, 0.5, 0.0, -0.75, 0.25, 0.75, 0.75, -0.5, -0.5, 0.75, -0.75, 0.75, -0.75, -1.0, -0.75, 0.75, 1.0, -1.0, -0.5, -0.25, 0.0, -0.75, -0.5, -0.5, -0.75, 1.0, 0.25, -0.5, -0.5, 0.5, 0.0, 0.75, 0.5, -0.75, -1.0, 0.25, 0.5, 0.75, 0.25, 0.0, 0.25, -0.5, 0.5, -0.25, 0.5, 0.25, 0.5, ]);
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
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
    
    command_encoder201.insertDebugMarker("mymarker");
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
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
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    buffer200.destroy()
    
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device10.pushErrorScope("validation");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder100.popDebugGroup();
    const sampler200 = device20.createSampler( { label: "sampler200" } );
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
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8uint",
        dimension: "2d"
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query101.destroy()
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
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.pushErrorScope("validation");
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    texture100.destroy();
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder200.insertDebugMarker("mymarker");
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    device20.queue.submit([]);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
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
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    command_encoder200.popDebugGroup()
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    device10.queue.submit([command_buffer100, ]);
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    texture201.destroy();
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const array5 = new Float32Array([-0.25, -0.5, -1.0, 0.0, 0.0, -0.25, -0.75, 0.0, 0.0, -1.0, 0.75, 0.75, 0.75, -1.0, 1.0, 0.5, -0.5, -1.0, -0.25, 0.25, 0.75, 0.5, 0.5, 1.0, 0.75, -0.5, 0.75, 0.25, 0.5, 0.75, -1.0, 0.75, -1.0, -0.5, -0.25, -0.75, 0.75, 0.0, 0.0, 0.25, 0.5, -0.75, -0.25, 0.25, 0.75, 0.5, -0.25, 0.25, 0.5, 0.0, 0.0, 0.5, 0.25, 0.5, 0.75, -0.25, 0.75, 0.5, 0.0, -0.5, -0.25, 0.25, -0.25, 0.0, -0.25, -0.25, 0.25, 0.5, 0.75, 0.5, -0.75, -0.5, 0.25, 0.0, 0.5, -1.0, -1.0, 0.75, -0.5, 1.0, 0.5, 0.5, -1.0, -0.25, 0.0, -0.5, 0.75, -1.0, -0.25, 0.25, -0.75, -1.0, 0.25, -0.75, 0.5, -0.25, -1.0, 0.75, -0.75, 0.5, ]);
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    render_pass_encoder1010.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
        occlusionQuerySet: query200
    });
    query101.destroy()
    render_bundle_encoder100.popDebugGroup();
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
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const compute_pass_encoder2011 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2011" });
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
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
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
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query200.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
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
    query200.destroy()
    query100.destroy()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder2011.insertDebugMarker("marker")
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
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
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    render_pass_encoder2020.executeBundles([])
    
    
    render_pass_encoder2021.executeBundles([])
    
    query101.destroy()
    command_encoder101.pushDebugGroup("mygroupmarker")
    render_pass_encoder1010.pushDebugGroup("group_marker");
    device20.destroy();
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    query100.destroy()
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    command_encoder101.clearBuffer(buffer102);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth24plus",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    device10.destroy();
    
    const array6 = new Float32Array([-0.25, 1.0, 0.0, -0.5, 0.75, 0.75, -0.25, 0.0, 0.0, 0.5, -0.75, -0.75, 1.0, -0.25, 1.0, -1.0, -1.0, -0.25, -1.0, 0.25, 1.0, -1.0, 0.0, 1.0, 0.75, -0.5, 1.0, -0.5, -0.5, 1.0, -0.25, -1.0, 0.75, 0.5, -0.75, 1.0, 0.75, 0.0, -0.75, -0.75, -0.25, 0.75, -1.0, 0.0, 0.5, 0.5, -0.75, -0.5, -0.75, 1.0, -0.25, 0.5, -0.75, 0.5, 0.5, 0.0, -0.25, 0.25, -0.5, 0.5, 0.25, -0.5, 0.75, -1.0, 1.0, -1.0, 0.25, 0.25, -0.75, 0.25, -0.5, 0.5, -0.5, -1.0, 0.75, -1.0, 0.25, -1.0, 0.25, 0.0, -0.5, 0.25, -0.5, -0.25, -0.25, -0.25, 0.5, -1.0, -0.5, 0.5, -0.25, 0.0, 0.75, -0.75, -0.75, 1.0, 0.75, -0.5, 1.0, 0.0, ]);
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder100.setPipeline(render_pipeline101);
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    
    const array7 = new Float32Array([-0.25, 1.0, 0.75, 0.25, -0.25, 0.0, 0.25, -0.25, -0.75, 0.75, -0.5, -1.0, -0.5, -0.25, 1.0, 0.25, 0.25, -0.75, -1.0, 0.0, -0.75, -0.25, 1.0, -1.0, -1.0, -0.75, 0.25, 0.0, 0.5, 0.75, 0.75, 0.75, 1.0, 0.75, 0.0, -0.75, 1.0, 0.0, 1.0, -1.0, 0.75, -1.0, 0.5, 1.0, -0.25, 0.25, 0.75, -0.75, 0.0, -1.0, 0.0, -1.0, -0.75, 0.0, 1.0, -0.75, 0.25, -1.0, -0.25, 0.75, -1.0, 0.25, -0.5, -0.25, 0.75, 1.0, -1.0, -0.25, 0.5, -1.0, 0.5, 0.25, -0.75, -0.5, 0.25, -0.75, 0.75, 0.75, 0.0, -0.75, -0.5, 0.75, -1.0, 1.0, -0.25, 1.0, 0.0, 1.0, 0.25, 0.75, -0.25, 1.0, 0.5, -0.5, -0.75, -0.5, -1.0, 1.0, -0.75, -0.5, ]);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    device00.destroy();
    
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder301.popDebugGroup();
    
    
    
    device30.pushErrorScope("validation");
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder3000.popDebugGroup()
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device40.pushErrorScope("internal");
    texture300.destroy();
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    
    
    device10.queue.writeBuffer(buffer102, 0, array7, 0, array7.length);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device10.queue.writeBuffer(buffer104, 0, array1, 0, array1.length);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
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
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    device30.queue.submit([]);
    
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
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
    
    
    
    compute_pass_encoder3000.popDebugGroup()
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    buffer300.destroy()
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer500 = command_encoder500.finish();
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    compute_pass_encoder3000.popDebugGroup()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    command_encoder300.pushDebugGroup("mygroupmarker")
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    command_encoder400.copyBufferToTexture(
        {
            buffer: buffer400
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
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    texture401.destroy();
    device60.pushErrorScope("out-of-memory");
    
    texture400.destroy();
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
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
    command_encoder501.insertDebugMarker("mymarker");
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    command_encoder501.pushDebugGroup("mygroupmarker")
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    
    command_encoder601.pushDebugGroup("mygroupmarker")
    buffer301.destroy()
    buffer601.destroy()
    
    
    compute_pass_encoder6000.popDebugGroup()
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    buffer400.destroy()
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
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder301.setPipeline(render_pipeline300);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    query105.destroy()
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder3010.insertDebugMarker("marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder3010.setPipeline(render_pipeline300);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    compute_pass_encoder3020.insertDebugMarker("marker")
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    command_encoder401.pushDebugGroup("mygroupmarker")
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_pass_encoder2020.setPipeline(render_pipeline200);
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query300.destroy()
    buffer402.destroy()
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
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pass_encoder6010 = command_encoder601.beginRenderPass({
        label: "render_pass_encoder6010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6001,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    query400.destroy()
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    command_encoder602.resolveQuerySet(
        query600,
        0,
        32,
        buffer600,
        0
    )
    
    const render_pass_encoder6020 = command_encoder602.beginRenderPass({
        label: "render_pass_encoder6020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder3010.insertDebugMarker("marker");
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3010.pushDebugGroup("group_marker");
    query600.destroy()
    
    
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    device60.queue.writeTexture({ texture: texture601 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder6020.insertDebugMarker("marker");
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    buffer401.destroy()
    render_pass_encoder6020.setPipeline(render_pipeline600);
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
    command_encoder101.popDebugGroup()
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_pass_encoder6020.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    render_pass_encoder6020.pushDebugGroup("group_marker");
    command_encoder303.insertDebugMarker("mymarker");
    render_pass_encoder6020.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query302
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder6020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder600.insertDebugMarker("mymarker");
    render_bundle_encoder400.setPipeline(render_pipeline402);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder6020.insertDebugMarker("marker");
    query301.destroy()
    const texture403 = device40.createTexture({
        label: "texture403",
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
    device40.queue.writeTexture({ texture: texture403 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3010.setStencilReference(1);
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_pass_encoder6010.executeBundles([])
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    device40.queue.writeTexture({ texture: texture403 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder6010.executeBundles([])
    device60.queue.writeTexture({ texture: texture601 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder401.resolveQuerySet(
        query400,
        0,
        32,
        buffer402,
        0
    )
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
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
    render_pass_encoder3030.executeBundles([])
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    
    compute_pass_encoder3000.setPipeline(compute_pipeline301);
    render_bundle_encoder600.insertDebugMarker("marker");
    command_encoder401.resolveQuerySet(
        query401,
        0,
        32,
        buffer402,
        0
    )
    render_bundle_encoder601.insertDebugMarker("marker");
    buffer401.destroy()
    command_encoder401.resolveQuerySet(
        query401,
        0,
        32,
        buffer402,
        0
    )
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder401.resolveQuerySet(
        query402,
        0,
        32,
        buffer402,
        0
    )
    render_pass_encoder3030.insertDebugMarker("marker");
    command_encoder401.resolveQuerySet(
        query401,
        0,
        32,
        buffer402,
        0
    )
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder401.resolveQuerySet(
        query400,
        0,
        32,
        buffer402,
        0
    )
    render_bundle_encoder601.setPipeline(render_pipeline601);
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
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query301
    });
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    compute_pass_encoder2011.pushDebugGroup("group_marker")
    
    device40.queue.writeTexture({ texture: texture403 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3030.setStencilReference(1);
    device60.queue.writeBuffer(buffer602, 0, array2, 0, array2.length);
    device40.queue.writeTexture({ texture: texture403 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    device60.queue.writeTexture({ texture: texture601 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder6020.popDebugGroup();
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    device60.queue.writeBuffer(buffer600, 0, array6, 0, array6.length);
    device50.queue.submit([command_buffer500, ]);
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    texture402.destroy();
    
    
    
    render_pass_encoder6020.setStencilReference(1);
    
    compute_pass_encoder3020.setPipeline(compute_pipeline300);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3030.setPipeline(render_pipeline300);
    const command_buffer603 = command_encoder603.finish();
    render_pass_encoder3010.popDebugGroup();
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
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group300);
    render_pass_encoder3000.endOcclusionQuery()
    render_pass_encoder3000.endOcclusionQuery()
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer603,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer604,
                },
            },
        ],
    });

    render_pass_encoder6020.setBindGroup(0, bind_group600);
    compute_pass_encoder3000.dispatchWorkgroups(100);
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

    render_pass_encoder3010.setBindGroup(0, bind_group301);
    render_pass_encoder6010.setPipeline(render_pipeline600);
    device60.queue.submit([command_buffer603, ]);
    render_pass_encoder3000.setPipeline(render_pipeline300);
    const command_buffer502 = command_encoder502.finish();
    device40.queue.submit([]);
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
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
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group302);
    render_pass_encoder6020.setVertexBuffer(0, buffer604);
    render_pass_encoder6020.draw(3);
    render_pass_encoder1010.setPipeline(render_pipeline100);
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
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
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    render_pass_encoder3030.setBindGroup(0, bind_group303);
    command_encoder401.popDebugGroup()
    device50.queue.submit([command_buffer502, ]);
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
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
                    buffer: buffer3010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3011,
                },
            },
        ],
    });

    render_pass_encoder3000.setBindGroup(0, bind_group304);
    render_pass_encoder3000.setVertexBuffer(0, buffer302);
    render_pass_encoder3000.setIndexBuffer(buffer3010, "uint16");
    render_pass_encoder3000.drawIndexedIndirect(buffer301, 0);
    device40.queue.submit([]);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder3000.endOcclusionQuery()
    render_pass_encoder3000.endOcclusionQuery()
    render_pass_encoder3000.end();
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
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

    render_pass_encoder1010.setBindGroup(0, bind_group101);
    device30.queue.submit([]);
    render_pass_encoder6020.drawIndirect(buffer600, 0);
    const command_buffer302 = command_encoder302.finish();
    const command_buffer301 = command_encoder301.finish();
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    const command_buffer401 = command_encoder401.finish();
    render_pass_encoder3010.setVertexBuffer(0, buffer3010);
    render_pass_encoder3010.drawIndirect(buffer301, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer301, 0);
    compute_pass_encoder3020.end();
    render_pass_encoder6020.end();
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer605,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer606,
                },
            },
        ],
    });

    render_pass_encoder6010.setBindGroup(0, bind_group601);
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
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
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

    compute_pass_encoder3020.setBindGroup(0, bind_group305);
    const command_buffer602 = command_encoder602.finish();
    render_pass_encoder3010.end();
    render_pass_encoder6020.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder6010.popDebugGroup();
    const command_buffer303 = command_encoder303.finish();
    render_pass_encoder6010.setVertexBuffer(0, buffer602);
    compute_pass_encoder3000.popDebugGroup()
    device30.queue.submit([command_buffer303, ]);
    compute_pass_encoder3000.end();
    render_pass_encoder3030.setVertexBuffer(0, buffer307);
    render_pass_encoder3030.drawIndirect(buffer307, 0);
    render_pass_encoder6010.draw(3);
    command_encoder300.popDebugGroup()
    const command_buffer300 = command_encoder300.finish();
    device30.queue.submit([command_buffer300, ]);
    device60.queue.submit([command_buffer602, ]);
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    render_pass_encoder3030.end();
    render_pass_encoder6010.end();
    device30.queue.submit([command_buffer301, ]);
    command_encoder501.popDebugGroup()
    command_encoder601.popDebugGroup()
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder6010.drawIndirect(buffer602, 0);
    render_pass_encoder3030.setIndexBuffer(buffer306, "uint16");
    device30.queue.submit([command_buffer302, ]);
    const command_buffer601 = command_encoder601.finish();
    render_pass_encoder3030.end();
    device40.queue.submit([]);
    const command_buffer201 = command_encoder201.finish();
    device40.queue.submit([command_buffer401, ]);
    device60.queue.submit([command_buffer601, ]);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder3000.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3000.endOcclusionQuery()
    device40.queue.submit([command_buffer401, ]);
    device30.queue.submit([command_buffer303, ]);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder6020.draw(3);
    device60.queue.submit([command_buffer602, ]);
    compute_pass_encoder3020.dispatchWorkgroups(100);
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
        
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group306);
    render_pass_encoder1010.popDebugGroup();
    device50.queue.submit([command_buffer502, ]);
    device30.queue.submit([command_buffer303, ]);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder6010.drawIndirect(buffer602, 0);
    render_pass_encoder3000.end();
    render_pass_encoder6020.end();
    render_pass_encoder6020.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    const command_buffer600 = command_encoder600.finish();
    render_pass_encoder3030.end();
    render_pass_encoder6010.drawIndirect(buffer600, 0);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder3000.draw(3);
    render_pass_encoder6020.draw(3);
    render_pass_encoder3010.drawIndirect(buffer3010, 0);
    compute_pass_encoder6000.popDebugGroup()
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder6010.draw(3);
    device40.queue.submit([command_buffer401, ]);
    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3017,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group307);
    device30.queue.submit([command_buffer302, ]);
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
        
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group308);
    render_pass_encoder3030.drawIndirect(buffer301, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3020, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3020, 0);
    render_pass_encoder6020.end();
    render_pass_encoder3030.setIndexBuffer(buffer3015, "uint16");
    render_pass_encoder6010.popDebugGroup();
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder6020.draw(3);
    device40.queue.submit([command_buffer401, ]);
    device30.queue.submit([command_buffer302, ]);
    device50.queue.submit([command_buffer502, ]);
    device30.queue.submit([]);
    device60.queue.submit([command_buffer600, command_buffer601, command_buffer602, ]);
    render_pass_encoder3000.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder3030.end();
    render_pass_encoder3030.drawIndexedIndirect(buffer305, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3021, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3021, 0);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    device50.queue.submit([command_buffer500, ]);
    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3023,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group309);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder6020.draw(3);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder6020.popDebugGroup();
    render_pass_encoder3010.setIndexBuffer(buffer302, "uint16");
    device60.queue.submit([command_buffer601, command_buffer602, ]);
    render_pass_encoder3000.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder3010.draw(3);
    render_pass_encoder3030.drawIndexedIndirect(buffer3020, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer3019, 0);
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder6010.popDebugGroup();
    render_pass_encoder3000.drawIndirect(buffer3021, 0);
    render_pass_encoder3000.drawIndirect(buffer3020, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3030.drawIndexed(3);
    const command_buffer501 = command_encoder501.finish();
    compute_pass_encoder3000.end();
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3030.end();
    render_pass_encoder3010.drawIndirect(buffer3017, 0);
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder2021.setPipeline(render_pipeline200);
    render_pass_encoder3000.drawIndexedIndirect(buffer3021, 0);
    device60.queue.submit([command_buffer601, command_buffer603, ]);
    device50.queue.submit([command_buffer501, ]);
    device30.queue.submit([]);
    render_pass_encoder6010.drawIndirect(buffer600, 0);
    render_pass_encoder3010.drawIndirect(buffer307, 0);
    render_pass_encoder3010.end();
    render_pass_encoder3010.draw(3);
    render_pass_encoder3010.popDebugGroup();
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

    render_pass_encoder2020.setBindGroup(0, bind_group200);
    render_pass_encoder3010.drawIndexedIndirect(buffer3021, 0);
    compute_pass_encoder6000.popDebugGroup()
    device00.queue.submit([]);
    render_pass_encoder3030.popDebugGroup();
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    render_pass_encoder3000.drawIndexedIndirect(buffer3020, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3020, 0);
    render_pass_encoder3010.end();
    render_pass_encoder3030.drawIndirect(buffer301, 0);
    render_pass_encoder6010.end();
    render_pass_encoder6010.drawIndirect(buffer600, 0);
    compute_pass_encoder3020.end();
    render_pass_encoder6010.setIndexBuffer(buffer600, "uint16");
    device40.queue.submit([]);
    render_pass_encoder6020.end();
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3030.drawIndexedIndirect(buffer3021, 0);
    device50.queue.submit([command_buffer501, ]);
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder3030.drawIndexedIndirect(buffer3020, 0);
    render_pass_encoder6020.drawIndirect(buffer600, 0);
    render_pass_encoder3000.end();
    render_pass_encoder3030.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder6010.draw(3);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder5010.popDebugGroup()
    device30.queue.submit([command_buffer301, command_buffer303, ]);
    render_pass_encoder6020.popDebugGroup();
    render_pass_encoder3000.end();
    render_pass_encoder3000.end();
    render_pass_encoder3000.setIndexBuffer(buffer3022, "uint16");
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3024, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3024, 0);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder3000.drawIndexedIndirect(buffer3020, 0);
    device40.queue.submit([command_buffer400, ]);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder3020.end();
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder3000.end();
    compute_pass_encoder3020.popDebugGroup()
    device60.queue.submit([command_buffer600, command_buffer601, command_buffer602, ]);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3025 = device30.createBuffer({
        label: "buffer3025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3025, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3025, 0);
    compute_pass_encoder3000.popDebugGroup()
    device40.queue.submit([command_buffer401, ]);
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder3010.drawIndexedIndirect(buffer3023, 0);
    device40.queue.submit([]);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3000.end();
    render_pass_encoder3010.end();
    compute_pass_encoder3000.end();
    render_pass_encoder3030.drawIndexedIndirect(buffer3020, 0);
    render_pass_encoder6020.end();
    compute_pass_encoder6000.popDebugGroup()
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder6000.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    device60.queue.submit([command_buffer602, ]);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder6020.popDebugGroup();
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder3030.drawIndirect(buffer3021, 0);
    render_pass_encoder3000.drawIndirect(buffer301, 0);
    compute_pass_encoder3020.popDebugGroup()
    device60.queue.submit([]);
    device60.queue.submit([command_buffer601, ]);
    compute_pass_encoder2010.setPipeline(compute_pipeline200);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    device30.queue.submit([]);
    render_pass_encoder3000.popDebugGroup();
    device60.queue.submit([]);
    device50.queue.submit([]);
    const buffer3026 = device30.createBuffer({
        label: "buffer3026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3027 = device30.createBuffer({
        label: "buffer3027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3010 = device30.createBindGroup({
        label: "bind_group3010",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3027,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3010);
    render_pass_encoder6010.drawIndexed(3);
    device60.queue.submit([command_buffer600, ]);
    const buffer3028 = device30.createBuffer({
        label: "buffer3028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3029 = device30.createBuffer({
        label: "buffer3029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3011 = device30.createBindGroup({
        label: "bind_group3011",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3029,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3011);
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    render_pass_encoder3030.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder3030.drawIndirect(buffer3024, 0);
    render_pass_encoder6010.popDebugGroup();
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder3020.end();
    compute_pass_encoder3000.end();
    render_pass_encoder3000.drawIndexedIndirect(buffer3024, 0);
    device30.queue.submit([command_buffer300, command_buffer303, ]);
    render_pass_encoder3010.drawIndexedIndirect(buffer3020, 0);
    device50.queue.submit([]);
    device30.queue.submit([command_buffer303, ]);
    device60.queue.submit([command_buffer603, ]);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder6020.drawIndirect(buffer604, 0);
    const command_buffer101 = command_encoder101.finish();
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder3010.drawIndirect(buffer3020, 0);
    const buffer3030 = device30.createBuffer({
        label: "buffer3030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3031 = device30.createBuffer({
        label: "buffer3031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3012 = device30.createBindGroup({
        label: "bind_group3012",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3031,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3012);
    render_pass_encoder3000.drawIndirect(buffer301, 0);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder3010.drawIndexedIndirect(buffer3025, 0);
    render_pass_encoder3030.setIndexBuffer(buffer3016, "uint16");
    render_pass_encoder3000.endOcclusionQuery()
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder3000.end();
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder3030.drawIndirect(buffer3024, 0);
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder3000.end();
    device60.queue.submit([]);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3032 = device30.createBuffer({
        label: "buffer3032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3032, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3032, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3032, 0);
    device50.queue.submit([]);
    render_pass_encoder3030.drawIndirect(buffer301, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3010.drawIndirect(buffer3032, 0);
    render_pass_encoder3030.drawIndirect(buffer307, 0);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder5010.popDebugGroup()
    device40.queue.submit([]);
    render_pass_encoder3010.draw(3);
    device20.queue.submit([command_buffer201, ]);
    const buffer3033 = device30.createBuffer({
        label: "buffer3033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3034 = device30.createBuffer({
        label: "buffer3034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3013 = device30.createBindGroup({
        label: "bind_group3013",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3034,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3013);
    compute_pass_encoder5010.popDebugGroup()
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3035 = device30.createBuffer({
        label: "buffer3035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3035, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3035, 0);
    render_pass_encoder3000.end();
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder3010.end();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3010.setIndexBuffer(buffer3026, "uint16");
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group201);
    render_pass_encoder6020.draw(3);
    render_pass_encoder6020.popDebugGroup();
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    const buffer3036 = device30.createBuffer({
        label: "buffer3036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3037 = device30.createBuffer({
        label: "buffer3037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3014 = device30.createBindGroup({
        label: "bind_group3014",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3037,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3014);
    render_pass_encoder3000.drawIndexedIndirect(buffer3035, 0);
    render_pass_encoder3010.popDebugGroup();
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder6010.drawIndexedIndirect(buffer601, 0);
    render_pass_encoder6020.setIndexBuffer(buffer604, "uint16");
    render_pass_encoder3000.drawIndexedIndirect(buffer3020, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer3024, 0);
    device50.queue.submit([command_buffer501, ]);
    const buffer3038 = device30.createBuffer({
        label: "buffer3038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3039 = device30.createBuffer({
        label: "buffer3039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3015 = device30.createBindGroup({
        label: "bind_group3015",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3039,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3015);
    render_pass_encoder6020.end();
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3010.drawIndexedIndirect(buffer3015, 0);
    render_pass_encoder3010.drawIndirect(buffer3021, 0);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder3030.end();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder6020.drawIndexed(3);
    render_pass_encoder6020.drawIndirect(buffer606, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3015, 0);
    render_pass_encoder2010.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder3010.draw(3);
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder6020.setIndexBuffer(buffer602, "uint16");
    device60.queue.submit([command_buffer600, command_buffer601, ]);
    const buffer3040 = device30.createBuffer({
        label: "buffer3040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3041 = device30.createBuffer({
        label: "buffer3041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3016 = device30.createBindGroup({
        label: "bind_group3016",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3041,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3016);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder6020.drawIndexedIndirect(buffer600, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder6010.popDebugGroup();
    const buffer3042 = device30.createBuffer({
        label: "buffer3042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3043 = device30.createBuffer({
        label: "buffer3043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3017 = device30.createBindGroup({
        label: "bind_group3017",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3043,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3017);
    render_pass_encoder3030.end();
    render_pass_encoder3030.drawIndexedIndirect(buffer3036, 0);
    render_pass_encoder6020.draw(3);
    render_pass_encoder1010.setVertexBuffer(0, buffer101);
    render_pass_encoder1010.drawIndirect(buffer100, 0);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder6020.popDebugGroup();
    render_pass_encoder3030.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3000.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder3030.setIndexBuffer(buffer3034, "uint16");
    device40.queue.submit([]);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3044 = device30.createBuffer({
        label: "buffer3044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3044, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3044, 0);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder6010.drawIndirect(buffer600, 0);
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder3010.drawIndirect(buffer3032, 0);
    compute_pass_encoder5010.popDebugGroup()
    compute_pass_encoder5010.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder6020.end();
    device60.queue.submit([command_buffer602, ]);
    device50.queue.submit([command_buffer501, command_buffer502, ]);
    compute_pass_encoder3000.end();
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

    render_pass_encoder2021.setBindGroup(0, bind_group202);
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3010.drawIndexedIndirect(buffer3028, 0);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    device60.queue.submit([]);
    device50.queue.submit([command_buffer502, ]);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3045 = device30.createBuffer({
        label: "buffer3045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3045, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3045, 0);
    device30.queue.submit([command_buffer302, ]);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder3030.drawIndexedIndirect(buffer3035, 0);
    const buffer3046 = device30.createBuffer({
        label: "buffer3046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3047 = device30.createBuffer({
        label: "buffer3047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3018 = device30.createBindGroup({
        label: "bind_group3018",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3047,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3018);
    compute_pass_encoder5010.popDebugGroup()
    device30.queue.submit([]);
    render_pass_encoder3010.drawIndirect(buffer3045, 0);
    render_pass_encoder3030.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder2011.setPipeline(compute_pipeline200);
    render_pass_encoder2021.setVertexBuffer(0, buffer201);
    render_pass_encoder6020.end();
    render_pass_encoder6010.popDebugGroup();
    render_pass_encoder3000.setIndexBuffer(buffer3035, "uint16");
    render_pass_encoder3000.popDebugGroup();
    device50.queue.submit([command_buffer501, ]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder6020.drawIndexedIndirect(buffer600, 0);
    render_pass_encoder3010.drawIndirect(buffer3047, 0);
    render_pass_encoder3010.end();
    device50.queue.submit([command_buffer501, ]);
    compute_pass_encoder6000.popDebugGroup()
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer207, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer207, 0);
    render_pass_encoder3030.draw(3);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder3000.drawIndirect(buffer3034, 0);
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer209 = device20.createBuffer({
        label: "buffer209",
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
                    buffer: buffer208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer209,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group203);
    render_pass_encoder3000.drawIndexedIndirect(buffer3024, 0);
    device40.queue.submit([command_buffer400, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder6020.popDebugGroup();
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder3030.drawIndirect(buffer3021, 0);
    compute_pass_encoder3000.end();
    device60.queue.submit([command_buffer603, ]);
    render_pass_encoder6020.popDebugGroup();
    compute_pass_encoder5010.popDebugGroup()
    device60.queue.submit([command_buffer602, ]);
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    device60.queue.submit([command_buffer602, ]);
    device60.queue.submit([command_buffer602, command_buffer603, ]);
    render_pass_encoder6010.drawIndirect(buffer603, 0);
    const buffer3048 = device30.createBuffer({
        label: "buffer3048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3049 = device30.createBuffer({
        label: "buffer3049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3019 = device30.createBindGroup({
        label: "bind_group3019",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3049,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3019);
    render_pass_encoder3010.popDebugGroup();
    device30.queue.submit([command_buffer300, command_buffer301, command_buffer303, ]);
    render_pass_encoder2021.drawIndirect(buffer207, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer3049, 0);
    render_pass_encoder6010.popDebugGroup();
    render_pass_encoder6020.setIndexBuffer(buffer603, "uint16");
    render_pass_encoder6020.drawIndirect(buffer605, 0);
    render_pass_encoder2020.setVertexBuffer(0, buffer209);
    render_pass_encoder3010.end();
    render_pass_encoder3010.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder3000.drawIndirect(buffer3035, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3000.end();
    render_pass_encoder3030.drawIndexedIndirect(buffer301, 0);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder3030.draw(3);
    render_pass_encoder3010.drawIndirect(buffer3045, 0);
    device50.queue.submit([]);
    device50.queue.submit([command_buffer501, ]);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder3010.end();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3010.drawIndexedIndirect(buffer3035, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder3000.drawIndexedIndirect(buffer3028, 0);
    render_pass_encoder6010.end();
    render_pass_encoder6020.popDebugGroup();
    render_pass_encoder3000.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3000.drawIndirect(buffer3021, 0);
    render_pass_encoder3000.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder3030.drawIndirect(buffer3045, 0);
    render_pass_encoder6010.popDebugGroup();
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder6000.popDebugGroup()
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder6010.drawIndirect(buffer600, 0);
    render_pass_encoder6020.drawIndexedIndirect(buffer605, 0);
    render_pass_encoder3010.setIndexBuffer(buffer3014, "uint16");
    compute_pass_encoder5010.popDebugGroup()
    device50.queue.submit([]);
    render_pass_encoder6020.popDebugGroup();
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3000.end();
    render_pass_encoder6020.drawIndirect(buffer600, 0);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder3020.popDebugGroup()
    device40.queue.submit([]);
    device40.queue.submit([]);
    render_pass_encoder6010.drawIndexed(3);
}