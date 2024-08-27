struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: bool,
    e: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15> = array<f32, 15>(287f, 222f, -854f, -2313f, 1117f, -1000f, -586f, -1000f, 469f, 249f, -826f, 1000f, 102f, 549f, 781f);

var<private> global1: i32;

var<private> global2: vec3<bool>;

var<private> global3: array<f32, 26> = array<f32, 26>(305f, -427f, -633f, -1000f, 531f, -590f, -1307f, 1178f, -1899f, 476f, -384f, 550f, -1000f, 641f, 1608f, -255f, 565f, 723f, 1927f, 113f, -687f, -1116f, 2386f, 610f, -1867f, 250f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> i32 {
    global2 = !select(!(!(!vec3<bool>(global2.x, false, false))), select(vec3<bool>(all(global2.zx), global2.x, all(vec2<bool>(global2.x, global2.x))), vec3<bool>(global2.x && true, !global2.x, global2.x & global2.x), global2.x), global2.x);
    global2 = select(select(vec3<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, arg_1.e), vec2<i32>(arg_1.e, -1i)) >= 0i, select(!global2.x, true, arg_1.e < arg_1.e), any(!vec3<bool>(global2.x, global2.x, global2.x))), vec3<bool>(!(u_input.c.x == 353u), false, all(global2.yy)), vec3<bool>(!any(vec4<bool>(true, global2.x, global2.x, global2.x)), global2.x, global2.x)), select(!select(!vec3<bool>(false, global2.x, global2.x), select(vec3<bool>(global2.x, true, false), vec3<bool>(global2.x, global2.x, global2.x), global2.x), global2.x), select(vec3<bool>(false, !global2.x, !global2.x), select(!vec3<bool>(false, global2.x, global2.x), !vec3<bool>(false, false, global2.x), false | global2.x), any(vec4<bool>(true, global2.x, global2.x, false))), vec3<bool>(global2.x, global2.x, false)), vec3<bool>(all(select(global2.zz, global2.yx, true)), _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(arg_1.d, 26u)])) < _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(firstTrailingBit(0u), 15u)])), false));
    global2 = !vec3<bool>(true | (true && !global2.x), global2.x, global2.x && false);
    let var_0 = !vec3<bool>(~81296u >= _wgslsmith_sub_u32(~u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.a), arg_0)), any(vec4<bool>(global2.x, true, 1u == u_input.c.x, global2.x)), select(global2.x, global2.x, !global2.x));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, global0[_wgslsmith_index_u32(20098u, 15u)])))), -895f));
    return min(~reverseBits(min(4720i, arg_1.e)), arg_1.e);
}

fn func_2() -> Struct_1 {
    global1 = -2392i;
    var var_0 = vec4<i32>(~(-1i), func_3(u_input.c.zz, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 26u)], global0[_wgslsmith_index_u32(45897u, 15u)], 351f)), global3[_wgslsmith_index_u32(43535u, 26u)], 7167u, 1u, -2147483647i)), 0i, 50836i) << (abs(firstLeadingBit(vec4<u32>(min(53962u, 472u), countOneBits(0u), u_input.c.x, u_input.b.x))) % vec4<u32>(32u));
    var var_1 = Struct_2(var_0.x, ~var_0.x);
    var_1 = Struct_2(-1i, 43242i);
    var_0 = (_wgslsmith_add_vec4_i32(vec4<i32>(max(var_0.x, var_1.a), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_1.b, var_0.x, -2147483647i), vec4<i32>(var_0.x, var_0.x, 12i, 0i)), -12051i, _wgslsmith_clamp_i32(2147483647i, var_0.x, var_1.b)), firstLeadingBit(vec4<i32>(-64123i, 2147483647i, var_1.a, var_0.x) ^ vec4<i32>(var_1.a, -2147483647i, var_0.x, -1i))) | _wgslsmith_clamp_vec4_i32(~vec4<i32>(var_1.b, 1i, var_1.b, var_1.b), vec4<i32>(_wgslsmith_mod_i32(var_1.b, 16174i), var_1.a, 23365i, var_1.a), max(vec4<i32>(-24717i, var_0.x, 45466i, 1i) & vec4<i32>(16249i, -18106i, 0i, 19855i), abs(vec4<i32>(var_0.x, var_1.b, 2147483647i, 5289i))))) << (vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.b.x, 0u), u_input.c), countOneBits(~1u), _wgslsmith_add_u32(u_input.b.x, _wgslsmith_mult_u32(~16025u, countOneBits(u_input.a))), max(u_input.b.x, u_input.c.x)) % vec4<u32>(32u));
    return Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-268f * 1603f), 150f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -374f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 26u)], -405f, 1000f))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global3[_wgslsmith_index_u32(0u, 26u)], -1051f, -202f)))))))), -593f, u_input.a, 53895u, var_0.x);
}

