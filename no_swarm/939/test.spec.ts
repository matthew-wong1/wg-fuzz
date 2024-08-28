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
    
    const array0 = new Float32Array([-1.0, 1.0, 0.25, 1.0, 0.25, 1.0, -0.75, -0.5, -0.75, 0.75, -1.0, 0.0, 1.0, 0.25, 1.0, 0.5, 1.0, -0.5, 0.5, -0.25, -0.5, 0.0, 0.25, 0.25, 1.0, 0.25, 0.0, 0.25, -0.25, 0.0, -1.0, -0.5, -1.0, -1.0, 1.0, -0.5, -0.75, 0.75, 0.75, -0.5, -1.0, 0.75, -0.25, -0.5, 0.0, 0.0, 0.0, -0.25, -0.75, -0.5, -0.25, 0.0, -1.0, -0.75, 0.0, -1.0, 0.25, 0.75, -0.75, -0.5, 0.0, -0.5, 0.25, -1.0, 1.0, -0.5, 0.0, 0.75, -1.0, -1.0, 0.0, -0.5, 0.75, -0.75, -0.75, 0.25, -0.25, 1.0, -0.75, 0.25, -0.25, 1.0, 0.75, -1.0, 0.75, 0.5, -0.5, -0.75, -0.5, 0.25, -1.0, -0.5, -0.5, 0.0, -0.25, -0.25, 1.0, -1.0, 0.75, 0.5, ]);
    
    const array1 = new Float32Array([-0.25, 0.5, 0.5, 0.25, 1.0, 0.75, -1.0, 0.0, 0.75, 0.75, -0.75, -0.5, -0.75, 0.5, -0.5, -0.25, -0.25, -0.75, -0.75, 1.0, -1.0, 0.0, -0.5, 0.25, -0.75, 0.75, -0.5, 1.0, -0.75, 0.25, 0.5, -1.0, -0.75, 0.75, 0.5, 0.75, -0.5, 0.75, 0.25, -1.0, 0.25, 0.75, -0.25, -0.5, 1.0, 0.0, -0.5, 0.0, 1.0, -1.0, -0.75, -0.25, 0.75, -0.25, 0.5, 0.5, -0.75, 0.0, -0.25, 0.5, 0.25, -1.0, 0.75, -0.5, -0.25, -0.25, 0.25, 0.75, -0.5, -0.75, -0.5, 0.5, 0.0, 0.25, 0.5, 1.0, -1.0, -1.0, -1.0, -0.75, 0.5, 0.5, -0.5, 0.75, 0.0, -0.75, 0.25, 0.75, -1.0, 0.0, 0.75, 1.0, 0.0, -0.75, 0.5, 0.75, -0.75, 0.75, 0.0, -0.25, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array2 = new Float32Array([1.0, 1.0, -0.25, -1.0, 0.0, 0.0, 1.0, 0.25, 0.0, -0.25, 0.25, -0.5, 0.5, 0.75, -1.0, -0.75, 0.75, 0.5, -0.75, 0.5, 0.75, -0.5, -0.25, 0.25, -0.5, 0.25, -0.25, -0.25, 0.5, 0.5, -1.0, -0.25, -0.75, 1.0, 0.0, 0.0, 1.0, 0.75, 1.0, -1.0, -1.0, 0.75, 0.5, 0.0, -0.75, 0.75, -0.25, 1.0, 0.5, -0.25, -0.5, 0.5, 1.0, 0.25, -0.25, 0.0, -0.5, -0.75, 0.75, 1.0, 0.25, -0.5, -0.25, -0.25, -0.5, 0.75, 0.0, 0.25, 0.75, 0.75, 0.5, -1.0, -0.25, 0.5, 1.0, 0.75, 0.5, 0.25, 0.25, -0.5, 1.0, -0.25, 0.5, -1.0, -0.25, 0.25, 0.0, -0.75, -0.75, 1.0, -0.75, 0.5, -0.5, 0.5, 0.25, -1.0, -1.0, 0.25, 0.5, 0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.pushErrorScope("internal");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
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
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    {
        await buffer003.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer003.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer003.unmap();
        console.log(new Float32Array(data));
    }
    device00.pushErrorScope("out-of-memory");
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    
    
    command_encoder000.insertDebugMarker("mymarker");
    
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    buffer003.destroy()
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const array3 = new Float32Array([0.5, 0.0, -0.5, 0.5, 0.25, -1.0, -1.0, 0.0, -0.75, 1.0, 0.5, -1.0, 0.75, 0.0, 0.25, 0.5, -0.75, 0.0, -0.5, -0.75, 0.5, -0.5, -0.5, 1.0, -0.25, 0.0, -0.25, -0.75, -0.5, -1.0, 0.5, 0.25, 0.75, -0.5, 0.0, -1.0, -1.0, -0.75, -0.5, 1.0, -0.5, -0.25, -0.25, 0.25, 0.5, 1.0, -1.0, 0.0, 0.75, -1.0, -1.0, 0.25, 0.25, 1.0, 1.0, 0.75, -0.75, -1.0, -0.5, 0.25, -0.5, -0.5, -1.0, -0.25, -1.0, 0.75, -1.0, -1.0, -1.0, 1.0, -0.75, -0.75, 0.0, -0.75, 1.0, -0.5, 0.0, 0.0, 0.75, 0.0, -0.5, 0.0, 0.0, 0.5, 1.0, -1.0, -0.5, 0.0, 0.0, -0.75, 1.0, 0.0, 0.5, -0.25, -0.75, 0.25, -0.5, -0.25, -0.75, 0.75, ]);
    
    const command_buffer000 = command_encoder000.finish();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    device00.queue.writeBuffer(buffer004, 0, array2, 0, array2.length);
    query000.destroy()
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    command_encoder001.clearBuffer(buffer004);
    render_bundle_encoder000.popDebugGroup();
    buffer001.destroy()
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    command_encoder001.clearBuffer(buffer004);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    device00.queue.submit([command_buffer000, ]);
    command_encoder001.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer004
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    buffer004.destroy()
    device00.pushErrorScope("out-of-memory");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    command_encoder001.insertDebugMarker("mymarker");
    const array4 = new Float32Array([-0.75, -0.5, -0.5, -0.25, -0.75, -0.25, 0.75, 0.25, 0.75, 1.0, -1.0, 0.75, -0.5, 1.0, 0.0, 0.75, -1.0, -1.0, 1.0, 0.75, -0.5, 0.5, -0.75, -0.5, 1.0, -0.5, 1.0, 0.75, 1.0, -0.25, 0.75, -0.75, -1.0, 0.0, -0.25, 0.0, -0.25, 0.75, -0.25, -0.25, 1.0, -0.5, 1.0, 0.5, 0.25, 1.0, 0.5, -0.75, 1.0, 0.0, 0.75, -0.5, -1.0, 0.5, -0.25, -1.0, 1.0, 0.0, 1.0, -0.5, 0.5, -0.75, 1.0, 1.0, -0.5, -0.5, 0.0, 0.25, 0.5, 0.0, 0.75, 0.75, 1.0, -1.0, 0.0, 0.25, -0.75, 0.0, 0.25, 0.5, 1.0, 0.25, 0.75, -0.5, -0.75, -0.25, -0.5, -0.5, -0.75, 1.0, -1.0, 1.0, -0.25, -0.75, 0.25, 1.0, 0.25, -0.75, 0.25, 1.0, ]);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
    
    
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    command_encoder001.insertDebugMarker("mymarker");
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    query001.destroy()
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const command_buffer001 = command_encoder001.finish();
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.pushDebugGroup("group_marker");
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.insertDebugMarker("marker");
    buffer002.destroy()
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture000.destroy();
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    texture100.destroy();
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const array5 = new Float32Array([1.0, 0.0, -0.75, 0.25, 0.25, -0.25, -0.5, 0.25, -0.25, -0.25, -0.25, 0.5, 0.5, -0.5, 0.75, 0.25, -0.25, -0.5, 0.0, 0.75, -0.75, 0.75, 1.0, 0.75, 0.75, 0.75, -1.0, -0.25, -0.25, -0.25, 0.75, 1.0, 0.75, -0.25, 0.0, 1.0, 0.75, 0.25, 0.0, 0.0, -0.5, 0.75, -0.75, -0.25, 0.25, 0.5, -1.0, 1.0, 1.0, -1.0, -1.0, -1.0, 0.5, -0.75, -0.5, 0.5, 0.75, -0.5, -0.25, 0.75, 0.0, -0.25, 0.5, -1.0, 0.75, -0.25, 0.0, 0.5, 0.75, -1.0, 1.0, -0.75, 0.75, -0.5, -1.0, 0.75, 1.0, 1.0, -0.75, 0.75, -0.5, 0.0, 1.0, 0.5, 0.25, -0.75, 1.0, -0.25, 0.25, 0.75, -0.75, 0.5, -0.5, -0.75, -1.0, 1.0, 0.0, 0.25, 0.75, -0.5, ]);
    
    
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    buffer000.destroy()
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    buffer006.destroy()
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    query101.destroy()
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const array6 = new Float32Array([0.25, 0.0, -0.5, 0.75, 0.5, -0.25, -0.25, -0.25, 0.25, 0.0, -0.5, -0.5, 0.5, 0.0, -0.25, 0.5, -1.0, 1.0, -0.25, -0.75, 0.0, -1.0, -0.5, 0.75, 0.5, 0.75, -1.0, 0.5, 0.5, 0.25, -0.75, -0.75, -1.0, 0.25, -0.25, -0.25, 0.75, 1.0, 0.0, 0.75, -1.0, 1.0, -0.75, 0.75, 0.5, -0.75, 0.75, -0.75, -0.5, -1.0, -0.5, 0.5, -0.75, -1.0, 0.5, 0.75, -0.75, -0.75, -0.25, -0.25, 0.75, 1.0, 0.5, 0.25, 0.5, -0.75, -0.5, -0.75, 0.5, 0.75, 0.0, 0.25, 0.0, -0.75, 0.75, 0.5, 0.75, -0.75, 0.25, 0.0, -0.25, 0.25, -1.0, 0.5, -1.0, -0.5, -0.75, 0.0, -0.75, 1.0, 0.0, -0.5, -1.0, 1.0, -0.75, -0.5, -1.0, 0.75, -0.5, 0.0, ]);
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder100.popDebugGroup();
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    texture001.destroy();
    render_bundle_encoder000.popDebugGroup();
    query102.destroy()
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    query002.destroy()
    query102.destroy()
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer100.destroy()
    
    texture101.destroy();
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    buffer101.destroy()
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query004.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
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
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1000.executeBundles([])
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query003
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    buffer103.destroy()
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    buffer102.destroy()
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
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
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const array7 = new Float32Array([0.0, -0.75, -0.75, 0.75, -0.5, 0.25, -0.75, 0.25, 0.0, 0.25, -0.75, -0.25, 0.25, -0.75, 0.0, 0.75, -0.5, 0.0, 0.25, -0.5, 0.0, 0.5, -0.75, 0.25, 0.75, -0.5, -0.25, 0.25, -1.0, 0.25, -0.5, 1.0, 0.25, -0.75, 0.5, -0.5, -0.5, 0.0, 0.0, -0.5, 0.5, -0.25, 0.75, 0.0, 0.5, -0.5, -1.0, 0.0, 0.5, -0.75, 1.0, 0.25, -0.75, 0.5, 1.0, 0.75, 1.0, 1.0, -0.5, -0.75, -1.0, -0.25, 0.25, 1.0, 0.25, 0.0, 1.0, 1.0, 0.75, -0.75, -1.0, -0.25, 1.0, 1.0, -0.75, 0.25, 0.75, 0.75, -0.75, -0.75, 0.5, -0.5, 0.75, -1.0, -0.75, 1.0, 0.25, -0.75, 0.5, -0.25, 0.75, 1.0, -0.5, 1.0, -1.0, 0.75, 0.5, 0.25, 0.0, -0.5, ]);
    
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
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
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    command_encoder003.insertDebugMarker("mymarker");
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    query003.destroy()
    const command_buffer003 = command_encoder003.finish();
    render_bundle_encoder000.setPipeline(render_pipeline000);
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    render_pass_encoder1000.insertDebugMarker("marker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    buffer007.destroy()
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_pass_encoder0020.setStencilReference(1);
    
    command_encoder004.resolveQuerySet(
        query005,
        0,
        32,
        buffer001,
        0
    )
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder0020.executeBundles([])
    command_encoder004.resolveQuerySet(
        query005,
        0,
        32,
        buffer002,
        0
    )
    query102.destroy()
    
    
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module009,
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
            module: shader_module009,
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
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setPipeline(render_pipeline002);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
        vertex: {
            module: shader_module009,
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
            module: shader_module009,
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
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    query005.destroy()
    command_encoder004.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    compute_pass_encoder0040.setPipeline(compute_pipeline0013);
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout002,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    query104.destroy()
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device10.pushErrorScope("out-of-memory");
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile(__dirname + '/shader_module0011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout000,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout001,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    query001.destroy()
    device00.queue.submit([command_buffer003, ]);
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const array8 = new Float32Array([-0.25, 1.0, 1.0, -0.25, 0.0, 0.75, -0.25, -0.5, 0.0, -0.5, 0.25, 0.25, 0.5, 1.0, -1.0, 0.75, -0.75, 0.0, 0.25, 0.5, -1.0, -0.75, 0.25, 0.75, -0.25, 0.75, 0.75, -0.25, 0.75, 0.25, 1.0, -0.75, -0.25, -0.5, 0.0, -1.0, 0.0, -0.25, 0.75, 0.75, 1.0, -1.0, 1.0, 1.0, 0.25, 0.25, 0.0, -0.25, 0.5, -1.0, -0.5, 1.0, 0.25, -0.25, -0.75, -0.25, -1.0, 0.25, 0.5, -1.0, 0.0, -0.25, 0.75, -1.0, 0.5, 0.75, 1.0, -0.25, -0.25, -0.75, 0.5, -0.25, 0.75, 0.0, 0.75, -0.75, -0.5, 0.75, 0.5, 0.25, 0.25, -0.75, 0.5, 0.25, -1.0, -0.5, -1.0, -1.0, 0.0, -0.25, -0.25, 1.0, -1.0, 0.25, 0.75, -0.75, 1.0, 0.0, 0.75, 0.5, ]);
    
    
    
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
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
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    
    query002.destroy()
    query100.destroy()
    query003.destroy()
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout000,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    command_encoder005.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
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
    command_encoder005.resolveQuerySet(
        query003,
        0,
        32,
        buffer002,
        0
    )
    
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    
    compute_pass_encoder0040.popDebugGroup()
    query001.destroy()
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const compute_pipeline0048 = device00.createComputePipeline({
        label: "compute_pipeline0048",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.popDebugGroup();
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    const compute_pipeline0049 = device00.createComputePipeline({
        label: "compute_pipeline0049",
        layout: pipeline_layout003,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder005.resolveQuerySet(
        query004,
        0,
        32,
        buffer001,
        0
    )
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const compute_pipeline0050 = device00.createComputePipeline({
        label: "compute_pipeline0050",
        layout: pipeline_layout002,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    const compute_pipeline0051 = device00.createComputePipeline({
        label: "compute_pipeline0051",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    query102.destroy()
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
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
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    
    
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
    render_pass_encoder1010.popDebugGroup();
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    command_encoder005.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    query007.destroy()
    render_pass_encoder1010.insertDebugMarker("marker");
    
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
        vertex: {
            module: shader_module0012,
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
            module: shader_module0012,
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
    const compute_pipeline0052 = device00.createComputePipeline({
        label: "compute_pipeline0052",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    query100.destroy()
    texture102.destroy();
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1022,
            },
        ],
        occlusionQuerySet: query104
    });
    query100.destroy()
    texture002.destroy();
    
    command_encoder005.resolveQuerySet(
        query003,
        0,
        32,
        buffer005,
        0
    )
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
        vertex: {
            module: shader_module009,
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
            module: shader_module009,
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
    const compute_pipeline0053 = device00.createComputePipeline({
        label: "compute_pipeline0053",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    query007.destroy()
    const compute_pipeline0054 = device00.createComputePipeline({
        label: "compute_pipeline0054",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const command_buffer005 = command_encoder005.finish();
    const compute_pipeline0055 = device00.createComputePipeline({
        label: "compute_pipeline0055",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    buffer008.destroy()
    const compute_pipeline0056 = device00.createComputePipeline({
        label: "compute_pipeline0056",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    query101.destroy()
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device40.pushErrorScope("internal");
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline0057 = device00.createComputePipeline({
        label: "compute_pipeline0057",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    query006.destroy()
    const compute_pipeline0058 = device00.createComputePipeline({
        label: "compute_pipeline0058",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    query007.destroy()
    const compute_pipeline0059 = device00.createComputePipeline({
        label: "compute_pipeline0059",
        layout: pipeline_layout001,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query700.destroy()
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0060 = device00.createComputePipeline({
        label: "compute_pipeline0060",
        layout: pipeline_layout003,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer0012, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer0012, 0, array6, 0, array6.length);
    query201.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    const compute_pipeline0061 = device00.createComputePipeline({
        label: "compute_pipeline0061",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0062 = device00.createComputePipeline({
        label: "compute_pipeline0062",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0063 = device00.createComputePipeline({
        label: "compute_pipeline0063",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    query103.destroy()
    
    
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    query100.destroy()
    device00.queue.writeBuffer(buffer0012, 0, array1, 0, array1.length);
    var shader_module0013_code = "";
    try {
        shader_module0013_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0013 = await device00.createShaderModule({ label: "shader_module0013", code: shader_module0013_code })
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
        vertex: {
            module: shader_module0013,
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
            module: shader_module0013,
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
    
    texture103.destroy();
    const compute_pipeline0064 = device00.createComputePipeline({
        label: "compute_pipeline0064",
        layout: pipeline_layout002,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    device00.queue.writeBuffer(buffer0012, 0, array2, 0, array2.length);
    const compute_pipeline0065 = device00.createComputePipeline({
        label: "compute_pipeline0065",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    query101.destroy()
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    
    render_pass_encoder1020.insertDebugMarker("marker");
    buffer0010.destroy()
    const compute_pipeline0066 = device00.createComputePipeline({
        label: "compute_pipeline0066",
        layout: pipeline_layout003,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0067 = device00.createComputePipeline({
        label: "compute_pipeline0067",
        layout: pipeline_layout001,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    const compute_pipeline0068 = device00.createComputePipeline({
        label: "compute_pipeline0068",
        layout: pipeline_layout000,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1010.insertDebugMarker("marker");
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
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
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8unorm",
        dimension: "2d"
    });
    render_pass_encoder1000.setStencilReference(1);
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
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
        vertex: {
            module: shader_module0013,
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
            module: shader_module0013,
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
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer0012.destroy()
    const compute_pipeline0069 = device00.createComputePipeline({
        label: "compute_pipeline0069",
        layout: pipeline_layout003,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
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
    query700.destroy()
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    query101.destroy()
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    query001.destroy()
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline0070 = device00.createComputePipeline({
        label: "compute_pipeline0070",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline0071 = device00.createComputePipeline({
        label: "compute_pipeline0071",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    query104.destroy()
    const compute_pipeline0072 = device00.createComputePipeline({
        label: "compute_pipeline0072",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0073 = device00.createComputePipeline({
        label: "compute_pipeline0073",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    query004.destroy()
    
    
    const compute_pipeline0074 = device00.createComputePipeline({
        label: "compute_pipeline0074",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0075 = device00.createComputePipeline({
        label: "compute_pipeline0075",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setPipeline(render_pipeline100);
    const compute_pipeline0076 = device00.createComputePipeline({
        label: "compute_pipeline0076",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1020.setPipeline(render_pipeline100);
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group100);
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
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: compute_pipeline0013.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group001);
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0016,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group002);
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder0040.dispatchWorkgroups(100);
    compute_pass_encoder0040.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1010.setVertexBuffer(0, buffer102);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1010.end();
    command_encoder004.popDebugGroup()
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
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

    render_pass_encoder1020.setBindGroup(0, bind_group101);
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder1020.setVertexBuffer(0, buffer102);
    const command_buffer101 = command_encoder101.finish();
    device00.queue.submit([command_buffer001, command_buffer004, command_buffer005, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1020.drawIndirect(buffer100, 0);
    render_pass_encoder1000.setPipeline(render_pipeline100);
    render_pass_encoder1020.end();
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
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

    render_pass_encoder1000.setBindGroup(0, bind_group102);
    render_pass_encoder1000.setVertexBuffer(0, buffer102);
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1000.end();
    const command_buffer100 = command_encoder100.finish();
    device10.queue.submit([command_buffer100, ]);
}