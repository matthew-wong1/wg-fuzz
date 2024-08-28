struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
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

var<private> global0: i32 = i32(-2147483648);

var<private> global1: array<u32, 11> = array<u32, 11>(0u, 70653u, 30505u, 54280u, 4294967295u, 30159u, 34449u, 47531u, 4294967295u, 37734u, 28870u);

var<private> global2: array<bool, 21> = array<bool, 21>(false, false, false, true, false, false, true, false, false, true, true, false, false, false, true, false, false, false, true, true, false);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool) -> bool {
    global1 = array<u32, 11>();
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(173f, -859f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-769f, 1310f), vec2<f32>(-1000f, 148f), arg_1))), vec2<f32>(-634f, 836f), !vec2<bool>(arg_1, false))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1293f, -1306f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-255f, 2248f, false)) - 1535f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 812f))))));
    let var_1 = Struct_1(u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + -873f))), arg_1, select(true, true, any(arg_0) | !(arg_1 != global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 11u)], 11u)], 21u)])), u_input.a.x);
    let var_2 = all(vec2<bool>(true, true));
    let var_3 = Struct_4(Struct_3(52653u, _wgslsmith_mod_u32(min(_wgslsmith_add_u32(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 11u)], 11u)]), ~8708u), select(~1u, ~4294967295u, arg_0.x)), vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.b)), -1560f, 1f)), Struct_1(-4120i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1360f - var_1.b)), arg_0.x, all(vec4<bool>(true, all(arg_0.yz), all(vec4<bool>(var_2, var_1.d, arg_1, arg_0.x)), var_2 & true)), var_1.e), Struct_1(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(~11340i, u_input.a.x, ~0i), _wgslsmith_mult_i32(abs(1i), var_1.e), _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(-1i, u_input.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(f32(-1f) * -111f)) - _wgslsmith_f_op_f32(-1891f - 2206f)), (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(17830u, 11u)], 11u)], 11u)] >> ((1u << (0u % 32u)) % 32u)) >= (_wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 11u)], 11u)], 2078u) & 1u), true, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(var_1.a, var_1.a), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -1i, -40381i, 34436i), vec4<i32>(910i, u_input.a.x, 87765i, -22551i)), -28597i, -32955i), vec4<i32>(-1i) * -vec4<i32>(var_1.a, u_input.b, -16372i, var_1.e))), Struct_2(Struct_1(u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b * 951f) * _wgslsmith_f_op_f32(select(var_0.x, -1130f, true))), all(arg_0.yw), true, u_input.a.x), vec3<bool>(var_2, true, !all(vec4<bool>(true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(35708u, 11u)], 11u)], 21u)], var_2, true)))));
    return arg_1;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_4) -> Struct_4 {
    global2 = array<bool, 21>();
    let var_0 = Struct_2(Struct_1(u_input.a.x, arg_1.b.b, false, -41647i > u_input.b, max(firstTrailingBit(20582i) ^ (-48364i & u_input.a.x), 1i)), select(vec3<bool>(!global2[_wgslsmith_index_u32(~1u, 21u)], true, true), vec3<bool>(global2[_wgslsmith_index_u32(arg_1.a.b, 21u)] && false, arg_1.b.d, true), arg_1.d.b));
    global1 = array<u32, 11>();
    global0 = _wgslsmith_mult_i32((abs(1i) ^ _wgslsmith_clamp_i32(-1i, _wgslsmith_sub_i32(-5710i, var_0.a.e), -34162i)) >> (global1[_wgslsmith_index_u32(abs(max(arg_1.a.b, 68543u)), 11u)] % 32u), arg_1.b.a);
    return Struct_4(arg_1.a, arg_1.b, Struct_1(~2147483647i, _wgslsmith_f_op_f32(-arg_1.b.b), var_0.b.x, func_3(select(select(vec4<bool>(false, global2[_wgslsmith_index_u32(48547u, 21u)], arg_1.c.d, true), vec4<bool>(true, false, var_0.a.c, false), var_0.a.c), !vec4<bool>(true, var_0.a.d, false, arg_1.b.c), !var_0.b.x), global2[_wgslsmith_index_u32(1u, 21u)]), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(select(vec4<i32>(-2147483647i, 28254i, arg_1.b.a, 23110i), vec4<i32>(arg_1.d.a.a, arg_1.d.a.e, var_0.a.e, arg_1.d.a.a), true), vec4<i32>(arg_1.b.e, 0i, -1i, var_0.a.a) >> (vec4<u32>(global1[_wgslsmith_index_u32(1u, 11u)], arg_0.x, 16080u, 12328u) % vec4<u32>(32u))), vec4<i32>(~2147483647i, 1i, 1i, u_input.b))), Struct_2(Struct_1(var_0.a.e, _wgslsmith_f_op_f32(1f * arg_1.a.c.x), false, arg_1.c.c, u_input.b), vec3<bool>(true, -62631i != (59232i | var_0.a.a), false == any(vec4<bool>(global2[_wgslsmith_index_u32(arg_1.a.a, 21u)], global2[_wgslsmith_index_u32(arg_0.x, 21u)], true, false)))));
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: Struct_1, arg_3: Struct_4) -> Struct_3 {
    let var_0 = abs(arg_0.a.b << (arg_3.a.a % 32u));
    let var_1 = arg_0.c.d;
    let var_2 = vec4<bool>(!arg_2.d, select(all(arg_3.d.b.xx), true, 46762i > (arg_2.e & select(arg_0.d.a.e, arg_0.b.e, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0, 11u)], 21u)]))), _wgslsmith_div_f32(224f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(182f)) - -1144f)) <= arg_0.b.b, !global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(34931u, var_0, 4294967295u) ^ vec3<u32>(var_0, arg_0.a.b, 57502u), ~vec3<u32>(arg_1, 28245u, var_0)), 21u)]);
    var var_3 = Struct_3(~abs(min(arg_1, 1u)), 4294967295u & _wgslsmith_clamp_u32(arg_0.a.b, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_1, arg_0.a.a, 31058u), vec4<u32>(0u, 1u, arg_0.a.a, var_0)), 11u)], _wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_1, arg_3.a.b), 17261u)), vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_2.b)), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_3.c.b)) + -630f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.b * -899f), 163f))));
    let var_4 = countOneBits(-arg_2.a);
    return Struct_3(0u >> (_wgslsmith_sub_u32(var_0, _wgslsmith_add_u32(_wgslsmith_add_u32(21928u, 1u), arg_3.a.a)) % 32u), var_0, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.c), _wgslsmith_f_op_vec3_f32(var_3.c - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(737f, arg_0.a.c.x, arg_3.a.c.x))), _wgslsmith_f_op_vec3_f32(round(arg_3.a.c))))));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: vec3<f32>) -> Struct_2 {
    global1 = array<u32, 11>();
    global2 = array<bool, 21>();
    var var_0 = 3007u;
    return Struct_2(func_2(max(vec2<u32>(0u << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.a, 11u)], 11u)] % 32u), ~arg_0.a), vec2<u32>(arg_0.a, ~global1[_wgslsmith_index_u32(arg_0.b, 11u)])), Struct_4(func_2(vec2<u32>(arg_0.b, global1[_wgslsmith_index_u32(62579u, 11u)]), Struct_4(Struct_3(4294967295u, global1[_wgslsmith_index_u32(10148u, 11u)], arg_1), Struct_1(u_input.a.x, 468f, arg_2.x, arg_2.x, 11448i), Struct_1(1i, arg_1.x, arg_2.x, false, u_input.b), Struct_2(Struct_1(u_input.b, -152f, true, false, u_input.a.x), vec3<bool>(true, arg_2.x, global2[_wgslsmith_index_u32(52552u, 21u)])))).a, Struct_1(-u_input.b, func_4(Struct_4(arg_0, Struct_1(1i, 2132f, false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 11u)], 11u)], 21u)], -2147483647i), Struct_1(u_input.b, arg_3.x, false, global2[_wgslsmith_index_u32(arg_0.a, 21u)], u_input.b), Struct_2(Struct_1(16493i, arg_1.x, true, true, -2147483647i), arg_2)), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.a, 11u)], 11u)], Struct_1(2147483647i, 398f, true, arg_2.x, u_input.a.x), Struct_4(Struct_3(77821u, global1[_wgslsmith_index_u32(22885u, 11u)], vec3<f32>(-1866f, 404f, -1000f)), Struct_1(u_input.b, 1059f, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13808u, 11u)], 21u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(12837u, 11u)], 21u)], u_input.b), Struct_1(-21080i, 1539f, arg_2.x, true, u_input.a.x), Struct_2(Struct_1(u_input.a.x, -958f, global2[_wgslsmith_index_u32(arg_0.a, 21u)], false, u_input.a.x), arg_2))).c.x, global2[_wgslsmith_index_u32(1u, 21u)], false, u_input.a.x), Struct_1(u_input.a.x, -1818f, arg_2.x, arg_2.x, -1i), func_2(vec2<u32>(24481u, 66742u), Struct_4(arg_0, Struct_1(u_input.b, arg_3.x, arg_2.x, true, 18492i), Struct_1(1i, arg_1.x, false, true, 52292i), Struct_2(Struct_1(1296i, 1939f, arg_2.x, false, u_input.b), arg_2))).d)).c, select(func_2(max(~vec2<u32>(arg_0.b, arg_0.a), vec2<u32>(0u, arg_0.b)), func_2(abs(vec2<u32>(arg_0.a, 1u)), Struct_4(arg_0, Struct_1(u_input.b, arg_0.c.x, true, global2[_wgslsmith_index_u32(43991u, 21u)], u_input.a.x), Struct_1(u_input.a.x, arg_0.c.x, true, global2[_wgslsmith_index_u32(14899u, 21u)], -4092i), Struct_2(Struct_1(u_input.a.x, arg_1.x, true, true, -1i), vec3<bool>(true, arg_2.x, false))))).d.b, !vec3<bool>(!arg_2.x, arg_2.x, true), vec3<bool>(_wgslsmith_f_op_f32(arg_0.c.x * arg_1.x) == _wgslsmith_f_op_f32(146f * arg_1.x), all(!vec4<bool>(arg_2.x, true, global2[_wgslsmith_index_u32(19371u, 21u)], true)), false)));
}

