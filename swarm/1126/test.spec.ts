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
        powerPreference: "high-performance"
    });
    const array0 = new Float32Array([0.25, -1.0, -0.5, -1.0, -0.5, 0.0, 0.25, -0.75, 0.5, 0.25, 0.5, 0.0, 0.5, 1.0, 1.0, -1.0, 0.5, 0.75, -0.25, 0.5, -0.25, 0.0, -1.0, 0.0, -0.75, 0.0, -0.75, -0.5, 0.25, -0.5, 0.5, 0.5, -1.0, -0.25, 1.0, 1.0, 0.5, 0.25, 0.75, -1.0, 1.0, -0.5, 1.0, 0.5, 0.75, 0.0, 1.0, 0.75, -1.0, -0.75, 0.0, 0.0, -0.25, -1.0, -0.5, 1.0, 0.5, -0.5, -0.75, -0.25, 0.75, -1.0, -0.25, -0.75, 1.0, -0.75, 1.0, 1.0, -1.0, 0.75, 0.25, 0.0, 0.5, 0.75, -0.75, 0.75, -0.5, 0.0, 0.0, 0.0, 0.25, -0.5, 0.75, 0.5, 1.0, -0.25, -0.75, -0.75, -0.25, 0.25, 1.0, -0.5, 1.0, 0.75, -0.25, 0.0, 0.75, -0.75, 1.0, -0.5, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device00.pushErrorScope("out-of-memory");
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
    texture000.destroy();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.pushErrorScope("validation");
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.destroy();
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const command_buffer000 = command_encoder000.finish();
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r16uint",
        dimension: "2d"
    });
    
    
    
    device00.pushErrorScope("out-of-memory");
    
    
    
    buffer000.destroy()
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
    device00.queue.submit([command_buffer000, ]);
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device00.queue.submit([]);
    texture001.destroy();
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r16uint",
        dimension: "2d"
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const array1 = new Float32Array([-1.0, 0.75, 1.0, 1.0, 0.75, 0.5, 0.75, -1.0, 0.25, 0.5, -1.0, -1.0, -1.0, -0.75, -1.0, 1.0, 0.75, -0.75, -1.0, 1.0, 1.0, -0.25, -0.75, 0.25, -1.0, 0.5, -1.0, -1.0, -1.0, 1.0, -1.0, 0.5, 0.25, 1.0, -0.5, -1.0, 0.0, -0.5, 0.25, 0.5, 0.0, -1.0, 0.0, -0.5, 0.75, 1.0, -0.5, -1.0, -1.0, 0.75, -1.0, 1.0, 0.75, -0.25, 0.0, 1.0, -0.5, -0.75, 0.75, 0.25, 0.75, 0.5, -1.0, -1.0, -1.0, 0.0, 0.0, -1.0, 0.75, -0.25, -0.75, 0.0, -0.5, 0.5, -0.75, 0.0, 1.0, -0.75, 0.25, 0.75, 0.25, -0.75, 0.25, -0.75, -0.25, -0.5, 0.0, 0.75, -0.5, -0.5, 0.75, -1.0, 0.0, 0.25, -0.75, 0.0, 0.5, 1.0, 0.25, -0.5, ]);
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    device20.pushErrorScope("internal");
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const array2 = new Float32Array([0.5, -1.0, 0.25, 0.75, 0.25, 1.0, -0.5, -1.0, -0.75, 0.5, -0.25, 1.0, 1.0, -0.75, -0.25, 1.0, -0.25, -0.5, -0.75, 0.0, -0.25, 1.0, 0.5, 1.0, 1.0, 0.0, -0.75, 0.0, 1.0, -0.25, 0.5, 0.5, -1.0, 0.75, -0.75, 0.75, 0.5, -1.0, -0.75, -0.75, 1.0, 0.75, -1.0, 0.75, -1.0, -0.75, 0.75, -0.75, 0.75, 0.5, 1.0, 0.0, -0.5, 0.25, -1.0, 0.25, 0.25, 1.0, 0.5, 0.25, 1.0, 0.25, -0.25, 0.0, 1.0, 0.0, -0.75, 0.0, 0.0, -1.0, -0.25, 0.75, 1.0, 0.75, 1.0, 0.25, 0.75, -1.0, 0.5, -0.75, -0.5, 0.0, -1.0, 0.75, 0.0, -0.5, 0.5, 0.25, 0.75, -0.25, 0.75, 0.0, -1.0, -0.25, 0.75, -0.5, 0.25, 0.5, -0.25, 0.5, ]);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    compute_pass_encoder0000.popDebugGroup()
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const compute_pass_encoder2011 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2011" });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder0000.popDebugGroup()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const command_buffer001 = command_encoder001.finish();
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    const command_buffer201 = command_encoder201.finish();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    device50.pushErrorScope("validation");
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
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
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    device50.pushErrorScope("out-of-memory");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    device60.destroy();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    device00.queue.submit([command_buffer000, ]);
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    compute_pass_encoder0000.insertDebugMarker("marker")
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    device20.queue.submit([]);
    device50.destroy();
    const command_buffer300 = command_encoder300.finish();
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query001
    });
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    
    device20.queue.submit([command_buffer201, ]);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    render_pass_encoder0020.setStencilReference(1);
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
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const compute_pass_encoder2001 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2001" });
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device60.queue.writeTexture({ texture: texture600 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2001.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder200.insertDebugMarker("mymarker");
    compute_pass_encoder2010.insertDebugMarker("marker")
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    command_encoder203.insertDebugMarker("mymarker");
    buffer200.destroy()
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer001.destroy()
    command_encoder302.insertDebugMarker("mymarker");
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    compute_pass_encoder2001.insertDebugMarker("marker")
    render_pass_encoder0020.setStencilReference(1);
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    compute_pass_encoder2000.popDebugGroup()
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    compute_pass_encoder2000.popDebugGroup()
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    compute_pass_encoder2001.pushDebugGroup("group_marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8uint",
        dimension: "2d"
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture301.destroy();
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    compute_pass_encoder2001.insertDebugMarker("marker")
    const command_buffer202 = command_encoder202.finish();
    
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    device30.pushErrorScope("out-of-memory");
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    texture200.destroy();
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query001
    });
    render_pass_encoder0020.executeBundles([])
    texture003.destroy();
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    texture300.destroy();
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
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
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const array3 = new Float32Array([1.0, -1.0, 0.5, 1.0, -1.0, -0.5, 1.0, 0.0, -0.5, -0.25, 0.5, 0.5, -0.25, 0.0, -0.75, -0.75, -0.5, -0.75, -0.25, 0.5, -0.25, 0.25, -1.0, 0.75, 0.25, 0.0, -0.25, 1.0, -0.25, 1.0, -0.25, 0.5, 0.75, 0.75, 0.5, 0.75, 0.5, -1.0, 0.5, -0.75, 1.0, 0.5, 0.75, 0.0, -1.0, 0.5, -0.25, 0.0, 0.5, -0.75, 0.5, 1.0, 0.0, 1.0, -0.5, 0.5, 0.5, -0.5, -1.0, -1.0, -1.0, 0.5, 1.0, -1.0, 1.0, 1.0, 0.0, 0.75, -0.25, 0.0, -1.0, 0.0, -0.5, 0.5, -0.75, 0.25, -0.5, -1.0, 0.75, 1.0, 1.0, 0.25, -0.25, 1.0, 0.25, 0.75, -0.5, 1.0, -0.75, -0.25, 1.0, 0.0, -0.75, -0.5, -0.75, 1.0, 0.5, -0.25, 0.0, 0.75, ]);
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder203.insertDebugMarker("mymarker");
    
    const command_buffer301 = command_encoder301.finish();
    texture003.destroy();
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    compute_pass_encoder3020.popDebugGroup()
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder2001.insertDebugMarker("marker")
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
    
    texture004.destroy();
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array4 = new Float32Array([1.0, -0.75, 0.75, 0.5, 0.5, 1.0, -1.0, 0.25, 1.0, -0.25, 1.0, 0.25, 1.0, -0.25, -0.75, 0.25, -1.0, -0.5, 0.75, -1.0, -0.5, 1.0, -1.0, 0.75, 0.5, 1.0, -0.5, 0.5, 0.0, -1.0, 1.0, -0.5, -1.0, 0.0, 0.75, 0.5, 0.5, 0.0, -0.75, -1.0, -1.0, -0.25, 1.0, -0.5, 0.75, 1.0, 0.5, -0.25, 0.25, -0.5, -0.75, 0.75, 0.25, 0.0, -0.5, -0.25, -1.0, 0.25, 0.75, 0.75, -0.5, 0.5, -1.0, -0.75, 0.25, 0.5, -1.0, 1.0, 0.5, -1.0, 0.0, 1.0, -0.75, 0.5, 0.25, 0.25, 0.0, 1.0, -0.5, 0.75, 1.0, -0.5, -0.5, -1.0, 0.5, -1.0, -0.75, -0.75, 1.0, 0.5, 0.0, -0.25, -0.75, 0.0, -0.5, -0.25, 0.5, 0.5, 0.0, -0.25, ]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder0020.beginOcclusionQuery(0)
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    
    buffer201.destroy()
    device30.queue.writeTexture({ texture: texture302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    
    render_pass_encoder0020.executeBundles([])
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    texture201.destroy();
    
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    compute_pass_encoder2011.insertDebugMarker("marker")
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    command_encoder302.insertDebugMarker("mymarker");
    const command_encoder803 = device80.createCommandEncoder({ label: "command_encoder803" });
    compute_pass_encoder3020.popDebugGroup()
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
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
    const command_buffer803 = command_encoder803.finish();
    device30.queue.writeTexture({ texture: texture302 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0030.executeBundles([])
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    compute_pass_encoder8000.insertDebugMarker("marker")
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const compute_pass_encoder8020 = command_encoder802.beginComputePass({ label: "compute_pass_encoder8020" });
    device00.queue.submit([command_buffer001, ]);
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device80.queue.submit([command_buffer803, ]);
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    const texture_view8020 = texture802.createView({ label: "texture_view8020" });
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    device00.pushErrorScope("validation");
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const command_encoder804 = device80.createCommandEncoder({ label: "command_encoder804" });
    render_pass_encoder0021.insertDebugMarker("marker");
    compute_pass_encoder8020.pushDebugGroup("group_marker")
    device30.queue.writeTexture({ texture: texture302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder8020.popDebugGroup()
    command_encoder400.insertDebugMarker("mymarker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture803 = device80.createTexture({
        label: "texture803",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device80.queue.writeTexture({ texture: texture802 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder8040 = command_encoder804.beginComputePass({ label: "compute_pass_encoder8040" });
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder2001.insertDebugMarker("marker")
    const command_buffer801 = command_encoder801.finish();
    
    compute_pass_encoder2001.popDebugGroup()
    device30.queue.submit([]);
    render_pass_encoder0021.insertDebugMarker("marker");
    render_pass_encoder0021.setStencilReference(1);
    
    
    device30.queue.writeTexture({ texture: texture302 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer203 = command_encoder203.finish();
    device30.queue.writeTexture({ texture: texture302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.insertDebugMarker("marker");
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    texture800.destroy();
    device20.pushErrorScope("out-of-memory");
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    compute_pass_encoder3030.insertDebugMarker("marker")
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer800.destroy()
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    
    
    
    
    
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder3030.popDebugGroup()
    texture802.destroy();
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0021.pushDebugGroup("group_marker");
    texture400.destroy();
    
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    texture006.destroy();
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder805 = device80.createCommandEncoder({ label: "command_encoder805" });
    render_pass_encoder0021.setStencilReference(1);
    const texture_view8021 = texture802.createView({ label: "texture_view8021" });
    const render_pass_encoder8040 = command_encoder804.beginRenderPass({
        label: "render_pass_encoder8040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view8000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder8040.setStencilReference(1);
    render_pass_encoder0021.beginOcclusionQuery(0)
    device40.pushErrorScope("out-of-memory");
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
        occlusionQuerySet: undefined
    });
    render_pass_encoder0030.pushDebugGroup("group_marker");
    buffer801.destroy()
    const texture804 = device80.createTexture({
        label: "texture804",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0021.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    compute_pass_encoder2001.insertDebugMarker("marker")
    render_pass_encoder0030.executeBundles([])
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
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
    render_pass_encoder0020.setStencilReference(1);
    compute_pass_encoder2001.pushDebugGroup("group_marker")
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder8050 = command_encoder805.beginRenderPass({
        label: "render_pass_encoder8050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view8000,
            },
        ],
        occlusionQuerySet: query800
    });
    compute_pass_encoder8000.insertDebugMarker("marker")
    compute_pass_encoder8000.pushDebugGroup("group_marker")
    device30.queue.writeTexture({ texture: texture302 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2011.pushDebugGroup("group_marker")
    device30.pushErrorScope("out-of-memory");
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    compute_pass_encoder3030.insertDebugMarker("marker")
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder8040.setScissorRect(0, 0, texture800.width / 2, texture800.height / 2);
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder3050 = command_encoder305.beginComputePass({ label: "compute_pass_encoder3050" });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    device80.queue.writeTexture({ texture: texture801 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    compute_pass_encoder2011.insertDebugMarker("marker")
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    command_encoder400.insertDebugMarker("mymarker");
    compute_pass_encoder8040.pushDebugGroup("group_marker")
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder3030.pushDebugGroup("group_marker");
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
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query005
    });
    
    compute_pass_encoder8020.insertDebugMarker("marker")
    texture302.destroy();
    
    command_encoder304.insertDebugMarker("mymarker");
    render_pass_encoder0020.executeBundles([])
    compute_pass_encoder3050.pushDebugGroup("group_marker")
    compute_pass_encoder8040.popDebugGroup()
    device00.pushErrorScope("validation");
    compute_pass_encoder2000.insertDebugMarker("marker")
    const texture_view8040 = texture804.createView({ label: "texture_view8040" });
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder0021.setStencilReference(1);
    render_pass_encoder0021.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    texture002.destroy();
    render_pass_encoder0031.insertDebugMarker("marker");
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const command_buffer400 = command_encoder400.finish();
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0031.insertDebugMarker("marker");
    texture804.destroy();
    
    const command_buffer804 = command_encoder804.finish();
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_pass_encoder0031.beginOcclusionQuery(0)
    texture803.destroy();
    device00.queue.writeTexture({ texture: texture005 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    device80.queue.submit([command_buffer801, command_buffer803, command_buffer804, ]);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_pass_encoder0021.executeBundles([])
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    
    compute_pass_encoder3040.insertDebugMarker("marker")
    render_pass_encoder0030.beginOcclusionQuery(2)
    compute_pass_encoder8040.insertDebugMarker("marker")
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder8040.executeBundles([])
    device40.pushErrorScope("out-of-memory");
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder204.resolveQuerySet(
        query201,
        0,
        32,
        buffer201,
        0
    )
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder8050.insertDebugMarker("marker");
    
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    compute_pass_encoder3030.popDebugGroup()
    compute_pass_encoder8040.insertDebugMarker("marker")
    render_pass_encoder3030.setStencilReference(1);
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    compute_pass_encoder2001.insertDebugMarker("marker")
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    
    const command_buffer204 = command_encoder204.finish();
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    compute_pass_encoder3040.pushDebugGroup("group_marker")
    render_pass_encoder0020.setStencilReference(1);
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder0031.pushDebugGroup("group_marker");
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "stencil8",
        dimension: "2d"
    });
    buffer100.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    compute_pass_encoder8020.insertDebugMarker("marker")
    
    command_encoder305.copyTextureToTexture(
        {
            texture: texture300
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
    render_pass_encoder8050.setStencilReference(1);
    command_encoder401.insertDebugMarker("mymarker");
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder0031.insertDebugMarker("marker");
    device40.queue.writeTexture({ texture: texture401 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2010.insertDebugMarker("marker")
    const texture805 = device80.createTexture({
        label: "texture805",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view8050 = texture805.createView({ label: "texture_view8050" });
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device70.pushErrorScope("internal");
    
    render_pass_encoder0021.setStencilReference(1);
    
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query200
    });
    const render_pass_encoder8020 = command_encoder802.beginRenderPass({
        label: "render_pass_encoder8020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view8020,
            },
        ],
        occlusionQuerySet: query800
    });
    compute_pass_encoder3030.insertDebugMarker("marker")
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
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
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3030.popDebugGroup();
    device20.queue.writeTexture({ texture: texture202 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2000.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    render_pass_encoder0020.insertDebugMarker("marker");
    texture203.destroy();
    command_encoder004.insertDebugMarker("mymarker");
    render_pass_encoder3030.executeBundles([])
    compute_pass_encoder2010.insertDebugMarker("marker")
    const texture_view8051 = texture805.createView({ label: "texture_view8051" });
    render_pass_encoder0040.setStencilReference(1);
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    render_pass_encoder2000.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    compute_pass_encoder8020.insertDebugMarker("marker")
    render_pass_encoder2000.insertDebugMarker("marker");
    compute_pass_encoder8000.insertDebugMarker("marker")
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0021.popDebugGroup();
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3030.popDebugGroup()
    compute_pass_encoder8000.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    const command_buffer1000 = command_encoder1000.finish();
    compute_pass_encoder2011.popDebugGroup()
    compute_pass_encoder3030.popDebugGroup()
    device30.queue.submit([]);
    compute_pass_encoder3040.popDebugGroup()
    compute_pass_encoder2011.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    device00.queue.submit([]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder3050.popDebugGroup()
    device20.queue.submit([command_buffer203, ]);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder8020.popDebugGroup()
    device100.queue.submit([command_buffer1000, ]);
    const command_buffer200 = command_encoder200.finish();
    device100.queue.submit([command_buffer1000, ]);
    const command_buffer802 = command_encoder802.finish();
    device80.queue.submit([command_buffer801, command_buffer802, ]);
    render_pass_encoder8040.popDebugGroup();
    const command_buffer401 = command_encoder401.finish();
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer202, ]);
    render_pass_encoder2000.popDebugGroup();
    device20.queue.submit([command_buffer202, command_buffer204, ]);
    render_pass_encoder8040.popDebugGroup();
    const command_buffer304 = command_encoder304.finish();
    device20.queue.submit([]);
    device100.queue.submit([]);
    compute_pass_encoder3040.popDebugGroup()
    device20.queue.submit([command_buffer203, ]);
    const command_buffer303 = command_encoder303.finish();
    const command_buffer004 = command_encoder004.finish();
    device110.queue.submit([]);
    device100.queue.submit([]);
    render_pass_encoder0020.popDebugGroup();
    device30.queue.submit([command_buffer304, ]);
    compute_pass_encoder8020.popDebugGroup()
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    device100.queue.submit([command_buffer1000, ]);
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    device30.queue.submit([command_buffer304, ]);
    render_pass_encoder0031.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    const command_buffer002 = command_encoder002.finish();
    device20.queue.submit([command_buffer202, ]);
    device40.queue.submit([]);
    device00.queue.submit([]);
    compute_pass_encoder2000.popDebugGroup()
    device80.queue.submit([command_buffer802, ]);
    device00.queue.submit([command_buffer002, ]);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3030.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    device80.queue.submit([command_buffer801, command_buffer802, ]);
    compute_pass_encoder3040.popDebugGroup()
    device80.queue.submit([command_buffer803, command_buffer804, ]);
    const command_buffer003 = command_encoder003.finish();
    device20.queue.submit([command_buffer201, ]);
    device80.queue.submit([command_buffer802, ]);
    compute_pass_encoder2000.popDebugGroup()
    device80.queue.submit([command_buffer802, ]);
    render_pass_encoder0030.popDebugGroup();
    device20.queue.submit([command_buffer204, ]);
    device100.queue.submit([]);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2001.popDebugGroup()
    const command_buffer805 = command_encoder805.finish();
    const command_buffer800 = command_encoder800.finish();
    render_pass_encoder0021.popDebugGroup();
    device80.queue.submit([command_buffer800, command_buffer805, ]);
    device00.queue.submit([]);
    device20.queue.submit([command_buffer204, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    device100.queue.submit([]);
    render_pass_encoder0040.popDebugGroup();
    const command_buffer302 = command_encoder302.finish();
    compute_pass_encoder3050.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    device80.queue.submit([command_buffer803, ]);
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder8000.popDebugGroup()
    device20.queue.submit([command_buffer204, ]);
    device30.queue.submit([command_buffer302, ]);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder8000.popDebugGroup()
    compute_pass_encoder3040.popDebugGroup()
    device00.queue.submit([command_buffer002, ]);
    device30.queue.submit([command_buffer304, ]);
    compute_pass_encoder2011.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder3030.popDebugGroup()
    device80.queue.submit([]);
    device110.queue.submit([]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder3030.popDebugGroup();
    device30.queue.submit([command_buffer304, ]);
    device80.queue.submit([command_buffer802, ]);
    render_pass_encoder8020.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer002, command_buffer004, ]);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder2000.popDebugGroup();
    const command_buffer305 = command_encoder305.finish();
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder2000.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    compute_pass_encoder2010.popDebugGroup()
    device40.queue.submit([]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder3030.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder3030.popDebugGroup();
    device20.queue.submit([command_buffer202, command_buffer204, ]);
    device110.queue.submit([]);
    render_pass_encoder3030.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    device100.queue.submit([]);
    device110.queue.submit([]);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder8020.popDebugGroup();
    render_pass_encoder3030.popDebugGroup();
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder8040.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    device30.queue.submit([command_buffer305, ]);
    compute_pass_encoder8000.popDebugGroup()
    device00.queue.submit([command_buffer002, ]);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder8000.popDebugGroup()
    compute_pass_encoder3040.popDebugGroup()
    device30.queue.submit([command_buffer304, ]);
    device00.queue.submit([command_buffer003, ]);
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder2011.popDebugGroup()
    device40.queue.submit([command_buffer401, ]);
    device20.queue.submit([]);
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder2010.popDebugGroup()
    device20.queue.submit([command_buffer201, ]);
    device80.queue.submit([]);
    render_pass_encoder3030.popDebugGroup();
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2000.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder8040.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder3040.popDebugGroup()
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder8040.popDebugGroup();
    render_pass_encoder3030.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
}