fn func_4(arg_0: Struct_3) -> Struct_4 {
    var var_0 = select(arg_0.b.e, ~(-18777i), !global2.x) & arg_0.e;
    var_0 = _wgslsmith_dot_vec4_i32(~vec4<i32>(39934i, arg_0.b.e, arg_0.b.e, arg_0.b.e) & vec4<i32>(max(arg_0.e, arg_0.b.e), abs(-1i), arg_0.b.e | 1i, -2147483647i), reverseBits(select(firstLeadingBit(vec4<i32>(-4195i, arg_0.b.e, arg_0.e, arg_0.e)), reverseBits(vec4<i32>(14113i, arg_0.e, -2147483647i, arg_0.e)), vec4<bool>(arg_0.d, false, global2.x, arg_0.c)))) | 9366i;
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3[_wgslsmith_index_u32(0u, 26u)], -669f, -1110f, 805f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 15u)], 1175f, 1000f, global3[_wgslsmith_index_u32(43139u, 26u)]) * vec4<f32>(global3[_wgslsmith_index_u32(u_input.a, 26u)], -644f, 1000f, global0[_wgslsmith_index_u32(10625u, 15u)]))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.b.a.x, 1085f, arg_0.b.a.x, 602f), vec4<f32>(-579f, 496f, 232f, global3[_wgslsmith_index_u32(arg_0.b.d, 26u)]), true | arg_0.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 15u)], global3[_wgslsmith_index_u32(52600u, 26u)], global3[_wgslsmith_index_u32(8355u, 26u)], global0[_wgslsmith_index_u32(18811u, 15u)]))))))));
    var var_2 = arg_0.e | arg_0.b.e;
    var var_3 = -18936i;
    return Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1775f, arg_0.a)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(64074u, 15u)])))), Struct_1(var_1.wyz, _wgslsmith_f_op_f32(-func_2().b), arg_0.b.d << (_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.b.d, u_input.c.x, arg_0.b.c, u_input.a), abs(vec4<u32>(30206u, u_input.a, 1u, u_input.b.x))) % 32u), u_input.a, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(14119i, arg_0.b.e, arg_0.e)), ~(-vec3<i32>(arg_0.e, -25446i, arg_0.b.e)))), Struct_2(_wgslsmith_mod_i32(-arg_0.e >> (1u % 32u), arg_0.e & -44221i), 29982i), func_2());
}

fn func_5(arg_0: Struct_4, arg_1: u32, arg_2: i32) -> vec2<u32> {
    var var_0 = func_4(Struct_3(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32((arg_0.b.d ^ 60289u) | (u_input.b.x & arg_1), 26u)] + _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~arg_0.d.c, 26u)])), arg_0.d, ~38956i > _wgslsmith_sub_i32(-30183i, _wgslsmith_clamp_i32(31756i, -6046i, -13001i)), !global2.x & all(!vec4<bool>(global2.x, global2.x, false, global2.x)), firstTrailingBit(_wgslsmith_div_i32(-2147483647i, ~(-18460i))))).c;
    var var_1 = global3[_wgslsmith_index_u32(~func_2().d, 26u)];
    var var_2 = ~arg_1;
    var_1 = _wgslsmith_div_f32(1302f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 15u)] - 713f) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1, 15u)])) - 681f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-105f, 268f, true)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(arg_1, 26u)], arg_0.d.a.x, 1307f, global0[_wgslsmith_index_u32(26326u, 15u)])))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(124f, -1411f, 2634f, 839f), vec4<f32>(global0[_wgslsmith_index_u32(arg_1, 15u)], 1599f, global3[_wgslsmith_index_u32(4420u, 26u)], -488f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(36080u, 26u)], arg_0.b.b, 528f, 1374f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1335f, -2156f, 351f, -2745f), _wgslsmith_f_op_vec4_f32(vec4<f32>(410f, arg_0.d.b, global3[_wgslsmith_index_u32(4294967295u, 26u)], 727f) * vec4<f32>(global3[_wgslsmith_index_u32(arg_1, 26u)], global3[_wgslsmith_index_u32(arg_1, 26u)], global0[_wgslsmith_index_u32(arg_1, 15u)], global3[_wgslsmith_index_u32(1u, 26u)])))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(763f, -214f, global0[_wgslsmith_index_u32(4294967295u, 15u)], 1747f) * vec4<f32>(global3[_wgslsmith_index_u32(0u, 26u)], -1537f, global0[_wgslsmith_index_u32(4294967295u, 15u)], -102f))))));
    return ~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, u_input.c.x), ~_wgslsmith_mult_vec2_u32(u_input.b.yy, vec2<u32>(1u, arg_1))), ~_wgslsmith_div_u32(~68961u, 1u));
}

