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
    
    const array0 = new Float32Array([-0.25, -0.75, 0.0, 1.0, -0.25, -0.25, 0.75, 0.75, -0.5, 0.5, 0.25, -1.0, -1.0, 0.0, 0.5, 0.25, 0.25, -0.5, 0.75, -0.5, -0.5, 0.5, -0.5, 0.5, -0.25, 0.0, 1.0, -0.25, -0.25, -0.5, 0.75, 0.5, 0.5, 0.25, 0.25, -0.5, -0.75, 0.25, -0.5, 0.5, -0.5, 0.25, -1.0, 0.75, 0.0, -0.5, 0.25, 0.25, 0.0, -0.75, 0.25, 0.0, -0.25, -0.5, 0.0, -0.75, -0.5, 0.0, -1.0, 0.5, 0.5, 1.0, -0.5, 0.75, 1.0, 0.25, -1.0, -1.0, -1.0, 0.5, -0.75, -0.5, -1.0, -0.5, -0.75, -0.75, 0.75, 0.5, -0.25, -1.0, 0.0, 0.75, 1.0, 1.0, 0.25, 0.5, 0.0, 0.0, -0.5, 0.75, 1.0, 0.5, 0.5, 0.5, 0.75, 1.0, 1.0, -1.0, -1.0, -0.25, ]);
    
    const array1 = new Float32Array([-0.25, -0.25, 0.75, -0.75, 0.75, 1.0, 0.75, 0.75, -1.0, 1.0, 0.5, 1.0, -0.75, 1.0, 1.0, -1.0, -1.0, 0.0, 0.25, 1.0, -1.0, 0.75, 0.25, 0.0, -0.25, 0.0, -1.0, 0.25, -0.75, -1.0, 0.25, 1.0, 0.5, -0.75, -0.75, -0.75, -0.75, -0.75, -0.75, -0.25, 0.75, 0.25, 0.75, 1.0, -1.0, -1.0, 0.0, -0.5, 0.5, -0.25, 0.25, 0.5, 0.5, 0.75, 0.0, 0.5, 0.0, 1.0, -0.75, 0.0, 0.5, -1.0, 0.0, -0.75, 0.0, -0.75, 0.25, -0.25, -1.0, -0.5, -0.5, 0.75, 0.0, -1.0, 0.0, 0.5, -1.0, -0.25, -0.75, 0.0, -0.75, 0.25, -1.0, 1.0, -0.25, 0.0, 0.25, -0.5, -0.25, -0.5, 0.0, 0.25, 0.5, -0.5, -0.5, -0.25, 0.25, -0.5, 1.0, -0.5, ]);
    const array2 = new Float32Array([-0.75, 0.75, -0.75, -0.75, 1.0, -1.0, 0.25, 0.0, 0.75, -0.75, -0.75, -0.5, 1.0, -1.0, 0.5, -0.25, 0.5, 0.25, -0.75, 1.0, -0.75, -0.5, -0.25, -1.0, 0.25, -1.0, 0.5, -0.75, -0.5, -0.5, -0.75, 0.5, -0.25, -0.25, -0.5, -1.0, -1.0, -0.25, 0.0, 0.0, 0.75, 0.75, 0.25, -0.75, 0.75, 0.5, 1.0, 0.75, 0.0, -1.0, 0.5, -0.75, -0.25, -1.0, -0.25, -0.5, -1.0, 1.0, 0.5, -1.0, -0.25, 0.0, -0.5, -0.75, -0.5, -0.75, -0.5, 0.5, 0.0, -0.25, -0.75, 0.75, -0.25, -1.0, -0.5, 0.5, -1.0, 0.75, -1.0, -0.5, 0.25, 1.0, 0.25, 0.0, 1.0, -0.5, -0.5, 1.0, -0.25, -0.25, 0.5, -1.0, -0.75, 0.75, -0.5, 0.75, -0.75, 0.75, -1.0, 0.0, ]);
    const array3 = new Float32Array([0.5, -1.0, -0.75, -0.75, 0.5, -1.0, 1.0, 0.5, -1.0, -1.0, 0.75, -0.75, -0.75, 0.25, 0.5, -0.75, 0.5, 0.25, -0.75, -0.75, -0.5, 0.5, -1.0, -0.75, -0.25, -0.25, 0.5, -1.0, 1.0, 0.25, -1.0, 0.5, 0.25, -0.25, 0.5, 0.25, -0.5, -0.25, 0.25, -0.5, 0.25, 0.5, 0.0, -0.75, -0.5, -0.75, 0.5, 0.25, -1.0, 0.75, 1.0, -1.0, 0.5, -0.25, -0.5, 0.5, 0.75, -0.25, 1.0, -0.75, 0.75, 1.0, -0.25, 0.0, 0.75, 0.75, -0.5, -0.75, 0.5, 0.0, 1.0, 0.0, -0.25, -1.0, -1.0, -0.25, -0.5, -0.75, -0.5, 0.5, 1.0, 0.75, -1.0, -1.0, -0.25, 1.0, -0.5, 0.75, -1.0, 0.0, -0.75, -0.25, -1.0, -0.75, 0.75, -0.5, -1.0, 1.0, 1.0, 1.0, ]);
    const array4 = new Float32Array([-0.25, -0.5, 0.0, -0.75, 1.0, -0.25, -0.25, -0.75, 0.0, -0.25, 0.75, 1.0, -0.5, 1.0, -0.25, -0.75, 0.5, 0.0, -1.0, 1.0, 0.75, -1.0, 0.75, 0.25, -0.5, 0.75, -0.5, -0.5, 0.25, -0.25, -0.75, 1.0, -0.5, 0.25, 0.0, 1.0, -1.0, -0.25, 0.5, 0.25, -0.5, 1.0, -0.5, 1.0, 0.5, -0.5, 0.5, 0.75, -0.25, -0.25, 1.0, 0.5, 1.0, 0.75, -0.5, -0.5, -0.25, -0.5, 1.0, 0.0, 0.75, -0.75, -1.0, 0.75, -1.0, 0.5, 0.75, -0.5, -0.5, -0.5, -0.5, 1.0, -0.25, -1.0, 0.0, -0.5, 0.25, 0.75, 0.75, -0.5, 0.0, 0.5, 0.25, -0.5, 0.25, 0.75, -1.0, 1.0, -0.5, 0.75, -0.5, -0.75, 0.75, -0.25, 1.0, -0.75, -0.75, 1.0, -0.75, 0.75, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("validation");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    
    const array5 = new Float32Array([0.75, 0.25, 0.75, 1.0, 0.0, 0.25, 1.0, -0.5, 0.0, 0.0, -0.5, -0.25, 0.75, -0.5, -0.5, 0.25, 1.0, -0.75, -0.5, 0.0, -1.0, 0.25, 0.5, 0.5, -0.25, 0.5, 0.5, 0.5, 0.5, 0.75, -0.75, -0.75, -1.0, 0.25, 0.0, 0.0, 0.25, 0.5, 0.0, -0.5, -0.5, -1.0, 0.5, -0.25, 1.0, 0.25, 0.5, 0.0, 0.5, -0.75, -0.75, -0.25, -0.75, 1.0, -0.75, 0.0, 0.25, 0.0, -0.25, -0.5, 0.75, -0.75, -0.75, 0.75, -1.0, -0.75, 0.25, 1.0, -0.75, 0.75, -0.25, -0.75, 0.75, 0.75, 0.5, 0.75, 1.0, 0.75, 1.0, -1.0, -0.75, 0.75, 0.5, 0.75, 0.75, -1.0, 0.25, 1.0, 0.25, -0.5, 0.75, -0.25, -0.5, -0.75, -0.75, -1.0, 0.0, 0.75, -0.25, 0.25, ]);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    device10.pushErrorScope("out-of-memory");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder001.insertDebugMarker("mymarker");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    query100.destroy()
    query101.destroy()
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder100.insertDebugMarker("mymarker");
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    query002.destroy()
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    render_bundle_encoder000.popDebugGroup();
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device20.pushErrorScope("validation");
    command_encoder101.insertDebugMarker("mymarker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query100.destroy()
    
    
    buffer200.destroy()
    query003.destroy()
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    render_bundle_encoder200.insertDebugMarker("marker");
    buffer201.destroy()
    query000.destroy()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    query001.destroy()
    
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    query000.destroy()
    
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    
    
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    query103.destroy()
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder1020.insertDebugMarker("marker")
    command_encoder002.pushDebugGroup("mygroupmarker")
    buffer001.destroy()
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer203, 0, array0, 0, array0.length);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    
    query102.destroy()
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query102.destroy()
    render_bundle_encoder002.setPipeline(render_pipeline001);
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    buffer000.destroy()
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    query101.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
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
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
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
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_bundle_encoder002.insertDebugMarker("marker");
    
    query102.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device20.queue.writeBuffer(buffer203, 0, array3, 0, array3.length);
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    const array6 = new Float32Array([-1.0, -0.75, 0.0, -1.0, 0.5, -0.25, 1.0, -0.25, 0.5, -1.0, 0.75, -0.5, 0.25, 0.75, 0.75, 0.25, -0.75, 0.5, -0.25, 1.0, 0.0, 0.75, 0.75, 1.0, 1.0, 0.25, 0.5, 0.5, 0.0, 0.0, 0.75, 1.0, 0.0, 0.25, 0.0, -0.75, -0.5, 1.0, 0.5, 0.5, -0.25, 1.0, 1.0, 0.25, -0.75, -0.5, -0.5, -0.5, -0.25, -0.5, 0.0, -0.25, 0.25, -0.25, -0.25, 0.25, 0.5, 0.5, -0.25, 0.5, 0.5, -0.75, 1.0, -0.25, 0.0, -0.75, 0.5, 0.75, 0.25, -0.25, -0.25, 0.5, 0.5, 1.0, 0.75, 0.75, 0.75, -0.75, -0.75, 0.0, 0.5, -1.0, 0.25, 1.0, 0.25, -0.25, 0.5, -0.25, -0.75, 0.5, -0.5, 0.75, 0.25, 0.0, 0.25, -0.75, -0.75, 0.75, 0.25, -0.75, ]);
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_bundle_encoder001.popDebugGroup();
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
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    command_encoder002.insertDebugMarker("mymarker");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    query101.destroy()
    query004.destroy()
    device20.queue.writeBuffer(buffer203, 0, array6, 0, array6.length);
    device20.queue.writeBuffer(buffer203, 0, array5, 0, array5.length);
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder000.popDebugGroup();
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    
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
    buffer203.destroy()
    command_encoder103.insertDebugMarker("mymarker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
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
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query001.destroy()
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
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
    render_bundle_encoder000.popDebugGroup();
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.setPipeline(render_pipeline200);
    query101.destroy()
    render_bundle_encoder000.setPipeline(render_pipeline001);
    query200.destroy()
    query201.destroy()
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_bundle_encoder100.pushDebugGroup("group_marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer005,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer006,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer202.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    compute_pass_encoder0040.insertDebugMarker("marker")
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    render_bundle_encoder301.insertDebugMarker("marker");
    
    buffer006.destroy()
    
    
    command_encoder103.pushDebugGroup("mygroupmarker")
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    compute_pass_encoder0000.insertDebugMarker("marker")
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
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
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

    render_bundle_encoder201.setBindGroup(0, bind_group200);
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    {
        await buffer002.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer002.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer002.unmap();
        console.log(new Float32Array(data));
    }
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer008,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer009,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder103.insertDebugMarker("mymarker");
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    query004.destroy()
    render_bundle_encoder200.setPipeline(render_pipeline200);
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
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

    render_bundle_encoder200.setBindGroup(0, bind_group201);
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
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
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    
    
    query005.destroy()
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    query103.destroy()
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0040.insertDebugMarker("marker")
    query003.destroy()
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    query000.destroy()
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
    command_encoder103.popDebugGroup()
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    buffer100.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    query101.destroy()
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    query104.destroy()
    device10.pushErrorScope("internal");
    
    query101.destroy()
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    render_bundle_encoder301.popDebugGroup();
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    compute_pass_encoder0050.insertDebugMarker("marker")
    query103.destroy()
    device10.queue.writeBuffer(buffer103, 0, array5, 0, array5.length);
    buffer003.destroy()
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    query001.destroy()
    buffer300.destroy()
    device30.pushErrorScope("validation");
    
    
    buffer302.destroy()
    query004.destroy()
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    
    device10.queue.writeBuffer(buffer103, 0, array6, 0, array6.length);
    device10.queue.writeBuffer(buffer103, 0, array6, 0, array6.length);
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    query201.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    const array7 = new Float32Array([1.0, 1.0, -0.25, -0.25, -0.25, -0.25, -0.5, 1.0, 0.75, 0.5, 1.0, -1.0, 0.75, -0.75, 0.25, 0.5, -1.0, -0.5, 0.75, -0.5, 0.0, -0.5, -0.75, -0.75, 0.25, 0.75, -0.25, 0.75, 0.0, 0.75, 0.75, -0.25, 0.25, 0.0, -1.0, -0.75, 1.0, 0.5, -1.0, -0.25, -0.25, 0.25, -0.75, 0.75, 0.0, 0.0, -0.25, -0.75, 0.25, 0.0, -0.75, 0.75, 0.0, 0.75, 0.0, 0.5, 0.75, 0.5, 1.0, -1.0, -0.75, 0.0, 0.0, 0.25, 1.0, 1.0, -0.75, 0.75, -0.25, 0.0, 0.25, 0.5, 0.25, 0.25, -1.0, -0.5, -0.5, 0.0, 0.25, -0.25, -0.25, 0.5, -0.75, -0.5, 0.75, 0.25, 0.5, 0.0, 0.5, -1.0, -0.25, -1.0, -0.75, -1.0, 0.75, -0.25, 0.75, -1.0, -0.25, 0.5, ]);
    buffer207.destroy()
    buffer303.destroy()
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    query202.destroy()
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    buffer206.destroy()
    device00.queue.writeBuffer(buffer0010, 0, array0, 0, array0.length);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    buffer209.destroy()
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    buffer005.destroy()
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer0010, 0, array3, 0, array3.length);
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
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
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    buffer205.destroy()
    
    query103.destroy()
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    query102.destroy()
    buffer102.destroy()
    render_bundle_encoder201.popDebugGroup();
    compute_pass_encoder0010.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    render_bundle_encoder001.insertDebugMarker("marker");
    query202.destroy()
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    query004.destroy()
    
    device00.queue.writeBuffer(buffer0010, 0, array5, 0, array5.length);
    render_bundle_encoder300.popDebugGroup();
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_bundle_encoder101.insertDebugMarker("marker");
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
    render_bundle_encoder300.insertDebugMarker("marker");
    
    {
        await buffer002.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer002.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer002.unmap();
        console.log(new Float32Array(data));
    }
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
    render_bundle_encoder001.insertDebugMarker("marker");
    
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
    query002.destroy()
    device00.queue.writeBuffer(buffer0010, 0, array1, 0, array1.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder400.insertDebugMarker("mymarker");
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    {
        await buffer0010.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer0010.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer0010.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    buffer0011.destroy()
    command_encoder103.insertDebugMarker("mymarker");
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    device30.pushErrorScope("internal");
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    render_bundle_encoder200.popDebugGroup();
    compute_pass_encoder0030.insertDebugMarker("marker")
    query001.destroy()
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    command_encoder400.pushDebugGroup("mygroupmarker")
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
    device00.queue.writeBuffer(buffer0012, 0, array1, 0, array1.length);
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_bundle_encoder002.popDebugGroup();
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    compute_pass_encoder0010.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer0012, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    query102.destroy()
    device10.queue.writeBuffer(buffer103, 0, array6, 0, array6.length);
    device00.queue.writeBuffer(buffer0012, 0, array4, 0, array4.length);
    buffer103.destroy()
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    buffer004.destroy()
    command_encoder401.insertDebugMarker("mymarker");
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    device00.queue.writeBuffer(buffer0010, 0, array5, 0, array5.length);
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    command_encoder400.insertDebugMarker("mymarker");
    {
        await buffer002.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer002.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer002.unmap();
        console.log(new Float32Array(data));
    }
    device00.queue.writeBuffer(buffer002, 0, array7, 0, array7.length);
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    query002.destroy()
    query203.destroy()
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    
    command_encoder103.insertDebugMarker("mymarker");
    
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    compute_pass_encoder0020.insertDebugMarker("marker")
    command_encoder103.insertDebugMarker("mymarker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    query200.destroy()
    
    compute_pass_encoder0040.insertDebugMarker("marker")
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    render_bundle_encoder001.insertDebugMarker("marker");
    buffer002.destroy()
    query002.destroy()
    render_bundle_encoder301.pushDebugGroup("group_marker");
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
    buffer2010.destroy()
    command_encoder103.insertDebugMarker("mymarker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0014,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group002);
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    device00.queue.writeBuffer(buffer0012, 0, array3, 0, array3.length);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const array8 = new Float32Array([-1.0, -0.5, 0.0, 0.5, -0.75, -1.0, -1.0, -1.0, -0.75, 1.0, -0.25, -0.25, -0.5, 0.25, -0.5, -0.5, 0.5, 0.25, 0.25, 0.5, 0.25, -1.0, -0.75, -1.0, 1.0, -0.75, -0.25, -0.5, 0.5, -1.0, -0.5, -0.25, -0.25, 1.0, 0.75, -0.5, 0.25, -1.0, 0.5, -0.75, 1.0, -0.5, -0.75, 0.0, 0.75, 0.0, -0.25, -0.75, -0.5, 1.0, -0.5, 0.5, -0.5, -0.75, 0.0, 0.0, 0.0, 0.0, -0.75, -1.0, -1.0, 1.0, 0.75, 0.75, 0.5, 0.5, 0.0, 0.0, -1.0, -0.5, -1.0, -1.0, -0.75, 0.0, -0.75, -0.5, 0.0, 0.75, 1.0, 0.25, -0.25, 0.75, 0.25, -1.0, -0.25, -1.0, -0.25, 0.25, -0.25, -0.5, 0.5, -0.25, 0.75, -0.75, -0.5, 0.5, 0.25, -1.0, -1.0, -1.0, ]);
    device00.queue.writeBuffer(buffer0012, 0, array3, 0, array3.length);
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    buffer101.destroy()
    query004.destroy()
    query201.destroy()
    buffer400.destroy()
    compute_pass_encoder1040.insertDebugMarker("marker")
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    device10.queue.writeBuffer(buffer104, 0, array7, 0, array7.length);
    
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder200.popDebugGroup();
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer104, 0, array3, 0, array3.length);
    render_bundle_encoder400.insertDebugMarker("marker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    device00.pushErrorScope("internal");
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    buffer0013.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    
    command_encoder103.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer0012, 0, array4, 0, array4.length);
    command_encoder103.popDebugGroup()
    command_encoder400.popDebugGroup()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}