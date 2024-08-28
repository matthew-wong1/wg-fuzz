struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25>;

var<private> global1: array<vec4<u32>, 14> = array<vec4<u32>, 14>(vec4<u32>(26951u, 1u, 85888u, 1u), vec4<u32>(28670u, 0u, 71520u, 98865u), vec4<u32>(56047u, 1u, 4294967295u, 0u), vec4<u32>(11464u, 26548u, 61322u, 0u), vec4<u32>(1u, 1u, 0u, 26315u), vec4<u32>(25854u, 28536u, 30413u, 0u), vec4<u32>(0u, 1u, 4294967295u, 1u), vec4<u32>(0u, 43421u, 14766u, 55040u), vec4<u32>(4294967295u, 1u, 0u, 31980u), vec4<u32>(1u, 16343u, 4294967295u, 0u), vec4<u32>(69275u, 69932u, 1u, 0u), vec4<u32>(1u, 3084u, 45409u, 38892u), vec4<u32>(10665u, 21907u, 4294967295u, 63908u), vec4<u32>(6095u, 1u, 53465u, 54867u));

var<private> global2: array<bool, 4> = array<bool, 4>(true, true, false, false);

var<private> global3: array<f32, 17>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !global0[_wgslsmith_index_u32(1u, 25u)];
    global1 = array<vec4<u32>, 14>();
    let var_1 = 4294967295u;
    global0 = array<bool, 25>();
    var var_2 = 117960u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(1u, 17u)], 620f, global3[_wgslsmith_index_u32(815u, 17u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(var_1, 17u)], -445f, global3[_wgslsmith_index_u32(0u, 17u)]))))))));
}

