struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool) -> f32 {
    let var_0 = 1i;
    var var_1 = -1i;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -582f), 1205f))), Struct_2(Struct_1(1000f, min(vec4<i32>(-42518i, -2147483647i, 5528i, 1i), vec4<i32>(2147483647i, 9189i, -35968i, 0i) ^ vec4<i32>(-40437i, u_input.c, var_0, -11500i)), select(~vec2<u32>(u_input.d, 0u), ~vec2<u32>(33292u, u_input.d), select(vec2<bool>(false, arg_1), vec2<bool>(arg_1, arg_1), arg_1)), -1260f, max(vec4<u32>(1u, u_input.d, u_input.d, 1u) << (vec4<u32>(1u, u_input.d, 4294967295u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, 127972u), vec4<u32>(u_input.d, 28486u, u_input.d, 901u)))), Struct_1(1000f, vec4<i32>(countOneBits(var_0), arg_0.x, u_input.c, ~arg_0.x), abs(~vec2<u32>(u_input.d, 35305u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1039f * -1653f)), ~vec4<u32>(u_input.d, 47506u, 4294967295u, 4294967295u))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var_1 = var_2.b.b.b.x;
    let var_3 = Struct_3(386f, var_2.b, _wgslsmith_f_op_f32(var_2.a * var_2.c));
    return _wgslsmith_f_op_f32(ceil(-450f));
}

