struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec4<u32>,
    d: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> u32 {
    let var_0 = vec4<i32>(u_input.d.x, _wgslsmith_add_i32(0i, _wgslsmith_clamp_i32(u_input.c.x, ~(u_input.c.x ^ 46385i), _wgslsmith_add_i32(u_input.c.x, u_input.c.x))), -(~(~u_input.b.x)), u_input.c.x);
    let var_1 = _wgslsmith_f_op_f32(-863f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1297f * -116f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.b.x)))))) == 253f;
    var var_2 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1054f - -1070f), arg_1.a.x)), _wgslsmith_div_f32(-625f, _wgslsmith_f_op_f32(arg_1.a.x * arg_1.a.x)), _wgslsmith_f_op_f32(trunc(arg_1.a.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2516f * arg_1.a.x)), arg_1.b.x, arg_1.b.x)), _wgslsmith_f_op_vec3_f32(-arg_1.a), select(arg_1.c, vec4<u32>(u_input.a.x, select(arg_0.x, 4294967295u, true), 104969u, _wgslsmith_dot_vec4_u32(arg_1.c, vec4<u32>(0u, 31027u, arg_0.x, 4294967295u)) >> (~66185u % 32u)), !(!select(vec4<bool>(var_1, true, var_1, var_1), vec4<bool>(false, false, var_1, var_1), vec4<bool>(var_1, var_1, false, true)))));
    var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.a.x))) * var_2.a.x), _wgslsmith_f_op_f32(min(arg_1.b.x, -544f)), _wgslsmith_div_f32(arg_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.b.x, -1513f)) - _wgslsmith_f_op_f32(var_2.b.x + 565f)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.a.x, -840f, var_2.b.x))), var_2.c);
    var var_3 = Struct_5(Struct_2(vec4<i32>(1i, u_input.b.x << (4294967295u % 32u), 1i, -78884i) & vec4<i32>(_wgslsmith_mod_i32(u_input.b.x, 31801i), 1i, _wgslsmith_mult_i32(18292i, var_0.x), ~55265i), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.x, var_2.b.x, var_2.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1310f, arg_1.a.x, -1480f), arg_1.b, vec3<bool>(true, true, var_1))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, -1210f, -2760f), arg_1.b))), ~vec4<u32>(0u, 20927u, u_input.a.x, 80458u)), ~0i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) * -1773f), arg_1.b.x)), var_2.a.x);
    return ~_wgslsmith_mult_u32(~abs(~var_3.a.b.c.x), 4294967295u);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: vec2<f32>, arg_3: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -295f) * arg_3.b.b.x);
    var var_1 = Struct_4(arg_3.c.b, arg_3, arg_1, _wgslsmith_div_u32(func_3(arg_3.c.b.c.ywx, Struct_1(vec3<f32>(var_0, 1000f, arg_3.b.b.x), arg_3.a.a, arg_1)), u_input.a.x));
    var_1 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0, -860f, var_0))) + vec3<f32>(-737f, arg_2.x, 971f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_3.a.b, arg_3.c.b.b, false)) + _wgslsmith_f_op_vec3_f32(round(var_1.a.b))))), vec3<f32>(_wgslsmith_f_op_f32(abs(-173f)), var_0, _wgslsmith_f_op_f32(-var_0)), ~arg_3.c.b.c | (vec4<u32>(4444u, arg_0.x, u_input.a.x, 19007u) | vec4<u32>(arg_0.x, arg_0.x, 23289u, 45135u))), Struct_3(arg_3.b, Struct_1(_wgslsmith_f_op_vec3_f32(arg_3.a.a * _wgslsmith_f_op_vec3_f32(-var_1.b.a.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a.a) - _wgslsmith_f_op_vec3_f32(ceil(var_1.b.c.b.b))), vec4<u32>(4294967295u, arg_1.x, 0u, 9166u) | arg_1), arg_3.c), _wgslsmith_sub_vec4_u32(vec4<u32>(select(1u, 4294967295u, var_0 > 125f), _wgslsmith_sub_u32(_wgslsmith_mult_u32(41393u, 0u), ~arg_0.x), arg_1.x, 4294967295u), ~min(~var_1.a.c, vec4<u32>(arg_1.x, u_input.a.x, 51669u, u_input.a.x))), ~u_input.a.x);
    var_1 = Struct_4(var_1.a, var_1.b, abs(vec4<u32>(reverseBits(_wgslsmith_mod_u32(u_input.a.x, arg_3.a.c.x)), firstTrailingBit(1u), countOneBits(abs(arg_0.x)), 4294967295u)), _wgslsmith_mult_u32(~1148u & firstTrailingBit(arg_3.a.c.x), arg_0.x));
    var var_2 = vec2<bool>(false, !(!any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), false))));
    return Struct_2(arg_3.c.a, Struct_1(vec3<f32>(-2457f, _wgslsmith_f_op_f32(-1f), arg_3.a.b.x), var_1.a.b, arg_1), abs(_wgslsmith_mod_i32(u_input.c.x ^ 42116i, arg_3.c.a.x & arg_3.c.a.x) ^ ~_wgslsmith_add_i32(-1i, -2147483647i)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f + arg_2.x))))));
}