fn func_6(arg_0: vec2<u32>, arg_1: bool, arg_2: vec2<u32>, arg_3: i32) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(arg_0.x, 15u)], -984f, 1233f)))))), vec3<f32>(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_2.x, ~arg_0.x), 26u)], _wgslsmith_f_op_f32(f32(-1f) * -490f), _wgslsmith_div_f32(-481f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 26u)]))))), _wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(arg_0.x, 26u)], global3[_wgslsmith_index_u32(0u, 26u)])), 4294967295u, ~func_4(Struct_3(_wgslsmith_div_f32(390f, global0[_wgslsmith_index_u32(u_input.a, 15u)]), Struct_1(vec3<f32>(-744f, global0[_wgslsmith_index_u32(arg_0.x, 15u)], global3[_wgslsmith_index_u32(13876u, 26u)]), 115f, arg_2.x, arg_0.x, 56713i), all(vec3<bool>(global2.x, arg_1, true)), false, -arg_3)).b.c, _wgslsmith_div_i32(arg_3, -(~arg_3)));
    var var_1 = vec2<bool>(any(select(!select(vec4<bool>(false, false, arg_1, arg_1), vec4<bool>(true, global2.x, false, global2.x), arg_1), vec4<bool>(!arg_1, false, global0[_wgslsmith_index_u32(0u, 15u)] <= 603f, any(vec2<bool>(true, true))), vec4<bool>(true & global2.x, !arg_1, true, false))), true);
    global0 = array<f32, 15>();
    var_1 = global2.yx;
    var var_2 = func_4(Struct_3(155f, func_2(), true, false, -5259i));
    return func_4(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.b.b))) * global3[_wgslsmith_index_u32(u_input.a, 26u)]), var_0, var_0.c > var_0.c, firstTrailingBit(arg_0.x) <= u_input.b.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(-4361i, arg_3), vec2<i32>(0i, var_0.e)))).c;
}

