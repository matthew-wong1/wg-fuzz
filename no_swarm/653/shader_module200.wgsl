struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: array<bool, 23>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_4) -> f32 {
    global0 = array<Struct_1, 13>();
    global0 = array<Struct_1, 13>();
    global1 = array<bool, 23>();
    var var_0 = -9176i;
    let var_1 = arg_0.c;
    return arg_0.c.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: u32, arg_3: i32) -> u32 {
    global0 = array<Struct_1, 13>();
    var var_0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(select(-1996f, 1000f, true)), _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(arg_1, 4217u), 13u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1689f)), Struct_4(vec3<bool>(global1[_wgslsmith_index_u32(8422u, 23u)], global1[_wgslsmith_index_u32(u_input.a, 23u)], global1[_wgslsmith_index_u32(14697u, 23u)]), any(vec4<bool>(false, global1[_wgslsmith_index_u32(37898u, 23u)], global1[_wgslsmith_index_u32(arg_1, 23u)], global1[_wgslsmith_index_u32(1u, 23u)])), countOneBits(1u)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(864f, 1000f))))), vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-290f * _wgslsmith_f_op_f32(f32(-1f) * -598f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1600f)))))));
    let var_1 = global0[_wgslsmith_index_u32(arg_1 << (~_wgslsmith_sub_u32(4294967295u >> (_wgslsmith_div_u32(u_input.e.x, 1u) % 32u), _wgslsmith_div_u32(~u_input.a, ~arg_1)) % 32u), 13u)];
    let var_2 = Struct_4(vec3<bool>(select(any(var_1.b), global1[_wgslsmith_index_u32(~(~68327u), 23u)], false), var_1.b.x, !var_1.b.x), !(max(-2147483647i >> (0u % 32u), arg_0.x) >= 2147483647i), _wgslsmith_add_u32(~57347u, countOneBits(1u)));
    global0 = array<Struct_1, 13>();
    return ~_wgslsmith_mult_u32(~1u, arg_2);
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_4 {
    global1 = array<bool, 23>();
    global1 = array<bool, 23>();
    let var_0 = Struct_3(global0[_wgslsmith_index_u32(8009u, 13u)]);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_0.a.a.x))))) + var_0.a.c.x));
    global1 = array<bool, 23>();
    return Struct_4(vec3<bool>(!select(-2147483647i > arg_3.x, true, global1[_wgslsmith_index_u32(~u_input.a, 23u)]), (4565i | (-2147483647i ^ arg_0)) != arg_3.x, global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 41613u, 4618u, 0u), vec4<u32>(arg_1, arg_1, 4294967295u, arg_1)), 23u)]), var_0.a.b.x, _wgslsmith_mod_u32(arg_1, 0u) >> (1u % 32u));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_4, arg_3: i32) -> Struct_3 {
    global0 = array<Struct_1, 13>();
    let var_0 = _wgslsmith_dot_vec4_i32(~(-vec4<i32>(1i, arg_3, 2147483647i, 1i)), -vec4<i32>(arg_3, _wgslsmith_div_i32(47050i, _wgslsmith_sub_i32(arg_3, 2147483647i)), i32(-1i) * -1i, countOneBits(~1i)));
    let var_1 = -1099f;
    global0 = array<Struct_1, 13>();
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(arg_1.e.c.wyz + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-860f, 2451f, -596f), arg_1.d.c.zwy))), vec2<bool>(true, true), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + 148f)), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(max(arg_1.b.a.x, 466f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.b.a.x))))));
    return Struct_3(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1573f, var_1, -542f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-473f, -427f, var_1))), vec3<f32>(var_2.a.a.x, 396f, _wgslsmith_f_op_f32(ceil(arg_1.e.a.x)))), arg_1.d.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1793f, var_1, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-2476f + 1000f)))));
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: bool) -> u32 {
    global0 = array<Struct_1, 13>();
    let var_0 = !vec4<bool>(!global1[_wgslsmith_index_u32(4294967295u, 23u)], ~u_input.a <= select(15165u, max(15775u, 0u), true), arg_2, true);
    global1 = array<bool, 23>();
    var var_1 = func_5(func_4(u_input.b, _wgslsmith_add_u32(~func_2(vec3<i32>(22485i, 9841i, u_input.c), 6004u, 1u, u_input.d), 1u), Struct_2(vec3<bool>(select(true, arg_2, var_0.x), !arg_2, !var_0.x), Struct_1(vec3<f32>(148f, -829f, -1206f), !vec2<bool>(arg_2, global1[_wgslsmith_index_u32(u_input.a, 23u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2195f, arg_0, arg_0, arg_0) + vec4<f32>(262f, 891f, arg_0, -605f))), var_0.x, Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, -747f, -1476f), vec3<f32>(-1826f, arg_0, arg_0), vec3<bool>(arg_2, true, global1[_wgslsmith_index_u32(22203u, 23u)]))), !var_0.wy, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, arg_0, 1404f), vec4<f32>(956f, arg_0, arg_0, arg_0), true))), Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0, 1981f, arg_0), vec3<f32>(-532f, -873f, 488f))), select(var_0.yx, var_0.zz, vec2<bool>(true, false)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, 339f, -469f, arg_0))))), _wgslsmith_mod_vec3_i32(abs(-vec3<i32>(2147483647i, u_input.c, 22488i)), vec3<i32>(-54851i, -u_input.d, u_input.b & -52028i))), Struct_2(var_0.yxy, Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-919f, 253f, 779f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -185f, -367f))), vec2<bool>(true, !global1[_wgslsmith_index_u32(u_input.e.x, 23u)]), vec4<f32>(arg_0, _wgslsmith_div_f32(arg_0, arg_0), 253f, _wgslsmith_f_op_f32(select(arg_0, 1022f, true)))), var_0.x, Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0, arg_0, -1000f), vec3<f32>(-1480f, 526f, arg_0))), vec3<f32>(1251f, arg_0, 853f))), !vec2<bool>(var_0.x, global1[_wgslsmith_index_u32(4294967295u, 23u)]), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-630f, 1624f, 434f, arg_0), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-150f, arg_0, -878f, -1179f)))))), global0[_wgslsmith_index_u32(1u, 13u)]), Struct_4(vec3<bool>(any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 23u)], arg_2, var_0.x, false)), all(select(var_0.wy, vec2<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 23u)], arg_2), global1[_wgslsmith_index_u32(u_input.a, 23u)])), var_0.x), all(vec3<bool>(true, true, true)), _wgslsmith_dot_vec3_u32(~reverseBits(u_input.e.xzw), u_input.e.yzw)), min(-21154i, -25520i));
    var var_2 = vec2<i32>(u_input.d, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(select(vec2<i32>(2147483647i, -12239i), vec2<i32>(0i, arg_1.x), var_0.xy), ~vec2<i32>(1i, arg_1.x)), _wgslsmith_sub_i32(_wgslsmith_div_i32(arg_1.x, arg_1.x), -arg_1.x)), ~25283i, _wgslsmith_add_i32(u_input.b, ~_wgslsmith_clamp_i32(u_input.c, 1i, arg_1.x))));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(~abs(17681u) | (_wgslsmith_sub_u32(u_input.a, u_input.a) << (1u % 32u)), 32242u), _wgslsmith_mult_vec2_u32(u_input.e.xw, select(u_input.e.wz, countOneBits(u_input.e.ww), !(var_0.x && false))));
}

