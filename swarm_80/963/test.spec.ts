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
    const array0 = new Float32Array([-1.0, 0.75, 0.5, 0.25, 0.75, 0.25, -0.5, 0.25, 0.25, 0.0, 0.75, -1.0, -0.25, -1.0, 1.0, 0.5, 0.25, 0.75, 0.25, -0.25, 0.5, 0.5, -0.5, 0.25, -0.75, 0.0, 0.25, 0.75, -0.75, 0.75, -0.25, 0.0, -0.5, -0.25, 0.5, -0.25, 0.75, -0.25, 0.75, -0.25, -0.5, 0.75, 0.75, -0.25, -0.75, 0.0, 1.0, -1.0, -0.5, 1.0, 0.0, -0.5, 0.5, -0.75, -0.25, -0.75, 0.0, 1.0, -1.0, 0.0, -0.5, 1.0, 1.0, -0.5, -0.5, -1.0, 0.5, 0.5, 0.5, -0.75, -0.75, -1.0, 1.0, -0.25, -0.5, -0.5, 0.0, -0.75, -0.25, -0.75, -1.0, 1.0, 1.0, -0.5, 0.5, -0.5, -0.5, 0.0, -0.5, -0.25, -0.5, -0.75, 1.0, -0.25, 1.0, 0.5, 0.0, -0.75, 0.0, 0.0, ]);
    const array1 = new Float32Array([0.75, 0.75, 0.0, -1.0, -0.75, 0.25, -0.5, 0.5, 0.0, 0.25, -0.5, 0.25, 0.0, 0.75, 0.5, -1.0, -0.75, -1.0, 0.5, -0.5, 1.0, 0.25, -0.25, 1.0, 0.5, -1.0, 0.75, -0.75, 1.0, -0.75, 0.0, 0.25, -0.5, -0.25, -0.25, 1.0, -0.5, -0.75, 1.0, -0.5, -1.0, 0.5, -0.5, 0.5, -0.25, 1.0, -0.25, 0.0, -0.75, 0.5, 0.25, 0.25, 0.75, 0.5, 0.75, 0.5, 1.0, 0.25, -0.5, -1.0, 0.0, 1.0, 0.25, -0.25, -0.5, 0.0, -0.75, -0.75, 0.25, -0.25, -1.0, 0.75, -0.75, 0.5, 0.5, 0.5, 0.5, 1.0, -0.25, -0.25, 1.0, -0.75, 0.75, 0.75, -0.75, -1.0, 0.5, 0.0, -0.5, -1.0, 0.25, 0.0, 1.0, 0.75, 0.5, 1.0, -0.5, 1.0, 1.0, 0.0, ]);
    const array2 = new Float32Array([-1.0, 0.0, -0.5, 1.0, -0.75, 0.25, 0.25, -0.25, 0.0, 0.75, 0.75, 0.75, -0.25, 1.0, -0.75, 0.25, 0.75, 0.5, -0.5, -0.25, 0.75, 0.5, 1.0, 0.75, 1.0, 0.25, -0.5, -0.75, 0.25, -0.25, -0.25, -0.75, -1.0, 0.5, -0.75, -0.75, 0.5, 0.75, -0.5, -0.75, 0.5, 0.25, 0.0, 0.0, 0.5, -0.25, -0.5, 0.5, -1.0, 0.0, 0.25, 1.0, -0.25, -0.5, -0.75, 0.5, 0.25, -0.25, 1.0, -0.75, 0.75, -0.75, 0.75, 0.75, 0.5, 1.0, 0.5, -0.25, -0.75, 0.5, 0.0, -1.0, 1.0, 0.25, 0.0, -0.75, -0.25, -0.5, 0.0, 0.0, -0.25, -0.5, 0.25, -1.0, -1.0, 0.75, -0.5, 1.0, 1.0, -1.0, 1.0, 0.0, 0.75, 0.5, -1.0, -0.25, -0.5, -0.5, -0.5, -0.5, ]);
    const array3 = new Float32Array([-0.25, -0.25, 0.25, 0.25, -0.25, -0.75, -0.5, -0.75, -0.25, -0.75, 0.0, 0.25, 1.0, 0.25, -0.75, -0.75, 0.5, -1.0, -0.75, 0.0, 0.25, 0.0, -1.0, -1.0, -1.0, -0.25, 0.25, -0.75, -0.75, -0.25, -0.25, 0.25, 1.0, -0.75, 0.25, -0.25, -1.0, 0.0, 0.25, 0.0, -0.5, -1.0, -0.25, 0.5, -1.0, -0.5, -1.0, -0.75, 0.5, 1.0, 1.0, 0.25, 0.5, 1.0, -0.5, 1.0, 0.75, 0.75, 0.5, 1.0, 1.0, 0.75, -0.25, -0.25, -0.25, -0.25, -0.5, -0.75, 0.0, 0.5, -0.25, -1.0, -0.25, -0.75, 0.25, -0.25, 0.75, -0.25, 0.75, 0.5, 1.0, -1.0, 1.0, -0.75, -0.75, 0.5, -0.25, 0.0, 1.0, 0.25, 0.25, -1.0, -1.0, 0.0, 1.0, -0.25, -0.5, -1.0, 0.25, -0.75, ]);
    const array4 = new Float32Array([0.25, 0.25, 0.25, -1.0, -1.0, -1.0, 0.25, -0.25, 1.0, 1.0, 0.25, 1.0, 1.0, 0.0, -0.25, 0.5, -0.5, 0.0, 0.0, -0.5, 0.25, -1.0, -0.5, -0.75, 1.0, -0.5, 1.0, -0.25, 1.0, -1.0, 0.75, 1.0, 1.0, 0.25, -0.75, -0.5, 0.25, 0.25, 0.75, -0.5, 1.0, -0.75, -1.0, -0.25, 0.25, 0.75, 0.25, 0.5, 0.75, 0.25, 0.0, 0.75, -0.25, -1.0, -0.25, 0.5, 0.25, 0.25, 0.75, 0.75, 1.0, 0.0, -0.25, 0.25, 1.0, 0.75, -1.0, 0.25, 1.0, 0.75, -0.5, -1.0, -0.25, -0.25, 0.0, 0.25, 0.25, -0.75, 0.0, 0.25, -0.5, 1.0, -1.0, -1.0, 0.25, -0.5, 0.5, -1.0, -0.75, 0.5, -0.25, 1.0, -0.75, 0.0, -0.75, 0.0, -0.5, -0.75, 0.0, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device00.destroy();
    const array5 = new Float32Array([1.0, -0.75, 0.5, -0.75, -1.0, 0.5, 0.75, 0.75, -0.25, 1.0, -0.75, 0.25, -0.25, 1.0, -1.0, -0.25, 0.0, -0.75, 1.0, 1.0, -0.25, 0.75, 0.5, 0.75, -0.25, -0.25, 0.75, -0.5, -0.25, 1.0, 0.25, -0.75, 0.5, 1.0, -0.5, -0.75, -0.5, -1.0, 0.5, -0.25, 0.0, -0.5, 0.0, -1.0, 0.5, 0.0, 1.0, 0.5, 1.0, -0.75, 0.25, 0.0, 0.25, -0.25, -0.25, 0.5, -1.0, 0.75, -0.75, -0.5, -0.5, -1.0, -0.5, -0.5, -1.0, 0.75, 1.0, -0.5, -0.75, 0.5, 0.0, 0.75, -0.75, -0.75, 0.75, 0.5, 0.0, -0.75, -0.75, -0.5, 1.0, -1.0, -0.5, 0.25, -1.0, -0.25, 0.5, -1.0, 0.25, -0.5, -1.0, -0.5, -0.75, -1.0, -0.25, 0.0, -0.75, 1.0, 0.5, -1.0, ]);
    
    
    const array6 = new Float32Array([0.75, -0.75, 1.0, 0.75, 0.5, -0.75, -1.0, -0.25, -0.5, 0.5, 0.25, -0.75, 0.5, 1.0, 0.0, 1.0, -0.5, 0.25, 1.0, 1.0, 0.5, 0.5, 1.0, -0.5, 0.0, -0.25, -1.0, -0.25, 0.0, 0.25, 0.75, -0.75, -1.0, 0.75, -0.25, -0.75, 0.75, -0.25, -0.25, 1.0, 0.0, 1.0, -0.25, -0.75, -0.5, 0.0, -1.0, -0.75, -0.75, 1.0, 0.0, -0.75, -1.0, 0.5, -1.0, 1.0, 1.0, 0.5, 0.5, 0.5, 0.25, -0.5, 1.0, -0.25, 0.75, 0.75, -0.25, -0.75, -0.5, 0.75, -1.0, 0.25, -0.75, -0.75, -0.5, -0.5, 0.0, -0.5, -1.0, -0.75, 0.25, 0.25, 0.5, -0.25, 0.0, 0.75, -1.0, 0.25, -0.5, 0.75, 0.5, 0.0, -0.5, 0.5, 0.25, 0.75, -1.0, -0.25, 0.75, -0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array7 = new Float32Array([0.0, 0.0, -0.75, 0.0, -0.25, 0.75, 1.0, 0.0, 0.0, -0.75, 1.0, -0.25, -1.0, 0.25, 1.0, 1.0, 0.25, 0.75, -0.5, -0.25, 0.25, -0.25, 0.25, -0.5, 0.5, -0.75, -1.0, -1.0, 0.0, -0.25, 0.0, 0.25, 0.0, -0.75, 0.0, 0.5, 1.0, 0.25, -0.75, 0.75, 0.5, 0.5, -0.75, -0.5, 0.75, 0.5, 0.0, -1.0, 0.75, 0.25, -1.0, -0.5, 0.25, -0.75, -1.0, -0.25, 0.25, -0.25, 1.0, -0.25, 0.5, 0.0, 1.0, 0.0, 0.25, 0.0, -0.25, -0.75, 0.5, 0.25, -0.25, 1.0, -0.25, -0.75, -0.75, 0.5, -0.5, -0.75, 1.0, 0.5, 1.0, 0.75, 1.0, -0.25, 0.75, -0.5, 0.25, -0.75, -0.75, 0.0, -1.0, -0.75, -1.0, 0.5, -0.75, -1.0, 0.75, 0.25, -1.0, 0.0, ]);
    const array8 = new Float32Array([-0.75, -0.75, -0.25, 0.25, -1.0, 0.5, -0.5, -0.5, -0.5, 0.75, 0.25, 0.25, 0.75, 0.0, -1.0, 0.75, -1.0, 0.5, 0.5, -1.0, 0.0, 0.25, 1.0, 0.0, -0.75, -0.75, -0.75, 0.5, -0.5, 1.0, 0.0, -0.5, -0.5, 0.75, -0.25, 0.25, 0.0, 0.5, -0.5, -1.0, -0.5, 0.0, 0.75, 1.0, 0.5, 0.0, 0.75, 1.0, -1.0, 0.75, 0.0, -1.0, 0.5, -0.75, -0.75, -0.75, 0.75, 0.75, 0.0, 0.75, 1.0, -1.0, -0.75, -0.5, 1.0, -1.0, -0.75, -0.25, 1.0, 0.0, 0.0, 0.0, 1.0, 0.0, -0.5, 1.0, 0.75, -0.75, -0.75, 0.5, -0.75, -0.25, -0.5, -0.75, 0.5, -1.0, -0.75, -1.0, -0.25, 0.25, -1.0, 0.25, -0.75, 1.0, 0.5, 0.5, -0.75, -1.0, 0.25, 0.75, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array9 = new Float32Array([1.0, -1.0, -0.5, -1.0, -0.5, -0.5, -0.5, -1.0, 1.0, 1.0, 0.75, -0.5, 0.0, 0.75, -1.0, 0.75, 0.25, -1.0, 0.5, 0.25, 1.0, -1.0, 0.5, 1.0, -0.25, -0.5, 0.5, 0.0, 0.25, 0.75, 0.25, -0.5, 0.75, -1.0, -0.25, 0.75, 0.5, 1.0, -0.25, -0.75, 0.0, 0.25, -0.5, 0.0, -0.25, -0.5, 0.5, -1.0, 0.25, 0.5, 0.25, -0.25, -0.5, 0.5, -1.0, 0.75, 0.75, 0.0, -1.0, -0.5, -0.75, 0.0, -0.5, -0.5, 1.0, 1.0, -0.75, -0.5, 0.25, 0.0, -0.25, -0.5, 0.75, -0.25, 0.25, 1.0, -0.75, -0.75, -0.5, 0.75, -0.75, -0.25, 0.5, 0.0, 1.0, -0.75, 0.5, -0.5, 0.0, 0.0, 1.0, 0.5, 0.75, 0.25, -0.5, 0.75, 0.25, 1.0, -0.75, 0.75, ]);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device20.destroy();
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device30.destroy();
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device40.destroy();
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const array10 = new Float32Array([-0.25, -0.75, -0.75, 0.25, 1.0, -0.75, 0.25, 1.0, 0.25, 0.5, -0.25, 0.0, 0.5, 0.0, 1.0, -0.5, 0.75, -0.75, -0.75, 1.0, 0.5, -0.75, -0.25, 0.25, 0.5, 0.75, -0.75, -0.25, -0.75, -1.0, 1.0, 0.75, 0.25, 0.25, -0.5, -1.0, 0.5, 0.5, 0.25, 0.75, 0.75, -0.25, 0.75, 0.0, 0.75, 1.0, -1.0, 0.5, 0.25, -0.75, -0.5, -0.25, 0.25, 0.0, 1.0, -0.25, 1.0, -0.75, -1.0, 0.5, -0.75, 0.25, 0.0, -0.25, -1.0, 1.0, -0.5, 0.5, -0.5, -1.0, -0.25, 0.75, 0.25, -0.25, 1.0, -1.0, 0.5, -0.75, 0.75, -0.25, 0.0, 0.75, 0.75, 1.0, 1.0, 0.75, 1.0, 0.75, -0.75, -0.25, 0.5, -0.25, -0.75, 0.25, 0.0, 0.25, 0.5, 1.0, 0.5, -0.25, ]);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const array11 = new Float32Array([0.25, -0.25, 0.5, 0.25, -0.5, 0.5, 0.0, 1.0, -0.5, -0.25, -0.75, 0.5, 0.25, 0.5, 0.5, 0.0, -0.25, 0.25, -0.5, 0.25, 0.5, 0.0, 0.75, 0.0, -1.0, -1.0, -0.5, -0.25, -0.25, 0.5, 0.0, 0.25, 1.0, 0.75, -0.25, -0.75, -0.25, -0.75, 1.0, -0.75, 1.0, -0.75, 1.0, 0.0, 0.5, 0.5, 0.25, 0.0, -1.0, -1.0, 0.75, -1.0, -0.75, 0.0, 0.75, -0.5, 0.75, 0.75, 1.0, -0.75, 0.5, 0.0, -0.25, -0.75, -0.75, 1.0, 0.75, 0.75, 1.0, 1.0, -0.25, 0.25, -0.75, -0.75, 1.0, -0.5, 0.25, 0.75, 0.25, 0.5, -1.0, -1.0, 0.5, 0.5, 0.25, 0.5, 1.0, 0.75, -0.75, 0.75, 0.0, 0.25, 0.5, 0.75, 0.75, -0.5, 0.75, 0.0, 0.0, 1.0, ]);
    device10.queue.writeBuffer(buffer101, 0, array9, 0, array9.length);
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer101, 0, array10, 0, array10.length);
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    
    device10.queue.writeBuffer(buffer101, 0, array9, 0, array9.length);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer101, 0, array11, 0, array11.length);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const array12 = new Float32Array([1.0, -0.75, -0.75, 1.0, -1.0, -0.25, 1.0, -1.0, 0.0, 0.5, 0.25, 0.0, 0.5, -0.75, -0.25, 0.75, -1.0, 0.0, 1.0, 0.75, 0.0, -0.5, -1.0, 0.0, -0.25, 0.75, -0.5, 1.0, 1.0, 1.0, 0.25, 0.75, -0.25, 1.0, 0.5, -0.5, -0.75, -1.0, -0.5, 1.0, -0.75, -0.5, 1.0, 0.5, 1.0, -0.5, 0.5, 0.25, 0.5, 0.5, 0.5, 0.0, 0.75, -0.25, -1.0, 0.0, 0.25, 0.75, 0.5, -0.25, 0.25, 0.25, 0.5, 1.0, 0.5, -0.75, 0.25, -0.5, -0.5, 0.75, -0.5, 1.0, -0.25, -0.75, 0.25, 1.0, 0.5, 0.25, -0.75, -0.25, -0.25, 1.0, 0.5, 1.0, 0.5, 0.75, 0.25, 1.0, 0.0, 1.0, 0.0, 0.5, -0.75, -0.5, 0.25, 0.75, 0.75, 0.0, -0.75, 0.25, ]);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    device10.queue.writeBuffer(buffer101, 0, array9, 0, array9.length);
    device10.queue.writeBuffer(buffer101, 0, array7, 0, array7.length);
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    device10.queue.writeBuffer(buffer101, 0, array9, 0, array9.length);
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeBuffer(buffer101, 0, array8, 0, array8.length);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer102, 0, array10, 0, array10.length);
    device10.queue.writeBuffer(buffer102, 0, array8, 0, array8.length);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module101,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module101,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    device10.queue.writeBuffer(buffer102, 0, array8, 0, array8.length);
    
    render_bundle_encoder101.setPipeline(render_pipeline100);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    query101.destroy()
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module100,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module100,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    render_bundle_encoder102.setPipeline(render_pipeline100);
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer104,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group100);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device10.queue.writeBuffer(buffer101, 0, array10, 0, array10.length);
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module102,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module102,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer106,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group101);
    render_bundle_encoder102.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer101, 0, array8, 0, array8.length);
    device10.queue.writeBuffer(buffer101, 0, array11, 0, array11.length);
    query100.destroy()
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    device10.destroy();
    
    const array13 = new Float32Array([0.5, -0.5, -0.5, -0.75, 0.25, 0.5, -0.25, 0.0, 1.0, 0.25, 0.0, 0.5, -1.0, -0.25, -0.25, 0.25, 0.0, 0.0, -1.0, -0.25, -1.0, -1.0, 0.0, 0.5, 0.0, 0.25, -1.0, -0.25, 0.5, 0.5, -0.25, -0.5, 1.0, 0.75, -0.25, -1.0, 0.25, -0.5, -0.5, 0.25, -0.5, 1.0, -0.25, 0.75, -0.25, -0.75, 1.0, 0.0, -0.75, 0.75, 0.5, 0.5, 1.0, 0.5, 0.5, -0.25, -0.25, 0.0, -0.5, -0.5, -0.5, -1.0, -0.5, -0.5, -1.0, 0.0, 0.25, -0.5, -0.25, 0.75, 0.5, 0.0, 0.0, -0.25, -0.75, -0.5, -0.25, 1.0, -0.5, 0.0, -1.0, -1.0, 0.5, 0.75, 0.25, 0.75, 0.0, -0.5, 0.5, 1.0, 0.75, 1.0, 1.0, -1.0, -0.25, -0.5, 0.25, -0.25, -0.25, 0.25, ]);
    const array14 = new Float32Array([-0.25, 1.0, 0.25, -0.5, 0.75, -1.0, 0.0, -1.0, -0.75, 0.75, -0.25, -0.75, 0.0, -0.5, -0.25, 0.25, 0.5, -0.25, -0.25, -0.25, 0.75, 0.25, 0.5, -1.0, 0.0, 0.5, -1.0, -0.25, -1.0, 1.0, 0.25, 0.5, 1.0, -0.25, -1.0, 1.0, -0.25, -0.5, 1.0, 0.25, 1.0, -0.75, -0.5, 0.25, 0.25, -0.25, 0.5, 0.5, 0.75, -0.25, 0.0, 0.25, -0.5, -0.5, 0.25, -1.0, -0.75, -0.75, -0.5, -0.5, -0.5, -0.25, 0.75, 0.0, 1.0, -1.0, 0.0, 0.0, 0.0, -1.0, 0.25, -0.5, -0.75, 1.0, -0.75, -0.25, -0.25, 0.0, 0.25, 0.5, -1.0, -0.75, 1.0, -1.0, -0.5, -0.5, -1.0, 1.0, -1.0, -1.0, 0.0, -1.0, -1.0, 0.5, 0.25, -0.75, 0.5, 0.5, -0.25, 0.0, ]);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device50.destroy();
    
    const array15 = new Float32Array([-1.0, 0.5, -0.75, -0.25, 0.5, -0.75, -1.0, 0.0, -0.25, 0.5, -0.5, 0.75, 0.75, 0.25, -0.75, 0.25, -1.0, -0.25, 0.25, 0.5, -1.0, 1.0, -0.25, 0.25, 0.0, -1.0, 1.0, 0.5, -0.25, -0.25, -1.0, -0.75, -0.25, 0.5, 0.75, 0.0, 0.75, -0.25, 0.5, 0.0, -1.0, 0.75, 0.0, -0.5, -1.0, -1.0, 1.0, 0.25, -0.75, -0.5, -1.0, 0.5, 1.0, -0.75, 1.0, 0.25, -0.25, 1.0, 0.5, 1.0, -0.5, -0.5, -1.0, 1.0, 0.25, 0.75, -0.25, 0.75, -1.0, 0.5, 1.0, 1.0, -0.25, 1.0, 0.0, 1.0, 0.5, -0.25, -1.0, -1.0, 0.0, 0.5, 0.25, 0.25, -0.5, 0.75, 1.0, -0.25, 1.0, 0.0, -0.25, -0.5, -0.75, 0.5, 0.25, -1.0, 0.25, 0.75, 0.75, 0.75, ]);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const array16 = new Float32Array([0.5, 0.5, 0.0, 0.0, 0.0, -0.5, -0.75, 1.0, -0.5, -1.0, -0.25, 0.5, 1.0, -0.5, -1.0, 0.25, -1.0, 0.0, -0.25, 1.0, 0.75, 1.0, 0.0, -0.25, 0.0, 0.25, -0.75, 0.0, -0.5, 1.0, 0.75, 0.5, 1.0, 0.5, 0.75, 0.75, -0.25, -1.0, -0.5, 0.75, 0.75, 0.0, 0.75, -0.25, -0.75, -0.5, 0.5, -0.25, -1.0, 0.0, 0.75, 0.75, 1.0, -0.75, 0.5, 0.25, -0.5, 0.0, -0.75, -0.25, 0.75, -0.75, 0.5, -0.25, -1.0, 0.25, 0.75, 0.25, -1.0, 1.0, -0.5, -0.25, 0.25, 0.25, -0.5, 0.0, -0.5, 1.0, -0.75, 0.75, -0.75, 0.0, 0.5, -0.25, 0.25, 0.0, 0.5, -1.0, -0.75, -0.75, 1.0, 1.0, -0.5, -1.0, -0.75, -0.75, -0.75, 0.25, -0.5, -0.75, ]);
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
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
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
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
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout602]
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
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
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module600,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module600,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query600.destroy()
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout603]
    });
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device60.queue.writeBuffer(buffer601, 0, array16, 0, array16.length);
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_bundle_encoder600.setPipeline(render_pipeline600);
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout603]
    });
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module601,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module601,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    device60.queue.writeBuffer(buffer601, 0, array7, 0, array7.length);
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    device60.queue.writeBuffer(buffer601, 0, array6, 0, array6.length);
    device60.queue.writeBuffer(buffer601, 0, array11, 0, array11.length);
    device60.queue.writeBuffer(buffer601, 0, array2, 0, array2.length);
    device60.queue.writeBuffer(buffer601, 0, array15, 0, array15.length);
    device60.queue.writeBuffer(buffer601, 0, array3, 0, array3.length);
    
    
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device60.queue.writeBuffer(buffer603, 0, array3, 0, array3.length);
    device60.queue.writeBuffer(buffer603, 0, array8, 0, array8.length);
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout603]
    });
    device60.queue.writeBuffer(buffer601, 0, array12, 0, array12.length);
    device60.queue.writeBuffer(buffer601, 0, array11, 0, array11.length);
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const adapter14 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device60.queue.writeBuffer(buffer601, 0, array14, 0, array14.length);
    device60.queue.writeBuffer(buffer604, 0, array7, 0, array7.length);
    device60.queue.writeBuffer(buffer603, 0, array5, 0, array5.length);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    device60.queue.writeBuffer(buffer603, 0, array14, 0, array14.length);
    device60.queue.writeBuffer(buffer604, 0, array7, 0, array7.length);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    device60.queue.writeBuffer(buffer603, 0, array6, 0, array6.length);
    
    device130.destroy();
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device60.queue.writeBuffer(buffer604, 0, array16, 0, array16.length);
    device60.queue.writeBuffer(buffer603, 0, array12, 0, array12.length);
    device90.destroy();
    device60.queue.writeBuffer(buffer601, 0, array7, 0, array7.length);
    device60.queue.writeBuffer(buffer604, 0, array10, 0, array10.length);
    device60.queue.writeBuffer(buffer604, 0, array7, 0, array7.length);
    device60.queue.writeBuffer(buffer601, 0, array12, 0, array12.length);
    device60.queue.writeBuffer(buffer601, 0, array6, 0, array6.length);
    device60.queue.writeBuffer(buffer604, 0, array11, 0, array11.length);
    device60.queue.writeBuffer(buffer601, 0, array13, 0, array13.length);
    
    device60.queue.writeBuffer(buffer603, 0, array10, 0, array10.length);
    device60.queue.writeBuffer(buffer604, 0, array0, 0, array0.length);
    device60.queue.writeBuffer(buffer603, 0, array3, 0, array3.length);
    device60.queue.writeBuffer(buffer604, 0, array5, 0, array5.length);
    device70.destroy();
    device60.queue.writeBuffer(buffer603, 0, array14, 0, array14.length);
    device60.queue.writeBuffer(buffer604, 0, array8, 0, array8.length);
    device60.queue.writeBuffer(buffer601, 0, array11, 0, array11.length);
    device60.queue.writeBuffer(buffer601, 0, array5, 0, array5.length);
    device60.queue.writeBuffer(buffer601, 0, array16, 0, array16.length);
    device60.queue.writeBuffer(buffer604, 0, array2, 0, array2.length);
    
    const pipeline_layout606 = device60.createPipelineLayout({ 
        label: "pipeline_layout606",
        bindGroupLayouts: [bind_group_layout602]
    });
    
    render_bundle_encoder600.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer601, 0, array8, 0, array8.length);
    device60.queue.writeBuffer(buffer604, 0, array2, 0, array2.length);
    device60.queue.writeBuffer(buffer601, 0, array3, 0, array3.length);
    device60.queue.writeBuffer(buffer603, 0, array12, 0, array12.length);
    device60.queue.writeBuffer(buffer604, 0, array4, 0, array4.length);
    device60.queue.writeBuffer(buffer604, 0, array1, 0, array1.length);
    device60.queue.writeBuffer(buffer601, 0, array11, 0, array11.length);
    
    
    device60.queue.writeBuffer(buffer604, 0, array8, 0, array8.length);
    device60.queue.writeBuffer(buffer601, 0, array3, 0, array3.length);
    device60.queue.writeBuffer(buffer604, 0, array16, 0, array16.length);
    device60.queue.writeBuffer(buffer601, 0, array8, 0, array8.length);
    device60.queue.writeBuffer(buffer603, 0, array16, 0, array16.length);
    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    device60.queue.writeBuffer(buffer601, 0, array0, 0, array0.length);
    device60.queue.writeBuffer(buffer601, 0, array5, 0, array5.length);
    device60.queue.writeBuffer(buffer601, 0, array6, 0, array6.length);
    device60.queue.writeBuffer(buffer603, 0, array10, 0, array10.length);
    device60.queue.writeBuffer(buffer603, 0, array14, 0, array14.length);
    device60.queue.writeBuffer(buffer601, 0, array0, 0, array0.length);
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    device60.queue.writeBuffer(buffer601, 0, array3, 0, array3.length);
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    device60.destroy();
    
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder800.insertDebugMarker("marker");
    
    const bind_group_layout1100 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1100",
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
    
    const query1101 = device110.createQuerySet({
        label: "query1101",
        type: "occlusion",
        count: 32,
    });
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    
    render_bundle_encoder800.pushDebugGroup("group_marker");
    const render_pipeline1100 = device110.createRenderPipeline({
        label: "render_pipeline1100",
        vertex: {
            module: shader_module1100,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1100,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const render_pipeline1101 = device110.createRenderPipeline({
        label: "render_pipeline1101",
        vertex: {
            module: shader_module1100,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1100,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    
    const array17 = new Float32Array([-0.5, -0.5, 1.0, -0.75, -0.25, -1.0, 1.0, 0.5, -0.25, -0.75, 0.75, -0.75, 0.75, 0.5, 0.75, -0.75, -1.0, -1.0, -0.75, -1.0, -1.0, 0.25, 1.0, 0.75, -0.25, 0.5, 0.75, 0.5, 0.5, 0.75, 1.0, 0.75, -0.5, -1.0, 0.75, 0.5, -0.25, 0.0, 0.25, 0.5, 0.0, 0.75, 0.5, 0.25, 0.25, -0.75, -1.0, 0.5, -0.75, 1.0, -0.75, -0.75, 0.25, 0.75, -1.0, 0.75, 1.0, -0.5, 0.0, 0.25, 1.0, -0.5, -0.75, 0.25, 1.0, 0.75, 0.5, 0.5, 0.75, -1.0, 0.0, -0.25, 0.25, 0.5, 1.0, -0.5, 1.0, 0.0, 0.25, 0.0, -0.5, 0.5, 0.25, -1.0, 0.5, 0.5, -0.25, 1.0, 0.25, 1.0, 1.0, 0.25, -0.5, 0.75, -0.75, 0.5, 0.5, 0.0, -1.0, -1.0, ]);
    device110.destroy();
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array18 = new Float32Array([1.0, -0.5, -0.75, -0.5, 0.0, -0.75, -0.25, 0.5, -0.75, 0.75, 0.75, -0.75, -0.75, 0.75, 0.25, 0.0, 0.5, 0.75, 0.75, 0.75, 0.75, -1.0, 0.25, -0.75, 0.5, 0.75, 0.25, -0.75, 0.25, 0.25, -1.0, -0.25, 0.75, -0.75, -0.75, 0.25, -0.25, -0.75, -1.0, 0.25, 0.5, 0.75, -1.0, -0.25, 0.25, -0.75, 0.25, -0.5, 0.25, -0.25, -0.25, -0.25, 0.25, -0.5, 1.0, 0.25, 0.25, -0.25, -0.5, 1.0, 0.0, -0.25, -0.75, 0.75, -0.5, -0.5, 0.75, 0.75, -1.0, 0.75, 0.0, 0.25, 0.0, 0.75, -1.0, -0.25, 0.0, -0.75, 0.0, 0.0, -0.5, 0.75, 0.5, -0.25, 1.0, -0.5, -0.25, 0.0, 0.25, -1.0, 0.75, -0.5, -0.75, 0.25, -0.5, 0.5, 0.5, -0.25, 0.25, 0.75, ]);
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
    render_bundle_encoder801.insertDebugMarker("marker");
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
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module801,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module801,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder801.pushDebugGroup("group_marker");
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
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
    const sampler803 = device80.createSampler( { label: "sampler803" } );
    
    const array19 = new Float32Array([-0.5, 1.0, 0.0, -0.75, 0.0, 0.0, -0.25, 0.25, -0.25, 1.0, -0.25, -0.75, 1.0, -1.0, 0.0, 0.75, 1.0, 1.0, 0.25, -0.75, -0.5, -1.0, 1.0, 0.5, -0.25, -0.25, 0.25, -0.5, -1.0, -1.0, 0.25, -0.5, 0.75, -0.75, 0.75, 0.5, -0.25, 0.5, 0.5, -0.75, -0.25, -1.0, -1.0, -0.75, -0.75, -1.0, 0.75, 0.5, 1.0, -0.25, 0.0, 0.0, -1.0, 0.25, 1.0, -0.75, 0.75, -0.75, -0.25, -0.25, 0.75, 1.0, 0.0, -0.75, 1.0, -0.25, 0.0, 0.0, 0.5, 0.25, -0.25, -0.25, -0.5, -0.75, -0.75, 1.0, -0.75, 1.0, 1.0, 1.0, -0.75, 1.0, 1.0, 0.0, -0.5, -0.5, 0.25, -0.5, 0.0, 0.75, 0.5, 1.0, -0.25, -0.75, 0.5, -0.25, 0.0, -0.25, -1.0, 1.0, ]);
    
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout800]
    });
    query800.destroy()
    render_bundle_encoder800.insertDebugMarker("marker");
    
    const render_pipeline1200 = device120.createRenderPipeline({
        label: "render_pipeline1200",
        vertex: {
            module: shader_module1200,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1200,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    device80.destroy();
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    const render_bundle_encoder1600 = device160.createRenderBundleEncoder({
        label: "render_bundle_encoder1600",
        colorFormats: ["bgra8unorm"]
    });
    query1200.destroy()
    const adapter17 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const bind_group_layout1600 = device160.createBindGroupLayout({ 
        label: "bind_group_layout1600",
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
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    const pipeline_layout1600 = device160.createPipelineLayout({ 
        label: "pipeline_layout1600",
        bindGroupLayouts: [bind_group_layout1600]
    });
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const render_bundle_encoder1601 = device160.createRenderBundleEncoder({
        label: "render_bundle_encoder1601",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module1700_code = "";
    try {
        shader_module1700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1700 = await device170.createShaderModule({ label: "shader_module1700", code: shader_module1700_code })
    var shader_module1701_code = "";
    try {
        shader_module1701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1701 = await device170.createShaderModule({ label: "shader_module1701", code: shader_module1701_code })
    
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    var shader_module1702_code = "";
    try {
        shader_module1702_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1702 = await device170.createShaderModule({ label: "shader_module1702", code: shader_module1702_code })
    const bind_group_layout1200 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1200",
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
    const render_bundle_encoder1602 = device160.createRenderBundleEncoder({
        label: "render_bundle_encoder1602",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const query1700 = device170.createQuerySet({
        label: "query1700",
        type: "occlusion",
        count: 32,
    });
    device120.queue.writeBuffer(buffer1200, 0, array15, 0, array15.length);
    render_bundle_encoder1601.insertDebugMarker("marker");
    const pipeline_layout1601 = device160.createPipelineLayout({ 
        label: "pipeline_layout1601",
        bindGroupLayouts: [bind_group_layout1600]
    });
    const sampler1700 = device170.createSampler( { label: "sampler1700" } );
    device120.queue.writeBuffer(buffer1200, 0, array5, 0, array5.length);
    const adapter18 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device120.queue.writeBuffer(buffer1200, 0, array19, 0, array19.length);
    device120.queue.writeBuffer(buffer1200, 0, array5, 0, array5.length);
    const render_pipeline1700 = device170.createRenderPipeline({
        label: "render_pipeline1700",
        vertex: {
            module: shader_module1702,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1702,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const render_bundle_encoder1400 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder1400.pushDebugGroup("group_marker");
    const bind_group_layout1201 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1201",
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
    const bind_group_layout1202 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1202",
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
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    const query1201 = device120.createQuerySet({
        label: "query1201",
        type: "occlusion",
        count: 32,
    });
    device120.queue.writeBuffer(buffer1200, 0, array9, 0, array9.length);
    render_bundle_encoder1601.insertDebugMarker("marker");
    render_bundle_encoder1600.pushDebugGroup("group_marker");
    const buffer1700 = device170.createBuffer({
        label: "buffer1700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device120.queue.writeBuffer(buffer1200, 0, array10, 0, array10.length);
    const buffer1701 = device170.createBuffer({
        label: "buffer1701",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const buffer1600 = device160.createBuffer({
        label: "buffer1600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const bind_group_layout1601 = device160.createBindGroupLayout({ 
        label: "bind_group_layout1601",
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
    
    const pipeline_layout1602 = device160.createPipelineLayout({ 
        label: "pipeline_layout1602",
        bindGroupLayouts: [bind_group_layout1601]
    });
    render_bundle_encoder1602.pushDebugGroup("group_marker");
    device120.queue.writeBuffer(buffer1200, 0, array3, 0, array3.length);
    
    device120.queue.writeBuffer(buffer1200, 0, array1, 0, array1.length);
    device160.destroy();
    
    device120.queue.writeBuffer(buffer1200, 0, array6, 0, array6.length);
    const pipeline_layout1200 = device120.createPipelineLayout({ 
        label: "pipeline_layout1200",
        bindGroupLayouts: [bind_group_layout1200]
    });
    const pipeline_layout1201 = device120.createPipelineLayout({ 
        label: "pipeline_layout1201",
        bindGroupLayouts: [bind_group_layout1201]
    });
    device120.queue.writeBuffer(buffer1200, 0, array5, 0, array5.length);
    device170.queue.writeBuffer(buffer1700, 0, array8, 0, array8.length);
    device170.queue.writeBuffer(buffer1700, 0, array4, 0, array4.length);
    device170.queue.writeBuffer(buffer1700, 0, array5, 0, array5.length);
    device120.queue.writeBuffer(buffer1200, 0, array0, 0, array0.length);
    device170.queue.writeBuffer(buffer1700, 0, array16, 0, array16.length);
    
    device170.queue.writeBuffer(buffer1700, 0, array6, 0, array6.length);
    device120.queue.writeBuffer(buffer1200, 0, array16, 0, array16.length);
    const sampler1201 = device120.createSampler( { label: "sampler1201" } );
    const buffer1702 = device170.createBuffer({
        label: "buffer1702",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device170.queue.writeBuffer(buffer1700, 0, array5, 0, array5.length);
    
    device120.queue.writeBuffer(buffer1200, 0, array4, 0, array4.length);
    device170.queue.writeBuffer(buffer1700, 0, array7, 0, array7.length);
    device120.queue.writeBuffer(buffer1200, 0, array9, 0, array9.length);
    
    const query1202 = device120.createQuerySet({
        label: "query1202",
        type: "occlusion",
        count: 32,
    });
    device120.queue.writeBuffer(buffer1200, 0, array17, 0, array17.length);
    const device180 = await adapter18!.requestDevice({ label: "device180" });
    
    const bind_group_layout1800 = device180.createBindGroupLayout({ 
        label: "bind_group_layout1800",
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
    device170.queue.writeBuffer(buffer1700, 0, array6, 0, array6.length);
    device180.destroy();
    
    
    const pipeline_layout1202 = device120.createPipelineLayout({ 
        label: "pipeline_layout1202",
        bindGroupLayouts: [bind_group_layout1202]
    });
    query1201.destroy()
    device120.queue.writeBuffer(buffer1200, 0, array6, 0, array6.length);
    
    
    device120.queue.writeBuffer(buffer1200, 0, array17, 0, array17.length);
    
    query1202.destroy()
    var shader_module1703_code = "";
    try {
        shader_module1703_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1703 = await device170.createShaderModule({ label: "shader_module1703", code: shader_module1703_code })
    device170.queue.writeBuffer(buffer1700, 0, array16, 0, array16.length);
    query1700.destroy()
    device170.queue.writeBuffer(buffer1700, 0, array4, 0, array4.length);
    
    device170.queue.writeBuffer(buffer1700, 0, array10, 0, array10.length);
    device170.queue.writeBuffer(buffer1700, 0, array3, 0, array3.length);
    
    device120.queue.writeBuffer(buffer1200, 0, array18, 0, array18.length);
    device170.queue.writeBuffer(buffer1700, 0, array6, 0, array6.length);
    device120.queue.writeBuffer(buffer1200, 0, array5, 0, array5.length);
    var shader_module1202_code = "";
    try {
        shader_module1202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1202 = await device120.createShaderModule({ label: "shader_module1202", code: shader_module1202_code })
    device120.queue.writeBuffer(buffer1200, 0, array6, 0, array6.length);
    const render_pipeline1701 = device170.createRenderPipeline({
        label: "render_pipeline1701",
        vertex: {
            module: shader_module1702,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1702,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    device120.queue.writeBuffer(buffer1200, 0, array13, 0, array13.length);
    
    query1200.destroy()
    device140.destroy();
    device170.destroy();
    const render_pipeline1201 = device120.createRenderPipeline({
        label: "render_pipeline1201",
        vertex: {
            module: shader_module1200,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1200,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    query1200.destroy()
    const render_pipeline1202 = device120.createRenderPipeline({
        label: "render_pipeline1202",
        vertex: {
            module: shader_module1202,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1202,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const query1203 = device120.createQuerySet({
        label: "query1203",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout1203 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1203",
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
    device120.queue.writeBuffer(buffer1200, 0, array1, 0, array1.length);
    device120.queue.writeBuffer(buffer1200, 0, array0, 0, array0.length);
    device120.queue.writeBuffer(buffer1200, 0, array16, 0, array16.length);
    device120.queue.writeBuffer(buffer1200, 0, array10, 0, array10.length);
    device120.destroy();
    const adapter19 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device190 = await adapter19!.requestDevice({ label: "device190" });
    const render_bundle_encoder1900 = device190.createRenderBundleEncoder({
        label: "render_bundle_encoder1900",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module1900_code = "";
    try {
        shader_module1900_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1900 = await device190.createShaderModule({ label: "shader_module1900", code: shader_module1900_code })
    const render_pipeline1900 = device190.createRenderPipeline({
        label: "render_pipeline1900",
        vertex: {
            module: shader_module1900,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1900,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    render_bundle_encoder1900.setPipeline(render_pipeline1900);
    render_bundle_encoder1900.pushDebugGroup("group_marker");
    var shader_module1901_code = "";
    try {
        shader_module1901_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1901 = await device190.createShaderModule({ label: "shader_module1901", code: shader_module1901_code })
    const render_pipeline1901 = device190.createRenderPipeline({
        label: "render_pipeline1901",
        vertex: {
            module: shader_module1900,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1900,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const sampler1900 = device190.createSampler( { label: "sampler1900" } );
    const adapter20 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler1901 = device190.createSampler( { label: "sampler1901" } );
    var shader_module1902_code = "";
    try {
        shader_module1902_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1902 = await device190.createShaderModule({ label: "shader_module1902", code: shader_module1902_code })
    const render_pipeline1902 = device190.createRenderPipeline({
        label: "render_pipeline1902",
        vertex: {
            module: shader_module1902,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1902,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    device190.destroy();
    
    const array20 = new Float32Array([0.0, 1.0, -0.75, 0.25, -0.5, -0.5, -0.25, 0.5, 0.0, 0.5, -0.25, -0.25, -0.75, -0.25, 0.75, 0.0, 1.0, -0.75, -0.5, 0.0, 0.25, 0.25, 1.0, 0.75, -0.25, -0.75, 0.75, 0.5, 0.5, -0.25, -1.0, -0.5, -0.25, 0.75, -0.75, -1.0, -1.0, 1.0, -0.5, -1.0, -0.75, 0.25, -0.25, -0.75, -0.5, -0.5, 0.75, 0.25, -0.25, -1.0, 1.0, 0.0, -0.25, 0.25, -0.5, 1.0, -0.25, 0.0, -0.75, 1.0, 0.75, 0.0, -0.5, 0.75, 0.75, 0.75, -0.5, -0.5, 0.75, -0.25, -0.75, -0.25, 0.25, -0.75, 1.0, 0.5, -0.75, 1.0, -1.0, 1.0, -0.75, 0.5, 0.75, -1.0, 0.5, 0.25, -1.0, 1.0, -0.75, -0.5, 0.75, -0.75, 0.25, 0.75, -1.0, 0.25, 1.0, 1.0, 0.25, 0.5, ]);
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    device150.destroy();
    const device200 = await adapter20!.requestDevice({ label: "device200" });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    device200.destroy();
    
    
    device100.destroy();
    const adapter21 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array21 = new Float32Array([-1.0, -0.75, 0.0, -1.0, -1.0, -0.5, 0.5, -1.0, -0.75, -0.5, -0.5, 0.0, -0.75, 0.0, -0.75, -1.0, 0.0, 0.0, 0.75, 0.75, -0.75, 1.0, 0.25, -0.5, -1.0, -1.0, -0.75, -1.0, 0.25, -0.25, -0.75, 0.0, 0.75, 1.0, 0.0, -0.5, 0.0, 0.25, -1.0, -1.0, -0.25, -0.5, 0.25, -1.0, -0.75, -0.5, -0.25, 0.5, -1.0, -0.25, 0.0, -0.75, 0.25, -0.75, 0.0, -0.75, -0.75, -0.5, 0.25, 0.75, 0.25, -1.0, 0.5, 0.25, -1.0, -1.0, 1.0, 1.0, -0.5, 0.25, 0.0, -0.25, 0.75, -0.25, 0.0, 1.0, 0.0, 0.5, 1.0, -0.5, 0.75, 1.0, -0.75, 0.5, -0.75, -0.5, 0.5, 0.75, 0.5, -0.75, 1.0, 0.5, -0.75, -0.25, -0.25, -1.0, -0.5, 1.0, -1.0, 0.0, ]);
    const device210 = await adapter21!.requestDevice({ label: "device210" });
    const bind_group_layout2100 = device210.createBindGroupLayout({ 
        label: "bind_group_layout2100",
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
    
    const array22 = new Float32Array([0.5, -0.25, 0.5, -0.25, 1.0, -0.75, -0.25, -0.5, -0.5, 0.25, 0.75, 0.75, -0.75, 0.75, 0.75, 0.0, -1.0, 0.0, 0.5, -0.25, 0.75, 1.0, -0.75, 0.0, 0.75, -0.75, 0.75, 0.0, 0.0, -1.0, 0.75, 0.5, -1.0, -0.5, 0.25, 0.5, -0.25, 0.75, 1.0, -0.5, 0.0, 0.0, 0.25, -1.0, -1.0, 1.0, 1.0, 0.75, 0.75, 0.75, -0.25, -0.75, -0.25, -1.0, -0.75, -0.25, -0.75, 1.0, -0.75, 0.75, 0.25, -0.75, 0.75, -0.75, -0.75, 1.0, 0.75, 1.0, 0.0, -0.5, 1.0, -1.0, -0.5, 0.0, 0.25, -0.75, 0.75, -1.0, 0.0, 0.25, 1.0, -0.25, -1.0, -1.0, -0.75, -1.0, 0.5, 0.5, 0.0, -0.75, 0.0, -1.0, 0.75, -0.75, 0.5, 1.0, -0.5, -1.0, 0.5, 0.0, ]);
    var shader_module2100_code = "";
    try {
        shader_module2100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2100 = await device210.createShaderModule({ label: "shader_module2100", code: shader_module2100_code })
    const sampler2100 = device210.createSampler( { label: "sampler2100" } );
    const adapter22 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device220 = await adapter22!.requestDevice({ label: "device220" });
    const render_bundle_encoder2200 = device220.createRenderBundleEncoder({
        label: "render_bundle_encoder2200",
        colorFormats: ["bgra8unorm"]
    });
    const query2100 = device210.createQuerySet({
        label: "query2100",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout2101 = device210.createBindGroupLayout({ 
        label: "bind_group_layout2101",
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
    
    const pipeline_layout2100 = device210.createPipelineLayout({ 
        label: "pipeline_layout2100",
        bindGroupLayouts: [bind_group_layout2100]
    });
    device220.destroy();
    const pipeline_layout2101 = device210.createPipelineLayout({ 
        label: "pipeline_layout2101",
        bindGroupLayouts: [bind_group_layout2100]
    });
    const render_pipeline2100 = device210.createRenderPipeline({
        label: "render_pipeline2100",
        vertex: {
            module: shader_module2100,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module2100,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const query2101 = device210.createQuerySet({
        label: "query2101",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout2102 = device210.createPipelineLayout({ 
        label: "pipeline_layout2102",
        bindGroupLayouts: [bind_group_layout2100]
    });
    const pipeline_layout2103 = device210.createPipelineLayout({ 
        label: "pipeline_layout2103",
        bindGroupLayouts: [bind_group_layout2100]
    });
    const pipeline_layout2104 = device210.createPipelineLayout({ 
        label: "pipeline_layout2104",
        bindGroupLayouts: [bind_group_layout2100]
    });
    const pipeline_layout2105 = device210.createPipelineLayout({ 
        label: "pipeline_layout2105",
        bindGroupLayouts: [bind_group_layout2101]
    });
    const render_bundle_encoder2100 = device210.createRenderBundleEncoder({
        label: "render_bundle_encoder2100",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder2101 = device210.createRenderBundleEncoder({
        label: "render_bundle_encoder2101",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const bind_group_layout2102 = device210.createBindGroupLayout({ 
        label: "bind_group_layout2102",
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
    
    render_bundle_encoder2101.pushDebugGroup("group_marker");
    const sampler2101 = device210.createSampler( { label: "sampler2101" } );
    const render_bundle_encoder2102 = device210.createRenderBundleEncoder({
        label: "render_bundle_encoder2102",
        colorFormats: ["bgra8unorm"]
    });
    query2100.destroy()
    device210.destroy();
    const array23 = new Float32Array([0.75, 1.0, 0.0, -0.5, 1.0, -0.5, 0.25, -0.75, -0.75, -0.75, -0.75, -1.0, -0.25, -1.0, -0.5, 1.0, -0.75, -1.0, -0.25, 1.0, -1.0, 0.25, 0.0, 0.25, -0.25, 0.0, 0.0, 0.0, -0.75, 0.75, -0.5, 1.0, 0.25, 0.0, -0.5, 0.25, -1.0, 0.0, -0.75, -0.5, -0.75, -1.0, -0.5, -1.0, -1.0, -1.0, 0.75, 0.5, -0.5, 0.75, -1.0, 0.25, 0.5, -0.25, -0.75, -0.75, 0.0, -1.0, 1.0, -0.25, 1.0, 1.0, 0.0, 0.5, 1.0, 0.5, 1.0, 0.25, -1.0, 0.75, 0.0, 0.25, -1.0, -0.5, -0.25, 0.25, 0.0, 0.0, 0.5, -0.25, 0.25, -0.75, 1.0, 0.75, 0.0, -0.75, -0.75, 0.25, 0.5, -1.0, -1.0, 0.5, 1.0, -1.0, 0.5, 0.0, 1.0, -0.75, -0.75, -0.75, ]);
    const adapter23 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter24 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter25 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device250 = await adapter25!.requestDevice({ label: "device250" });
    var shader_module2500_code = "";
    try {
        shader_module2500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2500 = await device250.createShaderModule({ label: "shader_module2500", code: shader_module2500_code })
    const device230 = await adapter23!.requestDevice({ label: "device230" });
    var shader_module2501_code = "";
    try {
        shader_module2501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2501 = await device250.createShaderModule({ label: "shader_module2501", code: shader_module2501_code })
    device250.destroy();
    const query2300 = device230.createQuerySet({
        label: "query2300",
        type: "occlusion",
        count: 32,
    });
    const buffer2300 = device230.createBuffer({
        label: "buffer2300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder2300 = device230.createRenderBundleEncoder({
        label: "render_bundle_encoder2300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const bind_group_layout2300 = device230.createBindGroupLayout({ 
        label: "bind_group_layout2300",
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
    
    query2300.destroy()
    const bind_group_layout2301 = device230.createBindGroupLayout({ 
        label: "bind_group_layout2301",
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
    var shader_module2300_code = "";
    try {
        shader_module2300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2300 = await device230.createShaderModule({ label: "shader_module2300", code: shader_module2300_code })
    
    const adapter26 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    query2300.destroy()
    query2300.destroy()
    device230.destroy();
    const array24 = new Float32Array([-0.5, 0.5, -0.75, 0.75, -0.25, 1.0, 1.0, -1.0, -0.25, 1.0, -1.0, -1.0, -0.75, -0.5, 1.0, -1.0, 1.0, -0.25, -1.0, 0.0, 1.0, 0.25, 0.75, 0.25, -0.5, -0.5, 0.75, 0.0, 0.25, -0.25, 0.5, 1.0, 0.0, -0.25, -0.5, 0.0, -1.0, 1.0, -0.75, -0.5, -0.75, 0.25, 0.5, -1.0, -1.0, -1.0, 0.0, 1.0, -0.75, -0.5, 0.5, 0.25, -0.5, -0.5, -1.0, -1.0, -0.25, -0.75, -0.75, 0.0, -1.0, 0.0, 0.5, -1.0, -0.5, 0.0, -1.0, 1.0, -0.5, -1.0, -0.5, 0.5, -0.5, 0.75, -0.5, 0.25, -0.75, 0.5, 1.0, -0.25, 0.75, -0.5, 0.75, -1.0, -0.25, -1.0, 0.5, -0.75, -1.0, 0.25, -1.0, -0.25, -1.0, -0.25, 0.25, -0.75, -0.5, -0.5, 0.5, -0.25, ]);
    
    const device260 = await adapter26!.requestDevice({ label: "device260" });
    var shader_module2600_code = "";
    try {
        shader_module2600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2600 = await device260.createShaderModule({ label: "shader_module2600", code: shader_module2600_code })
    device260.destroy();
}