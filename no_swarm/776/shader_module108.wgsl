struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20>;

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec2<bool>(false, false), 28783u, vec2<i32>(0i, 1i)), Struct_1(vec2<bool>(false, true), 0u, vec2<i32>(-13002i, -34990i)), Struct_1(vec2<bool>(true, false), 1u, vec2<i32>(55105i, -18290i)), Struct_1(vec2<bool>(false, false), 0u, vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(vec2<bool>(true, true), 38586u, vec2<i32>(-10533i, -1i)), Struct_1(vec2<bool>(false, false), 55295u, vec2<i32>(-24430i, -71686i)), Struct_1(vec2<bool>(true, true), 0u, vec2<i32>(-22449i, -24901i)), Struct_1(vec2<bool>(false, true), 1623u, vec2<i32>(-10062i, -16974i)), Struct_1(vec2<bool>(true, true), 84913u, vec2<i32>(1i, 14688i)), Struct_1(vec2<bool>(false, false), 4294967295u, vec2<i32>(50191i, -50400i)), Struct_1(vec2<bool>(true, true), 0u, vec2<i32>(-2590i, 0i)), Struct_1(vec2<bool>(false, false), 73104u, vec2<i32>(1i, 21372i)), Struct_1(vec2<bool>(false, true), 19778u, vec2<i32>(-1i, -12534i)), Struct_1(vec2<bool>(false, false), 53049u, vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(vec2<bool>(false, false), 82587u, vec2<i32>(0i, 1i)), Struct_1(vec2<bool>(true, true), 0u, vec2<i32>(0i, 0i)));

var<private> global2: array<Struct_1, 7>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(122333u, 7u)];
    let var_1 = global1[_wgslsmith_index_u32(36913u, 16u)];
    let var_2 = var_0.b < 1u;
    let var_3 = vec3<f32>(255f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(1u, 20u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 20u)]), var_2 || false)))), 1015f);
    global1 = array<Struct_1, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.yy)));
}

