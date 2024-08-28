struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: f32,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1076f, 690f, -1000f);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_4) -> u32 {
    var var_0 = arg_2.b.e || true;
    global0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(arg_2.b.d, arg_0.e.d, arg_0.e.e)), _wgslsmith_div_vec3_f32(arg_0.e.d, arg_0.e.d))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, arg_2.b.d.x, arg_2.c)))), true)) + vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1000f, -2705f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), -662f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, arg_0.e.a.x) + _wgslsmith_f_op_f32(-1880f + -927f)))), vec3<f32>(-403f, arg_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-247f - _wgslsmith_f_op_f32(f32(-1f) * -470f))))));
    global0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b.wwy)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.d.x, -1358f, 2203f)))))));
    var var_1 = Struct_4(Struct_3(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(1i, arg_2.a.a), ~vec2<i32>(-1i, arg_0.e.b)), vec2<i32>(arg_2.a.a, arg_2.a.a & arg_0.c.x))), Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0.e.a), arg_2.b.b, _wgslsmith_f_op_f32(-1f), arg_0.b.xww, true | !arg_2.b.e), -798f);
    var_0 = arg_2.b.e;
    return countOneBits(_wgslsmith_dot_vec3_u32(select(~arg_0.a, arg_0.a, all(vec2<bool>(arg_2.b.e, false))), _wgslsmith_mult_vec3_u32(arg_0.a, ~vec3<u32>(u_input.a.x, arg_0.a.x, 27386u)) >> ((select(arg_0.a, vec3<u32>(u_input.a.x, u_input.a.x, 5713u), true) << (vec3<u32>(61603u, 4294967295u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u))));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<i32>) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0 - vec3<f32>(-478f, -159f, -161f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_0, arg_0)), _wgslsmith_f_op_vec3_f32(exp2(arg_0)))) - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1695f, global0.x, arg_0.x), _wgslsmith_f_op_vec3_f32(min(arg_0, vec3<f32>(-384f, global0.x, global0.x)))), arg_0)), vec3<bool>(abs(~1u) != (select(u_input.a.x, u_input.a.x, false) << (u_input.a.x % 32u)), false, all(vec3<bool>(false, false, true)) & any(vec3<bool>(true, true, true)))));
    var var_0 = select(select(vec4<bool>(true, func_3(Struct_2(vec3<u32>(9657u, 4294967295u, u_input.a.x), vec4<f32>(global0.x, -1226f, 270f, global0.x), vec2<i32>(-27992i, -2147483647i), Struct_1(vec2<f32>(1332f, arg_0.x), arg_1.x, global0.x, arg_0, true), Struct_1(arg_0.xz, -2418i, 362f, vec3<f32>(1431f, -2764f, global0.x), false)), -830f, Struct_4(Struct_3(arg_1.x), Struct_1(vec2<f32>(1727f, arg_0.x), arg_1.x, global0.x, arg_0, false), global0.x)) <= _wgslsmith_sub_u32(28686u, u_input.a.x), all(vec4<bool>(true, false, true, false)), true), !vec4<bool>(all(vec4<bool>(true, true, true, false)), true, -813f < arg_0.x, true), vec4<bool>(true, true, true, (global0.x >= -1808f) | false)), !select(vec4<bool>(1u < u_input.a.x, true, true, true), vec4<bool>(false, arg_0.x == 1548f, false, all(vec4<bool>(true, false, false, false))), _wgslsmith_f_op_f32(ceil(-1469f)) == 793f), vec4<bool>(0u != u_input.a.x, true, true, _wgslsmith_f_op_f32(1217f + _wgslsmith_f_op_f32(exp2(arg_0.x))) > global0.x));
    var var_1 = Struct_5(_wgslsmith_div_f32(1015f, -979f), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.yx - _wgslsmith_f_op_vec2_f32(-arg_0.yz))), _wgslsmith_mult_i32(arg_1.x, arg_1.x), -212f, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0, arg_0)))), var_0.x), countOneBits(~(vec2<i32>(arg_1.x, arg_1.x) ^ arg_1.wz) & -vec2<i32>(8185i, 4860i)), Struct_4(Struct_3(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, 1i, 11054i), arg_1.zyw)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(arg_0.xx, global0.xx)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(752f, global0.x))), -2147483647i, -1000f, arg_0, false), 705f));
    let var_2 = !vec3<bool>(true & all(vec2<bool>(true, true)), ~(u_input.a.x ^ 4294967295u) == _wgslsmith_mod_u32(18470u, 34674u << (u_input.a.x % 32u)), true);
    let var_3 = -286f;
    return var_1.d.b;
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = !vec4<bool>(arg_0.e.e, func_3(Struct_2(u_input.a.wxz, arg_0.b, vec2<i32>(arg_0.c.x, 1i), Struct_1(arg_0.b.yy, arg_0.e.b, arg_0.b.x, vec3<f32>(-342f, 1147f, global0.x), arg_0.d.e), Struct_1(arg_0.b.yw, arg_0.c.x, 1636f, vec3<f32>(global0.x, -114f, global0.x), true)), _wgslsmith_f_op_f32(f32(-1f) * -125f), Struct_4(Struct_3(arg_0.d.b), arg_0.e, global0.x)) != arg_0.a.x, !any(vec2<bool>(true, true)), false);
    var_0 = vec4<bool>(false && all(var_0.zwy), var_0.x, !any(select(vec3<bool>(var_0.x, arg_0.e.e, false), var_0.yyx, arg_0.d.e)), false);
    var var_1 = global0.x;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * 199f) - global0.x) + 512f), any(var_0.zxz))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-818f + arg_0.b.x)))))), 825f, _wgslsmith_f_op_f32(-arg_0.b.x));
    var_1 = global0.x;
    return Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_2(vec3<f32>(arg_0.b.x, 799f, arg_0.b.x), vec4<i32>(arg_0.c.x, 2147483647i, 1908i, -1i)).d.yx * var_2.xz))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1155f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -470f)))), select(-53333i, arg_0.d.b, true), _wgslsmith_f_op_f32(-1443f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(517f, -1000f) + _wgslsmith_f_op_f32(var_2.x - var_2.x)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, arg_0.d.a.x)) + -1080f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(arg_0.d.d.x)))), _wgslsmith_f_op_f32(step(arg_0.b.x, -416f))), any(select(var_0.wy, var_0.xx, arg_0.e.e)));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec4<bool>) -> Struct_4 {
    var var_0 = u_input.a.xx;
    var_0 = _wgslsmith_mult_vec2_u32(firstTrailingBit(select(firstTrailingBit(vec2<u32>(4294967295u, 85743u)), ~vec2<u32>(1u, 1u), vec2<bool>(all(arg_2.zz), false))), vec2<u32>(u_input.a.x, ~(~(var_0.x | 35792u))));
    var var_1 = firstTrailingBit(_wgslsmith_add_i32(abs(~(i32(-1i) * -10329i)), arg_0.b));
    var var_2 = ~vec2<i32>(2147483647i, _wgslsmith_div_i32(func_2(arg_0.d, -vec4<i32>(arg_0.b, -81422i, 2147483647i, -2147483647i)).b, ~arg_0.b));
    var var_3 = !(!(!arg_2));
    return Struct_4(Struct_3(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_0.b, 4573i), ~arg_1)), Struct_1(vec2<f32>(global0.x, -1413f), 0i & ~var_2.x, _wgslsmith_f_op_f32(-global0.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-294f))), global0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.x * -926f), _wgslsmith_f_op_f32(global0.x + 1128f)))), any(select(arg_2, vec4<bool>(true, true, true, true), true))), func_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-387f * -537f) + _wgslsmith_f_op_f32(arg_0.c + -1019f)), 1372f, global0.x), -vec4<i32>(_wgslsmith_add_i32(-36453i, 16072i), reverseBits(arg_0.b), firstLeadingBit(30497i), var_2.x)).a.x);
}