fn func_4(arg_0: u32, arg_1: Struct_5, arg_2: u32, arg_3: vec4<i32>) -> bool {
    let var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -10640i, 0i, firstLeadingBit(countOneBits(_wgslsmith_mult_i32(0i, 32663i)))), select(vec4<i32>(u_input.d.x, arg_3.x, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(arg_1.a.a.zx, u_input.b.xz), vec2<i32>(u_input.d.x, u_input.d.x)), 23294i), -firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, 1i, u_input.c.x, 40900i), arg_1.a.a)), true), u_input.b);
    let var_1 = arg_1;
    var var_2 = Struct_5(func_2(vec4<u32>(1u, reverseBits(var_1.a.b.c.x), var_1.a.b.c.x & select(4294967295u, arg_2, false), 70055u), ~vec4<u32>(u_input.a.x, ~4294967295u, arg_0, firstTrailingBit(arg_1.a.b.c.x)), vec2<f32>(_wgslsmith_f_op_f32(min(-1319f, _wgslsmith_f_op_f32(ceil(-608f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1340f), 2406f, false))), Struct_3(func_2(_wgslsmith_div_vec4_u32(arg_1.a.b.c, var_1.a.b.c), ~vec4<u32>(arg_0, arg_0, u_input.a.x, 12660u), _wgslsmith_f_op_vec2_f32(floor(arg_1.a.b.a.yz)), Struct_3(Struct_1(var_1.a.b.a, var_1.a.b.b, vec4<u32>(4294967295u, arg_0, 74598u, 27543u)), var_1.a.b, Struct_2(u_input.d, var_1.a.b, 19402i, var_1.b))).b, func_2(var_1.a.b.c, vec4<u32>(arg_1.a.b.c.x, arg_0, arg_2, arg_1.a.b.c.x) & arg_1.a.b.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(1570f, -301f) - var_1.a.b.b.xx), Struct_3(Struct_1(vec3<f32>(var_1.b, arg_1.a.b.a.x, arg_1.a.b.a.x), arg_1.a.b.b, vec4<u32>(arg_2, 1u, 6198u, 4294967295u)), var_1.a.b, Struct_2(vec4<i32>(-1i, arg_3.x, var_1.a.c, 1i), Struct_1(vec3<f32>(arg_1.b, -964f, var_1.b), vec3<f32>(arg_1.b, arg_1.a.b.b.x, arg_1.a.b.a.x), vec4<u32>(4294967295u, u_input.a.x, 1u, arg_2)), var_1.a.a.x, arg_1.a.b.b.x))).b, Struct_2(arg_3, func_2(vec4<u32>(1u, arg_2, u_input.a.x, var_1.a.b.c.x), arg_1.a.b.c, vec2<f32>(-1000f, var_1.b), Struct_3(arg_1.a.b, Struct_1(vec3<f32>(var_1.a.d, 712f, arg_1.a.b.a.x), arg_1.a.b.a, arg_1.a.b.c), arg_1.a)).b, u_input.d.x, _wgslsmith_f_op_f32(max(var_1.a.d, arg_1.b))))), _wgslsmith_f_op_f32(-arg_1.b));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.b, var_2.a.b.a.x))), vec2<f32>(_wgslsmith_f_op_f32(min(var_1.b, arg_1.a.d)), var_1.b))), var_2.a.b.b.yz, 1u <= (u_input.a.x >> (_wgslsmith_mult_u32(arg_2, 0u) % 32u)))));
    var var_4 = select(36763i, min(-27810i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(-9113i | var_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, var_2.a.a.x), var_0.wz)), arg_3.x)), any(select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), arg_2 < 34606u), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)))));
    return true;
}

