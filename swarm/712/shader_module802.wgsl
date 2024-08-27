struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: i32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<bool>) -> vec2<bool> {
    var var_0 = min(-u_input.e, _wgslsmith_sub_i32(-(~_wgslsmith_clamp_i32(u_input.e, 45839i, u_input.e)), firstTrailingBit(-u_input.b.x)));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(520f, 1552f) - 2426f))) - _wgslsmith_f_op_f32(707f + _wgslsmith_f_op_f32(f32(-1f) * -1355f)))));
    let var_2 = (u_input.b.x ^ u_input.e) ^ 2147483647i;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(166f - _wgslsmith_f_op_f32(-750f * 334f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-422f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1349f + 813f)))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(234f))))));
    var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(631f, _wgslsmith_f_op_f32(-111f * 549f), _wgslsmith_f_op_f32(ceil(-579f)), _wgslsmith_f_op_f32(var_3 - var_3))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(199f, var_3, var_3, -925f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(309f, -1216f, var_3, var_3) + vec4<f32>(var_3, var_3, var_3, var_3)))))), !any(arg_0.yz), reverseBits(13088i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, 819f, var_3, 1036f) + vec4<f32>(-1678f, var_3, var_3, var_3)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1985f, 2649f, var_3, var_3), vec4<f32>(var_3, var_3, -1793f, -332f)))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, _wgslsmith_f_op_f32(743f - 141f), var_3, -499f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_3, var_3, var_3, -1184f), vec4<f32>(var_3, 1201f, -1684f, var_3))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(631f, var_3, var_3, 123f), vec4<f32>(var_3, var_3, 897f, -1000f)))))));
    return select(arg_0.xy, !vec2<bool>(arg_0.x, !all(arg_0.xz)), var_4.b);
}

fn func_2() -> Struct_3 {
    var var_0 = vec2<bool>(false, !(_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, abs(1797i), 1i) < u_input.e));
    var_0 = select(select(!vec2<bool>(select(var_0.x, true, var_0.x), !var_0.x), select(vec2<bool>(true, var_0.x | var_0.x), select(vec2<bool>(true, true), !vec2<bool>(false, var_0.x), !vec2<bool>(var_0.x, var_0.x)), !func_3(vec3<bool>(var_0.x, true, var_0.x))), var_0.x), func_3(select(vec3<bool>(true, true, true), !select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(false, true, var_0.x)), select(vec3<bool>(var_0.x, var_0.x, true), !vec3<bool>(true, var_0.x, true), var_0.x || false))), var_0.x);
    var_0 = select(vec2<bool>(true, true), func_3(select(!vec3<bool>(var_0.x, var_0.x, true), select(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, var_0.x, false), var_0.x), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, false, var_0.x), var_0.x), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(true, true, true), vec3<bool>(var_0.x, var_0.x, var_0.x))), vec3<bool>(!var_0.x, true, var_0.x))), func_3(!vec3<bool>(u_input.e >= -2147483647i, all(vec3<bool>(var_0.x, var_0.x, false)), true)).x);
    var_0 = !select(vec2<bool>(var_0.x, true), select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(true, true, true, false)), var_0.x), all(select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, false, true)))), true);
    var_0 = !vec2<bool>(!(var_0.x && func_3(vec3<bool>(false, var_0.x, var_0.x)).x), !(var_0.x || true));
    return Struct_3(Struct_1(~(max(u_input.c, u_input.a.x) << (min(11863u, u_input.a.x) % 32u)), -_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(76903i, 0i)) << (u_input.d.x % 32u), _wgslsmith_f_op_f32(f32(-1f) * -767f), u_input.d.x, true), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-423f + -643f), _wgslsmith_f_op_f32(-555f * -986f), 1f, _wgslsmith_f_op_f32(sign(1079f))) + vec4<f32>(_wgslsmith_f_op_f32(-634f + 440f), 303f, _wgslsmith_f_op_f32(f32(-1f) * -865f), 1315f)), true, -1i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-157f)), 300f, _wgslsmith_f_op_f32(-577f - -570f), -712f))));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: bool, arg_3: vec4<f32>) -> Struct_2 {
    let var_0 = Struct_3(Struct_1(u_input.c, arg_0.b.c & ((i32(-1i) * -40678i) ^ reverseBits(arg_0.a.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-624f, arg_1)))) * _wgslsmith_f_op_f32(f32(-1f) * -499f)), u_input.d.x, !arg_0.a.e), Struct_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-arg_1), -1386f, _wgslsmith_f_op_f32(f32(-1f) * -675f), func_2().b.d.x))), arg_2, _wgslsmith_div_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.e), vec4<i32>(1i, 1i, 1i, u_input.b.x)), reverseBits(arg_0.b.c)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_3 - arg_0.b.d) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-791f, arg_3.x, arg_3.x, -905f)))))));
    var var_1 = var_0.a;
    let var_2 = ~u_input.d;
    let var_3 = -u_input.b;
    let var_4 = Struct_1(_wgslsmith_mod_u32(u_input.c, countOneBits(0u)), var_1.b, _wgslsmith_f_op_f32(min(-1055f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_3.x))))), 87744u, !var_0.b.b);
    return arg_0.b;
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: u32, arg_3: i32) -> Struct_3 {
    var var_0 = !vec4<bool>(!any(vec2<bool>(arg_0.b, false)), func_3(select(!vec3<bool>(arg_0.b, arg_0.b, false), !vec3<bool>(arg_0.b, arg_0.b, true), arg_0.b)).x, arg_3 >= -1i, !select(false, false, !arg_0.b));
    let var_1 = Struct_3(Struct_1(u_input.c, u_input.b.x, -977f, u_input.a.x, _wgslsmith_sub_i32(max(arg_3, u_input.b.x), arg_0.c) <= -26011i), arg_0);
    var var_2 = ~(~u_input.d.x);
    var_2 = _wgslsmith_clamp_u32(4294967295u, ~(~_wgslsmith_add_u32(arg_2, reverseBits(45363u))), var_1.a.d);
    var_0 = vec4<bool>(select(var_1.b.b, func_2().a.e, func_3(var_0.xyz).x), !all(vec2<bool>(true, true)), !(arg_1 > 1988f), arg_0.b);
    return var_1;
}

