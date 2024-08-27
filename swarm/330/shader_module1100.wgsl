struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: f32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9>;

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec2<i32>(-36399i, i32(-2147483648)), 16201u, 4294967295u, 689f, vec2<f32>(-635f, -428f)), Struct_1(vec2<i32>(-1i, 45842i), 1u, 71848u, 573f, vec2<f32>(-2256f, 697f)), Struct_1(vec2<i32>(-61118i, -1i), 0u, 14974u, -1055f, vec2<f32>(-1541f, -596f)), Struct_1(vec2<i32>(0i, -1i), 34784u, 1u, -709f, vec2<f32>(-354f, 840f)), Struct_1(vec2<i32>(0i, 0i), 23371u, 15158u, -1194f, vec2<f32>(-1362f, -344f)), Struct_1(vec2<i32>(42474i, -16730i), 25613u, 5123u, 635f, vec2<f32>(415f, -1222f)), Struct_1(vec2<i32>(-12038i, 3950i), 47737u, 1u, -593f, vec2<f32>(-1944f, -1225f)), Struct_1(vec2<i32>(i32(-2147483648), 0i), 4294967295u, 0u, 1378f, vec2<f32>(1165f, -1004f)), Struct_1(vec2<i32>(-4192i, 30031i), 4294967295u, 5557u, -1644f, vec2<f32>(1243f, 1109f)), Struct_1(vec2<i32>(14376i, -13496i), 4294967295u, 1u, 769f, vec2<f32>(222f, 1000f)), Struct_1(vec2<i32>(65200i, 1i), 23159u, 31570u, -552f, vec2<f32>(814f, 1805f)), Struct_1(vec2<i32>(2147483647i, 1i), 1u, 1u, -1168f, vec2<f32>(234f, -428f)), Struct_1(vec2<i32>(16556i, -44047i), 28360u, 23061u, -1216f, vec2<f32>(-963f, 688f)), Struct_1(vec2<i32>(-26747i, -1i), 0u, 82968u, 1242f, vec2<f32>(981f, 1823f)), Struct_1(vec2<i32>(-24243i, -16605i), 57133u, 1u, -117f, vec2<f32>(-278f, 353f)), Struct_1(vec2<i32>(-1i, i32(-2147483648)), 1u, 0u, 2049f, vec2<f32>(-1298f, 1312f)));

var<private> global2: u32;

var<private> global3: array<vec2<bool>, 25>;

var<private> global4: vec4<bool>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e.x, arg_0.d, 298f, 160f)));
    let var_1 = Struct_1(_wgslsmith_clamp_vec2_i32(-vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -37070i, -13373i), vec3<i32>(arg_0.a.x, 0i, arg_0.a.x)), firstLeadingBit(u_input.c.x)), vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, arg_0.a.x, arg_0.a.x, arg_0.a.x), vec4<i32>(arg_0.a.x, 2147483647i, -53383i, u_input.b.x)), vec4<i32>(arg_0.a.x, -24540i, arg_0.a.x, u_input.b.x) & vec4<i32>(40174i, u_input.c.x, u_input.b.x, -21054i)), -37082i), -arg_0.a), 1u, ~firstLeadingBit(max(arg_0.b, 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.x, arg_0.e.x), _wgslsmith_f_op_f32(f32(-1f) * -1756f))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1873f))))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0.zz - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.xz) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-726f, -1704f), vec2<f32>(arg_0.d, global0[_wgslsmith_index_u32(u_input.a.x, 9u)]), false)))), vec2<f32>(238f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(2097f)), 465f))), arg_1)));
    global2 = var_1.c;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.d)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.e.x * -191f), _wgslsmith_f_op_f32(trunc(-905f))));
    let var_3 = arg_0.a.x;
    return _wgslsmith_f_op_f32(ceil(var_0.x));
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = vec2<u32>(u_input.a.x, arg_0.b);
    global0 = array<f32, 9>();
    global0 = array<f32, 9>();
    var var_1 = Struct_1(arg_0.a, 84381u, 14156u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.x)) - _wgslsmith_f_op_f32(688f * global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, arg_0.c), 9u)])) * _wgslsmith_f_op_f32(f32(-1f) * -157f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(42930u, 9u)])), _wgslsmith_f_op_f32(func_3(Struct_1(u_input.c.zz, arg_0.c, 8405u, 1299f, vec2<f32>(arg_0.e.x, global0[_wgslsmith_index_u32(45780u, 9u)])), true))), _wgslsmith_f_op_f32(arg_0.d + arg_0.e.x)))));
    let var_2 = Struct_1(vec2<i32>(u_input.c.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, arg_0.a.x, -2147483647i, 13355i) >> (vec4<u32>(4294967295u, var_1.b, var_1.c, 0u) % vec4<u32>(32u)), ~vec4<i32>(1i, arg_0.a.x, 31048i, var_1.a.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.c.x, 31349i, 2147483647i), vec4<i32>(1i, var_1.a.x, arg_0.a.x, 6650i)))), 4294967295u, arg_0.c, 380f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], 1423f) * vec2<f32>(192f, 266f)) * _wgslsmith_f_op_vec2_f32(ceil(arg_0.e))))) + _wgslsmith_f_op_vec2_f32(-var_1.e)));
    return ~7400u;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    global0 = array<f32, 9>();
    global1 = array<Struct_1, 16>();
    let var_0 = reverseBits(abs(select(u_input.a, u_input.a, arg_3.x)));
    global1 = array<Struct_1, 16>();
    var var_1 = arg_0.wz;
    return arg_2;
}

