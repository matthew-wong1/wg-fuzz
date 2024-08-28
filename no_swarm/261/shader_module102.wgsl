struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31>;

var<private> global1: Struct_3 = Struct_3(2224f, vec3<u32>(1u, 58025u, 32091u), Struct_2(vec2<f32>(227f, 302f)), Struct_2(vec2<f32>(-122f, -1271f)));

var<private> global2: array<Struct_3, 11>;

var<private> global3: vec2<i32> = vec2<i32>(1i, -1558i);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: vec2<i32>) -> u32 {
    var var_0 = Struct_1(abs(~u_input.d.x), _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, 2147483647i, 63541i, global3.x), vec4<i32>(19303i, global3.x, u_input.c, global3.x)))), vec2<i32>(global3.x, ~(~176i))), 9891i, arg_0.a.a);
    let var_1 = u_input.b.x;
    global3 = arg_3;
    let var_2 = min(~_wgslsmith_add_vec4_u32(vec4<u32>(6602u, var_1, 41252u, global1.b.x) ^ vec4<u32>(415u, 55081u, 38974u, global1.b.x), vec4<u32>(arg_2.b.x, 0u, arg_2.a.b.x, 109156u) ^ vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, 4294967295u)) >> (_wgslsmith_sub_vec4_u32(~(vec4<u32>(3098u, 24336u, var_0.a, arg_2.a.b.x) | vec4<u32>(4294967295u, 64855u, u_input.d.x, var_0.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.b.x, var_0.a, global1.b.x, var_1), vec4<u32>(var_1, 60898u, u_input.b.x, arg_2.b.x), _wgslsmith_mod_vec4_u32(vec4<u32>(4880u, var_0.a, 69596u, var_1), vec4<u32>(u_input.d.x, 11438u, 5448u, 58239u)))) % vec4<u32>(32u)), select(firstTrailingBit(vec4<u32>(global1.b.x, 95302u, arg_0.a.b.x, arg_0.a.b.x) >> (~vec4<u32>(var_1, u_input.b.x, global1.b.x, 1222u) % vec4<u32>(32u))), ~vec4<u32>(select(global1.b.x, 7787u, arg_1.x), global1.b.x | 20621u, ~85703u, var_0.a), (global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, var_0.a, global1.b.x), 31u)] == true) && !(-2147483647i > var_0.b)));
    let var_3 = arg_2;
    return firstTrailingBit(var_3.a.b.x) << (~18588u % 32u);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = -vec4<i32>(global3.x >> (_wgslsmith_div_u32(1049u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), u_input.b.zy)) % 32u), global3.x << (26776u % 32u), ~(~0i), -42996i);
    var var_1 = arg_2;
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(func_3(Struct_4(global2[_wgslsmith_index_u32(~(~arg_0.x), 11u)], ~vec2<u32>(global1.b.x, arg_0.x) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(global1.b.x, 1u), u_input.d), arg_2), select(select(!vec4<bool>(global0[_wgslsmith_index_u32(100964u, 31u)], false, false, global0[_wgslsmith_index_u32(u_input.d.x, 31u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(111891u, 31u)], global0[_wgslsmith_index_u32(1u, 31u)], true, global0[_wgslsmith_index_u32(31026u, 31u)]), vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 31u)], global0[_wgslsmith_index_u32(global1.b.x, 31u)], false, true), global0[_wgslsmith_index_u32(24607u, 31u)]), !vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 31u)], true, global0[_wgslsmith_index_u32(global1.b.x, 31u)])), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 31u)], false, global0[_wgslsmith_index_u32(4252u, 31u)], global0[_wgslsmith_index_u32(25491u, 31u)]), !vec4<bool>(true, global0[_wgslsmith_index_u32(global1.b.x, 31u)], global0[_wgslsmith_index_u32(u_input.b.x, 31u)], global0[_wgslsmith_index_u32(75026u, 31u)])), Struct_4(Struct_3(global1.c.a.x, arg_0 >> (u_input.b % vec3<u32>(32u)), Struct_2(arg_1.xw), global1.c), vec2<u32>(u_input.d.x, ~global1.b.x), global1.c), var_0.wx), 1u), 11u)];
    var_0 = (vec4<i32>(select(var_0.x, 2147483647i, true) ^ global3.x, global3.x, ~(~(-3205i)), min(select(global3.x, -2147483647i, global0[_wgslsmith_index_u32(4294967295u, 31u)]), ~19764i)) >> ((vec4<u32>(25883u ^ arg_0.x, global1.b.x, global1.b.x, ~arg_0.x) << (~vec4<u32>(global1.b.x, 0u, 64928u, u_input.d.x) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ (vec4<i32>(select(abs(global3.x), ~var_0.x, !global0[_wgslsmith_index_u32(arg_0.x, 31u)]), -69833i, reverseBits(firstLeadingBit(0i)), i32(-1i) * -1i) << (vec4<u32>(813u, u_input.d.x, 1u, ~0u) % vec4<u32>(32u)));
    return arg_2;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_5) -> f32 {
    return -505f;
}

fn func_5(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_4 {
    let var_0 = _wgslsmith_div_u32(~1u, u_input.b.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.d, arg_1.x)), arg_0, arg_0, _wgslsmith_f_op_f32(arg_0 + -608f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(207f, 536f, -1412f, -1226f) - vec4<f32>(arg_2.d, -1798f, arg_2.d, global1.c.a.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(511f, 196f, -1356f, 1516f)))), !select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 31u)], false, global0[_wgslsmith_index_u32(1u, 31u)], false), select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(12755u, 31u)], global0[_wgslsmith_index_u32(global1.b.x, 31u)], global0[_wgslsmith_index_u32(1u, 31u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(28468u, 31u)], global0[_wgslsmith_index_u32(38557u, 31u)]), true), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 31u)], true, true, true), vec4<bool>(global0[_wgslsmith_index_u32(arg_3.x, 31u)], global0[_wgslsmith_index_u32(var_0, 31u)], global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(0u, 31u)]), true)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.d.a.x), -888f, _wgslsmith_f_op_f32(global1.a - 579f), 900f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(431f, arg_0, -1000f, 242f))))));
    let var_2 = vec4<u32>(~abs(_wgslsmith_add_u32(firstTrailingBit(var_0), arg_2.a)), arg_3.x, ~_wgslsmith_add_u32(34170u, 36756u), 11340u);
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1648f, -893f, global1.d.a.x, _wgslsmith_f_op_f32(1644f - arg_0))))));
    return Struct_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + 218f)), firstTrailingBit(abs(~u_input.b)), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2019f, arg_0)))), func_2(vec3<u32>(global1.b.x, arg_2.a, 4294967295u) << (min(vec3<u32>(var_0, arg_3.x, var_2.x), var_2.zyx) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.a, -373f, global1.a, -1122f))), func_2(_wgslsmith_div_vec3_u32(var_2.wzz, var_2.zzy), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, 180f, 676f, var_1.x))), Struct_2(vec2<f32>(-214f, arg_1.x))))), var_2.yw, Struct_2(vec2<f32>(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(679f * arg_0))));
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    let var_0 = Struct_5(func_5(_wgslsmith_f_op_f32(func_4(Struct_3(_wgslsmith_f_op_f32(ceil(-1327f)), vec3<u32>(0u, global1.b.x, u_input.d.x), func_2(u_input.b, vec4<f32>(arg_0.x, -274f, arg_0.x, -1647f), Struct_2(arg_0)), global1.c), Struct_5(Struct_4(global2[_wgslsmith_index_u32(global1.b.x, 11u)], vec2<u32>(4294967295u, 3318u), global1.c), Struct_3(arg_0.x, u_input.b, global1.d, Struct_2(arg_0)), _wgslsmith_f_op_f32(global1.a - global1.c.a.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(arg_0.x, 207f)), global1.a)), Struct_1(abs(66110u), u_input.c | ~u_input.c, abs(_wgslsmith_div_i32(u_input.c, -2000i)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_4(global2[_wgslsmith_index_u32(4294967295u, 11u)], Struct_5(Struct_4(global2[_wgslsmith_index_u32(global1.b.x, 11u)], u_input.b.zx, Struct_2(arg_0)), global2[_wgslsmith_index_u32(0u, 11u)], -1001f)))))), countOneBits(abs(~u_input.d))), Struct_3(1f, select(vec3<u32>(_wgslsmith_div_u32(global1.b.x, 40957u), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.b.x, 36680u, 1u), u_input.b), 0u), max(vec3<u32>(16338u, 135740u, 1u), _wgslsmith_clamp_vec3_u32(u_input.b, global1.b, vec3<u32>(18977u, global1.b.x, 1u))), vec3<bool>(true, true, any(vec4<bool>(global0[_wgslsmith_index_u32(global1.b.x, 31u)], true, global0[_wgslsmith_index_u32(32987u, 31u)], global0[_wgslsmith_index_u32(1u, 31u)])))), global1.c, Struct_2(arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * 1628f) + 647f)));
    let var_1 = global0[_wgslsmith_index_u32(0u, 31u)];
    let var_2 = global0[_wgslsmith_index_u32(8531u, 31u)];
    var var_3 = select(select(vec4<bool>((false || global0[_wgslsmith_index_u32(u_input.d.x, 31u)]) || global0[_wgslsmith_index_u32(u_input.a, 31u)], all(!vec2<bool>(global0[_wgslsmith_index_u32(var_0.b.b.x, 31u)], false)), select(global0[_wgslsmith_index_u32(var_0.a.a.b.x, 31u)], global0[_wgslsmith_index_u32(firstTrailingBit(628u), 31u)], true), false), select(select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(27712u, 31u)]), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), false), global0[_wgslsmith_index_u32(~34899u, 31u)]), !select(vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(var_0.a.a.b.x, 31u)]), vec4<bool>(global0[_wgslsmith_index_u32(15547u, 31u)], true, false, true), vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 31u)], true, global0[_wgslsmith_index_u32(4294967295u, 31u)])), !select(vec4<bool>(false, global0[_wgslsmith_index_u32(30862u, 31u)], global0[_wgslsmith_index_u32(u_input.b.x, 31u)], global0[_wgslsmith_index_u32(global1.b.x, 31u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 31u)], false, global0[_wgslsmith_index_u32(u_input.a, 31u)], true), true)), !(!global0[_wgslsmith_index_u32(1u, 31u)])), !vec4<bool>(any(select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(0u, 31u)]), vec2<bool>(global0[_wgslsmith_index_u32(421u, 31u)], false), vec2<bool>(true, false))), select(any(vec4<bool>(global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)], false, false)), false != global0[_wgslsmith_index_u32(16307u, 31u)], true), global0[_wgslsmith_index_u32(var_0.b.b.x, 31u)], global0[_wgslsmith_index_u32(u_input.a, 31u)]), false);
    var_3 = select(select(!(!(!vec4<bool>(global0[_wgslsmith_index_u32(17590u, 31u)], var_3.x, global0[_wgslsmith_index_u32(u_input.a, 31u)], global0[_wgslsmith_index_u32(1u, 31u)]))), !(!vec4<bool>(var_3.x, global0[_wgslsmith_index_u32(1u, 31u)], true, true)), !global0[_wgslsmith_index_u32(global1.b.x, 31u)]), select(vec4<bool>(true, any(vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 31u)])), 1i <= firstTrailingBit(u_input.c), any(vec2<bool>(var_3.x, true))), !vec4<bool>(any(vec2<bool>(true, global0[_wgslsmith_index_u32(global1.b.x, 31u)])), var_0.c <= global1.c.a.x, !var_3.x, select(global0[_wgslsmith_index_u32(26868u, 31u)], true, false)), !(!vec4<bool>(var_3.x, false, true, var_3.x))), any(select(vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(var_0.b.b.x, 31u)]), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 31u)], false, global0[_wgslsmith_index_u32(49433u, 31u)], true), select(select(vec4<bool>(var_3.x, false, global0[_wgslsmith_index_u32(global1.b.x, 31u)], false), vec4<bool>(false, true, var_3.x, var_3.x), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 31u)], false, var_3.x)), !vec4<bool>(global0[_wgslsmith_index_u32(var_0.b.b.x, 31u)], global0[_wgslsmith_index_u32(u_input.d.x, 31u)], false, var_3.x), global0[_wgslsmith_index_u32(u_input.b.x | u_input.a, 31u)]))));
    return Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec3_i32(-vec3<i32>(countOneBits(u_input.c), global3.x, global3.x | -18472i), vec3<i32>(min(global3.x, global3.x), 2147483647i, u_input.c) | min(_wgslsmith_div_vec3_i32(vec3<i32>(2358i, global3.x, -1i), vec3<i32>(global3.x, u_input.c, 1i)), ~vec3<i32>(u_input.c, global3.x, u_input.c))) | ~(abs(vec3<i32>(-2147483647i, 1i, global3.x)) << (firstLeadingBit(vec3<u32>(global1.b.x, u_input.d.x, global1.b.x) >> (vec3<u32>(4294967295u, global1.b.x, 65474u) % vec3<u32>(32u))) % vec3<u32>(32u)));
    global1 = global2[_wgslsmith_index_u32(global1.b.x, 11u)];
    global0 = array<bool, 31>();
    var var_1 = func_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.d.a.x, global1.d.a.x) * _wgslsmith_f_op_vec2_f32(abs(global1.c.a))) * _wgslsmith_f_op_vec2_f32(global1.d.a + _wgslsmith_f_op_vec2_f32(abs(global1.c.a)))))));
    global1 = func_5(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_4(func_5(_wgslsmith_f_op_f32(round(var_1.a.x)), _wgslsmith_f_op_vec2_f32(global1.c.a + var_1.a), Struct_1(global1.b.x, -31854i, -1i, 120f), countOneBits(u_input.b.zz)).a, Struct_5(func_5(624f, vec2<f32>(var_1.a.x, global1.c.a.x), Struct_1(47601u, global3.x, 1i, -320f), vec2<u32>(1u, global1.b.x)), global2[_wgslsmith_index_u32(firstLeadingBit(1u), 11u)], 357f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.c.a.x, -825f))))), Struct_1(~_wgslsmith_add_u32(61853u, global1.b.x), -(~var_0.x) >> ((4294967295u << ((47892u ^ u_input.b.x) % 32u)) % 32u), var_0.x, _wgslsmith_f_op_f32(step(global1.c.a.x, _wgslsmith_f_op_f32(max(-701f, _wgslsmith_f_op_f32(-var_1.a.x)))))), ~u_input.d).a;
    var_0 = _wgslsmith_mult_vec3_i32(-vec3<i32>(var_0.x, u_input.c, _wgslsmith_div_i32(var_0.x, u_input.c) << (_wgslsmith_mod_u32(u_input.b.x, 4294967295u) % 32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-global3.x, -24972i), -u_input.c & -35824i, _wgslsmith_dot_vec3_i32(~vec3<i32>(-20065i, global3.x, var_0.x), ~vec3<i32>(-37422i, var_0.x, u_input.c))), vec3<i32>(~min(var_0.x, -2147483647i), _wgslsmith_mult_i32(~1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, global3.x, -2147483647i, -42881i), vec4<i32>(u_input.c, global3.x, var_0.x, -966i))), -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(0u, ~u_input.b.x, _wgslsmith_f_op_f32(abs(-1230f)));
}

