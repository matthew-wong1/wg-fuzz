struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec4<bool>,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: i32,
    d: Struct_2,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = u_input.c;
    var var_1 = !vec3<bool>(any(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(false, true))), true, all(vec2<bool>(select(true, true, true), false)));
    var var_2 = u_input.a;
    let var_3 = _wgslsmith_f_op_f32(sign(551f));
    var var_4 = ~vec4<u32>(u_input.d, _wgslsmith_div_u32(7536u, _wgslsmith_dot_vec4_u32(~u_input.c, u_input.c)), ~(~_wgslsmith_mult_u32(u_input.c.x, 4294967295u)), _wgslsmith_mod_u32((24829u | u_input.c.x) ^ select(71053u, 0u, var_1.x), var_0.x));
    return ~var_4.x;
}

fn func_2() -> Struct_1 {
    let var_0 = select(select(!vec2<bool>(all(vec4<bool>(false, true, false, false)), true), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), false), vec2<bool>(true, true), true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true));
    let var_1 = Struct_3(vec4<u32>(select(_wgslsmith_add_u32(7742u, ~u_input.c.x), ~4294967295u, var_0.x), func_3(), min(u_input.c.x, _wgslsmith_dot_vec4_u32(u_input.c, u_input.c)) ^ ~(~0u), u_input.c.x), false, u_input.b.x, Struct_2(vec3<i32>(~_wgslsmith_dot_vec2_i32(u_input.b.ww, u_input.b.zw), _wgslsmith_dot_vec3_i32(u_input.b.xzy, vec3<i32>(u_input.e, u_input.b.x, u_input.e)), firstTrailingBit(21520i) >> (reverseBits(u_input.d) % 32u)), abs(~min(-11226i, u_input.e))), ~vec4<i32>(select(39823i, u_input.e, false) << (u_input.c.x % 32u), ~countOneBits(15153i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 49383i), vec3<i32>(-15946i, u_input.e, -1i)) & _wgslsmith_sub_i32(-2147483647i, u_input.e), -2147483647i));
    let var_2 = var_0;
    let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2365f, _wgslsmith_div_f32(-1885f, 801f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(338f, -169f), vec2<f32>(-1000f, 2992f), true)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-409f, -315f)))), select(select(var_2, var_0, var_2), !vec2<bool>(var_1.b, var_1.b), select(var_2, var_2, vec2<bool>(true, true)))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1611f, 502f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1189f, 1352f))), true)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1010f, 270f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1022f, 406f))))))))), select(var_0, var_0, _wgslsmith_mult_u32(u_input.c.x, var_1.a.x ^ 4294967295u) < _wgslsmith_mult_u32(1u, u_input.d))));
    var var_4 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_3.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_3.x)) + _wgslsmith_f_op_f32(-1112f * 405f)))), _wgslsmith_f_op_f32(f32(-1f) * -1460f))));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(321f * 373f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.x)))) * _wgslsmith_f_op_f32(1f + -503f)), var_1.a.yxz, vec4<bool>(all(vec2<bool>(var_2.x, true)), false, !var_0.x, any(!vec2<bool>(true, var_1.b))), var_1.d.a.yy, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-698f, var_3.x, -809f) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-690f, var_4.x, var_4.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_4.x, var_3.x) - vec3<f32>(406f, var_4.x, var_4.x)) + vec3<f32>(-897f, var_4.x, var_3.x)))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, -1588f));
    var var_1 = arg_1;
    let var_2 = select(true, all(arg_0.c.ww), true);
    let var_3 = _wgslsmith_f_op_f32(695f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -804f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(489f)), _wgslsmith_f_op_f32(min(1335f, 1893f)))) - _wgslsmith_f_op_f32(abs(-1464f)))));
    var var_4 = arg_3;
    return arg_0;
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(func_2(), Struct_2(~u_input.b.wyx, -(~_wgslsmith_sub_i32(8778i, u_input.b.x))), func_2(), Struct_2(~firstLeadingBit(vec3<i32>(1i, -2147483647i, u_input.a)), select(u_input.b.x, u_input.a, !all(vec2<bool>(false, false)))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.a, var_0.e.x), _wgslsmith_f_op_f32(1000f * -850f), true)), _wgslsmith_f_op_f32(var_0.e.x - _wgslsmith_f_op_f32(min(var_0.a, var_0.e.x)))) - _wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(f32(-1f) * -818f))), ~_wgslsmith_clamp_vec3_u32(var_0.b, ~vec3<u32>(33409u, var_0.b.x, 58343u), func_2().b << (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, var_0.b.x, u_input.d), u_input.c.zzz) % vec3<u32>(32u))), var_0.c, vec2<i32>(firstTrailingBit(-55170i), u_input.a), _wgslsmith_div_vec3_f32(var_0.e, vec3<f32>(var_0.e.x, _wgslsmith_f_op_f32(-var_0.e.x), -1096f)));
    var_0 = func_4(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.x)))), vec3<u32>(_wgslsmith_div_u32(firstLeadingBit(var_0.b.x), ~1u), 82144u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.c.x), vec2<u32>(u_input.d, 8224u))), !select(var_0.c, vec4<bool>(var_0.c.x, var_0.c.x, true, var_0.c.x), vec4<bool>(true, var_0.c.x, true, var_0.c.x)), -u_input.b.zy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.e), _wgslsmith_div_vec3_f32(vec3<f32>(259f, -877f, -873f), vec3<f32>(2050f, 160f, var_0.a)), var_0.c.x)))), Struct_2(u_input.b.wyz, u_input.b.x), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-628f, -1040f))) * _wgslsmith_f_op_f32(floor(var_0.a))), _wgslsmith_clamp_vec3_u32(vec3<u32>(~var_0.b.x, ~var_0.b.x, func_4(Struct_1(1920f, vec3<u32>(61038u, 3737u, var_0.b.x), vec4<bool>(var_0.c.x, false, var_0.c.x, false), u_input.b.yy, var_0.e), Struct_2(vec3<i32>(-21826i, -38994i, 1i), var_0.d.x), Struct_1(var_0.e.x, vec3<u32>(u_input.c.x, 0u, 4294967295u), var_0.c, u_input.b.yw, var_0.e), Struct_2(vec3<i32>(2147483647i, u_input.a, 23827i), -82053i)).b.x), var_0.b, abs(_wgslsmith_mod_vec3_u32(var_0.b, u_input.c.xzx))), vec4<bool>(func_2().c.x, all(!var_0.c.wy), ~u_input.e != abs(var_0.d.x), true), _wgslsmith_mult_vec2_i32(-var_0.d & var_0.d, var_0.d), func_2().e), Struct_2(u_input.b.zyx, func_4(Struct_1(-2658f, vec3<u32>(1u, var_0.b.x, u_input.c.x), vec4<bool>(false, var_0.c.x, var_0.c.x, var_0.c.x), vec2<i32>(u_input.b.x, u_input.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(680f, 774f, var_0.e.x))), Struct_2(~u_input.b.zwy, var_0.d.x), Struct_1(-984f, ~u_input.c.zzx, !var_0.c, ~vec2<i32>(-10813i, var_0.d.x), _wgslsmith_f_op_vec3_f32(var_0.e + var_0.e)), Struct_2(u_input.b.wwz, u_input.e << (u_input.c.x % 32u))).d.x));
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-872f, 1000f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_1(-772f, vec3<u32>(16090u, var_0.b.x, var_0.b.x), vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, false), vec2<i32>(1i, -2147483647i), vec3<f32>(-1942f, var_0.e.x, var_0.a)), Struct_2(vec3<i32>(var_0.d.x, 2237i, u_input.a), 0i), Struct_1(var_0.e.x, var_0.b, var_0.c, vec2<i32>(var_0.d.x, 1i), vec3<f32>(946f, 1620f, var_0.a)), Struct_2(u_input.b.yww, -79587i)).e.x + -1264f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e.x + var_0.e.x) * _wgslsmith_f_op_f32(max(var_0.e.x, 651f))))), var_0.b, var_0.c, var_0.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_0.e, var_0.e), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-973f, var_0.e.x, 600f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.a, 1429f, var_0.a)))), !any(var_0.c.xx))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.x, var_0.a, -1109f))));
    var_0 = func_2();
    return func_4(func_2(), Struct_2(vec3<i32>(func_4(Struct_1(var_0.a, u_input.c.wwx, var_0.c, vec2<i32>(-1i, -11542i), vec3<f32>(-728f, 862f, var_0.e.x)), Struct_2(u_input.b.zxz, -14876i), func_4(Struct_1(820f, vec3<u32>(var_0.b.x, u_input.d, 29760u), var_0.c, vec2<i32>(var_0.d.x, var_0.d.x), vec3<f32>(-796f, -255f, var_0.e.x)), Struct_2(vec3<i32>(var_0.d.x, var_0.d.x, u_input.a), u_input.a), Struct_1(1210f, vec3<u32>(var_0.b.x, var_0.b.x, 78088u), vec4<bool>(var_0.c.x, true, true, var_0.c.x), vec2<i32>(var_0.d.x, 0i), vec3<f32>(1036f, -2337f, var_0.e.x)), Struct_2(u_input.b.zzy, 19177i)), Struct_2(u_input.b.yzy, var_0.d.x)).d.x, var_0.d.x | var_0.d.x, _wgslsmith_sub_i32(-44373i, select(-15196i, -11865i, true))), ~(-21550i)), func_2(), Struct_2(vec3<i32>(-16379i, _wgslsmith_mod_i32(u_input.a, -2147483647i), _wgslsmith_dot_vec4_i32(u_input.b, u_input.b)) << (vec3<u32>(~var_0.b.x, func_2().b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 256u, 4294967295u), vec3<u32>(u_input.d, var_0.b.x, var_0.b.x))) % vec3<u32>(32u)), -abs(u_input.a)));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: bool) -> bool {
    var var_0 = arg_2.c;
    var_0 = func_2().c;
    var var_1 = Struct_3(u_input.c, !func_2().c.x, -2147483647i, Struct_2(min(u_input.b.zyy, _wgslsmith_sub_vec3_i32(vec3<i32>(arg_2.d.x, 31669i, -40900i), u_input.b.zyz << (arg_2.b % vec3<u32>(32u)))), arg_2.d.x), ~select(u_input.b, ~vec4<i32>(-2147483647i, 0i, arg_2.d.x, 1i) | abs(vec4<i32>(arg_2.d.x, -2147483647i, -1i, -17255i)), select(!vec4<bool>(var_0.x, arg_3, false, false), vec4<bool>(arg_3, arg_2.c.x, var_0.x, var_0.x), any(vec2<bool>(false, arg_2.c.x)))));
    var_0 = !(!func_2().c);
    let var_2 = Struct_3(abs(~firstLeadingBit(var_1.a)), var_1.b, -2913i, var_1.d, u_input.b);
    return !arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !any(select(vec3<bool>(u_input.c.x >= 0u, any(vec3<bool>(false, true, true)), all(vec3<bool>(false, true, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1185f, 1563f)), ~u_input.c.www, func_1(), true)));
    let var_1 = func_2();
    var var_2 = 0u;
    var var_3 = Struct_2(vec3<i32>(u_input.a, _wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 19368i, -2147483647i, -18316i), vec4<i32>(43854i, 3612i, var_1.d.x, 0i)), max(var_1.d.x, var_1.d.x)), -2602i), -2147483647i), abs(_wgslsmith_clamp_i32(func_4(Struct_1(var_1.e.x, u_input.c.wzz, var_1.c, var_1.d, var_1.e), Struct_2(u_input.b.zww, var_1.d.x), func_4(Struct_1(613f, vec3<u32>(1u, u_input.d, 4294967295u), vec4<bool>(true, false, false, false), u_input.b.xy, var_1.e), Struct_2(u_input.b.yyw, 1i), var_1, Struct_2(u_input.b.zww, u_input.b.x)), Struct_2(u_input.b.zyx, var_1.d.x)).d.x, ~41632i, var_1.d.x)));
    let var_4 = Struct_2(select(vec3<i32>(reverseBits(var_1.d.x), ~(-2147483647i), -55449i), vec3<i32>(-var_1.d.x, reverseBits(938i), ~0i), true) >> (vec3<u32>(_wgslsmith_clamp_u32(var_1.b.x << (u_input.d % 32u), ~var_1.b.x, _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, var_1.b.x, 68554u, var_1.b.x))), ~(var_1.b.x ^ 48620u), ~(~44611u)) % vec3<u32>(32u)), _wgslsmith_dot_vec3_i32(~vec3<i32>(-16151i, 23537i, -2147483647i), -_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.d.x, u_input.a, u_input.a), u_input.b.zzz)) ^ 1i);
    var var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-449f + var_1.e.x)), var_1.e.x), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_1.e.yy)))))) + _wgslsmith_f_op_vec2_f32(var_1.e.zy * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.e.x * var_1.e.x) * var_1.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1322f - var_1.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(var_5.x + var_1.a), _wgslsmith_div_f32(var_1.e.x, _wgslsmith_f_op_f32(f32(-1f) * -953f))))), reverseBits(firstTrailingBit(vec4<i32>(_wgslsmith_clamp_i32(var_3.b, -12548i, var_3.b), -20375i, var_3.a.x & 26061i, -55636i))), u_input.c.x, (1908i >> (firstLeadingBit(var_1.b.x << (var_1.b.x % 32u)) % 32u)) & _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(1i, var_4.a.x), -2147483647i, -var_3.a.x), vec3<i32>(_wgslsmith_div_i32(var_3.b, 31833i), var_1.d.x ^ 2147483647i, -11950i)), var_3.b);
}

