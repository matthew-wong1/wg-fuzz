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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const array0 = new Float32Array([0.25, 0.5, 0.0, -1.0, 0.5, -0.25, 0.75, -1.0, 0.25, 0.0, 0.25, -0.25, -0.75, -1.0, -0.75, 0.5, 0.0, 0.0, -0.5, 0.0, -0.75, 1.0, -0.25, -1.0, -0.75, -0.75, 0.0, 0.5, 0.25, 0.5, -0.75, -1.0, 0.25, -0.25, -0.25, 0.25, 0.75, -0.75, 0.75, -0.5, -0.5, 0.0, -0.5, 0.75, -0.25, 1.0, 0.75, -1.0, 0.5, -0.25, 0.75, -0.75, 0.0, 0.75, 0.75, 0.75, 0.75, -1.0, -0.5, 0.0, -0.25, -0.75, 0.25, -0.5, 0.5, 0.25, 1.0, 0.5, -0.5, -1.0, 0.25, 0.25, 0.25, -1.0, 0.0, -0.25, 0.0, -0.25, 0.5, 0.0, -0.75, -0.25, -0.25, -0.75, -0.25, 0.75, -0.25, 0.5, -0.75, 0.25, 0.5, -1.0, 0.5, 0.0, 1.0, 0.75, 0.0, -0.75, -0.75, 0.0, ]);
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder000.pushDebugGroup("mygroupmarker")
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder001.pushDebugGroup("mygroupmarker")
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([-0.75, -0.5, 0.5, -0.25, -0.25, -1.0, -0.75, 0.5, -0.75, 0.5, 0.5, -1.0, 0.0, 1.0, 1.0, 1.0, -0.5, 1.0, 0.25, 0.75, -0.25, -1.0, 0.25, -0.5, 0.75, -0.5, -0.5, 0.0, 0.5, 0.0, -0.5, 0.25, 0.5, -0.5, -0.25, -1.0, 1.0, 0.75, 0.75, -0.5, -0.75, 0.5, 0.25, 1.0, 0.0, 1.0, 0.5, -1.0, 1.0, 0.5, 0.25, -0.5, -0.75, -1.0, 0.25, -0.25, 0.25, 0.75, 0.75, -0.75, -0.5, 0.25, -1.0, -0.25, -1.0, 0.0, -1.0, 0.5, -0.5, 0.5, 1.0, 0.5, 0.0, -0.25, 0.75, -1.0, 0.25, 1.0, -1.0, -0.5, 0.0, 0.25, -0.25, 0.5, -0.75, 0.5, -0.5, -0.25, 0.0, 0.25, 0.5, -0.5, -0.5, 0.5, -1.0, 0.75, 0.5, 0.75, -1.0, 1.0, ]);
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device00.pushErrorScope("out-of-memory");
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder002.pushDebugGroup("mygroupmarker")
    command_encoder000.insertDebugMarker("mymarker");
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const command_buffer003 = command_encoder003.finish();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder000.popDebugGroup();
    command_encoder002.insertDebugMarker("mymarker");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("out-of-memory");
    
    device00.queue.submit([command_buffer003, ]);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    command_encoder000.insertDebugMarker("mymarker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
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
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_bundle_encoder000.popDebugGroup();
    
    
    const command_buffer101 = command_encoder101.finish();
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    compute_pass_encoder0000.insertDebugMarker("marker")
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.pushErrorScope("internal");
    
    
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
    command_encoder002.insertDebugMarker("mymarker");
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const command_buffer102 = command_encoder102.finish();
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    command_encoder004.pushDebugGroup("mygroupmarker")
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer006 = command_encoder006.finish();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    device20.pushErrorScope("out-of-memory");
    const array2 = new Float32Array([0.0, 0.5, 0.25, -0.5, 0.75, -0.5, 0.75, -1.0, 0.5, 0.25, 0.25, 0.0, 0.5, 0.5, 0.75, 1.0, 0.25, -0.5, 1.0, 1.0, 0.25, -1.0, 0.75, 1.0, 0.0, -0.25, 1.0, -1.0, 0.5, 1.0, 0.5, -0.25, -0.25, -0.25, 0.5, -0.25, -0.25, -0.5, -1.0, 0.0, 0.25, -0.75, -0.25, 0.25, -0.25, 1.0, -0.75, -0.75, -0.5, -0.75, -0.5, 0.25, 0.0, -1.0, 0.25, 0.0, 0.5, -0.5, 0.25, -0.25, -1.0, -0.25, 1.0, 0.5, 1.0, 0.75, 1.0, -1.0, -0.75, 0.75, 0.25, -0.25, 0.25, 0.75, 0.5, 0.5, -0.25, 0.5, 0.0, 0.5, 0.75, -1.0, 0.0, 0.75, -1.0, -1.0, -0.25, 1.0, -0.25, 1.0, 0.75, 0.0, -0.75, -0.5, -0.5, -0.75, 0.5, -0.5, 0.5, 0.5, ]);
    
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
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32float",
        dimension: "2d"
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    device00.pushErrorScope("out-of-memory");
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    render_bundle_encoder001.popDebugGroup();
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const command_encoder0010 = device00.createCommandEncoder({ label: "command_encoder0010" });
    
    command_encoder0010.insertDebugMarker("mymarker");
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.submit([command_buffer101, ]);
    const command_buffer0010 = command_encoder0010.finish();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    device00.queue.submit([command_buffer006, ]);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    command_encoder201.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder0090 = command_encoder009.beginComputePass({ label: "compute_pass_encoder0090" });
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pass_encoder0080 = command_encoder008.beginComputePass({ label: "compute_pass_encoder0080" });
    compute_pass_encoder0080.insertDebugMarker("marker")
    const command_encoder0011 = device00.createCommandEncoder({ label: "command_encoder0011" });
    render_bundle_encoder002.popDebugGroup();
    render_bundle_encoder001.pushDebugGroup("group_marker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const sampler103 = device10.createSampler( { label: "sampler103" } );
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
    const compute_pass_encoder0070 = command_encoder007.beginComputePass({ label: "compute_pass_encoder0070" });
    command_encoder0011.pushDebugGroup("mygroupmarker")
    
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    command_encoder201.insertDebugMarker("mymarker");
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0080.insertDebugMarker("marker")
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    compute_pass_encoder0050.insertDebugMarker("marker")
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const compute_pass_encoder00110 = command_encoder0011.beginComputePass({ label: "compute_pass_encoder00110" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    compute_pass_encoder0080.insertDebugMarker("marker")
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const array3 = new Float32Array([0.75, -0.75, 1.0, 0.0, -1.0, -0.75, -1.0, -0.5, 0.0, 1.0, -0.5, -0.75, 0.75, 0.75, 1.0, 0.25, -0.75, -0.25, 0.75, 0.5, -0.75, -1.0, 0.75, -0.5, -0.25, -0.25, 1.0, -1.0, -0.75, -0.5, 0.0, 0.25, 1.0, 0.0, 0.25, -0.5, 1.0, -0.25, -0.5, -0.5, -0.5, 0.0, 0.0, 0.25, -0.5, 1.0, -0.5, 0.25, 0.75, -0.75, 0.0, -1.0, 1.0, -0.5, -0.5, -0.25, 1.0, -0.5, 0.5, -0.75, 0.0, -1.0, -1.0, 1.0, 1.0, 0.25, 0.75, -0.5, 0.0, 0.5, -1.0, -0.5, 1.0, -1.0, -0.5, 0.25, 0.0, 0.75, -1.0, 0.25, 0.25, 0.5, 1.0, 0.0, 0.5, -1.0, -0.5, 0.0, -0.5, -0.5, 0.5, 0.5, 0.5, 0.0, -0.5, -1.0, 0.25, 0.25, 0.5, -0.5, ]);
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
    compute_pass_encoder0080.insertDebugMarker("marker")
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    command_encoder103.insertDebugMarker("mymarker");
    compute_pass_encoder0020.insertDebugMarker("marker")
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    device10.queue.submit([command_buffer102, ]);
    device00.queue.submit([command_buffer0010, ]);
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_bundle_encoder000.popDebugGroup();
    const command_buffer104 = command_encoder104.finish();
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const command_encoder0012 = device00.createCommandEncoder({ label: "command_encoder0012" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const sampler204 = device20.createSampler( { label: "sampler204" } );
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
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device20.pushErrorScope("validation");
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout002]
    });
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    device10.pushErrorScope("internal");
    compute_pass_encoder0070.insertDebugMarker("marker")
    render_bundle_encoder200.popDebugGroup();
    compute_pass_encoder00110.insertDebugMarker("marker")
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout002]
    });
    
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
    render_bundle_encoder002.popDebugGroup();
    compute_pass_encoder0090.insertDebugMarker("marker")
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder0012.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
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
    
    
    
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
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
    
    compute_pass_encoder0040.insertDebugMarker("marker")
    render_bundle_encoder001.popDebugGroup();
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    compute_pass_encoder0050.insertDebugMarker("marker")
    compute_pass_encoder0020.insertDebugMarker("marker")
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
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
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder0013 = device00.createCommandEncoder({ label: "command_encoder0013" });
    render_bundle_encoder002.popDebugGroup();
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder2020.insertDebugMarker("marker")
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    command_encoder105.copyBufferToBuffer(
        buffer101,
        0,
        buffer100,
        0,
        400
    );
    render_bundle_encoder200.pushDebugGroup("group_marker");
    compute_pass_encoder0090.insertDebugMarker("marker")
    command_encoder105.copyBufferToBuffer(
        buffer101,
        0,
        buffer100,
        0,
        400
    );
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    command_encoder105.insertDebugMarker("mymarker");
    command_encoder203.insertDebugMarker("mymarker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    render_bundle_encoder001.popDebugGroup();
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout105]
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout202]
    });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout003]
    });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    compute_pass_encoder0040.insertDebugMarker("marker")
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout002]
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const compute_pass_encoder00130 = command_encoder0013.beginComputePass({ label: "compute_pass_encoder00130" });
    
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
    compute_pass_encoder0050.insertDebugMarker("marker")
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder200.popDebugGroup();
    const bind_group_layout106 = device10.createBindGroupLayout({ 
        label: "bind_group_layout106",
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
    
    command_encoder105.copyBufferToBuffer(
        buffer101,
        0,
        buffer100,
        0,
        400
    );
    compute_pass_encoder0020.insertDebugMarker("marker")
    command_encoder106.copyBufferToBuffer(
        buffer103,
        0,
        buffer100,
        0,
        400
    );
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    command_encoder106.copyBufferToBuffer(
        buffer101,
        0,
        buffer100,
        0,
        400
    );
    
    command_encoder204.pushDebugGroup("mygroupmarker")
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout001]
    });
    command_encoder106.clearBuffer(buffer100);
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout003]
    });
    command_encoder106.clearBuffer(buffer100);
    compute_pass_encoder1000.insertDebugMarker("marker")
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    command_encoder106.clearBuffer(buffer100);
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    compute_pass_encoder0090.insertDebugMarker("marker")
    const compute_pass_encoder00120 = command_encoder0012.beginComputePass({ label: "compute_pass_encoder00120" });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32sint",
        dimension: "2d"
    });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    const command_buffer205 = command_encoder205.finish();
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout104]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    compute_pass_encoder2030.insertDebugMarker("marker")
    
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout102]
    });
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
    
    
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout003]
    });
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    device30.destroy();
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout100]
    });
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout002]
    });
    const command_encoder0014 = device00.createCommandEncoder({ label: "command_encoder0014" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.pushErrorScope("internal");
    compute_pass_encoder0070.insertDebugMarker("marker")
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer0014 = command_encoder0014.finish();
    device00.queue.submit([command_buffer0014, ]);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    command_encoder107.copyTextureToBuffer(
        {
            texture: texture101
        },
        {
            buffer: buffer100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout004]
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const command_encoder0015 = device00.createCommandEncoder({ label: "command_encoder0015" });
    
    
    
    compute_pass_encoder0050.insertDebugMarker("marker")
    const compute_pass_encoder1070 = command_encoder107.beginComputePass({ label: "compute_pass_encoder1070" });
    command_encoder204.insertDebugMarker("mymarker");
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32uint",
        dimension: "2d"
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder0015.insertDebugMarker("mymarker");
    
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout104]
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout001]
    });
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    command_encoder106.copyBufferToBuffer(
        buffer101,
        0,
        buffer100,
        0,
        400
    );
    compute_pass_encoder1070.insertDebugMarker("marker")
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    command_encoder106.copyBufferToBuffer(
        buffer101,
        0,
        buffer100,
        0,
        400
    );
    
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    compute_pass_encoder1050.insertDebugMarker("marker")
    
    compute_pass_encoder00110.insertDebugMarker("marker")
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    render_bundle_encoder201.popDebugGroup();
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout105]
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    command_encoder108.copyTextureToBuffer(
        {
            texture: texture101
        },
        {
            buffer: buffer100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    const command_buffer108 = command_encoder108.finish();
    command_encoder204.insertDebugMarker("mymarker");
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    command_encoder106.copyTextureToBuffer(
        {
            texture: texture101
        },
        {
            buffer: buffer100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout003]
    });
    const compute_pass_encoder00150 = command_encoder0015.beginComputePass({ label: "compute_pass_encoder00150" });
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const pipeline_layout0020 = device00.createPipelineLayout({ 
        label: "pipeline_layout0020",
        bindGroupLayouts: [bind_group_layout004]
    });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout0021 = device00.createPipelineLayout({ 
        label: "pipeline_layout0021",
        bindGroupLayouts: [bind_group_layout003]
    });
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    const pipeline_layout0022 = device00.createPipelineLayout({ 
        label: "pipeline_layout0022",
        bindGroupLayouts: [bind_group_layout006]
    });
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    const pipeline_layout0023 = device00.createPipelineLayout({ 
        label: "pipeline_layout0023",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout0024 = device00.createPipelineLayout({ 
        label: "pipeline_layout0024",
        bindGroupLayouts: [bind_group_layout006]
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    device50.destroy();
    command_encoder106.copyTextureToBuffer(
        {
            texture: texture101
        },
        {
            buffer: buffer100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
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
    command_encoder106.copyBufferToBuffer(
        buffer105,
        0,
        buffer100,
        0,
        400
    );
    
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    const compute_pass_encoder1060 = command_encoder106.beginComputePass({ label: "compute_pass_encoder1060" });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const pipeline_layout0025 = device00.createPipelineLayout({ 
        label: "pipeline_layout0025",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    compute_pass_encoder0020.insertDebugMarker("marker")
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout0026 = device00.createPipelineLayout({ 
        label: "pipeline_layout0026",
        bindGroupLayouts: [bind_group_layout007]
    });
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    command_encoder206.insertDebugMarker("mymarker");
    const array4 = new Float32Array([-0.25, 0.75, -0.5, 1.0, -0.75, -0.25, -1.0, 0.0, 0.5, 0.5, 0.5, -0.75, -1.0, 0.25, -0.5, 0.5, 0.5, -0.25, -0.5, 0.5, -0.25, -0.5, 0.0, 0.75, -0.5, -1.0, 0.75, -0.5, -0.5, -1.0, 1.0, -0.25, 0.25, 0.75, 0.75, 1.0, 1.0, -1.0, -0.5, 0.25, -0.25, 0.25, 0.75, 0.75, -0.25, -0.25, 0.75, 0.0, 1.0, 0.75, 0.5, 1.0, 0.75, -0.75, -0.75, -0.75, 1.0, 1.0, 0.0, 0.5, -0.25, 0.75, 1.0, 0.25, 1.0, -0.5, -1.0, -0.25, -0.25, 1.0, 0.75, -0.5, 0.75, -1.0, 0.75, -0.5, 0.25, 0.0, 0.25, -0.5, 0.75, 0.75, -0.25, -0.5, 0.5, -0.5, -0.75, -1.0, -0.25, -0.5, 0.0, -0.5, 0.5, 1.0, -0.75, 1.0, 0.75, -0.75, -0.75, 0.25, ]);
    compute_pass_encoder1060.insertDebugMarker("marker")
    
    const command_buffer206 = command_encoder206.finish();
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout106]
    });
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture104 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler208 = device20.createSampler( { label: "sampler208" } );
    compute_pass_encoder0050.insertDebugMarker("marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder1050.insertDebugMarker("marker")
    
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.queue.submit([command_buffer104, ]);
    device40.pushErrorScope("internal");
    const pipeline_layout0027 = device00.createPipelineLayout({ 
        label: "pipeline_layout0027",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const pipeline_layout0028 = device00.createPipelineLayout({ 
        label: "pipeline_layout0028",
        bindGroupLayouts: [bind_group_layout000]
    });
    compute_pass_encoder00130.insertDebugMarker("marker")
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device10.queue.writeTexture({ texture: texture104 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder00150.insertDebugMarker("marker")
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder00130.insertDebugMarker("marker")
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const pipeline_layout1019 = device10.createPipelineLayout({ 
        label: "pipeline_layout1019",
        bindGroupLayouts: [bind_group_layout106]
    });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture104 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    compute_pass_encoder2020.insertDebugMarker("marker")
    render_bundle_encoder201.popDebugGroup();
    const pipeline_layout0029 = device00.createPipelineLayout({ 
        label: "pipeline_layout0029",
        bindGroupLayouts: [bind_group_layout007]
    });
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout0030 = device00.createPipelineLayout({ 
        label: "pipeline_layout0030",
        bindGroupLayouts: [bind_group_layout002]
    });
    const sampler108 = device10.createSampler( { label: "sampler108" } );
    const pipeline_layout0031 = device00.createPipelineLayout({ 
        label: "pipeline_layout0031",
        bindGroupLayouts: [bind_group_layout007]
    });
    const sampler209 = device20.createSampler( { label: "sampler209" } );
    device10.queue.writeTexture({ texture: texture104 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder400.insertDebugMarker("mymarker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder2010.insertDebugMarker("marker")
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout1020 = device10.createPipelineLayout({ 
        label: "pipeline_layout1020",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout0032 = device00.createPipelineLayout({ 
        label: "pipeline_layout0032",
        bindGroupLayouts: [bind_group_layout004]
    });
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    compute_pass_encoder1030.insertDebugMarker("marker")
    compute_pass_encoder0020.insertDebugMarker("marker")
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1070.insertDebugMarker("marker")
    const pipeline_layout0033 = device00.createPipelineLayout({ 
        label: "pipeline_layout0033",
        bindGroupLayouts: [bind_group_layout001]
    });
    const sampler109 = device10.createSampler( { label: "sampler109" } );
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.submit([command_buffer205, command_buffer206, ]);
}