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
    
    const array0 = new Float32Array([0.25, 0.25, -1.0, 0.75, -0.75, -0.75, 0.0, -0.5, 1.0, -0.25, -0.5, 0.5, 0.5, -0.25, -0.5, 0.0, 0.75, -0.25, 0.5, 0.25, -0.25, -0.25, 0.75, 0.75, 0.0, -0.75, 0.0, 0.25, 1.0, 1.0, 0.75, 1.0, -0.75, 0.75, -0.75, 0.25, -0.25, 0.0, 0.75, 0.5, -0.75, -0.75, 1.0, -1.0, -0.5, 0.0, 0.75, 0.0, 0.5, -1.0, 0.0, 0.5, -0.75, 0.0, -1.0, 0.25, -0.5, 0.0, 0.0, -1.0, -1.0, 0.0, -1.0, -0.5, -0.5, -1.0, 0.25, -0.25, 0.0, -0.5, 0.25, 0.75, -0.75, 1.0, -0.5, -0.25, -0.75, 1.0, -0.25, -1.0, 0.75, 1.0, 0.0, -0.5, 1.0, -1.0, 1.0, 0.25, 0.75, 0.0, -0.5, 0.0, 0.5, 0.75, -0.75, 0.25, -0.5, 1.0, 0.5, 0.25, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array1 = new Float32Array([-0.25, 0.75, 0.25, -0.5, -0.5, -0.75, -0.5, 0.0, -0.75, 0.0, -1.0, -0.25, -0.75, -0.75, -1.0, -0.25, 1.0, -0.25, -0.5, 0.25, 0.0, 0.0, -0.5, -0.25, 0.75, 1.0, 0.0, 1.0, -0.75, 0.0, 0.25, 0.25, 0.75, -0.5, 0.25, 0.75, 0.5, -0.75, -0.5, 1.0, 0.0, 0.75, -0.25, 0.25, 0.75, -0.75, -0.25, -1.0, -0.5, 0.0, 1.0, 1.0, -0.25, 0.75, 1.0, -1.0, -1.0, -1.0, -0.25, 0.0, 0.75, 0.5, -0.25, 0.5, 0.0, 0.0, 1.0, 1.0, 0.0, 0.0, -0.5, -1.0, 0.75, 0.0, 0.25, 0.25, 1.0, -0.5, 0.5, -0.5, -0.25, 1.0, 0.0, -0.5, -0.25, -0.75, 0.5, -0.25, -1.0, 1.0, -0.25, 0.0, 0.0, 0.5, 0.25, 0.5, 0.5, -0.75, -1.0, -1.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array2 = new Float32Array([0.25, -1.0, -1.0, 0.25, 1.0, 0.75, -0.25, -1.0, 0.75, 0.25, 1.0, 0.75, -0.75, 1.0, -0.5, 0.75, -0.5, 1.0, 0.75, 0.0, -0.25, 1.0, -0.5, 0.0, 0.75, -0.25, 0.75, 0.75, 0.5, -0.75, -1.0, 0.5, 1.0, -0.25, -1.0, 0.0, 0.25, 0.5, -0.25, -0.75, 0.0, -1.0, 0.5, 1.0, -0.5, -0.5, 0.75, -1.0, 0.0, 0.25, -0.5, -0.5, 0.5, -0.5, 1.0, -0.75, 0.5, -0.5, 1.0, 0.5, -0.5, -0.5, -0.75, -1.0, -1.0, -1.0, 0.0, 0.75, -0.75, -0.5, 0.25, 0.75, -0.5, 0.5, 0.5, -0.75, 0.5, -0.5, -0.75, 0.25, 1.0, 0.0, 1.0, 1.0, -0.5, -0.25, 0.5, -1.0, 0.75, -0.25, 0.75, 0.75, 0.0, 0.25, -1.0, 0.0, 1.0, 1.0, 1.0, -1.0, ]);
    
    
    
    const array3 = new Float32Array([-0.25, 0.25, -0.25, 0.25, -0.5, 0.25, 0.5, 0.0, -1.0, 0.75, 0.5, 0.25, -0.5, 0.0, 1.0, -0.75, -0.75, 0.5, 1.0, -0.25, 0.25, -0.25, 1.0, -0.75, -0.75, -0.5, 1.0, 0.0, 0.0, 1.0, -0.25, 0.25, -1.0, 0.5, -0.25, -0.75, -0.25, 1.0, -0.75, -0.75, 1.0, 1.0, -0.75, -0.75, -0.5, -0.5, -0.5, -1.0, -0.5, 0.5, -0.5, 0.5, 0.25, 0.5, -0.5, 0.5, 0.75, 1.0, -0.25, -0.25, 0.25, -0.75, 0.0, 0.75, -1.0, -0.5, 1.0, -0.25, 0.25, -0.75, -0.25, -0.5, 0.25, -0.25, -0.25, -1.0, 0.0, 0.75, -0.25, -0.5, 0.5, -0.25, -0.5, -1.0, -0.75, -0.75, -0.75, -1.0, 0.5, -0.25, -0.25, 1.0, 0.25, 0.5, 0.25, -0.5, 0.0, -0.25, -0.75, -0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    command_encoder000.pushDebugGroup("mygroupmarker")
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    command_encoder001.insertDebugMarker("mymarker");
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.pushErrorScope("out-of-memory");
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder001.insertDebugMarker("mymarker");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    command_encoder001.insertDebugMarker("mymarker");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    compute_pass_encoder0000.popDebugGroup()
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    buffer001.destroy()
    
    device10.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
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
    command_encoder001.insertDebugMarker("mymarker");
    const array4 = new Float32Array([0.0, 1.0, -0.75, 0.5, 1.0, 0.0, 0.0, 0.75, 0.0, 0.0, -1.0, -1.0, 0.0, 0.0, 0.0, 0.0, -1.0, -0.75, -0.5, 1.0, 1.0, 0.25, 1.0, -0.5, 0.0, 1.0, -0.25, 0.5, 0.75, -1.0, 0.0, -1.0, 0.75, 0.5, -0.75, -0.5, -0.5, 0.75, -1.0, 0.5, 1.0, -0.5, 1.0, 0.0, 0.25, -0.25, 0.75, -0.75, 0.0, 0.25, -0.5, -0.25, 0.75, 0.0, -0.5, 0.25, -0.5, 0.5, 0.0, 1.0, 0.0, 0.75, 0.0, -0.25, 0.5, -0.5, 1.0, 1.0, -1.0, 0.0, 0.0, 0.25, 0.5, 1.0, -0.5, 0.75, -1.0, -0.25, -1.0, -0.25, -0.75, 0.75, 0.0, -0.75, 0.5, 1.0, 0.0, -1.0, 0.0, -1.0, -1.0, 0.5, 0.0, -0.75, -0.75, -0.5, -0.75, -0.25, 0.0, 1.0, ]);
    buffer000.destroy()
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    compute_pass_encoder0000.popDebugGroup()
    command_encoder001.insertDebugMarker("mymarker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    command_encoder001.insertDebugMarker("mymarker");
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const array5 = new Float32Array([1.0, -0.25, -0.25, 0.5, 1.0, 1.0, 0.75, -0.25, -0.5, -0.25, -0.25, 0.0, -0.25, -0.75, 0.25, 0.25, 0.0, 0.5, 0.5, -0.75, 0.0, -0.25, 1.0, 0.75, -0.25, 0.5, 0.75, 1.0, 1.0, -1.0, 0.25, 0.0, 0.5, 0.75, 0.0, 1.0, -0.25, 0.25, 1.0, -0.5, 0.25, -0.75, 0.5, -0.5, -0.75, 0.75, -0.25, 1.0, -0.5, -1.0, -0.75, 0.0, -1.0, -0.25, 1.0, 0.0, 0.25, 0.75, -0.5, 0.75, 0.5, 1.0, 0.0, -1.0, 0.75, 1.0, 0.0, -1.0, -1.0, 0.5, -0.25, 0.0, -1.0, -0.75, 0.0, 0.25, -0.75, 0.5, -0.75, 0.75, 0.5, -0.75, 0.5, -0.75, -0.75, -1.0, 0.0, 0.25, 0.75, -1.0, -0.5, 0.75, -0.5, -0.75, 0.0, -1.0, 1.0, -1.0, 0.5, -0.5, ]);
    texture000.destroy();
    texture001.destroy();
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    buffer002.destroy()
    
    
    
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    
    
    
    
    const array6 = new Float32Array([-0.5, 0.5, -1.0, 0.5, 0.0, -1.0, 0.5, 0.5, 0.5, -1.0, 1.0, 0.5, 0.5, 0.5, -0.25, -0.5, 0.5, 1.0, -0.5, 0.0, -0.75, 0.75, 0.75, -0.5, 0.75, 0.5, -0.75, -1.0, 0.5, 0.5, 1.0, 0.0, 0.75, -0.5, -1.0, -0.75, -0.25, -0.25, 0.5, 0.75, 0.0, 0.0, -0.75, 0.75, 0.25, -1.0, 1.0, 0.25, 1.0, 0.25, -0.75, 0.25, 0.5, -0.5, -1.0, -0.5, 0.0, 0.5, 0.75, 1.0, -0.5, 0.0, -0.75, 1.0, 1.0, -0.5, -0.5, 0.75, -0.75, -0.75, -0.75, 0.25, -0.25, 0.75, -0.75, 0.25, -0.25, 0.25, 0.25, 1.0, -1.0, -1.0, 0.25, 0.0, 0.25, 0.5, -0.75, -1.0, -0.25, 0.75, -0.75, 1.0, -0.25, 0.5, 1.0, -0.25, 1.0, 1.0, -0.25, -0.75, ]);
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
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
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    query001.destroy()
    texture005.destroy();
    
    device00.queue.writeTexture({ texture: texture003 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture002.destroy();
    
    
    device00.queue.writeTexture({ texture: texture003 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    const array7 = new Float32Array([-1.0, -0.25, 0.25, -0.5, 0.75, -1.0, 0.25, -0.25, 0.5, 0.75, 0.75, -1.0, -0.75, 0.75, 0.75, -0.5, 0.5, -0.25, 0.0, -0.25, 0.0, -0.75, -1.0, 0.5, -0.75, 0.5, 0.75, 0.0, -0.75, 0.5, 0.75, 0.5, 0.0, -1.0, 0.25, 0.5, 1.0, -0.75, 1.0, -0.25, 0.25, 0.0, 0.5, 0.5, -0.5, 1.0, -0.75, 0.0, -1.0, 0.0, -0.5, -0.5, -1.0, -0.5, 0.25, 1.0, 0.25, 1.0, 1.0, 1.0, -0.75, 0.5, -0.5, -1.0, 0.25, -0.75, -0.75, -0.25, -0.75, -0.5, 0.25, -0.25, -0.75, -1.0, 0.25, 0.0, 0.25, -0.5, -0.25, -0.75, -1.0, 0.75, -0.25, 0.0, -0.25, -0.25, -1.0, -0.75, -0.25, 1.0, -0.25, 0.25, -1.0, 0.75, -0.75, 0.25, -0.25, 1.0, -1.0, -0.25, ]);
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeTexture({ texture: texture004 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
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
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device00.queue.writeTexture({ texture: texture004 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture004 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    query000.destroy()
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    buffer003.destroy()
    device00.queue.writeTexture({ texture: texture003 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture004 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0010.executeBundles([])
    
    query000.destroy()
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    device00.queue.writeTexture({ texture: texture004 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.popDebugGroup();
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    device00.queue.writeTexture({ texture: texture004 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture003 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder0030.setStencilReference(1);
    
    
    
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device00.queue.writeTexture({ texture: texture004 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture004 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0010.executeBundles([])
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
    device00.queue.writeTexture({ texture: texture003 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.popDebugGroup();
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    render_pass_encoder0030.pushDebugGroup("group_marker");
    texture004.destroy();
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0030.setPipeline(render_pipeline001);
    device00.pushErrorScope("out-of-memory");
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    query002.destroy()
    query001.destroy()
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    buffer004.destroy()
    render_bundle_encoder000.setPipeline(render_pipeline001);
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.setPipeline(render_pipeline000);
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8uint",
        dimension: "2d"
    });
    compute_pass_encoder0000.popDebugGroup()
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    
    
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0010.insertDebugMarker("marker");
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: query000
    });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    
    
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

    render_pass_encoder0030.setBindGroup(0, bind_group000);
    render_pass_encoder0040.insertDebugMarker("marker");
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture003 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer005.destroy()
    
    render_pass_encoder0030.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture003 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    compute_pass_encoder0000.setPipeline(compute_pipeline002);
    const texture_view0060 = texture006.createView({ label: "texture_view0060" });
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setPipeline(render_pipeline002);
    compute_pass_encoder0020.insertDebugMarker("marker")
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    render_pass_encoder0040.setStencilReference(1);
    texture006.destroy();
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture007 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture_view0070 = texture007.createView({ label: "texture_view0070" });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    
    device00.queue.writeTexture({ texture: texture007 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.pushDebugGroup("group_marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    device00.queue.writeTexture({ texture: texture007 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    query001.destroy()
    render_bundle_encoder001.setPipeline(render_pipeline000);
    
    device00.queue.writeTexture({ texture: texture003 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0050.setPipeline(render_pipeline001);
    const texture_view0071 = texture007.createView({ label: "texture_view0071" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    compute_pass_encoder0020.setPipeline(compute_pipeline004);
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture007 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    device00.queue.writeTexture({ texture: texture007 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.insertDebugMarker("marker");
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    device00.queue.writeTexture({ texture: texture003 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    query002.destroy()
    device00.queue.writeTexture({ texture: texture007 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    render_pass_encoder0030.insertDebugMarker("marker");
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
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture007 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder0030.insertDebugMarker("marker");
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    render_pass_encoder0050.setStencilReference(1);
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0031,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    device00.queue.writeTexture({ texture: texture007 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture007 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
        vertex: {
            module: shader_module007,
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
            module: shader_module007,
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
    render_pass_encoder0060.setPipeline(render_pipeline003);
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer008,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group001);
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    texture007.destroy();
    texture003.destroy();
    query002.destroy()
    render_pass_encoder0030.setStencilReference(1);
    
    
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer009, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer009, 0);
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    query002.destroy()
    render_pass_encoder0050.pushDebugGroup("group_marker");
    
    device00.queue.writeBuffer(buffer009, 0, array3, 0, array3.length);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0030.setStencilReference(1);
    buffer006.destroy()
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
    render_pass_encoder0050.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer009, 0, array6, 0, array6.length);
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    render_pass_encoder0010.insertDebugMarker("marker");
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    command_encoder007.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder0070 = command_encoder007.beginComputePass({ label: "compute_pass_encoder0070" });
    render_pass_encoder0060.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    compute_pass_encoder0070.setPipeline(compute_pipeline003);
    buffer009.destroy()
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setStencilReference(1);
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    buffer007.destroy()
    device00.pushErrorScope("validation");
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0010.setStencilReference(1);
    query000.destroy()
    compute_pass_encoder0070.pushDebugGroup("group_marker")
    
    query002.destroy()
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout005,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0050.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0011,
                },
            },
        ],
    });

    render_pass_encoder0060.setBindGroup(0, bind_group002);
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout004,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0040.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile(__dirname + '/shader_module0011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    render_pass_encoder0060.insertDebugMarker("marker");
    render_pass_encoder0040.setStencilReference(1);
    
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
        
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0070.setBindGroup(0, bind_group003);
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    const uint32_0070 = new Uint32Array(3);

    uint32_0070[0] = 100;
    uint32_0070[1] = 1;
    uint32_0070[2] = 1;

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0015, 0, uint32_0070, 0, uint32_0070.length);

    compute_pass_encoder0070.dispatchWorkgroupsIndirect(buffer0015, 0);
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout000,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout001,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    render_pass_encoder0060.pushDebugGroup("group_marker");
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout005,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder0050.setStencilReference(1);
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device20.pushErrorScope("internal");
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout004,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    render_pass_encoder0060.insertDebugMarker("marker");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.pushErrorScope("out-of-memory");
    var shader_module0013_code = "";
    try {
        shader_module0013_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0013 = await device00.createShaderModule({ label: "shader_module0013", code: shader_module0013_code })
    
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout004,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout000,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer0015, 0, array5, 0, array5.length);
    
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout004,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0030.setStencilReference(1);
    buffer0012.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer008.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0017,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group004);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout004,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    buffer0014.destroy()
    
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout004,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    buffer0017.destroy()
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    render_pass_encoder0050.setStencilReference(1);
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device00.queue.writeBuffer(buffer0015, 0, array5, 0, array5.length);
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout001,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout005,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    buffer0010.destroy()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout000,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0019,
                },
            },
        ],
    });

    render_pass_encoder0050.setBindGroup(0, bind_group005);
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module0014_code = "";
    try {
        shader_module0014_code = await fs.readFile(__dirname + '/shader_module0014.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0014 = await device00.createShaderModule({ label: "shader_module0014", code: shader_module0014_code })
    
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    render_pass_encoder0050.pushDebugGroup("group_marker");
    render_pass_encoder0060.insertDebugMarker("marker");
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout005,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout000,
        compute: {
            module: shader_module0014,
            entryPoint: "main"
        }
    });
    render_pass_encoder0060.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    buffer0018.destroy()
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout001,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0050.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    render_pass_encoder0050.popDebugGroup();
    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0021,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group006);
    render_pass_encoder0060.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0070.popDebugGroup()
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder0020.end();
    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0023,
                },
            },
        ],
    });

    render_pass_encoder0010.setBindGroup(0, bind_group007);
    const command_buffer002 = command_encoder002.finish();
    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0025,
                },
            },
        ],
    });

    render_pass_encoder0040.setBindGroup(0, bind_group008);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder0000.end();
    render_pass_encoder0040.popDebugGroup();
    command_encoder000.popDebugGroup()
    compute_pass_encoder0070.end();
    command_encoder007.popDebugGroup()
    const command_buffer000 = command_encoder000.finish();
    const command_buffer007 = command_encoder007.finish();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}