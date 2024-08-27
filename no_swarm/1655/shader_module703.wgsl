struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = ~u_input.b.wyy;
    let var_1 = u_input.c.zx;
    let var_2 = -(~abs(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(var_1, vec2<i32>(u_input.c.x, -1i)), vec2<i32>(u_input.c.x, var_1.x) >> (u_input.b.wx % vec2<u32>(32u)))));
    return _wgslsmith_f_op_f32(select(-1123f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-138f + -1095f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -982f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), all(vec3<bool>(true, true, true)))), all(vec4<bool>(true, true, true, true))));
}

fn func_2(arg_0: vec2<u32>) -> u32 {
    var var_0 = Struct_4(~_wgslsmith_sub_u32(4294967295u, abs(_wgslsmith_dot_vec2_u32(u_input.b.xx, vec2<u32>(arg_0.x, u_input.a)))), true);
    var var_1 = -1i;
    var_0 = Struct_4(var_0.a, var_0.b);
    let var_2 = Struct_1(vec4<f32>(176f, _wgslsmith_f_op_f32(func_3()), 225f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-605f, -1000f, false)), _wgslsmith_f_op_f32(f32(-1f) * -455f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(134f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1177f))), _wgslsmith_f_op_f32(f32(-1f) * -1869f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1391f * -417f)), 1268f, _wgslsmith_f_op_f32(sign(-1294f)))));
    var_0 = Struct_4(~_wgslsmith_mod_u32(~98638u, var_0.a) | arg_0.x, false);
    return ~(~(~u_input.b.x) >> ((max(1u | u_input.a, u_input.b.x) | 0u) % 32u));
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = vec2<u32>(_wgslsmith_sub_u32(u_input.b.x | u_input.b.x, arg_0), firstLeadingBit(~4294967295u));
    var var_1 = select(vec4<bool>(true, true, any(select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), false))), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(0i >= u_input.c.x, true, true, true), all(vec2<bool>(true, false))), vec4<bool>(true, all(vec2<bool>(false, false)), all(vec2<bool>(true, true)), true | (var_0.x > 4294967295u)), true), !(arg_0 < var_0.x));
    let var_2 = abs(~reverseBits(func_2(u_input.b.wy)));
    let var_3 = vec4<i32>(countOneBits(firstLeadingBit(-1i) ^ (-12168i >> (func_2(u_input.b.yy) % 32u))), -(u_input.c.x & ~firstLeadingBit(40705i)), -_wgslsmith_div_i32(firstTrailingBit(-u_input.c.x), -firstTrailingBit(-2147483647i)), -2373i);
    var_1 = select(!vec4<bool>(false, any(vec3<bool>(var_1.x, var_1.x, false)) && false, var_1.x, var_1.x | select(true, false, true)), vec4<bool>(false, select(!var_1.x, var_1.x, select(var_3.x <= var_3.x, any(vec2<bool>(true, false)), var_1.x)), var_1.x, false), vec4<bool>(any(!(!vec4<bool>(var_1.x, var_1.x, false, var_1.x))), all(select(select(vec4<bool>(var_1.x, var_1.x, false, false), vec4<bool>(var_1.x, true, true, var_1.x), var_1.x), select(vec4<bool>(false, true, false, false), vec4<bool>(var_1.x, true, true, true), var_1.x), false & var_1.x)), !any(vec4<bool>(false, var_1.x, var_1.x, var_1.x)) && var_1.x, false));
    return _wgslsmith_f_op_f32(f32(-1f) * -483f);
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: f32) -> Struct_4 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1039f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, 596f) + -626f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + arg_1.x) - _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(step(-1000f, 395f)))))), _wgslsmith_f_op_f32(floor(601f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -234f)))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(var_0.x, -188f), _wgslsmith_f_op_f32(-arg_1.x)))), _wgslsmith_f_op_f32(807f + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec4_f32(ceil(var_0))), select(vec2<bool>(true, true), select(vec2<bool>(all(vec3<bool>(false, true, false)), true), vec2<bool>(true, true), any(vec2<bool>(true, true))), true));
    var var_2 = var_1.a.a.x;
    let var_3 = vec3<i32>(~_wgslsmith_add_i32(min(u_input.c.x | 14470i, _wgslsmith_add_i32(u_input.c.x, u_input.c.x)), u_input.c.x), u_input.c.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a, func_2(vec2<u32>(u_input.b.x, arg_0)), 1u), ~vec3<u32>(1290u, 0u, arg_0)) % 32u), u_input.c.x);
    let var_4 = !(!var_1.b);
    return Struct_4(u_input.b.x & arg_0, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(u_input.a, vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1314f) - _wgslsmith_f_op_f32(func_1(u_input.b.x))))), _wgslsmith_f_op_f32(f32(-1f) * -387f), 1f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, -898f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1759f)), -1545f), true)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1391f, 640f, 1028f, 640f) * vec4<f32>(-864f, -651f, -645f, -1292f)))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-908f, -1000f, 901f, -995f)), vec4<f32>(1000f, 1000f, 2172f, 1068f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 923f, 463f, 665f))), vec4<f32>(492f, 805f, 2639f, 2381f), !vec4<bool>(var_0.b, var_0.b, var_0.b, true)))), !select(vec4<bool>(false, var_0.b, var_0.b, var_0.b), !vec4<bool>(var_0.b, var_0.b, false, var_0.b), select(var_0.b, false, true)))));
    var_0 = Struct_4(u_input.b.x, 0u >= ~u_input.b.x);
    var var_2 = Struct_4(59556u | u_input.a, !(!var_0.b || !all(vec2<bool>(true, var_0.b))));
    var_2 = func_4(_wgslsmith_mult_u32(_wgslsmith_sub_u32(var_2.a, ~76226u), func_2(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.b.wyy, vec3<u32>(1u, var_2.a, u_input.b.x)), ~u_input.b.x))), vec3<f32>(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, 1000f) - -1128f)), var_1.x, _wgslsmith_f_op_f32(max(627f, _wgslsmith_f_op_f32(sign(-719f))))), 934f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1690f))))));
}

