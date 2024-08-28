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
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device00.pushErrorScope("out-of-memory");
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.pushErrorScope("validation");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
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
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_buffer100 = command_encoder100.finish();
    
    render_bundle_encoder001.insertDebugMarker("marker");
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
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const array0 = new Float32Array([0.75, 0.25, 0.0, -0.25, 1.0, -0.75, -0.5, 0.0, 1.0, 0.25, 0.25, -0.25, -0.75, 0.75, 0.75, -0.25, -1.0, -0.25, 0.5, -0.25, 0.5, 0.75, 0.75, -0.25, -0.25, 1.0, 0.25, 0.75, 0.0, -1.0, 0.5, 0.25, 1.0, 0.25, 0.0, 0.5, 1.0, -1.0, -0.25, 0.5, 0.0, 0.5, -1.0, 0.5, 1.0, -0.25, 0.5, -0.5, 1.0, -0.75, 1.0, -0.25, -0.25, 0.0, -0.25, 0.25, 0.75, 0.0, -0.5, -1.0, 1.0, 1.0, 0.75, 0.25, -1.0, 0.25, 1.0, -1.0, -0.75, 0.25, 1.0, -1.0, 0.0, 0.0, -0.25, 0.0, 0.5, -0.25, 0.75, 0.75, 0.75, -0.25, -1.0, -0.5, 0.25, 0.5, 0.75, -0.25, -0.25, -1.0, 0.75, 0.0, 1.0, -0.75, -0.5, 0.75, -1.0, 1.0, -0.25, 0.25, ]);
    
    
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
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
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
    device20.pushErrorScope("internal");
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    
    const array1 = new Float32Array([-1.0, 0.5, 0.25, -0.75, -0.25, -0.5, 0.75, -0.75, -1.0, -0.25, 0.0, 0.5, 0.5, 1.0, 0.75, 0.75, 0.25, -0.5, 0.25, 0.0, -0.25, -0.25, -0.5, -0.25, -1.0, 0.0, -0.25, -0.75, -0.5, -0.75, 1.0, 1.0, 0.0, -0.75, -0.5, 0.0, 0.5, 0.25, -0.5, -0.75, 0.0, 0.25, 0.0, 0.25, -1.0, 0.25, 0.75, 0.0, 0.25, -1.0, 1.0, 0.75, 0.25, 0.5, 0.75, -0.75, -0.25, 0.5, -0.5, -1.0, -0.75, -1.0, -0.5, -0.5, -1.0, 0.5, -1.0, -0.5, -0.25, 0.75, -0.75, -0.25, -0.75, -0.75, -1.0, -0.5, -1.0, 1.0, 1.0, -0.25, 0.25, -0.75, -0.75, -0.25, 1.0, 0.75, -1.0, -0.75, -0.25, 1.0, 1.0, -0.25, -0.5, 0.25, 0.5, 0.75, 0.0, 0.0, 0.25, 1.0, ]);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device30.pushErrorScope("internal");
    
    
    const array2 = new Float32Array([0.75, 0.25, -0.5, 0.75, 1.0, -0.25, -0.25, 0.75, 0.25, 0.25, -0.5, 0.5, 0.5, 0.75, 1.0, 0.75, -0.25, -0.75, -1.0, -0.25, -0.75, -0.25, 1.0, -1.0, -0.5, 0.0, 0.5, 1.0, 0.0, 0.75, -1.0, 1.0, 0.25, 1.0, -0.5, 0.5, -0.5, -0.5, -0.25, 0.25, 1.0, -1.0, -0.5, -0.25, -0.75, 0.25, -0.25, 0.25, -0.25, 1.0, 1.0, 0.75, -1.0, 0.0, 0.5, -1.0, 0.0, -0.75, 0.0, 0.5, -1.0, -0.75, 0.75, 0.0, -0.75, 1.0, -0.25, 0.5, -1.0, 0.0, 0.5, 0.75, -1.0, 1.0, 0.0, 1.0, -0.5, -0.75, -0.25, -0.25, 0.0, 0.5, 0.5, -0.75, -0.5, -0.5, 1.0, -1.0, -0.75, 0.0, -1.0, 1.0, -1.0, -0.75, 0.75, -0.5, -0.5, 0.75, 0.75, -1.0, ]);
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
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_bundle_encoder102.insertDebugMarker("marker");
    const command_buffer102 = command_encoder102.finish();
    command_encoder200.pushDebugGroup("mygroupmarker")
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    
    const array3 = new Float32Array([0.25, -0.5, 1.0, 0.75, -1.0, -0.5, 1.0, 0.0, -0.5, 0.5, 0.0, 0.25, 0.5, -0.5, -1.0, -0.25, -1.0, 0.5, 0.0, -0.25, 0.25, -0.5, -0.5, 1.0, -0.75, -0.75, 1.0, -0.5, -1.0, 0.25, 0.0, -0.5, 0.5, -0.25, 0.0, -0.25, -0.25, 0.25, 0.75, -0.75, 0.5, 0.25, 0.0, -0.75, 0.0, -0.25, -0.75, -0.75, 0.75, -0.5, -0.25, 1.0, -0.75, 0.0, 1.0, -0.75, 1.0, 0.0, -0.75, 0.5, 0.5, -0.25, 0.0, 0.75, -0.75, 0.0, 0.75, 0.5, 0.5, 1.0, -0.5, -0.5, 0.75, 1.0, -0.25, -0.75, -0.5, -1.0, 0.75, 1.0, 0.25, -0.75, 0.25, -1.0, 0.0, 0.5, -0.5, -1.0, 0.0, -0.25, -0.5, -0.75, 1.0, -0.25, -0.5, -1.0, 0.75, -0.5, -0.25, 0.25, ]);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    command_encoder002.pushDebugGroup("mygroupmarker")
    
    
    const command_buffer000 = command_encoder000.finish();
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    
    
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    
    
    
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
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
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    device00.queue.submit([command_buffer000, ]);
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    
    
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_bundle_encoder001.insertDebugMarker("marker");
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
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    const array4 = new Float32Array([-1.0, 0.5, 0.0, 1.0, -0.25, 0.5, 0.5, -0.5, 1.0, -0.75, -1.0, 0.0, 0.75, 1.0, 0.75, 0.75, -1.0, -0.5, 0.25, 1.0, 1.0, -0.75, -1.0, 0.25, 0.0, -0.25, 0.75, -0.75, -0.75, -0.25, -0.75, 0.0, 1.0, 0.25, -0.5, 0.5, 0.75, -0.25, 1.0, -0.75, -1.0, 0.0, 0.25, 0.0, 0.75, 0.5, -0.75, 1.0, -1.0, -0.5, 0.75, 0.75, 0.0, 0.5, -1.0, 0.5, 1.0, 1.0, 0.0, 0.75, -0.75, 0.0, -0.5, 0.75, -0.25, 0.75, -1.0, -0.25, 0.75, 0.75, 0.25, 0.75, -0.75, -1.0, 1.0, -1.0, -0.75, 0.75, -0.75, -1.0, -1.0, -0.5, -0.25, 0.75, -0.75, -0.25, -0.5, -0.5, 0.5, 0.25, 0.25, 0.5, -0.5, 0.25, 0.25, 1.0, -0.75, 1.0, 0.75, 0.25, ]);
    
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_buffer201 = command_encoder201.finish();
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    command_encoder003.pushDebugGroup("mygroupmarker")
    const command_buffer004 = command_encoder004.finish();
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    
    
    command_encoder103.pushDebugGroup("mygroupmarker")
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    
    
    
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    
    const command_buffer300 = command_encoder300.finish();
    
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
    const command_buffer105 = command_encoder105.finish();
    const array5 = new Float32Array([-0.5, -0.25, 0.5, -0.5, -0.25, -1.0, -0.5, 0.25, 0.0, -0.25, -1.0, 0.5, -0.5, 0.25, -0.75, 0.25, -0.25, 0.75, -0.5, -0.75, -1.0, -0.25, 0.75, 1.0, -0.5, 0.25, 0.25, -1.0, 0.25, -0.75, 0.25, -0.75, -0.5, -1.0, 0.75, -0.75, 0.5, -1.0, 0.0, 1.0, 1.0, -0.25, -0.25, -1.0, -0.25, 0.25, 0.75, -0.25, 1.0, 0.25, 1.0, -0.5, 0.0, -1.0, 0.5, -0.25, 0.0, -0.25, -0.25, -1.0, 1.0, 1.0, -1.0, 0.25, 0.75, -0.75, 0.75, -1.0, -0.25, 1.0, -0.5, 0.5, -0.75, 0.5, -1.0, -0.25, -0.75, 0.75, 0.5, 0.75, 0.0, 0.0, -0.75, -1.0, 0.75, 0.75, 0.0, 0.25, 0.5, 0.25, 0.25, -0.75, 0.0, 1.0, 0.0, -1.0, 0.25, 1.0, -0.75, -0.5, ]);
    
    
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    
    
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const command_buffer005 = command_encoder005.finish();
    
    
    
    
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const array6 = new Float32Array([0.5, 0.0, 0.0, 0.75, -0.75, -1.0, 0.5, -0.25, 0.75, -1.0, -0.5, -1.0, 0.75, -0.75, 0.0, -0.75, -0.25, -0.25, -0.5, 0.75, -0.25, 0.5, 0.75, -0.75, -0.75, 0.0, 0.5, -0.75, -0.5, -0.75, -0.75, -0.5, 0.5, -1.0, 1.0, -0.25, 0.5, -0.5, 1.0, -0.5, 1.0, 0.5, 1.0, -1.0, 0.0, 1.0, 1.0, 0.0, 0.5, 0.75, 0.75, 1.0, 0.5, 0.5, 0.25, -1.0, -0.25, 0.25, 0.5, -0.75, -0.25, -0.25, -0.5, -1.0, -0.25, 0.0, 0.5, 0.75, -1.0, 0.5, 1.0, -0.5, 0.5, 0.5, -0.75, -0.25, 1.0, 0.0, -0.25, 0.0, -0.25, -0.75, 0.5, 1.0, -1.0, -0.75, -0.25, 0.75, 0.5, -1.0, 0.25, 0.25, 0.25, 1.0, -0.5, -0.5, -0.5, -1.0, -0.25, 0.25, ]);
    device00.queue.submit([command_buffer004, ]);
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
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
    
    
    
    
    
    
    
    
    
    command_encoder104.pushDebugGroup("mygroupmarker")
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
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
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
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
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    device30.queue.submit([command_buffer300, ]);
    
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
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    
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
    
    device10.queue.submit([command_buffer105, ]);
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    
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
    
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    
    
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
    
    command_encoder301.pushDebugGroup("mygroupmarker")
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    
    command_encoder107.pushDebugGroup("mygroupmarker")
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
    
    
    
    
    
    
    
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    
    command_encoder304.pushDebugGroup("mygroupmarker")
    
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder200.insertDebugMarker("marker");
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
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
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
    render_bundle_encoder001.insertDebugMarker("marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    
    const command_buffer108 = command_encoder108.finish();
    
    
    
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
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    render_bundle_encoder202.insertDebugMarker("marker");
    
    render_bundle_encoder301.insertDebugMarker("marker");
    command_encoder302.pushDebugGroup("mygroupmarker")
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const command_buffer303 = command_encoder303.finish();
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    command_encoder106.pushDebugGroup("mygroupmarker")
    
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    
    
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
    
    
    
    device20.queue.submit([command_buffer201, ]);
    device10.queue.submit([command_buffer108, ]);
    
    
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
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
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
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
    
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
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
    
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    
    
    
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder500.pushDebugGroup("mygroupmarker")
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    render_bundle_encoder302.insertDebugMarker("marker");
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
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
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    
    
    command_encoder202.pushDebugGroup("mygroupmarker")
    
    
    
    const command_buffer203 = command_encoder203.finish();
    
    
    
    
    
    
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
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    
    
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
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    
    
    
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
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
    
    
    const command_buffer305 = command_encoder305.finish();
    const command_buffer600 = command_encoder600.finish();
    const command_buffer306 = command_encoder306.finish();
    const command_buffer401 = command_encoder401.finish();
    device40.queue.submit([command_buffer401, ]);
    device00.queue.submit([command_buffer005, ]);
    const command_buffer402 = command_encoder402.finish();
    device20.queue.submit([command_buffer203, ]);
    device60.queue.submit([command_buffer600, ]);
    const command_buffer204 = command_encoder204.finish();
    device40.queue.submit([command_buffer402, ]);
    device20.queue.submit([command_buffer204, ]);
    device30.queue.submit([command_buffer303, command_buffer305, command_buffer306, ]);
}