struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
    c: vec2<i32>,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec4<i32>,
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

var<private> global0: array<i32, 4> = array<i32, 4>(1i, 1i, 36141i, i32(-2147483648));

var<private> global1: array<bool, 32> = array<bool, 32>(true, true, false, true, false, false, false, true, false, false, false, true, true, false, true, true, false, false, false, true, false, false, false, true, true, false, true, false, true, true, true, false);

var<private> global2: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(1u, 4294967295u), vec2<u32>(3950u, 23768u), vec2<u32>(1u, 1u), vec2<u32>(1u, 0u), vec2<u32>(1u, 40670u), vec2<u32>(1u, 34010u), vec2<u32>(2692u, 0u), vec2<u32>(45637u, 0u), vec2<u32>(26367u, 11683u), vec2<u32>(0u, 3214u), vec2<u32>(4294967295u, 0u), vec2<u32>(22781u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(123239u, 43116u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 12003u), vec2<u32>(4294967295u, 0u));

var<private> global3: Struct_3 = Struct_3(-1i, 40457i, Struct_1(vec3<f32>(728f, -418f, 647f), -1i), 1525f);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 32>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global3.c.a.yx)) * _wgslsmith_f_op_vec2_f32(-global3.c.a.yy)));
    global0 = array<i32, 4>();
    global1 = array<bool, 32>();
    var var_1 = ~_wgslsmith_add_u32(abs(~u_input.d.x), 1u);
    var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(global3.c.a.zz))))));
    var_1 = _wgslsmith_div_u32(~4294967295u, u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(1f * -1800f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.x * -804f), var_0.x) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(124f, 561f), global3.c.a.yx)), vec2<f32>(-509f, var_0.x))), u_input.a == (4473u << (_wgslsmith_sub_u32(82983u, u_input.c) % 32u)))));
}

