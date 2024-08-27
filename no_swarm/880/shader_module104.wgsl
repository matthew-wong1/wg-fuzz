struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: bool;

var<private> global2: array<Struct_1, 3>;

var<private> global3: vec4<i32>;

var<private> global4: array<vec3<f32>, 10>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec2<u32>) -> i32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-925f)))), 141f);
    let var_1 = ~(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 72091u, arg_0.x), vec3<u32>(31510u, u_input.a, 11712u)) >> (u_input.b % 32u)));
    return global3.x;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(trunc(375f));
    var var_1 = -27975i;
    var var_2 = true;
    let var_3 = arg_0.a.x;
    return global0[_wgslsmith_index_u32(u_input.a, 17u)];
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    let var_0 = !(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), true))));
    var var_1 = Struct_2(vec2<bool>(var_0.x, !any(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(func_2(Struct_2(vec2<bool>(var_0.x, true), 1804f, 1i), global4[_wgslsmith_index_u32(firstLeadingBit(0u), 10u)]).c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -102f))))), func_1(arg_0.yz));
    global4 = array<vec3<f32>, 10>();
    global3 = vec4<i32>(u_input.c, (~(-15809i) >> ((abs(u_input.a) | ~u_input.a) % 32u)) >> (12489u % 32u), -max(var_1.c, _wgslsmith_div_i32(4607i, 27463i)), u_input.c);
    var var_2 = Struct_2(vec2<bool>(var_1.a.x, var_0.x), var_1.b, -(abs(abs(global3.x)) << (reverseBits(u_input.b) % 32u)));
    return -29606i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_sub_i32(u_input.c, _wgslsmith_clamp_i32(func_1(vec2<u32>(9034u, u_input.b) & vec2<u32>(0u, 24526u)), -(~22641i), ~u_input.c));
    var_0 = -83587i;
    let var_1 = func_2(Struct_2(vec2<bool>(true, true), _wgslsmith_f_op_f32(f32(-1f) * -944f), ~_wgslsmith_sub_i32(u_input.c, u_input.c) ^ abs(global3.x)), global4[_wgslsmith_index_u32(7u, 10u)]);
    global1 = var_1.b;
    global1 = true;
    global4 = array<vec3<f32>, 10>();
    global3 = -(~vec4<i32>(func_3(vec4<u32>(0u, 0u, 23207u, u_input.a)), ~func_3(vec4<u32>(40924u, 9000u, u_input.a, 69850u)), u_input.c, var_1.a.x));
    let var_2 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.x, ~max(~(~vec2<u32>(var_2, 1u)), ~(~vec2<u32>(1u, u_input.b))), 34574u, ~(~u_input.a));
}

