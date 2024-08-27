struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec4<bool>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: array<f32, 3> = array<f32, 3>(1643f, -299f, -427f);

var<private> global2: vec2<i32>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2) -> bool {
    var var_0 = _wgslsmith_mult_vec4_i32(-vec4<i32>(max(-arg_1, _wgslsmith_mod_i32(u_input.b, u_input.a.x)), global2.x, -arg_1, -u_input.b & -35277i), ~(vec4<i32>(_wgslsmith_sub_i32(-7679i, global2.x), max(global2.x, 1i), u_input.b, _wgslsmith_add_i32(global2.x, u_input.b)) ^ (vec4<i32>(2147483647i, u_input.a.x, 34936i, -15471i) ^ firstLeadingBit(vec4<i32>(1i, -26683i, -47086i, arg_1)))));
    var var_1 = _wgslsmith_clamp_u32(~arg_0.a, ~arg_0.a, arg_0.a);
    global2 = u_input.a.yx;
    var var_2 = arg_2.c;
    var var_3 = abs(63474u);
    return !(!(!any(!arg_2.c.wz)));
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = Struct_1(u_input.d);
    return vec4<i32>(u_input.b, 27936i, ~25660i, global2.x);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec3<f32> {
    global0 = array<Struct_1, 9>();
    var var_0 = func_4(vec2<bool>(arg_2, any(vec4<bool>(true, arg_2, func_3(arg_1, 0i, Struct_2(vec2<f32>(-2461f, global1[_wgslsmith_index_u32(4294967295u, 3u)]), vec3<f32>(492f, global1[_wgslsmith_index_u32(u_input.e.x, 3u)], -339f), vec4<bool>(arg_2, false, false, true), arg_1, -424f)), global2.x < 4182i))), u_input.b, Struct_1(_wgslsmith_clamp_u32(select(~4294967295u, _wgslsmith_sub_u32(arg_0.a, 64894u), any(vec3<bool>(arg_2, arg_2, false))), firstLeadingBit(~1u), ~arg_1.a)));
    var var_1 = Struct_1(_wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, ~_wgslsmith_sub_u32(u_input.c.x, arg_1.a)), 17100u));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 3u)], global1[_wgslsmith_index_u32(u_input.c.x, 3u)], -695f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(1u, 3u)], global1[_wgslsmith_index_u32(var_1.a, 3u)], 293f), vec3<f32>(global1[_wgslsmith_index_u32(73144u, 3u)], global1[_wgslsmith_index_u32(arg_0.a, 3u)], -2175f), select(vec3<bool>(true, false, false), vec3<bool>(true, false, arg_2), arg_2)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1.a, 3u)]), 1760f, _wgslsmith_f_op_f32(901f - global1[_wgslsmith_index_u32(u_input.c.x, 3u)]))), select(!select(vec3<bool>(arg_2, true, false), vec3<bool>(true, arg_2, true), true), vec3<bool>(arg_0.a < 4294967295u, true, true), vec3<bool>(!arg_2, arg_2, arg_2)))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-246f, -1446f, global1[_wgslsmith_index_u32(0u, 3u)])))))));
}

fn func_5(arg_0: vec3<f32>) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(min(u_input.c.x, 1u), 9u)];
    global0 = array<Struct_1, 9>();
    global1 = array<f32, 3>();
    let var_1 = vec2<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_sub_u32(~0u, var_0.a)), 3u)], arg_0.x), 346f);
    let var_2 = vec4<f32>(var_1.x, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 3u)] - global1[_wgslsmith_index_u32(~4294967295u, 3u)]), -1209f);
    return ~(u_input.c.x << (min(var_0.a, ~_wgslsmith_add_u32(6675u, 0u)) % 32u));
}

