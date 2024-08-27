struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<i32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(arg_1.b))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-arg_1.a.b))), true))));
    var var_1 = !(!(u_input.a.x < arg_2.x));
    var var_2 = vec4<u32>(arg_1.c.a.x, arg_0.c.a.x & _wgslsmith_dot_vec3_u32(arg_1.a.e.a, select(vec3<u32>(54066u, 0u, arg_1.a.a.a.x), abs(arg_1.c.a), vec3<bool>(true, true, true))), reverseBits(~arg_1.a.d.a.x), ~(arg_1.c.a.x & 1382u));
    var var_3 = arg_0.a.e;
    var var_4 = arg_0.a;
    return vec3<bool>(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a.b + _wgslsmith_f_op_f32(var_4.b - 1330f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(222f * 662f) - _wgslsmith_f_op_f32(sign(-1157f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.b) - 2049f)), !any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false))));
}

fn func_2() -> Struct_1 {
    var var_0 = vec4<bool>(!any(!func_3(Struct_3(Struct_2(Struct_1(vec3<u32>(0u, 68168u, 10043u)), -1799f, 6787u, Struct_1(vec3<u32>(20253u, 23831u, 9685u)), Struct_1(vec3<u32>(31418u, 26052u, 58115u))), vec2<f32>(-201f, -1201f), Struct_1(vec3<u32>(37238u, 0u, 4294967295u))), Struct_3(Struct_2(Struct_1(vec3<u32>(154357u, 0u, 23559u)), 1090f, 69867u, Struct_1(vec3<u32>(4294967295u, 50787u, 0u)), Struct_1(vec3<u32>(0u, 33850u, 0u))), vec2<f32>(-1670f, 386f), Struct_1(vec3<u32>(1u, 1u, 16280u))), vec2<i32>(u_input.a.x, u_input.a.x))), any(vec4<bool>(any(vec2<bool>(true, false)), any(vec3<bool>(false, true, false)), true, true)), !select(true, true, all(vec3<bool>(true, true, true))), true);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(sign(-1359f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(484f, -1388f)), -1000f)))) - -268f), 844f, 1000f);
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -627f, var_1.x)))))));
    var_0 = select(vec4<bool>((u_input.a.x ^ ~u_input.a.x) < -u_input.a.x, false, !select(true || var_0.x, true, all(var_0.xzw)), !(select(u_input.a.x, 1i, false) > -u_input.a.x)), !select(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(true, var_0.x, true, false)), select(!vec4<bool>(false, var_0.x, var_0.x, false), !vec4<bool>(var_0.x, var_0.x, false, var_0.x), !vec4<bool>(true, false, var_0.x, var_0.x)), select(!var_0.x, false, func_3(Struct_3(Struct_2(Struct_1(vec3<u32>(34932u, 1u, 4294967295u)), -708f, 4294967295u, Struct_1(vec3<u32>(5640u, 1u, 26872u)), Struct_1(vec3<u32>(1u, 0u, 1956u))), vec2<f32>(var_1.x, -1103f), Struct_1(vec3<u32>(7332u, 21463u, 33103u))), Struct_3(Struct_2(Struct_1(vec3<u32>(1u, 21705u, 4902u)), 106f, 58908u, Struct_1(vec3<u32>(665u, 4294967295u, 20016u)), Struct_1(vec3<u32>(12223u, 64753u, 19810u))), var_1.wx, Struct_1(vec3<u32>(4294967295u, 84401u, 0u))), vec2<i32>(u_input.a.x, u_input.a.x)).x)), select(select(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, var_0.x, var_0.x, true), true), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), false), vec4<bool>(!var_0.x, var_0.x, var_0.x && var_0.x, false)), select(!vec4<bool>(true, false, true, var_0.x), vec4<bool>(!var_0.x, true, all(vec2<bool>(false, var_0.x)), var_0.x), var_1.x >= _wgslsmith_f_op_f32(f32(-1f) * -909f)), true));
    let var_2 = all(select(vec4<bool>(true, !var_0.x, var_0.x, u_input.a.x <= u_input.a.x), vec4<bool>(var_0.x, !var_0.x, true, var_0.x), !vec4<bool>(var_0.x, var_0.x, false, true))) & (func_3(Struct_3(Struct_2(Struct_1(vec3<u32>(16112u, 6861u, 206u)), var_1.x, 16698u, Struct_1(vec3<u32>(48655u, 4294967295u, 67724u)), Struct_1(vec3<u32>(1u, 25259u, 73886u))), _wgslsmith_f_op_vec2_f32(sign(var_1.wx)), Struct_1(vec3<u32>(4294967295u, 1u, 56172u))), Struct_3(Struct_2(Struct_1(vec3<u32>(1u, 37700u, 6286u)), var_1.x, 4294967295u, Struct_1(vec3<u32>(67333u, 6225u, 4294967295u)), Struct_1(vec3<u32>(1u, 1u, 41162u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 1000f)), Struct_1(vec3<u32>(1u, 0u, 18346u))), ~u_input.a).x | (var_0.x || any(!var_0.zz)));
    return Struct_1(min(vec3<u32>(1u, 1u, select(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 1u)), 40947u >> (0u % 32u), false)), ~firstLeadingBit(reverseBits(vec3<u32>(4294967295u, 1614u, 85397u)))));
}

