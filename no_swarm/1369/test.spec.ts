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
    const array0 = new Float32Array([0.0, 0.5, 1.0, 1.0, -0.75, -0.25, 0.0, 0.5, 0.25, 0.75, -0.5, -0.25, -1.0, 0.75, 0.75, -1.0, 0.25, -1.0, 0.75, -1.0, -0.5, 0.25, 1.0, 0.75, 0.75, -0.25, 0.25, -1.0, -1.0, -0.25, -1.0, 0.0, 0.5, 0.0, -0.5, -0.25, -0.75, -0.25, 1.0, 0.0, -0.75, 0.75, 0.0, -0.25, 0.5, -0.25, -0.75, -1.0, -0.25, 0.5, 0.75, 0.0, 0.5, 0.5, 1.0, 0.0, 0.0, 0.5, 0.0, 1.0, 0.25, 1.0, 0.0, 0.0, -0.25, -0.25, 1.0, 1.0, 0.25, 0.75, -0.5, 0.25, -0.5, -0.25, -0.5, 0.5, -1.0, -0.25, 0.0, -0.75, 0.75, -0.75, 0.25, -1.0, 0.75, 0.5, -1.0, -0.25, -0.5, -0.75, -0.25, -0.75, 0.5, 0.0, -1.0, -0.25, 0.5, 0.25, 0.75, 1.0, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
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
    device00.pushErrorScope("out-of-memory");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.destroy();
    
    const array1 = new Float32Array([-0.5, 0.75, 0.0, -1.0, 0.25, -1.0, 0.0, 0.75, 0.25, 0.5, -0.5, -0.75, 0.75, -0.75, -0.5, 0.5, -0.25, 0.25, 0.25, -0.5, 0.75, -0.75, 0.0, -1.0, -0.25, 0.25, -1.0, 1.0, 0.75, 0.0, 0.25, -0.25, 0.5, 0.0, -0.75, -1.0, 1.0, 1.0, -0.75, -0.75, -0.75, -0.75, -0.5, 0.25, 0.5, 1.0, 0.25, 0.25, 1.0, 0.25, 0.0, 0.75, 0.0, -0.5, 1.0, 0.5, 0.25, -0.25, -0.75, -0.25, -0.25, 1.0, 1.0, 0.25, -1.0, 0.5, 0.75, 0.75, 1.0, -1.0, 0.0, -0.25, 0.0, -0.75, 0.5, 0.0, 0.5, -0.75, -0.25, -0.5, 0.75, 1.0, 0.75, 0.0, -0.5, 0.25, 1.0, 0.5, 0.0, -0.75, 0.5, 0.5, 0.5, -0.25, -0.75, -0.25, 0.25, 0.75, -0.75, -0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array2 = new Float32Array([0.75, 0.0, -1.0, 0.0, -0.75, -0.25, -1.0, -0.5, 0.0, 0.0, 0.5, -0.75, 0.75, 0.75, -1.0, -0.25, 1.0, 1.0, -0.75, 0.25, -0.25, 1.0, -0.75, 0.0, 0.0, 0.0, -1.0, -0.5, -0.25, 1.0, 0.0, -0.25, -0.25, -0.75, -0.25, -0.75, 0.75, -0.25, -0.5, 0.75, 0.75, -0.25, 0.5, 0.25, 0.75, 0.25, 0.0, -1.0, 1.0, -0.75, 0.5, -0.25, 0.25, 0.25, -0.75, -1.0, 0.25, 1.0, 0.75, -1.0, 0.5, 1.0, -0.25, -0.25, 0.0, 0.5, 1.0, 0.0, -1.0, 1.0, -1.0, 0.5, -0.75, -0.75, 0.0, -0.25, -0.5, -0.25, -0.75, -0.5, -0.5, -0.5, 0.0, 1.0, -1.0, -1.0, 0.0, 0.0, 0.75, 0.0, 0.25, 0.5, -0.5, 0.0, 1.0, -0.25, 0.0, 0.0, 0.5, 0.5, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const array3 = new Float32Array([-0.25, 1.0, 0.0, 0.5, 0.5, -0.25, -0.25, -0.5, -0.25, -0.75, 0.25, 0.25, -0.5, 0.75, -1.0, -0.75, -1.0, -1.0, -0.75, 0.75, -1.0, 0.0, 0.5, -0.5, -0.5, 0.75, -0.5, 0.75, 0.5, 0.0, 0.5, 0.25, 0.25, 0.0, 0.25, 0.5, -0.5, -1.0, -0.75, -1.0, 0.25, 0.75, 0.5, 1.0, -0.25, 0.0, -0.5, 0.0, 0.0, -0.5, 0.25, 0.5, 0.75, 0.25, 0.25, -0.75, 0.5, -0.75, 0.0, 0.75, 0.75, -0.75, 0.5, -0.5, -0.75, 0.75, 0.5, -1.0, -0.25, 0.25, 0.75, -0.5, 0.25, 0.25, -1.0, 0.5, -0.5, 1.0, 0.0, 0.5, -0.75, -0.25, 0.25, 0.0, 0.0, -0.5, -0.25, 0.75, 0.5, 0.75, 1.0, 0.75, 0.75, 1.0, 0.5, 0.75, -0.25, -0.75, 0.25, 0.5, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
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
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device20.destroy();
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_bundle_encoder300.popDebugGroup();
    render_bundle_encoder300.insertDebugMarker("marker");
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
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
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    command_encoder300.pushDebugGroup("mygroupmarker")
    command_encoder300.insertDebugMarker("mymarker");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    query300.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    device10.destroy();
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    query300.destroy()
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    
    
    {
        await buffer000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer000.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    
    render_bundle_encoder300.popDebugGroup();
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    const array4 = new Float32Array([-0.5, -0.5, 0.5, 0.5, -0.75, -0.25, -1.0, -1.0, -1.0, 1.0, 0.25, 1.0, -0.5, 0.75, 1.0, 0.75, 0.0, 1.0, 1.0, -0.5, -0.25, 0.5, 0.5, 1.0, 1.0, -0.75, 0.0, 0.0, 0.5, -0.5, -0.75, -0.5, -0.75, -0.25, -0.5, -1.0, 0.75, -1.0, 0.75, -0.25, -0.5, -0.75, 0.0, 0.75, 0.0, 1.0, -1.0, -0.75, 0.75, -0.5, -1.0, -0.75, 1.0, 0.75, 0.5, 0.0, 0.25, 0.0, 1.0, 0.25, 0.5, -0.5, 0.25, 0.25, 0.75, 1.0, -1.0, 1.0, 0.0, 0.5, -0.25, 0.0, -0.75, 0.0, 0.75, 0.0, 1.0, 0.5, 0.5, 0.75, -1.0, 0.75, -0.5, -0.5, 0.75, -0.5, 0.0, 0.5, -0.75, 0.75, 1.0, -0.25, -0.25, -1.0, 0.5, 1.0, -1.0, 0.25, 0.5, 0.25, ]);
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query300.destroy()
    command_encoder301.pushDebugGroup("mygroupmarker")
    command_encoder301.insertDebugMarker("mymarker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    
    const command_buffer303 = command_encoder303.finish();
    
    render_bundle_encoder302.insertDebugMarker("marker");
    compute_pass_encoder3000.popDebugGroup()
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    device10.pushErrorScope("out-of-memory");
    buffer300.destroy()
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_bundle_encoder301.popDebugGroup();
    
    render_bundle_encoder200.insertDebugMarker("marker");
    texture300.destroy();
    const array5 = new Float32Array([-0.5, -0.5, -1.0, -0.75, -0.75, -0.75, -1.0, 1.0, -1.0, 0.25, 0.5, 1.0, -0.75, 0.75, 0.75, 0.25, 0.5, -0.5, 0.0, -0.5, 0.25, -0.5, -0.25, -0.25, 0.5, 0.5, -0.75, -0.25, -0.75, 0.0, -0.5, 0.5, 1.0, -1.0, 0.5, -0.25, 0.5, -0.75, -0.25, -0.5, -0.25, -1.0, 0.75, -0.25, 0.0, 0.75, -0.75, -0.25, 0.75, -1.0, -0.75, 1.0, 0.5, 0.5, -0.75, -0.5, 0.75, 0.25, -0.5, -1.0, 0.0, 0.5, -1.0, 0.75, 0.75, -0.25, 0.0, 0.75, 1.0, -0.5, -1.0, -0.25, 0.75, 0.75, 0.75, 0.5, 0.0, 0.5, -0.25, -0.75, 0.25, 0.25, 0.5, -1.0, -1.0, -0.75, 0.5, 1.0, 0.75, 1.0, 0.75, -1.0, -0.75, -1.0, -0.25, 0.75, -0.25, -0.25, 1.0, -0.5, ]);
    command_encoder300.popDebugGroup()
    
    
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const array6 = new Float32Array([0.75, 1.0, 0.75, -0.5, 0.0, 0.25, -0.75, 0.75, -1.0, 0.75, 0.75, 0.25, 0.75, 0.5, -1.0, 0.0, 0.5, -1.0, 1.0, 0.0, -0.75, 0.0, 0.5, -1.0, 0.5, 1.0, -0.5, 0.5, 0.5, 0.5, 1.0, 1.0, -0.5, -0.75, 0.25, -0.75, -0.75, 0.5, -0.5, 0.25, 0.75, 0.5, 0.5, -0.75, -0.25, 1.0, -0.5, -0.5, 0.5, -0.5, 0.25, -1.0, 1.0, -0.5, -0.25, 1.0, -0.75, 0.25, -0.75, -0.75, 0.25, -0.25, 0.5, 0.25, -0.75, -0.5, 0.25, -0.75, 1.0, -0.25, -0.75, 0.75, -1.0, 0.25, -0.25, -0.75, 0.25, 0.5, -0.5, 0.0, 0.75, 0.5, 0.75, -0.5, -0.75, 0.0, 0.75, -1.0, -0.25, 0.25, 0.0, 0.25, 0.25, 0.0, -0.5, 1.0, 0.5, 0.5, 0.75, 0.0, ]);
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device30.pushErrorScope("out-of-memory");
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    const command_buffer304 = command_encoder304.finish();
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    command_encoder305.copyTextureToTexture(
        {
            texture: texture301
        },
        {
            texture: texture301
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder301.insertDebugMarker("mymarker");
    
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    
    
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pass_encoder3050 = command_encoder305.beginComputePass({ label: "compute_pass_encoder3050" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
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
    render_bundle_encoder300.pushDebugGroup("group_marker");
    texture301.destroy();
    
    query301.destroy()
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    const array7 = new Float32Array([0.75, 0.0, -0.25, 1.0, 0.75, 1.0, 0.0, -0.75, -0.75, 0.5, 0.0, 0.25, -0.5, -0.5, 0.75, -0.75, 0.5, -0.5, -0.75, -1.0, -0.5, -0.25, -0.5, 0.0, 1.0, -0.25, 0.25, 0.75, 0.5, -0.25, -0.75, -0.25, -0.75, 0.0, 0.25, 1.0, -0.5, 1.0, 1.0, 0.5, 0.25, -1.0, 0.0, -0.25, -1.0, 0.5, 0.75, -0.25, 0.75, -0.75, -0.25, 0.75, 1.0, 0.75, 1.0, 0.25, 0.75, 1.0, -0.25, -1.0, -0.25, -0.25, 1.0, -0.5, -1.0, -0.75, -0.75, 0.0, 0.5, 1.0, -0.5, -0.25, 0.25, 0.25, -1.0, 0.75, -0.25, -1.0, -0.5, 1.0, -1.0, -0.75, 0.25, -0.5, 0.5, -0.25, 0.75, -0.25, -0.25, -0.75, 1.0, 0.75, 0.75, 0.5, -0.25, 0.0, -0.75, 0.0, 0.5, -1.0, ]);
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    query302.destroy()
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query300.destroy()
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_bundle_encoder301.popDebugGroup();
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    query303.destroy()
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder301.setPipeline(render_pipeline300);
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder302.setPipeline(render_pipeline300);
    buffer301.destroy()
    device30.pushErrorScope("internal");
    
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder3020.popDebugGroup()
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    query301.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder301.popDebugGroup();
    
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    
    render_bundle_encoder302.insertDebugMarker("marker");
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    device20.queue.writeTexture({ texture: texture200 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);
    
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    query303.destroy()
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

    render_bundle_encoder301.setBindGroup(0, bind_group300);
    
    query301.destroy()
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_bundle_encoder302.popDebugGroup();
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    device50.pushErrorScope("internal");
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    query303.destroy()
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    command_encoder301.resolveQuerySet(
        query305,
        0,
        32,
        buffer302,
        0
    )
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    device30.pushErrorScope("validation");
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder4000.insertDebugMarker("marker")
    buffer303.destroy()
    buffer302.destroy()
    
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    compute_pass_encoder3020.insertDebugMarker("marker")
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    
    
    
    const query307 = device30.createQuerySet({
        label: "query307",
        type: "occlusion",
        count: 32,
    });
    
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query303.destroy()
    render_bundle_encoder302.insertDebugMarker("marker");
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
    compute_pass_encoder3010.popDebugGroup()
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder3020.popDebugGroup()
    query302.destroy()
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    
    query302.destroy()
    
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    query300.destroy()
    
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query300
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    query302.destroy()
    render_bundle_encoder300.popDebugGroup();
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query300.destroy()
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
    render_pass_encoder3020.pushDebugGroup("group_marker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    query303.destroy()
    command_encoder306.resolveQuerySet(
        query306,
        0,
        32,
        buffer302,
        0
    )
    
    const render_pass_encoder3060 = command_encoder306.beginRenderPass({
        label: "render_pass_encoder3060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3021,
            },
        ],
        occlusionQuerySet: query307
    });
    
    render_pass_encoder3060.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    command_encoder306.resolveQuerySet(
        query303,
        0,
        32,
        buffer303,
        0
    )
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query400.destroy()
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
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
    
    query306.destroy()
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    compute_pass_encoder3050.setPipeline(compute_pipeline300);
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
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

    render_bundle_encoder302.setBindGroup(0, bind_group301);
    texture400.destroy();
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    device30.queue.writeTexture({ texture: texture302 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer500.destroy()
    device50.queue.writeTexture({ texture: texture501 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
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
    render_pass_encoder3020.insertDebugMarker("marker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    render_pass_encoder3060.pushDebugGroup("group_marker");
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    device30.queue.writeTexture({ texture: texture302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
        occlusionQuerySet: query301
    });
    compute_pass_encoder3020.setPipeline(compute_pipeline300);
    render_pass_encoder3000.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    render_pass_encoder3020.popDebugGroup();
    
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
    
    render_pass_encoder3020.insertDebugMarker("marker");
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder3000.executeBundles([])
    render_pass_encoder3000.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    const texture_view5002 = texture500.createView({ label: "texture_view5002" });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    render_bundle_encoder302.insertDebugMarker("marker");
    query304.destroy()
    query306.destroy()
    device50.queue.writeTexture({ texture: texture501 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_pass_encoder3020.setPipeline(render_pipeline300);
    render_pass_encoder3020.insertDebugMarker("marker");
    query301.destroy()
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    render_pass_encoder3060.setPipeline(render_pipeline302);
    
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
    const texture_view5011 = texture501.createView({ label: "texture_view5011" });
    compute_pass_encoder5000.insertDebugMarker("marker")
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
        layout: render_pipeline302.getBindGroupLayout(0),
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

    render_pass_encoder3060.setBindGroup(0, bind_group302);
    
    render_pass_encoder3000.executeBundles([])
    render_bundle_encoder300.setPipeline(render_pipeline301);
    const texture_view5003 = texture500.createView({ label: "texture_view5003" });
    compute_pass_encoder3020.insertDebugMarker("marker")
    render_pass_encoder3060.insertDebugMarker("marker");
    
    const render_pass_encoder3001 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3021,
            },
        ],
        occlusionQuerySet: query305
    });
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    query305.destroy()
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    compute_pass_encoder3050.pushDebugGroup("group_marker")
    compute_pass_encoder4000.popDebugGroup()
    
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    render_pass_encoder3020.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    render_pass_encoder3000.pushDebugGroup("group_marker");
    render_pass_encoder3000.executeBundles([])
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder4000.popDebugGroup()
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3021,
            },
        ],
        occlusionQuerySet: query306
    });
    
    device30.queue.writeBuffer(buffer308, 0, array1, 0, array1.length);
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    device30.queue.submit([command_buffer303, command_buffer304, ]);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query308 = device30.createQuerySet({
        label: "query308",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3001.setStencilReference(1);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3010.setStencilReference(1);
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query302.destroy()
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_pass_encoder3001.setPipeline(render_pipeline302);
    render_pass_encoder3010.setPipeline(render_pipeline301);
    compute_pass_encoder3020.popDebugGroup()
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const texture_view5012 = texture501.createView({ label: "texture_view5012" });
    buffer501.destroy()
    texture501.destroy();
    device30.queue.writeTexture({ texture: texture302 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
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
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    
    device60.destroy();
    texture401.destroy();
    
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    render_pass_encoder3060.popDebugGroup();
    command_encoder401.pushDebugGroup("mygroupmarker")
    compute_pass_encoder3000.setPipeline(compute_pipeline301);
    compute_pass_encoder3010.setPipeline(compute_pipeline302);
    buffer304.destroy()
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device30.queue.writeBuffer(buffer308, 0, array6, 0, array6.length);
    texture302.destroy();
    device30.queue.writeBuffer(buffer308, 0, array2, 0, array2.length);
    const render_pass_encoder3050 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query303
    });
    query401.destroy()
    
    command_encoder302.resolveQuerySet(
        query304,
        0,
        32,
        buffer304,
        0
    )
    device30.queue.writeBuffer(buffer308, 0, array7, 0, array7.length);
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    
    
    device30.queue.writeBuffer(buffer308, 0, array3, 0, array3.length);
    query305.destroy()
    query401.destroy()
    device50.queue.writeBuffer(buffer502, 0, array1, 0, array1.length);
    render_pass_encoder3020.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    command_encoder500.insertDebugMarker("mymarker");
    render_pass_encoder3010.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder3050.executeBundles([])
    render_pass_encoder3010.pushDebugGroup("group_marker");
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
        vertex: {
            module: shader_module505,
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
            module: shader_module505,
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
    query500.destroy()
    render_pass_encoder3050.setPipeline(render_pipeline300);
    render_pass_encoder3000.pushDebugGroup("group_marker");
    command_encoder302.resolveQuerySet(
        query308,
        0,
        32,
        buffer300,
        0
    )
    device30.pushErrorScope("validation");
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device50.queue.writeTexture({ texture: texture502 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    buffer305.destroy()
    query500.destroy()
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

    compute_pass_encoder3050.setBindGroup(0, bind_group303);
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder306.copyTextureToBuffer(
        {
            texture: texture301
        },
        {
            buffer: buffer304
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device30.queue.writeBuffer(buffer309, 0, array3, 0, array3.length);
    
    
    query308.destroy()
    device50.queue.writeTexture({ texture: texture502 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture502 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.setVertexBuffer(0, buffer3010);
    render_pass_encoder3000.setPipeline(render_pipeline300);
    
    device50.queue.writeBuffer(buffer502, 0, array6, 0, array6.length);
    
    render_pass_encoder3020.popDebugGroup();
    buffer306.destroy()
    render_pass_encoder3001.setStencilReference(1);
    render_pass_encoder3050.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    
    
    const render_pass_encoder3011 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query303
    });
    device50.queue.writeTexture({ texture: texture502 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeBuffer(buffer502, 0, array5, 0, array5.length);
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device50.queue.writeTexture({ texture: texture502 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    device50.queue.writeTexture({ texture: texture502 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
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
                    buffer: buffer3011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3012,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group304);
    device50.queue.writeBuffer(buffer502, 0, array1, 0, array1.length);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeBuffer(buffer502, 0, array5, 0, array5.length);
    
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3014,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group305);
    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
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
                    buffer: buffer3015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3016,
                },
            },
        ],
    });

    render_pass_encoder3020.setBindGroup(0, bind_group306);
    render_pass_encoder3011.setPipeline(render_pipeline301);
    command_encoder401.popDebugGroup()
    render_pass_encoder3000.endOcclusionQuery()
    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3018,
                },
            },
        ],
    });

    render_pass_encoder3000.setBindGroup(0, bind_group307);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_3050 = new Uint32Array(3);

    uint32_3050[0] = 100;
    uint32_3050[1] = 1;
    uint32_3050[2] = 1;

    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3019, 0, uint32_3050, 0, uint32_3050.length);

    compute_pass_encoder3050.dispatchWorkgroupsIndirect(buffer3019, 0);
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
    
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3010.setBindGroup(0, bind_group308);
    render_pass_encoder3000.setVertexBuffer(0, buffer3011);
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
    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3025 = device30.createBuffer({
        label: "buffer3025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group3010 = device30.createBindGroup({
        label: "bind_group3010",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3025,
                },
            },
        ],
    });

    render_pass_encoder3001.setBindGroup(0, bind_group3010);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder3000.drawIndirect(buffer309, 0);
    render_pass_encoder3001.setVertexBuffer(0, buffer3021);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3026 = device30.createBuffer({
        label: "buffer3026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3026, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3026, 0);
    render_pass_encoder3060.setVertexBuffer(0, buffer305);
    render_pass_encoder3060.drawIndirect(buffer303, 0);
    render_pass_encoder3001.drawIndirect(buffer3019, 0);
    const buffer3027 = device30.createBuffer({
        label: "buffer3027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3028 = device30.createBuffer({
        label: "buffer3028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group3011 = device30.createBindGroup({
        label: "bind_group3011",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3028,
                },
            },
        ],
    });

    render_pass_encoder3011.setBindGroup(0, bind_group3011);
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder3001.drawIndirect(buffer3013, 0);
    render_pass_encoder3001.setIndexBuffer(buffer3011, "uint16");
    compute_pass_encoder4000.setPipeline(compute_pipeline400);
    render_pass_encoder3001.end();
    render_pass_encoder3010.setVertexBuffer(0, buffer3021);
    render_pass_encoder3010.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder3010.setIndexBuffer(buffer3020, "uint16");
    render_pass_encoder3011.setVertexBuffer(0, buffer3012);
    render_pass_encoder3010.drawIndexedIndirect(buffer3019, 0);
    compute_pass_encoder3050.popDebugGroup()
    const command_buffer401 = command_encoder401.finish();
    render_pass_encoder3001.setIndexBuffer(buffer3015, "uint16");
    render_pass_encoder3011.drawIndirect(buffer302, 0);
    compute_pass_encoder5000.setPipeline(compute_pipeline501);
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer503,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer504,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group500);
    render_pass_encoder3011.setIndexBuffer(buffer3027, "uint16");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.submit([command_buffer303, command_buffer304, ]);
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer505, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer505, 0);
    render_pass_encoder3060.setIndexBuffer(buffer3015, "uint16");
    const buffer3029 = device30.createBuffer({
        label: "buffer3029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3030 = device30.createBuffer({
        label: "buffer3030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group3012 = device30.createBindGroup({
        label: "bind_group3012",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3030,
                },
            },
        ],
    });

    render_pass_encoder3050.setBindGroup(0, bind_group3012);
    render_pass_encoder3050.setVertexBuffer(0, buffer300);
    render_pass_encoder3000.end();
    render_pass_encoder3000.drawIndirect(buffer3026, 0);
    render_pass_encoder3011.end();
    render_pass_encoder3050.setIndexBuffer(buffer3017, "uint16");
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder3050.drawIndexedIndirect(buffer3029, 0);
    render_pass_encoder3020.setVertexBuffer(0, buffer3029);
    compute_pass_encoder3020.end();
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3060.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder3060.drawIndirect(buffer3016, 0);
    render_pass_encoder3020.drawIndirect(buffer300, 0);
    compute_pass_encoder5000.end();
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3031 = device30.createBuffer({
        label: "buffer3031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3031, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3031, 0);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    render_pass_encoder3020.endOcclusionQuery()
    compute_pass_encoder3010.end();
    render_pass_encoder3060.end();
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
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4000.setBindGroup(0, bind_group400);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder3060.popDebugGroup();
    compute_pass_encoder3000.end();
    render_pass_encoder3000.drawIndirect(buffer3022, 0);
    render_pass_encoder3020.setIndexBuffer(buffer3020, "uint16");
    render_pass_encoder3010.popDebugGroup();
    const buffer3032 = device30.createBuffer({
        label: "buffer3032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3033 = device30.createBuffer({
        label: "buffer3033",
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
                    buffer: buffer3032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3033,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3013);
    render_pass_encoder3010.end();
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder3060.drawIndexed(3);
    render_pass_encoder3050.drawIndexedIndirect(buffer3026, 0);
    command_encoder301.popDebugGroup()
    const command_buffer301 = command_encoder301.finish();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3060.drawIndexedIndirect(buffer3032, 0);
    compute_pass_encoder3050.popDebugGroup()
    compute_pass_encoder3050.end();
    render_pass_encoder3020.end();
    render_pass_encoder3020.drawIndexedIndirect(buffer3019, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3031, 0);
    const command_buffer302 = command_encoder302.finish();
    compute_pass_encoder3020.end();
    render_pass_encoder3050.end();
    render_pass_encoder3050.popDebugGroup();
    compute_pass_encoder3050.end();
    compute_pass_encoder3000.popDebugGroup()
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
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder3010.drawIndexedIndirect(buffer3025, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder3011.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder3011.drawIndirect(buffer3031, 0);
    const command_buffer306 = command_encoder306.finish();
    const buffer3034 = device30.createBuffer({
        label: "buffer3034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3035 = device30.createBuffer({
        label: "buffer3035",
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
                    buffer: buffer3034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3035,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3014);
    render_pass_encoder3001.drawIndirect(buffer3019, 0);
    compute_pass_encoder3020.end();
    render_pass_encoder3050.popDebugGroup();
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    const command_buffer300 = command_encoder300.finish();
    device30.queue.submit([command_buffer306, ]);
    compute_pass_encoder4000.end();
    render_pass_encoder3060.drawIndirect(buffer3019, 0);
    const command_buffer305 = command_encoder305.finish();
    compute_pass_encoder5000.dispatchWorkgroups(100);
    render_pass_encoder3000.end();
    compute_pass_encoder3020.end();
    render_pass_encoder3010.drawIndirect(buffer305, 0);
    device30.queue.submit([command_buffer305, ]);
    render_pass_encoder3001.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder3020.drawIndexedIndirect(buffer3033, 0);
    render_pass_encoder3011.drawIndirect(buffer3023, 0);
    render_pass_encoder3001.end();
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3000.drawIndirect(buffer3011, 0);
    compute_pass_encoder5000.end();
    render_pass_encoder3060.drawIndirect(buffer3016, 0);
    render_pass_encoder3060.setIndexBuffer(buffer3016, "uint16");
    render_pass_encoder3060.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder3060.popDebugGroup();
    render_pass_encoder3011.drawIndirect(buffer3019, 0);
    render_pass_encoder3011.drawIndirect(buffer3018, 0);
    device40.queue.submit([]);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer404, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer404, 0);
    render_pass_encoder3011.setIndexBuffer(buffer3030, "uint16");
    render_pass_encoder3050.popDebugGroup();
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder3000.drawIndirect(buffer3031, 0);
    render_pass_encoder3020.drawIndirect(buffer3016, 0);
    const uint32_3050 = new Uint32Array(3);

    uint32_3050[0] = 100;
    uint32_3050[1] = 1;
    uint32_3050[2] = 1;

    const buffer3036 = device30.createBuffer({
        label: "buffer3036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3036, 0, uint32_3050, 0, uint32_3050.length);

    compute_pass_encoder3050.dispatchWorkgroupsIndirect(buffer3036, 0);
}