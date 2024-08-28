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
    
    const array0 = new Float32Array([1.0, 1.0, 0.0, -0.25, 0.0, -0.25, 0.25, -1.0, -1.0, -0.75, 0.5, -0.5, 1.0, -0.75, 0.5, -0.5, 1.0, -0.25, 1.0, 0.5, 0.0, 0.25, -0.5, 0.75, -1.0, 0.5, -0.5, -0.75, 0.5, 0.0, 0.25, -1.0, 1.0, 1.0, 0.75, -0.5, -0.25, 0.75, 0.0, -0.75, 0.75, 1.0, 0.5, 1.0, -1.0, -0.25, 1.0, -0.25, -0.75, -1.0, 1.0, 0.75, 0.0, -1.0, 1.0, 0.25, -0.25, 0.75, 1.0, 1.0, -1.0, -0.5, -0.25, -0.5, -0.25, -0.25, -0.75, -1.0, 0.75, 0.25, -1.0, 0.25, -0.75, 0.25, 0.75, -0.5, 0.25, 1.0, 1.0, 0.75, -0.75, 0.25, -1.0, 0.0, -0.25, 0.5, 0.25, -0.25, -0.25, 0.75, -0.75, 0.25, -1.0, 0.25, -0.25, -1.0, -0.25, -0.25, 0.75, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([0.5, 1.0, 0.75, 1.0, -0.25, -0.5, 0.5, 0.0, -1.0, -0.5, -1.0, 1.0, 0.5, 0.5, 0.5, -0.75, 0.0, 0.25, 0.5, 0.75, 0.25, -0.25, -1.0, -0.25, 0.5, -0.75, -0.75, -0.25, -0.75, -0.75, 1.0, -0.5, 1.0, -0.75, 1.0, -0.25, -0.5, 0.0, 0.5, -0.75, -1.0, 0.0, 0.75, -0.75, -0.25, -0.5, -1.0, -0.5, 1.0, 1.0, 0.25, 0.0, 0.75, 0.25, 0.25, -0.25, -0.25, 0.25, 0.25, 0.75, 0.25, -0.25, 0.25, 0.5, 0.75, -0.5, -1.0, -0.25, -0.75, -0.25, -0.5, 0.75, -0.5, 0.25, 0.25, -0.25, 0.75, 1.0, 0.25, 0.5, -1.0, -0.75, 1.0, -1.0, -1.0, -0.5, 0.0, 1.0, 0.75, 0.25, -0.5, 0.0, 0.0, 0.0, -0.5, -0.25, 0.75, 0.75, -1.0, 1.0, ]);
    const array2 = new Float32Array([-0.25, 0.75, -0.5, -0.75, -1.0, 1.0, -0.75, 0.25, -1.0, 0.0, -0.25, -0.25, 0.25, 1.0, 0.75, 0.25, -1.0, -0.5, 0.75, -1.0, -1.0, -1.0, 0.5, -0.75, 0.0, -0.25, 0.5, 0.0, -0.25, -0.75, -0.75, -0.75, -0.25, 0.5, 0.0, 0.5, -0.25, -0.25, 0.5, 0.5, 1.0, 0.25, -0.25, 0.75, -0.5, -1.0, 1.0, 0.25, 0.5, 0.0, 0.0, 0.25, -0.5, 1.0, 0.25, 0.75, -0.25, 0.5, 0.75, 0.25, -0.75, 0.5, -0.75, 0.0, -0.25, -0.5, -0.25, 0.0, 1.0, -0.75, 0.5, -1.0, 0.5, -0.5, 0.25, 1.0, 0.75, 1.0, 0.5, 0.0, 1.0, -0.75, 1.0, -0.5, -0.75, -0.25, 0.0, 0.25, -1.0, 0.0, 1.0, 0.0, -1.0, -0.5, 0.5, 1.0, 0.25, -0.75, -0.25, 0.0, ]);
    
    const array3 = new Float32Array([1.0, 0.25, -0.75, 0.5, 0.25, -1.0, -0.5, -0.5, 1.0, -1.0, 0.25, 0.5, -0.5, -1.0, 0.5, 0.25, -1.0, -0.75, 0.5, 0.75, -0.25, 1.0, -1.0, 0.5, 1.0, -1.0, 0.0, -1.0, -0.25, 0.0, 0.25, -0.25, 0.5, -0.75, -0.5, 0.75, -0.25, 0.5, 1.0, -0.5, -0.25, 0.75, -0.75, -0.5, 0.75, 0.0, 0.0, 0.75, -0.25, -1.0, -0.75, 0.75, -0.5, 0.0, 0.25, 0.5, 0.25, 0.0, -0.75, -0.5, -0.75, -0.25, 0.0, 0.75, -0.75, -0.75, 1.0, 0.0, -0.5, 0.75, 0.25, -0.5, 1.0, -0.25, 0.75, 0.5, -0.25, 0.25, -0.25, -0.75, 0.5, 0.25, 0.25, 0.0, 1.0, -0.25, -0.25, -0.25, 0.75, 0.0, -1.0, -0.75, 1.0, -0.25, 0.25, -0.5, 0.25, -1.0, -0.5, -0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32sint",
        dimension: "2d"
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const array4 = new Float32Array([-0.75, 0.25, 1.0, -0.75, 0.25, 0.0, -0.75, -0.5, 0.5, -0.5, -1.0, 0.75, -0.5, -1.0, -0.5, 0.5, 0.0, 0.0, -0.5, 0.75, -0.75, 0.25, -0.25, 0.0, -0.25, -0.75, 0.0, 0.0, 0.0, 0.75, -0.5, -0.5, 0.5, 1.0, -0.25, 1.0, 0.0, -0.5, 1.0, -1.0, 1.0, 0.0, 0.5, -0.75, -0.75, -0.5, 0.5, 0.75, -0.25, -0.5, -0.5, -0.75, -0.75, -0.25, 1.0, 0.0, 0.0, -0.75, 0.5, 1.0, -0.25, -1.0, -1.0, 0.25, 0.5, -0.75, -1.0, -0.75, 0.5, 0.5, 0.5, 0.25, 0.5, 0.25, 0.75, -0.75, 0.5, -0.25, -0.75, -0.75, -0.5, -0.25, -0.75, 0.5, 0.75, 0.5, 0.5, -0.25, 0.0, 0.75, 1.0, -1.0, 0.5, 0.5, 1.0, 0.75, -0.25, -1.0, 0.5, 0.75, ]);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.pushErrorScope("internal");
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
    const array5 = new Float32Array([-1.0, 0.0, -0.5, -0.75, -0.25, 0.5, -1.0, 1.0, 0.75, 0.25, 0.25, 1.0, 0.25, 0.75, 0.0, -0.5, 0.0, 0.5, 0.5, -1.0, -0.25, 0.25, 1.0, -0.5, 0.0, 0.0, 0.25, 0.5, 0.75, -0.75, 0.25, 1.0, -0.5, 1.0, 0.5, -0.75, 1.0, -0.75, -0.75, 0.5, 0.25, 0.75, -0.5, 0.5, -0.5, 0.5, 0.75, 0.75, -0.5, 0.0, -1.0, 0.0, 0.75, 1.0, 0.25, -0.25, 0.25, 0.25, 0.25, -0.75, -0.75, -1.0, -1.0, -1.0, -0.75, 1.0, -0.25, -0.25, -0.25, 0.5, 0.25, 0.25, 0.25, -0.75, 1.0, -0.5, 0.5, -1.0, 0.0, 0.0, -0.5, -0.75, 0.25, -0.75, 0.25, -0.75, 1.0, 0.5, 0.75, 0.5, -0.5, 0.5, -0.75, -1.0, 1.0, 0.75, 0.5, -1.0, -0.75, -0.75, ]);
    
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    
    texture200.destroy();
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    render_bundle_encoder201.popDebugGroup();
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder200.popDebugGroup();
    const command_buffer101 = command_encoder101.finish();
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
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
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8unorm",
        dimension: "2d"
    });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
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
    render_bundle_encoder201.pushDebugGroup("group_marker");
    query102.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    
    
    
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer102 = command_encoder102.finish();
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
    
    
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array6 = new Float32Array([0.75, -1.0, -0.25, 0.5, 0.25, 0.5, 0.75, 0.75, 1.0, 0.0, 0.0, 0.5, -1.0, -1.0, 0.25, 0.5, 0.0, -0.5, 0.5, -0.75, 1.0, -0.75, -0.25, -1.0, -0.5, -0.75, -1.0, 0.25, 0.5, -0.25, 1.0, 0.5, -0.25, 0.75, 0.25, 0.5, 0.75, -0.25, -0.75, 1.0, -0.75, 0.5, 0.0, 0.25, 0.0, -0.5, 0.5, 0.75, 0.75, 0.5, 0.5, -0.25, 0.25, 0.5, 0.75, 0.5, -0.5, 1.0, 0.25, -0.25, -0.75, 0.75, 0.75, -1.0, -1.0, -0.25, -0.75, 0.5, -0.25, 0.5, -0.25, -1.0, 1.0, 1.0, 0.5, 0.25, -1.0, -0.5, -0.25, 0.75, 0.0, -1.0, -1.0, 0.0, -0.75, 1.0, 0.5, -0.75, 0.5, -0.75, -0.5, 1.0, 0.5, 1.0, 1.0, 0.5, 0.0, 0.5, 0.25, 0.5, ]);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    const array7 = new Float32Array([0.5, -0.75, 0.25, 0.0, 0.5, -0.75, 0.75, 1.0, -0.5, 0.75, -0.75, 0.25, -0.75, 0.75, -0.75, 0.5, -0.5, 0.5, -0.5, -0.75, 0.25, -0.75, -0.25, 0.25, 1.0, 0.25, -0.25, -0.5, 0.5, 0.5, 0.5, -0.75, 0.75, 0.5, -1.0, 0.75, -0.5, 0.5, 0.25, -0.25, -0.5, -0.5, 0.0, 0.5, -1.0, -0.75, -0.25, -0.75, 0.5, 0.0, 1.0, 0.5, 0.0, 0.0, -0.5, 1.0, 0.75, -0.75, 0.75, -0.5, 0.75, -0.25, 0.25, 0.0, 0.5, 0.75, -0.75, 0.75, -0.5, 0.5, 0.5, 0.0, 1.0, 0.75, -0.75, 0.5, -1.0, -0.5, -0.25, -0.75, -0.75, 1.0, 0.5, 0.5, 0.0, 0.0, 1.0, -1.0, 0.5, -1.0, 0.0, -0.5, -0.25, 0.5, 0.25, 0.0, 0.25, 0.0, -0.25, -1.0, ]);
    texture000.destroy();
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1000.popDebugGroup()
    
    
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    texture202.destroy();
    device20.queue.writeTexture({ texture: texture203 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture201.destroy();
    device20.queue.writeTexture({ texture: texture203 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query100.destroy()
    device20.queue.writeTexture({ texture: texture203 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8uint",
        dimension: "2d"
    });
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query101.destroy()
    texture100.destroy();
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    device10.pushErrorScope("internal");
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout202]
    });
    device20.queue.writeTexture({ texture: texture203 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query102.destroy()
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    query103.destroy()
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
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
    device20.pushErrorScope("out-of-memory");
    
    query202.destroy()
    device20.queue.writeTexture({ texture: texture203 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.submit([command_buffer101, ]);
    render_bundle_encoder201.popDebugGroup();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    query000.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    texture101.destroy();
    query200.destroy()
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder202.popDebugGroup();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    device20.queue.writeTexture({ texture: texture203 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.popDebugGroup();
    query102.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    query200.destroy()
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout202]
    });
    device20.queue.writeTexture({ texture: texture203 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    device30.pushErrorScope("out-of-memory");
    
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const array8 = new Float32Array([0.75, -0.5, 1.0, 0.25, -0.5, 1.0, -0.5, 0.5, -0.75, -0.5, 0.0, 1.0, 0.75, -1.0, -0.25, -0.25, 0.75, -0.75, 1.0, -0.5, -0.5, 0.25, -0.5, 0.5, 0.5, 0.25, -1.0, -0.25, 0.25, -1.0, 0.25, 1.0, -0.25, 0.5, -0.75, 0.75, 1.0, 0.25, -0.25, 0.25, -1.0, 1.0, 0.0, 0.0, -0.75, -0.5, -1.0, -0.25, 1.0, 0.5, -1.0, 0.0, -0.75, 0.75, 0.5, -0.25, -0.5, -0.25, 0.0, -0.5, 0.25, -0.5, 0.75, 0.5, 0.25, -0.75, -0.25, -0.25, 1.0, 1.0, -0.75, -0.5, 0.25, -0.25, -1.0, 0.25, -0.75, -0.25, -0.25, 0.25, -0.75, 1.0, -0.5, 0.0, 0.5, 0.5, 0.0, -0.25, 1.0, -1.0, 0.75, 0.75, -0.5, 1.0, 0.75, -0.75, -1.0, -0.75, -0.25, 0.75, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    query202.destroy()
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    
    texture102.destroy();
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
    device20.queue.writeTexture({ texture: texture203 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout202]
    });
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout201]
    });
    query000.destroy()
    query200.destroy()
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8unorm",
        dimension: "2d"
    });
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
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
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    texture003.destroy();
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query001.destroy()
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    query201.destroy()
    
    query200.destroy()
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    query103.destroy()
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    query202.destroy()
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    query101.destroy()
    const texture_view2050 = texture205.createView({ label: "texture_view2050" });
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
    query101.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    const texture_view2051 = texture205.createView({ label: "texture_view2051" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    query201.destroy()
    texture002.destroy();
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    texture300.destroy();
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    device10.queue.submit([command_buffer102, ]);
    
    
    device20.queue.writeTexture({ texture: texture203 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
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
    device20.queue.writeTexture({ texture: texture203 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32uint",
        dimension: "2d"
    });
    
    device20.queue.writeTexture({ texture: texture203 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
    query200.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    device20.queue.writeTexture({ texture: texture203 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture203 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device20.queue.writeTexture({ texture: texture203 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout204]
    });
    texture103.destroy();
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const texture_view2041 = texture204.createView({ label: "texture_view2041" });
    const array9 = new Float32Array([-1.0, -0.25, 1.0, -1.0, 1.0, 0.5, 0.5, -1.0, 0.75, -1.0, -0.25, -1.0, 0.5, 0.25, -0.5, 0.0, 0.0, 1.0, -1.0, -1.0, 0.5, 1.0, 1.0, -1.0, 0.25, -0.25, -0.5, 0.0, -0.5, -0.25, -0.5, 0.0, 0.25, 1.0, 0.5, -0.25, 0.0, 0.25, -0.75, 0.75, 0.25, -0.75, 1.0, 0.75, -0.5, -0.5, 0.75, 0.25, 1.0, -0.25, 0.0, -0.5, 0.0, 1.0, -0.25, -0.75, 0.5, -0.5, 0.25, -0.5, 0.0, -1.0, -0.75, -0.75, 0.75, 0.25, 0.0, -0.75, 0.75, -0.5, 0.25, -0.5, 0.0, -0.25, -0.75, -1.0, -0.25, 0.75, 0.0, 0.0, -1.0, -0.5, 0.5, 0.0, -0.25, 0.25, 0.75, -1.0, 0.75, -0.25, -0.75, -0.5, 0.5, 0.0, 0.75, 0.25, -0.25, -0.5, -0.25, 0.75, ]);
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout203]
    });
    query102.destroy()
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout201]
    });
    compute_pass_encoder2000.popDebugGroup()
    device20.queue.writeTexture({ texture: texture203 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    query001.destroy()
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout204]
    });
    render_bundle_encoder302.pushDebugGroup("group_marker");
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
    
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout201]
    });
    device10.pushErrorScope("validation");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const pipeline_layout2014 = device20.createPipelineLayout({ 
        label: "pipeline_layout2014",
        bindGroupLayouts: [bind_group_layout202]
    });
    query104.destroy()
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    render_bundle_encoder201.popDebugGroup();
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device20.queue.writeTexture({ texture: texture203 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    
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
    texture204.destroy();
    
    query103.destroy()
    texture205.destroy();
    
    
    
    texture203.destroy();
    query201.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.pushErrorScope("internal");
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
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
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout003]
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
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    query203.destroy()
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout302]
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
    query202.destroy()
    
    
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    query102.destroy()
    
    render_bundle_encoder001.popDebugGroup();
    
    query203.destroy()
    render_bundle_encoder202.popDebugGroup();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const pipeline_layout2015 = device20.createPipelineLayout({ 
        label: "pipeline_layout2015",
        bindGroupLayouts: [bind_group_layout203]
    });
    const pipeline_layout2016 = device20.createPipelineLayout({ 
        label: "pipeline_layout2016",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    device10.pushErrorScope("validation");
    const array10 = new Float32Array([-0.75, 0.5, -1.0, -0.5, -0.5, 0.5, 0.0, 0.5, 0.0, -1.0, 0.25, 0.0, -0.75, -0.25, 1.0, -0.25, -0.25, -0.5, 0.0, 0.75, 0.25, 0.25, 0.5, -0.25, 0.25, -0.75, -0.75, 0.75, 0.75, 0.5, -0.75, 1.0, -1.0, -0.75, 0.5, 0.25, -0.75, 0.0, 0.0, 0.75, -0.25, 0.25, 0.75, 1.0, 0.5, 0.5, 1.0, 0.75, 1.0, 0.5, 1.0, 0.5, 1.0, 0.75, 0.0, 1.0, 1.0, 0.25, -1.0, -1.0, -0.25, 0.75, 0.25, -0.75, -0.5, 1.0, 0.25, 1.0, -0.75, -1.0, 0.75, 0.25, -1.0, 0.25, 0.5, 1.0, 0.5, 1.0, -0.75, -0.75, 1.0, 1.0, 0.25, -1.0, -0.75, 0.0, 1.0, 0.5, 0.75, -1.0, -0.25, 0.25, -1.0, 0.75, 1.0, -0.25, 0.75, -1.0, 0.5, 1.0, ]);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    device20.pushErrorScope("internal");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    query202.destroy()
    
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
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_bundle_encoder201.popDebugGroup();
    query001.destroy()
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16uint",
        dimension: "2d"
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout003]
    });
    texture206.destroy();
    device40.pushErrorScope("internal");
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
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
    
    query104.destroy()
    
    const pipeline_layout2017 = device20.createPipelineLayout({ 
        label: "pipeline_layout2017",
        bindGroupLayouts: [bind_group_layout203]
    });
    render_bundle_encoder300.popDebugGroup();
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.pushErrorScope("internal");
    compute_pass_encoder1000.popDebugGroup()
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    query203.destroy()
    query300.destroy()
    query000.destroy()
    query100.destroy()
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    render_bundle_encoder100.popDebugGroup();
    
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    query203.destroy()
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder301.popDebugGroup();
    const texture_view0013 = texture001.createView({ label: "texture_view0013" });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    
    
    texture004.destroy();
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout002]
    });
    const pipeline_layout2018 = device20.createPipelineLayout({ 
        label: "pipeline_layout2018",
        bindGroupLayouts: [bind_group_layout201]
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const pipeline_layout2019 = device20.createPipelineLayout({ 
        label: "pipeline_layout2019",
        bindGroupLayouts: [bind_group_layout202]
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8uint",
        dimension: "2d"
    });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8sint",
        dimension: "2d"
    });
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
    const command_buffer400 = command_encoder400.finish();
    query104.destroy()
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout006]
    });
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout304]
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
    
    render_bundle_encoder002.popDebugGroup();
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout304]
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout005]
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    query204.destroy()
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder101.popDebugGroup();
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query001.destroy()
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout004]
    });
    query203.destroy()
    
    query201.destroy()
    render_bundle_encoder201.pushDebugGroup("group_marker");
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
    query201.destroy()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8unorm",
        dimension: "2d"
    });
    query000.destroy()
    device30.queue.writeTexture({ texture: texture302 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1000.insertDebugMarker("marker")
    device40.queue.submit([command_buffer400, ]);
    query202.destroy()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    render_bundle_encoder000.popDebugGroup();
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout004]
    });
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
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
    
    const texture_view1060 = texture106.createView({ label: "texture_view1060" });
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    
    const command_buffer301 = command_encoder301.finish();
    device30.queue.writeTexture({ texture: texture302 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    query401.destroy()
    
    query100.destroy()
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    query102.destroy()
    
    const pipeline_layout2020 = device20.createPipelineLayout({ 
        label: "pipeline_layout2020",
        bindGroupLayouts: [bind_group_layout201]
    });
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout006]
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout105]
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    query102.destroy()
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout002]
    });
    texture105.destroy();
    const pipeline_layout2021 = device20.createPipelineLayout({ 
        label: "pipeline_layout2021",
        bindGroupLayouts: [bind_group_layout203]
    });
    device30.queue.writeTexture({ texture: texture302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout2022 = device20.createPipelineLayout({ 
        label: "pipeline_layout2022",
        bindGroupLayouts: [bind_group_layout203]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout005]
    });
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
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
    query202.destroy()
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    compute_pass_encoder0000.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2000.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3000.popDebugGroup()
    const command_buffer001 = command_encoder001.finish();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer002 = command_encoder002.finish();
    device00.queue.submit([command_buffer002, ]);
}