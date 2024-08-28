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
    const array0 = new Float32Array([0.0, 1.0, -0.75, -0.75, 0.75, 1.0, -0.75, -0.5, 0.75, -0.25, -0.25, -1.0, -0.75, -0.5, -1.0, -0.75, 1.0, -0.25, -0.25, -0.75, -0.75, 0.5, -0.5, 0.25, 0.75, 1.0, -1.0, 0.25, -1.0, 1.0, 0.0, -0.25, 0.75, 1.0, -0.5, -0.75, -0.75, 0.0, 1.0, -1.0, 0.25, -0.75, -0.75, 0.25, -0.75, 0.25, -0.75, 0.75, -0.75, -0.25, -0.75, -0.5, 0.5, 0.25, 0.0, 0.25, -0.25, 0.5, 0.75, 0.0, 0.0, -0.75, 0.5, -1.0, -0.5, -0.75, -0.75, -0.75, -0.25, 0.75, -1.0, -0.5, 0.5, 0.75, -0.25, 0.0, -0.75, -0.5, 1.0, -0.5, -0.75, 0.25, 0.75, 0.0, 0.25, 0.0, 0.25, 1.0, 0.5, -0.25, -0.5, 0.25, -1.0, 0.0, 0.0, -0.25, -0.5, -0.5, -1.0, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([0.0, 0.0, 0.5, 0.5, -1.0, 1.0, -0.25, 0.5, 0.0, 0.25, 0.0, 0.25, -0.5, -0.75, 0.25, 1.0, -0.25, 0.75, 0.0, 0.0, -1.0, -1.0, 0.5, -0.75, -0.25, -0.5, 0.75, 0.25, -0.25, 0.25, 1.0, 1.0, 0.0, -0.25, 0.5, 0.5, 1.0, 0.5, -0.25, 0.5, -1.0, 0.0, -0.25, -0.75, 0.25, 0.5, 0.5, 0.0, -1.0, 0.0, -1.0, 0.5, -0.25, 0.0, -0.75, -0.75, -1.0, 0.25, 0.25, 0.0, -0.75, 0.25, -1.0, -0.75, -0.75, -1.0, -0.25, 0.25, -0.75, 0.0, -1.0, 0.75, 1.0, -0.5, 0.0, -0.5, 0.5, -0.75, 0.75, 0.25, 0.5, 0.5, 1.0, 0.0, -0.75, 0.5, -0.75, 0.0, -1.0, 0.75, 0.5, -0.25, 0.5, 0.75, 0.25, 1.0, -0.5, -0.25, -0.5, 0.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device00.pushErrorScope("internal");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array2 = new Float32Array([0.25, 0.0, 0.0, 1.0, 0.0, -1.0, -0.25, 1.0, -0.25, 0.5, -0.75, 1.0, 0.5, -0.25, 0.75, -0.5, 0.0, 0.75, 1.0, 0.0, 0.75, -0.25, 0.0, -0.5, -1.0, -1.0, 0.0, 0.75, 1.0, 1.0, -0.75, 0.75, 0.0, 0.0, -0.25, 0.0, 0.5, -1.0, -0.25, 0.5, -0.5, 0.25, -0.75, -0.25, -0.5, 0.5, 0.75, 0.0, -1.0, -0.5, 0.5, 0.0, 0.75, 0.75, -0.25, 0.5, -1.0, 0.5, 0.75, 0.75, -1.0, 1.0, 0.5, -0.25, 0.0, 0.75, -0.5, 0.0, 0.5, -0.75, 0.75, -0.5, -1.0, 0.5, -0.25, 0.75, 0.25, 0.0, 0.0, 0.25, 0.5, 0.0, 0.75, -0.75, 0.75, -1.0, -0.25, -0.25, -1.0, -0.5, 0.0, -0.75, 0.25, -0.25, -1.0, 0.5, 0.5, -0.5, -0.25, -0.5, ]);
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array3 = new Float32Array([0.75, -0.75, 0.25, -0.75, -0.25, 1.0, 0.75, 0.25, -0.25, -0.75, 1.0, 0.5, -0.5, 0.5, 0.75, -1.0, -0.5, 0.5, 0.75, 0.25, -1.0, 0.75, 0.75, -0.75, 0.5, -0.25, 0.75, 0.0, 0.25, -0.25, 1.0, 0.25, 0.0, 0.0, -0.25, -1.0, 0.5, 0.25, -0.5, 0.0, -0.25, 0.75, 0.75, 0.5, 1.0, 0.25, -0.25, -0.25, 0.0, 0.5, 0.5, -0.75, -0.25, 0.75, -0.5, 0.75, 0.0, 0.5, 0.25, 1.0, 0.75, -1.0, -0.75, -0.25, -1.0, 0.5, -0.25, 0.0, -0.25, 0.0, -0.25, -1.0, 0.75, -0.75, 1.0, 1.0, -0.5, 0.75, 0.25, 0.75, -0.25, -0.75, 0.25, -0.75, 0.25, 0.5, 0.5, 0.25, -0.5, 0.0, 0.25, -1.0, -1.0, 0.75, 0.0, 0.5, 0.5, 0.75, 0.5, 0.0, ]);
    const array4 = new Float32Array([0.5, 1.0, -1.0, 1.0, -0.5, 0.5, 0.5, 0.25, -0.5, 1.0, 0.25, -0.75, -1.0, 0.75, 1.0, 0.25, 0.0, 0.75, -0.5, 0.25, -1.0, 0.25, 0.25, 0.25, 0.75, 0.5, -1.0, 0.25, 0.75, 0.0, -0.5, 0.75, -0.5, 0.75, -0.5, -0.75, -0.75, 0.25, 0.0, 0.25, 0.25, 1.0, 0.25, -1.0, 0.25, -1.0, -1.0, 1.0, 1.0, 0.5, -1.0, -0.25, 1.0, -1.0, 0.75, -0.75, -0.75, -0.5, 0.0, -0.75, -0.75, 0.75, -0.25, 0.25, 0.25, 0.75, -1.0, -0.75, 0.5, 0.5, -0.75, 0.25, -0.5, -0.75, 0.75, -0.75, 0.75, -0.75, -0.5, -1.0, -1.0, -0.5, -0.5, 0.0, 1.0, -0.5, 0.0, -0.5, 0.25, 1.0, 0.5, -0.75, 0.0, -0.5, -0.5, 0.75, 1.0, -1.0, -0.75, -1.0, ]);
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array5 = new Float32Array([1.0, -1.0, -0.5, -0.75, 0.75, -0.5, 0.75, -0.25, 0.5, 1.0, -0.25, 0.75, 0.5, 0.25, -0.25, 0.25, -0.5, 1.0, -1.0, 1.0, -1.0, 0.5, -0.75, -0.75, 0.5, -0.25, 0.0, 0.25, 0.0, -0.5, 0.0, 0.75, 0.25, -0.25, -1.0, -0.5, -0.25, 0.0, -0.25, -0.75, 1.0, 1.0, 0.75, 0.5, -1.0, -0.25, -0.75, 0.75, 0.75, -0.75, 0.0, 0.25, -0.5, 0.0, -0.75, 0.0, -0.25, 0.75, 0.75, 0.25, -0.25, -0.5, -0.75, 0.75, -1.0, -1.0, -0.25, 0.0, -0.75, 1.0, 0.0, 0.5, 1.0, 1.0, 1.0, -1.0, 0.25, -0.25, 0.0, -0.25, -0.25, 0.75, 0.25, 0.5, -0.25, 1.0, 0.5, 0.75, 0.75, -1.0, 0.0, 1.0, 0.75, 0.5, 1.0, 0.0, -0.25, -1.0, 0.5, -0.75, ]);
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.pushErrorScope("internal");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    device00.queue.writeTexture({ texture: texture000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const array6 = new Float32Array([-0.25, -1.0, 0.25, 0.0, -1.0, 1.0, 0.75, 0.5, 0.0, 0.0, 0.75, 0.75, 0.5, 0.25, -0.25, -0.75, 0.5, -0.75, 0.0, 0.75, -0.75, 0.5, 0.25, 0.25, 0.75, 1.0, 0.75, 0.0, 0.5, -0.5, -0.75, 1.0, 0.25, -0.25, 0.0, 0.25, 1.0, 0.25, -0.5, 1.0, 0.25, 0.5, 0.25, 1.0, 0.75, 0.5, 0.75, 0.5, 0.25, 0.75, 1.0, 0.75, -1.0, -0.25, 0.25, 0.25, 0.5, -1.0, -1.0, -0.25, 0.25, 0.0, 0.25, -0.5, -0.75, -0.25, -0.25, 0.0, 0.75, -0.25, -0.25, 0.75, -1.0, -1.0, -1.0, -0.5, -0.25, 1.0, 0.0, -1.0, -0.5, 0.5, -0.25, -0.75, -0.25, 0.75, -0.5, -0.5, 0.0, -0.5, -0.75, -1.0, -1.0, 0.75, -0.75, -0.5, 0.0, 0.5, 1.0, -0.5, ]);
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
        occlusionQuerySet: query000
    });
    render_pass_encoder0000.beginOcclusionQuery(0)
    render_pass_encoder0000.insertDebugMarker("marker");
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
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.pushErrorScope("validation");
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.queue.writeTexture({ texture: texture000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0000.endOcclusionQuery()
    
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0000.executeBundles([])
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device00.queue.writeTexture({ texture: texture000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0000.executeBundles([])
    device00.queue.writeTexture({ texture: texture000 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array7 = new Float32Array([1.0, 1.0, -0.75, 0.25, 0.25, -0.5, -0.25, 1.0, -0.25, -0.25, -1.0, -0.25, -0.5, -0.5, -1.0, -0.5, 0.25, -1.0, 0.75, 1.0, 0.0, -0.5, -0.75, 0.5, 0.5, 0.0, 0.0, 0.75, 0.25, -0.25, -0.75, 0.5, 0.0, 0.75, -0.25, 0.5, 0.5, 1.0, 0.0, -0.25, 0.25, 0.25, -1.0, 1.0, -0.5, 0.0, -0.5, -1.0, 0.25, 1.0, 0.75, -1.0, 0.75, 0.25, 0.75, 0.5, 0.25, 1.0, 0.25, -1.0, 0.5, -0.75, 0.25, 0.25, 0.25, -0.5, 0.0, 0.75, -1.0, -0.75, 0.75, -0.25, -0.5, 0.75, -0.25, -0.75, -1.0, -0.75, 0.0, -1.0, -0.25, -0.5, -0.25, -0.25, -0.25, 0.25, -0.25, 0.75, 0.0, -1.0, -0.25, -0.75, -0.75, -0.5, -0.75, 0.75, 0.5, 0.75, 0.5, -1.0, ]);
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    render_pass_encoder0000.beginOcclusionQuery(1)
    render_pass_encoder0000.executeBundles([])
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0000.endOcclusionQuery()
    const array8 = new Float32Array([-0.75, 0.25, 1.0, -0.25, 0.5, -0.25, -0.5, -0.75, 1.0, -0.5, -0.25, 0.0, -0.25, 1.0, -0.25, 0.0, 1.0, -1.0, -0.25, -0.5, 0.0, 1.0, -1.0, 0.25, -1.0, -1.0, 0.0, 0.25, -0.75, 1.0, 1.0, -0.75, -1.0, -0.25, 1.0, 0.75, -1.0, 1.0, 0.0, 0.75, -1.0, 0.25, 0.25, 0.25, -1.0, -1.0, -0.5, 0.75, -1.0, -0.75, 0.0, -1.0, 0.25, -0.5, -1.0, 1.0, 0.75, -1.0, 0.0, -0.75, -0.5, 0.75, -0.5, 0.25, 1.0, 0.5, -1.0, 0.75, 0.25, 0.5, 0.0, 1.0, 0.0, -0.25, 0.0, 0.5, -0.5, 0.5, 0.0, 0.25, -0.25, -0.25, 1.0, 1.0, 0.75, 1.0, -0.25, -1.0, -1.0, -0.5, 0.25, -1.0, 1.0, -1.0, 0.5, 0.25, 0.5, 0.5, 1.0, -1.0, ]);
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout000]
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const array9 = new Float32Array([0.0, 0.25, 1.0, -0.25, -0.5, 1.0, -0.5, 1.0, 0.0, -0.5, -0.75, 0.5, -0.25, -0.75, 1.0, 0.0, -0.5, -0.5, 0.25, 0.25, 0.5, -0.25, 1.0, -0.75, 1.0, 0.25, 0.5, 1.0, 1.0, -1.0, -0.75, 0.25, 0.75, -0.5, 0.0, -0.5, 0.75, -1.0, 0.5, 1.0, 1.0, 0.0, 0.25, 0.75, 0.0, 0.0, 0.75, 0.75, 0.75, 0.0, 0.75, -0.5, 0.0, -0.75, -1.0, -1.0, 0.0, 0.25, 1.0, 1.0, 0.0, -0.5, -0.25, 0.0, 0.5, 0.25, 0.75, -0.25, -0.75, -0.25, 0.25, 1.0, 0.75, 1.0, -0.25, -0.5, 0.25, 1.0, -0.25, 0.5, -1.0, 0.75, 0.0, 0.25, 0.0, 0.0, -0.25, -1.0, 0.25, 0.75, -0.25, 0.5, -1.0, 0.75, 1.0, 0.5, 0.25, 1.0, 0.5, -0.75, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0000.beginOcclusionQuery(2)
    render_pass_encoder0000.endOcclusionQuery()
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
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
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
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
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    const array10 = new Float32Array([0.75, 0.75, -1.0, -0.25, -0.5, 0.5, 0.5, -0.75, 1.0, 0.0, 0.75, 0.5, -0.5, 0.5, 0.0, 0.5, 0.75, 0.5, 0.75, 0.0, 0.25, -1.0, -0.25, 0.25, -0.25, -1.0, 1.0, -0.75, 1.0, -1.0, -0.75, 1.0, -0.5, 0.25, 0.25, -0.5, -0.25, 0.5, -1.0, -1.0, 0.0, 0.25, 0.75, 0.75, 0.5, -0.75, 1.0, 0.75, 0.5, 0.25, 0.75, 0.25, 0.25, 0.25, -0.25, -1.0, -0.75, 0.0, -0.25, 0.5, 0.0, 0.5, -0.5, 0.0, -1.0, -0.25, -0.5, -0.25, 1.0, -1.0, 0.25, 0.0, 0.5, 0.25, 0.75, 0.5, -0.5, -0.25, 0.5, -1.0, -0.75, 0.25, -0.25, -0.5, -0.25, 0.75, -1.0, -0.75, -0.75, -0.25, 1.0, -1.0, -1.0, 0.75, -0.25, -0.75, 0.5, -0.5, -0.75, 0.25, ]);
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
        occlusionQuerySet: query000
    });
    render_pass_encoder0010.executeBundles([])
    render_pass_encoder0020.executeBundles([])
    const bind_group_layout006 = device00.createBindGroupLayout({ 
        label: "bind_group_layout006",
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0020.executeBundles([])
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_pass_encoder0000.executeBundles([])
    device00.queue.writeTexture({ texture: texture000 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const array11 = new Float32Array([-1.0, 0.5, -0.5, 0.5, 0.0, -0.25, -1.0, 0.75, -0.75, 0.25, -1.0, -0.5, -0.5, 0.0, -0.5, 0.25, -0.25, -0.75, -0.75, 0.5, 0.25, -0.5, 0.0, 0.0, 0.75, 0.5, -0.75, 0.75, 0.0, -1.0, 0.5, -0.25, -0.75, -0.75, 0.25, -0.75, 0.25, 0.5, -0.25, 0.25, -1.0, 1.0, 0.5, 1.0, 1.0, -0.25, 0.25, -0.5, 1.0, -0.25, -0.75, -0.75, 1.0, -0.5, -1.0, 0.75, 0.5, -0.25, -0.25, 0.25, 0.25, -0.75, 0.5, 0.0, -0.25, 1.0, -0.25, 0.25, 0.75, 1.0, -0.25, -1.0, -0.25, 0.5, -0.75, 0.0, -0.5, -0.5, -1.0, 0.75, -1.0, 0.75, -0.25, -0.25, -0.5, -0.75, 0.25, -0.75, 0.75, 1.0, -0.5, -0.5, -0.75, 0.0, -0.75, -0.5, -1.0, 0.0, -0.25, 1.0, ]);
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query001
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0000.beginOcclusionQuery(3)
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.executeBundles([])
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.queue.writeTexture({ texture: texture000 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device10.pushErrorScope("validation");
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout002]
    });
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query000
    });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture000 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0002,
            },
        ],
        occlusionQuerySet: undefined
    });
    device00.queue.writeTexture({ texture: texture002 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0050.executeBundles([])
    device00.queue.writeTexture({ texture: texture000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.insertDebugMarker("marker");
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
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
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
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
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
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0050.beginOcclusionQuery(4)
    render_pass_encoder0050.executeBundles([])
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    device00.queue.writeTexture({ texture: texture000 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0050.endOcclusionQuery()
    device00.queue.writeTexture({ texture: texture000 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const bind_group_layout007 = device00.createBindGroupLayout({ 
        label: "bind_group_layout007",
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
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device00.queue.writeTexture({ texture: texture000 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0050.executeBundles([])
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
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
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.insertDebugMarker("marker");
    
    render_pass_encoder0040.executeBundles([])
    render_pass_encoder0020.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture000 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeTexture({ texture: texture002 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.beginOcclusionQuery(5)
    render_pass_encoder0050.executeBundles([])
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout006]
    });
    render_pass_encoder0000.insertDebugMarker("marker");
    device00.pushErrorScope("validation");
    device00.queue.writeTexture({ texture: texture000 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0060.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout006]
    });
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_pass_encoder0000.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture000 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    device00.queue.writeTexture({ texture: texture002 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0070.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture002 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.pushErrorScope("out-of-memory");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
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
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder0040.insertDebugMarker("marker");
    const array12 = new Float32Array([0.25, 0.25, -0.5, -0.5, 0.25, 0.25, 0.75, -0.25, 0.5, -0.5, 0.25, 0.0, -1.0, 0.5, 0.5, 1.0, -0.25, -1.0, 0.0, 0.75, 0.5, 0.75, 0.5, 1.0, 0.5, -0.75, 0.0, -0.25, 0.75, 1.0, -0.5, -1.0, -0.5, -0.5, 1.0, 1.0, 0.5, -0.5, 0.5, -0.5, -0.75, -1.0, -0.25, -0.5, 0.0, 0.5, 1.0, -0.75, 0.25, 1.0, 0.5, -0.25, 0.75, 1.0, 0.0, 1.0, -0.25, 1.0, 0.5, 0.75, 0.0, 0.75, 0.0, -0.5, -1.0, -0.25, 1.0, -0.5, 0.5, 0.75, -1.0, 1.0, 0.25, -1.0, -1.0, -1.0, -1.0, 0.75, -1.0, 0.0, 0.0, 0.25, -1.0, -0.5, -1.0, 0.25, -0.25, 0.25, 0.25, -1.0, 0.25, -0.5, 1.0, -0.5, -0.75, -0.5, -0.5, -0.25, -0.75, 0.75, ]);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const bind_group_layout008 = device00.createBindGroupLayout({ 
        label: "bind_group_layout008",
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
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0050.beginOcclusionQuery(6)
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeTexture({ texture: texture000 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout001]
    });
    const bind_group_layout009 = device00.createBindGroupLayout({ 
        label: "bind_group_layout009",
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
    render_pass_encoder0030.beginOcclusionQuery(0)
    render_pass_encoder0060.executeBundles([])
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout102]
    });
    device00.queue.writeTexture({ texture: texture002 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    
    
    render_pass_encoder0020.insertDebugMarker("marker");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    render_pass_encoder0030.insertDebugMarker("marker");
    
    const bind_group_layout0010 = device00.createBindGroupLayout({ 
        label: "bind_group_layout0010",
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
    
    render_pass_encoder0060.insertDebugMarker("marker");
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const pipeline_layout0020 = device00.createPipelineLayout({ 
        label: "pipeline_layout0020",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0040.executeBundles([])
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0030.endOcclusionQuery()
    device00.queue.writeTexture({ texture: texture000 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    render_pass_encoder0040.executeBundles([])
    
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0050.insertDebugMarker("marker");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture000 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.executeBundles([])
    
    const pipeline_layout0021 = device00.createPipelineLayout({ 
        label: "pipeline_layout0021",
        bindGroupLayouts: [bind_group_layout009]
    });
    
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout0022 = device00.createPipelineLayout({ 
        label: "pipeline_layout0022",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0060.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture000 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeTexture({ texture: texture002 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0050.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0060.beginOcclusionQuery(8)
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder001.insertDebugMarker("marker");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    
    const pipeline_layout0023 = device00.createPipelineLayout({ 
        label: "pipeline_layout0023",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_pass_encoder0080 = command_encoder008.beginRenderPass({
        label: "render_pass_encoder0080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query000
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0030.executeBundles([])
    render_pass_encoder0030.beginOcclusionQuery(0)
    
    render_pass_encoder0020.executeBundles([])
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout103]
    });
    device00.queue.writeTexture({ texture: texture002 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder0000.insertDebugMarker("marker");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    device00.queue.writeTexture({ texture: texture000 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.endOcclusionQuery()
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder0040.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture002 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const pipeline_layout0024 = device00.createPipelineLayout({ 
        label: "pipeline_layout0024",
        bindGroupLayouts: [bind_group_layout006]
    });
    render_pass_encoder0080.beginOcclusionQuery(10)
    
    device00.queue.writeTexture({ texture: texture002 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture002 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0080.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.endOcclusionQuery()
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout0025 = device00.createPipelineLayout({ 
        label: "pipeline_layout0025",
        bindGroupLayouts: [bind_group_layout009]
    });
    render_pass_encoder0080.executeBundles([])
    
    render_pass_encoder0000.executeBundles([])
    render_pass_encoder0020.beginOcclusionQuery(11)
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout0026 = device00.createPipelineLayout({ 
        label: "pipeline_layout0026",
        bindGroupLayouts: [bind_group_layout002]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder0020.endOcclusionQuery()
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
    
    device00.pushErrorScope("internal");
    
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    const array13 = new Float32Array([0.25, -1.0, -0.75, 0.25, 1.0, -0.25, 0.75, -0.25, 0.5, 0.25, -1.0, 0.75, -0.75, -0.5, -1.0, -0.5, 1.0, 0.5, -0.25, 0.75, -0.75, -1.0, 0.75, -0.75, 0.75, -0.75, 1.0, 0.25, 1.0, 0.75, 0.5, 1.0, 1.0, 0.0, 1.0, 0.75, 0.0, 0.25, -1.0, -0.25, 0.75, 0.0, -0.25, 0.75, -0.75, 0.0, 0.25, 1.0, -0.25, 0.5, -1.0, 1.0, 0.75, -0.5, -0.25, 0.0, 0.25, 0.75, -0.25, -0.25, -0.25, -0.75, -0.5, -1.0, 0.5, 0.5, 0.25, -0.75, 0.25, 0.25, 0.75, 0.75, -1.0, 1.0, 1.0, 0.75, 1.0, 0.0, 0.0, 1.0, -0.5, 1.0, 0.25, -1.0, -0.5, 0.5, 0.75, -1.0, 0.75, -1.0, 1.0, 0.0, 0.5, -0.25, 1.0, 0.5, 0.25, -0.5, -0.25, 0.25, ]);
    render_pass_encoder0060.insertDebugMarker("marker");
    render_pass_encoder0000.beginOcclusionQuery(12)
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const pipeline_layout0027 = device00.createPipelineLayout({ 
        label: "pipeline_layout0027",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout103]
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_pass_encoder0080.insertDebugMarker("marker");
    render_pass_encoder0080.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0080.executeBundles([])
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture000 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
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
    const pipeline_layout0028 = device00.createPipelineLayout({ 
        label: "pipeline_layout0028",
        bindGroupLayouts: [bind_group_layout006]
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.executeBundles([])
    render_pass_encoder0060.endOcclusionQuery()
    const pipeline_layout0029 = device00.createPipelineLayout({ 
        label: "pipeline_layout0029",
        bindGroupLayouts: [bind_group_layout001]
    });
    device00.queue.writeTexture({ texture: texture002 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout0030 = device00.createPipelineLayout({ 
        label: "pipeline_layout0030",
        bindGroupLayouts: [bind_group_layout006]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder2010.executeBundles([])
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0020.executeBundles([])
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0030.executeBundles([])
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    
    const pipeline_layout0031 = device00.createPipelineLayout({ 
        label: "pipeline_layout0031",
        bindGroupLayouts: [bind_group_layout008]
    });
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0080.endOcclusionQuery()
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("internal");
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout0032 = device00.createPipelineLayout({ 
        label: "pipeline_layout0032",
        bindGroupLayouts: [bind_group_layout004]
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_bundle_encoder002.insertDebugMarker("marker");
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    render_pass_encoder0030.executeBundles([])
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    render_pass_encoder2010.executeBundles([])
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const pipeline_layout0033 = device00.createPipelineLayout({ 
        label: "pipeline_layout0033",
        bindGroupLayouts: [bind_group_layout008]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout0034 = device00.createPipelineLayout({ 
        label: "pipeline_layout0034",
        bindGroupLayouts: [bind_group_layout002]
    });
    device10.pushErrorScope("internal");
    
    render_pass_encoder0050.endOcclusionQuery()
    device00.queue.writeTexture({ texture: texture000 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    device00.queue.writeTexture({ texture: texture002 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout0035 = device00.createPipelineLayout({ 
        label: "pipeline_layout0035",
        bindGroupLayouts: [bind_group_layout008]
    });
    device00.queue.writeTexture({ texture: texture000 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0030.executeBundles([])
    render_pass_encoder0060.insertDebugMarker("marker");
    const texture_view0004 = texture000.createView({ label: "texture_view0004" });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    render_pass_encoder0080.executeBundles([])
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const pipeline_layout0036 = device00.createPipelineLayout({ 
        label: "pipeline_layout0036",
        bindGroupLayouts: [bind_group_layout002]
    });
    const pipeline_layout0037 = device00.createPipelineLayout({ 
        label: "pipeline_layout0037",
        bindGroupLayouts: [bind_group_layout009]
    });
    compute_pass_encoder1010.popDebugGroup()
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder2010.executeBundles([])
    const pipeline_layout0038 = device00.createPipelineLayout({ 
        label: "pipeline_layout0038",
        bindGroupLayouts: [bind_group_layout009]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1030.popDebugGroup()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder0030.endOcclusionQuery()
    const command_buffer104 = command_encoder104.finish();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.popDebugGroup()
}