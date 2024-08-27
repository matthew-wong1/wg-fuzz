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
    
    const array0 = new Float32Array([0.0, -1.0, -0.5, 0.25, 0.75, -1.0, 1.0, 1.0, 0.25, 0.25, 1.0, -0.75, 0.0, 0.25, 1.0, -0.75, 0.0, 0.5, 0.5, 0.25, -0.75, 1.0, 1.0, -1.0, 1.0, 1.0, -0.5, 0.0, 0.25, -0.25, 0.25, -1.0, -0.5, 1.0, 0.25, 1.0, 0.25, -0.5, -1.0, 0.75, 0.25, 1.0, -0.75, 1.0, -1.0, -0.25, -0.5, -0.25, 0.5, 1.0, 0.75, 0.75, 1.0, 0.0, 0.75, -0.25, -0.75, -0.25, 0.0, -1.0, -0.25, 0.25, 0.0, 0.25, -0.5, 1.0, -0.25, -1.0, 0.75, 0.25, -1.0, -0.75, -0.5, -0.75, 0.25, -1.0, -0.25, -1.0, 0.75, 0.25, 0.5, 0.5, -0.5, 0.5, -0.25, 0.0, -1.0, -1.0, 1.0, 0.25, 1.0, 1.0, 0.25, -1.0, -1.0, -0.5, -0.5, 1.0, -1.0, -0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array1 = new Float32Array([1.0, 1.0, -1.0, 0.5, 0.0, -0.25, -0.5, -0.5, 0.0, -0.5, 1.0, 1.0, 1.0, 0.5, 0.25, 0.25, 1.0, 1.0, 0.75, 0.75, 0.25, -0.5, -0.75, 1.0, 0.25, -0.25, 1.0, 0.0, -0.75, 0.0, 1.0, -1.0, -0.5, 0.25, 0.75, -0.75, 0.5, 0.0, -1.0, -1.0, -0.25, -0.75, 0.25, -0.75, 1.0, 0.75, 0.75, 0.75, 0.25, 0.75, 1.0, 0.75, 1.0, 0.5, -1.0, 0.75, 0.5, -0.25, 0.25, 1.0, -1.0, -1.0, 0.5, 1.0, -0.25, 0.25, 1.0, -0.5, 0.75, -0.25, -1.0, 0.75, -1.0, 1.0, 0.75, -0.75, 1.0, -0.75, -0.75, 0.25, 0.75, 1.0, -0.75, 1.0, -0.5, 0.0, 1.0, 0.75, -0.25, -0.25, -0.5, -1.0, 1.0, -0.25, 0.0, 1.0, 1.0, -1.0, -0.75, -0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const array2 = new Float32Array([-0.25, 0.75, 0.5, -1.0, -1.0, -0.75, -0.25, -0.25, -0.25, -0.75, -0.25, 0.25, 1.0, -0.5, -0.25, -0.25, -1.0, -0.5, -1.0, -0.5, 0.5, 0.75, -0.25, 0.75, -1.0, 0.75, -0.25, 1.0, 1.0, 0.25, 0.5, -0.5, 0.75, 0.75, -1.0, 0.75, 0.0, 0.75, -0.75, 0.5, -0.5, -1.0, 0.0, 0.0, -1.0, -0.5, 1.0, 0.75, 0.25, 1.0, 1.0, -0.75, -1.0, -0.5, 1.0, 1.0, -0.5, 0.25, -0.25, -0.25, -0.5, -0.75, 0.75, 0.0, 0.25, 0.25, 0.25, -0.75, 0.0, 0.0, -0.5, 0.75, 0.5, -0.25, 1.0, 1.0, 0.75, 1.0, 1.0, 0.25, -1.0, 1.0, 1.0, 1.0, 0.75, -0.75, -0.5, 0.25, -0.5, -0.5, -0.5, 0.0, 0.5, -1.0, -0.25, -0.25, -0.75, 0.75, 0.75, 1.0, ]);
    const array3 = new Float32Array([0.0, 0.25, 0.5, 0.0, 1.0, -0.75, -1.0, 1.0, -1.0, 0.75, 0.25, -0.25, -0.75, -0.25, -0.25, 1.0, -1.0, -0.25, 0.0, 0.0, 0.0, -0.25, 0.25, -0.5, 0.5, 0.25, 0.0, 0.75, 0.5, 0.25, 0.25, 1.0, -0.75, -0.5, -0.75, 0.5, 0.75, 0.75, -0.5, -0.5, 0.75, 1.0, -0.75, 0.0, 0.75, -0.75, -0.5, 0.5, 0.25, 1.0, -1.0, -1.0, -0.25, -0.5, -0.5, 0.0, -1.0, 0.5, -0.25, 1.0, 1.0, -1.0, 0.75, 0.5, -0.75, 0.5, 0.25, 1.0, -1.0, -0.25, 0.5, 1.0, -0.25, 1.0, -0.5, -0.75, -0.75, 0.25, -0.25, 0.25, -1.0, -0.5, 0.5, -0.5, 1.0, 0.5, 0.5, -0.5, 1.0, 0.5, 0.25, -0.5, -0.25, 0.25, -0.75, -0.25, 0.25, -1.0, 1.0, 1.0, ]);
    
    
    
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    device00.pushErrorScope("internal");
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
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
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture000.destroy();
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
    buffer000.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    device00.pushErrorScope("validation");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
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
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    
    query002.destroy()
    texture000.destroy();
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query001
    });
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder001.popDebugGroup();
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.destroy();
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const array4 = new Float32Array([-0.5, 1.0, 1.0, -0.75, 0.25, 0.0, -0.25, 0.75, 0.5, 0.0, 0.25, 1.0, -1.0, -0.25, 0.5, -0.5, 0.0, -0.75, 0.75, -0.5, -0.25, 0.75, 1.0, -1.0, -0.25, 1.0, 0.75, 0.25, -1.0, 0.25, 0.75, -0.25, -0.75, -0.75, 0.5, 0.5, -1.0, 0.5, 0.25, -0.25, -0.25, 1.0, -0.5, 0.25, 0.75, 0.5, 0.0, 0.0, 0.0, 0.25, 0.25, -0.5, 0.5, 0.0, 0.25, 0.25, -0.75, 0.25, -0.25, -0.75, 0.0, -0.25, 1.0, 0.75, -0.25, 1.0, 1.0, 0.25, 0.5, 0.25, 1.0, 1.0, 0.0, 0.75, 1.0, -0.75, 0.5, 0.5, -0.25, -1.0, 0.5, 0.75, 0.75, 1.0, -1.0, 0.25, 0.25, -1.0, 1.0, -0.75, -0.75, 0.0, 0.75, -0.5, 1.0, 0.5, -1.0, -0.75, -0.5, 0.5, ]);
    
    
    
    
    device10.destroy();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    
    texture100.destroy();
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device20.queue.submit([]);
    
    const array5 = new Float32Array([1.0, 1.0, -0.5, 1.0, -0.75, -0.5, -0.5, 0.25, -0.5, -1.0, -1.0, 0.75, 0.5, -0.5, -0.5, 0.0, 0.0, -0.25, -1.0, -0.75, 0.75, 0.0, -1.0, 0.5, -0.5, 0.5, 0.75, -1.0, -0.25, 1.0, -0.25, -0.75, -0.75, 0.0, -0.75, 0.75, 1.0, 0.25, -0.5, 0.75, 0.5, 0.75, 0.25, 0.25, 0.0, 0.25, 1.0, 0.0, -0.25, -0.25, 0.25, 1.0, -0.5, 0.5, 0.25, -0.5, -0.25, 0.5, -0.25, 1.0, 1.0, 0.5, 0.25, -1.0, -0.5, -0.25, -0.5, 0.25, -0.25, 0.0, -0.75, 0.75, -1.0, -0.25, -1.0, -0.25, 0.75, 0.0, 0.5, 1.0, 0.5, 0.5, -0.75, -0.5, 0.5, 1.0, 0.25, 0.75, 0.0, -0.25, 0.5, 0.25, 0.75, 0.25, -0.5, 0.75, 0.0, 0.75, -0.5, -0.5, ]);
    const array6 = new Float32Array([-1.0, -1.0, 0.0, 0.0, 1.0, 0.75, 0.0, 0.5, 0.5, -0.75, 1.0, 0.0, 0.5, -1.0, 1.0, -0.5, 0.75, 0.5, 0.25, 0.5, -0.75, -0.5, 0.75, -0.5, -0.25, -1.0, 0.0, -0.5, -0.5, 0.5, 0.75, 0.75, 0.5, 0.5, 0.5, -0.25, -0.5, 0.0, 0.75, -0.75, -0.25, 0.25, 0.0, -1.0, 0.5, 0.25, 0.0, 0.25, 0.25, 0.25, -0.75, -0.75, -1.0, -0.75, -0.75, -1.0, 0.0, -0.5, -1.0, -0.5, 0.0, -0.25, 0.5, 0.25, 0.5, -1.0, 0.0, 0.25, 0.25, -0.75, -0.25, -1.0, -0.25, 0.75, -0.5, -1.0, -0.25, 0.75, -0.5, 1.0, -0.25, 0.25, 1.0, -0.5, 0.5, 0.25, -0.25, 0.5, 0.0, 0.0, 0.25, -0.5, 1.0, 0.75, -0.5, -0.25, 0.25, -0.25, -1.0, 0.25, ]);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    buffer200.destroy()
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device20.destroy();
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
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
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    const array7 = new Float32Array([0.0, -1.0, 0.75, -0.25, -1.0, 0.5, -0.5, 1.0, -0.5, 1.0, 0.5, -1.0, 0.75, 0.25, -1.0, 0.5, -0.5, -1.0, 0.5, -0.75, 1.0, 0.75, -0.75, 0.75, 0.5, -0.75, -0.75, -0.5, 0.75, -1.0, -0.75, 0.75, 0.25, -0.5, 0.5, 0.5, -1.0, -1.0, 0.25, 0.25, -1.0, 0.25, -0.75, -0.5, 0.75, 0.0, -1.0, 0.75, -0.25, 1.0, 0.75, 0.75, 1.0, -0.25, -1.0, 1.0, 0.0, 0.5, -0.75, -0.75, -0.25, -1.0, -0.25, -1.0, 0.5, 0.5, 0.5, 0.0, -1.0, -1.0, -1.0, 0.0, 0.75, 0.5, 1.0, 0.0, -0.75, 1.0, -0.25, -0.75, -0.5, -0.75, -0.25, -0.75, 0.5, -1.0, 0.25, -0.75, -0.5, -0.5, 0.25, 1.0, -0.5, 1.0, 0.0, 1.0, 0.25, -0.75, -0.75, -0.75, ]);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
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
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.pushErrorScope("out-of-memory");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    buffer300.destroy()
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device30.queue.submit([]);
    texture300.destroy();
    query300.destroy()
    
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
    buffer301.destroy()
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
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device30.queue.submit([]);
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
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
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pass_encoder3001 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3001",
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
    
    device30.queue.writeBuffer(buffer302, 0, array4, 0, array4.length);
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    render_pass_encoder3001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    query300.destroy()
    
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_pass_encoder3000.setPipeline(render_pipeline300);
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
    render_pass_encoder3001.setPipeline(render_pipeline300);
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3001.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    texture301.destroy();
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer303.destroy()
    
    query300.destroy()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout302]
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
    
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3010.endOcclusionQuery()
    
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query300.destroy()
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    buffer305.destroy()
    render_pass_encoder0000.executeBundles([])
    render_pass_encoder3001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query200.destroy()
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder3001.insertDebugMarker("marker");
    render_pass_encoder3000.setStencilReference(1);
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    render_pass_encoder3001.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
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
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
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

    render_pass_encoder3001.setBindGroup(0, bind_group301);
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    render_pass_encoder3000.setVertexBuffer(0, buffer308);
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3001.pushDebugGroup("group_marker");
    query000.destroy()
    render_pass_encoder3000.drawIndirect(buffer305, 0);
    device30.queue.writeBuffer(buffer302, 0, array7, 0, array7.length);
    
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
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout302]
    });
    render_pass_encoder3010.pushDebugGroup("group_marker");
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    
    device30.queue.writeBuffer(buffer307, 0, array5, 0, array5.length);
    
    
    device10.pushErrorScope("out-of-memory");
    device40.destroy();
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    buffer302.destroy()
    command_encoder302.resolveQuerySet(
        query300,
        0,
        32,
        buffer301,
        0
    )
    render_pass_encoder3001.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device30.queue.writeBuffer(buffer306, 0, array6, 0, array6.length);
    query300.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query301.destroy()
    render_pass_encoder3000.setStencilReference(1);
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    render_pass_encoder3010.insertDebugMarker("marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_pass_encoder3010.setStencilReference(1);
    render_pass_encoder3001.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3001.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder302.copyTextureToTexture(
        {
            texture: texture302
        },
        {
            texture: texture302
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer302 = command_encoder302.finish();
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    device50.destroy();
    render_pass_encoder3000.drawIndirect(buffer305, 0);
    
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3001.setStencilReference(1);
    device30.queue.submit([]);
    buffer303.destroy()
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    buffer306.destroy()
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    render_pass_encoder1000.pushDebugGroup("group_marker");
    buffer307.destroy()
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
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
    render_pass_encoder3001.setStencilReference(1);
    texture303.destroy();
    query302.destroy()
    device60.pushErrorScope("internal");
    render_pass_encoder3000.end();
    render_pass_encoder3010.setPipeline(render_pipeline300);
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    command_encoder301.insertDebugMarker("mymarker");
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    device60.destroy();
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    command_encoder301.copyTextureToBuffer(
        {
            texture: texture303
        },
        {
            buffer: buffer305
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    device30.queue.writeTexture({ texture: texture304 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer304, 0, array2, 0, array2.length);
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    query400.destroy()
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3001.setVertexBuffer(0, buffer305);
    query300.destroy()
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout302]
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
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder3001.setStencilReference(1);
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture304 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    texture304.destroy();
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.beginOcclusionQuery(0)
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    command_encoder303.copyBufferToBuffer(
        buffer307,
        0,
        buffer301,
        0,
        400
    );
    render_pass_encoder3001.draw(3);
    render_pass_encoder3010.popDebugGroup();
    command_encoder303.copyTextureToBuffer(
        {
            texture: texture302
        },
        {
            buffer: buffer305
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    render_pass_encoder3001.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    command_encoder303.resolveQuerySet(
        query300,
        0,
        32,
        buffer302,
        0
    )
    device30.queue.writeBuffer(buffer304, 0, array6, 0, array6.length);
    command_encoder303.resolveQuerySet(
        query302,
        0,
        32,
        buffer303,
        0
    )
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    const array8 = new Float32Array([0.25, 0.5, -0.25, -0.25, 0.25, -1.0, 0.0, -0.5, 0.75, 0.0, 0.5, 0.5, -1.0, 0.0, 0.5, 0.5, 0.5, 0.25, 0.75, -1.0, -1.0, 1.0, 0.5, 0.25, 0.25, 0.25, 0.75, -0.25, -1.0, -1.0, 0.75, 0.25, 1.0, -0.25, 0.5, -0.25, 0.0, -0.5, 0.75, -1.0, 0.0, 0.0, 0.0, 0.25, 0.0, -0.5, 0.25, 0.25, 0.5, -0.25, -0.5, -0.75, -1.0, -0.5, 0.25, 1.0, -1.0, 0.75, -0.5, 1.0, 0.5, -0.25, 1.0, 0.75, 1.0, 0.75, 0.75, 0.25, -0.5, 0.25, -1.0, -0.5, -0.75, -0.25, -0.5, -0.25, 0.5, -1.0, 0.0, 0.75, 0.75, -0.5, 0.75, 0.5, -0.5, 0.0, 0.25, 0.25, 1.0, 0.0, 0.25, 0.5, 0.25, 0.75, 0.0, 0.25, 0.75, 0.75, 1.0, -0.25, ]);
    render_pass_encoder1000.insertDebugMarker("marker");
    
    command_encoder303.resolveQuerySet(
        query302,
        0,
        32,
        buffer302,
        0
    )
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    device30.queue.submit([command_buffer302, ]);
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    command_encoder303.copyTextureToTexture(
        {
            texture: texture302
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
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    command_encoder303.pushDebugGroup("mygroupmarker")
    buffer308.destroy()
    
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
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    query301.destroy()
    
    
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder3001.setStencilReference(1);
    render_pass_encoder3030.pushDebugGroup("group_marker");
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3030.popDebugGroup();
    
    render_pass_encoder3001.setStencilReference(1);
    render_pass_encoder3030.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device40.pushErrorScope("internal");
    
    render_pass_encoder3030.setPipeline(render_pipeline301);
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout304,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder3001.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3001.setStencilReference(1);
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    buffer304.destroy()
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout303]
    });
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array9 = new Float32Array([0.0, 1.0, -0.5, -0.25, -1.0, -1.0, 1.0, 0.5, -0.25, 0.5, 1.0, -0.25, -0.75, 0.25, 0.0, 1.0, 1.0, 0.75, 0.25, 0.5, -0.25, 0.75, 0.25, 0.0, -0.5, 0.25, -0.25, -0.75, -0.75, 0.0, 0.0, -0.25, 0.25, -1.0, 0.0, -0.75, -0.5, -0.75, -1.0, 0.0, -1.0, -0.75, 0.75, 0.75, 1.0, -0.25, 0.0, -1.0, 0.25, -0.5, -0.5, -1.0, 0.0, -0.5, -0.75, 1.0, -0.75, -0.5, -0.25, -0.75, -0.25, 1.0, 1.0, -0.25, -0.25, 1.0, 0.5, 1.0, 0.25, 0.5, -0.75, 0.0, -0.25, 0.5, 0.75, 0.75, 0.5, -1.0, -0.5, 0.25, -0.25, -0.5, 1.0, -0.75, -0.5, -0.5, 0.75, 0.0, 0.0, -0.5, -0.5, 0.75, -1.0, -0.25, 1.0, -0.75, -0.75, 0.5, 1.0, -0.25, ]);
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    command_encoder304.resolveQuerySet(
        query300,
        0,
        32,
        buffer306,
        0
    )
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
    command_encoder304.resolveQuerySet(
        query301,
        0,
        32,
        buffer301,
        0
    )
    const array10 = new Float32Array([0.5, -0.75, 0.25, 0.5, -1.0, -0.25, -0.75, -0.75, 0.5, -0.25, -0.5, -0.25, 0.25, -0.25, -1.0, -1.0, 1.0, -1.0, -1.0, -1.0, -0.75, -1.0, -1.0, -0.5, 0.25, -1.0, 0.0, 0.25, 1.0, -0.25, -0.75, -0.75, -0.75, -1.0, 1.0, 0.25, -1.0, 0.75, 0.75, -1.0, -0.5, -0.25, 0.0, 0.5, -1.0, 0.5, 0.0, 0.25, 0.5, -1.0, 0.0, 0.75, 0.25, -0.25, 1.0, -0.5, 0.75, -0.75, -0.75, -1.0, 0.0, 1.0, 0.25, 0.25, -0.25, -0.25, 0.75, 1.0, -1.0, 0.0, -0.5, 1.0, 0.0, 0.25, -0.5, 1.0, -0.75, 0.5, -1.0, 0.25, -0.75, -0.75, -0.25, 0.75, -0.75, -0.5, -1.0, -0.75, -0.75, 0.0, 0.25, 0.0, -1.0, 0.25, -0.75, -1.0, -0.25, 0.0, 0.25, -0.25, ]);
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    render_pass_encoder3010.endOcclusionQuery()
    
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
        occlusionQuerySet: undefined
    });
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout306,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
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
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    render_pass_encoder3040.setPipeline(render_pipeline302);
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    
    
    
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout303,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const compute_pipeline3027 = device30.createComputePipeline({
        label: "compute_pipeline3027",
        layout: pipeline_layout302,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    render_pass_encoder3040.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder303.copyTextureToTexture(
        {
            texture: texture302
        },
        {
            texture: texture300
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder301.resolveQuerySet(
        query302,
        0,
        32,
        buffer302,
        0
    )
    render_pass_encoder3001.insertDebugMarker("marker");
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_pass_encoder3001.popDebugGroup();
    const compute_pipeline3028 = device30.createComputePipeline({
        label: "compute_pipeline3028",
        layout: pipeline_layout306,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const compute_pipeline3029 = device30.createComputePipeline({
        label: "compute_pipeline3029",
        layout: pipeline_layout303,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const compute_pipeline3030 = device30.createComputePipeline({
        label: "compute_pipeline3030",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const compute_pipeline3031 = device30.createComputePipeline({
        label: "compute_pipeline3031",
        layout: pipeline_layout305,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    texture500.destroy();
    const compute_pipeline3032 = device30.createComputePipeline({
        label: "compute_pipeline3032",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline3033 = device30.createComputePipeline({
        label: "compute_pipeline3033",
        layout: pipeline_layout306,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline3034 = device30.createComputePipeline({
        label: "compute_pipeline3034",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    query302.destroy()
    const compute_pipeline3035 = device30.createComputePipeline({
        label: "compute_pipeline3035",
        layout: pipeline_layout305,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture302 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder3001.setIndexBuffer(buffer306, "uint16");
    
    
    const compute_pipeline3036 = device30.createComputePipeline({
        label: "compute_pipeline3036",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const compute_pipeline3037 = device30.createComputePipeline({
        label: "compute_pipeline3037",
        layout: pipeline_layout308,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3038 = device30.createComputePipeline({
        label: "compute_pipeline3038",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    render_pass_encoder3030.pushDebugGroup("group_marker");
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
        occlusionQuerySet: query300
    });
    const compute_pipeline3039 = device30.createComputePipeline({
        label: "compute_pipeline3039",
        layout: pipeline_layout302,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const compute_pipeline3040 = device30.createComputePipeline({
        label: "compute_pipeline3040",
        layout: pipeline_layout302,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    
    command_encoder305.resolveQuerySet(
        query301,
        0,
        32,
        buffer302,
        0
    )
    render_pass_encoder3010.insertDebugMarker("marker");
    const compute_pipeline3041 = device30.createComputePipeline({
        label: "compute_pipeline3041",
        layout: pipeline_layout306,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const compute_pipeline3042 = device30.createComputePipeline({
        label: "compute_pipeline3042",
        layout: pipeline_layout300,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    render_pass_encoder3050.setPipeline(render_pipeline302);
    const compute_pipeline3043 = device30.createComputePipeline({
        label: "compute_pipeline3043",
        layout: pipeline_layout302,
        compute: {
            module: shader_module306,
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
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
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

    render_pass_encoder3010.setBindGroup(0, bind_group302);
    
    const compute_pipeline3044 = device30.createComputePipeline({
        label: "compute_pipeline3044",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture304 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    
    
    render_pass_encoder3040.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const compute_pipeline3045 = device30.createComputePipeline({
        label: "compute_pipeline3045",
        layout: pipeline_layout302,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    render_pass_encoder3050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8unorm",
        dimension: "2d"
    });
    command_encoder306.copyBufferToBuffer(
        buffer302,
        0,
        buffer300,
        0,
        400
    );
    
    const render_pass_encoder3051 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3051",
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
    const command_encoder307 = device30.createCommandEncoder({ label: "command_encoder307" });
    const compute_pipeline3046 = device30.createComputePipeline({
        label: "compute_pipeline3046",
        layout: pipeline_layout303,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder3060 = command_encoder306.beginComputePass({ label: "compute_pass_encoder3060" });
    command_encoder307.copyTextureToTexture(
        {
            texture: texture302
        },
        {
            texture: texture303
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.popDebugGroup();
    compute_pass_encoder3060.setPipeline(compute_pipeline3020);
    const render_pass_encoder3041 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3041",
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
    texture305.destroy();
    render_pass_encoder3050.endOcclusionQuery()
    render_pass_encoder3051.setPipeline(render_pipeline303);
    compute_pass_encoder3060.popDebugGroup()
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3030.popDebugGroup();
    const command_buffer307 = command_encoder307.finish();
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
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline302.getBindGroupLayout(0),
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

    render_pass_encoder3050.setBindGroup(0, bind_group303);
    render_pass_encoder3001.drawIndirect(buffer305, 0);
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
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline3020.getBindGroupLayout(0),
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

    compute_pass_encoder3060.setBindGroup(0, bind_group304);
    render_pass_encoder3040.popDebugGroup();
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
    
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3030.setBindGroup(0, bind_group305);
    render_pass_encoder3041.setPipeline(render_pipeline303);
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
    
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: render_pipeline302.getBindGroupLayout(0),
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

    render_pass_encoder3040.setBindGroup(0, bind_group306);
    render_pass_encoder3030.setVertexBuffer(0, buffer307);
    render_pass_encoder3050.setVertexBuffer(0, buffer308);
    compute_pass_encoder3060.dispatchWorkgroups(100);
    render_pass_encoder3030.setIndexBuffer(buffer3014, "uint16");
    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: render_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3020,
                },
            },
        ],
    });

    render_pass_encoder3041.setBindGroup(0, bind_group307);
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder3050.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder3050.drawIndexedIndirect(buffer305, 0);
    render_pass_encoder3041.setVertexBuffer(0, buffer3011);
    render_pass_encoder3050.popDebugGroup();
    render_pass_encoder3010.setVertexBuffer(0, buffer3010);
    render_pass_encoder3040.setVertexBuffer(0, buffer306);
    render_pass_encoder3041.drawIndirect(buffer307, 0);
    render_pass_encoder3040.setIndexBuffer(buffer307, "uint16");
    device20.queue.submit([]);
    render_pass_encoder3050.drawIndexedIndirect(buffer305, 0);
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
        layout: render_pipeline303.getBindGroupLayout(0),
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

    render_pass_encoder3051.setBindGroup(0, bind_group308);
    render_pass_encoder3001.end();
    render_pass_encoder3010.drawIndirect(buffer307, 0);
    render_pass_encoder3040.draw(3);
    render_pass_encoder3051.endOcclusionQuery()
    render_pass_encoder3010.end();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.submit([command_buffer307, ]);
    render_pass_encoder3030.drawIndirect(buffer3012, 0);
    render_pass_encoder3050.end();
    render_pass_encoder3051.setVertexBuffer(0, buffer307);
    render_pass_encoder3040.end();
    render_pass_encoder3051.draw(3);
    render_pass_encoder3030.setIndexBuffer(buffer3018, "uint16");
    render_pass_encoder3051.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder3050.drawIndexedIndirect(buffer305, 0);
    render_pass_encoder3051.end();
    render_pass_encoder3050.drawIndexedIndirect(buffer3014, 0);
    render_pass_encoder3001.drawIndirect(buffer307, 0);
    render_pass_encoder3000.draw(3);
    render_pass_encoder3041.setIndexBuffer(buffer303, "uint16");
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
        layout: compute_pipeline3020.getBindGroupLayout(0),
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

    compute_pass_encoder3060.setBindGroup(0, bind_group309);
    render_pass_encoder3041.drawIndirect(buffer3023, 0);
    render_pass_encoder3051.drawIndexedIndirect(buffer3021, 0);
    const command_buffer305 = command_encoder305.finish();
    render_pass_encoder3000.end();
    render_pass_encoder3050.end();
    render_pass_encoder3010.setIndexBuffer(buffer3023, "uint16");
    render_pass_encoder3040.drawIndirect(buffer3017, 0);
    compute_pass_encoder3060.dispatchWorkgroups(100);
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder3030.endOcclusionQuery()
    render_pass_encoder3041.end();
    render_pass_encoder3040.setIndexBuffer(buffer3016, "uint16");
    render_pass_encoder3030.end();
    device30.queue.submit([command_buffer305, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder3030.setIndexBuffer(buffer304, "uint16");
    command_encoder303.popDebugGroup()
    const command_buffer303 = command_encoder303.finish();
    compute_pass_encoder3060.end();
    render_pass_encoder3050.drawIndirect(buffer3024, 0);
    render_pass_encoder3041.drawIndexed(3);
    const command_buffer304 = command_encoder304.finish();
    render_pass_encoder3041.setIndexBuffer(buffer303, "uint16");
    const command_buffer306 = command_encoder306.finish();
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder3040.drawIndirect(buffer3022, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3017, 0);
    render_pass_encoder3041.drawIndexed(3);
    compute_pass_encoder3060.end();
    render_pass_encoder3050.setIndexBuffer(buffer303, "uint16");
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder3041.drawIndexedIndirect(buffer305, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder3010.end();
    render_pass_encoder3040.drawIndirect(buffer309, 0);
    render_pass_encoder3051.drawIndexed(3);
    render_pass_encoder3010.drawIndirect(buffer309, 0);
    render_pass_encoder3040.setIndexBuffer(buffer307, "uint16");
    device30.queue.submit([command_buffer303, command_buffer304, command_buffer306, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3000.drawIndirect(buffer305, 0);
    render_pass_encoder3000.end();
    render_pass_encoder3000.setIndexBuffer(buffer3021, "uint16");
    render_pass_encoder1000.popDebugGroup();
    device30.queue.submit([command_buffer306, ]);
    render_pass_encoder3010.drawIndirect(buffer301, 0);
    device30.queue.submit([command_buffer307, ]);
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
        layout: compute_pipeline3020.getBindGroupLayout(0),
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

    compute_pass_encoder3060.setBindGroup(0, bind_group3010);
    render_pass_encoder3041.popDebugGroup();
    render_pass_encoder3051.end();
    render_pass_encoder3041.end();
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3040.draw(3);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3040.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder3000.drawIndexedIndirect(buffer3019, 0);
    device30.queue.submit([command_buffer302, command_buffer305, ]);
    render_pass_encoder3010.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder3040.draw(3);
    render_pass_encoder3010.setIndexBuffer(buffer3018, "uint16");
    render_pass_encoder3000.drawIndexedIndirect(buffer3026, 0);
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3041.popDebugGroup();
    render_pass_encoder3000.drawIndirect(buffer3017, 0);
    render_pass_encoder3001.draw(3);
    render_pass_encoder3051.popDebugGroup();
    device30.queue.submit([command_buffer307, ]);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3001.draw(3);
    device30.queue.submit([command_buffer304, ]);
    device30.queue.submit([]);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3000.draw(3);
    render_pass_encoder3000.end();
    render_pass_encoder3041.setIndexBuffer(buffer3010, "uint16");
}