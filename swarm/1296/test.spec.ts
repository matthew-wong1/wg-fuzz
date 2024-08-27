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
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    buffer100.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    
    
    device10.pushErrorScope("validation");
    
    
    query100.destroy()
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    buffer101.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
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
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const bind_group_layout001 = device00.createBindGroupLayout({ 
        label: "bind_group_layout001",
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
    device10.pushErrorScope("out-of-memory");
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    device00.destroy();
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query100.destroy()
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    query101.destroy()
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    query100.destroy()
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    
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
        occlusionQuerySet: query100
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
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
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    buffer102.destroy()
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    query101.destroy()
    
    
    query101.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder1000.executeBundles([])
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1010.insertDebugMarker("marker");
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
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
        occlusionQuerySet: undefined
    });
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query101
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1011.pushDebugGroup("group_marker");
    
    {
        await buffer104.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer104.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer104.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder1001.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1001.insertDebugMarker("marker");
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    {
        await buffer104.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer104.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer104.unmap();
        console.log(new Float32Array(data));
    }
    
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    render_pass_encoder1010.popDebugGroup();
    
    
    
    {
        await buffer104.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer104.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer104.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query101.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    
    device10.pushErrorScope("out-of-memory");
    render_pass_encoder1011.executeBundles([])
    
    render_pass_encoder1011.pushDebugGroup("group_marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder1011.popDebugGroup();
    render_bundle_encoder101.pushDebugGroup("group_marker");
    buffer106.destroy()
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
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.insertDebugMarker("marker");
    const render_bundle_encoder103 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder103",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1011.insertDebugMarker("marker");
    render_pass_encoder1011.insertDebugMarker("marker");
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_pass_encoder1001.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const texture_view1013 = texture101.createView({ label: "texture_view1013" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer103,
        0
    )
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    
    
    render_pass_encoder1020.insertDebugMarker("marker");
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    
    const render_pass_encoder1002 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1002",
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
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1001.executeBundles([])
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    
    render_pass_encoder1002.pushDebugGroup("group_marker");
    
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1002.executeBundles([])
    render_pass_encoder1002.setPipeline(render_pipeline100);
    
    
    render_pass_encoder1001.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1020.setPipeline(render_pipeline100);
    render_pass_encoder1011.setPipeline(render_pipeline100);
    
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1001.executeBundles([])
    buffer105.destroy()
    render_pass_encoder1000.setPipeline(render_pipeline100);
    render_pass_encoder1001.insertDebugMarker("marker");
    
    render_pass_encoder1010.popDebugGroup();
    query100.destroy()
    query101.destroy()
    query102.destroy()
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_pass_encoder1002.beginOcclusionQuery(0)
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.setPipeline(render_pipeline100);
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query101
    });
    buffer104.destroy()
    
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    {
        await buffer103.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer103.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer103.unmap();
        console.log(new Float32Array(data));
    }
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group100);
    device10.pushErrorScope("internal");
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1002.setBindGroup(0, bind_group101);
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1021,
            },
        ],
        occlusionQuerySet: query100
    });
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
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
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    render_pass_encoder1010.setPipeline(render_pipeline100);
    render_pass_encoder1002.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1021,
            },
        ],
        occlusionQuerySet: query100
    });
    buffer105.destroy()
    render_bundle_encoder103.setPipeline(render_pipeline100);
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder103.setBindGroup(0, bind_group102);
    render_pass_encoder1040.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1040.insertDebugMarker("marker");
    
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1022,
            },
        ],
        occlusionQuerySet: query101
    });
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module1010,
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
            module: shader_module1010,
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
    render_pass_encoder1040.setPipeline(render_pipeline100);
    render_bundle_encoder102.insertDebugMarker("marker");
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1050.setPipeline(render_pipeline100);
    render_bundle_encoder101.insertDebugMarker("marker");
    buffer1010.destroy()
    render_pass_encoder1031.insertDebugMarker("marker");
    
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
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

    render_pass_encoder1050.setBindGroup(0, bind_group103);
    
    command_encoder101.copyBufferToBuffer(
        buffer1012,
        0,
        buffer101,
        0,
        400
    );
    
    command_encoder102.copyBufferToBuffer(
        buffer1010,
        0,
        buffer101,
        0,
        400
    );
    const render_pass_encoder1012 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1012",
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
    render_pass_encoder1001.executeBundles([])
    render_pass_encoder1031.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1040.insertDebugMarker("marker");
    render_pass_encoder1050.pushDebugGroup("group_marker");
    render_pass_encoder1000.insertDebugMarker("marker");
    
    
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_pass_encoder1010.insertDebugMarker("marker");
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1001.setPipeline(render_pipeline101);
    render_bundle_encoder101.setPipeline(render_pipeline100);
    
    
    render_pass_encoder1002.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1016,
                },
            },
        ],
    });

    render_pass_encoder1010.setBindGroup(0, bind_group104);
    
    buffer1012.destroy()
    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1018,
                },
            },
        ],
    });

    render_pass_encoder1001.setBindGroup(0, bind_group105);
    command_encoder105.copyBufferToBuffer(
        buffer1012,
        0,
        buffer103,
        0,
        400
    );
    buffer1015.destroy()
    render_pass_encoder1002.popDebugGroup();
    const render_pass_encoder1051 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1022,
            },
        ],
        occlusionQuerySet: undefined
    });
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
    render_pass_encoder1041.executeBundles([])
    buffer107.destroy()
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1051.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    render_pass_encoder1001.insertDebugMarker("marker");
    
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    render_bundle_encoder103.pushDebugGroup("group_marker");
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const texture_view1014 = texture101.createView({ label: "texture_view1014" });
    render_pass_encoder1051.insertDebugMarker("marker");
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module1010,
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
            module: shader_module1010,
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
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer1010,
        0
    )
    buffer1011.destroy()
    
    query102.destroy()
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1031.setPipeline(render_pipeline103);
    query102.destroy()
    render_pass_encoder1051.setPipeline(render_pipeline103);
    render_pass_encoder1030.setPipeline(render_pipeline102);
    render_pass_encoder1041.insertDebugMarker("marker");
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1012.setPipeline(render_pipeline103);
    render_pass_encoder1051.insertDebugMarker("marker");
    render_pass_encoder1031.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1002.endOcclusionQuery()
    {
        await buffer1018.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1018.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1018.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder1010.setVertexBuffer(0, buffer102);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const render_pass_encoder1003 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1003",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1003.pushDebugGroup("group_marker");
    buffer1017.destroy()
    render_pass_encoder1050.setVertexBuffer(0, buffer1015);
    buffer109.destroy()
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1001.setVertexBuffer(0, buffer102);
    buffer1018.destroy()
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module109,
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
            module: shader_module109,
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
    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
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
                    buffer: buffer1019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1020,
                },
            },
        ],
    });

    render_pass_encoder1011.setBindGroup(0, bind_group106);
    command_encoder105.resolveQuerySet(
        query102,
        0,
        32,
        buffer1017,
        0
    )
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query101.destroy()
    render_pass_encoder1002.setVertexBuffer(0, buffer103);
    render_pass_encoder1050.setIndexBuffer(buffer1013, "uint16");
    
    render_pass_encoder1050.setIndexBuffer(buffer1014, "uint16");
    
    render_pass_encoder1012.insertDebugMarker("marker");
    
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder100.setPipeline(render_pipeline103);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer109,
        0
    )
    
    render_pass_encoder1040.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1010.setIndexBuffer(buffer1016, "uint16");
    
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    render_pass_encoder1012.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
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
                    buffer: buffer1021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1022,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group107);
    render_pass_encoder1001.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1031.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1041.executeBundles([])
    render_pass_encoder1001.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1000.setVertexBuffer(0, buffer102);
    render_pass_encoder1011.setVertexBuffer(0, buffer1010);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    buffer1013.destroy()
    
    render_pass_encoder1050.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1002.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer1020.destroy()
    
    
    
    render_pass_encoder1002.insertDebugMarker("marker");
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1014,
            },
        ],
        occlusionQuerySet: query101
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    var shader_module1012_code = "";
    try {
        shader_module1012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1012 = await device10.createShaderModule({ label: "shader_module1012", code: shader_module1012_code })
    render_pass_encoder1002.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1003.setPipeline(render_pipeline105);
    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    render_pass_encoder1001.insertDebugMarker("marker");
    render_pass_encoder1021.setPipeline(render_pipeline103);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_pass_encoder1040.pushDebugGroup("group_marker");
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1040.insertDebugMarker("marker");
    
    
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    command_encoder101.copyBufferToTexture(
        {
            buffer: buffer101
        },
        {
            texture: texture100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1012.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1040.insertDebugMarker("marker");
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const render_pass_encoder1004 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1004",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1021,
            },
        ],
        occlusionQuerySet: query102
    });
    
    buffer1019.destroy()
    query100.destroy()
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1012.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    render_pass_encoder1000.pushDebugGroup("group_marker");
    
    render_pass_encoder1001.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1041.setPipeline(render_pipeline104);
    const texture_view1015 = texture101.createView({ label: "texture_view1015" });
    
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.pushErrorScope("internal");
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    command_encoder106.copyBufferToBuffer(
        buffer1012,
        0,
        buffer109,
        0,
        400
    );
    query102.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1040.popDebugGroup();
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query101
    });
    render_pass_encoder1060.popDebugGroup();
    const texture_view1023 = texture102.createView({ label: "texture_view1023" });
    
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1000.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1011.pushDebugGroup("group_marker");
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer1021.destroy()
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1004.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder1042 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1042",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder104.copyBufferToBuffer(
        buffer101,
        0,
        buffer103,
        0,
        400
    );
    render_pass_encoder1002.insertDebugMarker("marker");
    render_pass_encoder1002.pushDebugGroup("group_marker");
    buffer103.destroy()
    render_pass_encoder1060.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1003.insertDebugMarker("marker");
    var shader_module1013_code = "";
    try {
        shader_module1013_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1013.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1013 = await device10.createShaderModule({ label: "shader_module1013", code: shader_module1013_code })
    
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder1005 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1005",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query101
    });
    render_pass_encoder1011.insertDebugMarker("marker");
    render_pass_encoder1011.insertDebugMarker("marker");
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1050.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1011.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1005.setPipeline(render_pipeline101);
    render_pass_encoder1005.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1040.insertDebugMarker("marker");
    render_pass_encoder1012.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.beginOcclusionQuery(0)
    render_pass_encoder1042.setPipeline(render_pipeline103);
    render_pass_encoder1004.setPipeline(render_pipeline101);
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1011.setIndexBuffer(buffer105, "uint16");
    command_encoder105.copyBufferToBuffer(
        buffer101,
        0,
        buffer1015,
        0,
        400
    );
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer1023,
        0
    )
    
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    
    render_pass_encoder1051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1060.executeBundles([])
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder1002.insertDebugMarker("marker");
    render_pass_encoder1002.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    buffer1023.destroy()
    render_pass_encoder1060.pushDebugGroup("group_marker");
    render_pass_encoder1001.drawIndexed(3);
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8snorm",
        dimension: "2d"
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1001.pushDebugGroup("group_marker");
    render_pass_encoder1031.pushDebugGroup("group_marker");
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1025,
                },
            },
        ],
    });

    render_pass_encoder1005.setBindGroup(0, bind_group108);
    command_encoder104.copyTextureToBuffer(
        {
            texture: texture104
        },
        {
            buffer: buffer1013
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture_view1024 = texture102.createView({ label: "texture_view1024" });
    
    render_pass_encoder1021.pushDebugGroup("group_marker");
    render_pass_encoder1000.popDebugGroup();
    
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_pass_encoder1021.popDebugGroup();
    device10.pushErrorScope("out-of-memory");
    device20.pushErrorScope("internal");
    
    command_encoder102.pushDebugGroup("mygroupmarker")
    render_pass_encoder1060.setPipeline(render_pipeline101);
    render_pass_encoder1020.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1060.popDebugGroup();
    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1027,
                },
            },
        ],
    });

    render_pass_encoder1021.setBindGroup(0, bind_group109);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1003.popDebugGroup();
    render_pass_encoder1005.setVertexBuffer(0, buffer1024);
    render_pass_encoder1000.setIndexBuffer(buffer1023, "uint16");
    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1029,
                },
            },
        ],
    });

    render_pass_encoder1042.setBindGroup(0, bind_group1010);
    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1031,
                },
            },
        ],
    });

    render_pass_encoder1060.setBindGroup(0, bind_group1011);
    render_pass_encoder1021.setVertexBuffer(0, buffer109);
    const command_buffer105 = command_encoder105.finish();
    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1033,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group1012);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1040.setVertexBuffer(0, buffer102);
    render_pass_encoder1021.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1060.setVertexBuffer(0, buffer102);
    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1035,
                },
            },
        ],
    });

    render_pass_encoder1012.setBindGroup(0, bind_group1013);
    render_pass_encoder1040.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1012.setVertexBuffer(0, buffer102);
    render_pass_encoder1040.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1042.setVertexBuffer(0, buffer1018);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1042.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1000.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer105, "uint16");
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
    
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_pass_encoder1041.setBindGroup(0, bind_group1014);
    render_pass_encoder1040.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1005.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1001.end();
    render_pass_encoder1042.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1042.drawIndexed(3);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1003.popDebugGroup();
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1060.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1005.drawIndexed(3);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1040.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1028, "uint16");
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
    
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group1015);
    render_pass_encoder1040.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1030.setVertexBuffer(0, buffer1020);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1040.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1012.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer1029, "uint16");
    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: render_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1041,
                },
            },
        ],
    });

    render_pass_encoder1003.setBindGroup(0, bind_group1016);
    render_pass_encoder1010.end();
    render_pass_encoder1012.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1012.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1005.drawIndexed(3);
    render_pass_encoder1030.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1005.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer103, "uint16");
    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1043,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group1017);
    render_pass_encoder1011.end();
    render_pass_encoder1021.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1012.setIndexBuffer(buffer1016, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1003.setVertexBuffer(0, buffer1036);
    render_pass_encoder1010.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1020.setVertexBuffer(0, buffer1022);
    render_pass_encoder1041.setVertexBuffer(0, buffer1043);
    render_pass_encoder1003.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1031, "uint16");
    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1045,
                },
            },
        ],
    });

    render_pass_encoder1031.setBindGroup(0, bind_group1018);
    render_pass_encoder1031.setVertexBuffer(0, buffer1011);
    render_pass_encoder1005.end();
    render_pass_encoder1005.setIndexBuffer(buffer1034, "uint16");
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder1003.drawIndexed(3);
    render_pass_encoder1060.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1042.end();
    render_pass_encoder1031.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1050.drawIndexed(3);
    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1047,
                },
            },
        ],
    });

    render_pass_encoder1051.setBindGroup(0, bind_group1019);
    render_pass_encoder1051.setVertexBuffer(0, buffer102);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1060.drawIndexed(3);
    render_pass_encoder1041.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1060.end();
    render_pass_encoder1000.end();
    render_pass_encoder1020.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder1042.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1026, "uint16");
    const command_buffer106 = command_encoder106.finish();
    render_pass_encoder1031.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1041.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1021.end();
    render_pass_encoder1005.setIndexBuffer(buffer1039, "uint16");
    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1049,
                },
            },
        ],
    });

    render_pass_encoder1004.setBindGroup(0, bind_group1020);
    render_pass_encoder1005.end();
    render_pass_encoder1030.end();
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder1050.end();
    render_pass_encoder1021.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1012.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1020.drawIndexed(3);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1004.setVertexBuffer(0, buffer108);
    render_pass_encoder1031.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1012.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1000.drawIndexed(3);
    device20.queue.submit([]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1012.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1041.end();
    render_pass_encoder1042.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1060.end();
    render_pass_encoder1030.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1003.drawIndexed(3);
    render_pass_encoder1021.end();
    device10.queue.submit([command_buffer100, command_buffer105, command_buffer106, ]);
    render_pass_encoder1004.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1012.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1004.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1004.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1005.end();
    render_pass_encoder1004.drawIndexed(3);
    render_pass_encoder1012.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1003.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1004.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer1031, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1002.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1041.end();
    render_pass_encoder1051.end();
    render_pass_encoder1031.end();
    render_pass_encoder1021.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1060.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1004.end();
    render_pass_encoder1012.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1012.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1021.end();
    render_pass_encoder1000.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1020.end();
    render_pass_encoder1012.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1012.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1012.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1003.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1002.end();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1042.setIndexBuffer(buffer1045, "uint16");
    command_encoder102.popDebugGroup()
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1040.end();
    render_pass_encoder1020.setIndexBuffer(buffer1031, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1012.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1002.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1004.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1012.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1012.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1012.drawIndexed(3);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1002.setIndexBuffer(buffer1010, "uint16");
    device00.queue.submit([]);
    render_pass_encoder1042.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1004.end();
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1042.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1042.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1021.end();
    render_pass_encoder1012.end();
    render_pass_encoder1030.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1003.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1012.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1060.end();
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder1012.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1031.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1041.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([command_buffer104, command_buffer106, ]);
    render_pass_encoder1003.popDebugGroup();
    render_pass_encoder1010.end();
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1042.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1037, "uint16");
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1041.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1005.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1012.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1004.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1040.end();
    render_pass_encoder1004.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1004.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1003.end();
    render_pass_encoder1021.setIndexBuffer(buffer1028, "uint16");
    device10.queue.submit([command_buffer103, command_buffer105, ]);
    render_pass_encoder1031.setIndexBuffer(buffer1019, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1040.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1004.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1031.end();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1002.end();
    render_pass_encoder1002.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder1030.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1041.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1005.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1031.end();
    render_pass_encoder1001.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1042.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1040.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1002.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1060.end();
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1030.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1021.end();
    render_pass_encoder1000.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1030.end();
    render_pass_encoder1030.end();
    render_pass_encoder1051.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1040.end();
    render_pass_encoder1001.end();
    render_pass_encoder1001.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1003.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1004.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder1001.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1003.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1042.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1041.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1020.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder1042.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1003.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1004.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1041.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1012.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1004.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1003.setIndexBuffer(buffer1040, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1050.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1042.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1042.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer1012, "uint16");
    device10.queue.submit([command_buffer103, command_buffer105, ]);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1003.drawIndexed(3);
    render_pass_encoder1004.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1050.end();
    render_pass_encoder1004.drawIndexed(3);
    render_pass_encoder1031.end();
    render_pass_encoder1012.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1060.setIndexBuffer(buffer1022, "uint16");
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1040.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1002.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1003.end();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1011.end();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1060.setIndexBuffer(buffer1022, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1003.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1012.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder1041.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1042.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1037, "uint16");
    device10.queue.submit([command_buffer103, command_buffer105, ]);
    render_pass_encoder1050.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1050.end();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1021.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1003.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1005.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1060.drawIndexed(3);
    render_pass_encoder1012.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1012.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer100, "uint16");
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder1004.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1012.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1040.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1021.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1002.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1012.end();
    render_pass_encoder1004.drawIndexed(3);
    render_pass_encoder1060.setIndexBuffer(buffer105, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1003.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1004.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1021.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1005.end();
    render_pass_encoder1001.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1005.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1012.setIndexBuffer(buffer1026, "uint16");
    device10.queue.submit([command_buffer101, command_buffer104, ]);
    render_pass_encoder1001.end();
    render_pass_encoder1002.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1051.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1051.end();
    render_pass_encoder1010.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1040.end();
    render_pass_encoder1060.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1003.end();
    render_pass_encoder1040.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1030.endOcclusionQuery()
}