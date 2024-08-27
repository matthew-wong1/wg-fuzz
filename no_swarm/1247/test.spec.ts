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
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    
    
    
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device00.destroy();
    
    
    
    const array0 = new Float32Array([-1.0, -0.25, -0.5, 0.0, -0.75, 0.5, 0.5, 0.25, 0.0, 0.5, -0.75, 0.0, -1.0, 0.5, -0.75, -1.0, 1.0, -1.0, -0.25, 1.0, -0.75, 0.0, 0.25, -0.75, -0.25, 0.75, 0.0, 0.0, 1.0, 0.5, -0.25, -1.0, 0.5, -0.5, 0.25, -0.75, 0.25, -1.0, -0.5, -0.5, -0.75, -0.75, -1.0, -0.25, 0.75, 0.75, 0.0, 0.0, 0.5, 1.0, 0.0, 0.5, 0.5, 0.5, 0.75, 0.75, 0.0, -1.0, -0.75, -0.75, 0.75, 0.0, -1.0, -0.5, -0.5, -0.5, -1.0, -0.25, -1.0, -0.25, 0.25, -0.75, 0.5, 1.0, -0.5, 1.0, -0.25, -0.75, 0.75, -0.75, 0.25, -0.5, 1.0, -0.75, -0.25, -0.5, -0.75, 0.0, -1.0, 0.0, 0.25, 0.0, -0.25, 0.0, 1.0, -1.0, -0.75, -1.0, 1.0, 1.0, ]);
    const array1 = new Float32Array([-0.75, -0.5, -0.25, -1.0, 0.75, -0.5, 0.75, 0.75, -0.75, -0.75, 0.5, -0.5, 0.75, 0.0, 0.0, -0.25, 0.0, 0.25, 0.25, -0.5, -0.5, 0.25, 0.5, 0.0, -1.0, -0.75, -0.5, 0.5, 0.5, -0.25, -1.0, -0.75, -0.25, 0.25, -1.0, -0.25, 0.5, 0.75, -1.0, 0.25, 0.0, 0.0, 1.0, 1.0, 0.0, -0.75, 0.25, -0.75, -0.5, -1.0, 0.25, 0.5, 0.25, 0.0, -1.0, -1.0, 0.0, 0.25, 0.25, -1.0, 1.0, -0.5, 0.5, -1.0, 1.0, 0.0, 0.0, -0.5, 0.75, 0.0, -1.0, 0.75, -0.25, 0.25, -0.5, 0.5, 0.5, -0.5, 0.25, 0.0, -0.5, 0.75, -0.25, 0.25, 0.25, 0.75, -0.25, 0.75, 0.5, -0.25, 0.0, 0.0, -0.75, -1.0, -0.25, -0.25, -1.0, 0.0, -1.0, 0.25, ]);
    
    
    
    const array2 = new Float32Array([0.5, 0.5, 0.25, -0.75, 0.25, -0.75, 0.75, 0.25, 0.5, -0.5, 0.5, 0.5, 1.0, 0.25, 0.25, -0.5, 0.75, -0.25, 0.0, 0.0, 0.0, -0.25, 0.0, 1.0, -0.25, -0.5, -1.0, -0.5, 0.25, -0.5, -0.75, 0.25, 0.75, -0.25, 0.75, 0.5, 1.0, 0.25, 0.0, 0.75, 0.75, 1.0, 0.75, -1.0, 0.25, -1.0, 0.25, 0.5, -0.5, -0.75, 0.0, -0.75, -1.0, 0.75, -1.0, -0.75, -1.0, -1.0, -0.75, -0.25, -0.5, 0.5, 0.25, -1.0, 0.25, -0.5, -0.5, -0.25, 0.75, -1.0, -0.5, 0.25, 0.25, -0.75, -0.25, 0.75, 1.0, -0.75, 0.25, 0.25, 0.0, -0.25, 0.75, 0.25, 0.75, 1.0, 0.75, -0.75, -0.75, 0.0, 0.75, 0.25, -1.0, -0.5, 0.0, 0.25, 0.5, 1.0, -1.0, -0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array3 = new Float32Array([0.0, 0.5, -1.0, -0.5, 0.25, 0.0, -0.25, -0.25, 0.25, 1.0, 0.5, -0.75, -0.75, -1.0, -0.75, -0.25, 0.75, 0.0, -0.5, 0.75, 0.75, 1.0, -0.75, -0.5, -0.25, -0.5, -0.5, 0.5, 1.0, 0.5, 0.0, 0.75, -0.5, -0.5, -0.25, -1.0, 1.0, -1.0, 0.25, -0.5, 0.75, 0.5, 0.75, 0.0, 0.25, -1.0, -0.25, -1.0, -0.75, -0.25, 0.25, -0.5, 1.0, -0.5, -0.5, -1.0, 0.75, 0.75, 0.25, -0.25, -0.75, 0.25, -0.25, 0.25, -1.0, -0.5, -0.25, 0.25, 0.75, -0.25, 0.75, 0.25, -1.0, 0.0, -0.75, -0.75, -1.0, -0.25, -1.0, -1.0, -0.25, 0.75, 0.25, -1.0, 0.0, 0.0, 1.0, 0.5, 0.0, -0.75, 0.25, 1.0, 0.75, 0.5, 0.5, 0.25, 0.25, 1.0, -1.0, 0.0, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    buffer100.destroy()
    device20.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device30.pushErrorScope("validation");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    device10.pushErrorScope("internal");
    
    device30.destroy();
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    query100.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    command_encoder102.insertDebugMarker("mymarker");
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder1020.setPipeline(compute_pipeline100);
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
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
    texture000.destroy();
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.queue.writeTexture({ texture: texture102 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    render_pass_encoder1010.insertDebugMarker("marker");
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    compute_pass_encoder1020.popDebugGroup()
    device10.destroy();
    
    const array4 = new Float32Array([-0.5, 0.5, -0.5, 0.5, -1.0, -0.5, 0.75, 1.0, -0.5, 1.0, -1.0, 1.0, 0.75, 0.5, -0.25, 0.75, -0.75, -1.0, -0.75, 1.0, -0.25, 0.0, -0.5, -1.0, -0.25, -0.75, -1.0, 1.0, -0.5, 1.0, -0.75, 1.0, -0.25, 0.5, -0.75, -0.5, 0.0, -1.0, 0.25, 0.25, -0.75, 0.25, 0.0, 1.0, 0.5, -1.0, -0.5, -0.75, 0.5, 0.75, 0.25, 0.25, 1.0, 0.5, 0.75, 0.0, 0.75, -0.75, 0.75, -1.0, -1.0, -0.75, 0.25, -0.25, 0.5, 0.0, 0.5, -0.75, -0.75, 0.75, 0.75, 1.0, -0.75, -1.0, -0.75, -0.25, 0.75, -0.25, -0.75, -1.0, 0.5, 0.5, -0.25, 0.5, -0.25, 0.0, 0.5, -0.75, 1.0, 0.25, -0.5, -1.0, 0.5, -0.75, -0.75, 0.25, -0.25, -0.25, -0.25, -0.5, ]);
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device30.destroy();
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device50.pushErrorScope("out-of-memory");
    
    
    const array5 = new Float32Array([0.75, 0.5, 1.0, 1.0, -0.25, 0.75, 0.5, 0.5, -0.25, -0.25, 0.75, 0.0, 0.0, 0.75, 0.5, -0.25, 1.0, -0.5, 0.0, -0.5, 1.0, 0.0, 1.0, -0.75, 1.0, -0.25, 1.0, 0.0, -1.0, -0.75, -0.5, -0.75, 0.75, 0.0, -0.5, 0.25, -0.75, 1.0, 0.0, -0.5, 0.0, 0.0, 0.0, 0.5, -0.25, 0.25, -0.25, 0.75, 0.5, 0.0, -0.25, -0.25, 0.0, 0.75, 0.0, 0.5, 0.0, 0.0, 0.75, 1.0, -0.75, -1.0, 1.0, 0.5, -1.0, -1.0, 0.0, 0.25, -0.5, 0.25, -0.75, 0.5, 1.0, 0.0, -1.0, -1.0, 0.5, -1.0, 0.5, -1.0, 0.75, 0.0, 0.5, -0.25, -0.25, -0.75, 1.0, 0.25, -0.75, -0.5, -0.25, -0.75, -0.75, 1.0, -0.5, -0.75, -0.5, -1.0, 0.5, 0.25, ]);
    compute_pass_encoder1000.insertDebugMarker("marker")
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    command_encoder500.insertDebugMarker("mymarker");
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
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    command_encoder501.pushDebugGroup("mygroupmarker")
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
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
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
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_bundle_encoder500.popDebugGroup();
    command_encoder501.popDebugGroup()
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_bundle_encoder500.setPipeline(render_pipeline500);
    device60.pushErrorScope("internal");
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    
    
    const array6 = new Float32Array([0.75, -1.0, 0.5, 0.5, 0.0, 1.0, -0.5, 0.0, 0.0, 0.75, -0.25, 0.25, -1.0, 1.0, 0.5, 0.25, 0.75, -0.25, 0.75, 0.5, 0.0, 0.25, 0.0, 0.5, 1.0, 0.75, 0.75, -0.75, 0.75, -0.25, -0.75, 1.0, 0.0, -0.5, 0.5, -0.25, 0.75, -1.0, -0.5, 0.0, -0.5, 0.25, -1.0, 0.0, -0.25, 1.0, -0.5, 1.0, 1.0, 0.0, -0.75, 0.25, 0.0, -0.25, 0.5, 0.0, 0.0, -0.5, -1.0, -1.0, 0.75, -0.5, 0.5, 0.75, 0.0, 0.75, 0.0, -1.0, -0.25, -0.75, -1.0, 1.0, 0.25, -1.0, -0.25, -0.5, 0.75, 0.0, 1.0, 0.5, 0.25, 1.0, -1.0, 0.25, -0.5, 0.25, 0.75, -1.0, 0.5, -0.5, 0.5, -1.0, -0.5, -0.75, -0.75, 1.0, -1.0, 0.0, 0.25, 1.0, ]);
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device50.pushErrorScope("validation");
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    
    command_encoder502.insertDebugMarker("mymarker");
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    const command_buffer500 = command_encoder500.finish();
    
    
    
    
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    buffer600.destroy()
    const sampler600 = device60.createSampler( { label: "sampler600" } );
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
    compute_pass_encoder5000.setPipeline(compute_pipeline500);
    const command_buffer501 = command_encoder501.finish();
    command_encoder502.insertDebugMarker("mymarker");
    
    
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
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
    
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
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
    device50.queue.submit([command_buffer500, command_buffer501, ]);
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    device50.pushErrorScope("out-of-memory");
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
        layout: compute_pipeline500.getBindGroupLayout(0),
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

    compute_pass_encoder5000.setBindGroup(0, bind_group500);
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer501, 0, array6, 0, array6.length);
    
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
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
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group100);
    render_bundle_encoder600.setPipeline(render_pipeline603);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    device50.queue.submit([command_buffer500, ]);
    device40.pushErrorScope("out-of-memory");
    
    texture500.destroy();
    compute_pass_encoder5000.dispatchWorkgroups(100);
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
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    buffer500.destroy()
    
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    device50.queue.writeTexture({ texture: texture501 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device00.pushErrorScope("out-of-memory");
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
    
    
    compute_pass_encoder5000.insertDebugMarker("marker")
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
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    compute_pass_encoder5020.insertDebugMarker("marker")
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const command_buffer503 = command_encoder503.finish();
    compute_pass_encoder5020.setPipeline(compute_pipeline503);
    render_bundle_encoder600.insertDebugMarker("marker");
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
    buffer502.destroy()
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    device50.queue.writeTexture({ texture: texture501 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: compute_pipeline503.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer504,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer505,
                },
            },
        ],
    });

    compute_pass_encoder5020.setBindGroup(0, bind_group501);
    
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeTexture({ texture: texture501 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline603.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer602,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer603,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group600);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder501.insertDebugMarker("marker");
    device60.queue.submit([]);
    
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    command_encoder504.copyTextureToTexture(
        {
            texture: texture502
        },
        {
            texture: texture502
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device50.queue.writeTexture({ texture: texture501 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    
    command_encoder504.copyBufferToTexture(
        {
            buffer: buffer504
        },
        {
            texture: texture501
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    compute_pass_encoder5020.insertDebugMarker("marker")
    
    
    
    command_encoder504.resolveQuerySet(
        query501,
        0,
        32,
        buffer503,
        0
    )
    command_encoder504.resolveQuerySet(
        query501,
        0,
        32,
        buffer504,
        0
    )
    compute_pass_encoder5020.pushDebugGroup("group_marker")
    
    
    
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const command_buffer504 = command_encoder504.finish();
    
    compute_pass_encoder5020.dispatchWorkgroups(100);
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder5000.insertDebugMarker("marker")
    buffer504.destroy()
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const render_pipeline604 = device60.createRenderPipeline({
        label: "render_pipeline604",
        vertex: {
            module: shader_module603,
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
            module: shader_module603,
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
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    render_bundle_encoder500.popDebugGroup();
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_bundle_encoder501.insertDebugMarker("marker");
    
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const uint32_5020 = new Uint32Array(3);

    uint32_5020[0] = 100;
    uint32_5020[1] = 1;
    uint32_5020[2] = 1;

    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer506, 0, uint32_5020, 0, uint32_5020.length);

    compute_pass_encoder5020.dispatchWorkgroupsIndirect(buffer506, 0);
    render_bundle_encoder400.popDebugGroup();
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline605 = device60.createRenderPipeline({
        label: "render_pipeline605",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
        usage: GPUBufferUsage.COPY_DST
    });
    device50.queue.writeTexture({ texture: texture501 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    compute_pass_encoder5020.insertDebugMarker("marker")
    
    device60.queue.writeTexture({ texture: texture600 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer400.destroy()
    device50.queue.writeBuffer(buffer506, 0, array4, 0, array4.length);
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    
    device50.queue.writeBuffer(buffer506, 0, array5, 0, array5.length);
    
    device50.queue.writeTexture({ texture: texture501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeBuffer(buffer501, 0, array3, 0, array3.length);
    device50.queue.writeBuffer(buffer506, 0, array0, 0, array0.length);
    device60.queue.writeTexture({ texture: texture600 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer503.destroy()
    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device50.queue.writeTexture({ texture: texture501 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    const command_encoder506 = device50.createCommandEncoder({ label: "command_encoder506" });
    
    device50.queue.writeTexture({ texture: texture501 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    query400.destroy()
    query200.destroy()
    
    device60.destroy();
    command_encoder505.copyBufferToTexture(
        {
            buffer: buffer501
        },
        {
            texture: texture501
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device50.queue.writeTexture({ texture: texture501 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query501.destroy()
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer506, 0, array6, 0, array6.length);
    compute_pass_encoder5020.dispatchWorkgroups(100);
    query500.destroy()
    query500.destroy()
    device50.queue.writeTexture({ texture: texture502 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    command_encoder506.copyBufferToBuffer(
        buffer504,
        0,
        buffer500,
        0,
        400
    );
    command_encoder505.resolveQuerySet(
        query500,
        0,
        32,
        buffer502,
        0
    )
    
    device50.queue.writeTexture({ texture: texture501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.pushErrorScope("out-of-memory");
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    
    const compute_pass_encoder5060 = command_encoder506.beginComputePass({ label: "compute_pass_encoder5060" });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout202]
    });
    device50.queue.writeTexture({ texture: texture501 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder505.resolveQuerySet(
        query501,
        0,
        32,
        buffer500,
        0
    )
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeTexture({ texture: texture501 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder5020.popDebugGroup()
    command_encoder505.resolveQuerySet(
        query500,
        0,
        32,
        buffer502,
        0
    )
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    command_encoder505.insertDebugMarker("mymarker");
    device50.queue.writeTexture({ texture: texture501 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
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
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    device50.queue.writeBuffer(buffer506, 0, array4, 0, array4.length);
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    command_encoder506.copyTextureToTexture(
        {
            texture: texture501
        },
        {
            texture: texture502
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    buffer507.destroy()
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    compute_pass_encoder5060.setPipeline(compute_pipeline509);
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer505, 0, array5, 0, array5.length);
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout501]
    });
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    query500.destroy()
    
    device50.queue.writeTexture({ texture: texture501 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const array7 = new Float32Array([0.75, -0.5, 0.0, -0.25, 0.25, 0.75, 0.5, 0.25, -1.0, -0.25, 0.75, -0.25, -1.0, 1.0, 0.25, 0.25, 0.0, 1.0, -0.5, 0.5, -0.5, 0.0, -1.0, -1.0, -1.0, -0.75, 0.0, -1.0, -0.75, -1.0, -0.75, -0.75, -0.25, -0.5, -0.5, -0.75, 0.25, 0.75, -0.25, -0.75, 0.0, 1.0, 0.0, -0.75, 0.75, 0.25, 1.0, 0.25, 1.0, 1.0, 1.0, 0.0, -1.0, 1.0, -0.75, 1.0, 0.25, 0.5, -0.75, -0.5, 0.5, -1.0, -0.5, -0.25, -0.75, -1.0, -0.5, 0.5, 0.0, 0.75, 0.5, 0.0, 1.0, 0.75, 0.75, -1.0, 0.0, -1.0, 0.5, 0.25, -0.5, -1.0, -0.5, 0.75, -0.75, 0.0, 0.25, -0.25, 0.0, -0.5, -0.75, -1.0, 0.5, 0.5, 0.0, 0.5, -0.5, 1.0, -0.25, -0.25, ]);
    
    
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    
    device50.queue.writeBuffer(buffer506, 0, array6, 0, array6.length);
    render_bundle_encoder401.popDebugGroup();
    
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5020,
            },
        ],
        occlusionQuerySet: query502
    });
    
    device50.queue.writeBuffer(buffer506, 0, array4, 0, array4.length);
    compute_pass_encoder5020.pushDebugGroup("group_marker")
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout502,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder5020.setStencilReference(1);
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout504,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    render_pass_encoder5020.beginOcclusionQuery(0)
    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: compute_pipeline509.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer508,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer509,
                },
            },
        ],
    });

    compute_pass_encoder5060.setBindGroup(0, bind_group502);
    command_encoder505.resolveQuerySet(
        query502,
        0,
        32,
        buffer500,
        0
    )
    command_encoder505.copyTextureToBuffer(
        {
            texture: texture500
        },
        {
            buffer: buffer506
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    device50.queue.writeTexture({ texture: texture501 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5020.insertDebugMarker("marker");
    render_pass_encoder5020.setPipeline(render_pipeline501);
    
    render_pass_encoder5020.insertDebugMarker("marker");
    
    query400.destroy()
    command_encoder505.copyBufferToBuffer(
        buffer507,
        0,
        buffer501,
        0,
        400
    );
    command_encoder505.resolveQuerySet(
        query501,
        0,
        32,
        buffer509,
        0
    )
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    render_pass_encoder5020.setViewport(0, 0, texture502.width / 2, texture502.height / 2, 0, 1);
    render_bundle_encoder402.pushDebugGroup("group_marker");
    compute_pass_encoder5060.pushDebugGroup("group_marker")
    render_pass_encoder5020.setScissorRect(0, 0, texture502.width / 2, texture502.height / 2);
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5016 = device50.createComputePipeline({
        label: "compute_pipeline5016",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const compute_pipeline5017 = device50.createComputePipeline({
        label: "compute_pipeline5017",
        layout: pipeline_layout504,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    const render_pipeline606 = device60.createRenderPipeline({
        label: "render_pipeline606",
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
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    render_bundle_encoder400.pushDebugGroup("group_marker");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_pass_encoder5050 = command_encoder505.beginRenderPass({
        label: "render_pass_encoder5050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5020,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder5020.insertDebugMarker("marker")
    
    query500.destroy()
    
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    query501.destroy()
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    command_encoder502.copyBufferToTexture(
        {
            buffer: buffer501
        },
        {
            texture: texture501
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device50.queue.writeTexture({ texture: texture501 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture501 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture101.destroy();
    device50.queue.writeTexture({ texture: texture501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder5020.endOcclusionQuery()
    const compute_pipeline5018 = device50.createComputePipeline({
        label: "compute_pipeline5018",
        layout: pipeline_layout502,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    device50.queue.submit([command_buffer504, ]);
    render_pass_encoder5020.pushDebugGroup("group_marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5011 = device50.createBuffer({
        label: "buffer5011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5011,
                },
            },
        ],
    });

    render_bundle_encoder500.setBindGroup(0, bind_group503);
    const compute_pipeline5019 = device50.createComputePipeline({
        label: "compute_pipeline5019",
        layout: pipeline_layout503,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    device50.queue.writeTexture({ texture: texture501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5050.setPipeline(render_pipeline500);
    const compute_pipeline5020 = device50.createComputePipeline({
        label: "compute_pipeline5020",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline5021 = device50.createComputePipeline({
        label: "compute_pipeline5021",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const array8 = new Float32Array([0.5, -0.25, 1.0, 0.5, 0.0, -0.5, 0.0, -1.0, 0.5, -0.25, 0.75, -0.25, -0.5, 0.25, 0.25, -0.5, 0.5, 0.75, -0.75, 0.25, 0.0, -0.75, -0.5, 1.0, -0.75, 0.75, -1.0, -0.5, 0.25, 0.0, -0.75, 0.0, 0.25, -0.5, 0.0, -0.5, 0.75, -0.5, -1.0, -0.25, -1.0, -0.75, 0.5, 0.75, 0.5, -0.25, 0.25, -0.75, 1.0, -1.0, -1.0, -0.25, -0.75, -0.75, -0.75, 1.0, 0.0, 0.5, 0.75, 0.5, -0.75, 0.5, -0.5, -0.5, 0.5, 0.5, -0.25, 0.75, -0.5, -0.5, 0.0, 0.75, -0.75, -0.75, -0.25, -0.75, 0.75, 0.5, 0.0, -0.25, -1.0, 1.0, 0.0, 0.25, 0.25, -0.5, -0.25, 1.0, -0.25, 0.75, 0.5, 0.75, -0.25, -1.0, 0.5, 0.75, 0.25, 0.0, 0.5, 0.25, ]);
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
    render_bundle_encoder402.insertDebugMarker("marker");
    compute_pass_encoder5000.end();
    query503.destroy()
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    const compute_pipeline5022 = device50.createComputePipeline({
        label: "compute_pipeline5022",
        layout: pipeline_layout501,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    device50.queue.writeTexture({ texture: texture501 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    command_encoder001.pushDebugGroup("mygroupmarker")
    device50.queue.writeBuffer(buffer506, 0, array3, 0, array3.length);
    command_encoder502.copyBufferToBuffer(
        buffer505,
        0,
        buffer505,
        0,
        400
    );
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    buffer5011.destroy()
    compute_pass_encoder4000.insertDebugMarker("marker")
    const compute_pipeline5023 = device50.createComputePipeline({
        label: "compute_pipeline5023",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const command_buffer502 = command_encoder502.finish();
    const buffer5012 = device50.createBuffer({
        label: "buffer5012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5013 = device50.createBuffer({
        label: "buffer5013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group504 = device50.createBindGroup({
        label: "bind_group504",
        layout: compute_pipeline509.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5013,
                },
            },
        ],
    });

    compute_pass_encoder5060.setBindGroup(0, bind_group504);
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder5060.popDebugGroup()
    render_pass_encoder5020.popDebugGroup();
    const buffer5014 = device50.createBuffer({
        label: "buffer5014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5015 = device50.createBuffer({
        label: "buffer5015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group505 = device50.createBindGroup({
        label: "bind_group505",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5015,
                },
            },
        ],
    });

    render_pass_encoder5020.setBindGroup(0, bind_group505);
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder5020.setVertexBuffer(0, buffer5014);
    compute_pass_encoder5020.popDebugGroup()
    render_pass_encoder5020.drawIndirect(buffer506, 0);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder5020.popDebugGroup()
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder5060.dispatchWorkgroups(100);
    render_pass_encoder5020.end();
    const buffer5016 = device50.createBuffer({
        label: "buffer5016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5017 = device50.createBuffer({
        label: "buffer5017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group506 = device50.createBindGroup({
        label: "bind_group506",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5017,
                },
            },
        ],
    });

    render_pass_encoder5050.setBindGroup(0, bind_group506);
    compute_pass_encoder5060.dispatchWorkgroups(100);
    compute_pass_encoder5020.end();
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group101);
    const command_buffer400 = command_encoder400.finish();
    compute_pass_encoder5060.end();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.submit([command_buffer501, command_buffer502, ]);
    device50.queue.submit([command_buffer500, command_buffer502, ]);
    render_pass_encoder5050.setVertexBuffer(0, buffer5015);
    render_pass_encoder5050.setIndexBuffer(buffer507, "uint16");
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder5050.draw(3);
    render_pass_encoder5050.setIndexBuffer(buffer5014, "uint16");
    command_encoder001.popDebugGroup()
    render_pass_encoder5050.drawIndexedIndirect(buffer508, 0);
    compute_pass_encoder5060.dispatchWorkgroups(100);
    const command_buffer506 = command_encoder506.finish();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder5050.end();
    compute_pass_encoder5020.popDebugGroup()
    compute_pass_encoder1000.dispatchWorkgroups(100);
    const command_buffer505 = command_encoder505.finish();
    device50.queue.submit([command_buffer506, ]);
    device50.queue.submit([command_buffer505, ]);
    device50.queue.submit([command_buffer500, ]);
    device50.queue.submit([]);
    render_pass_encoder5050.popDebugGroup();
}