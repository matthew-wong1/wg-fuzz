struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: vec4<u32> = vec4<u32>(42416u, 1u, 4294967295u, 53011u);

var<private> global2: u32 = 4294967295u;

var<private> global3: vec2<i32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-557f, 147f)))))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(156f, -1122f))));
    var var_1 = Struct_2(!select(select(!vec4<bool>(true, global0.x, global0.x, global0.x), select(vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(global0.x, false, global0.x, true), false), !vec4<bool>(global0.x, false, false, true)), !vec4<bool>(global0.x, global0.x, false, false), global0.x));
    global2 = 5870u;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, 634f))) + vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x)) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-2978f, var_0.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1260f, var_0.x) + vec2<f32>(768f, var_0.x)))))));
    var var_2 = Struct_1(-2147483647i, !((true & var_1.a.x) || all(var_1.a)));
    return 273f;
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    global1 = vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.b, global1.wxz) ^ global1.x, ~(~_wgslsmith_sub_u32(global1.x, ~0u)), countOneBits(~global1.x ^ _wgslsmith_mult_u32(global1.x, ~u_input.b.x)), 522u);
    var var_0 = Struct_2(arg_0.a);
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(func_3());
    var_1 = arg_0;
    return Struct_1(_wgslsmith_sub_i32(u_input.c.x, _wgslsmith_mult_i32(-1i, _wgslsmith_sub_i32(1i, global3.x) | -28672i)), arg_0.a.x);
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec2<f32>, arg_3: Struct_2) -> bool {
    let var_0 = func_2(Struct_2(select(vec4<bool>(true, arg_0, !global0.x, true), select(!vec4<bool>(false, arg_0, arg_3.a.x, true), vec4<bool>(true, true, false, true), true), vec4<bool>(global0.x | arg_3.a.x, !arg_3.a.x, !arg_3.a.x, true))));
    var var_1 = arg_3.a.x;
    global3 = min(~(-(~(~vec2<i32>(u_input.a, u_input.d)))), vec2<i32>(~(-1i), global3.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(arg_2 - arg_2)));
    global3 = reverseBits(select(u_input.c.xy, vec2<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(global3.x, var_0.a, 1i), max(vec3<i32>(var_0.a, global3.x, var_0.a), vec3<i32>(0i, -2147483647i, u_input.d)))), !arg_3.a.xy));
    return 1u == ~_wgslsmith_mod_u32(max(0u & u_input.b.x, 0u), select(global1.x, 4294967295u, true) ^ max(global1.x, global1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.b.x;
    var var_0 = u_input.a;
    let var_1 = !(_wgslsmith_div_f32(-990f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(398f)) + -1133f)) < 1f);
    let var_2 = Struct_1(u_input.a, select(!global0.x, !all(!vec4<bool>(false, true, global0.x, var_1)), false || (~global1.x != ~15615u)));
    global1 = _wgslsmith_mod_vec4_u32(vec4<u32>(65358u, global1.x, 42317u << (~4294967295u % 32u), 29093u), abs(vec4<u32>(49512u, global1.x, 4294967295u, u_input.b.x) & (vec4<u32>(4294967295u, 69500u, global1.x, u_input.b.x) & vec4<u32>(4294967295u, u_input.b.x, 559u, global1.x)))) | vec4<u32>(~4294967295u, ~1u, 1u, global1.x);
    let var_3 = Struct_2(!vec4<bool>(!select(var_1, var_1, var_2.b), !all(vec3<bool>(true, var_2.b, true)), select(var_2.b, func_1(var_1, 1036f, vec2<f32>(-868f, -570f), Struct_2(vec4<bool>(var_2.b, var_2.b, true, true))), !global0.x), var_2.b));
    var var_4 = _wgslsmith_dot_vec2_u32(global1.wy, u_input.b.zy);
    let var_5 = var_3.a;
    let var_6 = Struct_2(!(!select(select(vec4<bool>(var_1, true, false, var_3.a.x), vec4<bool>(true, var_1, false, true), var_3.a.x), !vec4<bool>(false, true, var_5.x, false), select(var_3.a, vec4<bool>(global0.x, true, var_3.a.x, var_5.x), true))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.x, u_input.b.x, global1.x, 33179u), vec4<u32>(88162u, u_input.b.x, u_input.b.x, 1u), vec4<u32>(113353u, global1.x, 4294967295u, u_input.b.x)), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 30177u) ^ vec4<u32>(57393u, 1u, global1.x, 51962u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(2538f, 484f) * vec2<f32>(319f, 626f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(917f, 135f))), true)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1000f + -848f), _wgslsmith_f_op_f32(-1415f * -1260f)) + vec2<f32>(1f, 1f))));
}

