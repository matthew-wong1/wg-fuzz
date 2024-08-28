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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    texture000.destroy();
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8snorm",
        dimension: "2d"
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
    device00.destroy();
    
    
    device10.destroy();
    buffer200.destroy()
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
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    texture200.destroy();
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer201.destroy()
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device20.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device30.destroy();
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
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
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    texture400.destroy();
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    command_encoder400.insertDebugMarker("mymarker");
    
    buffer401.destroy()
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    device50.destroy();
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    command_encoder403.pushDebugGroup("mygroupmarker")
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
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder4010.popDebugGroup()
    buffer400.destroy()
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    texture402.destroy();
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    
    buffer402.destroy()
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder401.popDebugGroup();
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    compute_pass_encoder4020.popDebugGroup()
    command_encoder403.insertDebugMarker("mymarker");
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    
    
    
    compute_pass_encoder4000.popDebugGroup()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder403.insertDebugMarker("mymarker");
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    compute_pass_encoder4030.popDebugGroup()
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    
    compute_pass_encoder4010.popDebugGroup()
    
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    texture600.destroy();
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    texture403.destroy();
    texture401.destroy();
    
    render_bundle_encoder601.popDebugGroup();
    compute_pass_encoder4000.popDebugGroup()
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
    command_encoder404.pushDebugGroup("mygroupmarker")
    
    const compute_pass_encoder4040 = command_encoder404.beginComputePass({ label: "compute_pass_encoder4040" });
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    buffer403.destroy()
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    compute_pass_encoder4040.pushDebugGroup("group_marker")
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder405.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    
    
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    
    
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture601.destroy();
    compute_pass_encoder4040.popDebugGroup()
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    buffer900.destroy()
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
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
    
    
    
    
    
    
    device90.destroy();
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer601.destroy()
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    command_encoder405.insertDebugMarker("mymarker");
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    
    const compute_pass_encoder6030 = command_encoder603.beginComputePass({ label: "compute_pass_encoder6030" });
    command_encoder405.insertDebugMarker("mymarker");
    render_bundle_encoder602.pushDebugGroup("group_marker");
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
    
    command_encoder601.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    render_bundle_encoder400.popDebugGroup();
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    
    render_bundle_encoder602.popDebugGroup();
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture404.destroy();
    compute_pass_encoder4040.pushDebugGroup("group_marker")
    compute_pass_encoder4020.popDebugGroup()
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pass_encoder4060 = command_encoder406.beginComputePass({ label: "compute_pass_encoder4060" });
    render_bundle_encoder401.popDebugGroup();
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder4030.popDebugGroup()
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder402.popDebugGroup();
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    
    
    compute_pass_encoder4000.popDebugGroup()
    command_encoder405.popDebugGroup()
    const command_encoder407 = device40.createCommandEncoder({ label: "command_encoder407" });
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    texture602.destroy();
    render_bundle_encoder601.popDebugGroup();
    
    command_encoder601.insertDebugMarker("mymarker");
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    
    compute_pass_encoder4040.popDebugGroup()
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
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
    command_encoder702.insertDebugMarker("mymarker");
    const texture604 = device60.createTexture({
        label: "texture604",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture700.destroy();
    const compute_pass_encoder4050 = command_encoder405.beginComputePass({ label: "compute_pass_encoder4050" });
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
    compute_pass_encoder4050.pushDebugGroup("group_marker")
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    texture801.destroy();
    render_bundle_encoder400.pushDebugGroup("group_marker");
    texture604.destroy();
    compute_pass_encoder6030.pushDebugGroup("group_marker")
    compute_pass_encoder4040.pushDebugGroup("group_marker")
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    compute_pass_encoder4060.pushDebugGroup("group_marker")
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    buffer600.destroy()
    
    buffer700.destroy()
    compute_pass_encoder4020.popDebugGroup()
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder601.insertDebugMarker("mymarker");
    
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    render_bundle_encoder602.pushDebugGroup("group_marker");
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    
    texture405.destroy();
    
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    render_bundle_encoder402.pushDebugGroup("group_marker");
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const command_encoder1001 = device100.createCommandEncoder({ label: "command_encoder1001" });
    command_encoder1001.insertDebugMarker("mymarker");
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    compute_pass_encoder6030.popDebugGroup()
    compute_pass_encoder6030.pushDebugGroup("group_marker")
    compute_pass_encoder6030.popDebugGroup()
    const command_encoder1002 = device100.createCommandEncoder({ label: "command_encoder1002" });
    command_encoder602.insertDebugMarker("mymarker");
    
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
    command_encoder602.pushDebugGroup("mygroupmarker")
    compute_pass_encoder4040.popDebugGroup()
    
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    const compute_pass_encoder4070 = command_encoder407.beginComputePass({ label: "compute_pass_encoder4070" });
    
    render_bundle_encoder1001.pushDebugGroup("group_marker");
    compute_pass_encoder4050.popDebugGroup()
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    const render_bundle_encoder1002 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1002",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder702.pushDebugGroup("mygroupmarker")
    buffer800.destroy()
    command_encoder1002.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder1001.pushDebugGroup("mygroupmarker")
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    render_bundle_encoder602.popDebugGroup();
    device110.destroy();
    
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    
    command_encoder1000.insertDebugMarker("mymarker");
    
    
    texture603.destroy();
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder400.popDebugGroup();
    
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    compute_pass_encoder7000.popDebugGroup()
    command_encoder1001.popDebugGroup()
    command_encoder604.insertDebugMarker("mymarker");
    render_bundle_encoder1002.pushDebugGroup("group_marker");
    compute_pass_encoder4040.pushDebugGroup("group_marker")
    compute_pass_encoder6030.pushDebugGroup("group_marker")
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    render_bundle_encoder700.popDebugGroup();
    
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder701.pushDebugGroup("mygroupmarker")
    
    
    command_encoder1000.insertDebugMarker("mymarker");
    render_bundle_encoder700.pushDebugGroup("group_marker");
    command_encoder1000.clearBuffer(buffer1000);
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder1003 = device100.createCommandEncoder({ label: "command_encoder1003" });
    command_encoder602.insertDebugMarker("mymarker");
    const compute_pass_encoder7020 = command_encoder702.beginComputePass({ label: "compute_pass_encoder7020" });
    compute_pass_encoder6030.popDebugGroup()
    
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    
    const bind_group_layout404 = device40.createBindGroupLayout({ 
        label: "bind_group_layout404",
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
    command_encoder1003.pushDebugGroup("mygroupmarker")
    command_encoder1001.clearBuffer(buffer1000);
    compute_pass_encoder4020.popDebugGroup()
    const bind_group_layout405 = device40.createBindGroupLayout({ 
        label: "bind_group_layout405",
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
    compute_pass_encoder4040.popDebugGroup()
    
    command_encoder1000.clearBuffer(buffer1000);
    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
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
    texture1000.destroy();
    command_encoder1002.clearBuffer(buffer1000);
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter14 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder402.popDebugGroup();
    render_bundle_encoder600.popDebugGroup();
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    const bind_group_layout802 = device80.createBindGroupLayout({ 
        label: "bind_group_layout802",
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
    render_bundle_encoder800.pushDebugGroup("group_marker");
    const bind_group_layout702 = device70.createBindGroupLayout({ 
        label: "bind_group_layout702",
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
    const command_encoder605 = device60.createCommandEncoder({ label: "command_encoder605" });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    command_encoder1003.clearBuffer(buffer1000);
    compute_pass_encoder7020.pushDebugGroup("group_marker")
    const bind_group_layout406 = device40.createBindGroupLayout({ 
        label: "bind_group_layout406",
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
    compute_pass_encoder4050.pushDebugGroup("group_marker")
    
    
    
    command_encoder703.insertDebugMarker("mymarker");
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder408 = device40.createCommandEncoder({ label: "command_encoder408" });
    command_encoder1003.popDebugGroup()
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    command_encoder703.insertDebugMarker("mymarker");
    command_encoder604.insertDebugMarker("mymarker");
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder1001.clearBuffer(buffer1000);
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder6030.pushDebugGroup("group_marker")
    command_encoder1002.popDebugGroup()
    
    
    const texture803 = device80.createTexture({
        label: "texture803",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    compute_pass_encoder7000.popDebugGroup()
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    compute_pass_encoder8000.pushDebugGroup("group_marker")
    command_encoder1000.clearBuffer(buffer1000);
    const bind_group_layout703 = device70.createBindGroupLayout({ 
        label: "bind_group_layout703",
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
    command_encoder605.pushDebugGroup("mygroupmarker")
    
    texture701.destroy();
    buffer1000.destroy()
    command_encoder703.insertDebugMarker("mymarker");
    
    
    
    const command_encoder409 = device40.createCommandEncoder({ label: "command_encoder409" });
    compute_pass_encoder7020.popDebugGroup()
    const compute_pass_encoder6050 = command_encoder605.beginComputePass({ label: "compute_pass_encoder6050" });
    render_bundle_encoder800.popDebugGroup();
    const bind_group_layout407 = device40.createBindGroupLayout({ 
        label: "bind_group_layout407",
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
    
    command_encoder703.pushDebugGroup("mygroupmarker")
    command_encoder408.insertDebugMarker("mymarker");
    command_encoder1002.insertDebugMarker("mymarker");
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder409.insertDebugMarker("mymarker");
    command_encoder602.popDebugGroup()
    command_encoder1001.insertDebugMarker("mymarker");
    compute_pass_encoder4030.popDebugGroup()
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    render_bundle_encoder1001.popDebugGroup();
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const compute_pass_encoder10020 = command_encoder1002.beginComputePass({ label: "compute_pass_encoder10020" });
    const bind_group_layout704 = device70.createBindGroupLayout({ 
        label: "bind_group_layout704",
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
    const compute_pass_encoder6040 = command_encoder604.beginComputePass({ label: "compute_pass_encoder6040" });
    
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const texture605 = device60.createTexture({
        label: "texture605",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    
    const compute_pass_encoder4090 = command_encoder409.beginComputePass({ label: "compute_pass_encoder4090" });
    render_bundle_encoder402.popDebugGroup();
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    
    
    command_encoder1003.pushDebugGroup("mygroupmarker")
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder601.popDebugGroup();
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder701.pushDebugGroup("group_marker");
    
    const bind_group_layout408 = device40.createBindGroupLayout({ 
        label: "bind_group_layout408",
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
    
    compute_pass_encoder6040.pushDebugGroup("group_marker")
    const command_encoder1200 = device120.createCommandEncoder({ label: "command_encoder1200" });
    
    
    
    
    
    compute_pass_encoder4040.pushDebugGroup("group_marker")
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    
    
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
    
    texture803.destroy();
    command_encoder1000.insertDebugMarker("mymarker");
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout705 = device70.createBindGroupLayout({ 
        label: "bind_group_layout705",
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
    const command_encoder1500 = device150.createCommandEncoder({ label: "command_encoder1500" });
    const compute_pass_encoder4080 = command_encoder408.beginComputePass({ label: "compute_pass_encoder4080" });
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module1500_code = "";
    try {
        shader_module1500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1500 = await device150.createShaderModule({ label: "shader_module1500", code: shader_module1500_code })
    const command_encoder606 = device60.createCommandEncoder({ label: "command_encoder606" });
    compute_pass_encoder4070.pushDebugGroup("group_marker")
    command_encoder1200.pushDebugGroup("mygroupmarker")
    compute_pass_encoder4020.popDebugGroup()
    
    
    const command_encoder704 = device70.createCommandEncoder({ label: "command_encoder704" });
    command_encoder704.pushDebugGroup("mygroupmarker")
    
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder704.popDebugGroup()
    compute_pass_encoder4040.popDebugGroup()
    compute_pass_encoder6000.popDebugGroup()
    command_encoder1003.popDebugGroup()
    compute_pass_encoder6040.popDebugGroup()
    command_encoder703.popDebugGroup()
    compute_pass_encoder6010.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder6030.popDebugGroup()
    compute_pass_encoder7000.popDebugGroup()
    command_encoder701.popDebugGroup()
    compute_pass_encoder4030.popDebugGroup()
    compute_pass_encoder4050.popDebugGroup()
    compute_pass_encoder8000.popDebugGroup()
    compute_pass_encoder4070.popDebugGroup()
    compute_pass_encoder4060.popDebugGroup()
    command_encoder1200.popDebugGroup()
}