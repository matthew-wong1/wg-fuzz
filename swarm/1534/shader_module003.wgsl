struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2, arg_3: vec4<f32>) -> f32 {
    var var_0 = Struct_3(arg_2.a.x, true, !vec2<bool>(all(vec2<bool>(true, true)), all(vec3<bool>(false, false, true))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1008f))))));
    var_0 = Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(1657f - arg_3.x))))), true, var_0.c, arg_3.x);
    var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1, -312f)) - _wgslsmith_f_op_f32(var_0.d * arg_1)) - -1386f) + _wgslsmith_f_op_f32(floor(1754f))), true, !(!(!var_0.c)), arg_2.a.x);
    var_0 = Struct_3(var_0.d, all(!(!vec2<bool>(var_0.b, true))), !(!(!var_0.c)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -315f))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.d * 1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-932f + _wgslsmith_f_op_f32(select(arg_2.a.x, -522f, true))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-438f))))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.a.x))), !(!vec2<bool>(true, 226f > arg_0.a.x)), arg_0.a.x);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1827f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(822f + arg_2.a.x)))) + -466f), arg_1);
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    let var_0 = arg_0.yyy;
    var var_1 = vec4<bool>(true, false, false, true);
    var_1 = vec4<bool>(!(!all(select(vec3<bool>(true, var_1.x, true), vec3<bool>(true, false, true), var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-180f, _wgslsmith_f_op_f32(round(-862f))))) == _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -534f), _wgslsmith_f_op_f32(-908f * -1140f))), all(vec4<bool>(var_1.x, _wgslsmith_f_op_f32(select(1589f, 329f, false)) >= -747f, false, false)), true);
    let var_2 = 4294967295u;
    var var_3 = i32(-1i) * -u_input.a.x;
    return Struct_2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(152f)), -1709f, _wgslsmith_f_op_f32(func_3(Struct_2(vec3<f32>(-792f, -950f, -646f)), -352f, Struct_2(vec3<f32>(311f, 271f, -1466f)), vec4<f32>(-585f, 278f, -2462f, 562f)))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2460f, 1671f, -1000f), vec3<f32>(588f, 396f, -308f), var_1.x))))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(-204f, -602f), 1012f, _wgslsmith_f_op_f32(-678f * -186f)), vec3<f32>(_wgslsmith_f_op_f32(step(113f, -557f)), _wgslsmith_f_op_f32(707f * -1000f), _wgslsmith_f_op_f32(251f * -1000f)))))));
}

fn func_1() -> Struct_3 {
    var var_0 = u_input.d.x;
    var var_1 = func_2(vec4<u32>(~u_input.b >> (14382u % 32u), ~4442u, 32027u, ~(~u_input.d.x & u_input.b)));
    return Struct_3(-186f, all(vec3<bool>(true, true, true)) | true, vec2<bool>(true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1602f * 1079f))) + _wgslsmith_f_op_f32(select(-854f, 169f, all(vec3<bool>(false, true, true))))) - _wgslsmith_f_op_f32(abs(406f))));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_3 {
    var var_0 = func_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(~(~19457u), 4294967295u, _wgslsmith_mod_u32(~u_input.b, arg_3.x), arg_3.x), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.d, ~vec4<u32>(u_input.d.x, 0u, arg_3.x, u_input.b), abs(vec4<u32>(0u, arg_3.x, arg_3.x, u_input.b))), u_input.d), _wgslsmith_div_vec4_u32(vec4<u32>(arg_3.x, u_input.d.x, u_input.b, 15021u) ^ u_input.d, ~u_input.d) ^ (vec4<u32>(arg_3.x, 4294967295u, 0u, 1u) & ~u_input.d)));
    let var_1 = _wgslsmith_mult_vec4_u32(~(~min(u_input.d, u_input.d)), countOneBits(~(vec4<u32>(4294967295u, u_input.b, 4294967295u, u_input.d.x) >> (u_input.d % vec4<u32>(32u))) | ~u_input.d));
    let var_2 = 1u;
    let var_3 = !arg_2.a;
    let var_4 = 1u;
    return func_1();
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = arg_2.x;
    var var_1 = !vec2<bool>(arg_0.c.x, arg_0.c.x);
    let var_2 = _wgslsmith_f_op_f32(abs(func_2(u_input.d).a.x));
    var_1 = vec2<bool>(any(vec4<bool>(true, true, true & var_1.x, var_1.x)), -1120f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1970f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - func_1().a)));
    let var_3 = false;
    return func_2(vec4<u32>(arg_1, u_input.b, arg_1, ~_wgslsmith_sub_u32(select(4294967295u, arg_1, var_1.x), arg_1 & 1u)));
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = -1000f;
    return Struct_1(true, true);
}