fn func_1() -> Struct_1 {
    global0 = array<f32, 9>();
    let var_0 = 0i;
    let var_1 = func_4(~min(firstLeadingBit(vec4<i32>(var_0, 53402i, -1i, 1i)), vec4<i32>(0i, var_0, u_input.b.x, u_input.c.x)) >> (firstTrailingBit(~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 83262u))) % vec4<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 9u)]), 1f) * -317f), global0[_wgslsmith_index_u32(~func_2(Struct_1(u_input.b.zx, u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(0u, 9u)], vec2<f32>(-538f, -228f))), 9u)], _wgslsmith_f_op_f32(f32(-1f) * -474f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1547f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 9u)])) + _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(4294967295u, 9u)])))), Struct_1(_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(-2147483647i, var_0)) & -vec2<i32>(-39172i, -12644i), u_input.c.xy), 1u, _wgslsmith_dot_vec3_u32(~(u_input.a & u_input.a), u_input.a), -383f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 9u)] * global0[_wgslsmith_index_u32(8812u, 9u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(63573u, 9u)] * 378f)))), !vec4<bool>(true, true, global4.x, !(false != global4.x)));
    var var_2 = Struct_1(var_1.a, abs(1u), _wgslsmith_add_u32(4487u, _wgslsmith_mod_u32(45660u, u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(50380u, 9u)], -1198f))), var_1.e);
    return Struct_1(~var_1.a, _wgslsmith_sub_u32(~(~1u), var_1.b) & ~func_4(vec4<i32>(var_0, u_input.c.x, -1i, u_input.c.x), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.d, var_1.e.x, -1000f, 264f))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(29481u, u_input.a.x), 16u)], vec4<bool>(global4.x, true, true, false)).c, ~(~max(1u, u_input.a.x)), 493f, vec2<f32>(var_2.e.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(var_1.e.x, global0[_wgslsmith_index_u32(var_2.b, 9u)]))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(abs(u_input.b.x), -44159i), ~u_input.c.yy), func_4(vec4<i32>(~u_input.b.x, _wgslsmith_mod_i32(u_input.b.x, -8783i), firstLeadingBit(-35187i), u_input.b.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-791f, 2052f, 1665f, global0[_wgslsmith_index_u32(var_0.b, 9u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1125f, global0[_wgslsmith_index_u32(20609u, 9u)], var_0.d, var_0.d)))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(824u), var_0.b), 16u)], select(!vec4<bool>(global4.x, false, global4.x, true), select(vec4<bool>(global4.x, false, false, true), vec4<bool>(global4.x, false, false, true), vec4<bool>(global4.x, global4.x, global4.x, false)), !global4.x)).a.x, firstLeadingBit(0i), countOneBits(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(69937i, 0i, -1i, var_0.a.x)), vec4<i32>(-2147483647i, var_0.a.x, -44345i, u_input.c.x) << (vec4<u32>(5334u, 0u, var_0.b, var_0.b) % vec4<u32>(32u))))), vec4<i32>(40052i, max(u_input.c.x, u_input.c.x), ~_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-30481i, 1i), var_0.a.x, 1i), firstTrailingBit(var_0.a.x >> (~32144u % 32u))));
    let var_2 = true;
    var_0 = Struct_1(vec2<i32>(-47042i, ~(~var_1.x)), var_0.b, ~(~firstLeadingBit(44785u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-856f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.e) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_0.e)))));
    var var_3 = countOneBits(u_input.a.yy);
    var_1 = ~select(vec4<i32>(var_0.a.x, 0i, -2147483647i, 1i) >> (~vec4<u32>(u_input.a.x, var_0.b, 4294967295u, 57564u) % vec4<u32>(32u)), vec4<i32>(-35409i, 5245i, _wgslsmith_div_i32(var_1.x, 2147483647i), select(-2147483647i, u_input.c.x, false)), !(!vec4<bool>(false, var_2, var_2, var_2))) >> (vec4<u32>(1u & _wgslsmith_add_u32(1u, func_4(vec4<i32>(var_1.x, u_input.c.x, u_input.c.x, var_0.a.x), vec4<f32>(-611f, var_0.e.x, global0[_wgslsmith_index_u32(u_input.a.x, 9u)], -1899f), Struct_1(vec2<i32>(-22491i, var_0.a.x), 0u, var_0.c, global0[_wgslsmith_index_u32(27992u, 9u)], vec2<f32>(global0[_wgslsmith_index_u32(var_3.x, 9u)], -642f)), vec4<bool>(true, true, global4.x, global4.x)).b), var_0.c << (12351u % 32u), ~(func_2(Struct_1(vec2<i32>(31616i, 0i), u_input.a.x, var_0.c, global0[_wgslsmith_index_u32(25463u, 9u)], var_0.e)) ^ (23532u & var_0.b)), 14400u) % vec4<u32>(32u));
    global1 = array<Struct_1, 16>();
    let var_4 = func_4(max(_wgslsmith_sub_vec4_i32(vec4<i32>(select(u_input.b.x, var_0.a.x, false), max(-17018i, var_1.x), var_0.a.x, _wgslsmith_mod_i32(-30456i, var_1.x)), vec4<i32>(-15071i, 1i, var_0.a.x, u_input.b.x)), vec4<i32>(-1i) * -abs(vec4<i32>(11490i, -45759i, 1i, var_0.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.e.x, global0[_wgslsmith_index_u32(70213u, 9u)])), var_0.e.x), var_0.e.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(1u, 9u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1682f)) - _wgslsmith_f_op_f32(var_0.d - global0[_wgslsmith_index_u32(var_0.b, 9u)])))), func_4(~firstTrailingBit(-vec4<i32>(var_0.a.x, -3950i, 32261i, u_input.c.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(45815u, 9u)]) - global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(62080u, var_0.b), 9u)]), _wgslsmith_f_op_f32(-462f - -1444f), -359f, var_0.d), global1[_wgslsmith_index_u32(var_0.c, 16u)], vec4<bool>(true != global4.x, all(vec2<bool>(var_2, false)), var_2, true)), vec4<bool>((!var_2 & (var_0.a.x >= -28834i)) & all(select(vec4<bool>(true, false, global4.x, true), vec4<bool>(var_2, true, var_2, false), global4.x)), global4.x, -u_input.b.x == -1i, any(global4.zzw))).d;
    let var_5 = vec2<i32>(var_1.x & (1i ^ var_0.a.x), var_0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(720f, var_0.e.x, var_0.d, var_0.d) + vec4<f32>(1108f, var_0.e.x, -787f, 1446f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4, global0[_wgslsmith_index_u32(u_input.a.x, 9u)], var_0.d, -313f))))) * vec4<f32>(_wgslsmith_f_op_f32(max(-287f, -1382f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-683f - 1253f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_4, 1487f), -814f)), 1f)), ~firstLeadingBit(select(u_input.a.x, 1u, false)) | 1u, 57077u, ~u_input.b);
}