fn func_1() -> vec3<i32> {
    var var_0 = func_6(u_input.b.zz, global2.x, func_5(func_4(Struct_3(-424f, func_2(), true, global0[_wgslsmith_index_u32(12077u, 15u)] >= global0[_wgslsmith_index_u32(u_input.c.x, 15u)], i32(-1i) * -1i)), 0u, firstTrailingBit(_wgslsmith_clamp_i32(-3338i, -2147483647i, -12000i) ^ ~0i)), _wgslsmith_sub_i32(_wgslsmith_add_i32(16919i, abs(func_2().e)), abs(-_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, 2147483647i), vec3<i32>(41050i, -35913i, 1i)))));
    let var_1 = true;
    global3 = array<f32, 26>();
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1352f, global0[_wgslsmith_index_u32(u_input.a, 15u)], global3[_wgslsmith_index_u32(u_input.b.x, 26u)], 1381f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 26u)], 153f, -551f, -466f) * vec4<f32>(179f, 642f, 160f, global3[_wgslsmith_index_u32(u_input.b.x, 26u)])))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(63029u, 26u)], 750f, -325f, -277f) * vec4<f32>(2384f, global3[_wgslsmith_index_u32(u_input.c.x, 26u)], global0[_wgslsmith_index_u32(u_input.b.x, 15u)], 1000f)) - vec4<f32>(286f, global3[_wgslsmith_index_u32(68398u, 26u)], global3[_wgslsmith_index_u32(u_input.c.x, 26u)], 611f))))) * vec4<f32>(-588f, global0[_wgslsmith_index_u32(22701u, 15u)], func_2().a.x, global3[_wgslsmith_index_u32(func_5(Struct_4(-1380f, Struct_1(vec3<f32>(-1776f, global0[_wgslsmith_index_u32(u_input.b.x, 15u)], global0[_wgslsmith_index_u32(u_input.c.x, 15u)]), 1606f, u_input.b.x, u_input.a, 46644i), Struct_2(var_0.b, 11090i), Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(3068u, 15u)], global0[_wgslsmith_index_u32(u_input.c.x, 15u)], -1380f), global0[_wgslsmith_index_u32(u_input.b.x, 15u)], u_input.b.x, 0u, var_0.a)), ~1u, _wgslsmith_div_i32(1i, var_0.a)).x ^ _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.c.yy, vec2<u32>(1u, u_input.c.x)), vec2<u32>(u_input.a, u_input.c.x) | u_input.b.yz), 26u)]));
    let var_3 = func_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -296f))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_2.x, var_2.x) + vec3<f32>(global3[_wgslsmith_index_u32(43688u, 26u)], var_2.x, 752f)), global0[_wgslsmith_index_u32(0u, 15u)], ~53249u, min(_wgslsmith_div_u32(61261u, 74163u), 31653u), var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -787f) < global0[_wgslsmith_index_u32(~0u, 15u)], all(select(select(vec3<bool>(false, global2.x, var_1), vec3<bool>(global2.x, var_1, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, var_1), vec3<bool>(true, var_1, false)), vec3<bool>(global2.x, false, true))), -firstLeadingBit(7153i)));
    return firstLeadingBit(-_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_3.c.a, 2147483647i, -2814i), select(vec3<i32>(2147483647i, var_0.a, var_3.b.e), vec3<i32>(5333i, var_3.b.e, var_0.a), vec3<bool>(false, var_1, false))), vec3<i32>(-1i) * -vec3<i32>(var_3.b.e, var_0.b, -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = firstLeadingBit(abs(_wgslsmith_add_i32(countOneBits(i32(-1i) * -18460i), -20252i)));
    let var_0 = firstTrailingBit(vec3<i32>(~_wgslsmith_sub_i32(1i, 7921i), 69397i << (u_input.a % 32u), _wgslsmith_div_i32(2147483647i, firstLeadingBit(1i))) ^ -abs(func_1()));
    var var_1 = -_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(var_0.x, 4206i, 0i, var_0.x), vec4<i32>(1i, var_0.x, var_0.x, var_0.x) & vec4<i32>(var_0.x, -5073i, var_0.x, 51541i), vec4<i32>(1i, 13068i, -13314i, 0i) >> (vec4<u32>(u_input.b.x, 1u, u_input.c.x, u_input.b.x) % vec4<u32>(32u))), vec4<i32>(var_0.x, select(var_0.x, -6795i, global2.x), -73433i, var_0.x)) >> (abs(~countOneBits(~vec4<u32>(u_input.b.x, 45815u, 75896u, 1u))) % vec4<u32>(32u));
    var var_2 = ~(~vec3<u32>(0u, ~u_input.b.x ^ reverseBits(u_input.a), ~_wgslsmith_mod_u32(1u, 27415u)));
    global2 = !vec3<bool>(true, ~_wgslsmith_mult_u32(4294967295u, 0u) != (_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, 45041u), var_2.zz) ^ ~var_2.x), any(select(vec3<bool>(false, global2.x, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var var_3 = Struct_4(-1445f, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(0u, 26u)], -1294f, 222f) - vec3<f32>(global0[_wgslsmith_index_u32(var_2.x, 15u)], global0[_wgslsmith_index_u32(u_input.b.x, 15u)], global0[_wgslsmith_index_u32(15376u, 15u)])) * vec3<f32>(-385f, -209f, 564f))), global0[_wgslsmith_index_u32(var_2.x, 15u)], 5954u, reverseBits(1u), var_1.x), func_4(Struct_3(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(func_5(Struct_4(-1550f, Struct_1(vec3<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 26u)], 665f, global3[_wgslsmith_index_u32(0u, 26u)]), -490f, 70128u, u_input.c.x, var_1.x), Struct_2(var_0.x, var_0.x), Struct_1(vec3<f32>(1402f, global0[_wgslsmith_index_u32(1u, 15u)], -184f), global0[_wgslsmith_index_u32(u_input.c.x, 15u)], 11431u, 4294967295u, 2147483647i)), 1u, 19012i).x, 26u)] + _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 26u)] - -1209f)), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-397f, global3[_wgslsmith_index_u32(var_2.x, 26u)], 1000f))), _wgslsmith_f_op_f32(f32(-1f) * -147f), ~var_2.x, ~0u, _wgslsmith_add_i32(-1i, 16767i)), global2.x, all(global2.yy), -_wgslsmith_mult_i32(0i, 47697i))).c, Struct_1(vec3<f32>(1628f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-926f, 1118f)) - _wgslsmith_div_f32(global0[_wgslsmith_index_u32(10892u, 15u)], global0[_wgslsmith_index_u32(u_input.a, 15u)])), _wgslsmith_f_op_f32(-462f * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 15u)] - global0[_wgslsmith_index_u32(0u, 15u)]))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 15u)] + _wgslsmith_f_op_f32(1028f + global3[_wgslsmith_index_u32(22696u, 26u)])), -890f)), var_2.x, ~4294967295u, _wgslsmith_add_i32(_wgslsmith_clamp_i32(var_0.x, i32(-1i) * -40990i, 4412i), _wgslsmith_dot_vec2_i32(var_0.xx, _wgslsmith_mod_vec2_i32(vec2<i32>(1i, -31931i), var_0.xy)))));
    global0 = array<f32, 15>();
    let var_4 = ~(-abs(var_0.yy));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-814f, _wgslsmith_f_op_f32(923f * -354f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1530f + 204f)))), vec3<f32>(-1000f, -2275f, 610f), 11341u, func_2().e, _wgslsmith_f_op_f32(round(-943f)));
}

