struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(13547i, Struct_2(1i, Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 1u), -19845i, 461f, 4294967295u), 1u));

var<private> global1: array<u32, 10>;

var<private> global2: vec4<i32>;

var<private> global3: Struct_3;

var<private> global4: array<vec2<i32>, 4> = array<vec2<i32>, 4>(vec2<i32>(-39022i, -1i), vec2<i32>(1i, -27512i), vec2<i32>(0i, 0i), vec2<i32>(44166i, 2147483647i));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: bool, arg_1: vec2<u32>) -> Struct_2 {
    global1 = array<u32, 10>();
    return global0.b;
}

fn func_1(arg_0: vec4<bool>) -> Struct_3 {
    var var_0 = func_2(true, firstLeadingBit(vec2<u32>(1u, 1u) >> (global0.b.b.a.yw % vec2<u32>(32u))));
    var_0 = Struct_2(firstLeadingBit(var_0.a & ~_wgslsmith_dot_vec2_i32(vec2<i32>(51240i, -2147483647i), vec2<i32>(global0.b.b.b, -69607i))), global3.b.b, ~var_0.b.a.x);
    var var_1 = -40961i;
    let var_2 = global3.b;
    var var_3 = !all(!(!(!arg_0)));
    return Struct_3(-global0.b.a, global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 10>();
    let var_0 = !(!vec2<bool>(all(vec4<bool>(false, false, false, true)) || (global3.a <= -26114i), true));
    global0 = func_1(vec4<bool>(var_0.x, true, all(!var_0), true));
    let var_1 = _wgslsmith_f_op_f32(-626f * global3.b.b.c);
    let var_2 = global3.b;
    var var_3 = var_2.b.a.wy;
    global4 = array<vec2<i32>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_2.b.b, _wgslsmith_sub_i32(var_2.a, -global3.a)));
}