fn func_1(arg_0: vec4<u32>) -> vec2<bool> {
    let var_0 = vec4<i32>(0i, 0i, 1i, ~select(u_input.a.x, 0i, true) << (59135u % 32u));
    let var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_sub_vec3_u32(select(arg_0.zyy, arg_0.yxy, vec3<bool>(false, true, false)), vec3<u32>(arg_0.x, 39719u, 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-759f - -1222f)), ~abs(arg_0.x), func_2(), func_2()), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-417f, _wgslsmith_div_f32(-369f, _wgslsmith_f_op_f32(724f - -1000f))))), Struct_1(arg_0.zyz));
    var var_2 = 233f;
    var_2 = _wgslsmith_f_op_f32(-var_1.b.x);
    let var_3 = var_1;
    return !select(vec2<bool>(true, all(vec4<bool>(false, false, true, false))), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(false, true)), false)), vec2<bool>(true, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(firstTrailingBit(_wgslsmith_mult_u32(~(~3546u), 17890u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 77289u, 49111u, 4294967295u), vec4<u32>(1u, 1u, 5686u, 57016u)))), 0u, true || any(func_1(countOneBits(vec4<u32>(4294967295u, 3845u, 4294967295u, 1155u)))));
    var var_1 = Struct_3(Struct_2(func_2(), -1400f, firstTrailingBit(~(~var_0)), Struct_1(select(vec3<u32>(34775u, var_0, 43831u) & vec3<u32>(var_0, 20989u, 34944u), vec3<u32>(0u, var_0, var_0) | vec3<u32>(var_0, var_0, var_0), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)))), Struct_1(countOneBits(~vec3<u32>(var_0, var_0, 4294967295u)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1123f)), -645f))), Struct_1(~(~func_2().a)));
    var var_2 = var_1.a;
    let var_3 = Struct_2(Struct_1(~select(var_2.d.a, vec3<u32>(var_1.c.a.x, 4294967295u, var_2.d.a.x), vec3<bool>(true, false, false))), _wgslsmith_f_op_f32(f32(-1f) * -623f), var_0, Struct_1(vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(52453u, 8385u, 4294967295u), vec3<u32>(var_0, var_1.c.a.x, var_1.c.a.x)), ~1u, _wgslsmith_mult_u32(abs(524u), 1u))), Struct_1(~vec3<u32>(var_1.c.a.x, 82516u, var_0) >> (~var_2.d.a % vec3<u32>(32u))));
    let var_4 = _wgslsmith_f_op_f32(abs(var_3.b));
    var_2 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(firstLeadingBit(~(var_3.a.a.x << (104968u % 32u))), firstTrailingBit(var_1.a.c)), 1i);
}

