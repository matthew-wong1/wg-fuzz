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
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    command_encoder000.insertDebugMarker("mymarker");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const command_buffer000 = command_encoder000.finish();
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder001.pushDebugGroup("mygroupmarker")
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer000.destroy()
    
    buffer001.destroy()
    texture000.destroy();
    
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg16uint",
        dimension: "2d"
    });
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.pushErrorScope("internal");
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    texture001.destroy();
    
    
    
    const array0 = new Float32Array([-0.75, 0.5, 0.0, -1.0, -1.0, -0.5, 0.0, 1.0, -0.75, 1.0, 1.0, -0.5, -0.25, 0.0, -0.75, 0.5, 0.5, -0.25, 0.5, 0.0, -0.5, 0.25, -0.5, 1.0, -0.25, -0.75, -0.25, -1.0, 0.0, 0.25, -1.0, 0.5, 1.0, -0.75, -0.75, 0.75, 0.5, 1.0, 0.25, -1.0, -0.25, -1.0, 1.0, -1.0, -1.0, -0.25, 0.0, -0.75, 0.0, -1.0, 0.5, 0.25, 0.25, -0.75, 0.5, 0.5, 0.0, -0.5, 0.5, -0.25, 0.75, 0.0, -0.5, 0.5, 0.75, -1.0, 0.0, 1.0, 0.5, 0.0, -1.0, -1.0, 0.25, -0.5, 0.75, 0.75, 0.25, 1.0, 0.5, 0.0, -0.5, -0.5, -0.25, -1.0, -0.5, -0.25, 0.75, 1.0, -0.75, 0.75, 0.75, -0.25, -0.75, -0.5, -0.25, -0.5, 0.5, 0.25, 1.0, 0.75, ]);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const array1 = new Float32Array([-0.25, 0.25, -1.0, 0.5, -0.25, -0.25, 0.0, 1.0, -0.25, 1.0, 0.75, -0.25, -1.0, 0.5, -0.25, 0.25, 0.0, 0.5, 1.0, -0.5, 1.0, -0.5, 0.5, 0.25, 0.0, 0.25, 0.5, -0.25, 0.5, 0.25, -1.0, 1.0, 0.25, 0.5, 0.0, -1.0, 1.0, -0.5, 1.0, 0.25, 0.5, -0.75, 0.5, 0.75, 1.0, 0.5, -1.0, 0.75, 0.25, 0.25, 1.0, -0.25, -1.0, -0.5, 1.0, 0.5, 0.25, 0.5, -0.25, 0.0, 0.75, 0.25, 0.5, -1.0, 1.0, -0.25, -0.75, -0.25, 0.5, 0.25, 0.75, 1.0, 0.0, 0.5, 0.25, -0.5, 1.0, 0.5, -0.5, 0.25, 1.0, -0.5, 0.25, -0.5, -0.75, 0.75, 0.25, -0.25, -1.0, 0.0, -0.75, -0.25, 1.0, -0.25, -0.25, 0.5, 1.0, -1.0, 0.75, -0.5, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    render_bundle_encoder000.popDebugGroup();
    const command_buffer002 = command_encoder002.finish();
    device00.pushErrorScope("validation");
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    
    
    
    
    const array2 = new Float32Array([0.25, 0.5, 0.25, 0.0, -0.25, -0.5, 0.25, -0.5, -0.75, 0.5, -0.25, 0.75, 0.25, 0.25, -0.75, 0.75, 0.0, -0.25, -0.25, 0.5, -1.0, -1.0, 0.5, 0.0, -0.75, 0.5, 0.25, -0.75, 0.25, -0.25, 0.75, -0.5, 0.0, 0.75, 0.25, 0.0, 0.25, 0.0, 0.0, 1.0, -1.0, 0.75, -0.5, 0.5, -0.75, -0.25, -0.5, 1.0, -0.5, -0.75, 1.0, 0.5, -0.75, -0.75, 0.75, -0.5, 1.0, -0.75, 1.0, 0.0, 0.0, -0.5, 1.0, -1.0, -1.0, 0.25, -0.75, -1.0, 0.25, -0.25, 1.0, -0.75, 0.75, 1.0, 0.25, -1.0, -0.75, -0.25, 0.5, 0.5, -1.0, 0.25, 0.5, 0.5, 0.0, -1.0, 0.0, 0.25, 0.75, 0.25, 0.5, 0.75, 0.5, 0.75, 1.0, 0.0, -0.5, 0.5, -0.5, -0.25, ]);
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array3 = new Float32Array([-1.0, 0.5, -0.5, 0.25, -0.25, 0.25, 0.0, 0.0, 0.5, 1.0, -1.0, 1.0, -0.75, -0.25, -1.0, 0.0, 0.0, 0.0, 0.0, 0.75, 0.25, 0.5, 0.25, 1.0, -0.5, 0.75, -1.0, 0.75, 0.25, 0.25, 0.5, -0.75, 0.0, -0.75, 0.25, 0.5, -1.0, -1.0, 0.25, -0.75, 0.0, -0.5, -0.75, 1.0, 0.0, 0.75, -0.75, -0.5, 0.5, -1.0, 0.75, -0.5, 1.0, -0.75, -0.25, -0.25, 0.5, 1.0, -0.75, 1.0, 0.25, -1.0, 0.0, 0.25, -1.0, 0.0, -0.25, 1.0, 0.25, -0.5, 1.0, -0.5, 1.0, 0.0, -0.75, -0.5, 0.75, 0.0, 0.75, 0.25, 0.25, 0.75, 0.0, -0.75, 1.0, 0.75, 1.0, 0.25, -1.0, -0.25, -0.75, -0.5, -0.25, -0.25, 1.0, 0.5, 0.5, 0.25, 0.5, 0.75, ]);
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer002.destroy()
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
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
    command_encoder003.pushDebugGroup("mygroupmarker")
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    command_encoder003.insertDebugMarker("mymarker");
    
    const array4 = new Float32Array([1.0, -0.25, 0.0, 0.0, 0.25, 0.0, 0.75, 0.0, -0.25, 0.0, 0.5, 0.75, -0.5, 0.5, -0.25, 1.0, 1.0, 1.0, -0.5, -0.75, 1.0, 0.0, 0.0, 0.5, 1.0, 1.0, -0.25, 1.0, -0.75, 0.75, 0.0, -0.25, 0.75, -1.0, -0.5, 0.75, -0.25, 0.0, 0.25, 0.0, 1.0, 1.0, 0.0, 0.75, -0.5, -1.0, -0.5, 1.0, 0.75, -0.5, 0.5, 0.25, 0.75, -0.75, -1.0, -0.25, 1.0, 0.0, 0.25, -0.25, -0.5, -0.25, 0.0, 0.5, 0.75, 0.75, -1.0, 0.25, -1.0, 1.0, 0.5, -1.0, 0.0, -1.0, 1.0, 1.0, 0.75, -1.0, -1.0, 0.75, 0.25, 0.75, 0.0, 0.75, 0.5, -1.0, 0.0, 0.75, 0.5, 0.75, 0.0, -0.25, 0.5, -0.5, 1.0, 0.0, -0.5, -0.25, 0.75, -0.75, ]);
    device00.pushErrorScope("out-of-memory");
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    command_encoder003.insertDebugMarker("mymarker");
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const array5 = new Float32Array([-0.5, -0.25, -0.75, 0.25, 0.5, -0.25, 0.75, -0.5, 0.25, 1.0, 1.0, 0.75, 0.5, -1.0, -0.75, -0.5, -0.25, -0.25, -1.0, 1.0, -0.5, 0.25, 0.0, -0.25, 0.0, 0.75, -0.75, 0.25, -0.5, 0.75, 0.0, -0.25, -0.25, -0.25, 0.5, -0.5, 0.25, -0.75, -0.5, -0.75, 0.5, -0.5, 0.0, 0.75, 0.75, 1.0, 1.0, 0.75, 0.25, -0.25, 0.5, 0.0, 0.25, 0.5, 0.5, 0.0, 0.5, -0.75, 0.0, -0.5, 1.0, 0.75, -0.5, 1.0, -0.75, -0.25, 0.25, 0.0, 0.75, 0.75, -0.5, -1.0, -1.0, -0.25, 0.25, 0.0, 0.5, -0.75, 0.5, 1.0, 0.25, 0.75, 0.75, 1.0, -1.0, 1.0, -1.0, 0.75, -1.0, -0.5, 0.5, 0.0, -0.25, 0.25, -1.0, 0.0, 0.5, 0.0, 0.25, -0.25, ]);
    const array6 = new Float32Array([0.75, 1.0, -0.25, 1.0, -0.25, -0.5, -0.5, 0.0, 0.25, 0.75, 0.25, -0.75, 0.5, 1.0, -0.75, 1.0, -0.25, -1.0, 1.0, 0.75, -1.0, 0.5, -1.0, 0.25, 0.5, 1.0, -1.0, -1.0, 1.0, 0.25, -1.0, -0.75, 0.75, -0.25, 1.0, 0.0, 0.0, 0.0, 0.75, 0.25, 0.5, 0.25, -0.75, 0.25, -1.0, 0.25, -0.25, -0.75, 0.0, -1.0, 0.5, 0.25, -0.5, 0.0, 1.0, 0.0, -0.75, -0.25, -1.0, -0.25, -0.75, -0.75, 1.0, 1.0, 1.0, 0.75, -0.5, -0.5, 0.25, -1.0, 0.25, 0.5, -1.0, 0.0, -0.5, -1.0, -1.0, -0.5, -1.0, 0.0, 0.25, -1.0, 0.5, 0.75, 0.0, 0.5, 0.0, -1.0, -1.0, -0.75, 0.25, 0.25, 0.75, 0.75, 0.0, -0.75, 0.75, 0.5, 1.0, 0.0, ]);
    buffer004.destroy()
    const command_buffer004 = command_encoder004.finish();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    command_encoder003.insertDebugMarker("mymarker");
    
    render_bundle_encoder000.popDebugGroup();
    
    
    
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    render_bundle_encoder002.pushDebugGroup("group_marker");
    command_encoder003.insertDebugMarker("mymarker");
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    command_encoder003.insertDebugMarker("mymarker");
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer003.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device00.pushErrorScope("validation");
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device20.pushErrorScope("internal");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder101.pushDebugGroup("mygroupmarker")
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    texture200.destroy();
    
    
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device40.destroy();
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    device30.destroy();
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
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
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    device20.pushErrorScope("internal");
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    command_encoder102.pushDebugGroup("mygroupmarker")
    
    
    
    buffer202.destroy()
    
    
    
    
    
    
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const command_buffer100 = command_encoder100.finish();
    render_bundle_encoder002.popDebugGroup();
    command_encoder200.pushDebugGroup("mygroupmarker")
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
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
    buffer200.destroy()
    
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    command_encoder001.insertDebugMarker("mymarker");
    device00.queue.submit([command_buffer004, ]);
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    command_encoder201.insertDebugMarker("mymarker");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    command_encoder001.insertDebugMarker("mymarker");
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer201 = command_encoder201.finish();
    device10.pushErrorScope("validation");
    
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder006.pushDebugGroup("mygroupmarker")
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    texture100.destroy();
    device20.pushErrorScope("internal");
    buffer201.destroy()
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    
    command_encoder005.insertDebugMarker("mymarker");
    
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    
    command_encoder101.insertDebugMarker("mymarker");
    
    command_encoder005.pushDebugGroup("mygroupmarker")
    texture201.destroy();
    device00.queue.writeTexture({ texture: texture002 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    device00.queue.writeTexture({ texture: texture002 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    
    
    
    
    
    command_encoder006.insertDebugMarker("mymarker");
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    texture005.destroy();
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    command_encoder005.insertDebugMarker("mymarker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32uint",
        dimension: "2d"
    });
    
    command_encoder200.insertDebugMarker("mymarker");
    
    device20.queue.submit([command_buffer201, ]);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const array7 = new Float32Array([1.0, 0.75, 0.25, -0.25, -0.5, 1.0, 0.5, 0.25, -0.25, 0.25, 0.5, 0.75, 0.0, -0.75, -0.75, -0.5, -0.75, -0.5, 0.75, -0.75, 0.0, 0.75, -0.5, -1.0, 0.25, -0.25, 0.5, -0.5, -0.5, -0.5, -0.25, 0.0, 0.75, -0.5, 1.0, -0.5, -1.0, 0.25, -0.25, 0.75, -0.5, -0.25, 0.0, 0.5, 0.5, 0.0, 1.0, 0.0, 0.75, 1.0, -1.0, -0.75, 0.25, -0.5, 0.5, -1.0, 0.5, -0.25, -0.75, -0.75, 0.75, -0.25, -0.75, -0.5, -1.0, 0.75, -1.0, -0.5, 0.0, 0.25, 0.25, 0.5, -0.25, -0.5, 0.5, 0.75, 1.0, 0.25, -0.5, 1.0, 0.5, 0.25, -0.25, -0.25, 0.5, -0.25, -1.0, 1.0, -0.5, 0.5, 0.5, -0.25, 0.75, 0.5, 0.0, 0.5, 1.0, -0.25, 0.75, 0.5, ]);
    
    buffer005.destroy()
    
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
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    render_bundle_encoder102.popDebugGroup();
    
    
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture006 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder200.popDebugGroup();
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    device00.pushErrorScope("out-of-memory");
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    buffer203.destroy()
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device00.queue.writeTexture({ texture: texture006 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture006.destroy();
    const texture_view0042 = texture004.createView({ label: "texture_view0042" });
    
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    command_encoder001.clearBuffer(buffer006);
    const command_buffer103 = command_encoder103.finish();
    device10.pushErrorScope("validation");
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
    buffer102.destroy()
    
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile(__dirname + '/shader_module0012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    const texture_view0070 = texture007.createView({ label: "texture_view0070" });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder101.popDebugGroup();
    
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.pushErrorScope("out-of-memory");
    
    device00.queue.writeTexture({ texture: texture002 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    var shader_module0013_code = "";
    try {
        shader_module0013_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0013 = await device00.createShaderModule({ label: "shader_module0013", code: shader_module0013_code })
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    command_encoder001.clearBuffer(buffer006);
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
    
    
    
    command_encoder006.insertDebugMarker("mymarker");
    texture007.destroy();
    command_encoder102.insertDebugMarker("mymarker");
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    texture004.destroy();
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    device00.queue.writeTexture({ texture: texture002 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    command_encoder005.insertDebugMarker("mymarker");
    
    command_encoder200.clearBuffer(buffer204);
    buffer006.destroy()
    
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    command_encoder200.insertDebugMarker("mymarker");
    
    device10.pushErrorScope("internal");
    const sampler0010 = device00.createSampler( { label: "sampler0010" } );
    render_bundle_encoder201.popDebugGroup();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
    const array8 = new Float32Array([0.75, 0.25, 1.0, 1.0, 0.25, 0.25, 0.75, 0.25, -0.25, 1.0, 1.0, -0.25, 0.0, 0.5, 0.5, 1.0, -0.75, 0.0, 0.75, 0.5, 0.25, 0.5, 0.5, 0.0, 1.0, -0.5, -0.75, 1.0, 0.5, 1.0, 0.25, -0.5, -0.75, -0.75, 1.0, 0.25, -0.5, 0.75, 0.5, 1.0, 0.75, -0.25, -1.0, -0.75, 1.0, -0.25, 0.0, 0.25, -0.25, 0.0, -0.25, 0.75, -1.0, -0.25, 1.0, 0.25, 0.25, 0.5, 1.0, 0.0, 1.0, -1.0, 0.25, 0.0, 0.5, 0.5, 0.0, -0.25, 0.75, 0.75, 0.25, 0.75, -0.5, 0.25, 0.25, 0.5, 0.25, 0.0, 0.75, 0.0, 0.0, 0.0, 0.75, -0.25, 1.0, -0.5, 1.0, 0.75, -1.0, 0.75, 0.0, 0.25, 1.0, 0.75, -0.5, 0.0, -0.75, -1.0, -0.25, 1.0, ]);
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    
    texture101.destroy();
    
    
    
    
    const texture_view0023 = texture002.createView({ label: "texture_view0023" });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    render_bundle_encoder002.popDebugGroup();
    render_bundle_encoder101.popDebugGroup();
    
    device10.pushErrorScope("validation");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    
    command_encoder202.pushDebugGroup("mygroupmarker")
    
    buffer100.destroy()
    
    
    buffer007.destroy()
    texture003.destroy();
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    buffer103.destroy()
    
    buffer101.destroy()
    
    
    buffer104.destroy()
    
    
    device00.queue.writeTexture({ texture: texture002 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder005.insertDebugMarker("mymarker");
    device00.queue.writeTexture({ texture: texture002 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device00.queue.writeTexture({ texture: texture002 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    render_bundle_encoder200.popDebugGroup();
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler108 = device10.createSampler( { label: "sampler108" } );
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile(__dirname + '/shader_module209.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    command_encoder003.insertDebugMarker("mymarker");
    
    device00.queue.writeTexture({ texture: texture002 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder102.popDebugGroup();
    const sampler109 = device10.createSampler( { label: "sampler109" } );
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    command_encoder001.insertDebugMarker("mymarker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    command_encoder102.clearBuffer(buffer105);
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture002.destroy();
    command_encoder102.clearBuffer(buffer105);
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    render_bundle_encoder101.popDebugGroup();
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    
    
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array9 = new Float32Array([0.75, -0.5, -0.75, 0.5, 0.5, 0.25, 0.25, -0.25, -0.75, -0.75, -0.25, 0.5, 0.0, -0.5, 1.0, 0.25, 0.5, -0.5, 1.0, -0.75, 0.5, 0.25, -0.25, -0.75, -0.25, -0.25, 0.75, 0.0, 0.5, 0.5, 0.0, -1.0, -0.5, 1.0, 0.75, -0.5, 0.25, -1.0, 1.0, 0.25, 0.0, 0.0, 0.0, -0.25, -0.25, -0.75, -0.5, 1.0, -0.75, 0.25, 1.0, 0.75, 1.0, -0.25, -1.0, 0.75, 0.5, -0.75, -0.25, 0.25, -0.5, 0.0, 0.5, 0.0, 0.0, 0.25, -0.5, 1.0, 0.5, 0.0, 0.75, 0.0, -0.75, -0.25, 0.25, 0.0, -0.25, 0.0, -0.25, 0.75, 0.5, 0.25, 0.5, 1.0, 1.0, -0.5, -0.75, 0.25, 0.0, -0.5, -0.75, 0.25, 0.5, -0.25, -0.25, 0.75, 0.25, 1.0, -1.0, 0.5, ]);
    var shader_module2010_code = "";
    try {
        shader_module2010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2010 = await device20.createShaderModule({ label: "shader_module2010", code: shader_module2010_code })
    render_bundle_encoder100.popDebugGroup();
    const texture009 = device00.createTexture({
        label: "texture009",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device00.queue.writeTexture({ texture: texture009 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture009 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.popDebugGroup();
    command_encoder200.insertDebugMarker("mymarker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device10.pushErrorScope("validation");
    device00.queue.writeTexture({ texture: texture009 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    texture009.destroy();
    device10.queue.writeTexture({ texture: texture102 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler1010 = device10.createSampler( { label: "sampler1010" } );
    device10.queue.writeTexture({ texture: texture102 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture0010 = device00.createTexture({
        label: "texture0010",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    var shader_module0014_code = "";
    try {
        shader_module0014_code = await fs.readFile(__dirname + '/shader_module0014.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0014 = await device00.createShaderModule({ label: "shader_module0014", code: shader_module0014_code })
    
    
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module2011_code = "";
    try {
        shader_module2011_code = await fs.readFile(__dirname + '/shader_module2011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2011 = await device20.createShaderModule({ label: "shader_module2011", code: shader_module2011_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}