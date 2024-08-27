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
    const array0 = new Float32Array([0.5, -0.25, 1.0, 0.5, -0.75, 1.0, 1.0, 0.5, -0.25, -0.75, 0.0, 0.5, 0.25, 1.0, -0.75, 1.0, 0.0, 0.75, 0.5, -1.0, 0.0, 0.25, -0.25, 0.25, -0.5, -1.0, -0.5, -1.0, -0.75, 0.0, 0.75, -1.0, 0.25, -0.5, -1.0, -0.5, -0.75, -0.5, -1.0, 0.0, -0.25, 0.25, -0.25, -0.5, 0.25, 0.0, -0.25, 0.25, -1.0, 0.75, -0.75, 0.0, -0.75, -0.25, 0.75, 0.25, -0.75, 0.0, 0.25, 0.5, 0.75, 0.25, 0.0, 0.25, 0.5, 0.25, -0.75, 0.0, 0.25, 1.0, 0.25, 0.75, 0.0, -1.0, 0.5, 0.0, 0.5, 0.25, 0.25, -0.25, 1.0, 1.0, -0.5, 0.5, 0.0, -0.25, -0.75, 0.75, -0.5, -1.0, -0.5, 0.25, 0.25, 0.0, -0.25, -1.0, 0.5, 0.0, -0.5, -0.25, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
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
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_bundle_encoder100.popDebugGroup();
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array1 = new Float32Array([-0.75, 0.25, 0.0, -0.75, 0.0, 0.25, -0.5, 0.5, 0.0, 0.25, 0.0, 0.75, -0.75, -0.25, 0.75, 0.25, 1.0, -1.0, -0.75, -0.5, -0.25, 0.0, -0.5, -0.5, 0.0, 0.75, -0.5, -1.0, 0.0, 0.0, 1.0, -0.25, -0.25, -0.75, 0.25, 1.0, 0.0, 0.0, 0.5, 0.75, -1.0, -0.75, 1.0, -0.25, 0.75, -0.5, 0.75, -0.5, 0.25, -0.25, -0.75, 1.0, -0.75, 0.25, 0.25, -0.75, 1.0, -0.25, -0.25, 0.0, -0.25, 0.25, -1.0, 0.75, -0.75, 1.0, 0.5, 1.0, 1.0, -0.75, -1.0, 0.25, 1.0, 1.0, 0.5, 1.0, 0.75, -0.75, 0.25, 0.5, 0.25, -0.5, -1.0, -0.25, -0.25, 0.25, 0.75, -0.25, -0.5, 1.0, 0.5, -0.25, -0.75, 0.75, -0.25, -0.5, -0.25, 1.0, 1.0, -0.75, ]);
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder100.clearBuffer(buffer101);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
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
    const command_buffer100 = command_encoder100.finish();
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder101.copyTextureToBuffer(
        {
            texture: texture100
        },
        {
            buffer: buffer101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    command_encoder101.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    device00.destroy();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    const query103 = device10.createQuerySet({
        label: "query103",
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
    buffer301.destroy()
    
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    command_encoder300.insertDebugMarker("mymarker");
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device10.queue.submit([command_buffer100, ]);
    query103.destroy()
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
    query103.destroy()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    query102.destroy()
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query103
    });
    buffer101.destroy()
    command_encoder200.insertDebugMarker("mymarker");
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer100.destroy()
    
    device30.pushErrorScope("out-of-memory");
    command_encoder200.insertDebugMarker("mymarker");
    command_encoder200.insertDebugMarker("mymarker");
    render_pass_encoder1010.beginOcclusionQuery(0)
    render_bundle_encoder101.insertDebugMarker("marker");
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_pass_encoder1011.insertDebugMarker("marker");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    command_encoder300.insertDebugMarker("mymarker");
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_pass_encoder1011.pushDebugGroup("group_marker");
    query104.destroy()
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    command_encoder200.insertDebugMarker("mymarker");
    render_bundle_encoder101.popDebugGroup();
    command_encoder200.pushDebugGroup("mygroupmarker")
    query200.destroy()
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    query104.destroy()
    device10.pushErrorScope("internal");
    query101.destroy()
    
    render_bundle_encoder102.insertDebugMarker("marker");
    command_encoder200.popDebugGroup()
    command_encoder201.insertDebugMarker("mymarker");
    command_encoder201.pushDebugGroup("mygroupmarker")
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1011.executeBundles([render_bundle_encoder102, ])
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    command_encoder300.insertDebugMarker("mymarker");
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1010.insertDebugMarker("marker");
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    query101.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
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
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    buffer100.destroy()
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    texture100.destroy();
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    query200.destroy()
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    buffer300.destroy()
    
    buffer200.destroy()
    render_bundle_encoder201.pushDebugGroup("group_marker");
    command_encoder200.clearBuffer(buffer200);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const array2 = new Float32Array([0.25, 0.0, 0.5, -1.0, 0.25, -0.25, -1.0, -1.0, 0.0, -0.5, 0.75, -0.5, -1.0, -1.0, -0.5, -0.25, 0.25, 1.0, 0.75, -0.25, 1.0, -0.75, -1.0, -0.75, 0.25, 0.5, -0.5, -0.25, 1.0, 0.75, -0.25, 0.75, -0.75, 1.0, 0.0, 0.25, 0.5, 0.0, -0.5, -0.25, -0.25, -1.0, -0.25, -1.0, -0.25, -0.5, -0.5, 0.0, 0.75, 0.25, 0.75, 1.0, -0.25, 0.5, -0.5, 0.75, 0.0, 1.0, -1.0, 0.25, 1.0, -0.5, -0.5, 1.0, 0.25, 1.0, 0.0, 0.0, -0.25, 1.0, 0.25, 1.0, 0.75, 1.0, -0.5, -0.25, -0.25, -1.0, -0.5, -0.5, -0.25, -0.75, 0.0, -0.75, 0.25, -0.5, -0.5, -0.5, 1.0, 0.75, 0.25, 0.75, 0.75, -0.5, -0.5, -1.0, -1.0, -0.25, -1.0, 0.5, ]);
    device10.destroy();
    device20.pushErrorScope("out-of-memory");
    render_bundle_encoder201.popDebugGroup();
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    compute_pass_encoder2010.popDebugGroup()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    query200.destroy()
    compute_pass_encoder3000.pushDebugGroup("group_marker")
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
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    
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
    
    
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const array3 = new Float32Array([0.5, -0.75, -0.5, -0.5, -1.0, 0.25, 1.0, -0.75, 0.0, 0.25, -0.25, -1.0, 1.0, 0.25, -0.5, 0.5, -0.5, 1.0, -0.5, -1.0, 0.0, 0.5, -0.25, -0.75, -1.0, 0.25, -0.75, 0.0, -0.5, 0.0, 0.0, 0.5, 0.75, 0.0, 0.5, 0.75, 0.75, -0.75, 0.0, 0.5, -1.0, 0.75, -0.5, -0.75, -0.25, 0.25, -0.25, -1.0, 1.0, 0.75, -0.25, -0.5, 0.75, 0.0, -0.25, 0.25, 0.25, -0.5, -0.75, 0.75, 0.5, 0.75, -0.5, -0.25, -0.25, -0.75, -0.5, 0.25, -0.25, 1.0, -0.5, 0.25, -1.0, -0.75, 0.25, 0.25, -0.75, 0.0, -1.0, 0.25, 1.0, -0.5, -0.5, -1.0, -0.25, 0.75, 0.0, -0.25, 1.0, 1.0, 1.0, -0.75, 1.0, -0.25, 0.0, -0.25, -0.25, -0.5, 0.75, 0.0, ]);
    render_pass_encoder1010.setStencilReference(1);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    const bind_group_layout305 = device30.createBindGroupLayout({ 
        label: "bind_group_layout305",
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
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    query301.destroy()
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device30.queue.submit([command_buffer301, ]);
    
    
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout302]
    });
    buffer201.destroy()
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout302]
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    query200.destroy()
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout305]
    });
    
    const bind_group_layout306 = device30.createBindGroupLayout({ 
        label: "bind_group_layout306",
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
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
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
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout306]
    });
    const array4 = new Float32Array([0.5, -0.25, 1.0, -1.0, 0.5, 0.0, 0.25, -0.75, 0.0, 0.75, -1.0, -0.5, -0.5, -0.75, -0.75, 0.5, -1.0, -0.75, 0.5, 0.25, -1.0, -0.5, -1.0, 0.0, -1.0, -0.25, -0.75, 0.5, 1.0, 1.0, 0.5, 1.0, 1.0, -0.75, 0.0, 0.75, -0.75, -1.0, -0.25, -1.0, 0.75, 0.5, -1.0, 0.25, 0.0, 0.5, 0.25, -0.25, 1.0, 0.75, 0.5, -0.5, 1.0, 0.0, -0.25, 1.0, 0.5, 0.0, 0.25, -0.5, 0.5, -0.25, 0.5, -0.25, 0.5, -0.5, 1.0, 0.25, 0.5, -0.25, 1.0, -0.25, 0.25, -0.25, -0.5, 1.0, 0.5, -0.5, 0.25, -0.5, -0.75, 0.75, 1.0, 0.0, -1.0, -1.0, 1.0, 0.25, -0.75, 1.0, -0.75, 1.0, -0.5, 1.0, 1.0, -0.25, -1.0, 0.0, 0.5, 0.5, ]);
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder300.resolveQuerySet(
        query301,
        0,
        32,
        buffer300,
        0
    )
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
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture201.destroy();
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout302]
    });
    texture200.destroy();
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout306,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
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
        occlusionQuerySet: undefined
    });
    query301.destroy()
    compute_pass_encoder3000.popDebugGroup()
    
    
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
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
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout307,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout307,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3000.setPipeline(render_pipeline300);
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_buffer203 = command_encoder203.finish();
    render_bundle_encoder302.setPipeline(render_pipeline300);
    device20.queue.writeTexture({ texture: texture202 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder102.insertDebugMarker("marker");
    compute_pass_encoder3000.setPipeline(compute_pipeline303);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout306,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    command_encoder202.clearBuffer(buffer201);
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout307,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const bind_group_layout307 = device30.createBindGroupLayout({ 
        label: "bind_group_layout307",
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
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout308 = device30.createBindGroupLayout({ 
        label: "bind_group_layout308",
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
    
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout307,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    command_encoder300.insertDebugMarker("mymarker");
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout306,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout307]
    });
    
    
    render_bundle_encoder301.setPipeline(render_pipeline300);
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    render_pass_encoder3020.executeBundles([])
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    texture203.destroy();
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout301]
    });
    device20.queue.writeTexture({ texture: texture202 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
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
    buffer304.destroy()
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout304,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout308,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture202 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder300.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    
    buffer302.destroy()
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

    render_bundle_encoder301.setBindGroup(0, bind_group301);
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout304]
    });
    render_pass_encoder2001.insertDebugMarker("marker");
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    render_pass_encoder2000.executeBundles([])
    
    device30.pushErrorScope("out-of-memory");
    render_pass_encoder2001.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const compute_pass_encoder2011 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2011" });
    const render_pass_encoder3021 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3021",
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
    
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout308]
    });
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout304,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    buffer305.destroy()
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout307]
    });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture204.destroy();
    const pipeline_layout3013 = device30.createPipelineLayout({ 
        label: "pipeline_layout3013",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout308,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3002,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout309,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture202 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    render_pass_encoder2001.insertDebugMarker("marker");
    render_pass_encoder3021.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    device20.pushErrorScope("validation");
    render_pass_encoder3000.setStencilReference(1);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1010.setStencilReference(1);
    
    
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout3013,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout308,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const pipeline_layout3014 = device30.createPipelineLayout({ 
        label: "pipeline_layout3014",
        bindGroupLayouts: [bind_group_layout302]
    });
    render_pass_encoder2001.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder201.setPipeline(render_pipeline200);
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.setPipeline(render_pipeline300);
    render_pass_encoder3030.insertDebugMarker("marker");
    compute_pass_encoder3000.popDebugGroup()
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

    render_bundle_encoder300.setBindGroup(0, bind_group302);
    render_pass_encoder3030.insertDebugMarker("marker");
    const compute_pass_encoder2001 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2001" });
    render_bundle_encoder000.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer303, 0, array2, 0, array2.length);
    render_pass_encoder2001.pushDebugGroup("group_marker");
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder2011.pushDebugGroup("group_marker")
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout308,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout306,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
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
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout3014,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    const compute_pipeline3027 = device30.createComputePipeline({
        label: "compute_pipeline3027",
        layout: pipeline_layout304,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3028 = device30.createComputePipeline({
        label: "compute_pipeline3028",
        layout: pipeline_layout307,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder3031 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: query301
    });
    compute_pass_encoder2001.pushDebugGroup("group_marker")
    texture202.destroy();
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
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
    render_pass_encoder3020.setPipeline(render_pipeline300);
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const compute_pipeline3029 = device30.createComputePipeline({
        label: "compute_pipeline3029",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
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
    command_encoder200.pushDebugGroup("mygroupmarker")
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
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
    buffer306.destroy()
    render_pass_encoder3040.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    compute_pass_encoder2011.insertDebugMarker("marker")
    
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline3030 = device30.createComputePipeline({
        label: "compute_pipeline3030",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
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
    device20.queue.writeTexture({ texture: texture206 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder201.copyTextureToTexture(
        {
            texture: texture203
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
    
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder2020.insertDebugMarker("marker")
    const compute_pipeline3031 = device30.createComputePipeline({
        label: "compute_pipeline3031",
        layout: pipeline_layout307,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    buffer307.destroy()
    render_bundle_encoder300.popDebugGroup();
    render_pass_encoder3040.pushDebugGroup("group_marker");
    compute_pass_encoder2001.popDebugGroup()
    device30.queue.writeBuffer(buffer303, 0, array4, 0, array4.length);
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    query101.destroy()
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    render_pass_encoder3021.executeBundles([render_bundle_encoder302, ])
    device20.queue.writeTexture({ texture: texture206 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder2002 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2002",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query203
    });
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.VERTEX
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
    
    render_pass_encoder3020.setVertexBuffer(0, buffer304);
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    command_encoder304.clearBuffer(buffer308);
    
    command_encoder303.resolveQuerySet(
        query300,
        0,
        32,
        buffer308,
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
    const compute_pipeline3032 = device30.createComputePipeline({
        label: "compute_pipeline3032",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    buffer3010.destroy()
    
    const command_buffer306 = command_encoder306.finish();
    render_bundle_encoder300.insertDebugMarker("marker");
    compute_pass_encoder2001.pushDebugGroup("group_marker")
    render_pass_encoder3031.setPipeline(render_pipeline300);
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const compute_pipeline3033 = device30.createComputePipeline({
        label: "compute_pipeline3033",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    command_encoder303.copyBufferToBuffer(
        buffer308,
        0,
        buffer308,
        0,
        400
    );
    render_pass_encoder3000.setVertexBuffer(0, buffer306);
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const pipeline_layout3015 = device30.createPipelineLayout({ 
        label: "pipeline_layout3015",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pipeline3034 = device30.createComputePipeline({
        label: "compute_pipeline3034",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const pipeline_layout3016 = device30.createPipelineLayout({ 
        label: "pipeline_layout3016",
        bindGroupLayouts: [bind_group_layout304]
    });
    
    render_pass_encoder2002.setStencilReference(1);
    const compute_pipeline3035 = device30.createComputePipeline({
        label: "compute_pipeline3035",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2000.setStencilReference(1);
    compute_pass_encoder2010.insertDebugMarker("marker")
    const pipeline_layout3017 = device30.createPipelineLayout({ 
        label: "pipeline_layout3017",
        bindGroupLayouts: [bind_group_layout304]
    });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const compute_pipeline3036 = device30.createComputePipeline({
        label: "compute_pipeline3036",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder2002.setStencilReference(1);
    compute_pass_encoder2010.insertDebugMarker("marker")
    const compute_pipeline3037 = device30.createComputePipeline({
        label: "compute_pipeline3037",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const render_pass_encoder3050 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: query301
    });
    const texture207 = device20.createTexture({
        label: "texture207",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_pass_encoder3030.setPipeline(render_pipeline300);
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder3020.drawIndirect(buffer301, 0);
    const compute_pipeline3038 = device30.createComputePipeline({
        label: "compute_pipeline3038",
        layout: pipeline_layout308,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device30.queue.submit([command_buffer306, ]);
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer205 = device20.createBuffer({
        label: "buffer205",
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
                    buffer: buffer204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer205,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group200);
    render_pass_encoder3000.insertDebugMarker("marker");
    
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const compute_pipeline3039 = device30.createComputePipeline({
        label: "compute_pipeline3039",
        layout: pipeline_layout309,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3020.setStencilReference(1);
    const compute_pipeline3040 = device30.createComputePipeline({
        label: "compute_pipeline3040",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_pass_encoder2000.setPipeline(render_pipeline200);
    render_pass_encoder2000.setStencilReference(1);
    const compute_pipeline3041 = device30.createComputePipeline({
        label: "compute_pipeline3041",
        layout: pipeline_layout3012,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    {
        await buffer309.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer309.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer309.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder2001.setPipeline(render_pipeline200);
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
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
    const compute_pipeline3042 = device30.createComputePipeline({
        label: "compute_pipeline3042",
        layout: pipeline_layout3015,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    buffer205.destroy()
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    const compute_pipeline3043 = device30.createComputePipeline({
        label: "compute_pipeline3043",
        layout: pipeline_layout307,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.setIndexBuffer(buffer304, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder3000.drawIndirect(buffer302, 0);
    render_pass_encoder3020.end();
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder2001.popDebugGroup();
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2001.setBindGroup(0, bind_group201);
    compute_pass_encoder2011.popDebugGroup()
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
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3030.setBindGroup(0, bind_group304);
    render_pass_encoder1010.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder3020.end();
    render_pass_encoder3030.setVertexBuffer(0, buffer300);
    render_pass_encoder2001.setVertexBuffer(0, buffer202);
    render_pass_encoder3040.setPipeline(render_pipeline300);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder3030.drawIndirect(buffer307, 0);
    render_pass_encoder3030.end();
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
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3021.setBindGroup(0, bind_group305);
    render_pass_encoder3050.setPipeline(render_pipeline301);
    render_pass_encoder3000.end();
    render_pass_encoder3031.popDebugGroup();
    compute_pass_encoder2010.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2000.setBindGroup(0, bind_group202);
    render_pass_encoder2002.setPipeline(render_pipeline201);
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
    
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3040.setBindGroup(0, bind_group306);
    render_pass_encoder3021.setVertexBuffer(0, buffer3011);
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2011,
                },
            },
        ],
    });

    render_pass_encoder2002.setBindGroup(0, bind_group203);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder2001.drawIndirect(buffer204, 0);
    render_pass_encoder2000.setVertexBuffer(0, buffer202);
    render_pass_encoder2002.setVertexBuffer(0, buffer2010);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder3020.drawIndirect(buffer3014, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2000.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2000.drawIndirect(buffer203, 0);
    render_pass_encoder3040.setVertexBuffer(0, buffer3011);
    render_pass_encoder3040.drawIndirect(buffer300, 0);
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
        
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: compute_pipeline303.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group307);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder3020.drawIndirect(buffer3017, 0);
    render_pass_encoder2002.drawIndirect(buffer203, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder2002.end();
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
    render_pass_encoder3040.end();
    compute_pass_encoder3000.end();
    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3022,
                },
            },
        ],
    });

    render_pass_encoder3031.setBindGroup(0, bind_group308);
    render_pass_encoder3031.setVertexBuffer(0, buffer3011);
    render_pass_encoder3031.drawIndirect(buffer302, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2000.drawIndirect(buffer207, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder3031.end();
    render_pass_encoder2000.drawIndexed(3);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder3031.setIndexBuffer(buffer305, "uint16");
    const command_buffer304 = command_encoder304.finish();
    render_pass_encoder3040.popDebugGroup();
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder3020.end();
    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: compute_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3024,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group309);
    command_encoder300.popDebugGroup()
    render_pass_encoder2000.popDebugGroup();
    device30.queue.submit([command_buffer302, ]);
    const command_buffer300 = command_encoder300.finish();
    const command_buffer303 = command_encoder303.finish();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3021.draw(3);
    render_pass_encoder3030.drawIndirect(buffer308, 0);
    render_pass_encoder3020.drawIndirect(buffer3020, 0);
    render_pass_encoder3021.setIndexBuffer(buffer308, "uint16");
    const buffer3025 = device30.createBuffer({
        label: "buffer3025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3026 = device30.createBuffer({
        label: "buffer3026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group3010 = device30.createBindGroup({
        label: "bind_group3010",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3026,
                },
            },
        ],
    });

    render_pass_encoder3050.setBindGroup(0, bind_group3010);
    render_pass_encoder3030.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder3050.setVertexBuffer(0, buffer3011);
    render_pass_encoder3031.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder3050.drawIndirect(buffer309, 0);
    render_pass_encoder3040.drawIndirect(buffer3014, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer3020, 0);
    device30.queue.submit([command_buffer303, command_buffer304, ]);
    render_pass_encoder3050.setIndexBuffer(buffer303, "uint16");
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3027 = device30.createBuffer({
        label: "buffer3027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3027, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3027, 0);
    render_pass_encoder3031.drawIndirect(buffer3027, 0);
    render_pass_encoder3021.setIndexBuffer(buffer3019, "uint16");
    render_pass_encoder2001.end();
    render_pass_encoder2000.drawIndirect(buffer203, 0);
    render_pass_encoder3040.drawIndirect(buffer3020, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder3040.setIndexBuffer(buffer3020, "uint16");
    render_pass_encoder3050.drawIndirect(buffer3021, 0);
    compute_pass_encoder2011.popDebugGroup()
    compute_pass_encoder3000.end();
    render_pass_encoder3040.drawIndexedIndirect(buffer3019, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder3050.popDebugGroup();
    render_pass_encoder3020.draw(3);
    render_pass_encoder3040.drawIndirect(buffer302, 0);
    render_pass_encoder2001.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder3040.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder3040.drawIndexedIndirect(buffer3016, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer302, 0);
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder3000.end();
    render_pass_encoder3050.drawIndexedIndirect(buffer309, 0);
    render_pass_encoder2001.popDebugGroup();
    command_encoder201.popDebugGroup()
    render_pass_encoder3030.drawIndexedIndirect(buffer302, 0);
    render_pass_encoder3050.endOcclusionQuery()
    render_pass_encoder2001.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder3030.drawIndexedIndirect(buffer3016, 0);
    render_pass_encoder3050.drawIndirect(buffer3020, 0);
    render_pass_encoder3050.end();
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3021.drawIndexedIndirect(buffer3020, 0);
    render_pass_encoder2002.end();
    compute_pass_encoder3000.end();
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3050.drawIndirect(buffer3025, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder3020.drawIndirect(buffer301, 0);
    const command_buffer305 = command_encoder305.finish();
    device40.queue.submit([]);
    compute_pass_encoder3000.popDebugGroup()
    device30.queue.submit([command_buffer305, ]);
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    render_pass_encoder3050.draw(3);
    render_pass_encoder3050.drawIndexedIndirect(buffer3017, 0);
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3030.end();
    render_pass_encoder3040.drawIndexedIndirect(buffer3020, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder3000.draw(3);
    render_pass_encoder3000.draw(3);
    render_pass_encoder2000.draw(3);
    render_pass_encoder3000.drawIndirect(buffer302, 0);
    render_pass_encoder3040.setIndexBuffer(buffer3015, "uint16");
    render_pass_encoder3040.end();
    render_pass_encoder3030.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder3021.drawIndexedIndirect(buffer304, 0);
    render_pass_encoder3020.drawIndirect(buffer3019, 0);
    render_pass_encoder3050.drawIndirect(buffer3027, 0);
    render_pass_encoder3000.end();
    render_pass_encoder3031.drawIndexedIndirect(buffer3020, 0);
    const command_buffer201 = command_encoder201.finish();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder3040.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder3020.drawIndirect(buffer302, 0);
    device30.queue.submit([command_buffer302, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2002.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder3040.drawIndexedIndirect(buffer3027, 0);
    render_pass_encoder3050.drawIndirect(buffer3025, 0);
    render_pass_encoder2002.end();
    render_pass_encoder3040.draw(3);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder3031.end();
    render_pass_encoder3031.drawIndirect(buffer306, 0);
    render_pass_encoder3040.setIndexBuffer(buffer3022, "uint16");
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder3021.drawIndirect(buffer3027, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer302, 0);
    render_pass_encoder3050.setIndexBuffer(buffer3015, "uint16");
    render_pass_encoder2002.drawIndirect(buffer206, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3015, 0);
    render_pass_encoder2000.end();
    render_pass_encoder3020.end();
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3031.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2010, 0);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2002.drawIndexed(3);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder2002.drawIndirect(buffer202, 0);
    render_pass_encoder3050.endOcclusionQuery()
    render_pass_encoder3021.end();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2000.draw(3);
    render_pass_encoder3050.drawIndexedIndirect(buffer3027, 0);
    render_pass_encoder3040.drawIndirect(buffer3014, 0);
    render_pass_encoder3050.popDebugGroup();
    render_pass_encoder3021.popDebugGroup();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3030.drawIndirect(buffer3020, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder3040.end();
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder2001.draw(3);
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2010, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2002.drawIndirect(buffer201, 0);
    render_pass_encoder3050.drawIndexedIndirect(buffer3026, 0);
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer202, 0);
    device20.queue.submit([]);
    render_pass_encoder3000.end();
    render_pass_encoder2002.drawIndirect(buffer200, 0);
    render_pass_encoder3030.end();
    render_pass_encoder3030.end();
    render_pass_encoder3031.drawIndexedIndirect(buffer302, 0);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3021.drawIndexedIndirect(buffer3027, 0);
    render_pass_encoder3000.drawIndirect(buffer302, 0);
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder3031.draw(3);
    render_pass_encoder3040.drawIndirect(buffer3027, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder2002.drawIndirect(buffer209, 0);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder3031.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer203, 0);
    render_pass_encoder3030.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3050.end();
    render_pass_encoder2002.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3040.end();
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder3030.drawIndexedIndirect(buffer302, 0);
    render_pass_encoder3030.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder3030.drawIndirect(buffer3020, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder3050.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3031.drawIndexedIndirect(buffer3010, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder3040.drawIndexedIndirect(buffer3022, 0);
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder2002.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder3031.drawIndexedIndirect(buffer3020, 0);
    render_pass_encoder3040.end();
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder3021.drawIndirect(buffer302, 0);
    render_pass_encoder3021.drawIndirect(buffer3018, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer203, 0);
    device20.queue.submit([command_buffer203, ]);
    device30.queue.submit([command_buffer306, ]);
    render_pass_encoder3031.setIndexBuffer(buffer3019, "uint16");
    render_pass_encoder3050.popDebugGroup();
    render_pass_encoder3030.drawIndirect(buffer3020, 0);
    render_pass_encoder2002.drawIndirect(buffer203, 0);
    compute_pass_encoder3000.popDebugGroup()
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
        layout: compute_pipeline303.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group3011);
    compute_pass_encoder2001.popDebugGroup()
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder3040.drawIndirect(buffer3025, 0);
    render_pass_encoder3040.setIndexBuffer(buffer3028, "uint16");
    render_pass_encoder3040.drawIndexedIndirect(buffer3019, 0);
    render_pass_encoder3030.setIndexBuffer(buffer303, "uint16");
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder2001.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder3021.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder3040.drawIndexed(3);
    render_pass_encoder3031.end();
    render_pass_encoder2000.end();
    render_pass_encoder3040.drawIndirect(buffer3024, 0);
    render_pass_encoder2000.drawIndirect(buffer208, 0);
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder3040.drawIndexedIndirect(buffer305, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3020, 0);
    render_pass_encoder3031.drawIndirect(buffer3025, 0);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3021.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder3021.drawIndexedIndirect(buffer308, 0);
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    device30.queue.submit([command_buffer300, command_buffer306, ]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder3050.drawIndexedIndirect(buffer3027, 0);
    render_pass_encoder3040.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer203, 0);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder3050.drawIndexedIndirect(buffer302, 0);
    device30.queue.submit([command_buffer304, command_buffer305, ]);
    device30.queue.submit([command_buffer300, command_buffer306, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder3000.drawIndirect(buffer302, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2000.drawIndirect(buffer203, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer203, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder3000.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder3031.draw(3);
    render_pass_encoder3050.popDebugGroup();
    render_pass_encoder3021.drawIndexedIndirect(buffer3029, 0);
    render_pass_encoder2002.end();
    render_pass_encoder2000.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2002.end();
    render_pass_encoder3000.drawIndexedIndirect(buffer3025, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder3050.drawIndirect(buffer3015, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer307, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder3030.drawIndirect(buffer3020, 0);
    render_pass_encoder2000.drawIndirect(buffer208, 0);
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder3021.drawIndexedIndirect(buffer3020, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer203, 0);
}