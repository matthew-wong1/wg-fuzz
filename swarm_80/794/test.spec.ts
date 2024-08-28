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
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    buffer000.destroy()
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.pushErrorScope("internal");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
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
        powerPreference: "low-power"
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
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
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    buffer001.destroy()
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
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
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("internal");
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const array0 = new Float32Array([-0.25, -0.25, 0.75, -0.25, -0.25, 0.5, 0.25, 0.0, 0.25, 0.25, -0.75, 0.5, -0.5, -0.75, 1.0, -0.5, 0.0, -1.0, -0.25, 0.75, 0.25, 0.75, -0.5, 1.0, -0.75, -0.75, -0.75, -0.25, -0.5, -0.5, 0.75, -1.0, 0.75, -0.5, -1.0, 0.0, 0.75, 0.5, -0.75, -1.0, -0.5, 0.5, 0.75, -1.0, -0.5, -0.75, -0.75, -0.5, -0.25, -0.25, -0.75, -0.75, 0.0, -0.75, 0.75, -0.75, -0.5, -0.25, -1.0, -0.25, 0.5, 0.25, 0.25, -0.75, 0.5, 0.5, 0.25, 0.0, -1.0, 0.0, -0.25, 0.25, 0.25, -1.0, 0.0, 0.75, 0.25, 0.5, -0.5, -0.25, -0.25, -0.75, -1.0, 0.75, -0.75, 0.0, 0.25, -0.5, 0.5, -0.75, 0.0, -1.0, -0.5, 1.0, -0.5, 1.0, 0.0, 0.25, 0.75, -0.25, ]);
    
    query001.destroy()
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    buffer002.destroy()
    query000.destroy()
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array1 = new Float32Array([-0.75, 0.75, -1.0, 0.75, -0.25, -0.25, -0.75, -0.5, -1.0, 0.25, -0.5, 0.5, -0.5, 0.25, -0.75, -1.0, -0.5, -0.75, 0.5, -0.75, 0.5, -1.0, 0.0, -1.0, 1.0, 0.25, 0.5, -1.0, -1.0, 0.5, 1.0, -0.25, 0.5, 0.5, -0.25, -0.5, 1.0, 0.0, -0.5, -0.25, 0.75, 1.0, 0.5, 0.0, 0.0, -0.5, -0.25, -0.75, -0.25, -0.25, 0.75, -0.75, 0.5, 1.0, -0.5, -0.25, 1.0, 1.0, -0.25, -0.5, -0.5, -1.0, 0.0, -1.0, -0.5, 0.5, 0.0, 0.75, -0.5, 0.75, 0.5, 1.0, 0.0, -0.25, -0.5, -1.0, 0.5, -1.0, -1.0, -1.0, 0.75, -0.25, 0.75, -1.0, 0.75, 1.0, -0.5, 0.0, 0.5, 1.0, 0.75, 0.25, 0.25, 0.25, 0.5, 0.5, -0.25, 0.0, -0.75, 0.75, ]);
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    
    
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
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
    compute_pass_encoder2000.insertDebugMarker("marker")
    query002.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder400.pushDebugGroup("mygroupmarker")
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    query001.destroy()
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    buffer201.destroy()
    compute_pass_encoder2000.popDebugGroup()
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query100.destroy()
    device20.pushErrorScope("validation");
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    query000.destroy()
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    buffer003.destroy()
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    query200.destroy()
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const array2 = new Float32Array([0.25, 1.0, -0.75, -1.0, -0.25, 1.0, 0.5, 1.0, 0.25, 0.5, -0.5, 0.25, 0.75, 1.0, -0.75, -0.75, -1.0, -0.5, -0.5, -1.0, -0.5, -1.0, 0.75, 0.25, 0.5, 1.0, -0.25, -0.5, -0.25, -0.25, -0.75, 0.0, 0.5, -0.5, 0.25, 0.5, 1.0, -0.25, 0.0, -0.75, -0.25, 1.0, -0.5, 0.75, 0.75, -0.5, -1.0, 0.5, -0.5, 0.75, -0.25, 0.5, -1.0, -0.75, 0.25, 0.75, 0.0, -1.0, 0.25, 0.75, 0.75, -0.75, -0.5, 0.5, 0.0, -1.0, 0.25, 0.75, 0.5, -0.5, 1.0, -0.75, -0.5, 0.75, -1.0, 1.0, 0.0, 0.25, 0.0, 0.75, 0.5, 0.25, 0.5, 0.25, 1.0, 0.75, -0.75, 1.0, 0.5, -0.5, -1.0, 1.0, 0.0, -0.75, 0.5, 0.75, -1.0, -0.5, -0.25, 0.0, ]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture401 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2010.insertDebugMarker("marker")
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
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const array3 = new Float32Array([0.25, -0.5, 0.0, 0.5, 0.25, -1.0, 1.0, -0.75, -0.75, 0.25, 1.0, -1.0, 1.0, -0.5, -0.75, -0.25, 0.75, 0.75, 0.25, -1.0, 1.0, -0.5, 0.5, 0.75, -1.0, 1.0, 0.25, 1.0, 0.0, 1.0, 1.0, 1.0, 0.25, 0.0, -1.0, -0.25, -0.25, 0.25, 0.25, -0.25, -1.0, -1.0, -0.75, 1.0, 0.5, 0.75, -0.25, 1.0, -1.0, 0.5, 1.0, 1.0, -0.5, -0.75, -0.5, 0.25, -1.0, 0.25, 0.25, 0.0, 1.0, -1.0, -1.0, 0.25, -0.5, 1.0, -1.0, -0.25, 0.25, 0.0, -0.5, 1.0, -0.75, 0.75, -0.5, 0.5, 1.0, -1.0, 0.5, 0.0, 0.5, -0.75, 0.75, 0.0, -0.25, -1.0, 0.25, 0.25, 0.5, 0.5, -0.25, -0.25, -0.25, -0.25, -0.75, 0.25, 0.5, -0.25, 1.0, 0.5, ]);
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const command_buffer000 = command_encoder000.finish();
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_bundle_encoder100.popDebugGroup();
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    command_encoder001.popDebugGroup()
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device00.queue.submit([command_buffer000, ]);
    
    command_encoder400.clearBuffer(buffer400);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeTexture({ texture: texture401 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    buffer300.destroy()
    
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    device40.queue.writeTexture({ texture: texture401 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    query001.destroy()
    
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
    query001.destroy()
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32uint",
        dimension: "2d"
    });
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const command_buffer001 = command_encoder001.finish();
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    buffer200.destroy()
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    device40.queue.writeTexture({ texture: texture401 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile(__dirname + '/shader_module209.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    
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
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    buffer203.destroy()
    
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    
    
    
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16float",
        dimension: "2d"
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    device20.pushErrorScope("out-of-memory");
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    
    texture402.destroy();
    device40.queue.writeTexture({ texture: texture401 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    query201.destroy()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    buffer400.destroy()
    
    
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.pushErrorScope("internal");
    
    
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    texture401.destroy();
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    buffer204.destroy()
    
    
    texture201.destroy();
    texture001.destroy();
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
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
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    query001.destroy()
    device00.pushErrorScope("internal");
    query100.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder401.pushDebugGroup("mygroupmarker")
    
    const array4 = new Float32Array([0.75, -0.75, 0.25, 0.75, -0.5, -0.75, 0.0, 0.25, -1.0, 0.25, 0.5, -0.75, 0.25, -1.0, 0.75, -1.0, -1.0, 0.5, -0.5, -0.5, 0.25, 0.75, 0.75, -0.75, 0.25, 0.5, -1.0, 0.25, 0.0, -0.5, -1.0, 0.0, 0.5, 0.25, -1.0, 0.75, 0.5, 0.75, -0.25, -1.0, 0.75, 1.0, -0.5, -0.25, -0.5, -0.25, -1.0, 0.5, 0.75, 0.0, -0.5, -0.5, 1.0, -0.25, 0.0, -0.5, -0.75, -0.25, -0.5, -0.5, 0.5, 1.0, -1.0, 0.75, -0.75, -0.75, 0.0, 0.0, 0.25, 0.25, -0.25, -1.0, -0.25, 0.5, -0.75, -1.0, 1.0, -0.25, -1.0, -0.75, 1.0, 0.75, -0.75, -1.0, -0.25, 0.75, 1.0, 1.0, 0.0, -0.75, -0.5, 1.0, -0.75, -1.0, -0.25, -1.0, 1.0, 0.5, -1.0, -0.5, ]);
    query202.destroy()
    buffer101.destroy()
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    compute_pass_encoder2010.insertDebugMarker("marker")
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_buffer202 = command_encoder202.finish();
    const texture_view4031 = texture403.createView({ label: "texture_view4031" });
    
    
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const command_buffer101 = command_encoder101.finish();
    command_encoder301.pushDebugGroup("mygroupmarker")
    
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
    
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    compute_pass_encoder2000.popDebugGroup()
    
    command_encoder501.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    device00.queue.submit([command_buffer001, ]);
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    query202.destroy()
    
    
    
    command_encoder401.popDebugGroup()
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    
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
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    device40.pushErrorScope("internal");
    render_bundle_encoder001.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    command_encoder301.popDebugGroup()
    
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
    render_bundle_encoder001.popDebugGroup();
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2010.popDebugGroup()
    query101.destroy()
    buffer402.destroy()
    texture100.destroy();
    command_encoder301.resolveQuerySet(
        query300,
        0,
        32,
        buffer301,
        0
    )
    
    query401.destroy()
    
    texture101.destroy();
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    texture203.destroy();
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    query300.destroy()
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer100.destroy()
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    device30.pushErrorScope("validation");
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
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
    device20.queue.writeBuffer(buffer205, 0, array4, 0, array4.length);
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    query401.destroy()
    
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const command_buffer302 = command_encoder302.finish();
    
    buffer205.destroy()
    
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    
    
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    texture200.destroy();
    
    
    query000.destroy()
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    texture000.destroy();
    compute_pass_encoder4010.insertDebugMarker("marker")
    render_bundle_encoder302.popDebugGroup();
    
    texture400.destroy();
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    device50.queue.writeTexture({ texture: texture501 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    compute_pass_encoder4010.insertDebugMarker("marker")
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const texture_view4032 = texture403.createView({ label: "texture_view4032" });
    buffer301.destroy()
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder502.pushDebugGroup("mygroupmarker")
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer102.destroy()
    
    buffer401.destroy()
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    command_encoder301.resolveQuerySet(
        query300,
        0,
        32,
        buffer301,
        0
    )
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    command_encoder303.resolveQuerySet(
        query300,
        0,
        32,
        buffer301,
        0
    )
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    
    command_encoder501.popDebugGroup()
    compute_pass_encoder5000.insertDebugMarker("marker")
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder5000.insertDebugMarker("marker")
    texture301.destroy();
    
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_bundle_encoder100.popDebugGroup();
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    query000.destroy()
    render_bundle_encoder301.popDebugGroup();
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    device50.queue.writeTexture({ texture: texture501 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query201.destroy()
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.popDebugGroup()
    command_encoder502.popDebugGroup()
    const command_buffer502 = command_encoder502.finish();
    compute_pass_encoder2010.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder2000.popDebugGroup()
    const command_buffer303 = command_encoder303.finish();
    device30.queue.submit([command_buffer303, ]);
    compute_pass_encoder4000.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.submit([command_buffer202, ]);
    device50.queue.submit([command_buffer502, ]);
    const command_buffer501 = command_encoder501.finish();
    device50.queue.submit([command_buffer501, ]);
}