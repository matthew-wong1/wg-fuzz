struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: Struct_1,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26>;

var<private> global1: array<vec4<i32>, 21> = array<vec4<i32>, 21>(vec4<i32>(i32(-2147483648), 26241i, -61261i, 0i), vec4<i32>(-1i, 2147483647i, 39864i, -46435i), vec4<i32>(16069i, 21626i, i32(-2147483648), -1i), vec4<i32>(31931i, 1i, 2147483647i, i32(-2147483648)), vec4<i32>(2147483647i, -1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(1i, 0i, -22037i, 1505i), vec4<i32>(i32(-2147483648), -1i, 4047i, -1i), vec4<i32>(-63290i, -18536i, 1i, -29661i), vec4<i32>(0i, 2147483647i, -1i, 2147483647i), vec4<i32>(-33205i, 73358i, -27777i, 1i), vec4<i32>(20659i, i32(-2147483648), -41916i, -1i), vec4<i32>(-8400i, -1i, 0i, 28210i), vec4<i32>(1i, i32(-2147483648), -39516i, -23681i), vec4<i32>(60984i, 7478i, 1i, 54507i), vec4<i32>(-37012i, -1i, 0i, i32(-2147483648)), vec4<i32>(30541i, 1i, -32638i, 59188i), vec4<i32>(-1607i, 5344i, 36103i, 8200i), vec4<i32>(1i, i32(-2147483648), -1i, i32(-2147483648)), vec4<i32>(7597i, -34917i, -7523i, 63956i), vec4<i32>(0i, -15260i, -1i, -33419i), vec4<i32>(1i, -37411i, 13728i, -14196i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1() -> u32 {
    global0 = array<u32, 26>();
    var var_0 = 2496i;
    return ~_wgslsmith_mod_u32(~(global0[_wgslsmith_index_u32(62733u & u_input.b.x, 26u)] | 1u), select(global0[_wgslsmith_index_u32(~(u_input.b.x ^ u_input.b.x), 26u)], 37711u, any(vec4<bool>(true, true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~((max(34577u, 4763u) >> ((u_input.b.x >> (7848u % 32u)) % 32u)) & _wgslsmith_div_u32(~45529u, ~0u)) << ((global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(4294967295u, 26u)] & u_input.b.x, 26u)] & global0[_wgslsmith_index_u32(u_input.b.x, 26u)]) % 32u);
    var var_1 = -(i32(-1i) * -min(u_input.c.x, u_input.a)) >> (var_0 % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(select(501f, -939f, false)), -651f)))), vec2<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(func_1(), 26u)], u_input.b.x & u_input.d), global0[_wgslsmith_index_u32(8378u, 26u)]), 4294967295u), ~(-(vec4<i32>(-1i) * -global1[_wgslsmith_index_u32(12919u, 21u)])));
}

