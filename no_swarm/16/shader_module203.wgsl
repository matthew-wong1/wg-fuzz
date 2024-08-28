struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<f32>,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: u32) -> f32 {
    var var_0 = !arg_0.b & all(select(!(!vec2<bool>(arg_0.b, arg_0.b)), vec2<bool>(any(vec2<bool>(arg_0.b, arg_0.b)), false), any(vec2<bool>(false, false))));
    global0 = any(select(!(!select(vec4<bool>(false, arg_0.b, false, arg_0.b), vec4<bool>(false, arg_0.b, arg_0.b, arg_0.b), true)), select(!(!vec4<bool>(arg_0.b, false, false, false)), vec4<bool>(arg_0.d.x > -594f, !arg_0.b, any(vec2<bool>(true, arg_0.b)), true), vec4<bool>(select(arg_0.b, arg_0.b, true), arg_0.b, true, any(vec3<bool>(false, true, false)))), vec4<bool>(true, any(select(vec3<bool>(arg_0.b, arg_0.b, arg_0.b), vec3<bool>(arg_0.b, arg_0.b, arg_0.b), vec3<bool>(true, false, arg_0.b))), false, false)));
    global0 = arg_0.b;
    let var_1 = -(~(abs(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(u_input.a, -1i))) << (firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, u_input.c), arg_0.e)) % vec2<u32>(32u))));
    let var_2 = 1176f;
    return -1875f;
}

fn func_2() -> bool {
    global0 = true | (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(1000f, true, vec4<f32>(616f, 262f, -1125f, 1000f), vec2<f32>(1168f, 307f), vec2<u32>(1u, u_input.c)), vec3<f32>(1182f, -1087f, -1000f), u_input.b)) - _wgslsmith_f_op_f32(-1000f - 492f)) + _wgslsmith_f_op_f32(max(657f, -1860f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(sign(174f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1012f))));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -310f)), !any(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -664f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1376f * 366f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1015f) + _wgslsmith_f_op_f32(-210f * -805f)), -2073f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2051f), -1066f, 777f, _wgslsmith_f_op_f32(-808f * -1261f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1014f, 809f, 1086f, -728f), vec4<f32>(-921f, -131f, -914f, 645f), vec4<bool>(true, true, false, false)))))), vec2<f32>(2412f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-331f * 262f))), ~(~(~(~vec2<u32>(37482u, u_input.c)))));
    let var_1 = Struct_1(-635f, var_0.b, var_0.c, var_0.d, var_0.e);
    return true;
}

fn func_1() -> f32 {
    let var_0 = select(vec3<bool>(true, _wgslsmith_mod_i32(-13105i, u_input.a) > 12043i, (u_input.b & 4294967295u) < u_input.c), vec3<bool>(!func_2(), true, false), !vec3<bool>(!any(vec4<bool>(true, false, false, false)), true, true));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(879f * -2389f), (any(!var_0.yz) & true) | var_0.x, vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-160f + _wgslsmith_f_op_f32(1000f + -1232f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(f32(-1f) * -815f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-817f, -860f)))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -477f) * vec2<f32>(-315f, -1427f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1569f, -571f)))))), ~(vec2<u32>(4294967295u >> (u_input.c % 32u), _wgslsmith_mult_u32(u_input.c, u_input.b)) << ((vec2<u32>(u_input.b, u_input.c) >> (select(vec2<u32>(63423u, u_input.b), vec2<u32>(u_input.b, u_input.c), var_0.yy) % vec2<u32>(32u))) % vec2<u32>(32u))));
    global0 = !((u_input.a | firstLeadingBit(~64123i)) >= countOneBits(-48185i));
    var var_2 = var_1;
    global0 = any(!vec2<bool>(any(select(var_0.xy, vec2<bool>(false, false), vec2<bool>(var_0.x, var_0.x))), all(!vec3<bool>(var_2.b, true, false))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(1f, any(!var_0), var_2.c, var_1.d, vec2<u32>(_wgslsmith_clamp_u32(u_input.c, 19284u, 0u), 26441u)), var_1.c.yxw, 37119u)));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = -(~vec2<i32>(u_input.a, _wgslsmith_sub_i32(-16350i, min(u_input.a, u_input.a))));
    global0 = false;
    let var_1 = arg_0.xzy;
    global0 = all(!vec4<bool>(all(vec3<bool>(true, true, false)), select(select(false, false, true), any(vec3<bool>(false, false, false)), true), false, ~2147483647i >= (u_input.a | u_input.a)));
    global0 = false;
    return Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.x)) + _wgslsmith_f_op_f32(-1285f * -900f))), _wgslsmith_f_op_f32(-arg_0.x))), true, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1701f, 255f)) + 630f), arg_0.x, arg_1.x, _wgslsmith_f_op_f32(abs(1968f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-625f, arg_1.x), -1008f)))), _wgslsmith_clamp_vec2_u32(vec2<u32>(~u_input.b, _wgslsmith_sub_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(1298u, 0u), vec2<u32>(u_input.b, u_input.b)))), ~select(vec2<u32>(u_input.c, u_input.b), vec2<u32>(4294967295u, u_input.b), true), select(min(select(vec2<u32>(u_input.c, 5007u), vec2<u32>(u_input.b, 4722u), vec2<bool>(true, true)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(u_input.b, u_input.b))), vec2<u32>(u_input.c, u_input.c), ~u_input.b < ~u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(round(187f)), 486f, _wgslsmith_f_op_f32(f32(-1f) * -1198f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-851f, 458f, -2187f, 221f)) + vec4<f32>(629f, 2045f, 438f, 1624f))))), _wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -772f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-194f))), 1000f)));
    global0 = !(u_input.b < ~38523u);
    let var_1 = 10033u;
    let var_2 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c)), func_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(exp2(var_0.c.x))), _wgslsmith_f_op_f32(var_0.c.x * -630f), 537f, -850f), vec3<f32>(var_0.a, var_0.d.x, _wgslsmith_f_op_f32(select(func_4(var_0.c, var_0.c.yzx).a, 1050f, select(var_0.b, false, var_0.b))))).c.wwz);
    var var_3 = func_4(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-571f)), _wgslsmith_f_op_f32(f32(-1f) * -476f)), 456f, 795f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.d.x)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-func_4(var_0.c, var_0.c.yxy).c)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_2.c.ywx, var_2.c.zwx)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-470f, 435f, -1000f)), _wgslsmith_f_op_vec3_f32(select(var_2.c.xzz, vec3<f32>(var_2.c.x, -282f, var_0.c.x), false)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(abs(9141u), _wgslsmith_mult_u32(var_1, 50314u), 1u), _wgslsmith_clamp_vec3_u32(~vec3<u32>(24791u, u_input.c, var_3.e.x), ~vec3<u32>(var_3.e.x, 4294967295u, 42766u), reverseBits(vec3<u32>(4294967295u, var_0.e.x, var_0.e.x)))), ~_wgslsmith_add_vec3_u32(select(vec3<u32>(var_1, u_input.c, var_0.e.x), vec3<u32>(var_0.e.x, 24325u, 1u), true), ~vec3<u32>(45865u, 942u, u_input.c))), 15907u);
}

