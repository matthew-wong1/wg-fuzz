struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_3, arg_1: f32) -> f32 {
    var var_0 = Struct_1(false, _wgslsmith_f_op_f32(step(-1837f, _wgslsmith_f_op_f32(ceil(461f)))), (~u_input.c & u_input.c) | 1u, _wgslsmith_div_vec2_u32(~_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(1u, u_input.c)), ~vec2<u32>(u_input.c, u_input.c)), ~firstLeadingBit(~vec2<u32>(26065u, u_input.c))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.b, arg_1, 544f, arg_1))) + _wgslsmith_div_vec4_f32(vec4<f32>(1617f, -853f, arg_1, -1200f), vec4<f32>(arg_0.c, -2365f, arg_1, 676f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(263f + -447f), _wgslsmith_f_op_f32(-203f - 1230f), 986f))));
    global0 = arg_0.b;
    var_0 = Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + arg_1))), ~var_0.d.x, var_0.d);
    var var_2 = vec2<u32>(u_input.c, 11106u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(431f * _wgslsmith_f_op_f32(round(226f))) - -1000f);
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c));
    global0 = arg_2.yy;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -355f), arg_1.c, _wgslsmith_f_op_f32(arg_1.c - _wgslsmith_f_op_f32(-1640f + 286f))))));
    let var_2 = max(abs(~(~1u)), u_input.c);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -580f)) + _wgslsmith_f_op_f32(func_3(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, -1531f))))));
    return arg_1.d;
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> bool {
    let var_0 = 53873u;
    global0 = !select(!vec2<bool>(func_2(1u, Struct_3(-136f, vec2<bool>(global0.x, true), 1205f, arg_0), vec4<bool>(global0.x, global0.x, arg_0.b, arg_0.b)).b, true), select(!vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true), !(!vec2<bool>(arg_0.b, arg_1))), select(!select(vec2<bool>(false, false), vec2<bool>(global0.x, false), arg_1), !select(vec2<bool>(true, false), vec2<bool>(arg_0.b, true), vec2<bool>(false, arg_0.b)), false));
    var var_1 = 226f;
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-897f, -721f, false))))))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(201f, -230f, false)), _wgslsmith_f_op_f32(f32(-1f) * -1459f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -845f))), any(!vec2<bool>(arg_0.b, true)))) - _wgslsmith_f_op_f32(773f * -2087f));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(func_3(Struct_3(-1715f, vec2<bool>(global0.x & true, false), -323f, func_2(~var_0, Struct_3(1037f, vec2<bool>(arg_1, true), -600f, arg_0), !vec4<bool>(false, true, global0.x, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -810f) + _wgslsmith_f_op_f32(1090f - _wgslsmith_f_op_f32(-776f + -189f))))), vec2<bool>(false, false), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2976f) + _wgslsmith_f_op_f32(976f - 1175f)), _wgslsmith_f_op_f32(exp2(1f)))))), arg_0);
    return arg_1;
}

