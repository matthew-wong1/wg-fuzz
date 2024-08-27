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
    
    
    
    
    const array0 = new Float32Array([-0.25, -0.25, 0.5, 1.0, -0.5, 0.25, 0.0, 0.75, -1.0, 0.0, 1.0, 0.75, 0.25, 0.0, 0.0, -0.25, -1.0, -0.5, 1.0, 0.0, -0.25, -1.0, -0.5, 1.0, -0.5, -1.0, 0.25, -0.25, 0.5, 0.5, 1.0, -0.25, 0.25, -0.25, 0.0, -1.0, -0.75, 0.25, 1.0, 1.0, -0.25, 0.75, -0.75, 0.75, 0.5, -0.75, -1.0, -0.5, -0.5, 0.25, -0.5, 1.0, -0.25, -0.25, 0.75, 0.75, -0.75, 0.0, 0.25, -0.25, -0.5, 0.25, 0.0, 0.5, 0.0, 0.5, 0.25, -0.75, -0.25, 0.75, -0.25, -1.0, -0.75, 1.0, 0.25, -0.5, 0.25, 1.0, 0.0, 0.75, -0.5, 0.0, 1.0, 0.0, -1.0, 0.5, -1.0, 0.25, -0.25, -0.75, -0.25, -1.0, -0.25, -1.0, 1.0, 0.25, -1.0, -0.75, -1.0, 0.0, ]);
    
    
    const array1 = new Float32Array([0.25, -1.0, -0.75, -0.75, 0.0, 1.0, 0.5, 0.25, 0.0, -0.75, 0.0, 0.0, -0.25, 1.0, -1.0, 0.75, -0.5, -1.0, 0.0, 0.75, 1.0, -0.75, -0.5, -0.5, 0.0, 0.75, -0.5, 0.5, 0.75, 0.75, 1.0, -1.0, 0.0, 0.25, -1.0, -0.75, 1.0, 1.0, 0.5, -0.75, -0.5, -0.75, 0.75, -1.0, -1.0, 0.5, 0.0, 0.5, -0.75, 0.5, 0.0, 0.25, -1.0, 0.25, -0.5, 0.5, 0.5, -0.75, -0.25, -0.25, 0.0, 1.0, 1.0, 0.0, -0.75, -0.25, -0.25, -1.0, -0.5, 1.0, -0.25, -0.5, 0.75, 1.0, 0.5, 0.25, 0.25, 0.25, -0.5, 0.75, 0.25, 0.75, 1.0, -0.25, 0.5, -0.75, 0.75, 0.25, 0.0, -0.25, -1.0, -0.5, 0.0, -0.5, -1.0, 0.0, -0.25, 0.75, -1.0, 0.0, ]);
    const array2 = new Float32Array([-1.0, -1.0, 0.5, -1.0, -0.25, 0.0, -0.5, -0.5, 0.5, -0.25, -1.0, -0.5, 1.0, -0.5, -0.5, -0.75, 0.25, 0.0, 0.5, -0.75, -1.0, -1.0, 1.0, -0.5, 0.0, -1.0, 0.25, -0.5, 0.0, 0.0, -0.25, 0.75, -0.25, -0.5, 0.5, 0.5, -0.25, -1.0, 1.0, 0.25, 0.75, -0.5, 0.0, 0.5, 1.0, -0.75, -0.75, 0.5, 1.0, -0.75, -0.25, 1.0, 0.0, 0.25, -0.25, 0.5, -0.5, 0.5, 1.0, 0.25, 0.25, 0.0, -1.0, -0.5, 0.25, 0.0, -1.0, 0.75, 0.25, 0.75, 0.75, 0.75, 0.25, 0.5, -0.75, -0.5, 0.5, 0.0, 0.5, -0.25, 1.0, -0.25, -1.0, 0.25, 0.75, 0.5, 0.25, -1.0, 1.0, 0.75, 0.0, 0.25, -1.0, -0.25, -1.0, 0.75, -0.75, 1.0, 0.5, 0.75, ]);
    
    
    
    
    const array3 = new Float32Array([0.75, -0.75, 0.0, -1.0, 1.0, 1.0, -0.25, -1.0, -1.0, -0.75, -0.75, -0.75, -0.25, -1.0, -1.0, 0.25, 0.75, -1.0, -0.5, 0.5, -0.75, -1.0, 0.5, 0.25, -0.25, 1.0, 0.0, -0.75, -0.75, 0.5, -0.5, 0.25, 0.75, -0.25, -0.25, 0.25, 0.75, -0.75, -0.5, 0.5, 0.75, -0.75, 0.0, 0.75, -1.0, 0.5, 0.5, 1.0, -1.0, 0.0, 0.5, 0.25, 0.5, 0.0, -1.0, 1.0, -1.0, -0.5, 0.0, -0.25, -0.5, 0.5, 0.75, 0.5, -1.0, 1.0, -0.25, -0.25, -0.5, -0.5, -0.25, -0.5, -0.5, 0.25, 0.75, 0.75, 0.0, 0.25, -0.5, -0.25, -0.5, 0.75, 0.0, 0.5, 0.0, -0.25, 0.75, -0.5, -0.5, 0.0, -0.75, -1.0, 0.25, 0.25, -0.75, 0.75, 1.0, 1.0, 0.75, -1.0, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array4 = new Float32Array([-0.5, -1.0, -0.5, 0.75, -0.25, -0.75, -1.0, 0.75, 0.5, -0.5, -0.75, -0.25, 0.5, 0.75, 1.0, -0.5, 0.5, 0.5, 1.0, 0.25, -0.25, -0.5, 0.5, -0.5, -0.25, -0.5, 0.5, 0.75, -0.25, -1.0, 0.0, 1.0, 0.75, 0.75, 1.0, 0.75, -0.75, 0.25, -0.5, 0.0, 0.5, -1.0, -0.75, -0.5, -1.0, 0.0, 0.75, 1.0, -1.0, 1.0, 0.0, 0.5, -0.75, -0.25, -1.0, -0.75, 0.0, -0.75, 0.5, 0.25, 0.25, 1.0, 0.25, 0.0, 1.0, -1.0, 0.0, -0.5, 1.0, 0.0, 0.25, -0.5, 0.0, 0.25, 1.0, -0.25, 0.5, 1.0, -1.0, 0.75, 0.0, 1.0, -0.25, 0.5, 0.75, 0.25, 0.0, -1.0, -1.0, -0.75, -1.0, -0.5, 0.5, -0.75, -0.5, -0.5, 0.75, 0.5, 0.75, 0.75, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array5 = new Float32Array([-0.25, 0.75, -1.0, 0.75, 0.25, 0.75, -0.5, 0.25, 0.0, 0.25, 0.75, 0.75, 0.0, 1.0, 0.25, -0.25, 0.0, -0.25, -0.5, -1.0, 0.75, 1.0, -0.5, 1.0, 0.5, -0.25, -1.0, 0.25, 0.5, 1.0, 1.0, 0.5, -0.75, -0.25, -1.0, -1.0, 0.75, 1.0, 0.0, -0.5, 1.0, 0.75, 0.75, -0.5, 0.5, -1.0, 0.25, -1.0, 0.0, -1.0, 0.25, -0.5, 0.5, 0.75, -0.75, -1.0, -0.25, -0.75, 0.25, 0.0, 0.25, -0.75, 0.25, -0.5, -0.75, -0.5, -1.0, 0.25, 0.0, -0.75, 0.25, 1.0, -0.75, -1.0, 0.25, 0.25, -0.75, -0.5, -1.0, 0.25, -1.0, 1.0, 0.5, 1.0, 0.75, -0.75, -0.5, -0.75, 1.0, 0.0, -0.5, 1.0, -0.25, -0.25, -0.75, 0.5, 0.25, 0.25, 0.5, 0.5, ]);
    
    const query000 = device00.createQuerySet({
        label: "query000",
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
    
    query000.destroy()
    const array6 = new Float32Array([-0.25, 0.5, -0.5, -0.5, -0.5, 0.5, -0.75, -1.0, -0.5, -1.0, 0.75, -0.25, 0.75, 0.25, 0.5, 0.75, 0.25, 0.75, -0.5, -0.5, -0.5, -0.75, 0.25, -0.25, -0.75, -1.0, -0.25, 1.0, -0.5, -0.75, -1.0, 0.75, 0.25, -0.75, -1.0, 0.75, 1.0, -1.0, -0.25, 0.25, 0.75, 0.5, 1.0, -1.0, -0.75, -0.5, 0.25, 0.5, -0.25, 0.25, 0.0, -0.5, -0.25, -0.5, 0.25, -1.0, -0.75, -0.5, 0.25, -1.0, 1.0, -0.75, 0.25, -0.75, -0.5, -0.5, 0.5, 1.0, 1.0, 0.75, -0.25, 0.5, 1.0, -1.0, -0.5, -0.25, 0.25, 1.0, -0.75, -0.75, 0.25, 0.25, 0.0, -0.75, -1.0, 0.5, -1.0, -1.0, 0.75, 0.75, 0.5, 0.75, 1.0, 0.5, -0.25, 0.75, -0.75, -0.75, -0.25, -1.0, ]);
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    query000.destroy()
    const array7 = new Float32Array([0.25, -0.75, 0.25, 0.75, -0.5, 0.5, -0.5, 0.25, -0.5, -1.0, 0.25, 0.75, 0.25, 0.5, -0.5, -1.0, 1.0, -0.25, 0.25, -0.25, 0.5, 1.0, 0.5, -0.25, 0.0, -1.0, -0.5, -0.25, -1.0, 0.75, 0.5, -0.25, 0.5, -0.5, 1.0, 0.0, -0.25, -0.5, -0.75, 0.25, -1.0, -1.0, -1.0, -0.25, -1.0, 0.25, 0.75, -1.0, -0.25, 0.25, -0.25, 1.0, -0.25, 0.5, 0.25, 0.75, 0.5, -1.0, 0.75, 0.5, 0.5, 0.25, 0.5, 0.75, -0.75, -0.5, 0.0, 0.0, 0.75, -0.25, -1.0, 0.5, 0.0, -0.5, -0.5, 0.5, 1.0, -1.0, 1.0, 0.75, -0.75, 1.0, 0.5, -0.75, 1.0, -0.75, -1.0, 0.75, 0.5, -0.5, -0.25, -0.25, -0.25, 1.0, -0.75, 1.0, -0.25, 0.5, 0.75, -0.75, ]);
    device00.destroy();
    
    const array8 = new Float32Array([-0.25, 0.5, -0.5, -0.25, 1.0, -1.0, -1.0, 0.0, 0.75, 0.0, -0.25, -0.5, 0.25, -0.5, 0.5, 0.25, -0.75, 1.0, -0.5, -1.0, 0.75, 0.25, -0.5, -1.0, -0.75, 0.0, -0.75, 1.0, -0.25, -0.75, 1.0, -1.0, 1.0, 1.0, 0.0, 0.0, -0.5, 0.25, 1.0, -0.75, -1.0, 0.25, -0.25, -0.75, -0.25, -1.0, -0.75, 0.0, 0.0, 0.75, -0.5, -0.75, -0.75, 0.25, -0.25, 0.5, -0.25, 0.0, -1.0, 0.5, 0.75, 0.5, -1.0, 0.25, 0.75, 1.0, 0.75, 0.5, 0.0, -0.75, -0.5, -0.5, -0.5, -1.0, -0.75, 0.25, -0.25, -0.75, 0.0, -1.0, 1.0, 1.0, -0.5, 1.0, 0.75, 0.5, 1.0, 0.75, 0.75, -0.75, 0.0, -0.5, -0.25, 0.75, -0.5, 0.25, 0.0, -1.0, -0.25, -0.75, ]);
    const array9 = new Float32Array([-0.5, -0.75, -1.0, 0.5, 1.0, -1.0, 0.75, -0.5, -0.75, 0.25, -1.0, -1.0, -0.25, 0.5, -0.25, 0.25, 1.0, 0.25, 0.25, 1.0, 1.0, -1.0, -0.5, 0.0, 0.25, -0.25, 0.25, 0.25, -0.75, 0.75, -0.25, 0.0, 1.0, 0.25, -0.75, 0.75, -0.25, 0.25, -0.25, -0.25, 0.5, -0.25, 0.75, -0.25, -0.25, 0.5, 0.0, -0.75, 0.25, -0.25, 0.0, 0.5, -1.0, 0.75, -0.25, 0.0, 1.0, -0.5, 1.0, 0.0, 1.0, -1.0, 0.0, -0.5, -0.5, 0.75, -1.0, 0.75, -0.5, 0.75, -0.25, 0.5, 0.5, 0.75, 0.75, 0.0, -1.0, 1.0, -0.25, -0.5, -0.5, -0.25, -0.75, 0.25, 0.25, -0.5, 0.0, 0.75, 0.75, 0.75, 0.25, 0.5, -0.5, -0.5, -0.25, 0.5, 0.5, 0.75, 1.0, 1.0, ]);
    query000.destroy()
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array10 = new Float32Array([0.75, 0.5, 1.0, 0.25, -0.75, 0.75, 1.0, -0.75, 0.5, 1.0, -0.75, -0.25, -0.75, -0.5, 1.0, 1.0, 0.5, -1.0, 0.0, 0.25, -0.5, 0.5, -0.75, 1.0, 0.0, 1.0, 0.75, 0.25, -1.0, -0.25, 0.0, 1.0, -1.0, -1.0, 1.0, 0.0, -0.5, 1.0, -0.5, 0.0, 0.25, 0.5, 0.75, -0.5, 0.0, 0.0, -0.25, -0.75, -0.25, 1.0, -0.75, -0.25, -0.75, 0.25, -0.75, -0.75, 0.75, -0.75, -1.0, 0.0, -0.25, -0.75, 1.0, -0.75, -0.25, -0.75, 1.0, 0.0, -1.0, 0.75, -0.5, 0.5, 0.0, 1.0, 0.0, 0.0, 0.75, 0.75, 0.5, -0.75, 0.25, 1.0, -0.25, -0.25, 1.0, 0.5, -0.25, -0.75, 0.75, -0.75, 1.0, -1.0, 0.0, 0.5, -0.25, 0.25, 0.5, -0.25, 0.0, 0.0, ]);
    
    
    
    const array11 = new Float32Array([0.75, 1.0, 0.75, 0.0, -1.0, 0.25, -0.75, -0.5, -1.0, 0.25, 0.75, -0.75, -1.0, 0.0, -0.75, -1.0, 0.0, -0.5, 0.25, -1.0, -0.25, 1.0, -0.75, -0.75, 0.0, -0.5, 0.0, 0.0, -0.75, 0.5, -0.5, 0.5, 1.0, -0.5, 1.0, 1.0, -1.0, -0.5, 0.5, 0.75, -0.25, 1.0, -0.5, -0.75, -1.0, -0.5, 0.5, -1.0, -0.75, -0.5, 1.0, -0.5, -0.25, 0.25, 0.25, 0.75, 0.5, 0.5, -0.5, 0.25, 1.0, -0.75, 0.75, -1.0, 0.0, 1.0, -0.75, 0.25, -0.25, 0.75, 1.0, 0.5, -1.0, 0.5, -0.5, -0.25, 0.25, 0.0, 0.75, -0.75, -1.0, 0.5, 0.5, 0.0, 0.5, 0.0, -1.0, 0.5, 1.0, 0.75, 0.75, 0.0, -0.75, 0.25, 1.0, -0.25, -0.25, 0.75, 0.0, 0.0, ]);
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array12 = new Float32Array([-0.75, 0.75, 0.75, -1.0, -0.5, 0.75, 1.0, -0.75, -0.75, 1.0, 0.25, -0.5, -0.5, 0.5, 0.25, 0.25, 1.0, -0.75, -0.5, 0.25, -0.25, -0.25, 0.75, 0.75, 0.25, 0.75, 0.5, 0.75, -0.25, 0.0, 0.25, 0.25, -1.0, 1.0, 1.0, 0.5, 0.5, 0.25, -0.5, -0.5, 0.0, -1.0, 0.5, 0.5, 0.5, -0.75, 0.0, -1.0, 0.5, 0.5, -0.5, -0.75, -0.5, -0.5, -0.75, 1.0, 1.0, -1.0, -0.5, 0.75, 0.25, 0.0, -0.25, 0.0, -0.25, -0.25, 0.5, 0.0, 1.0, 0.5, -0.5, 0.5, 0.75, -0.75, 0.5, 0.75, 0.5, 0.0, -1.0, -0.75, 0.5, 0.5, 0.75, 0.75, -0.75, -1.0, -1.0, 0.25, 0.0, 0.5, 0.75, -1.0, -0.5, -0.25, 0.5, 0.75, 0.0, 0.75, 0.0, -0.25, ]);
    const array13 = new Float32Array([0.75, -0.75, 0.0, -0.75, 1.0, -1.0, -0.25, -0.5, 1.0, 0.25, 0.25, 0.25, 0.25, 0.5, 0.5, -1.0, 0.75, 0.75, -0.75, 0.0, 1.0, 0.0, -1.0, -0.25, -0.75, -0.5, -0.25, -0.5, -0.25, -0.5, 1.0, 0.75, -0.75, 0.75, -0.5, -0.25, -0.75, 1.0, -0.5, -0.5, 0.0, -0.75, 0.5, 0.0, 0.75, 0.0, 0.0, 0.75, -0.5, -0.5, -0.5, 1.0, 0.5, -0.75, 1.0, 0.75, 1.0, 0.25, 0.75, -0.5, 0.25, -0.5, 0.75, -1.0, 1.0, -0.25, 0.25, 0.5, -0.75, 0.0, 0.5, 0.0, -0.25, 1.0, 1.0, -0.75, -0.5, 0.75, 0.25, 0.0, 0.5, 1.0, 1.0, 0.25, 1.0, -1.0, 0.5, 0.75, 1.0, -0.5, -0.5, 0.25, -1.0, -0.75, -0.25, 0.75, -0.25, 0.75, 0.25, 0.5, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
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
    device20.pushErrorScope("internal");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const command_buffer201 = command_encoder201.finish();
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    device40.destroy();
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
    
    buffer201.destroy()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    device20.pushErrorScope("validation");
    render_bundle_encoder201.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    
    compute_pass_encoder2000.popDebugGroup()
    device30.queue.writeBuffer(buffer300, 0, array11, 0, array11.length);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    device30.queue.writeBuffer(buffer300, 0, array12, 0, array12.length);
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device30.queue.writeBuffer(buffer300, 0, array11, 0, array11.length);
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.destroy();
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    texture301.destroy();
    
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    const compute_pass_encoder2001 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2001" });
    compute_pass_encoder2001.pushDebugGroup("group_marker")
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2020.popDebugGroup()
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    buffer202.destroy()
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
    const command_buffer202 = command_encoder202.finish();
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    render_bundle_encoder201.setPipeline(render_pipeline200);
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
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
    render_bundle_encoder201.pushDebugGroup("group_marker");
    compute_pass_encoder2001.pushDebugGroup("group_marker")
    command_encoder203.pushDebugGroup("mygroupmarker")
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout203]
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    compute_pass_encoder2001.popDebugGroup()
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    buffer301.destroy()
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    const command_buffer204 = command_encoder204.finish();
    
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
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer203,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer204,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group200);
    
    
    
    
    command_encoder203.clearBuffer(buffer201);
    device20.queue.writeBuffer(buffer204, 0, array2, 0, array2.length);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder2020.setPipeline(compute_pipeline200);
    device10.pushErrorScope("out-of-memory");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    command_encoder203.resolveQuerySet(
        query201,
        0,
        32,
        buffer205,
        0
    )
    command_encoder200.pushDebugGroup("mygroupmarker")
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
    command_encoder203.resolveQuerySet(
        query201,
        0,
        32,
        buffer201,
        0
    )
    compute_pass_encoder2001.setPipeline(compute_pipeline200);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    const array14 = new Float32Array([-0.25, -1.0, 0.75, -0.25, 1.0, 0.75, 0.5, 0.25, -0.75, -0.75, -0.5, 0.5, -0.25, -1.0, 0.0, 0.75, 0.0, -0.5, 0.5, -0.5, 0.25, 0.25, -0.75, -0.5, 0.25, 0.75, 0.25, -0.75, -0.25, 0.5, -0.25, -0.5, 0.5, 0.25, -1.0, -0.25, 0.5, 1.0, 0.0, 1.0, 0.25, -0.25, 0.0, -1.0, 1.0, -1.0, 1.0, 0.25, -0.75, 0.75, -1.0, 0.75, -1.0, 0.0, -1.0, -0.5, -1.0, 1.0, 0.5, 1.0, 0.0, 0.25, 0.0, 0.25, 1.0, -0.75, 1.0, -0.5, 0.75, 1.0, 0.5, -0.25, -1.0, -0.5, 0.25, -0.5, 0.75, 0.25, 0.5, 0.75, -0.75, 0.75, -0.5, 0.75, 0.25, 0.0, -0.5, 0.0, -0.75, 0.75, -1.0, -0.25, 0.75, 1.0, -0.25, -0.25, 0.5, -0.25, -1.0, 0.75, ]);
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    command_encoder203.resolveQuerySet(
        query201,
        0,
        32,
        buffer205,
        0
    )
    render_bundle_encoder202.popDebugGroup();
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder200.popDebugGroup();
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout202]
    });
    compute_pass_encoder2001.popDebugGroup()
    
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder203.insertDebugMarker("mymarker");
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout206,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    buffer204.destroy()
    
    
    
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer207,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer208,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group201);
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.setPipeline(render_pipeline201);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    buffer207.destroy()
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    compute_pass_encoder2020.insertDebugMarker("marker")
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder200.popDebugGroup();
    
    command_encoder203.clearBuffer(buffer201);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    query102.destroy()
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder2030.setPipeline(compute_pipeline202);
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    query000.destroy()
    compute_pass_encoder2001.insertDebugMarker("marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    query201.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2010, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2010, 0);
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_bundle_encoder201.popDebugGroup();
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout204,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2001.pushDebugGroup("group_marker")
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    
    compute_pass_encoder2000.popDebugGroup()
    query100.destroy()
    
    device20.queue.writeBuffer(buffer208, 0, array7, 0, array7.length);
    device20.queue.writeBuffer(buffer209, 0, array8, 0, array8.length);
    device20.pushErrorScope("validation");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.queue.writeBuffer(buffer2010, 0, array4, 0, array4.length);
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    device20.queue.writeBuffer(buffer204, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer206, 0, array3, 0, array3.length);
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer208, 0, array7, 0, array7.length);
    device20.queue.writeBuffer(buffer2010, 0, array14, 0, array14.length);
    render_bundle_encoder202.insertDebugMarker("marker");
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.pushErrorScope("validation");
    query201.destroy()
    device50.pushErrorScope("out-of-memory");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
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
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query100.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout206,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    buffer2010.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    {
        await buffer205.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer205.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer205.unmap();
        console.log(new Float32Array(data));
    }
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2012,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group202);
    buffer203.destroy()
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
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    device20.queue.writeBuffer(buffer206, 0, array9, 0, array9.length);
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder203.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    device20.queue.writeBuffer(buffer206, 0, array13, 0, array13.length);
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout207,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    
    
    const array15 = new Float32Array([-0.75, -0.5, 0.5, 0.25, 1.0, 0.75, -0.75, -0.25, 0.75, 0.75, 0.5, -0.25, 0.5, 0.5, -1.0, -0.75, 1.0, -0.75, -0.5, 1.0, 1.0, -1.0, 0.75, -0.25, 1.0, 0.0, 0.75, -0.25, -0.75, 0.5, -0.75, 0.5, 0.75, -0.25, -0.5, 0.0, 0.75, 1.0, 0.25, 0.75, 0.5, 0.0, 0.5, 0.75, 1.0, 0.0, -0.75, 0.75, -0.5, -1.0, 0.75, -0.75, -0.75, -0.5, 0.25, 0.5, 0.75, 0.75, 0.75, -0.75, -0.25, -0.25, 0.5, -0.5, 0.5, -0.75, -1.0, -0.5, -1.0, -1.0, 0.5, 0.75, 1.0, -0.75, 0.0, -0.5, -1.0, 1.0, -0.75, -0.75, 0.75, -0.75, -0.75, 0.5, -0.25, 0.75, 0.25, 0.25, 0.5, -0.75, -0.25, 0.0, -0.75, -0.75, 0.75, 0.75, 0.5, 0.75, 0.0, 0.0, ]);
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    device20.queue.writeBuffer(buffer2011, 0, array4, 0, array4.length);
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    compute_pass_encoder2001.insertDebugMarker("marker")
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    command_encoder203.copyBufferToBuffer(
        buffer209,
        0,
        buffer201,
        0,
        400
    );
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device20.queue.writeBuffer(buffer206, 0, array14, 0, array14.length);
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    device10.queue.writeBuffer(buffer100, 0, array11, 0, array11.length);
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout205,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2014,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group203);
    render_bundle_encoder202.insertDebugMarker("marker");
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    device20.queue.writeBuffer(buffer206, 0, array14, 0, array14.length);
    buffer2014.destroy()
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer208, 0, array0, 0, array0.length);
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout200,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    texture200.destroy();
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout205,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    buffer2013.destroy()
    
    query203.destroy()
    
    render_bundle_encoder100.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer209, 0, array3, 0, array3.length);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    command_encoder100.clearBuffer(buffer100);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout206,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder2020.dispatchWorkgroups(100);
    
    query202.destroy()
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer100, 0, array13, 0, array13.length);
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    buffer200.destroy()
    
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    command_encoder205.clearBuffer(buffer207);
    
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    buffer100.destroy()
    device10.queue.writeTexture({ texture: texture100 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder206.resolveQuerySet(
        query202,
        0,
        32,
        buffer203,
        0
    )
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    buffer2012.destroy()
    device20.queue.writeBuffer(buffer209, 0, array9, 0, array9.length);
    buffer201.destroy()
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout207,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder202.setVertexBuffer(0, buffer2014);
    
    const compute_pipeline2028 = device20.createComputePipeline({
        label: "compute_pipeline2028",
        layout: pipeline_layout205,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
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
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query201
    });
    const render_pipeline2010 = device20.createRenderPipeline({
        label: "render_pipeline2010",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    const array16 = new Float32Array([0.0, 1.0, 0.25, -0.75, -0.25, 0.75, -0.25, 1.0, 0.5, 1.0, 0.0, 0.25, 0.5, -0.5, 0.25, -0.75, -0.5, 0.75, 1.0, 0.0, -1.0, 0.0, 0.5, 0.75, 0.5, -0.75, -0.75, 0.0, -1.0, 0.25, -0.75, 0.25, -1.0, -0.5, 0.0, 1.0, -0.75, -0.75, 0.75, -0.5, 0.25, 1.0, 0.5, -1.0, 1.0, -0.25, 0.75, -0.25, -0.5, 0.5, 0.0, -1.0, 0.75, -0.75, 0.25, 0.5, 0.5, 1.0, -0.75, -0.25, -0.75, 0.75, 0.5, 0.5, -1.0, 0.5, 0.75, 0.25, -0.25, 0.0, -0.75, -0.75, 0.0, 0.0, -1.0, -0.5, 0.5, 0.0, 1.0, -1.0, 0.5, -0.5, -1.0, -0.75, 1.0, -1.0, 1.0, -0.75, -0.5, 0.5, 0.75, -0.5, -0.75, -0.25, -0.25, -1.0, -0.75, 0.75, 1.0, -1.0, ]);
    device10.queue.writeBuffer(buffer100, 0, array11, 0, array11.length);
    const render_pass_encoder2060 = command_encoder206.beginRenderPass({
        label: "render_pass_encoder2060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query203
    });
    
    render_pass_encoder2050.setPipeline(render_pipeline202);
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    render_pass_encoder2060.setPipeline(render_pipeline206);
    query100.destroy()
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const render_pass_encoder2061 = command_encoder206.beginRenderPass({
        label: "render_pass_encoder2061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query203
    });
    device20.queue.writeBuffer(buffer209, 0, array3, 0, array3.length);
    buffer500.destroy()
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline2029 = device20.createComputePipeline({
        label: "compute_pipeline2029",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const render_pipeline2011 = device20.createRenderPipeline({
        label: "render_pipeline2011",
        vertex: {
            module: shader_module206,
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
            module: shader_module206,
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
    
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    query203.destroy()
    render_pass_encoder2060.setStencilReference(1);
    render_pass_encoder2061.setPipeline(render_pipeline203);
    
    const compute_pipeline2030 = device20.createComputePipeline({
        label: "compute_pipeline2030",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    compute_pass_encoder2030.popDebugGroup()
    const compute_pipeline2031 = device20.createComputePipeline({
        label: "compute_pipeline2031",
        layout: pipeline_layout207,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer2013, 0, array5, 0, array5.length);
    render_bundle_encoder200.setVertexBuffer(0, buffer207);
    query500.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    buffer205.destroy()
    
    
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout204]
    });
    const compute_pipeline2032 = device20.createComputePipeline({
        label: "compute_pipeline2032",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2033 = device20.createComputePipeline({
        label: "compute_pipeline2033",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    buffer2011.destroy()
    render_bundle_encoder200.drawIndirect(buffer2010, 0);
    render_bundle_encoder202.setIndexBuffer(buffer202, "uint16");
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout200]
    });
    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline206.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2016,
                },
            },
        ],
    });

    render_pass_encoder2060.setBindGroup(0, bind_group204);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const render_pipeline2012 = device20.createRenderPipeline({
        label: "render_pipeline2012",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    render_pass_encoder2061.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout204]
    });
    render_pass_encoder2050.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2050.endOcclusionQuery()
    render_bundle_encoder202.insertDebugMarker("marker");
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder202.drawIndexedIndirect(buffer201, 0);
    
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    query503.destroy()
    query203.destroy()
    render_pass_encoder2050.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    const compute_pipeline2034 = device20.createComputePipeline({
        label: "compute_pipeline2034",
        layout: pipeline_layout207,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const render_pipeline2013 = device20.createRenderPipeline({
        label: "render_pipeline2013",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    render_pass_encoder2060.setVertexBuffer(0, buffer204);
    device20.queue.submit([command_buffer202, command_buffer204, ]);
    render_pass_encoder2060.drawIndirect(buffer2010, 0);
    compute_pass_encoder2000.popDebugGroup()
    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2018,
                },
            },
        ],
    });

    render_pass_encoder2061.setBindGroup(0, bind_group205);
    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2020,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group206);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2061.setVertexBuffer(0, buffer2012);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2021, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2021, 0);
    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2023,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group207);
    render_pass_encoder2060.end();
    render_pass_encoder2061.setIndexBuffer(buffer209, "uint16");
    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2025,
                },
            },
        ],
    });

    render_pass_encoder2050.setBindGroup(0, bind_group208);
    render_pass_encoder2050.setVertexBuffer(0, buffer2017);
    render_pass_encoder2050.setIndexBuffer(buffer202, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder2000.end();
    render_pass_encoder2050.drawIndexed(3);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2026 = device20.createBuffer({
        label: "buffer2026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2026, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2026, 0);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2061.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2061.setIndexBuffer(buffer202, "uint16");
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2027 = device20.createBuffer({
        label: "buffer2027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2027, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2027, 0);
    render_pass_encoder2061.drawIndirect(buffer2026, 0);
    const command_buffer101 = command_encoder101.finish();
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder2020.end();
    const buffer2028 = device20.createBuffer({
        label: "buffer2028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2029 = device20.createBuffer({
        label: "buffer2029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2029,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group209);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2061.end();
    render_pass_encoder2050.end();
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder2030.end();
    const command_buffer205 = command_encoder205.finish();
    command_encoder203.popDebugGroup()
    compute_pass_encoder2030.end();
    const command_buffer206 = command_encoder206.finish();
    const command_buffer203 = command_encoder203.finish();
    const buffer2030 = device20.createBuffer({
        label: "buffer2030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2031 = device20.createBuffer({
        label: "buffer2031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2031,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2010);
    render_pass_encoder2060.drawIndirect(buffer2027, 0);
    render_pass_encoder2060.drawIndirect(buffer2030, 0);
    compute_pass_encoder2001.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder2030.end();
    command_encoder200.popDebugGroup()
    render_pass_encoder2060.end();
    compute_pass_encoder2001.end();
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder2060.drawIndirect(buffer202, 0);
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer204, command_buffer206, ]);
    render_pass_encoder2061.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2060.drawIndirect(buffer205, 0);
    device20.queue.submit([command_buffer203, command_buffer205, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer200, command_buffer202, command_buffer204, ]);
    render_pass_encoder2060.drawIndirect(buffer2011, 0);
    render_pass_encoder2060.setIndexBuffer(buffer2020, "uint16");
    const buffer2032 = device20.createBuffer({
        label: "buffer2032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2033 = device20.createBuffer({
        label: "buffer2033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2033,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2011);
    render_pass_encoder2050.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2050.drawIndirect(buffer2021, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2027, 0);
}