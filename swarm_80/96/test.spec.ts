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
    
    const array0 = new Float32Array([-0.25, 0.0, -0.25, -0.75, -0.25, -0.75, 0.0, -0.25, -0.25, -0.25, -0.5, -1.0, 0.75, -1.0, -0.75, 1.0, -0.25, -0.75, 0.0, -0.5, 1.0, -1.0, -1.0, -1.0, 0.75, -0.5, 0.5, -0.5, -1.0, -1.0, -0.5, 1.0, 1.0, -0.25, 0.0, 1.0, -0.25, 0.25, -0.75, -0.75, -0.75, 0.25, 0.5, -0.5, 0.5, 0.0, 0.0, 0.25, 1.0, 0.0, 0.5, 0.0, 0.25, 0.25, -0.75, 0.75, -0.5, -0.25, -0.75, 1.0, 0.25, 0.0, 0.5, -0.5, 0.75, 0.75, 0.5, 1.0, 0.25, -1.0, 0.0, -1.0, -0.75, 0.25, -0.25, 1.0, 0.5, 0.75, 1.0, -0.5, 0.25, -0.75, 0.25, -0.5, -0.25, -0.75, -0.75, 0.25, 0.25, -0.75, 1.0, -0.25, -0.75, 0.25, -0.25, -1.0, -0.75, 0.25, -1.0, -0.75, ]);
    const array1 = new Float32Array([-0.5, 0.75, -0.5, 0.25, 1.0, -1.0, 0.0, -0.75, -0.5, -0.25, -1.0, -1.0, -0.25, 0.5, 1.0, 0.75, -0.25, -0.5, 0.0, -1.0, -0.25, 0.25, -0.75, 1.0, -0.75, 0.5, -0.25, -0.75, 0.0, -0.25, 0.25, 1.0, 0.75, 0.25, -1.0, -0.75, 0.75, -0.75, -0.75, 0.75, 0.5, 0.25, 0.0, -0.75, 0.75, 0.75, 0.0, -0.5, -0.5, 0.0, -1.0, 0.5, 0.75, 0.25, 1.0, 0.0, -1.0, 0.75, 0.25, -0.75, 0.25, -0.25, 0.75, 0.75, -0.25, -0.75, -1.0, -0.25, 0.75, 0.0, -0.75, 0.75, -0.5, 0.25, 0.25, -0.75, 0.5, 0.5, -0.25, -0.5, -0.25, 0.75, 0.0, -1.0, -0.75, -0.25, 0.25, 1.0, -0.75, 0.5, 0.25, -0.5, 0.0, 0.0, 1.0, -0.75, -0.5, 0.0, -0.25, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array2 = new Float32Array([0.25, -1.0, 0.5, -1.0, -0.75, 0.0, -0.5, -1.0, 0.25, 1.0, 0.0, 0.25, 0.0, 0.25, -0.75, -0.75, -1.0, -0.25, -1.0, -0.25, -0.5, -0.25, 0.0, 0.75, 0.25, -0.5, -0.25, -0.5, -0.75, 1.0, 0.0, 1.0, -1.0, -0.5, 1.0, -0.5, -0.5, -0.5, -0.25, -0.75, -1.0, 0.5, -0.75, -0.5, 0.0, -0.5, -1.0, -0.75, -0.25, 0.25, 0.25, 0.75, 0.0, 0.25, 1.0, 0.25, 1.0, 0.75, -1.0, -0.25, 0.75, 0.75, -0.5, 0.5, -0.25, 0.75, 0.75, -0.75, 0.5, -0.25, 0.75, -0.75, 0.0, 1.0, 1.0, -0.5, 1.0, -0.5, 0.0, 0.75, 0.5, -0.25, 0.0, -1.0, -1.0, 0.5, 0.75, 0.75, 0.25, 0.5, -0.25, 0.0, 0.5, -0.5, 1.0, -1.0, 1.0, 0.75, -0.25, 0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const array3 = new Float32Array([0.75, 0.0, 0.0, 0.75, -0.25, -1.0, 0.5, -0.75, 0.0, -0.75, 0.75, -0.25, 0.5, -1.0, 0.75, -1.0, 0.25, -0.25, 0.5, 1.0, -1.0, -1.0, 0.75, -0.75, 0.0, -0.25, 0.75, 1.0, -1.0, 0.0, -1.0, 1.0, 0.5, 0.75, -1.0, 0.5, 0.25, -0.75, 0.0, -0.25, 0.0, 0.5, -1.0, 1.0, 0.0, -0.5, 0.0, 0.0, 0.75, 0.5, -0.75, 0.0, 0.25, 0.0, 0.75, 0.75, -0.25, 0.0, -0.25, 0.5, 1.0, 0.5, -0.5, 0.75, 1.0, -0.25, 0.25, 1.0, -0.25, -1.0, -0.5, -1.0, 0.0, -0.25, 0.5, 0.75, -1.0, -0.25, -0.25, -0.25, 0.0, -1.0, 1.0, -0.75, 1.0, 0.5, -0.25, -0.75, 0.0, 0.75, 0.5, -0.5, 0.5, 0.5, 0.25, -0.5, -0.75, 0.25, 0.0, 0.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("validation");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const array4 = new Float32Array([-0.5, 0.0, -0.25, -0.75, -0.25, 0.5, 1.0, 1.0, -0.75, 1.0, -0.5, -0.25, 0.0, 1.0, 0.0, -0.5, 0.75, -0.75, -0.5, -0.75, 1.0, 0.75, 0.5, -0.25, 0.0, 0.25, -0.5, -0.5, -0.5, 0.75, -1.0, -0.75, 1.0, 0.5, 0.25, -1.0, 0.25, 0.0, 1.0, 0.75, 0.75, -0.25, -0.75, 1.0, -0.5, -0.75, 0.75, 1.0, 0.0, -0.25, 0.75, 1.0, 0.75, -1.0, 0.25, -0.5, 1.0, -0.5, -1.0, -1.0, -0.75, -0.5, -0.25, -0.5, -1.0, -1.0, 0.75, -1.0, 0.75, 0.75, -0.25, 0.5, -0.25, 1.0, -0.5, 0.25, 0.75, 0.25, 0.25, 0.75, 0.75, 0.0, 0.5, 0.0, -0.5, -1.0, -0.25, -0.25, -0.75, -1.0, 0.5, 0.75, -0.5, 1.0, 1.0, 1.0, 0.0, 0.5, 0.5, -1.0, ]);
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    buffer100.destroy()
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    
    query100.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    device20.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    const array5 = new Float32Array([-0.5, -1.0, -0.75, 0.75, 0.5, -0.75, 0.25, 0.25, 0.0, -0.75, 0.5, 1.0, 1.0, 0.75, 1.0, 0.25, 1.0, 0.25, 0.0, 0.75, 0.5, -0.5, -1.0, -0.25, -0.5, -0.75, 0.0, 1.0, 0.0, 0.5, 1.0, -0.75, 0.25, -0.5, -0.25, -0.5, -0.5, 1.0, -1.0, 0.25, 0.75, 0.25, -0.5, -0.5, 0.0, 0.0, 0.75, -1.0, -1.0, 0.75, 1.0, -1.0, 0.75, 0.25, 1.0, 1.0, -0.25, 1.0, -0.5, 1.0, 0.25, -1.0, -1.0, 0.5, -1.0, 1.0, 0.25, 1.0, 1.0, 0.75, -0.25, 0.75, -0.75, 0.5, 0.25, -0.25, 0.25, 0.0, -0.75, 0.25, 1.0, -0.25, -1.0, 0.0, -1.0, -0.5, 0.25, -0.25, -0.75, -0.25, -0.5, 0.25, -1.0, 0.0, -0.75, 0.25, -1.0, -0.75, -0.5, 0.25, ]);
    buffer101.destroy()
    const array6 = new Float32Array([-1.0, 0.5, -0.25, 0.5, -0.75, 1.0, -1.0, 0.0, -1.0, -0.25, 0.25, 1.0, 0.25, -0.25, 0.75, 1.0, -0.5, -0.25, 0.0, 0.25, 0.0, 1.0, 0.75, -1.0, 1.0, -0.5, -1.0, 0.5, -0.25, 0.75, -0.25, -0.25, 1.0, 0.75, 0.5, 0.0, 0.25, 0.25, -1.0, -0.75, 0.5, -1.0, -0.25, -1.0, 1.0, 1.0, 1.0, -1.0, -0.25, -0.5, -0.25, -0.5, 1.0, -1.0, 0.0, 0.5, -0.75, -0.25, -1.0, -0.25, 0.0, -0.5, 0.25, -1.0, 0.25, 0.75, 1.0, 1.0, -1.0, 1.0, -0.5, 0.5, 0.0, 1.0, 0.0, 0.0, 0.5, 0.0, 0.0, -0.5, -0.25, 0.25, 0.25, 1.0, -0.25, -0.25, -1.0, 0.25, 0.75, -1.0, 0.0, 0.25, 0.0, 0.25, -0.25, -0.5, -0.75, 0.75, 0.75, -0.25, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device10.pushErrorScope("out-of-memory");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder101.insertDebugMarker("mymarker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    buffer102.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
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
    device30.destroy();
    render_bundle_encoder102.insertDebugMarker("marker");
    
    buffer103.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    const command_buffer100 = command_encoder100.finish();
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder102.insertDebugMarker("mymarker");
    device10.queue.submit([command_buffer100, ]);
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer105, 0, array3, 0, array3.length);
    command_encoder101.clearBuffer(buffer105);
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device10.queue.writeBuffer(buffer105, 0, array6, 0, array6.length);
    query100.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device10.queue.writeBuffer(buffer105, 0, array4, 0, array4.length);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const array7 = new Float32Array([1.0, 0.5, -0.25, 0.0, 0.0, -0.75, 0.0, 0.0, 0.25, -0.75, -0.5, -1.0, -0.25, -0.5, -0.75, -0.75, 0.0, 1.0, -0.5, -0.75, -0.25, -0.25, 0.75, 0.5, 0.75, -1.0, -0.25, -0.25, -0.5, -0.25, 1.0, 1.0, 0.75, 0.0, 1.0, 1.0, -0.25, 0.75, 0.75, 0.0, 0.75, -0.75, -0.75, 0.5, -0.5, 0.25, 0.0, 0.0, 0.5, -0.25, -0.25, -0.75, 0.25, 0.0, 0.25, -0.25, -1.0, -1.0, 1.0, -0.75, -0.5, 0.75, 0.25, -1.0, 0.0, 0.5, -0.75, -0.5, -0.25, 1.0, 0.25, -0.25, 1.0, -0.25, -0.25, 0.5, 1.0, -0.75, 0.5, 0.25, -0.75, -0.5, -0.5, -1.0, -1.0, 0.0, -0.25, -1.0, -1.0, 0.75, 0.0, 1.0, 1.0, 0.5, 0.75, 0.5, 1.0, -0.25, 0.0, 0.0, ]);
    
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
    
    render_bundle_encoder102.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer105, 0, array5, 0, array5.length);
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    {
        await buffer105.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer105.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer105.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device10.queue.writeBuffer(buffer105, 0, array4, 0, array4.length);
    
    
    device10.queue.writeBuffer(buffer105, 0, array0, 0, array0.length);
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const command_buffer401 = command_encoder401.finish();
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    device40.queue.submit([command_buffer401, ]);
    query101.destroy()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    query400.destroy()
    query100.destroy()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    device50.destroy();
    buffer104.destroy()
    compute_pass_encoder1010.popDebugGroup()
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    device10.queue.writeBuffer(buffer105, 0, array7, 0, array7.length);
    
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    command_encoder402.pushDebugGroup("mygroupmarker")
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    device10.queue.writeBuffer(buffer105, 0, array7, 0, array7.length);
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    device60.pushErrorScope("validation");
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
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    device10.queue.writeBuffer(buffer105, 0, array1, 0, array1.length);
    command_encoder402.popDebugGroup()
    
    
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
    
    
    
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer105, 0, array0, 0, array0.length);
    query101.destroy()
    
    
    device10.queue.writeBuffer(buffer105, 0, array5, 0, array5.length);
    query102.destroy()
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout402]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    device40.pushErrorScope("out-of-memory");
    {
        await buffer105.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer105.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer105.unmap();
        console.log(new Float32Array(data));
    }
    
    
    query102.destroy()
    command_encoder402.insertDebugMarker("mymarker");
    query600.destroy()
    device10.queue.writeBuffer(buffer105, 0, array3, 0, array3.length);
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    device10.pushErrorScope("out-of-memory");
    query402.destroy()
    device10.queue.writeBuffer(buffer105, 0, array1, 0, array1.length);
    const command_buffer402 = command_encoder402.finish();
    query402.destroy()
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    {
        await buffer105.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer105.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer105.unmap();
        console.log(new Float32Array(data));
    }
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder103.clearBuffer(buffer105);
    device10.queue.writeBuffer(buffer105, 0, array1, 0, array1.length);
    render_bundle_encoder402.insertDebugMarker("marker");
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
    device10.queue.writeBuffer(buffer105, 0, array3, 0, array3.length);
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    query100.destroy()
    device40.queue.submit([command_buffer402, ]);
    
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
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
    
    query101.destroy()
    query100.destroy()
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    render_bundle_encoder401.insertDebugMarker("marker");
    query102.destroy()
    query400.destroy()
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout402]
    });
    const command_buffer600 = command_encoder600.finish();
    device10.queue.writeBuffer(buffer105, 0, array1, 0, array1.length);
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    query404.destroy()
    
    
    
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query101.destroy()
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    command_encoder104.resolveQuerySet(
        query102,
        0,
        32,
        buffer102,
        0
    )
    command_encoder403.pushDebugGroup("mygroupmarker")
    device40.popErrorScope().then((error) => {
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
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    buffer601.destroy()
    render_bundle_encoder401.insertDebugMarker("marker");
    
    command_encoder104.resolveQuerySet(
        query102,
        0,
        32,
        buffer102,
        0
    )
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    query102.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    command_encoder403.popDebugGroup()
    device10.queue.writeBuffer(buffer107, 0, array3, 0, array3.length);
    query101.destroy()
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
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
    query100.destroy()
    device10.queue.writeBuffer(buffer107, 0, array4, 0, array4.length);
    
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_bundle_encoder401.insertDebugMarker("marker");
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query401.destroy()
    buffer401.destroy()
    query404.destroy()
    query402.destroy()
    device10.queue.writeBuffer(buffer107, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer107, 0, array4, 0, array4.length);
    {
        await buffer105.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer105.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer105.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    {
        await buffer105.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer105.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer105.unmap();
        console.log(new Float32Array(data));
    }
    device10.queue.writeBuffer(buffer105, 0, array6, 0, array6.length);
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    device10.queue.writeBuffer(buffer105, 0, array6, 0, array6.length);
    
    query402.destroy()
    compute_pass_encoder6010.insertDebugMarker("marker")
    
    command_encoder104.pushDebugGroup("mygroupmarker")
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer107, 0, array2, 0, array2.length);
    render_bundle_encoder601.insertDebugMarker("marker");
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query102.destroy()
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    query404.destroy()
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
    query101.destroy()
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    command_encoder403.insertDebugMarker("mymarker");
    
    query404.destroy()
    
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder1010.popDebugGroup()
    
    render_bundle_encoder602.insertDebugMarker("marker");
    
    query401.destroy()
    
    const query406 = device40.createQuerySet({
        label: "query406",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder6020.insertDebugMarker("marker")
    command_encoder104.popDebugGroup()
    device10.queue.writeBuffer(buffer105, 0, array5, 0, array5.length);
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder6020.pushDebugGroup("group_marker")
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    
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
    query402.destroy()
    buffer400.destroy()
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const command_buffer104 = command_encoder104.finish();
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pass_encoder4040 = command_encoder404.beginComputePass({ label: "compute_pass_encoder4040" });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout602]
    });
    
    device10.queue.writeBuffer(buffer105, 0, array3, 0, array3.length);
    
    command_encoder403.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder6020.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer105, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer107, 0, array0, 0, array0.length);
    
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    buffer106.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder403.popDebugGroup()
    
    
    
    
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout602]
    });
    
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_buffer403 = command_encoder403.finish();
    query600.destroy()
    
    
    
    
    compute_pass_encoder4040.insertDebugMarker("marker")
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.destroy();
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    compute_pass_encoder1030.popDebugGroup()
    
    buffer107.destroy()
    device40.pushErrorScope("out-of-memory");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout600]
    });
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    query102.destroy()
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    command_encoder105.resolveQuerySet(
        query102,
        0,
        32,
        buffer102,
        0
    )
    {
        await buffer109.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer109.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer109.unmap();
        console.log(new Float32Array(data));
    }
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout400]
    });
    compute_pass_encoder1030.insertDebugMarker("marker")
    
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
    
    render_bundle_encoder601.insertDebugMarker("marker");
    render_bundle_encoder402.insertDebugMarker("marker");
    
    
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    device10.queue.writeBuffer(buffer109, 0, array2, 0, array2.length);
    
    
    
    query404.destroy()
    
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    compute_pass_encoder4040.insertDebugMarker("marker")
    buffer600.destroy()
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    buffer109.destroy()
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    
    device10.queue.writeBuffer(buffer105, 0, array5, 0, array5.length);
    compute_pass_encoder1030.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer105, 0, array1, 0, array1.length);
    {
        await buffer105.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer105.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer105.unmap();
        console.log(new Float32Array(data));
    }
    device60.queue.submit([command_buffer600, ]);
    const command_buffer603 = command_encoder603.finish();
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout600]
    });
    query600.destroy()
    
    query600.destroy()
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout602]
    });
    compute_pass_encoder4040.insertDebugMarker("marker")
    
    buffer105.destroy()
    
    render_bundle_encoder102.insertDebugMarker("marker");
    compute_pass_encoder1030.insertDebugMarker("marker")
    
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query100.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer402.destroy()
    render_bundle_encoder401.insertDebugMarker("marker");
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder604.pushDebugGroup("mygroupmarker")
    compute_pass_encoder4040.insertDebugMarker("marker")
    const compute_pass_encoder6040 = command_encoder604.beginComputePass({ label: "compute_pass_encoder6040" });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    command_encoder106.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    render_bundle_encoder401.insertDebugMarker("marker");
    compute_pass_encoder1050.insertDebugMarker("marker")
    query406.destroy()
    compute_pass_encoder1010.insertDebugMarker("marker")
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    
    device40.queue.writeBuffer(buffer403, 0, array6, 0, array6.length);
    render_bundle_encoder402.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer403, 0, array3, 0, array3.length);
    compute_pass_encoder4040.pushDebugGroup("group_marker")
    device40.queue.writeBuffer(buffer403, 0, array1, 0, array1.length);
    
    device60.pushErrorScope("out-of-memory");
    render_bundle_encoder400.insertDebugMarker("marker");
    
    compute_pass_encoder1020.popDebugGroup()
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    compute_pass_encoder6040.insertDebugMarker("marker")
    
    query102.destroy()
    render_bundle_encoder600.insertDebugMarker("marker");
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
    const command_encoder605 = device60.createCommandEncoder({ label: "command_encoder605" });
    device40.queue.writeBuffer(buffer403, 0, array0, 0, array0.length);
    
    
    device40.queue.writeBuffer(buffer403, 0, array7, 0, array7.length);
    compute_pass_encoder6040.insertDebugMarker("marker")
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const command_buffer605 = command_encoder605.finish();
    render_bundle_encoder602.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer403, 0, array0, 0, array0.length);
    compute_pass_encoder4040.popDebugGroup()
    const pipeline_layout606 = device60.createPipelineLayout({ 
        label: "pipeline_layout606",
        bindGroupLayouts: [bind_group_layout601]
    });
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    render_bundle_encoder602.insertDebugMarker("marker");
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    command_encoder106.insertDebugMarker("mymarker");
    compute_pass_encoder1030.insertDebugMarker("marker")
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    device60.queue.submit([command_buffer605, ]);
    
    device40.queue.writeBuffer(buffer403, 0, array5, 0, array5.length);
    
    
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
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    device40.queue.writeBuffer(buffer403, 0, array0, 0, array0.length);
    device40.queue.writeBuffer(buffer403, 0, array4, 0, array4.length);
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder602.insertDebugMarker("marker");
    query600.destroy()
    compute_pass_encoder6040.insertDebugMarker("marker")
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    device40.queue.writeBuffer(buffer403, 0, array2, 0, array2.length);
    const command_buffer106 = command_encoder106.finish();
    compute_pass_encoder6010.insertDebugMarker("marker")
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.submit([command_buffer106, ]);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder6010.popDebugGroup()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1050.popDebugGroup()
    device40.queue.submit([command_buffer403, ]);
    device60.queue.submit([command_buffer603, ]);
    device10.queue.submit([command_buffer104, ]);
    compute_pass_encoder6020.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
}