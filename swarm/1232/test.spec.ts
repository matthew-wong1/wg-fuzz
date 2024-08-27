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
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    
    
    
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const array0 = new Float32Array([1.0, -0.75, 1.0, -0.5, -1.0, 0.5, -0.5, -0.5, -0.5, -0.5, 0.25, 0.0, -0.5, 1.0, -0.5, 0.5, -0.25, -0.75, 0.75, 1.0, 0.5, 1.0, 0.75, -0.25, -0.75, 0.75, -0.25, -1.0, 0.5, -0.5, -1.0, -0.75, 0.75, -1.0, 1.0, 0.5, -1.0, 0.0, -0.5, -0.5, 0.75, 0.25, 0.0, 0.0, 1.0, -0.75, -0.5, 0.25, -1.0, -0.5, 1.0, 0.0, 0.75, -0.75, 0.5, 0.25, 0.25, 0.0, 0.25, 0.75, 0.25, -0.5, 0.25, 0.25, -0.5, 0.75, -1.0, -0.75, 0.25, 0.25, 0.25, 1.0, 0.25, 0.25, 1.0, 0.5, 1.0, 0.75, -0.25, 1.0, -1.0, 0.0, 0.25, 0.25, -0.75, 0.25, 1.0, 0.25, -0.75, 0.75, 0.75, -1.0, 1.0, 1.0, 0.75, 0.5, 0.25, -1.0, 1.0, -0.5, ]);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    command_encoder000.popDebugGroup()
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
    
    const array1 = new Float32Array([-1.0, -0.5, 0.75, 0.0, 0.0, 0.0, 0.0, -0.75, 1.0, 0.75, 0.5, -0.75, -0.25, 0.0, 0.5, -1.0, 0.0, -1.0, 0.0, 1.0, -0.75, 0.5, 0.75, 0.75, -0.25, 0.25, 1.0, -1.0, 0.0, -0.75, 0.75, 0.25, -0.75, 0.0, 0.5, -1.0, 0.75, -0.5, 0.25, 1.0, -0.5, -1.0, -1.0, 0.0, -0.75, -0.75, -0.5, -0.5, 1.0, 0.25, 0.75, -0.25, 0.25, -0.75, 0.0, -0.5, 0.5, 0.5, -1.0, -1.0, -0.75, -0.5, -0.5, 0.0, -1.0, -0.25, 0.25, 0.5, -0.5, 0.0, -0.25, -0.5, 0.75, -0.5, 0.75, -0.5, 0.0, 1.0, -1.0, -0.25, 0.0, 0.5, 1.0, -0.25, -0.5, -1.0, 0.5, 0.0, -0.5, 0.25, -0.5, 0.0, -0.25, -0.25, 0.75, 0.75, 0.25, -0.5, 0.25, -0.25, ]);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
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
    render_bundle_encoder400.insertDebugMarker("marker");
    command_encoder000.insertDebugMarker("mymarker");
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
    
    const command_buffer400 = command_encoder400.finish();
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device00.pushErrorScope("internal");
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    
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
    const array2 = new Float32Array([-0.25, 0.75, 0.5, -0.5, 0.25, -1.0, -0.25, 0.0, -1.0, -1.0, 0.0, 0.5, -0.5, 0.75, 0.25, -0.5, -0.25, 0.0, 0.75, 0.75, -1.0, -0.5, -1.0, -0.5, -1.0, 0.0, 0.5, -0.75, 0.25, -0.25, -1.0, 0.0, 0.0, 0.5, -1.0, 0.75, -1.0, -0.5, 0.0, -1.0, 0.75, -0.75, 0.25, 0.0, -1.0, 0.25, -1.0, 0.5, 0.25, 0.25, 1.0, 0.0, -0.75, 0.75, 0.0, -0.25, 0.25, -0.5, -0.5, 1.0, -0.25, 1.0, 0.5, -1.0, 0.75, -0.25, 1.0, -0.5, -0.5, 1.0, -0.25, 1.0, 1.0, 0.75, -1.0, -1.0, 0.25, -0.75, -0.75, 0.5, -1.0, -0.25, -1.0, 0.5, 1.0, 0.0, -1.0, 0.25, 0.0, -0.25, -0.5, 0.0, -0.25, 1.0, -0.75, 0.0, 0.5, 1.0, -0.5, 0.5, ]);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder000.insertDebugMarker("mymarker");
    device10.pushErrorScope("internal");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.pushErrorScope("out-of-memory");
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const array3 = new Float32Array([1.0, 0.5, 0.0, 0.5, 0.5, 1.0, -0.75, -0.5, 0.25, 0.0, -0.5, 0.25, 0.75, -0.5, 1.0, -0.75, -1.0, -0.75, 0.0, 0.25, 0.5, 1.0, -1.0, 0.25, 0.75, 0.75, 0.5, 0.75, 0.25, 1.0, 0.25, 1.0, -0.75, -0.5, -0.75, -0.25, 0.5, 0.0, 0.5, -1.0, 0.5, -0.25, -0.75, -0.25, 0.0, -1.0, -1.0, 0.75, -0.75, 1.0, 0.75, 0.75, -0.25, 0.25, -0.5, -0.25, -0.25, -0.25, 0.5, -1.0, -0.75, -0.5, -0.5, -0.5, -0.25, 0.5, -0.75, -1.0, 0.75, 0.5, -1.0, 0.25, -0.25, -0.5, 0.25, 0.0, 0.0, -1.0, 0.0, -0.75, 0.0, -0.5, 0.25, 0.25, 0.75, 1.0, 1.0, -0.75, 0.5, 0.25, 0.25, 0.5, 0.5, 0.25, 0.5, 0.5, -0.5, -0.75, 0.0, 0.75, ]);
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const array4 = new Float32Array([0.5, -0.5, 0.75, -0.25, -0.75, 0.25, 0.0, -0.75, 0.25, -1.0, 0.75, 0.75, -1.0, 1.0, -0.5, -0.25, -0.25, 1.0, 0.25, 1.0, -0.25, 1.0, 0.75, 0.75, 0.5, 0.25, -0.75, 1.0, -1.0, -0.75, 0.5, 0.5, 1.0, 1.0, -0.5, -0.75, -1.0, 0.25, -0.5, 0.25, 0.5, -0.5, 0.25, 0.5, 0.0, -0.25, 0.75, 0.25, 1.0, 1.0, 1.0, 0.25, -0.5, 0.0, -0.25, -0.75, -0.25, 0.0, 0.75, 0.5, -1.0, -0.75, -0.25, -0.25, 0.25, -0.75, -1.0, 0.5, 1.0, -0.75, -0.5, 0.0, 1.0, 0.75, -0.25, -0.75, -0.75, -0.5, 1.0, 0.75, 0.0, 0.75, -0.75, -0.5, 1.0, 0.25, 0.25, -0.75, -0.25, 0.25, -1.0, -0.75, -0.5, -1.0, -0.5, -0.5, 0.5, 1.0, -0.25, -0.5, ]);
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
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
    
    
    device40.queue.submit([command_buffer400, ]);
    
    
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder400.popDebugGroup();
    
    
    
    query300.destroy()
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    render_pass_encoder0000.insertDebugMarker("marker");
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder0000.executeBundles([render_bundle_encoder000, ])
    device10.queue.submit([]);
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder000.popDebugGroup()
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
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
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    
    
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const texture_view3012 = texture301.createView({ label: "texture_view3012" });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    const array5 = new Float32Array([-1.0, 0.0, -0.25, -1.0, -1.0, 0.25, -0.25, -0.5, -0.75, -0.75, 0.5, 0.0, -0.25, 1.0, 0.0, 0.25, -1.0, -0.25, 0.5, 1.0, -1.0, 0.25, -0.25, 1.0, 0.0, 0.0, -1.0, 0.0, -1.0, -0.75, 0.0, 0.75, 0.25, 0.0, 0.25, 0.5, 0.0, -1.0, -0.5, 0.25, -0.25, -1.0, -1.0, 1.0, 1.0, -0.25, -1.0, -0.5, -0.25, 0.0, 0.5, 0.0, 1.0, -0.75, 0.75, -0.75, 0.5, 1.0, -0.75, 1.0, -0.5, -1.0, 0.0, 0.25, -0.25, 0.75, 0.5, -0.5, 0.25, 0.5, 0.25, 1.0, 0.5, 0.25, -0.5, -0.5, -0.5, -0.5, -0.5, -0.25, -0.75, -0.25, 0.75, -0.75, -0.25, 0.0, 0.25, 0.75, -0.75, 0.75, 0.25, 1.0, 1.0, 0.5, 0.75, -0.5, 0.5, -0.25, 0.75, -1.0, ]);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    
    
    
    device00.pushErrorScope("validation");
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query000
    });
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture_view3013 = texture301.createView({ label: "texture_view3013" });
    
    render_pass_encoder0001.setStencilReference(1);
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    query300.destroy()
    query400.destroy()
    
    
    
    device40.pushErrorScope("validation");
    render_pass_encoder0011.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    query000.destroy()
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    
    render_pass_encoder0011.setStencilReference(1);
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    render_pass_encoder0010.insertDebugMarker("marker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_pass_encoder0000.executeBundles([])
    
    render_pass_encoder0011.setStencilReference(1);
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    device40.pushErrorScope("internal");
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8sint",
        dimension: "2d"
    });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: undefined
    });
    device00.queue.writeTexture({ texture: texture002 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query002
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.setStencilReference(1);
    render_bundle_encoder002.insertDebugMarker("marker");
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query000.destroy()
    device00.queue.writeTexture({ texture: texture003 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.insertDebugMarker("marker");
    query001.destroy()
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    render_pass_encoder0020.executeBundles([])
    device30.pushErrorScope("internal");
    
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query400
    });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query000.destroy()
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    query001.destroy()
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const render_pass_encoder4011 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4020,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder402.copyTextureToTexture(
        {
            texture: texture402
        },
        {
            texture: texture401
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query400
    });
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    device40.queue.writeTexture({ texture: texture401 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder4010.insertDebugMarker("marker");
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: query400
    });
    render_pass_encoder4011.executeBundles([])
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder4011.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder4030.insertDebugMarker("marker");
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    render_pass_encoder4020.insertDebugMarker("marker");
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder4031 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: query400
    });
    
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    device40.queue.writeTexture({ texture: texture402 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.popDebugGroup();
    const render_pass_encoder4021 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4020,
            },
        ],
        occlusionQuerySet: query401
    });
    command_encoder404.copyBufferToBuffer(
        buffer401,
        0,
        buffer401,
        0,
        400
    );
    
    
    render_pass_encoder4011.pushDebugGroup("group_marker");
    
    
    const render_pass_encoder4050 = command_encoder405.beginRenderPass({
        label: "render_pass_encoder4050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder4040 = command_encoder404.beginRenderPass({
        label: "render_pass_encoder4040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4020,
            },
        ],
        occlusionQuerySet: undefined
    });
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    render_pass_encoder0011.insertDebugMarker("marker");
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    query400.destroy()
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    query004.destroy()
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    compute_pass_encoder0010.setPipeline(compute_pipeline000);
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder4030.setStencilReference(1);
    const render_pass_encoder4060 = command_encoder406.beginRenderPass({
        label: "render_pass_encoder4060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4030,
            },
        ],
        occlusionQuerySet: query400
    });
    
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder4010.insertDebugMarker("marker");
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0001.executeBundles([])
    render_pass_encoder4011.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    command_encoder402.copyBufferToTexture(
        {
            buffer: buffer400
        },
        {
            texture: texture404
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    const texture_view4040 = texture404.createView({ label: "texture_view4040" });
    
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view3014 = texture301.createView({ label: "texture_view3014" });
    render_pass_encoder0001.setStencilReference(1);
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder404.copyTextureToTexture(
        {
            texture: texture403
        },
        {
            texture: texture404
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device40.queue.writeTexture({ texture: texture403 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4021.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    const texture_view3022 = texture302.createView({ label: "texture_view3022" });
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder4011.insertDebugMarker("marker");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.queue.writeTexture({ texture: texture004 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const render_pass_encoder4061 = command_encoder406.beginRenderPass({
        label: "render_pass_encoder4061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query400
    });
    device40.queue.writeTexture({ texture: texture402 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pass_encoder4032 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4032",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4030,
            },
        ],
        occlusionQuerySet: undefined
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query005.destroy()
    const render_pass_encoder4041 = command_encoder404.beginRenderPass({
        label: "render_pass_encoder4041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4030,
            },
        ],
        occlusionQuerySet: query400
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const texture_view3015 = texture301.createView({ label: "texture_view3015" });
    render_pass_encoder4031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0011.setStencilReference(1);
    render_pass_encoder4030.pushDebugGroup("group_marker");
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout302]
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    render_pass_encoder4061.executeBundles([])
    render_pass_encoder4021.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder4010.insertDebugMarker("marker")
    render_pass_encoder0011.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder4060.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4030.executeBundles([])
    render_pass_encoder4031.executeBundles([render_bundle_encoder400, ])
    device40.queue.writeTexture({ texture: texture403 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder4021.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "bgra8unorm",
        dimension: "2d"
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const texture_view4041 = texture404.createView({ label: "texture_view4041" });
    compute_pass_encoder0010.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    render_pass_encoder4061.pushDebugGroup("group_marker");
    
    render_bundle_encoder402.insertDebugMarker("marker");
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder4010.executeBundles([render_bundle_encoder401, ])
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    device00.queue.writeTexture({ texture: texture004 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder4060.setStencilReference(1);
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const command_buffer200 = command_encoder200.finish();
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder300.popDebugGroup();
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4021.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    render_pass_encoder4060.setStencilReference(1);
    command_encoder403.copyBufferToTexture(
        {
            buffer: buffer401
        },
        {
            texture: texture403
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0011.insertDebugMarker("marker");
    render_pass_encoder4041.setScissorRect(0, 0, texture403.width / 2, texture403.height / 2);
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder4021.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    query300.destroy()
    device00.queue.writeTexture({ texture: texture004 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_buffer402 = command_encoder402.finish();
    
    const texture_view4031 = texture403.createView({ label: "texture_view4031" });
    
    device40.queue.writeTexture({ texture: texture401 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    render_pass_encoder4010.executeBundles([])
    device00.queue.writeTexture({ texture: texture004 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4041.executeBundles([])
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder4040.setStencilReference(1);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_pass_encoder4011.insertDebugMarker("marker");
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder4021.executeBundles([])
    query300.destroy()
    render_pass_encoder4040.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0000.executeBundles([])
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba32float",
        dimension: "2d"
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder4050.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    device40.pushErrorScope("out-of-memory");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_pass_encoder4032.executeBundles([])
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3023 = texture302.createView({ label: "texture_view3023" });
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder4032.setScissorRect(0, 0, texture403.width / 2, texture403.height / 2);
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder4062 = command_encoder406.beginRenderPass({
        label: "render_pass_encoder4062",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4020,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder401.copyBufferToTexture(
        {
            buffer: buffer400
        },
        {
            texture: texture404
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const bind_group_layout005 = device00.createBindGroupLayout({ 
        label: "bind_group_layout005",
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
    device40.queue.writeTexture({ texture: texture403 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3024 = texture302.createView({ label: "texture_view3024" });
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder4062.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder4051 = command_encoder405.beginRenderPass({
        label: "render_pass_encoder4051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4031,
            },
        ],
        occlusionQuerySet: query400
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
    render_pass_encoder0001.pushDebugGroup("group_marker");
    device40.queue.submit([command_buffer402, ]);
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    device40.queue.writeTexture({ texture: texture403 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0010.popDebugGroup()
    
    render_pass_encoder4010.executeBundles([render_bundle_encoder402, ])
    
    render_pass_encoder4040.setStencilReference(1);
    render_pass_encoder4061.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture004 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture005 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.submit([]);
    device20.queue.submit([command_buffer200, ]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer405 = command_encoder405.finish();
    device40.queue.submit([command_buffer405, ]);
    render_pass_encoder0000.endOcclusionQuery()
    device30.queue.submit([]);
    command_encoder001.popDebugGroup()
    render_pass_encoder4041.endOcclusionQuery()
    device40.queue.submit([command_buffer402, ]);
}