fn func_2() -> Struct_1 {
    let var_0 = ~vec2<u32>(107985u, ~4294967295u);
    let var_1 = Struct_4(Struct_3(-552f, Struct_2(Struct_1(-241f, vec4<i32>(u_input.a, -2147483647i, u_input.b, -21878i), abs(vec2<u32>(var_0.x, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1013f), vec4<u32>(20389u, var_0.x, 1u, var_0.x)), Struct_1(975f, ~vec4<i32>(1i, -1i, 4283i, -4502i), var_0, _wgslsmith_div_f32(1875f, 409f), countOneBits(vec4<u32>(1u, u_input.d, var_0.x, 33140u)))), _wgslsmith_f_op_f32(func_3(vec3<i32>(-19326i, firstTrailingBit(u_input.c), 18809i), any(vec2<bool>(false, false)) && true))));
    var var_2 = !((!all(vec4<bool>(false, true, true, true)) | true) || select(all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true))), any(vec4<bool>(false, false, false, true)), u_input.a != abs(u_input.a)));
    var var_3 = var_1.a.b.b;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -307f)), ~vec4<i32>(_wgslsmith_sub_i32(~var_3.b.x, abs(var_1.a.b.a.b.x)), 1i, ~1i, ~(-1i ^ u_input.b)), vec2<u32>(var_0.x, _wgslsmith_sub_u32(~(var_3.e.x | 21259u), _wgslsmith_sub_u32(var_0.x, reverseBits(27171u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.d)), ~var_3.e);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec2<f32>, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = arg_0.a.d;
    var var_1 = Struct_2(Struct_1(2519f, vec4<i32>(-1i, 36316i, -2147483647i, _wgslsmith_mod_i32(func_2().b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(104186i, -2147483647i, 17993i, -2147483647i), arg_0.a.b))), max(_wgslsmith_div_vec2_u32(arg_0.b.e.zz, vec2<u32>(arg_0.a.c.x, 103734u)), reverseBits(arg_0.b.c)), 742f, ~arg_0.b.e), arg_0.b);
    let var_2 = !(~arg_0.b.b.x != -1i);
    let var_3 = ~firstTrailingBit(firstLeadingBit(0i) & _wgslsmith_sub_i32(select(u_input.c, -30044i, var_2), -2147483647i));
    var var_4 = var_0;
    return var_1.a;
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = Struct_2(func_4(Struct_2(func_2(), Struct_1(_wgslsmith_div_f32(269f, -1234f), vec4<i32>(u_input.a, u_input.b, u_input.a, 0i) ^ vec4<i32>(u_input.b, -1i, u_input.b, u_input.b), vec2<u32>(14098u, 32067u) | vec2<u32>(40924u, u_input.d), 729f, vec4<u32>(21382u, 4294967295u, 0u, 15713u) << (vec4<u32>(u_input.d, 6458u, u_input.d, 30289u) % vec4<u32>(32u)))), _wgslsmith_mod_vec4_i32(vec4<i32>(2827i, 26968i ^ u_input.b, -2147483647i, _wgslsmith_sub_i32(2147483647i, u_input.a)), vec4<i32>(-5041i, u_input.b, firstTrailingBit(u_input.a), ~u_input.c)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -771f) + _wgslsmith_f_op_f32(floor(-2311f))), _wgslsmith_f_op_f32(func_3(vec3<i32>(2147483647i, u_input.b, u_input.c), true == arg_0))), !select(!vec3<bool>(arg_0, arg_0, arg_0), !vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, false, true))), Struct_1(_wgslsmith_f_op_f32(-func_2().a), -abs(~vec4<i32>(u_input.c, 1i, u_input.a, -1i)), _wgslsmith_div_vec2_u32(func_2().c, ~vec2<u32>(u_input.d, u_input.d) & vec2<u32>(u_input.d, 73420u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<i32>(-14911i, -1i, -29336i), arg_0))), ~(~(vec4<u32>(24193u, 4294967295u, 0u, u_input.d) >> (vec4<u32>(6654u, u_input.d, u_input.d, 63190u) % vec4<u32>(32u))))));
    let var_1 = true;
    var var_2 = Struct_4(Struct_3(var_0.b.a, Struct_2(func_2(), Struct_1(var_0.a.d, vec4<i32>(50469i, u_input.b, u_input.a, u_input.a), vec2<u32>(4294967295u, 1u) << (vec2<u32>(var_0.a.c.x, var_0.a.c.x) % vec2<u32>(32u)), var_0.a.a, var_0.a.e)), 580f));
    let var_3 = Struct_2(var_0.a, Struct_1(1513f, abs(~vec4<i32>(var_0.a.b.x, var_2.a.b.b.b.x, -10508i, 2147483647i)), var_2.a.b.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1173f * 1f)), var_2.a.b.b.e));
    var_2 = Struct_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(func_2().a))), var_3, var_0.b.d));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -376f) - 275f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1086f))), _wgslsmith_f_op_f32(f32(-1f) * -585f)), ~(~select(var_2.a.b.b.b, vec4<i32>(61927i, var_2.a.b.b.b.x, var_3.b.b.x, -1i), vec4<bool>(var_1, false, true, false))), vec2<u32>(select(var_3.a.e.x, _wgslsmith_mult_u32(0u, u_input.d), arg_0 & var_1) >> (~var_2.a.b.a.e.x % 32u), ~var_2.a.b.a.e.x), 719f, vec4<u32>(_wgslsmith_dot_vec4_u32(var_2.a.b.a.e, ~select(var_2.a.b.a.e, vec4<u32>(u_input.d, 1u, var_3.a.e.x, var_0.a.e.x), true)), _wgslsmith_dot_vec3_u32(~var_3.a.e.wxz, var_0.b.e.wxx) ^ min(var_0.a.e.x, 1u), select(55527u, firstTrailingBit(firstLeadingBit(3194u)), !(arg_0 && true)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(var_3.b.e.ywx, var_2.a.b.a.e.zzz), vec3<u32>(u_input.d | var_0.b.e.x, 1u, reverseBits(u_input.d)))));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: vec3<f32>) -> Struct_4 {
    let var_0 = !all(select(vec3<bool>(true, select(false, true, true), arg_2.x > arg_1.b.a), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    let var_1 = 84473u;
    var var_2 = Struct_2(func_1((1155f <= arg_2.x) && true), arg_1.b);
    var_2 = arg_1;
    let var_3 = ~arg_1.a.c.x;
    return Struct_4(Struct_3(var_2.a.d, arg_1, -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_f32(275f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1319f) - 1053f)), Struct_2(Struct_1(_wgslsmith_f_op_f32(-1f), firstTrailingBit(vec4<i32>(37210i, u_input.c, 1i, u_input.a)), ~(vec2<u32>(u_input.d, u_input.d) >> (vec2<u32>(23150u, u_input.d) % vec2<u32>(32u))), -1026f, _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.d, u_input.d, u_input.d), vec4<u32>(u_input.d, u_input.d, 1u, u_input.d)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d), vec4<u32>(u_input.d, u_input.d, u_input.d, 4294967295u)))), func_1(any(vec4<bool>(true, false, true, false)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1192f, -2743f, 661f)) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(167f, 575f, 1000f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1386f, 776f, 1000f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(703f, -1850f, 800f), vec3<f32>(288f, 311f, 722f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(769f, 2665f, 1000f) - vec3<f32>(934f, 435f, 427f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2360f, 2654f, -298f)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false)))))));
    var_0 = func_5(var_0.a.a, var_0.a.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.a.b.a.a)), _wgslsmith_f_op_f32(f32(-1f) * -542f), _wgslsmith_f_op_f32(func_3(vec3<i32>(var_0.a.b.a.b.x, 47409i, u_input.a) << (vec3<u32>(9057u, 0u, var_0.a.b.b.e.x) % vec3<u32>(32u)), 28561u < u_input.d)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a.b.a.d))) - _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-var_0.a.a))) * _wgslsmith_f_op_f32(-var_0.a.b.b.a)));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a.c)));
    var var_3 = Struct_3(var_2, Struct_2(func_5(_wgslsmith_f_op_f32(-var_2), func_5(var_0.a.a, Struct_2(Struct_1(-1044f, var_0.a.b.a.b, var_0.a.b.a.e.yz, -1620f, var_0.a.b.a.e), Struct_1(var_2, vec4<i32>(12115i, var_0.a.b.a.b.x, 8435i, 1i), var_0.a.b.a.e.yx, 505f, vec4<u32>(6567u, var_0.a.b.a.c.x, var_0.a.b.b.c.x, var_0.a.b.a.e.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-137f, 380f, var_2) + vec3<f32>(var_2, 380f, var_2))).a.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(989f, -589f, 249f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, 968f, var_0.a.b.a.a)))).a.b.a, Struct_1(var_2, var_0.a.b.b.b, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.d, 0u) & var_0.a.b.b.e.xy), func_4(func_5(var_0.a.b.b.d, var_0.a.b, vec3<f32>(600f, var_2, var_2)).a.b, vec4<i32>(u_input.c, 29879i, -1i, u_input.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1029f, var_2)), vec3<bool>(true, true, true)).d, vec4<u32>(u_input.d, _wgslsmith_mult_u32(u_input.d, u_input.d), 36778u, var_0.a.b.a.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a.b.b.d)))));
    var var_4 = var_2;
    var_3 = func_5(var_3.c, Struct_2(Struct_1(_wgslsmith_f_op_f32(1740f - func_1(true).a), var_3.b.b.b, abs(_wgslsmith_add_vec2_u32(var_3.b.b.e.ww, vec2<u32>(var_0.a.b.a.c.x, 0u))), _wgslsmith_f_op_f32(-var_2), var_0.a.b.b.e), func_4(func_5(_wgslsmith_f_op_f32(var_2 - -988f), var_0.a.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(108f, var_0.a.c, -736f))).a.b, var_0.a.b.a.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1063f, 562f), vec2<f32>(var_2, -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a, var_2))), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a, _wgslsmith_f_op_f32(min(var_2, _wgslsmith_f_op_f32(f32(-1f) * -1160f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1036f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(116f, 413f, -432f)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-110f, 750f, var_3.b.a.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-490f, 1717f, -244f))))))).a;
    let var_5 = func_5(var_0.a.b.a.d, var_0.a.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(trunc(-136f)), var_2, _wgslsmith_f_op_f32(var_0.a.c + 1240f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.b.b.a, 948f, -438f) - vec3<f32>(var_2, var_3.a, -283f)))))))).a;
    let x = u_input.a;
    s_output = StorageBuffer(-145f, vec2<i32>(var_3.b.b.b.x, -12197i));
}

