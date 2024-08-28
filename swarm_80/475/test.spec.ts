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
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array0 = new Float32Array([0.5, -0.75, 0.0, -1.0, -0.5, 0.25, -0.5, -0.75, 0.25, 0.5, 0.0, -0.25, -0.25, -0.25, 0.5, -0.5, 0.5, -0.5, 0.75, -1.0, 0.25, 0.75, -1.0, 0.25, -0.5, 0.75, -0.5, 0.0, 1.0, -0.75, -0.5, -0.75, -0.75, 0.25, 0.0, -0.75, -1.0, 0.0, 0.5, 0.75, 0.5, -0.5, 0.0, 0.5, 0.75, -0.75, -0.25, -0.25, 0.75, -0.75, -0.5, 0.0, 0.0, 1.0, -0.5, -0.25, 0.5, 0.0, 0.5, -0.5, 1.0, 0.5, -0.25, -0.75, -0.5, 0.0, -0.75, -1.0, -1.0, 0.0, 1.0, -0.75, 0.5, -1.0, -0.5, -1.0, 0.0, 0.5, -0.5, -0.75, 0.5, 0.25, 0.75, 0.0, 0.25, -0.5, 1.0, -0.75, 0.25, 0.75, 0.75, 0.5, 0.0, 0.0, -0.75, 0.25, -0.75, 0.0, 0.25, 0.0, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("out-of-memory");
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
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
        powerPreference: "high-performance"
    });
    render_bundle_encoder000.popDebugGroup();
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
    command_encoder200.pushDebugGroup("mygroupmarker")
    const command_buffer000 = command_encoder000.finish();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    compute_pass_encoder2010.insertDebugMarker("marker")
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    device10.pushErrorScope("validation");
    
    
    device00.pushErrorScope("internal");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const array1 = new Float32Array([0.0, 0.5, -1.0, -0.25, 0.5, 0.0, 0.25, -0.25, -0.25, 0.0, -1.0, -0.75, -0.75, 0.75, -1.0, 0.5, -0.25, 1.0, 0.5, 0.0, 0.5, -0.5, 1.0, 1.0, -0.25, -0.75, 0.25, -0.5, 0.0, -0.5, 0.0, -0.5, -1.0, 0.25, -0.25, 0.0, 1.0, 0.0, 0.75, 0.25, -0.25, -1.0, 0.25, 0.0, 0.0, -1.0, -0.25, 1.0, 0.75, -0.5, -0.5, 0.25, -1.0, -0.5, 1.0, -0.5, -0.75, -1.0, -0.75, -0.75, 0.75, 1.0, -0.75, -0.75, -0.25, 0.25, 1.0, 1.0, 0.25, 0.75, -0.25, -0.5, -1.0, -0.25, 1.0, 0.0, -0.75, 0.0, -0.75, 0.75, 0.25, -0.25, -0.75, 0.5, 0.25, 1.0, 1.0, 0.25, 0.0, 0.5, -0.5, 0.5, 0.5, -1.0, -0.25, -0.5, 0.75, -0.75, 0.75, 0.5, ]);
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device30.destroy();
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device40.destroy();
    
    query000.destroy()
    
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
    
    query000.destroy()
    
    render_bundle_encoder000.popDebugGroup();
    
    query201.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    device20.pushErrorScope("internal");
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query201.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    {
        await buffer101.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer101.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer101.unmap();
        console.log(new Float32Array(data));
    }
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    buffer201.destroy()
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
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
    const command_buffer202 = command_encoder202.finish();
    device20.pushErrorScope("validation");
    buffer200.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer100.destroy()
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    
    
    
    {
        await buffer101.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer101.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer101.unmap();
        console.log(new Float32Array(data));
    }
    query201.destroy()
    
    command_encoder001.insertDebugMarker("mymarker");
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    query100.destroy()
    
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    buffer000.destroy()
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    render_bundle_encoder101.insertDebugMarker("marker");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.insertDebugMarker("mymarker");
    query000.destroy()
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    query101.destroy()
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.popDebugGroup();
    const command_buffer100 = command_encoder100.finish();
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query101.destroy()
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
    const texture_view1004 = texture100.createView({ label: "texture_view1004" });
    
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    
    
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
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    compute_pass_encoder2010.insertDebugMarker("marker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder2000.insertDebugMarker("marker")
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    
    command_encoder001.insertDebugMarker("mymarker");
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder001.popDebugGroup();
    compute_pass_encoder2010.insertDebugMarker("marker")
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    compute_pass_encoder2010.insertDebugMarker("marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    const command_buffer101 = command_encoder101.finish();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.popDebugGroup();
    query000.destroy()
    
    
    query100.destroy()
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const array2 = new Float32Array([0.75, 0.25, 0.25, -0.5, -0.5, -0.25, -0.25, 0.25, 1.0, -1.0, 0.0, 0.0, 0.5, 1.0, 0.75, 0.75, -0.75, -0.5, -0.25, -0.5, -0.75, 1.0, -0.5, -0.5, 0.25, -0.25, -0.5, -0.25, 0.0, 0.5, -0.75, 0.75, -0.25, -1.0, -0.5, 1.0, -0.25, -1.0, 1.0, -0.5, 0.0, 0.5, -0.75, -0.25, 0.0, 0.5, 0.0, 0.5, -0.75, -0.5, 0.5, -0.75, 0.75, 0.75, -0.25, -0.25, -0.5, 0.0, -1.0, 0.5, 1.0, 0.0, -1.0, -0.5, 0.75, -0.25, -0.25, 0.75, 0.5, 0.25, 0.75, 0.5, 1.0, 0.25, -0.75, -0.75, 0.5, 1.0, -0.5, 0.25, -1.0, -1.0, -1.0, -0.5, 1.0, 1.0, 1.0, -0.5, -0.25, 0.0, -0.25, -1.0, 0.0, 0.5, 0.5, 0.5, -0.75, -0.25, 0.0, -1.0, ]);
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    const texture_view1005 = texture100.createView({ label: "texture_view1005" });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    device20.queue.submit([command_buffer202, ]);
    
    const texture_view2022 = texture202.createView({ label: "texture_view2022" });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device20.pushErrorScope("out-of-memory");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    query102.destroy()
    const array3 = new Float32Array([-0.75, 0.0, 0.0, 0.25, -0.25, -1.0, 1.0, 1.0, 0.25, -0.75, 0.0, -0.5, 0.0, 0.75, 1.0, -0.75, -0.25, 1.0, -0.5, -0.5, -0.25, 0.75, 0.0, 0.5, 0.25, -0.5, -0.5, 1.0, 0.75, -0.5, 0.5, 0.75, 0.5, 1.0, -0.5, 0.5, 0.75, 1.0, 0.0, 0.5, -0.5, 0.0, 0.5, 0.75, 0.25, 0.0, 0.5, 0.5, 0.25, -0.75, 0.0, 0.25, 0.75, -0.75, 0.0, 0.0, -1.0, 1.0, -1.0, -0.5, 0.0, 0.75, 0.75, 1.0, 0.5, -1.0, -0.75, -0.5, -0.5, -1.0, -0.75, -0.25, -0.75, 1.0, 0.75, 1.0, 0.0, 1.0, 1.0, -0.5, 0.75, 0.0, 0.25, -1.0, 1.0, 1.0, 1.0, -0.75, -1.0, -0.25, -1.0, 0.25, 0.5, -1.0, -1.0, 0.25, 0.0, 0.0, 0.0, -1.0, ]);
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
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
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    command_encoder102.copyTextureToBuffer(
        {
            texture: texture100
        },
        {
            buffer: buffer101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder002.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    query102.destroy()
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
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    device20.queue.writeBuffer(buffer203, 0, array2, 0, array2.length);
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer102 = command_encoder102.finish();
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.submit([command_buffer102, ]);
    
    
    device20.pushErrorScope("out-of-memory");
    render_bundle_encoder001.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    device10.queue.writeTexture({ texture: texture102 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.popDebugGroup()
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    buffer500.destroy()
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    
    
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    command_encoder500.insertDebugMarker("mymarker");
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    command_encoder103.clearBuffer(buffer101);
    query000.destroy()
    buffer203.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const texture_view1006 = texture100.createView({ label: "texture_view1006" });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device50.pushErrorScope("out-of-memory");
    
    
    
    buffer202.destroy()
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device10.queue.writeTexture({ texture: texture102 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer103 = command_encoder103.finish();
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    
    
    
    
    const texture_view1023 = texture102.createView({ label: "texture_view1023" });
    device20.queue.writeTexture({ texture: texture203 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    query200.destroy()
    const texture_view1007 = texture100.createView({ label: "texture_view1007" });
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_bundle_encoder002.popDebugGroup();
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    query001.destroy()
    query000.destroy()
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
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
    device20.pushErrorScope("internal");
    command_encoder002.insertDebugMarker("mymarker");
    render_bundle_encoder001.popDebugGroup();
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1008 = texture100.createView({ label: "texture_view1008" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    command_encoder500.pushDebugGroup("mygroupmarker")
    const command_buffer104 = command_encoder104.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
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
    
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    
    render_bundle_encoder500.insertDebugMarker("marker");
    query103.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    {
        await buffer102.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer102.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer102.unmap();
        console.log(new Float32Array(data));
    }
    const command_buffer003 = command_encoder003.finish();
    {
        await buffer101.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer101.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer101.unmap();
        console.log(new Float32Array(data));
    }
    
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
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
    query102.destroy()
    compute_pass_encoder0010.insertDebugMarker("marker")
    query103.destroy()
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
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
    {
        await buffer102.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer102.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer102.unmap();
        console.log(new Float32Array(data));
    }
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    query003.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder000.popDebugGroup();
    device10.queue.writeTexture({ texture: texture102 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    
    const array4 = new Float32Array([1.0, 0.0, 0.5, -0.5, 0.5, 0.75, -0.75, 0.0, 0.5, -0.75, -0.75, -0.5, -0.25, 0.5, 0.0, 1.0, 0.0, -0.75, 0.0, 0.0, 1.0, -0.5, 1.0, 0.5, -0.25, -0.25, -0.75, 0.0, -0.25, 0.75, 0.75, 0.25, 0.5, 0.75, -0.25, -0.25, -0.75, -0.75, 0.75, 0.25, 0.5, 0.75, -1.0, -0.75, -0.25, -0.75, -1.0, -0.5, 0.0, 0.5, 0.25, -0.75, 0.5, 0.75, -0.75, -0.5, -0.5, -0.5, -0.5, 0.5, 0.0, -0.5, 1.0, 0.25, -0.5, 0.25, -1.0, 1.0, -1.0, 0.0, 0.75, -1.0, -0.5, 0.5, 0.25, -0.25, -0.5, -0.5, -0.5, 0.25, 0.25, -0.5, 0.5, 0.25, 0.75, 0.75, 0.75, 1.0, -0.75, 0.0, -1.0, 0.75, -0.5, 1.0, -1.0, -0.5, 0.75, 0.5, 0.75, -0.5, ]);
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    command_encoder002.pushDebugGroup("mygroupmarker")
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    query001.destroy()
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    query002.destroy()
    
    device20.queue.writeTexture({ texture: texture203 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query500.destroy()
    device10.queue.submit([command_buffer100, command_buffer103, command_buffer104, ]);
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    device20.queue.writeTexture({ texture: texture203 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query100.destroy()
    
    query100.destroy()
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    device60.pushErrorScope("out-of-memory");
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder2010.insertDebugMarker("marker")
    device20.queue.writeTexture({ texture: texture203 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
    
    
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    command_encoder002.insertDebugMarker("mymarker");
    command_encoder500.popDebugGroup()
    
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8snorm",
        dimension: "2d"
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    const texture_view1024 = texture102.createView({ label: "texture_view1024" });
    render_bundle_encoder202.popDebugGroup();
    
    
    
    
    
    
    command_encoder500.pushDebugGroup("mygroupmarker")
    render_bundle_encoder600.insertDebugMarker("marker");
    query004.destroy()
    
    {
        await buffer101.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer101.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer101.unmap();
        console.log(new Float32Array(data));
    }
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
    device50.pushErrorScope("out-of-memory");
    render_bundle_encoder600.pushDebugGroup("group_marker");
    query202.destroy()
    
    
    device10.queue.submit([command_buffer101, ]);
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    
    device20.queue.writeBuffer(buffer204, 0, array2, 0, array2.length);
    compute_pass_encoder2010.insertDebugMarker("marker")
    query000.destroy()
    device00.queue.submit([command_buffer003, ]);
    
    query500.destroy()
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    query500.destroy()
    
    
    buffer204.destroy()
    buffer101.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const command_buffer502 = command_encoder502.finish();
    
    command_encoder500.popDebugGroup()
    
    render_bundle_encoder600.insertDebugMarker("marker");
    device50.queue.submit([command_buffer502, ]);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer500 = command_encoder500.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}