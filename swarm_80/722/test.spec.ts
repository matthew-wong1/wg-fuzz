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
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
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
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture000.destroy();
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg16uint",
        dimension: "2d"
    });
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const command_buffer000 = command_encoder000.finish();
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    device00.queue.submit([command_buffer000, ]);
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    texture001.destroy();
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
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
    query000.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    
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
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    buffer000.destroy()
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32sint",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    texture002.destroy();
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    
    render_bundle_encoder000.popDebugGroup();
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    device00.destroy();
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array0 = new Float32Array([0.0, -0.5, 0.75, 0.5, -0.5, 0.0, 0.75, 0.5, 0.25, 0.25, -0.75, 0.0, 0.0, 0.25, -0.5, 0.25, -1.0, 0.25, 0.0, 0.5, 0.0, 0.5, 0.75, 0.75, 0.0, 0.75, 0.75, 0.25, 0.5, -0.5, 0.75, -0.5, -0.5, -0.75, -0.25, 1.0, 0.25, -0.75, 0.0, 0.25, 0.0, 0.75, -0.75, -1.0, -0.25, 1.0, -0.25, 0.25, -1.0, 0.5, -0.75, 0.0, 1.0, -1.0, -0.5, 0.75, 0.75, 0.0, -0.75, 0.0, 1.0, 0.5, 0.5, -0.75, -0.75, -0.25, 1.0, -1.0, 0.0, 1.0, 1.0, 0.25, 0.5, 1.0, 0.0, 0.75, 0.5, 0.75, -0.75, 1.0, 0.75, 0.0, -0.25, 0.0, 0.0, -1.0, 0.5, 0.25, -1.0, -1.0, -0.5, 1.0, -0.5, -0.75, 0.5, -1.0, -0.75, 0.5, 0.75, -0.5, ]);
    const array1 = new Float32Array([-0.25, -0.75, -1.0, 0.25, 1.0, -0.25, -0.5, 0.75, -0.25, -1.0, -0.5, -0.25, -0.75, 0.5, -0.25, 1.0, -0.75, 0.5, -0.75, 1.0, -0.5, 0.25, 0.25, -0.75, 0.75, 1.0, -1.0, 1.0, 1.0, 0.5, 0.5, 0.25, 0.25, 0.25, -0.25, 0.25, 1.0, -0.5, -0.25, 0.5, 0.5, -0.25, -0.25, -1.0, 0.25, 0.0, -0.75, -0.75, -0.75, -1.0, -0.25, 0.25, 0.25, 0.0, -0.25, 0.25, -0.5, 0.0, 0.75, 0.75, -0.25, -0.25, 0.0, -0.25, -0.75, -0.5, -0.75, 0.5, -0.5, 0.5, -0.25, 1.0, 0.5, -0.25, -0.5, -0.75, -1.0, -0.5, 0.0, -0.75, 0.0, 1.0, 0.5, -1.0, 0.25, -0.5, -0.75, 0.25, 0.25, -0.5, -0.5, -1.0, 0.75, -0.25, 0.25, -0.25, -0.75, 0.5, 0.25, 0.25, ]);
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const array2 = new Float32Array([-0.75, -0.5, -0.5, -0.25, -0.75, 0.75, 0.0, 0.75, -0.75, -0.25, 0.0, 1.0, 0.5, -0.5, -0.25, 0.75, 0.0, -0.25, 1.0, -0.75, 0.75, 1.0, -1.0, 0.5, 1.0, -0.25, 0.75, 0.25, -0.25, 1.0, 0.0, -0.5, -0.25, 0.0, -0.5, -0.25, -0.5, 0.5, -0.5, 0.25, -1.0, 0.75, 0.75, 0.25, 0.75, 1.0, -0.5, 0.5, 1.0, 0.75, 1.0, 1.0, 0.5, 0.25, -0.75, 0.0, 1.0, 0.25, -0.5, 0.75, 0.75, 0.5, 0.5, 1.0, -0.75, -0.5, 0.75, -0.25, 0.75, 0.75, -0.25, 1.0, 0.75, 0.25, -0.5, 0.5, 0.25, 1.0, 0.25, 0.75, -0.25, 0.5, -0.25, -0.75, 1.0, -0.5, 0.75, 0.75, 0.75, -0.25, 0.25, 0.75, -1.0, -1.0, 0.0, 0.0, -0.5, -0.25, 0.5, -0.75, ]);
    buffer100.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
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
    
    
    
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8uint",
        dimension: "2d"
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
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    query200.destroy()
    
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
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.destroy();
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    device30.destroy();
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    query102.destroy()
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
    query101.destroy()
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    query100.destroy()
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    
    
    buffer101.destroy()
    
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    query101.destroy()
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    query103.destroy()
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder400.insertDebugMarker("mymarker");
    command_encoder400.pushDebugGroup("mygroupmarker")
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    query102.destroy()
    query102.destroy()
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
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query103.destroy()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    query104.destroy()
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query104.destroy()
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
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
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    query103.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
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
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    query104.destroy()
    const array3 = new Float32Array([-0.25, 0.75, -0.75, -0.25, -0.75, -0.25, -0.75, 0.0, 0.0, -0.25, 0.25, 0.75, 0.5, -0.5, 0.25, -1.0, 0.0, 1.0, 0.75, -0.75, 1.0, -1.0, -0.75, -0.5, -0.25, -0.25, -0.25, -0.75, 0.0, -0.5, -1.0, -0.25, -0.5, 0.5, 0.25, -0.25, -0.5, 0.75, -0.5, 0.25, 0.75, -0.75, 0.5, 0.25, 1.0, -0.25, -1.0, 1.0, -1.0, -1.0, 0.0, 0.75, -0.5, 0.0, 0.0, -1.0, 0.5, -0.75, -0.5, -0.5, 1.0, -1.0, 0.0, 0.75, 1.0, -0.5, 0.75, -0.25, 0.0, 0.75, 1.0, 0.75, -0.25, 0.75, -1.0, 1.0, -1.0, -1.0, 0.25, 0.75, -0.5, 0.0, 0.5, 0.5, 0.75, -0.75, 0.25, -0.5, -0.25, 0.0, -0.5, 0.25, 1.0, 0.0, 0.5, -0.75, 1.0, 0.0, -1.0, 0.0, ]);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder400.clearBuffer(buffer400);
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_buffer600 = command_encoder600.finish();
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    const array4 = new Float32Array([1.0, -1.0, -0.75, 0.0, 0.75, -0.25, -0.5, 0.25, -1.0, 1.0, -1.0, 0.5, -1.0, 0.75, -0.5, 0.25, 0.5, 0.0, 0.25, -0.25, -0.25, -0.75, -0.25, 0.0, 1.0, 1.0, 0.75, -0.25, -0.75, 0.5, 0.25, 1.0, 1.0, 0.25, -1.0, 0.25, 0.25, 0.75, 0.5, 0.5, -0.5, 1.0, -1.0, -0.5, -0.75, -0.25, 0.5, 0.75, -0.75, -1.0, 0.75, 0.25, 0.0, -1.0, 0.25, 0.5, -0.5, -0.5, 0.0, 0.25, -0.25, 0.25, 0.25, 0.75, 0.75, -0.75, 0.25, -0.25, -0.75, 0.0, -1.0, 0.5, 0.0, 1.0, -0.75, 1.0, 0.0, -0.5, -0.5, -0.5, 0.5, -1.0, 0.75, -0.25, -0.75, -1.0, 0.25, -1.0, 0.0, -1.0, 1.0, 0.75, 0.75, -0.5, -0.25, 0.0, -1.0, 0.5, -0.5, -0.75, ]);
    buffer102.destroy()
    command_encoder401.clearBuffer(buffer400);
    query104.destroy()
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder400.insertDebugMarker("mymarker");
    
    
    
    const array5 = new Float32Array([0.25, 0.25, 0.5, -1.0, 0.75, 0.0, -0.75, 0.25, 0.25, 0.25, 0.75, 1.0, -0.25, 0.75, -0.5, 0.25, -0.5, -0.25, 1.0, -0.5, 0.75, -1.0, 0.5, 0.0, -0.75, 0.0, -0.25, -0.5, -0.25, -1.0, -1.0, -1.0, 1.0, 0.0, -0.75, 1.0, -0.75, 0.0, 0.5, 0.5, -1.0, 1.0, 1.0, -1.0, -0.25, 0.75, -1.0, -1.0, 0.75, 0.0, 0.0, -0.5, 1.0, -0.25, -0.5, 1.0, -0.25, 0.75, -0.75, -0.25, -0.75, -1.0, 0.5, -0.5, 0.25, 1.0, 0.0, -1.0, 0.25, 0.0, 1.0, -0.5, -0.75, -0.25, 1.0, 0.75, 0.0, 0.75, 0.25, -0.25, -0.25, -0.5, 0.25, 0.0, -0.25, 0.5, -0.75, 0.25, 1.0, 0.25, 0.0, 0.5, 0.5, -1.0, -1.0, -0.75, 1.0, 1.0, -0.75, 0.75, ]);
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
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: query102
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    command_encoder400.clearBuffer(buffer400);
    buffer103.destroy()
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
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    texture500.destroy();
    
    device50.destroy();
    query100.destroy()
    query102.destroy()
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    command_encoder401.insertDebugMarker("mymarker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    render_pass_encoder1010.executeBundles([])
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
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    query103.destroy()
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const array6 = new Float32Array([-0.75, -0.75, -1.0, -0.5, 0.0, 0.0, 0.5, -0.75, -0.5, 0.0, 0.75, -1.0, 0.0, 0.25, -0.75, -1.0, 0.5, -1.0, 0.75, 0.25, -0.25, -0.5, 0.25, -0.5, 0.75, 0.25, 0.0, -0.25, 0.25, 0.75, -0.25, 0.75, 0.5, 1.0, 1.0, -0.25, -0.75, 0.0, -1.0, 1.0, 0.5, 0.75, 1.0, -0.75, 0.5, -0.5, 0.5, 0.75, 0.25, 0.0, 0.5, 0.5, -1.0, 0.0, -0.75, 0.5, -0.5, 0.25, 1.0, 1.0, -0.25, -0.25, 0.75, 0.25, -0.25, 0.5, -0.75, 0.75, 0.75, 1.0, -0.5, 0.25, -0.25, 0.25, 0.0, 0.25, -0.75, -0.5, -0.75, 0.25, -0.25, 0.0, 0.0, -0.5, -0.25, 0.5, -0.25, 0.25, 0.0, 1.0, 0.0, 1.0, -0.5, -0.5, -1.0, -0.5, 1.0, -0.5, 0.75, 0.75, ]);
    
    command_encoder701.insertDebugMarker("mymarker");
    
    
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    query104.destroy()
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder1010.executeBundles([])
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    device60.queue.submit([command_buffer600, ]);
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    command_encoder401.pushDebugGroup("mygroupmarker")
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    command_encoder400.insertDebugMarker("mymarker");
    
    query103.destroy()
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    buffer400.destroy()
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    query104.destroy()
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query105
    });
    render_pass_encoder1030.beginOcclusionQuery(0)
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    query101.destroy()
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    buffer401.destroy()
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    query100.destroy()
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    
    command_encoder700.pushDebugGroup("mygroupmarker")
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_bundle_encoder900.insertDebugMarker("marker");
    query104.destroy()
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query103
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    const command_buffer701 = command_encoder701.finish();
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_pass_encoder1030.pushDebugGroup("group_marker");
    
    render_pass_encoder1010.popDebugGroup();
    
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_pass_encoder1010.insertDebugMarker("marker");
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    render_pass_encoder1040.setStencilReference(1);
    
    render_pass_encoder1040.executeBundles([])
    
    
    render_bundle_encoder400.popDebugGroup();
    
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    query700.destroy()
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    
    
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    
    render_pass_encoder1010.setStencilReference(1);
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1030.endOcclusionQuery()
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    device110.destroy();
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder6010.insertDebugMarker("marker")
    
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module705_code = "";
    try {
        shader_module705_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module705 = await device70.createShaderModule({ label: "shader_module705", code: shader_module705_code })
    
    
    
    
    
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    query103.destroy()
    
    compute_pass_encoder7000.insertDebugMarker("marker")
    
    query102.destroy()
    device90.destroy();
    
    query105.destroy()
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device80.queue.writeBuffer(buffer800, 0, array2, 0, array2.length);
    
    compute_pass_encoder7000.insertDebugMarker("marker")
    
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    render_pass_encoder1030.insertDebugMarker("marker");
    device80.destroy();
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    render_bundle_encoder100.popDebugGroup();
    texture400.destroy();
    
    
    
    compute_pass_encoder6010.insertDebugMarker("marker")
    device100.destroy();
    const bind_group_layout603 = device60.createBindGroupLayout({ 
        label: "bind_group_layout603",
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module706_code = "";
    try {
        shader_module706_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module706 = await device70.createShaderModule({ label: "shader_module706", code: shader_module706_code })
    
    const array7 = new Float32Array([0.25, 0.0, -1.0, 0.25, -0.25, -0.75, 1.0, 0.75, 0.25, -0.5, -0.5, -0.75, 0.25, -0.75, -0.75, 0.25, -0.5, -0.5, -0.25, -0.5, -0.25, 0.25, -0.25, -1.0, 0.5, -0.75, -0.75, -0.5, -0.25, -1.0, -1.0, -1.0, -0.5, -0.25, -0.5, -0.25, -0.25, 0.0, 0.0, 0.25, 0.0, 0.25, 0.0, 0.5, -0.5, -1.0, 0.25, -1.0, 0.5, 0.5, 0.0, -0.5, -0.75, -0.75, -0.25, -1.0, 0.5, 0.0, -0.25, 0.75, -1.0, 0.75, 0.5, 0.5, -0.5, -1.0, -1.0, 0.5, 1.0, 1.0, -0.25, 0.5, -1.0, 0.75, 0.75, -0.25, -0.25, -0.25, -0.75, -1.0, -1.0, 0.75, -0.5, -1.0, 0.75, -0.75, -0.75, 0.25, 1.0, 0.75, -0.75, 1.0, 0.25, -0.75, 0.75, 0.0, -1.0, 0.0, -1.0, 0.0, ]);
    render_pass_encoder1030.executeBundles([])
    
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder7000.insertDebugMarker("marker")
    render_pass_encoder1010.executeBundles([])
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
    
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_pass_encoder1030.executeBundles([])
    
    
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    query102.destroy()
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    
    const array8 = new Float32Array([1.0, -0.5, 0.0, 0.25, 0.0, -0.75, 0.75, 1.0, -0.75, -1.0, -0.5, 0.0, 0.25, -0.5, -0.25, 0.5, -0.75, -0.5, 0.75, -0.75, 1.0, 0.0, -0.75, 0.0, -0.5, 0.0, 1.0, -0.5, -0.75, -0.25, -0.5, 0.5, -0.75, 0.25, -0.5, -0.5, 0.25, -0.5, -0.5, 0.0, -0.75, -0.25, 1.0, -1.0, -0.25, -0.75, -0.25, -1.0, 0.25, 0.75, -1.0, 0.25, 0.25, 0.25, -0.75, 0.75, 0.5, 0.75, 0.0, -0.25, 1.0, 0.25, 0.25, 0.25, -0.75, -0.75, -0.5, 0.0, -1.0, -0.5, -1.0, 0.0, 0.5, 0.25, -1.0, -0.25, -1.0, 0.75, -0.75, 1.0, 0.75, -0.25, -0.75, -0.75, 0.75, -0.5, -0.25, 1.0, -1.0, -1.0, -0.25, 0.25, 0.5, -0.75, 0.0, 0.0, 0.0, 0.5, 0.75, 1.0, ]);
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
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
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1030.setStencilReference(1);
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module1012_code = "";
    try {
        shader_module1012_code = await fs.readFile(__dirname + '/shader_module1012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1012 = await device10.createShaderModule({ label: "shader_module1012", code: shader_module1012_code })
    
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder100.popDebugGroup();
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture700.destroy();
    device70.queue.submit([command_buffer701, ]);
    const command_buffer602 = command_encoder602.finish();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
}