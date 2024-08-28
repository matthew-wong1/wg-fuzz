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
    
    const array0 = new Float32Array([0.0, 0.5, 0.75, -0.25, -0.5, -0.75, -0.75, -1.0, -0.5, -0.75, 0.0, 0.25, 0.0, -0.25, -1.0, -1.0, 0.5, 0.75, 0.0, -1.0, 0.0, 0.75, -1.0, 0.0, -0.5, -0.5, 0.75, 0.75, 1.0, -0.5, 0.75, 0.5, 0.25, -1.0, -0.75, 0.5, -0.25, 1.0, 0.0, 0.0, 1.0, 0.5, 0.0, 1.0, 0.5, -0.75, 0.0, 0.75, -0.25, 0.0, -0.75, 1.0, -0.75, -0.75, -0.75, -0.25, 1.0, -0.75, 0.5, -0.25, -1.0, 0.0, -1.0, 0.0, -1.0, -0.25, -1.0, -0.75, 0.5, -0.75, 1.0, 0.75, -0.5, -0.5, 0.0, -0.75, -0.25, 0.25, -1.0, 0.0, -0.25, -0.25, 0.25, -1.0, -0.5, 1.0, 0.25, 0.75, 0.5, 0.75, -0.75, 1.0, 0.5, -0.25, -1.0, 0.75, 0.75, 0.0, -0.25, 1.0, ]);
    
    const array1 = new Float32Array([-0.25, -0.5, 0.75, 0.75, -1.0, 0.5, -0.25, 0.75, -0.5, -0.25, 0.5, 1.0, 0.0, -0.75, -0.25, -0.25, -0.75, 1.0, -0.25, 0.25, 0.0, -0.5, 0.75, 1.0, -0.75, 0.25, 0.25, 0.0, 0.25, -0.75, 1.0, 0.5, 0.5, 0.25, 0.25, -0.5, 1.0, 0.5, 0.75, -1.0, 0.0, 0.25, -1.0, 0.75, 0.5, -0.5, 1.0, -0.5, 0.5, -0.5, -0.25, 0.75, -0.75, -0.75, 1.0, 0.75, 1.0, -1.0, 0.75, -1.0, 0.75, 0.75, -0.75, 0.25, 0.75, 0.0, -1.0, -0.25, -1.0, -0.5, 0.25, 0.75, -0.25, 0.75, 1.0, 1.0, -1.0, -0.25, -0.75, -1.0, 0.5, 0.5, 0.25, -0.75, 0.0, 0.0, 0.5, 0.25, -0.5, 0.0, -0.5, -1.0, -0.25, -0.25, 0.25, 0.75, 0.75, -0.25, -0.25, -1.0, ]);
    const array2 = new Float32Array([1.0, 0.25, 0.25, -0.5, 0.25, 0.0, 0.5, -0.75, 1.0, -1.0, 0.75, -0.75, 0.25, 0.5, 0.5, -0.75, 0.0, -0.25, 0.0, -1.0, 1.0, -0.75, 0.0, -0.75, 0.5, 0.25, 0.75, -0.5, -0.75, -0.75, -0.75, 0.75, -0.25, 0.25, -1.0, -0.75, 1.0, 1.0, 0.0, -1.0, 0.75, 0.0, -1.0, -0.5, 0.75, -1.0, 0.25, 0.25, -0.25, -0.5, 1.0, -0.5, 0.5, -0.5, 1.0, -0.5, 1.0, 0.25, 0.0, 0.25, -0.75, -0.75, -0.75, 0.0, 0.75, 0.75, 0.25, 0.0, -0.5, -0.75, 0.75, -0.75, -1.0, -0.75, 0.0, 0.25, 0.5, 0.25, -0.75, -0.25, 1.0, -0.5, 1.0, 0.25, 0.0, 0.75, -0.25, 0.0, 0.75, 0.5, -1.0, 0.5, -0.75, -0.5, -0.75, 0.0, -1.0, -0.75, -1.0, 0.0, ]);
    const array3 = new Float32Array([-0.5, 0.75, 0.5, 0.5, 0.5, 0.75, 0.0, 1.0, 0.25, 0.0, 0.75, -0.25, -0.25, -0.25, 0.25, 1.0, 0.25, -0.5, -0.5, -0.25, -1.0, 0.75, 0.0, -0.25, -0.25, 0.5, 0.75, -1.0, -0.25, 0.25, 0.25, -0.75, -0.75, 0.0, -0.5, 0.75, 0.0, 1.0, -0.25, -0.25, 0.25, 0.0, -0.25, -0.25, -0.25, 0.0, -0.75, -1.0, 0.75, 1.0, 0.0, 0.75, -1.0, -0.25, 0.5, 1.0, -1.0, -1.0, 0.0, -0.5, -0.75, -0.75, 0.5, 0.0, -1.0, 0.75, -0.75, 1.0, 0.5, 0.25, 0.0, 0.5, 0.75, -0.25, 1.0, -1.0, 1.0, 0.0, -1.0, -0.75, 0.25, 0.25, 0.0, -1.0, 0.75, -0.75, 0.25, 0.25, 1.0, 0.75, -0.25, 1.0, -0.25, -0.75, 0.0, -0.25, 0.75, -0.25, -1.0, 0.5, ]);
    
    
    const array4 = new Float32Array([-0.75, -0.5, 0.75, 0.5, 0.75, 1.0, 1.0, -0.25, 0.25, -0.5, 0.5, 1.0, 0.75, 0.0, 0.0, 0.5, -0.25, 0.75, 0.0, -0.5, -1.0, -0.5, -0.5, 0.5, -0.75, -0.25, 0.0, 0.5, -0.25, -0.75, 0.75, 0.75, 1.0, -1.0, 0.25, -0.5, -1.0, 0.25, 0.0, -0.75, -1.0, 0.25, -0.5, -0.75, -1.0, -0.25, -0.25, 0.75, 0.25, -0.75, -0.75, -0.75, 0.0, -0.5, -1.0, 0.25, -1.0, -0.75, 0.5, 1.0, -1.0, 0.0, 1.0, 0.75, 1.0, 0.25, 0.25, 0.0, -0.5, 0.75, -1.0, 1.0, 0.5, 0.0, 0.25, -1.0, 1.0, 1.0, 0.25, -1.0, 1.0, -0.75, -0.25, 0.25, 1.0, 0.5, 0.75, 0.75, -0.75, -1.0, -0.75, 0.5, 0.25, -0.75, -0.25, 0.75, -0.75, 0.75, -1.0, 0.75, ]);
    
    const array5 = new Float32Array([-0.5, 0.0, -0.25, 1.0, -0.75, -0.5, 0.0, -0.25, 0.5, -0.75, 0.25, 0.75, 0.25, 0.75, -0.25, 0.5, 0.5, -0.5, -0.5, -0.25, -0.75, 0.0, 0.0, 0.5, 0.25, 0.5, -0.5, 0.0, -0.5, -1.0, 0.75, 1.0, 0.5, -0.75, 0.25, -0.25, 0.5, 1.0, 0.25, 0.0, 0.75, -0.5, 0.75, -1.0, -0.25, -0.25, 0.75, -0.75, 1.0, 0.5, -1.0, -0.75, -1.0, -1.0, 0.25, 0.25, -1.0, 0.5, -1.0, -0.5, 0.5, -0.5, 0.25, 1.0, 0.0, -1.0, -1.0, 0.0, -0.25, -1.0, -0.75, -0.25, 0.25, -1.0, -0.5, -0.25, -0.5, 0.0, -0.5, -0.75, 1.0, -0.5, 0.0, -0.5, -1.0, -0.25, 0.0, 0.0, 1.0, -0.5, 0.0, 0.75, -0.75, 0.25, 0.0, -1.0, 0.0, -0.25, -0.25, -0.75, ]);
    
    const array6 = new Float32Array([0.0, 0.25, 0.25, 0.0, 0.0, 0.75, 0.75, 0.5, -1.0, 1.0, 0.5, -0.25, 0.25, -0.5, 0.0, -0.75, -0.5, -0.25, -0.25, 0.25, 1.0, -0.5, 0.0, -0.25, -1.0, 0.0, -0.75, -0.5, -0.5, 0.5, -1.0, 0.0, -0.25, -0.25, 0.0, -0.75, -0.75, -0.5, -1.0, -0.5, -0.5, 0.75, -1.0, 0.75, 0.25, 0.75, -0.5, 0.75, 0.5, -0.5, 0.5, 0.0, 0.5, -0.25, 0.75, 0.25, 0.25, 0.75, -0.5, -0.25, 0.0, 0.5, -0.75, 1.0, -0.5, -1.0, -0.25, 0.0, -0.75, -1.0, 0.75, -0.75, 1.0, 0.5, 1.0, 0.25, 1.0, -0.75, 1.0, 0.75, 0.75, 0.0, 0.0, 0.0, -0.5, 1.0, -1.0, 0.25, -0.5, -0.25, 0.25, 0.25, -1.0, 0.75, 0.0, -0.75, -0.5, -0.25, 0.25, -0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array7 = new Float32Array([0.75, 0.0, 0.5, -0.25, -0.25, 0.0, -0.25, -0.25, 1.0, 0.25, -0.5, 0.25, -0.5, 0.0, -0.75, -0.25, 1.0, 0.25, 1.0, 0.5, -0.25, -0.5, 0.75, -0.25, 1.0, 0.25, 1.0, -1.0, 0.25, -1.0, -0.5, 0.0, -1.0, -1.0, 1.0, 0.25, -0.5, 0.25, 0.0, 0.0, 0.25, -1.0, -0.25, 0.25, 0.25, -1.0, 1.0, -0.25, 0.75, 0.0, -0.75, 0.75, -0.25, -0.25, 0.5, 1.0, 0.75, -0.75, -0.75, -0.5, -0.75, 0.5, -0.75, 0.5, 1.0, 0.5, -1.0, 0.75, 0.75, 0.75, 0.75, 0.5, 1.0, -0.5, 0.0, -0.75, 0.25, -0.5, 0.5, 0.75, 1.0, -1.0, 0.5, -0.25, 1.0, -0.5, -0.25, -0.5, 0.75, -0.25, 0.25, 0.75, 0.5, -0.5, 1.0, -0.25, 0.0, -1.0, 1.0, 0.0, ]);
    
    
    const array8 = new Float32Array([-0.25, -0.75, 0.0, 0.75, 0.25, 1.0, -0.75, 0.5, 0.5, 0.5, 0.5, 0.75, 0.75, 0.0, 0.5, 0.5, 0.25, 0.25, 0.5, -0.5, 0.0, -1.0, -0.5, -1.0, -0.75, 0.0, 1.0, 0.5, 0.75, -0.25, -0.25, -0.5, 0.5, 0.75, -0.5, -1.0, -0.25, -0.25, 0.0, 0.0, -0.75, -1.0, 1.0, 0.25, 0.0, -0.75, 0.25, -0.5, 1.0, 0.5, 0.0, 0.25, 0.0, -0.75, 1.0, -1.0, 0.5, -0.5, -0.75, -0.5, 1.0, 0.25, 0.25, -0.75, -1.0, 0.25, 0.0, -0.75, 0.5, 0.5, -0.25, -1.0, 1.0, 1.0, 0.5, -0.25, 1.0, 0.5, -1.0, -1.0, -1.0, -0.25, 0.0, 0.75, 0.0, 1.0, 0.5, -0.25, 1.0, -0.5, -0.5, -0.5, -0.75, -1.0, 0.75, 1.0, -0.25, -1.0, 0.25, -0.5, ]);
    
    const array9 = new Float32Array([-0.25, 0.5, 1.0, 1.0, -0.25, -0.5, 0.5, -0.5, 1.0, -0.25, 0.5, -0.25, 1.0, 0.75, 0.0, 0.5, 0.5, 0.5, -1.0, 0.0, -1.0, -0.25, 1.0, 0.0, -0.25, 1.0, -1.0, -0.25, -0.5, -0.5, 0.75, -0.75, 0.0, 1.0, 0.75, 0.0, 1.0, 0.75, -0.75, -0.5, 0.25, -0.75, 0.0, 0.25, -1.0, 1.0, -1.0, -1.0, 0.5, -1.0, -1.0, -0.75, 0.5, 0.75, -0.5, -0.25, 0.5, 0.75, -0.25, 0.0, -0.25, 1.0, 1.0, 0.25, -0.75, -0.25, -0.75, 1.0, 0.0, 0.75, -0.25, 1.0, 1.0, 1.0, 1.0, 0.5, -0.25, -0.75, 0.25, -0.75, -0.25, -1.0, 0.5, -1.0, -0.5, -0.75, 0.25, -0.75, 0.0, -0.25, 0.25, 0.5, 0.25, -0.75, 0.5, -0.5, -0.5, -0.25, -1.0, 0.5, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array10 = new Float32Array([1.0, -0.75, 0.0, -1.0, -0.5, 0.5, 0.75, -0.25, 0.0, 0.25, -0.75, -0.5, -0.5, 0.75, -0.5, 0.5, -0.75, 0.75, 0.0, 0.5, 0.0, 1.0, 0.75, -0.75, -1.0, -1.0, -0.5, 0.25, -0.75, -1.0, -0.25, -0.5, 0.75, 0.0, 0.5, 0.0, 0.0, 0.0, -0.5, 0.75, -0.5, -1.0, 1.0, 0.5, -1.0, -0.5, 0.25, -0.5, 0.0, -0.5, -0.25, -0.25, 0.25, 1.0, -0.25, 1.0, 0.0, 0.75, 0.75, -0.5, 1.0, 0.5, 1.0, 0.75, -0.75, -0.25, 1.0, -1.0, -1.0, 0.5, 0.75, 0.25, 0.25, -0.75, 0.5, 1.0, 0.0, -0.75, 0.25, -0.75, -0.5, 0.25, -0.75, 0.5, 1.0, 0.0, 0.25, 1.0, -1.0, 0.0, 0.5, 0.25, 1.0, -1.0, -1.0, 0.0, 0.75, 0.75, -0.25, -0.75, ]);
    
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
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.pushErrorScope("validation");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const array11 = new Float32Array([0.5, -1.0, -0.75, 0.5, -0.25, 0.0, 0.25, 0.0, 0.25, -0.75, 0.75, -0.5, -0.5, 1.0, 0.75, -0.75, 0.75, -0.25, -0.75, 0.5, 0.75, -0.25, 0.0, 1.0, 0.75, -0.75, -0.5, 0.5, 0.5, -0.5, -0.5, -1.0, 0.0, -0.75, 1.0, 0.75, -1.0, -0.75, 1.0, -0.5, 1.0, -0.75, 0.5, 1.0, 0.5, -0.75, -0.75, -1.0, 1.0, 0.5, 0.75, 0.0, 0.5, -0.75, -0.75, 1.0, -1.0, 0.5, 1.0, -0.5, -0.25, 0.25, 0.75, 0.25, 1.0, -0.5, -1.0, 0.5, -0.25, -0.75, -0.25, 0.0, 0.5, 0.75, -0.25, -0.5, 1.0, -0.5, 0.5, -1.0, 1.0, -0.75, 0.75, 0.5, -0.5, 0.75, 1.0, 0.25, -1.0, -0.25, 1.0, -1.0, 1.0, 1.0, -0.25, 0.25, 0.5, -0.25, 0.5, -0.25, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    render_bundle_encoder001.popDebugGroup();
    
    const array12 = new Float32Array([1.0, 0.75, -0.25, -0.25, 0.5, 0.5, 0.5, -0.75, -1.0, 0.25, 0.5, 0.0, 0.5, 0.25, 0.75, -1.0, 0.5, -0.25, -0.75, -0.5, -0.5, 0.25, 0.25, -1.0, 0.25, -1.0, -0.5, 1.0, 1.0, -0.25, -0.75, 0.25, 1.0, -0.75, 0.0, 1.0, -1.0, 0.0, -1.0, -0.75, 0.25, -0.75, -0.5, 0.5, -0.25, 0.75, -0.25, 0.25, -0.5, -1.0, 0.5, -0.75, 0.0, -0.5, 1.0, 1.0, 0.25, 0.5, 0.75, -1.0, -0.5, 0.5, 0.0, -0.5, -0.5, -0.5, -1.0, -0.5, -0.75, -0.75, -0.5, -0.75, -0.75, 1.0, 0.25, 0.75, -0.25, 0.0, 0.25, -0.75, 1.0, 1.0, 0.0, -0.75, -0.5, -0.75, -1.0, -0.75, -0.5, 1.0, -1.0, -0.75, 0.25, -0.75, 0.25, -0.25, 0.75, -0.5, -0.25, 0.0, ]);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const array13 = new Float32Array([0.75, 1.0, 0.5, 1.0, -0.25, -0.75, -0.75, 1.0, -0.75, 1.0, 0.25, 0.75, -0.75, -0.25, -0.75, -0.75, 0.25, 1.0, 0.0, 0.75, 0.5, -0.5, 0.75, 0.75, -0.75, -1.0, -0.5, 1.0, -1.0, 0.0, 1.0, 0.25, 0.0, -1.0, -0.25, -0.75, 0.75, -0.5, 0.0, -0.75, 0.25, 0.25, 0.75, 0.5, -0.75, 0.0, 0.75, 0.5, 0.25, 1.0, -0.25, 0.25, -0.75, 0.75, -0.5, 0.75, -1.0, -1.0, 1.0, 0.25, 0.25, -0.25, 0.25, 0.75, 0.0, 0.25, 0.25, -0.5, -1.0, -0.5, -0.25, 0.0, 1.0, 0.75, -1.0, 0.75, 0.0, 0.5, -0.75, 0.5, 0.25, -0.75, 0.0, 0.25, 0.5, 0.0, -0.5, 0.5, -0.25, 1.0, 0.25, 0.25, -0.75, 0.75, -0.25, -0.5, 0.75, -1.0, -1.0, -0.5, ]);
    const array14 = new Float32Array([-0.5, 0.75, -0.75, -0.25, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, -0.5, 0.0, 0.0, -0.5, 0.75, -0.75, 0.0, 0.0, 0.25, -0.75, 0.75, -0.25, 0.25, 0.5, -0.75, -0.5, -0.25, -0.75, 0.75, -1.0, -0.75, 1.0, 0.0, 0.5, 1.0, -1.0, 0.0, -0.5, 0.0, 0.75, -0.75, 0.5, 0.5, 0.5, 0.75, -0.75, -1.0, -0.25, -0.25, 0.25, -1.0, 0.75, 0.75, -1.0, 0.25, -0.75, 0.75, -0.25, -0.75, 1.0, 1.0, 1.0, 1.0, 0.5, 1.0, -0.75, 0.0, -0.5, 0.75, 0.75, 0.5, 0.0, -0.25, 0.0, -1.0, 1.0, 0.75, -0.75, 1.0, 0.0, 0.5, 0.25, -0.25, 0.25, -1.0, 0.75, -0.5, -0.25, 1.0, 0.5, -1.0, 0.75, 0.5, 0.75, 0.75, 0.5, 0.75, 0.25, 0.25, 0.5, ]);
    
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
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device10.pushErrorScope("internal");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_bundle_encoder001.pushDebugGroup("group_marker");
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
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder001.popDebugGroup();
    
    device00.pushErrorScope("out-of-memory");
    
    
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    device00.pushErrorScope("validation");
    render_bundle_encoder002.insertDebugMarker("marker");
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    command_encoder000.insertDebugMarker("mymarker");
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
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
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder001.popDebugGroup();
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
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.popDebugGroup();
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const command_buffer001 = command_encoder001.finish();
    command_encoder300.insertDebugMarker("mymarker");
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const command_buffer000 = command_encoder000.finish();
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    const array15 = new Float32Array([-0.75, -0.25, -0.25, -0.75, 1.0, -0.5, -0.5, -1.0, 0.0, 0.75, 0.0, -1.0, -1.0, 1.0, 0.25, -0.75, 0.75, -1.0, 0.75, 0.75, 1.0, 0.5, -0.25, 0.75, -0.25, 0.0, 0.5, 0.25, 1.0, -0.5, 0.5, -1.0, 0.75, 1.0, -0.25, 0.5, 0.75, 0.25, 0.75, -0.5, 0.25, 0.75, 0.0, 0.75, 1.0, -1.0, 0.5, 0.75, -0.75, -0.75, -0.5, -0.25, -0.5, 0.75, 0.25, -0.5, 0.5, 0.5, 0.5, -1.0, 1.0, 0.25, -1.0, -0.25, 0.75, -0.75, 0.5, -0.5, 0.25, 0.5, -1.0, 0.75, 0.75, -0.75, -0.25, 1.0, 0.75, 0.25, 0.75, -0.5, 1.0, 0.5, -0.75, 0.25, -0.75, 0.5, 1.0, 0.75, 0.25, -1.0, -1.0, -0.25, 0.5, 0.0, 0.25, 0.75, 1.0, 1.0, -0.75, 0.0, ]);
    
    
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    query000.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    command_encoder300.insertDebugMarker("mymarker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.pushErrorScope("out-of-memory");
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device30.pushErrorScope("validation");
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    query102.destroy()
    const command_buffer100 = command_encoder100.finish();
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    query000.destroy()
    
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    
    
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
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
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    device00.queue.submit([command_buffer000, ]);
    
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout005,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    query102.destroy()
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout002]
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
    render_bundle_encoder102.insertDebugMarker("marker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder000.insertDebugMarker("marker");
    query103.destroy()
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0048 = device00.createComputePipeline({
        label: "compute_pipeline0048",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    query102.destroy()
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline0049 = device00.createComputePipeline({
        label: "compute_pipeline0049",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline0050 = device00.createComputePipeline({
        label: "compute_pipeline0050",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0051 = device00.createComputePipeline({
        label: "compute_pipeline0051",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const compute_pipeline0052 = device00.createComputePipeline({
        label: "compute_pipeline0052",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
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
    
    const compute_pipeline0053 = device00.createComputePipeline({
        label: "compute_pipeline0053",
        layout: pipeline_layout004,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0054 = device00.createComputePipeline({
        label: "compute_pipeline0054",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0055 = device00.createComputePipeline({
        label: "compute_pipeline0055",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
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
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout002]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline0056 = device00.createComputePipeline({
        label: "compute_pipeline0056",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    
    
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline0057 = device00.createComputePipeline({
        label: "compute_pipeline0057",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline0058 = device00.createComputePipeline({
        label: "compute_pipeline0058",
        layout: pipeline_layout006,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0059 = device00.createComputePipeline({
        label: "compute_pipeline0059",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const array16 = new Float32Array([-0.25, -0.25, -1.0, -0.25, 1.0, 0.0, -0.75, -0.25, -1.0, 1.0, 0.75, -0.75, -0.25, 1.0, 1.0, 0.75, -0.5, 0.25, -0.25, 0.25, -0.75, 0.75, -1.0, 0.25, 0.5, -0.75, 0.5, 0.0, 0.0, 0.0, 0.5, -0.5, -1.0, -0.75, 0.75, -1.0, 0.75, 0.0, -0.5, 0.0, 1.0, -0.25, -1.0, 0.75, -0.5, 1.0, -0.75, 0.5, -1.0, 1.0, -1.0, 1.0, -0.25, 0.75, -1.0, 0.0, 0.75, -0.75, -0.5, 1.0, -1.0, 0.5, 1.0, 0.5, 1.0, 1.0, -0.75, -0.25, -0.75, 0.25, 1.0, 1.0, 0.75, 0.75, -0.75, 0.5, -0.5, -1.0, -0.75, -0.75, -0.25, -0.75, 0.75, -0.25, 0.0, 0.0, 1.0, -0.25, 0.0, 0.0, 0.25, 0.25, 1.0, 0.5, 0.75, 0.75, -0.25, 1.0, -0.75, -0.5, ]);
    query001.destroy()
    command_encoder002.insertDebugMarker("mymarker");
    const compute_pipeline0060 = device00.createComputePipeline({
        label: "compute_pipeline0060",
        layout: pipeline_layout008,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    const compute_pipeline0061 = device00.createComputePipeline({
        label: "compute_pipeline0061",
        layout: pipeline_layout008,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const compute_pipeline0062 = device00.createComputePipeline({
        label: "compute_pipeline0062",
        layout: pipeline_layout008,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout003]
    });
    const compute_pipeline0063 = device00.createComputePipeline({
        label: "compute_pipeline0063",
        layout: pipeline_layout009,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0064 = device00.createComputePipeline({
        label: "compute_pipeline0064",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder002.insertDebugMarker("mymarker");
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline0065 = device00.createComputePipeline({
        label: "compute_pipeline0065",
        layout: pipeline_layout007,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0066 = device00.createComputePipeline({
        label: "compute_pipeline0066",
        layout: pipeline_layout008,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder002.pushDebugGroup("mygroupmarker")
    const compute_pipeline0067 = device00.createComputePipeline({
        label: "compute_pipeline0067",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0068 = device00.createComputePipeline({
        label: "compute_pipeline0068",
        layout: pipeline_layout009,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    command_encoder101.insertDebugMarker("mymarker");
    const array17 = new Float32Array([0.5, -0.5, -0.25, -0.75, -0.75, 0.75, 1.0, 1.0, -0.75, -0.25, -0.75, 0.75, -0.75, 1.0, 0.0, -1.0, 1.0, -1.0, -0.5, -0.75, 0.25, -1.0, 0.0, 0.25, 0.5, 1.0, -0.25, -0.75, -1.0, -0.75, -1.0, -1.0, 0.75, 0.75, -0.75, 0.0, -0.5, 1.0, 0.5, -0.5, 0.75, 1.0, 0.25, -0.5, -0.75, 0.5, -0.75, -0.75, 0.75, -0.75, -0.5, -1.0, 0.75, 0.25, 0.75, -0.5, 0.25, 0.75, 0.75, 1.0, 0.0, -1.0, 0.5, 1.0, -0.25, -1.0, 0.75, -1.0, -1.0, 0.5, 1.0, -0.5, -0.25, 0.0, -0.75, -0.5, 0.75, 0.0, 0.25, 0.75, -1.0, -0.75, -0.5, 0.25, 0.0, 0.75, 0.25, 1.0, -0.75, 0.5, -0.25, -0.25, 0.75, 0.5, -1.0, -1.0, 1.0, 1.0, -0.5, 0.75, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const compute_pipeline0069 = device00.createComputePipeline({
        label: "compute_pipeline0069",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0070 = device00.createComputePipeline({
        label: "compute_pipeline0070",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0071 = device00.createComputePipeline({
        label: "compute_pipeline0071",
        layout: pipeline_layout009,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline0072 = device00.createComputePipeline({
        label: "compute_pipeline0072",
        layout: pipeline_layout007,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    
    device10.queue.submit([command_buffer100, ]);
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline0073 = device00.createComputePipeline({
        label: "compute_pipeline0073",
        layout: pipeline_layout009,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0074 = device00.createComputePipeline({
        label: "compute_pipeline0074",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const command_buffer200 = command_encoder200.finish();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const compute_pipeline0075 = device00.createComputePipeline({
        label: "compute_pipeline0075",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0076 = device00.createComputePipeline({
        label: "compute_pipeline0076",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0077 = device00.createComputePipeline({
        label: "compute_pipeline0077",
        layout: pipeline_layout008,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const compute_pipeline0078 = device00.createComputePipeline({
        label: "compute_pipeline0078",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const compute_pipeline0079 = device00.createComputePipeline({
        label: "compute_pipeline0079",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const compute_pipeline0080 = device00.createComputePipeline({
        label: "compute_pipeline0080",
        layout: pipeline_layout005,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder002.popDebugGroup();
    const compute_pipeline0081 = device00.createComputePipeline({
        label: "compute_pipeline0081",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    
    const compute_pipeline0082 = device00.createComputePipeline({
        label: "compute_pipeline0082",
        layout: pipeline_layout003,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0083 = device00.createComputePipeline({
        label: "compute_pipeline0083",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.submit([command_buffer200, ]);
    query002.destroy()
    render_bundle_encoder201.popDebugGroup();
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    const compute_pipeline0084 = device00.createComputePipeline({
        label: "compute_pipeline0084",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0085 = device00.createComputePipeline({
        label: "compute_pipeline0085",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder101.insertDebugMarker("mymarker");
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    query300.destroy()
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    query300.destroy()
    query200.destroy()
    const compute_pipeline0086 = device00.createComputePipeline({
        label: "compute_pipeline0086",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0087 = device00.createComputePipeline({
        label: "compute_pipeline0087",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    query104.destroy()
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
    const compute_pipeline0088 = device00.createComputePipeline({
        label: "compute_pipeline0088",
        layout: pipeline_layout009,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0089 = device00.createComputePipeline({
        label: "compute_pipeline0089",
        layout: pipeline_layout007,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    query100.destroy()
    device00.pushErrorScope("internal");
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const command_buffer003 = command_encoder003.finish();
    const compute_pipeline0090 = device00.createComputePipeline({
        label: "compute_pipeline0090",
        layout: pipeline_layout007,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0091 = device00.createComputePipeline({
        label: "compute_pipeline0091",
        layout: pipeline_layout008,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0092 = device00.createComputePipeline({
        label: "compute_pipeline0092",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline0093 = device00.createComputePipeline({
        label: "compute_pipeline0093",
        layout: pipeline_layout007,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    device20.pushErrorScope("out-of-memory");
    const compute_pipeline0094 = device00.createComputePipeline({
        label: "compute_pipeline0094",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0095 = device00.createComputePipeline({
        label: "compute_pipeline0095",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    command_encoder300.popDebugGroup()
    const compute_pipeline0096 = device00.createComputePipeline({
        label: "compute_pipeline0096",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    query100.destroy()
    const compute_pipeline0097 = device00.createComputePipeline({
        label: "compute_pipeline0097",
        layout: pipeline_layout003,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline0098 = device00.createComputePipeline({
        label: "compute_pipeline0098",
        layout: pipeline_layout005,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0099 = device00.createComputePipeline({
        label: "compute_pipeline0099",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
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
    
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout103,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const compute_pipeline00100 = device00.createComputePipeline({
        label: "compute_pipeline00100",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline00101 = device00.createComputePipeline({
        label: "compute_pipeline00101",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
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
    
    
    const compute_pipeline00102 = device00.createComputePipeline({
        label: "compute_pipeline00102",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline00103 = device00.createComputePipeline({
        label: "compute_pipeline00103",
        layout: pipeline_layout004,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline00104 = device00.createComputePipeline({
        label: "compute_pipeline00104",
        layout: pipeline_layout004,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline00105 = device00.createComputePipeline({
        label: "compute_pipeline00105",
        layout: pipeline_layout007,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const compute_pipeline00106 = device00.createComputePipeline({
        label: "compute_pipeline00106",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    query103.destroy()
    
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline00107 = device00.createComputePipeline({
        label: "compute_pipeline00107",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder101.pushDebugGroup("mygroupmarker")
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pipeline00108 = device00.createComputePipeline({
        label: "compute_pipeline00108",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const command_buffer004 = command_encoder004.finish();
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline00109 = device00.createComputePipeline({
        label: "compute_pipeline00109",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline00110 = device00.createComputePipeline({
        label: "compute_pipeline00110",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    query000.destroy()
    const compute_pipeline00111 = device00.createComputePipeline({
        label: "compute_pipeline00111",
        layout: pipeline_layout008,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    query000.destroy()
    const compute_pipeline00112 = device00.createComputePipeline({
        label: "compute_pipeline00112",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline00113 = device00.createComputePipeline({
        label: "compute_pipeline00113",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    command_encoder101.popDebugGroup()
    
    query104.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pipeline00114 = device00.createComputePipeline({
        label: "compute_pipeline00114",
        layout: pipeline_layout008,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline00115 = device00.createComputePipeline({
        label: "compute_pipeline00115",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    
    
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const command_buffer300 = command_encoder300.finish();
    const compute_pipeline00116 = device00.createComputePipeline({
        label: "compute_pipeline00116",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const command_buffer005 = command_encoder005.finish();
    const command_buffer101 = command_encoder101.finish();
    command_encoder002.popDebugGroup()
    const command_buffer002 = command_encoder002.finish();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.submit([command_buffer300, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    device10.queue.submit([command_buffer101, ]);
    device00.queue.submit([command_buffer003, command_buffer005, ]);
}