fn func_6(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: bool, arg_3: f32) -> Struct_1 {
    global0 = ~_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-firstTrailingBit(vec4<i32>(0i, arg_0.a.a, -40145i, arg_0.a.a)), countOneBits(vec4<i32>(-5602i, 2147483647i, arg_0.a.e, arg_0.a.e) ^ vec4<i32>(arg_0.a.e, 2147483647i, -2147483647i, arg_0.a.a)), _wgslsmith_sub_vec4_i32(~vec4<i32>(2147483647i, 1i, 0i, arg_0.a.a), vec4<i32>(arg_0.a.a, arg_0.a.e, u_input.b, arg_0.a.e))), select(~vec4<i32>(-1i, 2147483647i, arg_0.a.e, arg_0.a.a), max(~vec4<i32>(-10393i, -18438i, arg_0.a.e, arg_0.a.a), vec4<i32>(0i, -9292i, 8473i, -1i) & vec4<i32>(2147483647i, 0i, u_input.a.x, -27704i)), !arg_0.a.c));
    let var_0 = Struct_1(_wgslsmith_mult_i32(0i, _wgslsmith_mod_i32(i32(-1i) * -74678i, u_input.b >> (0u % 32u))) | 32724i, 525f, _wgslsmith_div_u32(_wgslsmith_add_u32(0u, global1[_wgslsmith_index_u32(4294967295u, 11u)]) >> (~1u % 32u), 67854u) < global1[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(11702u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(46553u, 11u)], 11u)])), 11u)], arg_0.b.x, abs(i32(-1i) * -(~u_input.b)));
    global1 = array<u32, 11>();
    global1 = array<u32, 11>();
    var var_1 = func_2(vec2<u32>(0u, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~70535u, 11u)], 11u)], 27463u, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(1u, 11u)], 0u)), 11u)] | reverseBits(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3135u, 11u)], 11u)])), func_2(firstTrailingBit(~(~vec2<u32>(global1[_wgslsmith_index_u32(40962u, 11u)], 1u))), func_2(vec2<u32>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(25353u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(21616u, 11u)], 11u)]), 11u)], min(global1[_wgslsmith_index_u32(1u, 11u)], 21068u)), func_2(~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(41886u, 11u)], 11u)]), func_2(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(44151u, 11u)], 11u)], 0u), Struct_4(Struct_3(global1[_wgslsmith_index_u32(4294967295u, 11u)], 0u, vec3<f32>(arg_1.x, -1126f, -780f)), Struct_1(2147483647i, arg_1.x, false, true, 0i), arg_0.a, arg_0)))))).a;
    return func_5(Struct_3(countOneBits(var_1.b), ~var_1.b, vec3<f32>(_wgslsmith_f_op_f32(floor(340f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 1146f)), 1f)), vec3<f32>(1f, 1f, 1f), !vec3<bool>(arg_2, true, arg_0.a.c), vec3<f32>(1514f, _wgslsmith_f_op_f32(1867f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -184f))), _wgslsmith_f_op_f32(f32(-1f) * -1839f))).a;
}