fn func_6(arg_0: vec4<f32>, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> vec3<f32> {
    let var_0 = Struct_2(arg_0.wz, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_3.a, 3u)] + global1[_wgslsmith_index_u32(arg_1, 3u)]), global1[_wgslsmith_index_u32(~4294967295u, 3u)], global1[_wgslsmith_index_u32(~84220u, 3u)]) - vec3<f32>(_wgslsmith_f_op_f32(781f - -1000f), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(trunc(1045f)))), arg_0.wwx), !select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), any(vec4<bool>(false, false, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.e.zz, ~vec2<u32>(~21739u, ~48419u)), 9u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 3u)]));
    let var_1 = Struct_2(var_0.a, arg_0.xxz, !vec4<bool>(var_0.c.x, !func_3(Struct_1(arg_1), global2.x, Struct_2(var_0.b.xz, var_0.b, var_0.c, Struct_1(47921u), var_0.a.x)), 1330f <= _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(13170u, 3u)]), all(select(vec3<bool>(false, false, var_0.c.x), vec3<bool>(false, var_0.c.x, var_0.c.x), var_0.c.zxz))), Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(83962u, arg_3.a, 56092u), u_input.e), _wgslsmith_clamp_vec3_u32(u_input.e, u_input.e, vec3<u32>(var_0.d.a, 1u, var_0.d.a))) << (_wgslsmith_div_u32(min(u_input.d, arg_1), firstLeadingBit(arg_1)) % 32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 3u)] * 471f)))))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.e, 866f)))), var_0.e);
    var var_3 = true || all(select(vec4<bool>(var_1.c.x | var_1.c.x, true, var_0.c.x, global1[_wgslsmith_index_u32(arg_1, 3u)] <= 480f), vec4<bool>(true, var_1.c.x, false, var_0.c.x), vec4<bool>(false, u_input.b == 1i, true, var_1.c.x)));
    global0 = array<Struct_1, 9>();
    return _wgslsmith_f_op_vec3_f32(func_2(arg_3, arg_3, false));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_6(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1[_wgslsmith_index_u32(u_input.d, 3u)], global1[_wgslsmith_index_u32(36011u, 3u)], global1[_wgslsmith_index_u32(u_input.e.x, 3u)], -397f), vec4<f32>(830f, global1[_wgslsmith_index_u32(u_input.e.x, 3u)], 759f, -267f))), u_input.e.x, func_5(_wgslsmith_f_op_vec3_f32(func_2(Struct_1(u_input.c.x), global0[_wgslsmith_index_u32(u_input.c.x, 9u)], true))), Struct_1(0u))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1093f, 473f, global1[_wgslsmith_index_u32(4294967295u, 3u)])), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-295f, 267f, global1[_wgslsmith_index_u32(u_input.e.x, 3u)]))), true)))));
    let var_1 = u_input.e.x;
    global2 = _wgslsmith_mod_vec2_i32(u_input.a.yz, max(-(firstLeadingBit(vec2<i32>(-1i, 1i)) << (u_input.c % vec2<u32>(32u))), func_4(vec2<bool>(true, true), global2.x, Struct_1(_wgslsmith_div_u32(u_input.d, u_input.e.x))).yx));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(681f + global1[_wgslsmith_index_u32(1u, 3u)]), -1216f, -645f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), -975f, -352f) - vec3<f32>(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(u_input.c.x, 3u)], -1039f, false)), var_0.x, global1[_wgslsmith_index_u32(var_1, 3u)]))));
    global1 = array<f32, 3>();
    return Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(2962f, global1[_wgslsmith_index_u32(~(~var_1), 3u)]) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(var_0.yz, var_0.yz)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 749f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1255f, var_0.x) * var_0.yy))))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.x, 599f)), global1[_wgslsmith_index_u32(~32255u, 3u)]))), -1477f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1145f)) * var_0.x)), !select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(false, true, true, true), true), false), Struct_1(1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) * global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1, var_1), 3u)])));
}

fn func_7(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = arg_1.xx;
    var var_1 = 1000f;
    let var_2 = _wgslsmith_f_op_vec3_f32(func_2(arg_0.d, arg_0.d, any(!vec3<bool>(arg_0.e < global1[_wgslsmith_index_u32(u_input.e.x, 3u)], arg_1.x, u_input.a.x != -1i)))).x;
    global1 = array<f32, 3>();
    var var_3 = global2.x;
    return Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1695f, -626f)), vec2<f32>(var_2, _wgslsmith_f_op_f32(f32(-1f) * -1228f)))), vec3<f32>(-1183f, _wgslsmith_f_op_vec3_f32(func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-376f, 519f, -367f, -1921f), vec4<f32>(-581f, 1105f, var_2, -552f), true))), ~_wgslsmith_mod_u32(1554u, 36813u), ~reverseBits(arg_0.d.a), func_1().d)).x, -852f), select(func_1().c, vec4<bool>(all(!vec3<bool>(arg_0.c.x, true, false)), arg_1.x, any(select(arg_1.xy, arg_1.yz, arg_0.c.wz)), !(!arg_1.x)), arg_1.x), global0[_wgslsmith_index_u32(u_input.c.x, 9u)], global1[_wgslsmith_index_u32(u_input.c.x, 3u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 3>();
    var var_0 = vec3<bool>(false, ~(~u_input.e.x ^ firstLeadingBit(32777u)) < ~47168u, false);
    var var_1 = func_7(func_1(), vec4<bool>(true, var_0.x, false, any(vec3<bool>(any(vec3<bool>(var_0.x, false, false)), !var_0.x, false))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_1.b.yy - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_1.a)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-964f)), -485f) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_1.a * vec2<f32>(1150f, -1546f)), _wgslsmith_div_vec2_f32(var_1.a, vec2<f32>(1471f, var_1.e)), true))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.b * vec3<f32>(421f, global1[_wgslsmith_index_u32(u_input.d, 3u)], -769f)), _wgslsmith_f_op_vec3_f32(-var_1.b)))), func_1().c, func_1().d, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))) + 936f));
    let var_3 = func_1();
    var_0 = !func_1().c.zxx;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.x);
}

