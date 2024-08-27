struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 26>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> vec3<bool> {
    global0 = array<vec3<i32>, 26>();
    var var_0 = arg_1;
    var var_1 = !select(!(!(!vec4<bool>(false, false, false, arg_1.c))), !select(vec4<bool>(arg_1.c, var_0.c, true, false), select(vec4<bool>(arg_1.c, true, arg_1.c, true), vec4<bool>(arg_1.c, true, true, arg_1.c), true), true), u_input.b.x <= -6410i);
    var var_2 = 0u;
    let var_3 = arg_1;
    return var_1.ywx;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_0.c;
    let var_1 = arg_0;
    let var_2 = any(func_3(~_wgslsmith_div_vec2_u32(firstLeadingBit(arg_0.a.xx), ~vec2<u32>(var_1.a.x, arg_0.a.x)), arg_0));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - 664f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-337f - 211f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -921f) - -2456f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(512f))))));
    global0 = array<vec3<i32>, 26>();
    return Struct_1(select(arg_0.a, arg_1.a, vec3<bool>(true, any(vec3<bool>(false, true, true)), arg_1.c | false)), var_1.a.x, false);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> f32 {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~arg_2, arg_2, abs(arg_0.x) | (~arg_2 & 4294967295u), _wgslsmith_mult_u32(arg_2, 0u)), vec4<u32>(func_2(Struct_1(vec3<u32>(arg_2, arg_1.a.x, arg_0.x) & arg_1.a, 0u, false), Struct_1(~arg_1.a, arg_0.x, true)).a.x, 32434u, ~abs(1u), 81565u));
    var var_1 = -1i;
    let var_2 = !vec2<bool>(!(!any(vec3<bool>(arg_3, false, true))), true);
    var var_3 = !func_3(vec2<u32>(24036u >> (_wgslsmith_add_u32(18473u, arg_1.a.x) % 32u), arg_1.b), func_2(arg_1, Struct_1(arg_1.a, reverseBits(arg_2), true))).x;
    var var_4 = 6407i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -482f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(2071f, -810f)), _wgslsmith_div_f32(490f, 2397f)))), 699f, select(u_input.a, min(u_input.b.x, u_input.b.x), arg_1.c) >= _wgslsmith_add_i32(u_input.a, u_input.b.x))));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: i32) -> u32 {
    global0 = array<vec3<i32>, 26>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1.x + 277f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), -155f, -1952f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-617f)), arg_1.x, _wgslsmith_div_f32(arg_1.x, arg_1.x), _wgslsmith_f_op_f32(-arg_1.x)))));
    let var_1 = false | arg_0.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1415f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_0.x)), arg_1.x))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(-arg_1.x)) - -1392f), _wgslsmith_f_op_f32(func_4(vec2<u32>(~593u, 4294967295u), func_2(Struct_1(vec3<u32>(16703u, 0u, 1u), 4294967295u, arg_0.x), Struct_1(vec3<u32>(16841u, 17986u, 1u), 52209u, arg_0.x)), 68540u, -40995i > _wgslsmith_mult_i32(u_input.b.x, -30058i)))));
    var var_3 = 2817u;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -321f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1031f), _wgslsmith_f_op_f32(-889f - 1240f))), 1f)) - _wgslsmith_f_op_f32(sign(-1172f))) - _wgslsmith_f_op_f32(step(1916f, _wgslsmith_f_op_f32(abs(-479f)))));
    let var_1 = ~vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(25395u, 8497u, 12883u, 13478u), ~vec4<u32>(13407u, 4294967295u, 0u, 109085u), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u)), ~_wgslsmith_add_u32(func_1(vec4<bool>(false, true, false, true), vec3<f32>(273f, 234f, 608f), u_input.a), ~35009u), 1u);
    var_0 = _wgslsmith_div_f32(2042f, 1121f);
    let var_2 = vec2<u32>(var_1.x, 77045u);
    let var_3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(508f, 605f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1103f, 2070f) - vec2<f32>(1026f, -1204f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(331f, -2190f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-705f, -342f)))))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -761f))));
    var_0 = _wgslsmith_f_op_f32(trunc(-986f));
    let x = u_input.a;
    s_output = StorageBuffer(-599f, 1u);
}