fn func_1() -> Struct_2 {
    let var_0 = func_6(func_5(func_4(func_2(select(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(63648u, 11u)], 11u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 11u)], 11u)], 11u)], 11u)]), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 11u)], 11u)], 11u)], 11u)], global1[_wgslsmith_index_u32(11570u, 11u)]), vec2<bool>(true, false)), Struct_4(Struct_3(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 11u)], vec3<f32>(592f, -1000f, 820f)), Struct_1(u_input.b, 458f, true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5289u, 11u)], 11u)], 21u)], u_input.a.x), Struct_1(u_input.a.x, 483f, global2[_wgslsmith_index_u32(27373u, 21u)], global2[_wgslsmith_index_u32(4294967295u, 21u)], u_input.a.x), Struct_2(Struct_1(37631i, -1460f, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 11u)], 21u)], false, 1i), vec3<bool>(global2[_wgslsmith_index_u32(35373u, 21u)], global2[_wgslsmith_index_u32(4294967295u, 21u)], true)))), global1[_wgslsmith_index_u32(4294967295u, 11u)], func_2(vec2<u32>(11228u, 0u), Struct_4(Struct_3(43602u, global1[_wgslsmith_index_u32(1u, 11u)], vec3<f32>(-203f, -424f, 1000f)), Struct_1(2147483647i, 787f, false, true, -17426i), Struct_1(10720i, 833f, false, true, -1i), Struct_2(Struct_1(2147483647i, -510f, false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 11u)], 21u)], -94215i), vec3<bool>(false, false, false)))).b, func_2(_wgslsmith_mod_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(44262u, 11u)], global1[_wgslsmith_index_u32(1u, 11u)]), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(98901u, 11u)], 11u)], 11u)], 0u)), Struct_4(Struct_3(1u, global1[_wgslsmith_index_u32(1u, 11u)], vec3<f32>(-916f, 358f, -1836f)), Struct_1(u_input.a.x, -455f, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 11u)], 21u)], false, u_input.b), Struct_1(u_input.b, 943f, global2[_wgslsmith_index_u32(11290u, 21u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(31607u, 11u)], 21u)], u_input.a.x), Struct_2(Struct_1(u_input.a.x, 1000f, false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 11u)], 21u)], -12273i), vec3<bool>(true, false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 11u)], 21u)]))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1062f, 427f, 114f)) * func_4(Struct_4(Struct_3(4294967295u, 96724u, vec3<f32>(-734f, -1000f, 770f)), Struct_1(2031i, 452f, global2[_wgslsmith_index_u32(4294967295u, 21u)], false, u_input.b), Struct_1(u_input.b, -1000f, true, global2[_wgslsmith_index_u32(0u, 21u)], u_input.b), Struct_2(Struct_1(u_input.a.x, -847f, false, false, u_input.a.x), vec3<bool>(global2[_wgslsmith_index_u32(0u, 21u)], true, false))), 4294967295u, Struct_1(-49874i, 1698f, false, false, u_input.b), Struct_4(Struct_3(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 11u)], 11u)], global1[_wgslsmith_index_u32(9343u, 11u)], vec3<f32>(-1338f, -205f, 1333f)), Struct_1(-2147483647i, -1563f, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(87621u, 11u)], 11u)], 21u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(26397u, 11u)], 21u)], 6719i), Struct_1(u_input.a.x, 1121f, false, global2[_wgslsmith_index_u32(0u, 21u)], u_input.a.x), Struct_2(Struct_1(u_input.a.x, -738f, global2[_wgslsmith_index_u32(1u, 21u)], global2[_wgslsmith_index_u32(1u, 21u)], 33943i), vec3<bool>(true, false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 11u)], 21u)])))).c))), !vec3<bool>(!global2[_wgslsmith_index_u32(63288u, 21u)], func_3(vec4<bool>(global2[_wgslsmith_index_u32(79661u, 21u)], global2[_wgslsmith_index_u32(5034u, 21u)], global2[_wgslsmith_index_u32(22907u, 21u)], global2[_wgslsmith_index_u32(8580u, 21u)]), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 11u)], 21u)]), true), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-829f, -1400f, 100f) - vec3<f32>(543f, 1032f, 778f)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1503f, -210f, 272f), vec3<f32>(-712f, -178f, 920f))))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1009f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(680f, 670f)))), -531f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1816f - -1276f), -594f, _wgslsmith_f_op_f32(f32(-1f) * -353f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1725f, 727f, -551f), vec3<f32>(214f, 374f, 786f), vec3<bool>(true, global2[_wgslsmith_index_u32(17895u, 21u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 11u)], 11u)], 11u)], 11u)], 21u)]))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1630f, 1000f, -593f), vec3<f32>(-1144f, -2017f, 570f)))))), func_2(vec2<u32>(global1[_wgslsmith_index_u32(1u, 11u)], func_4(func_2(vec2<u32>(1u, 4294967295u), Struct_4(Struct_3(global1[_wgslsmith_index_u32(16110u, 11u)], 7706u, vec3<f32>(-223f, -1472f, 294f)), Struct_1(u_input.a.x, 980f, true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(79896u, 11u)], 11u)], 21u)], 32951i), Struct_1(48612i, -354f, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 11u)], 21u)], global2[_wgslsmith_index_u32(0u, 21u)], u_input.a.x), Struct_2(Struct_1(u_input.b, 1000f, false, true, -24285i), vec3<bool>(true, global2[_wgslsmith_index_u32(7089u, 21u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22559u, 11u)], 21u)])))), 1u, Struct_1(u_input.b, 1418f, false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(77580u, 11u)], 21u)], -31162i), func_2(vec2<u32>(2230u, global1[_wgslsmith_index_u32(0u, 11u)]), Struct_4(Struct_3(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 11u)], 11u)], 11u)], vec3<f32>(634f, 668f, -163f)), Struct_1(49232i, 1649f, true, true, -43276i), Struct_1(-1i, -936f, true, global2[_wgslsmith_index_u32(83576u, 21u)], u_input.a.x), Struct_2(Struct_1(2147483647i, 152f, global2[_wgslsmith_index_u32(0u, 21u)], global2[_wgslsmith_index_u32(2990u, 21u)], 0i), vec3<bool>(false, true, false))))).b), func_2(~(vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(46412u, 11u)]) & vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(0u, 11u)])), func_2(min(vec2<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(56567u, 11u)], 11u)], 11u)], 11u)], 11u)]), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 11u)], 11u)], 11u)], 4294967295u)), func_2(vec2<u32>(1u, global1[_wgslsmith_index_u32(9029u, 11u)]), Struct_4(Struct_3(43756u, 0u, vec3<f32>(-580f, -1586f, -834f)), Struct_1(-1i, -1000f, false, true, u_input.a.x), Struct_1(u_input.b, -844f, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 11u)], 21u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 11u)], 11u)], 11u)], 11u)], 11u)], 21u)], 1i), Struct_2(Struct_1(-1i, -477f, global2[_wgslsmith_index_u32(44219u, 21u)], true, -17983i), vec3<bool>(true, true, false))))))).d.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -170f) * func_2(abs(vec2<u32>(0u, global1[_wgslsmith_index_u32(26638u, 11u)])), func_2(vec2<u32>(global1[_wgslsmith_index_u32(53220u, 11u)], 0u), Struct_4(Struct_3(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 11u)], 11u)], 0u, vec3<f32>(-131f, -709f, 569f)), Struct_1(2147483647i, -1000f, true, global2[_wgslsmith_index_u32(4193u, 21u)], -33152i), Struct_1(-26634i, 1232f, true, global2[_wgslsmith_index_u32(29467u, 21u)], u_input.a.x), Struct_2(Struct_1(u_input.a.x, -2658f, false, false, 2147483647i), vec3<bool>(global2[_wgslsmith_index_u32(6813u, 21u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 11u)], 11u)], 11u)], 21u)], global2[_wgslsmith_index_u32(3495u, 21u)]))))).d.a.b)));
    var var_1 = var_0.a > u_input.a.x;
    var var_2 = var_0;
    let var_3 = Struct_3(~_wgslsmith_dot_vec2_u32(~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(62730u, 11u)], 11u)], 131629u) ^ ~vec2<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 11u)], 11u)], 11u)]), ~vec2<u32>(global1[_wgslsmith_index_u32(95763u, 11u)], global1[_wgslsmith_index_u32(75002u, 11u)])), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22305u, 11u)], 11u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1361f, var_0.b, var_0.b), vec3<f32>(var_2.b, -425f, 368f))))))));
    global2 = array<bool, 21>();
    return Struct_2(Struct_1(_wgslsmith_clamp_i32(func_6(func_5(Struct_3(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_3.b, 11u)], 11u)], 11u)], 11u)], 11u)], global1[_wgslsmith_index_u32(19183u, 11u)], vec3<f32>(var_0.b, 1127f, 931f)), vec3<f32>(var_2.b, 2292f, var_2.b), vec3<bool>(var_2.c, var_0.d, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(68314u, 11u)], 21u)]), var_3.c), _wgslsmith_f_op_vec3_f32(-var_3.c), any(vec2<bool>(var_0.d, false)), _wgslsmith_f_op_f32(trunc(1047f))).e, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.a, var_2.a, -45243i, var_2.e), vec4<i32>(-44960i, var_2.e, var_0.e, var_2.e)), reverseBits(22476i)), func_4(func_2(firstLeadingBit(vec2<u32>(var_3.a, var_3.b)), func_2(vec2<u32>(var_3.b, var_3.a), Struct_4(Struct_3(var_3.a, 31873u, var_3.c), Struct_1(-2147483647i, var_2.b, var_2.d, true, -1i), Struct_1(var_0.a, -355f, var_2.c, false, var_0.a), Struct_2(Struct_1(var_2.e, var_3.c.x, true, true, 0i), vec3<bool>(var_0.d, var_2.c, var_2.c))))), global1[_wgslsmith_index_u32(~abs(global1[_wgslsmith_index_u32(6180u, 11u)]), 11u)], Struct_1(var_2.a, _wgslsmith_f_op_f32(floor(-720f)), true, true, _wgslsmith_div_i32(u_input.b, u_input.b)), func_2(_wgslsmith_sub_vec2_u32(vec2<u32>(var_3.b, var_3.a), vec2<u32>(4294967295u, var_3.b)), func_2(vec2<u32>(var_3.b, var_3.b), Struct_4(var_3, var_0, Struct_1(2147483647i, var_3.c.x, true, var_0.c, 47257i), Struct_2(Struct_1(1i, var_2.b, true, var_2.c, -1i), vec3<bool>(true, var_2.d, global2[_wgslsmith_index_u32(1655u, 21u)])))))).c.x, func_5(Struct_3(_wgslsmith_clamp_u32(4294967295u, var_3.a, 0u), ~global1[_wgslsmith_index_u32(var_3.b, 11u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(-229f, -252f, -504f))), _wgslsmith_f_op_vec3_f32(-var_3.c), func_2(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, global1[_wgslsmith_index_u32(144331u, 11u)]), vec2<u32>(1u, 4294967295u)), func_2(vec2<u32>(var_3.b, 106629u), Struct_4(var_3, var_0, Struct_1(-27183i, 586f, true, var_2.c, var_0.e), Struct_2(Struct_1(var_0.e, -399f, false, true, 15713i), vec3<bool>(var_2.c, var_0.d, false))))).d.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(var_3.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1968f, -931f, var_2.b) + vec3<f32>(-131f, var_2.b, 1000f)), true))).b.x, !func_6(func_5(Struct_3(var_3.b, 4294967295u, var_3.c), var_3.c, vec3<bool>(var_0.d, global2[_wgslsmith_index_u32(31237u, 21u)], var_0.d), var_3.c), vec3<f32>(var_3.c.x, var_0.b, var_3.c.x), all(vec3<bool>(global2[_wgslsmith_index_u32(1u, 21u)], false, true)), _wgslsmith_f_op_f32(ceil(1000f))).d, -22564i), func_5(var_3, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-173f, var_3.c.x, var_2.b), _wgslsmith_f_op_vec3_f32(floor(var_3.c)))), !(!(!vec3<bool>(var_0.c, true, global2[_wgslsmith_index_u32(26311u, 21u)]))), vec3<f32>(var_0.b, func_5(var_3, var_3.c, vec3<bool>(false, false, var_2.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.c.x, -866f, 1000f) * var_3.c)).a.b, _wgslsmith_div_f32(-1244f, 797f))).b);
}

