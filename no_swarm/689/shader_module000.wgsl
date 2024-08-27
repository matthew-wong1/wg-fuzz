struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: Struct_1,
    e: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26> = array<f32, 26>(719f, 129f, 1588f, -115f, 238f, 1132f, 2825f, -275f, 1000f, 635f, -1077f, 892f, -618f, 119f, 1354f, 1000f, 1688f, -1462f, -1271f, 1000f, 1381f, 697f, 1250f, -356f, -130f, 137f);

var<private> global1: array<u32, 12>;

var<private> global2: array<bool, 23>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32) -> u32 {
    global0 = array<f32, 26>();
    var var_0 = any(!select(vec4<bool>(true, select(false, true, true), any(vec3<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(31440u, 12u)], 23u)], false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(128361u, 12u)], 23u)])), false), select(!vec4<bool>(false, false, global2[_wgslsmith_index_u32(59905u, 23u)], global2[_wgslsmith_index_u32(4740u, 23u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(17742u, 23u)], global2[_wgslsmith_index_u32(1u, 23u)], true, true), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 23u)], global2[_wgslsmith_index_u32(u_input.a.x, 23u)], true, global2[_wgslsmith_index_u32(14410u, 23u)]), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(21201u, 12u)], 23u)]), false), true));
    var var_1 = ~(~vec3<u32>(abs(u_input.a.x), 14613u, abs(36354u)));
    var_0 = false;
    var_0 = any(select(vec3<bool>(-2147483647i < _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 19360i), vec2<i32>(u_input.b.x, 0i)), all(select(vec4<bool>(true, global2[_wgslsmith_index_u32(49750u, 23u)], true, global2[_wgslsmith_index_u32(4294967295u, 23u)]), vec4<bool>(true, true, global2[_wgslsmith_index_u32(u_input.a.x, 23u)], global2[_wgslsmith_index_u32(101324u, 23u)]), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 23u)], global2[_wgslsmith_index_u32(18608u, 23u)], true, false))), !any(vec4<bool>(false, false, true, true))), vec3<bool>(any(!vec2<bool>(global2[_wgslsmith_index_u32(7157u, 23u)], global2[_wgslsmith_index_u32(32461u, 23u)])), all(select(vec3<bool>(global2[_wgslsmith_index_u32(42550u, 23u)], true, global2[_wgslsmith_index_u32(u_input.a.x, 23u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 23u)], global2[_wgslsmith_index_u32(u_input.a.x, 23u)]), false)), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(8866u, min(38681u, global1[_wgslsmith_index_u32(1u, 12u)])), 23u)]), vec3<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(59595u, 12u)], 23u)], _wgslsmith_div_i32(-58505i, 1i) < ~u_input.b.x, min(-2147483647i, 2147483647i) == u_input.b.x)));
    return _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~(vec2<u32>(1u, var_1.x) & vec2<u32>(1u, global1[_wgslsmith_index_u32(27791u, 12u)])), firstLeadingBit(u_input.a.zz)), ~(u_input.a.zx << (var_1.xz % vec2<u32>(32u)))) ^ ~(4294967295u | _wgslsmith_mod_u32(_wgslsmith_mult_u32(var_1.x, 4294967295u), u_input.a.x));
}