fn func_1(arg_0: vec3<bool>, arg_1: f32, arg_2: f32) -> vec3<u32> {
    var var_0 = all(!vec3<bool>(func_4(func_2(1u, Struct_3(1157f, vec2<bool>(arg_0.x, true), arg_2, Struct_2(u_input.b, false)), vec4<bool>(false, true, global0.x, false)), false), !func_2(u_input.c, Struct_3(arg_1, vec2<bool>(global0.x, false), -487f, Struct_2(0i, false)), vec4<bool>(global0.x, true, false, false)).b, all(arg_0)));
    var_0 = false;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_2, arg_2))))));
    var var_2 = 0u;
    var var_3 = select(vec4<bool>(func_4(func_2(1u ^ u_input.c, Struct_3(arg_1, arg_0.zy, arg_1, Struct_2(u_input.b, true)), select(vec4<bool>(true, global0.x, true, false), vec4<bool>(true, arg_0.x, false, global0.x), global0.x)), !global0.x), ~u_input.c > 1u, global0.x, 4294967295u == ~u_input.c), !(!select(vec4<bool>(true, false, true, false), vec4<bool>(global0.x, false, true, true), arg_0.x)), true);
    return min(vec3<u32>(u_input.c, 4294967295u, u_input.c), vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(27049u, u_input.c), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, 25318u), vec2<u32>(1u, 21028u))), 0u, 73061u), u_input.c, ~(min(u_input.c, u_input.c) << (firstLeadingBit(24226u) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~select(abs(_wgslsmith_sub_vec3_u32(func_1(vec3<bool>(global0.x, global0.x, true), 1912f, 676f), vec3<u32>(u_input.c, u_input.c, 4294967295u) ^ vec3<u32>(29245u, u_input.c, 4294967295u))), vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, 0u, 0u), ~vec3<u32>(u_input.c, 48702u, 0u)), func_1(vec3<bool>(false, true, global0.x), -2519f, _wgslsmith_f_op_f32(f32(-1f) * -989f)).x, abs(1u)), true);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - vec3<f32>(_wgslsmith_f_op_f32(step(2342f, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -498f), _wgslsmith_f_op_f32(f32(-1f) * -1051f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2132f)), _wgslsmith_f_op_f32(383f + -572f), _wgslsmith_div_f32(339f, _wgslsmith_f_op_f32(round(-1251f))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.x, -1518f, var_1.x), vec3<f32>(718f, 1612f, 1385f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, 714f, var_1.x)))), true)))));
    var_1 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), var_2.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x))), var_2.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_2)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1593f)), _wgslsmith_f_op_f32(select(var_2.x, var_1.x, global0.x))), _wgslsmith_f_op_f32(trunc(-109f)), _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(1008f - -1814f))))));
    var var_3 = vec3<bool>(true, !all(!select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false), vec2<bool>(global0.x, global0.x))), false);
    let var_4 = select(!var_3.yx, var_3.xx, !(!(!select(vec2<bool>(var_3.x, false), var_3.xy, global0.x))));
    var var_5 = global0.x || func_2(_wgslsmith_div_u32(~69453u, u_input.c), Struct_3(_wgslsmith_f_op_f32(func_3(Struct_3(-346f, var_4, var_2.x, Struct_2(2147483647i, false)), _wgslsmith_f_op_f32(floor(var_1.x)))), var_4, _wgslsmith_f_op_f32(1558f * var_2.x), Struct_2(0i, false)), select(select(select(vec4<bool>(var_3.x, global0.x, var_4.x, true), vec4<bool>(var_3.x, true, true, var_4.x), var_3.x), !vec4<bool>(var_4.x, false, global0.x, false), var_3.x), !(!vec4<bool>(var_4.x, global0.x, false, true)), vec4<bool>(!var_4.x, var_4.x != false, true, true))).b;
    var var_6 = Struct_3(1049f, select(vec2<bool>(var_2.x != var_1.x, true), vec2<bool>(any(vec4<bool>(var_4.x, false, var_4.x, global0.x)), any(vec3<bool>(var_4.x, true, var_4.x))), var_4), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-698f + -196f), _wgslsmith_f_op_f32(f32(-1f) * -501f), true)))), func_2(var_0.x, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(var_2.x, var_3.yy, 433f, Struct_2(u_input.b, var_3.x)), var_2.x))), !(!vec2<bool>(false, var_3.x)), var_2.x, Struct_2(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), !var_3.x)), !select(select(vec4<bool>(var_3.x, global0.x, global0.x, false), vec4<bool>(var_3.x, global0.x, true, true), true), select(vec4<bool>(false, true, true, var_4.x), vec4<bool>(var_3.x, true, var_3.x, global0.x), global0.x), all(vec2<bool>(global0.x, var_4.x)))));
    let var_7 = vec3<u32>(var_0.x, u_input.c, 9747u);
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_mult_u32(min(30645u | _wgslsmith_mod_u32(43959u, var_7.x), ~_wgslsmith_div_u32(u_input.c, u_input.c)), firstTrailingBit(var_0.x)));
}