fn func_6(arg_0: vec4<f32>, arg_1: vec4<bool>) -> Struct_3 {
    var var_0 = any(vec4<bool>(false, !func_5(Struct_4(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 23u)], true, global1[_wgslsmith_index_u32(u_input.e.x, 23u)]), global1[_wgslsmith_index_u32(1u, 23u)], u_input.a), Struct_2(vec3<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 23u)], false, true), Struct_1(vec3<f32>(-1000f, -432f, 781f), arg_1.zz, arg_0), true, Struct_1(vec3<f32>(arg_0.x, arg_0.x, 407f), vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 23u)]), vec4<f32>(343f, arg_0.x, arg_0.x, -1000f)), global0[_wgslsmith_index_u32(u_input.a, 13u)]), Struct_4(arg_1.zzx, arg_1.x, 2768u), countOneBits(u_input.d)).a.b.x, true, true));
    global0 = array<Struct_1, 13>();
    global1 = array<bool, 23>();
    var var_1 = select(vec3<u32>(_wgslsmith_div_u32(u_input.a, ~16244u), _wgslsmith_add_u32(reverseBits(u_input.a), ~u_input.e.x), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), countOneBits(u_input.e.xy))) & ~(firstLeadingBit(vec3<u32>(27164u, u_input.a, u_input.a)) >> (abs(u_input.e.zwx) % vec3<u32>(32u))), vec3<u32>(~35234u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(~u_input.a, _wgslsmith_mod_u32(17286u, 28441u)), _wgslsmith_div_u32(~u_input.a, u_input.e.x & u_input.e.x), ~1u), 1u), select(!(!vec3<bool>(arg_1.x, false, global1[_wgslsmith_index_u32(14223u, 23u)])), vec3<bool>(all(vec3<bool>(true, true, global1[_wgslsmith_index_u32(19988u, 23u)])), true, all(vec4<bool>(arg_1.x, global1[_wgslsmith_index_u32(29498u, 23u)], global1[_wgslsmith_index_u32(u_input.e.x, 23u)], true))), vec3<bool>(all(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 23u)], arg_1.x, true)), select(global1[_wgslsmith_index_u32(func_2(vec3<i32>(0i, -18014i, u_input.d), 29626u, u_input.e.x, 25911i), 23u)], true, global1[_wgslsmith_index_u32(18063u, 23u)] || true), !any(vec4<bool>(global1[_wgslsmith_index_u32(37046u, 23u)], global1[_wgslsmith_index_u32(40435u, 23u)], true, true)))));
    let var_2 = _wgslsmith_clamp_u32(var_1.x, var_1.x, 0u);
    return Struct_3(global0[_wgslsmith_index_u32(45502u, 13u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 13>();
    global0 = array<Struct_1, 13>();
    var var_0 = func_6(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-239f, -826f, 298f, -1025f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-3111f, -1000f, -184f, -1043f)), true))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2265f, -558f, -180f, 1058f))) - vec4<f32>(-192f, 357f, -422f, _wgslsmith_f_op_f32(round(533f))))), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a << (_wgslsmith_div_u32(u_input.a, u_input.a | 1u) % 32u), 23u)], !(!global1[_wgslsmith_index_u32(14717u, 23u)]), global1[_wgslsmith_index_u32(~u_input.a | func_1(-1173f, vec2<i32>(u_input.c, -1i), !global1[_wgslsmith_index_u32(1u, 23u)]), 23u)], true));
    global1 = array<bool, 23>();
    var var_1 = func_4(_wgslsmith_mult_i32(u_input.d, _wgslsmith_clamp_i32(u_input.d, 51565i, ~1i)), ~u_input.a, Struct_2(!(!func_4(u_input.c, 4294967295u, Struct_2(vec3<bool>(global1[_wgslsmith_index_u32(62758u, 23u)], true, false), Struct_1(vec3<f32>(var_0.a.a.x, -112f, var_0.a.a.x), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 23u)]), vec4<f32>(var_0.a.a.x, var_0.a.c.x, var_0.a.c.x, var_0.a.c.x)), true, Struct_1(var_0.a.a, var_0.a.b, var_0.a.c), Struct_1(vec3<f32>(var_0.a.a.x, 410f, var_0.a.a.x), var_0.a.b, var_0.a.c)), vec3<i32>(u_input.c, u_input.c, u_input.d)).a), Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a.c.xyw * _wgslsmith_f_op_vec3_f32(-var_0.a.c.xww)), func_4(0i, u_input.e.x, Struct_2(vec3<bool>(var_0.a.b.x, false, var_0.a.b.x), Struct_1(var_0.a.c.yzz, var_0.a.b, var_0.a.c), global1[_wgslsmith_index_u32(20394u, 23u)], global0[_wgslsmith_index_u32(0u, 13u)], var_0.a), _wgslsmith_div_vec3_i32(vec3<i32>(-58329i, u_input.d, u_input.b), vec3<i32>(-1i, u_input.d, -30831i))).a.yx, var_0.a.c), func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a.c)), select(select(vec4<bool>(global1[_wgslsmith_index_u32(11538u, 23u)], true, global1[_wgslsmith_index_u32(1u, 23u)], true), vec4<bool>(true, var_0.a.b.x, var_0.a.b.x, global1[_wgslsmith_index_u32(u_input.a, 23u)]), var_0.a.b.x), select(vec4<bool>(var_0.a.b.x, var_0.a.b.x, global1[_wgslsmith_index_u32(u_input.a, 23u)], global1[_wgslsmith_index_u32(4294967295u, 23u)]), vec4<bool>(var_0.a.b.x, true, global1[_wgslsmith_index_u32(u_input.a, 23u)], global1[_wgslsmith_index_u32(4294967295u, 23u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 23u)], var_0.a.b.x, global1[_wgslsmith_index_u32(u_input.e.x, 23u)])), false | var_0.a.b.x)).a.b.x, func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a.c)), vec4<bool>(global1[_wgslsmith_index_u32(~u_input.e.x, 23u)], var_0.a.b.x, u_input.a < 55040u, true)).a, Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(1093f, 1000f, 2186f), vec3<f32>(var_0.a.c.x, var_0.a.a.x, var_0.a.a.x)))), var_0.a.b, vec4<f32>(var_0.a.c.x, _wgslsmith_f_op_f32(step(var_0.a.a.x, 2354f)), var_0.a.a.x, _wgslsmith_f_op_f32(ceil(640f))))), -(~(~vec3<i32>(2496i, -15430i, u_input.d))));
    let var_2 = _wgslsmith_f_op_f32(-var_0.a.c.x);
    var var_3 = var_0.a.a;
    var var_4 = var_0.a.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.c);
}