fn func_2() -> Struct_1 {
    return Struct_1(func_3(global0[_wgslsmith_index_u32(reverseBits(11049u), 26u)]), ~(~firstTrailingBit(u_input.a.x | global1[_wgslsmith_index_u32(u_input.a.x, 12u)])), ~49907i, 1796f);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_4 {
    let var_0 = Struct_3(Struct_2(1i, reverseBits(2147483647i) == _wgslsmith_mod_i32(-43276i, _wgslsmith_clamp_i32(arg_1.c, 2147483647i, arg_1.c)), !select(!vec4<bool>(global2[_wgslsmith_index_u32(24129u, 23u)], false, true, true), select(vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 23u)], false, global2[_wgslsmith_index_u32(20061u, 23u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(2297u, 23u)], false, true), vec4<bool>(global2[_wgslsmith_index_u32(0u, 23u)], global2[_wgslsmith_index_u32(0u, 23u)], false, global2[_wgslsmith_index_u32(4294967295u, 23u)])), vec4<bool>(true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(6130u, 12u)], 23u)], false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.x, 12u)], 23u)])), arg_1), vec3<u32>(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(3008u, 37025u, 27640u))), func_3(_wgslsmith_f_op_f32(635f - global0[_wgslsmith_index_u32(45494u, 26u)])), arg_1.b) >> (arg_0.xzx % vec3<u32>(32u)));
    let var_1 = select(select(!(!(!vec3<bool>(false, false, global2[_wgslsmith_index_u32(0u, 23u)]))), select(select(vec3<bool>(false, false, true), select(var_0.a.c.yzw, var_0.a.c.yyx, false), var_0.a.c.zyw), select(select(var_0.a.c.zzz, vec3<bool>(true, true, false), var_0.a.c.zxz), var_0.a.c.xzz, true), global2[_wgslsmith_index_u32(var_0.a.d.a ^ _wgslsmith_dot_vec3_u32(u_input.a, u_input.a), 23u)]), !select(!vec3<bool>(true, var_0.a.b, false), select(vec3<bool>(global2[_wgslsmith_index_u32(arg_0.x, 23u)], false, true), vec3<bool>(global2[_wgslsmith_index_u32(34999u, 23u)], global2[_wgslsmith_index_u32(arg_0.x, 23u)], var_0.a.b), var_0.a.c.yzx), !var_0.a.c.zxy)), select(!select(select(vec3<bool>(global2[_wgslsmith_index_u32(66491u, 23u)], true, var_0.a.c.x), vec3<bool>(true, true, global2[_wgslsmith_index_u32(4294967295u, 23u)]), vec3<bool>(global2[_wgslsmith_index_u32(var_0.b.x, 23u)], false, global2[_wgslsmith_index_u32(1771u, 23u)])), vec3<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(30150u, 12u)], 23u)], var_0.a.c.x, false), select(vec3<bool>(global2[_wgslsmith_index_u32(3774u, 23u)], var_0.a.b, false), var_0.a.c.yzx, vec3<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 12u)], 23u)], var_0.a.c.x, global2[_wgslsmith_index_u32(u_input.a.x, 23u)]))), select(!vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 23u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 12u)], 23u)]), !vec3<bool>(var_0.a.b, false, global2[_wgslsmith_index_u32(arg_1.a, 23u)]), var_0.a.c.x), true), vec3<bool>(any(vec2<bool>(true, true)), select(false, any(vec2<bool>(var_0.a.c.x, false)), all(vec4<bool>(var_0.a.b, global2[_wgslsmith_index_u32(arg_1.a, 23u)], false, global2[_wgslsmith_index_u32(arg_0.x, 23u)]))) == var_0.a.b, (true && global2[_wgslsmith_index_u32(countOneBits(12585u), 23u)]) && !var_0.a.c.x));
    let var_2 = vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(vec2<i32>(-68506i & var_0.a.d.c, 2147483647i), u_input.b.yy);
    var var_3 = var_0.a;
    return Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.d.d, var_0.a.d.d) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 1261f), vec2<f32>(-301f, var_3.d.d), false))))), func_2().a, _wgslsmith_f_op_f32(abs(-359f)), func_2(), (_wgslsmith_sub_i32(-var_3.a, _wgslsmith_mod_i32(16141i, 1i)) << (_wgslsmith_mod_u32(1u, ~0u) % 32u)) << (4294967295u % 32u));
}