fn func_7(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: u32) -> vec3<bool> {
    let var_0 = abs(~(~countOneBits(vec4<i32>(50741i, 2147483647i, u_input.a.x, arg_0.a.e)) & (reverseBits(vec4<i32>(arg_0.a.e, arg_0.a.e, u_input.a.x, 0i)) << (~vec4<u32>(52586u, arg_1.x, 1u, 41844u) % vec4<u32>(32u)))));
    global1 = array<u32, 11>();
    global1 = array<u32, 11>();
    global1 = array<u32, 11>();
    global0 = -var_0.x;
    return !arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(func_7(func_1(), ~vec2<u32>(72431u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 11u)], 11u)]) | ~(~vec2<u32>(1u, 639u)), _wgslsmith_mod_u32(1u, 31660u)));
    global2 = array<bool, 21>();
    let var_1 = 2147483647i;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-func_2(vec2<u32>(7399u, 34495u), Struct_4(Struct_3(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(43129u, 11u)], 11u)], 11u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], vec3<f32>(2017f, -1504f, -449f)), Struct_1(2147483647i, 1164f, global2[_wgslsmith_index_u32(4294967295u, 21u)], true, u_input.a.x), Struct_1(0i, -604f, global2[_wgslsmith_index_u32(1u, 21u)], false, var_1), Struct_2(Struct_1(u_input.b, -562f, true, true, -46163i), vec3<bool>(global2[_wgslsmith_index_u32(1u, 21u)], true, global2[_wgslsmith_index_u32(4294967295u, 21u)])))).a.c.x), _wgslsmith_f_op_f32(f32(-1f) * -751f), 439f) * vec3<f32>(1f, 1f, 1f)) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(func_6(Struct_2(Struct_1(var_1, -1614f, true, global2[_wgslsmith_index_u32(1u, 21u)], var_1), vec3<bool>(global2[_wgslsmith_index_u32(17611u, 21u)], false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 11u)], 21u)])), vec3<f32>(-645f, 456f, -694f), false, -223f).b))), _wgslsmith_f_op_f32(step(-524f, -501f)), 179f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, 1051f, var_2.x, -1000f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1624f, var_2.x, var_2.x, var_2.x) - vec4<f32>(-904f, var_2.x, var_2.x, 1581f)), global1[_wgslsmith_index_u32(1u, 11u)] <= 0u)))));
}

