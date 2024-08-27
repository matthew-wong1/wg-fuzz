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
    const array0 = new Float32Array([0.5, -0.5, 0.5, -0.25, -0.75, -0.5, -0.25, -0.75, -0.75, -0.5, 0.75, -1.0, -0.75, -0.5, -0.5, 0.75, -1.0, 0.0, 0.5, -0.5, 0.25, -0.5, 0.25, 0.5, -1.0, -0.75, 0.5, 1.0, -0.25, 0.25, -1.0, 0.0, 1.0, -0.5, -1.0, 1.0, -0.5, 1.0, -0.5, 0.5, -0.5, 0.75, 0.75, 0.0, 0.5, -0.25, 0.5, -0.5, 1.0, 0.75, 0.25, 1.0, 1.0, -0.75, -0.5, -0.25, 0.5, 0.25, 0.25, 0.5, 0.0, -0.25, -0.5, 0.25, -1.0, 0.5, 0.5, 0.25, 0.0, 0.5, -0.75, 0.75, -1.0, -1.0, -0.5, -1.0, 0.75, -0.25, 0.5, -0.25, -1.0, 0.5, 0.25, 0.75, 0.25, -0.25, -0.25, -0.5, 0.25, 1.0, -0.75, 1.0, 0.25, 0.0, -0.5, -0.5, -1.0, 1.0, -1.0, -1.0, ]);
    
    const array1 = new Float32Array([0.5, 0.0, -0.75, 0.5, 0.25, -0.75, 0.25, 0.25, 0.75, 0.25, 1.0, 1.0, -0.25, 0.0, 0.75, 0.25, -0.25, 0.75, -0.5, 1.0, 1.0, 0.5, 0.75, -1.0, -1.0, 1.0, -1.0, -1.0, 0.25, -0.5, -0.5, 0.75, -0.75, 0.5, -0.5, 1.0, 0.75, 0.75, -0.5, -1.0, 0.25, 1.0, 1.0, -0.25, 0.5, -0.75, 1.0, 1.0, 0.0, -0.5, -0.75, 0.75, -0.75, 0.75, 0.75, -0.75, -0.25, -1.0, -0.75, 0.25, 0.75, -0.25, -0.25, -0.25, -0.25, 0.25, -0.75, -1.0, 0.0, 0.25, 1.0, -0.25, -0.25, -0.25, 1.0, 1.0, 0.5, -0.25, -0.5, 1.0, -1.0, 1.0, 0.0, -1.0, -0.75, 0.0, 0.25, 0.0, 0.0, -0.5, 1.0, 0.25, 1.0, -0.5, 0.25, -0.5, -0.25, -0.75, 0.5, -0.5, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.pushErrorScope("out-of-memory");
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    
    
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
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    texture000.destroy();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture001.destroy();
    const array2 = new Float32Array([0.75, 0.25, 0.75, 0.0, -0.75, -1.0, 0.5, 0.75, 0.25, -1.0, -0.25, 0.25, 0.5, -1.0, 0.0, 0.25, -1.0, 0.0, 0.75, -0.75, 1.0, -0.5, -0.25, 0.75, 1.0, 0.75, 0.25, 1.0, 0.75, 0.25, 1.0, -0.75, -0.75, 0.75, -1.0, -0.75, 0.0, 0.5, 1.0, -0.25, 0.5, -1.0, -1.0, -1.0, -0.25, 0.25, 0.75, 0.75, 1.0, -0.25, 0.75, -0.5, 0.5, 0.75, -0.5, -1.0, -0.5, 0.5, -0.75, 0.25, -0.25, 0.25, 1.0, -0.75, 0.0, -0.25, -0.75, -0.75, -0.5, 1.0, -1.0, -0.75, -1.0, -0.75, 0.5, -0.5, -1.0, -0.25, 0.25, 0.25, -0.75, 0.5, -0.5, -0.75, -0.5, 0.25, -1.0, -1.0, -1.0, 0.75, 1.0, 0.0, -0.25, -1.0, 0.0, -0.5, -0.75, 1.0, 0.25, -1.0, ]);
    
    
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device10.destroy();
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder000.setPipeline(render_pipeline000);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    query000.destroy()
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    device00.destroy();
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device40.pushErrorScope("internal");
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_bundle_encoder401.popDebugGroup();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device20.pushErrorScope("internal");
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    render_bundle_encoder401.insertDebugMarker("marker");
    texture301.destroy();
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
    
    device30.destroy();
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.destroy();
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
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    
    const array3 = new Float32Array([0.0, -0.75, -1.0, 0.75, 0.75, -0.75, 0.25, -0.25, 0.75, 0.25, 1.0, 0.25, 0.75, 0.75, 0.5, 1.0, 1.0, 0.25, 0.75, 1.0, 1.0, -0.25, 0.25, 0.0, 0.25, -1.0, 1.0, -0.25, -0.75, -1.0, 1.0, 0.25, 0.25, -0.75, -0.25, 0.0, 1.0, -0.75, -0.75, -1.0, -1.0, 0.75, -0.5, -0.5, 0.75, -0.25, 0.75, 0.25, 0.5, 0.75, -0.75, -0.5, 0.75, 1.0, 1.0, 0.5, 0.5, -1.0, -0.5, -0.75, -1.0, -0.75, -0.25, -0.75, 0.0, 0.25, 0.0, -0.25, 1.0, -0.5, -0.25, 0.5, 0.0, 0.75, 0.75, 0.25, 0.0, 1.0, -1.0, 0.0, 0.25, 0.0, 0.75, 0.75, -1.0, 0.0, -0.5, 1.0, 1.0, 0.75, 0.5, -1.0, 0.75, 0.75, 1.0, -0.25, -0.25, 0.5, -0.25, -0.25, ]);
    device40.destroy();
    const array4 = new Float32Array([0.25, 0.25, 0.25, -1.0, 0.0, 0.25, 1.0, 0.75, 0.0, -0.5, 0.0, -0.5, -0.75, 0.75, 0.75, 1.0, 1.0, 0.0, -0.5, -0.25, 1.0, -0.5, -0.25, 0.75, -1.0, 0.5, 0.0, -0.25, 0.5, -1.0, -1.0, 0.0, 0.0, -0.25, -0.25, 1.0, 0.25, 0.5, 0.75, 0.5, -1.0, -1.0, 0.25, -1.0, 0.75, -0.75, 1.0, 0.75, -0.25, 0.25, 0.25, 1.0, 0.0, -1.0, 0.25, 0.75, -1.0, -0.75, 0.0, 0.75, -1.0, 1.0, 0.25, -0.75, 0.5, -0.75, 0.75, -1.0, -0.75, 0.25, 1.0, -1.0, -0.25, -0.5, 1.0, 0.5, 0.0, 0.75, -0.25, -0.75, 0.25, -0.75, -0.5, 0.0, 1.0, 0.0, 1.0, -0.5, 0.25, -0.75, 0.0, -0.25, 0.0, -0.25, 0.25, -0.5, 1.0, 0.0, -1.0, 0.25, ]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    texture300.destroy();
    
    
    
    const array5 = new Float32Array([0.75, -0.75, 0.75, 0.25, 0.5, -0.25, -0.5, 0.5, 0.25, 0.75, -0.75, -0.5, 0.5, 0.75, -0.5, -1.0, -0.25, -0.75, 0.75, -0.5, -0.75, 0.5, -0.25, 0.0, -1.0, -0.25, -0.75, -1.0, -0.75, 0.25, -0.75, 0.75, 0.75, -0.75, -0.25, 0.25, -0.5, 0.25, 0.0, 0.75, 0.0, -0.25, 0.25, 1.0, -0.25, 0.0, 1.0, 0.5, -1.0, 0.5, -0.75, 0.25, -0.75, -0.75, 0.0, -0.5, 0.25, 0.5, 0.5, 0.25, 0.75, -0.25, 0.0, -0.75, 0.25, 0.75, 0.25, 0.5, 0.0, -0.5, 0.75, 0.0, -0.5, -0.25, -0.5, -0.5, -1.0, -1.0, 1.0, -1.0, 1.0, 0.75, -0.75, 0.75, 0.0, 0.0, 0.5, 0.25, 0.25, 0.75, -0.75, 0.5, 0.5, -0.5, -1.0, -1.0, 0.0, 1.0, 0.25, -0.25, ]);
    
    
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder401.popDebugGroup();
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const array6 = new Float32Array([0.75, 0.5, -0.25, -1.0, 0.5, 0.75, 0.0, -1.0, -0.25, 0.75, -0.5, 0.0, 0.5, -0.75, -0.75, 0.5, 0.0, 0.0, 0.25, 0.25, -0.5, 0.25, -1.0, 0.0, 0.25, 0.25, -0.75, -1.0, 1.0, 0.5, 0.75, -1.0, -0.25, -0.25, 0.75, 0.75, 0.5, 0.75, 0.25, -0.25, -0.75, 1.0, 0.5, -1.0, -1.0, 0.0, 1.0, 0.25, 0.0, 0.5, -0.25, 1.0, -0.25, -1.0, 1.0, 0.0, 1.0, 0.75, -0.75, -0.5, 0.25, 0.25, 0.25, 0.25, 0.75, -0.5, 1.0, 0.5, 0.25, 1.0, 0.0, -0.25, -0.75, -0.25, -1.0, 0.75, 0.25, -0.75, 0.0, -0.25, 0.0, -0.75, -0.75, -0.25, -0.75, 0.5, 0.5, 0.25, -0.25, -0.25, 0.25, -0.5, -1.0, 0.5, 0.75, 0.25, 0.0, 1.0, -0.5, -1.0, ]);
    
    
    const array7 = new Float32Array([0.0, 0.25, 0.0, 1.0, 0.5, 1.0, -1.0, 0.0, 0.0, 0.25, 0.75, -1.0, -0.75, -1.0, -0.75, 1.0, -0.75, -1.0, -0.25, -0.5, -1.0, -1.0, 0.5, 0.25, -0.25, 0.25, 0.5, 0.25, -0.75, 0.75, -0.5, 0.25, 0.75, -0.75, -1.0, 1.0, -0.5, -0.25, 0.75, 0.75, -0.5, -0.25, 1.0, -1.0, 0.0, 0.75, 0.75, 0.0, 0.5, -0.5, 0.75, 1.0, 0.75, -0.75, 0.25, -0.25, -0.25, 0.0, -0.75, 0.5, -1.0, -1.0, -1.0, 0.0, 1.0, 1.0, 1.0, -0.5, 0.75, 0.75, -1.0, -0.75, 0.25, -1.0, 0.0, 0.0, 0.75, -0.25, -0.5, -1.0, 0.0, 1.0, -0.25, -0.75, -0.25, -0.5, 0.25, 0.75, -1.0, 0.0, -0.5, -0.25, 0.0, 0.5, -1.0, 0.5, -1.0, -0.25, -0.5, 0.0, ]);
    
    
    device00.queue.writeBuffer(buffer001, 0, array6, 0, array6.length);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    
    
    
    
    
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device50.pushErrorScope("out-of-memory");
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
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
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture500.destroy();
    
    
    
    
    
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
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
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    render_bundle_encoder402.insertDebugMarker("marker");
    
    
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    
    render_bundle_encoder501.insertDebugMarker("marker");
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.destroy();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array8 = new Float32Array([0.75, -0.25, 0.5, -1.0, -0.75, 1.0, 1.0, 1.0, 0.5, 0.75, 0.5, -1.0, 1.0, 0.75, -0.25, 1.0, 0.75, 0.75, -0.75, 0.75, 0.0, 0.0, -0.5, -1.0, -0.75, 0.0, -1.0, 0.75, 0.25, -0.75, 0.0, 0.0, 0.75, 1.0, 0.25, 0.5, 0.75, -0.75, -0.25, 1.0, 0.0, 0.25, 0.75, 0.75, 1.0, 0.25, -0.75, 0.25, 0.0, -1.0, -0.5, 0.25, 0.0, -0.25, 0.0, -0.25, 0.75, -1.0, -0.5, 0.75, 0.5, -0.75, 0.25, 0.5, 1.0, -0.75, 1.0, -0.5, -0.5, 0.75, 0.25, -0.25, -0.5, 0.5, -1.0, -0.5, 0.0, -0.25, 1.0, 0.5, -1.0, -0.75, 1.0, 0.5, -1.0, -1.0, -0.75, 0.75, -1.0, 0.25, 0.0, 1.0, 1.0, -0.75, -0.25, -0.75, -0.75, -0.25, -1.0, -0.75, ]);
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array9 = new Float32Array([-0.5, -1.0, 0.75, -0.75, -0.75, -0.25, -1.0, 0.0, 0.75, 1.0, 1.0, 0.5, 0.0, 1.0, -1.0, -0.5, 0.25, 0.0, 0.25, -0.5, -1.0, -1.0, -1.0, 0.75, -1.0, -0.25, 0.0, 0.0, -0.75, -0.25, -0.25, -1.0, 1.0, -0.75, 0.5, -1.0, 0.75, -1.0, 0.0, 0.25, 0.5, 0.75, -0.25, 0.0, 1.0, 0.25, -0.5, -0.25, 0.25, 0.5, -1.0, -0.5, 0.0, 0.5, 0.25, -0.5, 0.5, 0.5, -0.25, -0.75, -0.5, 0.0, -0.25, -0.5, 1.0, 0.75, -0.25, -0.5, -0.5, -0.5, -0.5, -0.75, 0.75, 0.5, 0.5, 0.5, 1.0, -0.25, -1.0, 0.25, 0.5, -0.25, 0.75, 0.5, 0.0, 1.0, 0.5, -0.75, -0.75, 0.75, -1.0, -0.75, -1.0, 0.75, 0.5, 0.0, -0.75, 0.75, 0.0, 0.25, ]);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    device40.queue.writeBuffer(buffer400, 0, array9, 0, array9.length);
    
    render_bundle_encoder001.popDebugGroup();
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const array10 = new Float32Array([0.25, 0.75, -0.5, -0.5, -0.75, -0.25, 0.0, 0.75, 0.5, 0.5, 0.5, -0.5, -1.0, -1.0, -0.75, 0.5, -0.75, -0.75, -1.0, 0.5, 0.75, -0.25, 1.0, 0.0, -1.0, 0.75, -1.0, 0.25, 0.75, 0.75, 1.0, 0.5, 0.25, -0.25, 1.0, 0.25, 0.5, -1.0, -0.5, -0.75, -0.25, -0.25, 1.0, -1.0, -1.0, 0.75, 0.25, -0.25, -1.0, 0.25, 1.0, 0.75, -0.75, -1.0, -1.0, 0.25, -0.25, -0.25, 0.75, 0.5, -1.0, 0.25, -0.5, 0.75, -1.0, 1.0, 1.0, 0.25, -0.25, -0.75, -0.5, -1.0, -0.25, 0.25, -0.75, 0.25, 0.75, 1.0, -0.5, -1.0, 0.5, -0.75, -0.5, -0.25, -0.25, -0.5, 0.25, 0.75, 0.75, 0.75, 0.25, 0.0, 0.0, -0.25, 0.0, -0.75, 0.25, -1.0, 0.25, 0.25, ]);
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device60.queue.writeBuffer(buffer600, 0, array4, 0, array4.length);
    device00.destroy();
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8uint",
        dimension: "2d"
    });
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
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
    device60.queue.writeBuffer(buffer600, 0, array5, 0, array5.length);
    device60.queue.writeBuffer(buffer600, 0, array6, 0, array6.length);
    
    
    device60.destroy();
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    device90.destroy();
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    device80.pushErrorScope("out-of-memory");
    
    device70.pushErrorScope("internal");
    
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    device70.destroy();
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
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
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    
    device50.pushErrorScope("validation");
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    
    
    
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    
    
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
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module802,
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
            module: shader_module802,
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
    
    
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
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
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    
    device80.pushErrorScope("out-of-memory");
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
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
    texture002.destroy();
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    device80.destroy();
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    
    const query1101 = device110.createQuerySet({
        label: "query1101",
        type: "occlusion",
        count: 32,
    });
    
    
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    
    
    
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
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
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
    render_bundle_encoder400.setPipeline(render_pipeline400);
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    
    const render_bundle_encoder1101 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1101",
        colorFormats: ["bgra8unorm"]
    });
    device110.destroy();
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
    
    const array11 = new Float32Array([-1.0, 0.0, 0.0, -1.0, 0.75, -0.75, 0.75, -0.75, 0.5, -0.5, -0.75, -0.75, 0.25, 0.25, -0.75, 0.75, 1.0, -0.25, -0.25, 1.0, 0.0, 1.0, 0.75, 0.5, 0.25, -0.25, 1.0, 1.0, -1.0, -0.5, -0.25, 1.0, 0.0, -0.5, 1.0, -0.5, 0.0, 0.75, 0.25, -0.5, 1.0, 0.0, -1.0, -1.0, -0.5, 0.25, 0.75, 0.75, 0.75, 0.25, -1.0, -1.0, -0.5, -0.75, -0.5, 1.0, 0.5, -1.0, 0.0, -0.5, 0.0, -0.75, 0.75, -0.5, 0.0, 0.5, 0.75, -1.0, -1.0, 0.75, 1.0, -0.25, -0.5, 1.0, -1.0, -0.25, -0.25, 0.75, -0.75, 0.0, -0.75, -1.0, 0.75, 0.75, -0.5, 1.0, 1.0, 0.0, -0.5, -0.5, 1.0, 0.0, 0.25, -0.25, -0.25, 0.0, 0.25, -0.5, 1.0, -1.0, ]);
    
    
    
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    
    
    
    
    
    device110.pushErrorScope("out-of-memory");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    const array12 = new Float32Array([0.75, 0.75, 0.25, 0.75, -0.5, 0.5, 0.75, -0.25, -0.75, -1.0, 0.5, -1.0, 0.25, 0.25, -0.75, -0.5, -1.0, -0.75, -0.25, 0.75, 1.0, 1.0, -1.0, 0.75, 1.0, 0.0, -0.75, 0.5, -1.0, 0.0, -0.75, 1.0, -0.5, 0.25, 0.0, -0.75, 0.0, 0.5, -1.0, -0.5, -1.0, 0.25, -0.5, -0.25, 0.75, -0.25, -1.0, -0.75, 0.5, 1.0, -0.25, 1.0, -0.75, 0.5, -0.25, 1.0, 0.75, -0.75, 0.0, -0.5, 0.5, -1.0, 0.25, 0.5, 1.0, -0.25, 0.75, -0.5, -0.25, 0.5, -0.5, -1.0, -0.75, -0.75, -0.25, 0.75, 0.0, 0.5, -0.25, 1.0, 0.5, 0.5, 0.25, 0.75, 0.0, 0.25, 0.5, 0.25, 1.0, -1.0, 0.75, -0.75, -0.25, -0.5, -1.0, 1.0, 0.25, 0.0, 0.0, 0.75, ]);
    const array13 = new Float32Array([0.75, -1.0, 1.0, 0.5, -0.75, 0.0, 0.5, 0.25, -0.25, -0.25, -1.0, -0.25, 0.25, 0.25, 0.25, 0.5, -0.75, -1.0, 0.75, 0.75, -1.0, -0.25, 0.5, -0.75, 0.25, -0.5, 0.25, -1.0, 0.75, 1.0, 0.0, 0.25, -0.5, 0.0, 0.75, 0.5, -0.25, -0.25, -0.5, -1.0, 0.5, -1.0, -0.5, -0.5, -0.5, 0.75, 1.0, 0.0, 1.0, -0.75, 0.0, 1.0, -0.5, 0.5, -0.75, 0.5, 0.0, -0.25, 0.75, -0.5, -1.0, -0.25, 0.25, 1.0, -1.0, 0.0, 0.0, 0.5, -1.0, 0.5, 0.25, 1.0, 0.75, 1.0, -1.0, 1.0, 0.5, 0.0, 0.25, 0.25, -0.75, -0.25, -0.25, -0.5, -0.5, 1.0, 0.5, 0.5, 0.25, -0.75, 0.75, 1.0, 0.0, 1.0, 0.5, 0.75, 0.75, -0.75, -1.0, -0.25, ]);
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    
    device10.queue.writeBuffer(buffer100, 0, array12, 0, array12.length);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    texture601.destroy();
    device100.pushErrorScope("out-of-memory");
    
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    
    device60.queue.writeBuffer(buffer600, 0, array11, 0, array11.length);
    
    device100.destroy();
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
    
    
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
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
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer001, 0, array8, 0, array8.length);
    
    const bind_group_layout802 = device80.createBindGroupLayout({ 
        label: "bind_group_layout802",
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
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    {
        await buffer401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer401.unmap();
        console.log(new Float32Array(data));
    }
    
    
    
    
    
    
    
    
    
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    device60.queue.writeBuffer(buffer600, 0, array10, 0, array10.length);
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    device00.queue.writeBuffer(buffer001, 0, array13, 0, array13.length);
    
    device60.queue.writeBuffer(buffer600, 0, array4, 0, array4.length);
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    device30.pushErrorScope("internal");
    
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const array14 = new Float32Array([-0.25, -1.0, 1.0, -0.75, -0.25, 0.75, -0.75, -1.0, -0.5, -1.0, 1.0, 0.75, -0.5, 1.0, 0.5, 0.25, -0.75, 0.25, 0.25, -0.75, -0.75, 0.0, 0.5, 0.25, -0.5, 0.75, 0.75, -0.25, -0.25, -1.0, 0.0, -0.5, 0.25, -0.5, 1.0, 0.25, 1.0, 0.75, 0.0, 0.0, 0.75, -0.5, 1.0, -0.75, 0.0, -1.0, -0.75, 0.25, 1.0, 0.0, -0.25, -0.25, -1.0, -0.75, -1.0, -0.75, 0.25, -0.5, 0.75, 1.0, 0.5, -0.25, -0.5, -1.0, -0.75, -0.5, -1.0, 1.0, 1.0, 0.0, -0.75, 0.75, -0.5, 0.25, -1.0, 0.25, 0.25, 1.0, -1.0, -0.5, -1.0, -0.5, 0.0, -0.75, 0.25, -0.5, -0.75, -1.0, 0.25, -1.0, 0.25, -0.25, 0.25, -0.5, -0.75, -1.0, -0.5, 0.75, 1.0, -0.5, ]);
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder1201 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1201",
        colorFormats: ["bgra8unorm"]
    });
    
    device80.pushErrorScope("internal");
    device50.destroy();
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    query500.destroy()
    
    render_bundle_encoder1200.insertDebugMarker("marker");
    render_bundle_encoder1201.pushDebugGroup("group_marker");
    
    
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    device70.queue.writeBuffer(buffer700, 0, array10, 0, array10.length);
    device120.queue.writeBuffer(buffer1200, 0, array0, 0, array0.length);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device120.queue.writeBuffer(buffer1200, 0, array13, 0, array13.length);
    device120.queue.writeBuffer(buffer1200, 0, array14, 0, array14.length);
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    
    device120.queue.writeBuffer(buffer1200, 0, array3, 0, array3.length);
    
    
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder1200.insertDebugMarker("marker");
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    device120.pushErrorScope("validation");
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}