fn func_5(arg_0: Struct_4) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1504f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.d + 902f) + _wgslsmith_f_op_f32(f32(-1f) * -723f)) - func_4(vec4<u32>(4294967295u, 105353u, 0u, 0u), func_2()).a.x)));
    var var_1 = Struct_5(Struct_3(Struct_2(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.d.c, -24994i, arg_0.e, arg_0.e), vec4<i32>(5350i, 41324i, u_input.b.x, -29601i)), ~6499i), !(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], 23u)] && global2[_wgslsmith_index_u32(arg_0.b, 23u)]), select(!vec4<bool>(global2[_wgslsmith_index_u32(45605u, 23u)], global2[_wgslsmith_index_u32(1u, 23u)], true, false), vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 23u)], false, global2[_wgslsmith_index_u32(arg_0.d.a, 23u)]), !vec4<bool>(true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(50134u, 12u)], 23u)], global2[_wgslsmith_index_u32(arg_0.d.a, 23u)], global2[_wgslsmith_index_u32(0u, 23u)])), func_2()), select(~u_input.a, u_input.a, vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 23u)], any(vec4<bool>(global2[_wgslsmith_index_u32(37312u, 23u)], global2[_wgslsmith_index_u32(4294967295u, 23u)], global2[_wgslsmith_index_u32(arg_0.b, 23u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], 23u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(27301u, 26u)]), _wgslsmith_f_op_f32(min(-1115f, arg_0.d.d)))))), i32(-1i) * -54614i);
    var var_2 = _wgslsmith_clamp_i32(func_2().c, 1i, 0i);
    global2 = array<bool, 23>();
    var var_3 = vec2<bool>(var_1.a.a.b, false);
    return arg_0;
}

fn func_1() -> Struct_5 {
    global1 = array<u32, 12>();
    var var_0 = func_5(func_4(_wgslsmith_mult_vec4_u32(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 12u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], 12u)], 68900u), vec4<u32>(u_input.a.x, u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], 12u)], 12u)], 0u), vec4<u32>(global1[_wgslsmith_index_u32(0u, 12u)], u_input.a.x, global1[_wgslsmith_index_u32(96505u, 12u)], 9151u)), vec4<u32>(2281u, 34422u, 0u, 115351u), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], 26u)] == global0[_wgslsmith_index_u32(u_input.a.x, 26u)]), firstTrailingBit(vec4<u32>(u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 12u)], u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 12u)], 12u)]))), func_2()));
    global2 = array<bool, 23>();
    var var_1 = Struct_3(Struct_2(-abs(func_2().c), true, !select(!vec4<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], 12u)], 23u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], 23u)], global2[_wgslsmith_index_u32(u_input.a.x, 23u)], global2[_wgslsmith_index_u32(118466u, 23u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 23u)], false, true, global2[_wgslsmith_index_u32(33334u, 23u)]), vec4<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 23u)], global2[_wgslsmith_index_u32(1u, 23u)], global2[_wgslsmith_index_u32(4294967295u, 23u)], global2[_wgslsmith_index_u32(59190u, 23u)]), true), true), func_2()), u_input.a);
    var_0 = Struct_4(var_0.a, reverseBits(~_wgslsmith_mult_u32(4294967295u, global1[_wgslsmith_index_u32(~var_1.a.d.b, 12u)])), func_5(func_4(~(vec4<u32>(var_0.d.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 12u)], 12u)], var_1.a.d.a, global1[_wgslsmith_index_u32(0u, 12u)]) ^ vec4<u32>(27589u, 21318u, 4294967295u, global1[_wgslsmith_index_u32(69348u, 12u)])), Struct_1(global1[_wgslsmith_index_u32(firstTrailingBit(1u), 12u)], _wgslsmith_mod_u32(1u, 262u), 1i, -698f))).c, func_5(Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(265f, 593f)), var_1.a.d.a, var_0.a.x, var_0.d, func_2().c)).d, 2147483647i);
    return Struct_5(Struct_3(var_1.a, _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, ~u_input.a.x, 1u), u_input.a)), -481f, _wgslsmith_mod_i32(-var_0.d.c, func_4(_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(var_0.b, u_input.a.x, 42014u, u_input.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.b.x, 4294967295u, var_0.d.b, var_0.b), vec4<u32>(131u, var_0.d.a, global1[_wgslsmith_index_u32(22354u, 12u)], u_input.a.x))), Struct_1(1u, _wgslsmith_dot_vec3_u32(u_input.a, var_1.b), ~var_1.a.a, _wgslsmith_f_op_f32(f32(-1f) * -910f))).d.c));
}