fn func_7(arg_0: u32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec3<u32>) -> Struct_3 {
    let var_0 = -u_input.c.xxz;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(265f, 945f)) - -640f) * _wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1574f, -1059f, -1782f), vec3<f32>(1346f, 2403f, 712f)))), _wgslsmith_f_op_f32(-func_5(Struct_3(771f, false, vec2<bool>(arg_1.b, true), 860f), arg_0, arg_2.xz).a.x), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(343f, 977f, 887f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2294f, -2312f, -237f, -865f), vec4<f32>(-2727f, 1070f, -148f, 1336f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(936f, 112f, 1719f, 2198f)))))), arg_1.a, vec2<bool>(true, func_4(-1i, func_4(_wgslsmith_add_i32(u_input.c.x, -1i), Struct_3(500f, arg_1.a, vec2<bool>(true, arg_1.a), -833f), func_6(vec2<bool>(arg_1.a, arg_1.a), Struct_3(-833f, true, vec2<bool>(true, arg_1.a), -535f), vec4<f32>(-2181f, -1000f, -878f, 1006f), Struct_2(vec3<f32>(-1196f, -852f, -205f))), arg_3), func_6(vec2<bool>(arg_1.a, arg_1.b), func_4(u_input.c.x, Struct_3(340f, false, vec2<bool>(false, arg_1.b), 1067f), arg_1, vec3<u32>(30028u, arg_3.x, 2237u)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-172f, -1305f, -796f, -505f), vec4<f32>(-285f, 754f, -1697f, 565f), vec4<bool>(arg_1.a, arg_1.a, true, arg_1.a))), func_2(vec4<u32>(4294967295u, 0u, 4294967295u, arg_3.x))), vec3<u32>(~arg_0, 46408u, u_input.b)).b), _wgslsmith_f_op_f32(-func_2(u_input.d).a.x));
    var_1 = func_1();
    var_1 = func_4(0i, func_4(select(var_0.x, _wgslsmith_mult_i32(abs(u_input.a.x), u_input.c.x << (1u % 32u)), !var_1.b), func_1(), Struct_1(countOneBits(1760u) > countOneBits(arg_0), true), vec3<u32>(~u_input.b, _wgslsmith_dot_vec3_u32(~arg_2, vec3<u32>(4294967295u, u_input.d.x, u_input.d.x)), _wgslsmith_dot_vec2_u32(u_input.d.yz ^ vec2<u32>(9011u, arg_0), vec2<u32>(arg_2.x, arg_2.x)))), func_6(var_1.c, func_4(u_input.c.x, Struct_3(_wgslsmith_f_op_f32(var_1.d * -1000f), true, vec2<bool>(true, arg_1.b), var_1.a), arg_1, vec3<u32>(1u, arg_3.x, firstTrailingBit(1586u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(2177f, var_1.d, 1868f, -142f) - vec4<f32>(-590f, 296f, -2055f, 412f))))), func_5(func_1(), 1u, ~vec2<u32>(u_input.d.x, arg_2.x))), arg_2);
    var_1 = func_1();
    return func_4(~(-(countOneBits(19653i) << (~arg_2.x % 32u))), Struct_3(var_1.d, abs(0u) == firstLeadingBit(firstLeadingBit(arg_2.x)), !var_1.c, -619f), func_6(!vec2<bool>(var_1.c.x, true), func_4(_wgslsmith_mult_i32(var_0.x, -var_0.x), Struct_3(var_1.d, true, var_1.c, var_1.d), func_6(!vec2<bool>(var_1.c.x, false), Struct_3(var_1.a, arg_1.a, var_1.c, 800f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1196f, 1073f, var_1.d, -1083f)), Struct_2(vec3<f32>(-1343f, var_1.d, var_1.d))), firstTrailingBit(~u_input.d.zyx)), vec4<f32>(_wgslsmith_f_op_f32(sign(-362f)), var_1.d, var_1.d, 1333f), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d, 1000f, var_1.a) + vec3<f32>(var_1.d, var_1.a, -177f)) * func_5(Struct_3(var_1.a, arg_1.a, var_1.c, 233f), 42865u, arg_2.xz).a))), ~u_input.d.zzz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(~_wgslsmith_add_u32(_wgslsmith_add_u32(~9515u, _wgslsmith_div_u32(14606u, u_input.b)), _wgslsmith_sub_u32(max(41481u, u_input.d.x), u_input.d.x >> (u_input.d.x % 32u))), func_6(vec2<bool>(all(vec3<bool>(true, false, true)), false && all(vec4<bool>(false, true, false, false))), Struct_3(1000f, true, select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true), false), _wgslsmith_f_op_f32(sign(-160f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2769f, 928f, -235f, 528f)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-581f, -1000f, -1589f, -551f))))), func_5(func_4(u_input.a.x, func_1(), Struct_1(false, true), select(vec3<u32>(24117u, u_input.b, u_input.d.x), vec3<u32>(0u, 4294967295u, u_input.d.x), true)), u_input.b, ~(~u_input.d.zw))), min(vec3<u32>(1u, u_input.d.x, 822u) | ~vec3<u32>(u_input.d.x, u_input.b, 1u), u_input.d.zxw) ^ u_input.d.yzx, select(vec3<u32>(select(u_input.b, 0u, true), abs(4294967295u), 20975u) | u_input.d.wyw, u_input.d.zyx, (select(true, false, true) | false) == false));
    let var_1 = vec2<u32>(u_input.b, max(u_input.b, countOneBits(4294967295u)));
    var var_2 = func_5(func_7(var_1.x, func_6(var_0.c, func_7(_wgslsmith_mod_u32(var_1.x, 1u), Struct_1(var_0.b, false), ~u_input.d.wzw, _wgslsmith_div_vec3_u32(vec3<u32>(var_1.x, 1u, 0u), vec3<u32>(var_1.x, 69976u, 10091u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, var_0.a, -368f, 1439f) - vec4<f32>(-1028f, 577f, var_0.a, -1092f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, 162f, 523f, -289f) * vec4<f32>(var_0.a, var_0.d, var_0.a, -1013f))), Struct_2(vec3<f32>(var_0.a, var_0.d, 1158f))), _wgslsmith_mult_vec3_u32(~abs(vec3<u32>(var_1.x, u_input.d.x, 1u)), vec3<u32>(~var_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 4294967295u), var_1), 1u)), ~reverseBits(min(vec3<u32>(var_1.x, 1u, 43879u), u_input.d.wxx))), (76539u >> (u_input.b % 32u)) << (~_wgslsmith_clamp_u32(1u, 0u, 45172u) % 32u), var_1);
    var_2 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_2.a, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.d, var_2.a.x, 109f)))), func_5(Struct_3(1000f, true, var_0.c, 1f), _wgslsmith_add_u32(1u, 118256u), vec2<u32>(var_1.x, _wgslsmith_dot_vec3_u32(u_input.d.zzz, u_input.d.wzw))).a));
    var_0 = func_1();
    var_0 = Struct_3(func_2(~u_input.d).a.x, func_1().b, vec2<bool>(true, any(!(!vec4<bool>(var_0.b, true, false, var_0.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x + _wgslsmith_f_op_f32(var_0.d - _wgslsmith_div_f32(1412f, -1000f)))));
    let var_3 = !any(select(vec3<bool>(true, var_0.b && true, true), select(select(vec3<bool>(var_0.b, var_0.b, true), vec3<bool>(false, false, var_0.b), var_0.c.x), !vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x), true), vec3<bool>(func_6(var_0.c, Struct_3(var_2.a.x, var_0.b, var_0.c, var_0.d), vec4<f32>(-696f, var_0.d, -2749f, -747f), Struct_2(vec3<f32>(var_0.a, -1483f, var_0.d))).a, false, true)));
    let x = u_input.a;
    s_output = StorageBuffer(-reverseBits(~(~u_input.c.x)), i32(-1i) * -(~29010i), max(abs(u_input.d), vec4<u32>(~(~u_input.d.x), _wgslsmith_clamp_u32(var_1.x, 81066u, var_1.x) | 46558u, _wgslsmith_div_u32(2557u, 52936u), _wgslsmith_mod_u32(var_1.x, var_1.x))), -173f, 49638u);
}