fn func_1() -> Struct_3 {
    let var_0 = vec2<i32>(~(~(-2147483647i)), 25423i);
    var var_1 = Struct_4(Struct_3(48802i), Struct_1(_wgslsmith_f_op_vec2_f32(round(global0.yy)), ~(-var_0.x) | -var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -662f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(766f, global0.x, -635f), vec3<f32>(497f, global0.x, global0.x), true)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-923f, global0.x, -130f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-141f, global0.x, -863f), vec3<f32>(1990f, global0.x, -810f), true)))), false), -1249f);
    let var_2 = vec2<bool>(false, true);
    let var_3 = _wgslsmith_f_op_f32(round(-739f));
    var_1 = func_5(func_4(Struct_2(~_wgslsmith_div_vec3_u32(u_input.a.zxz, u_input.a.yxy), vec4<f32>(var_1.c, _wgslsmith_f_op_f32(584f + var_3), _wgslsmith_f_op_f32(round(153f)), _wgslsmith_f_op_f32(ceil(-576f))), -(~vec2<i32>(var_0.x, var_0.x)), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.c, global0.x, 1136f) - var_1.b.d), vec4<i32>(var_0.x, -26105i, 6230i, var_0.x)), var_1.b)), _wgslsmith_div_vec3_i32(vec3<i32>(abs(-2147483647i), countOneBits(~(-1i)), -var_0.x), vec3<i32>(1i, ~var_0.x, var_0.x)), vec4<bool>(any(var_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.c)) - global0.x) <= _wgslsmith_f_op_f32(-638f - _wgslsmith_f_op_f32(-var_3)), var_2.x, false));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(953f * 278f), global0.x), global0.x), 773f));
    let var_0 = 2147483647i;
    var var_1 = func_1();
    let var_2 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(-global0.x)), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_div_f32(-313f, global0.x), _wgslsmith_f_op_f32(global0.x - -1078f))), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(7787i, var_0), var_0), _wgslsmith_sub_i32(-45296i, ~(-1i)), -_wgslsmith_add_i32(16400i, var_0), _wgslsmith_add_i32(var_1.a, -var_0))), firstTrailingBit(abs(-vec2<i32>(-6154i, var_1.a))), func_5(func_5(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 814f)), 2226i, 1453f, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, global0.x, -1046f))), var_0 >= var_0), ~countOneBits(vec3<i32>(var_0, -1i, var_1.a)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(false, true, false, true), true)).b, ~vec3<i32>(var_1.a, var_0, _wgslsmith_add_i32(0i, -2591i)), vec4<bool>(func_4(Struct_2(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec4<f32>(756f, global0.x, global0.x, 665f), vec2<i32>(var_1.a, 0i), Struct_1(vec2<f32>(-413f, -197f), -6981i, global0.x, vec3<f32>(-1000f, global0.x, global0.x), true), Struct_1(global0.xx, var_0, global0.x, vec3<f32>(global0.x, global0.x, 425f), false))).e, true, select(true, false, true), !any(vec3<bool>(false, true, true)))));
    var var_3 = !vec2<bool>(func_4(Struct_2(vec3<u32>(4294967295u, 24595u, u_input.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 595f, var_2.d.c, var_2.a)), var_2.c | var_2.c, func_5(var_2.b, vec3<i32>(var_2.b.b, 1i, var_2.b.b), vec4<bool>(var_2.d.b.e, false, false, false)).b, Struct_1(vec2<f32>(global0.x, -272f), -3316i, -619f, var_2.b.d, var_2.b.e))).e, true);
    var_3 = vec2<bool>(any(vec3<bool>(!var_2.d.b.e, var_2.c.x != var_0, true)) == var_2.b.e, false);
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.b.c, var_2.b.c, global0.x, -912f), vec4<f32>(var_2.b.c, global0.x, 1000f, global0.x), vec4<bool>(true, var_2.b.e, var_3.x, false))))))));
    var_1 = var_2.d.a;
    let var_5 = var_2.b.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~(~16727u), u_input.a.x), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(188f, _wgslsmith_f_op_f32(f32(-1f) * -350f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.b.c))))), global0.x, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(var_2.b.d, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2405f), _wgslsmith_f_op_f32(680f - var_4.x), _wgslsmith_f_op_f32(-var_2.b.c)))))), 1u);
}