fn func_1(arg_0: vec3<f32>) -> Struct_3 {
    let var_0 = func_5(func_4(func_2(), _wgslsmith_f_op_f32(floor(-305f)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-272f)))), arg_0.x, arg_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -756f))))), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_u32(~(~countOneBits(0u)), u_input.c), ~func_2().a.b);
    let var_1 = vec3<i32>(_wgslsmith_div_i32(var_0.a.b, ~(-u_input.b.x)), func_4(func_5(Struct_2(var_0.b.a, false, var_0.a.b, vec4<f32>(-1872f, arg_0.x, -430f, -1121f)), var_0.b.a.x, _wgslsmith_dot_vec3_u32(u_input.d, u_input.d), firstTrailingBit(0i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.b.a.x))), false, func_2().b.d).c, -var_0.a.b) ^ ~(~(~abs(vec3<i32>(var_0.b.c, u_input.b.x, 0i))));
    let var_2 = func_4(func_2(), 847f, var_0.a.e && true, var_0.b.a);
    var var_3 = vec3<bool>(true, true, true);
    var var_4 = func_5(var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1424f - var_2.a.x)), ~6043u, -1i);
    return Struct_3(var_4.a, func_5(Struct_2(var_4.b.d, var_3.x, _wgslsmith_mod_i32(1i, u_input.e), _wgslsmith_f_op_vec4_f32(-var_0.b.a)), var_2.d.x, firstTrailingBit(1u) << (var_4.a.a % 32u), abs(_wgslsmith_div_i32(_wgslsmith_mod_i32(0i, var_0.a.b), var_4.a.b))).b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -400f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-646f + 259f), 283f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-473f)) + -1377f)))));
    let var_1 = vec3<u32>(u_input.d.x, var_0.a.d, var_0.a.d);
    let x = u_input.a;
    s_output = StorageBuffer(-828f, abs(vec2<u32>(~1u, var_0.a.d)));
}

