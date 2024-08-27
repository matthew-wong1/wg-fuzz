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
    
    const array0 = new Float32Array([0.25, -0.25, 0.5, -0.25, -0.5, 0.75, -1.0, -0.75, 0.75, -1.0, 0.0, -0.5, -0.5, 0.25, -0.25, 0.25, 0.0, 0.0, -1.0, 1.0, -0.75, 0.25, 0.25, 1.0, 1.0, 0.5, 0.0, 0.75, -0.75, 1.0, -0.25, 0.25, 0.0, -1.0, -1.0, 0.25, -1.0, -0.75, -0.75, -0.75, 0.75, 0.25, 0.25, 0.5, 0.75, -0.25, 0.5, 0.75, 0.5, 0.25, 0.75, -0.25, 0.5, 0.25, -0.75, -0.5, -0.75, 0.75, 0.75, -0.75, -0.25, 1.0, 0.75, 0.0, 0.25, -0.5, -0.75, 0.0, -0.25, 0.25, 1.0, -0.5, -1.0, -0.75, -1.0, -0.5, -0.25, -0.25, 0.0, -0.25, 0.25, -1.0, -0.25, 0.75, 0.25, 0.25, 0.25, 0.75, 0.75, 0.25, -0.5, -0.25, -1.0, -0.5, -0.25, -0.25, -0.5, -0.75, -0.75, -0.75, ]);
    const array1 = new Float32Array([0.0, -1.0, 0.75, -0.5, 0.5, 0.75, 0.25, 0.25, 1.0, 0.75, -0.75, 0.75, -0.5, -1.0, 0.75, -1.0, 0.75, 0.25, 1.0, -1.0, -0.75, -0.75, -0.75, 0.75, 0.0, -0.75, -1.0, -0.75, 1.0, 0.25, -0.25, 1.0, -0.25, -0.25, 0.5, -0.25, 0.5, -0.25, 1.0, 0.25, -0.5, -0.25, -0.75, -1.0, -0.25, -0.25, -0.75, 0.75, -0.25, 1.0, -1.0, 1.0, -0.5, -1.0, -0.25, -0.25, -0.75, 0.0, -0.75, -0.25, 1.0, 0.75, 0.5, -0.25, 0.5, 0.0, 0.75, 0.0, -0.5, -1.0, -0.75, 0.5, 0.75, 1.0, -0.5, 0.25, 0.25, 1.0, 0.5, 0.25, 0.75, -0.75, 0.75, -1.0, 1.0, 0.0, 0.25, 1.0, -0.25, -0.5, -0.5, 0.5, -0.5, 0.0, -0.25, 0.5, 0.5, -0.5, 0.0, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array2 = new Float32Array([0.0, 0.0, 0.5, -1.0, 0.5, 1.0, -0.25, -0.5, 0.75, -1.0, -0.25, -1.0, -0.5, 0.25, 0.75, -0.75, 1.0, -0.75, -1.0, -0.25, -0.5, 0.25, -0.75, 0.75, -0.25, 0.75, -0.5, -1.0, 1.0, 0.75, -0.25, -0.25, 1.0, -0.5, 0.25, 0.5, -0.5, 0.0, -0.5, -1.0, 0.5, 0.0, 1.0, 1.0, 1.0, 0.5, 0.75, -1.0, 0.25, -0.5, 0.75, -1.0, -0.5, 0.25, -0.75, -0.5, 0.75, 0.0, 1.0, -0.25, -0.75, -1.0, 0.75, 0.0, 0.5, -0.5, 0.75, -0.75, -1.0, 0.75, 1.0, 0.0, 0.5, 0.75, -0.25, 1.0, 0.5, 0.75, -0.25, -0.5, 0.75, 0.75, 1.0, -0.75, 0.75, -0.5, 0.75, -0.25, 0.75, -1.0, -0.25, 0.0, 1.0, -0.25, 1.0, -1.0, 0.75, -1.0, -0.5, -0.75, ]);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.pushErrorScope("internal");
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const command_buffer001 = command_encoder001.finish();
    
    
    
    device00.queue.submit([command_buffer001, ]);
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
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
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    command_encoder000.insertDebugMarker("mymarker");
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
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    query001.destroy()
    const array3 = new Float32Array([-0.25, 0.75, 1.0, 0.25, -0.5, -0.5, 0.0, 0.75, -1.0, 0.75, 0.5, 0.75, -1.0, 0.0, -0.75, 0.5, 0.0, -0.25, -0.25, 0.5, 0.75, 0.75, -0.25, 0.5, 0.25, -0.5, -0.75, -1.0, 0.25, 1.0, 0.0, 0.5, 0.0, -1.0, -0.75, -0.5, 0.25, 0.25, -1.0, -1.0, 1.0, 0.25, -0.75, -0.75, 0.5, 1.0, -0.25, 0.75, 1.0, -0.25, 0.25, -0.5, 1.0, -0.75, -0.5, 0.0, 0.0, 1.0, -0.5, -0.5, -0.75, 0.0, 0.0, 0.5, 0.0, -0.75, 0.75, 0.5, -0.75, 0.0, -0.5, -0.25, 0.0, 0.0, 0.25, 1.0, 0.5, 0.0, 0.25, 0.5, -0.25, -0.5, -0.5, 1.0, 0.0, 0.0, 0.5, 0.0, -0.75, -1.0, 0.0, -0.25, 0.0, -0.5, 0.0, -1.0, 0.25, -0.25, 0.75, 1.0, ]);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    command_encoder000.pushDebugGroup("mygroupmarker")
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
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
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    query001.destroy()
    device10.pushErrorScope("out-of-memory");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_bundle_encoder000.popDebugGroup();
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_buffer002 = command_encoder002.finish();
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder003.pushDebugGroup("mygroupmarker")
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    command_encoder100.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    query001.destroy()
    
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
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    command_encoder000.popDebugGroup()
    command_encoder101.clearBuffer(buffer100);
    const array4 = new Float32Array([0.75, 0.0, 0.75, 0.0, 0.75, -0.25, 0.0, 1.0, -1.0, -0.5, -0.75, 1.0, -1.0, 0.0, 1.0, 0.25, -0.75, 0.5, 0.25, 0.75, 0.25, 1.0, -0.25, 1.0, -0.5, 0.25, -1.0, 0.75, 0.5, -0.75, 0.5, 0.25, 1.0, -1.0, -0.5, -0.75, -0.5, -1.0, 0.0, 0.0, 1.0, 1.0, -1.0, 0.75, 0.0, -0.5, -0.5, 0.75, 0.25, 0.25, 1.0, 0.0, -1.0, -0.25, 0.0, 0.75, -0.5, -0.25, 0.5, 0.75, -1.0, 0.0, 0.5, 0.25, 1.0, -0.75, 1.0, 0.25, 0.25, 0.25, -0.75, 0.5, 0.0, 1.0, 0.75, -0.25, 0.5, -1.0, 0.25, -0.25, -0.5, -1.0, -1.0, -0.25, -0.75, 0.0, -0.75, -0.25, 0.75, 0.0, 0.0, 0.0, 0.0, 0.0, 0.75, -0.25, 0.5, -0.5, -0.5, 0.0, ]);
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
    
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder101.clearBuffer(buffer100);
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    command_encoder101.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    command_encoder003.insertDebugMarker("mymarker");
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    query001.destroy()
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    command_encoder101.insertDebugMarker("mymarker");
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query000.destroy()
    query101.destroy()
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    const array5 = new Float32Array([0.0, -1.0, 0.25, 0.5, 0.5, -0.25, 0.25, 0.5, -0.25, 0.0, -0.25, -0.5, 0.5, 0.5, -0.75, 0.0, -0.75, -1.0, -1.0, 0.75, -1.0, -0.75, 0.0, -1.0, -1.0, 0.75, -1.0, 0.25, 0.75, 0.75, 0.0, -0.5, -1.0, 0.25, -1.0, 0.75, -1.0, 0.25, 0.5, -0.75, 0.0, 1.0, 1.0, 0.25, -0.5, 0.75, -0.75, 0.25, -0.75, 1.0, -0.75, 0.25, -0.75, 0.25, 0.0, 0.5, 0.5, -1.0, -0.75, 0.25, 1.0, -1.0, -0.5, -0.5, 0.25, -0.75, 0.75, -0.75, -0.75, 0.5, 0.5, 0.75, 0.0, 1.0, 1.0, -0.25, 0.25, -0.25, 1.0, 0.0, 0.0, 0.5, 0.0, 0.5, 0.25, -0.75, 0.25, 0.0, -0.25, 1.0, -0.75, 0.5, 0.75, -1.0, 1.0, -0.25, -0.25, 0.75, -1.0, 0.25, ]);
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    command_encoder101.clearBuffer(buffer102);
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    
    command_encoder100.insertDebugMarker("mymarker");
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device00.queue.submit([command_buffer001, ]);
    
    query001.destroy()
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
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    buffer103.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    {
        await buffer101.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer101.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer101.unmap();
        console.log(new Float32Array(data));
    }
    
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    query001.destroy()
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder100.setPipeline(render_pipeline100);
    command_encoder100.popDebugGroup()
    
    
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    render_bundle_encoder100.popDebugGroup();
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder100.clearBuffer(buffer100);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
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
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    
    command_encoder101.popDebugGroup()
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder002.popDebugGroup();
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    query101.destroy()
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    render_bundle_encoder002.insertDebugMarker("marker");
    const command_buffer005 = command_encoder005.finish();
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder101.setPipeline(render_pipeline100);
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer105 = device10.createBuffer({
        label: "buffer105",
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
                    buffer: buffer104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer105,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    device10.pushErrorScope("internal");
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    command_encoder004.insertDebugMarker("mymarker");
    
    render_bundle_encoder102.setPipeline(render_pipeline100);
    command_encoder000.popDebugGroup()
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
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    command_encoder004.pushDebugGroup("mygroupmarker")
    command_encoder102.clearBuffer(buffer100);
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    command_encoder003.insertDebugMarker("mymarker");
    buffer102.destroy()
    
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    command_encoder101.clearBuffer(buffer102);
    buffer101.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    device00.queue.submit([]);
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer107 = device10.createBuffer({
        label: "buffer107",
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
                    buffer: buffer106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer107,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group101);
    render_bundle_encoder001.setPipeline(render_pipeline001);
    
    device10.queue.writeBuffer(buffer106, 0, array3, 0, array3.length);
    query001.destroy()
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    command_encoder100.pushDebugGroup("mygroupmarker")
    render_bundle_encoder102.insertDebugMarker("marker");
    buffer104.destroy()
    
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    
    
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer109 = device10.createBuffer({
        label: "buffer109",
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
                    buffer: buffer108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer109,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group102);
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    command_encoder000.insertDebugMarker("mymarker");
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    
    command_encoder102.copyBufferToBuffer(
        buffer104,
        0,
        buffer100,
        0,
        400
    );
    render_bundle_encoder000.setPipeline(render_pipeline001);
    buffer104.destroy()
    command_encoder102.copyBufferToBuffer(
        buffer103,
        0,
        buffer100,
        0,
        400
    );
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    command_encoder102.copyBufferToBuffer(
        buffer104,
        0,
        buffer100,
        0,
        400
    );
    
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    command_encoder100.copyBufferToBuffer(
        buffer108,
        0,
        buffer100,
        0,
        400
    );
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    command_encoder102.clearBuffer(buffer100);
    
    render_bundle_encoder000.popDebugGroup();
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001 = device00.createBuffer({
        label: "buffer001",
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
                    buffer: buffer000,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
        buffer102,
        0
    )
    buffer105.destroy()
    
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    buffer109.destroy()
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device00.queue.submit([command_buffer005, ]);
    
    command_encoder003.clearBuffer(buffer000);
    render_bundle_encoder002.setPipeline(render_pipeline000);
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer103,
        0
    )
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    
    buffer100.destroy()
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer002,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer003,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    command_encoder003.popDebugGroup()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_bundle_encoder100.setVertexBuffer(0, buffer102);
    
    
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
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    render_bundle_encoder100.drawIndirect(buffer108, 0);
    render_bundle_encoder000.setVertexBuffer(0, buffer000);
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    buffer102.destroy()
    device30.pushErrorScope("out-of-memory");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
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
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module008,
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
            module: shader_module008,
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
    command_encoder101.clearBuffer(buffer100);
    render_bundle_encoder102.setVertexBuffer(0, buffer105);
    render_bundle_encoder000.setIndexBuffer(buffer003, "uint16");
    query004.destroy()
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder101.popDebugGroup()
    
    
    command_encoder300.pushDebugGroup("mygroupmarker")
    command_encoder003.insertDebugMarker("mymarker");
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    
    command_encoder000.copyBufferToBuffer(
        buffer003,
        0,
        buffer002,
        0,
        400
    );
    buffer107.destroy()
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
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
    const command_buffer102 = command_encoder102.finish();
    query000.destroy()
    
    
    command_encoder300.insertDebugMarker("mymarker");
    
    
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer109,
        0
    )
    command_encoder004.popDebugGroup()
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    
    
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
        vertex: {
            module: shader_module008,
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
            module: shader_module008,
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
    command_encoder004.clearBuffer(buffer005);
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    device20.pushErrorScope("validation");
    
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    command_encoder100.popDebugGroup()
    render_bundle_encoder001.setVertexBuffer(0, buffer001);
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    
    command_encoder000.copyBufferToBuffer(
        buffer003,
        0,
        buffer000,
        0,
        400
    );
    
    command_encoder003.resolveQuerySet(
        query004,
        0,
        32,
        buffer003,
        0
    )
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
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    command_encoder003.pushDebugGroup("mygroupmarker")
    render_bundle_encoder001.insertDebugMarker("marker");
    command_encoder003.insertDebugMarker("mymarker");
    command_encoder000.insertDebugMarker("mymarker");
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    buffer104.destroy()
    command_encoder100.insertDebugMarker("mymarker");
    
    command_encoder004.pushDebugGroup("mygroupmarker")
    query004.destroy()
    buffer102.destroy()
    command_encoder006.clearBuffer(buffer005);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    buffer001.destroy()
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    buffer002.destroy()
    command_encoder003.clearBuffer(buffer002);
    query001.destroy()
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    command_encoder301.pushDebugGroup("mygroupmarker")
    
    
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    command_encoder101.copyBufferToBuffer(
        buffer1010,
        0,
        buffer100,
        0,
        400
    );
    render_bundle_encoder102.drawIndirect(buffer101, 0);
    command_encoder100.pushDebugGroup("mygroupmarker")
    command_encoder101.clearBuffer(buffer109);
    command_encoder006.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    command_encoder004.clearBuffer(buffer005);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
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
    query301.destroy()
    
    
    
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    command_encoder004.clearBuffer(buffer005);
    command_encoder000.copyBufferToBuffer(
        buffer004,
        0,
        buffer005,
        0,
        400
    );
    render_bundle_encoder101.insertDebugMarker("marker");
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    
    device10.queue.writeBuffer(buffer108, 0, array2, 0, array2.length);
    command_encoder006.copyBufferToBuffer(
        buffer004,
        0,
        buffer005,
        0,
        400
    );
    command_encoder006.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    
    command_encoder006.copyBufferToBuffer(
        buffer004,
        0,
        buffer005,
        0,
        400
    );
    const array6 = new Float32Array([0.25, -0.75, 0.0, 0.75, 0.25, 0.25, 0.5, -0.75, 0.5, 0.75, 0.25, -1.0, 0.75, -0.25, -0.75, 0.0, -1.0, -0.5, -0.25, -1.0, 1.0, -0.5, 1.0, -0.5, 1.0, -1.0, -0.75, -0.25, 0.5, -1.0, 0.0, -0.75, 0.5, 1.0, 0.25, 0.75, 0.25, 0.75, -0.5, -0.75, 1.0, -1.0, 0.5, 1.0, 0.75, 0.25, 0.0, -0.75, 0.75, 1.0, -0.25, 0.0, -0.25, 0.75, 0.5, 1.0, 0.25, 1.0, -1.0, -0.75, 0.5, -0.5, 1.0, -0.5, -0.5, -0.75, 0.5, 0.25, 0.5, 1.0, 1.0, -0.75, 0.25, -0.75, -0.75, -0.75, -0.75, 1.0, -0.75, 0.5, 0.25, -0.5, 0.0, 1.0, 0.0, 0.25, 0.75, 0.0, -0.75, -0.25, 0.25, 0.75, 0.25, 0.25, -1.0, 0.25, 0.75, -1.0, -0.25, 0.75, ]);
    command_encoder006.resolveQuerySet(
        query003,
        0,
        32,
        buffer005,
        0
    )
    query101.destroy()
    
    const array7 = new Float32Array([0.25, -0.25, 1.0, -1.0, -0.5, 0.0, 0.0, 1.0, -0.75, -0.75, -0.75, 0.25, -0.75, -0.75, 0.5, 1.0, -0.25, -0.75, 0.5, 0.25, 1.0, -0.75, -0.75, 0.75, 0.25, -0.5, 0.5, 0.75, 0.5, 0.5, 0.25, -0.5, 0.5, -1.0, -1.0, 0.25, 0.75, 0.25, 0.5, 0.5, -0.75, 0.75, -0.5, 0.25, -1.0, -0.5, -1.0, -0.75, -0.25, -1.0, 0.5, -0.25, -1.0, 1.0, 0.0, 0.75, 0.75, 0.0, -0.75, -0.5, 0.75, -1.0, 0.75, -0.5, -1.0, -0.5, -0.75, 0.25, -1.0, -0.5, -1.0, 0.25, -1.0, 0.0, 0.25, 1.0, 1.0, -0.75, -0.25, 0.75, 0.25, 0.0, 0.75, -1.0, -1.0, 0.25, -0.5, 0.25, -0.75, -0.25, -1.0, -0.75, 1.0, -0.75, 0.0, -0.25, 0.5, -0.75, 1.0, 0.5, ]);
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    command_encoder003.popDebugGroup()
    
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
    command_encoder301.insertDebugMarker("mymarker");
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer103,
        0
    )
    
    render_bundle_encoder001.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
    render_bundle_encoder001.popDebugGroup();
    command_encoder101.copyBufferToBuffer(
        buffer107,
        0,
        buffer102,
        0,
        400
    );
    command_encoder000.copyBufferToBuffer(
        buffer004,
        0,
        buffer005,
        0,
        400
    );
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    buffer108.destroy()
    
    const command_buffer003 = command_encoder003.finish();
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    buffer000.destroy()
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer006,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer007,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group002);
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    device00.queue.writeBuffer(buffer007, 0, array2, 0, array2.length);
    command_encoder301.popDebugGroup()
    command_encoder006.insertDebugMarker("mymarker");
    command_encoder100.copyBufferToBuffer(
        buffer106,
        0,
        buffer101,
        0,
        400
    );
    
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    device00.pushErrorScope("validation");
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    render_bundle_encoder102.insertDebugMarker("marker");
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    
    
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    command_encoder103.copyBufferToBuffer(
        buffer102,
        0,
        buffer106,
        0,
        400
    );
    render_bundle_encoder002.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer005, 0, array1, 0, array1.length);
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    command_encoder300.popDebugGroup()
    command_encoder006.resolveQuerySet(
        query003,
        0,
        32,
        buffer002,
        0
    )
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    command_encoder006.resolveQuerySet(
        query001,
        0,
        32,
        buffer006,
        0
    )
    command_encoder000.resolveQuerySet(
        query004,
        0,
        32,
        buffer005,
        0
    )
    const command_buffer101 = command_encoder101.finish();
    command_encoder000.copyBufferToBuffer(
        buffer004,
        0,
        buffer000,
        0,
        400
    );
    command_encoder200.clearBuffer(buffer200);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    command_encoder000.copyBufferToBuffer(
        buffer004,
        0,
        buffer005,
        0,
        400
    );
    command_encoder200.clearBuffer(buffer200);
    command_encoder006.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    command_encoder004.copyBufferToBuffer(
        buffer002,
        0,
        buffer005,
        0,
        400
    );
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const command_buffer103 = command_encoder103.finish();
    const command_buffer400 = command_encoder400.finish();
    const command_buffer000 = command_encoder000.finish();
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    const command_buffer300 = command_encoder300.finish();
    device10.queue.submit([command_buffer103, ]);
    device40.queue.submit([command_buffer400, ]);
    const command_buffer006 = command_encoder006.finish();
    command_encoder004.popDebugGroup()
    const command_buffer200 = command_encoder200.finish();
    const command_buffer301 = command_encoder301.finish();
    device00.queue.submit([command_buffer006, ]);
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    device10.queue.submit([command_buffer101, ]);
    device00.queue.submit([command_buffer005, ]);
    device10.queue.submit([]);
    device30.queue.submit([]);
    command_encoder100.popDebugGroup()
    const command_buffer004 = command_encoder004.finish();
    device40.queue.submit([command_buffer400, ]);
    const command_buffer100 = command_encoder100.finish();
    device00.queue.submit([command_buffer004, ]);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
}