fn func_6(arg_0: Struct_5) -> Struct_3 {
    var var_0 = func_4(max(select(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(18973u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], 12u)], 12u)], 12u)], u_input.a.x, arg_0.a.a.d.a)), ~vec4<u32>(global1[_wgslsmith_index_u32(0u, 12u)], arg_0.a.b.x, 4009u, u_input.a.x)), vec4<u32>(u_input.a.x, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.a.b.x, 12u)], 12u)], global1[_wgslsmith_index_u32(~3532u, 12u)], 1u), func_1().a.a.c), max(vec4<u32>(arg_0.a.b.x | 31953u, _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(0u, 12u)], u_input.a.x, u_input.a.x), _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(arg_0.a.b.x, 12u)], u_input.a.x), _wgslsmith_add_u32(arg_0.a.a.d.a, arg_0.a.b.x)), max(~vec4<u32>(u_input.a.x, u_input.a.x, arg_0.a.b.x, arg_0.a.b.x), vec4<u32>(4294967295u, arg_0.a.a.d.b, u_input.a.x, u_input.a.x)))), func_5(Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(35935u, 26u)], arg_0.b))), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], 12u)], 26791u)), vec2<u32>(u_input.a.x, arg_0.a.b.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(120f, 194f))), Struct_1(~global1[_wgslsmith_index_u32(u_input.a.x, 12u)], _wgslsmith_mod_u32(31570u, global1[_wgslsmith_index_u32(73231u, 12u)]), i32(-1i) * -8194i, -735f), u_input.b.x)).d).d;
    var_0 = func_2();
    let var_1 = reverseBits(u_input.b.x);
    var var_2 = func_1().a.a.c.xx;
    let var_3 = 88020u;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec4_u32(~(_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), ~vec4<u32>(20349u, 4294967295u, global1[_wgslsmith_index_u32(u_input.a.x, 12u)], 0u)) | select(_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 12u)]), vec4<u32>(global1[_wgslsmith_index_u32(1u, 12u)], 81420u, 0u, u_input.a.x)), _wgslsmith_add_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], 0u, global1[_wgslsmith_index_u32(89696u, 12u)], global1[_wgslsmith_index_u32(u_input.a.x, 12u)]), vec4<u32>(u_input.a.x, 4294967295u, 52988u, 54604u)), global2[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(59921u, 12u)], 23u)])), firstLeadingBit(vec4<u32>(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], 12u)], 12u)]), global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 12u)], 12u)], 4294967295u) | _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(68725u, global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)], 76142u)), ~vec4<u32>(u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], 12u)], 29540u, global1[_wgslsmith_index_u32(u_input.a.x, 12u)]))));
    var var_1 = Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(global1[_wgslsmith_index_u32(var_0.x, 12u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16025u, 12u)], 12u)]), vec2<u32>(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(3182u, 12u)], 114526u), ~4294967295u)), reverseBits(~vec2<u32>(u_input.a.x, 39226u))), _wgslsmith_sub_u32(~4294967295u, _wgslsmith_add_u32(global1[_wgslsmith_index_u32(countOneBits(u_input.a.x), 12u)], ~var_0.x) & ~var_0.x), firstTrailingBit(-_wgslsmith_div_i32(~54596i, u_input.b.x)), _wgslsmith_f_op_f32(trunc(-1000f)));
    var var_2 = ~(~var_0.x);
    var var_3 = func_6(func_1());
    global0 = array<f32, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(var_0.x, reverseBits(u_input.a.x)), u_input.b, -var_3.a.a, u_input.b.zy, ~u_input.b.x);
}