fn func_1() -> vec3<f32> {
    var var_0 = any(vec4<bool>(func_4(u_input.a.x, Struct_5(func_2(vec4<u32>(0u, 0u, u_input.a.x, u_input.a.x), vec4<u32>(0u, 21133u, u_input.a.x, u_input.a.x), vec2<f32>(-512f, 328f), Struct_3(Struct_1(vec3<f32>(-1104f, -761f, -1000f), vec3<f32>(-1395f, -380f, 638f), vec4<u32>(44064u, 0u, 4294967295u, 4294967295u)), Struct_1(vec3<f32>(776f, -726f, -158f), vec3<f32>(915f, 654f, 1000f), vec4<u32>(u_input.a.x, 0u, 25786u, 0u)), Struct_2(u_input.d, Struct_1(vec3<f32>(-1002f, -1000f, -2314f), vec3<f32>(-837f, 399f, 868f), vec4<u32>(1u, u_input.a.x, 0u, u_input.a.x)), 45585i, 733f))), -1813f), _wgslsmith_add_u32(40719u, ~u_input.a.x), -_wgslsmith_mod_vec4_i32(u_input.d, u_input.d)), true, any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))) & false, true));
    let var_1 = ~_wgslsmith_mod_u32(u_input.a.x, firstLeadingBit(_wgslsmith_div_u32(func_2(vec4<u32>(1u, 1u, u_input.a.x, 102406u), vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), vec2<f32>(515f, 142f), Struct_3(Struct_1(vec3<f32>(-299f, 647f, -1764f), vec3<f32>(-1201f, 1280f, -527f), vec4<u32>(u_input.a.x, 45674u, 1417u, u_input.a.x)), Struct_1(vec3<f32>(-1037f, 1111f, -1646f), vec3<f32>(1376f, -381f, -252f), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u)), Struct_2(vec4<i32>(2147483647i, u_input.c.x, u_input.b.x, 19009i), Struct_1(vec3<f32>(-679f, 1000f, 1000f), vec3<f32>(1584f, 1075f, -869f), vec4<u32>(4294967295u, u_input.a.x, 4294967295u, u_input.a.x)), 1i, -392f))).b.c.x, u_input.a.x)));
    var_0 = !(!select(any(vec4<bool>(true, true, false, false)), true, select(true, false, true)));
    var var_2 = false;
    var var_3 = vec2<i32>(-62461i, 1i) | _wgslsmith_mod_vec2_i32(-(~abs(vec2<i32>(-33149i, 93195i))), u_input.c);
    return vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(387f * -616f)))), -907f, 938f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(~_wgslsmith_sub_i32(-92390i, _wgslsmith_clamp_i32(0i, _wgslsmith_mod_i32(-2147483647i, -20048i), u_input.c.x)), -u_input.d.x & u_input.b.x, abs(u_input.d.x));
    var_0 = vec3<i32>(~(-6083i), _wgslsmith_add_i32(var_0.x, min(-firstTrailingBit(var_0.x), ~_wgslsmith_sub_i32(-3411i, u_input.d.x))), -3257i);
    var_0 = u_input.b.zxz;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1323f, 449f, -1201f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-748f, -1024f, -207f), vec3<f32>(-302f, 2253f, 118f)))))), vec3<f32>(723f, -490f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(299f))))), abs(abs(~(vec4<u32>(18374u, u_input.a.x, 51131u, 43720u) & vec4<u32>(u_input.a.x, 68954u, u_input.a.x, u_input.a.x)))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(func_1()), _wgslsmith_f_op_vec3_f32(-var_1.a), ~_wgslsmith_div_vec4_u32(select(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x), var_1.c), vec4<u32>(99596u, 4294967295u, 0u, u_input.a.x), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true))), var_1.c));
    let var_3 = Struct_5(func_2(vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2.c.x, 4294967295u, 0u), var_1.c), u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.yz, vec2<u32>(u_input.a.x, 4294967295u))), ~var_2.c.x, reverseBits(1u), firstLeadingBit(24896u)), select(vec4<u32>(_wgslsmith_sub_u32(4294967295u, 51592u), 1u, 0u, 1u), select(var_2.c, vec4<u32>(70068u, u_input.a.x, 1u, 14675u), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true))), var_1.b.xy, Struct_3(func_2(max(vec4<u32>(var_1.c.x, var_1.c.x, var_2.c.x, u_input.a.x), vec4<u32>(u_input.a.x, var_2.c.x, 38341u, 3548u)), reverseBits(var_2.c), vec2<f32>(var_1.a.x, 492f), Struct_3(Struct_1(var_1.a, vec3<f32>(-173f, var_1.a.x, -2082f), vec4<u32>(var_1.c.x, var_2.c.x, var_2.c.x, var_1.c.x)), Struct_1(var_2.b, var_2.b, var_1.c), Struct_2(u_input.b, Struct_1(vec3<f32>(-416f, 511f, 914f), vec3<f32>(1006f, 1300f, var_2.b.x), var_2.c), 1i, 1000f))).b, func_2(vec4<u32>(30512u, u_input.a.x, 4294967295u, 4294967295u), vec4<u32>(51865u, var_1.c.x, var_1.c.x, 4294967295u) << (vec4<u32>(u_input.a.x, 1u, var_2.c.x, 38678u) % vec4<u32>(32u)), var_2.a.yy, Struct_3(Struct_1(vec3<f32>(-600f, 1405f, -1000f), vec3<f32>(-404f, var_1.b.x, -547f), vec4<u32>(20788u, var_1.c.x, u_input.a.x, 0u)), Struct_1(var_1.a, var_2.a, var_1.c), Struct_2(vec4<i32>(u_input.b.x, -14679i, -2147483647i, 0i), Struct_1(vec3<f32>(1055f, -754f, var_2.b.x), var_1.a, var_2.c), 0i, var_2.a.x))).b, func_2(vec4<u32>(59008u, u_input.a.x, u_input.a.x, 1u), vec4<u32>(4294967295u, 4294967295u, 33203u, var_1.c.x), _wgslsmith_f_op_vec2_f32(var_1.b.xy * vec2<f32>(var_2.b.x, 1207f)), Struct_3(Struct_1(vec3<f32>(2336f, -1206f, var_2.b.x), var_1.a, vec4<u32>(var_2.c.x, 63170u, 57889u, 0u)), Struct_1(vec3<f32>(var_2.b.x, 442f, -264f), var_2.a, var_1.c), Struct_2(u_input.b, Struct_1(vec3<f32>(var_2.a.x, var_1.a.x, var_1.a.x), var_2.b, var_1.c), 4043i, -1080f))))), 198f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(361f)), vec3<i32>(-1i) * -(var_3.a.a.xxz & -u_input.b.ywz), vec2<u32>(abs(max(_wgslsmith_div_u32(60181u, 4294967295u), reverseBits(u_input.a.x))), 34032u), ~var_3.a.b.c.x, 4294967295u);
}

