struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
    d: vec2<i32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20>;

var<private> global1: f32;

var<private> global2: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(Struct_1(1804f, vec2<f32>(2218f, 1229f)), vec2<i32>(4414i, 14728i), true, vec2<i32>(0i, 0i)), Struct_3(Struct_1(-904f, vec2<f32>(226f, -1117f)), vec2<i32>(i32(-2147483648), i32(-2147483648)), true, vec2<i32>(6131i, 2147483647i)), Struct_3(Struct_1(358f, vec2<f32>(1256f, 1000f)), vec2<i32>(1i, 2147483647i), false, vec2<i32>(-5221i, -1i)), Struct_3(Struct_1(1401f, vec2<f32>(201f, -1000f)), vec2<i32>(2147483647i, 12351i), false, vec2<i32>(0i, i32(-2147483648))), Struct_3(Struct_1(-306f, vec2<f32>(-260f, -898f)), vec2<i32>(2147483647i, -25289i), true, vec2<i32>(-1i, -75219i)), Struct_3(Struct_1(-539f, vec2<f32>(-194f, 1867f)), vec2<i32>(i32(-2147483648), -43685i), false, vec2<i32>(0i, 2147483647i)), Struct_3(Struct_1(-915f, vec2<f32>(1712f, 464f)), vec2<i32>(59934i, 42029i), false, vec2<i32>(-35820i, 12760i)), Struct_3(Struct_1(1396f, vec2<f32>(2428f, 233f)), vec2<i32>(-15612i, i32(-2147483648)), true, vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_3(Struct_1(-800f, vec2<f32>(-1258f, 458f)), vec2<i32>(i32(-2147483648), 2551i), true, vec2<i32>(-1i, 1i)), Struct_3(Struct_1(328f, vec2<f32>(127f, -2457f)), vec2<i32>(i32(-2147483648), 1i), true, vec2<i32>(i32(-2147483648), 46686i)), Struct_3(Struct_1(-504f, vec2<f32>(-528f, 1556f)), vec2<i32>(46315i, 3968i), true, vec2<i32>(i32(-2147483648), 2375i)), Struct_3(Struct_1(585f, vec2<f32>(946f, 171f)), vec2<i32>(-53688i, 1i), false, vec2<i32>(-40014i, 1i)), Struct_3(Struct_1(-1327f, vec2<f32>(883f, 233f)), vec2<i32>(-11022i, 23497i), true, vec2<i32>(1i, -101756i)), Struct_3(Struct_1(1336f, vec2<f32>(1987f, -573f)), vec2<i32>(i32(-2147483648), 17472i), false, vec2<i32>(i32(-2147483648), 0i)), Struct_3(Struct_1(-757f, vec2<f32>(1000f, 293f)), vec2<i32>(30836i, 2147483647i), true, vec2<i32>(-24154i, -21824i)), Struct_3(Struct_1(2461f, vec2<f32>(-2121f, -694f)), vec2<i32>(52132i, 0i), false, vec2<i32>(-27780i, 2147483647i)), Struct_3(Struct_1(1000f, vec2<f32>(599f, 366f)), vec2<i32>(-8914i, 55385i), false, vec2<i32>(0i, 0i)), Struct_3(Struct_1(1221f, vec2<f32>(-748f, 896f)), vec2<i32>(-11515i, i32(-2147483648)), false, vec2<i32>(1i, i32(-2147483648))), Struct_3(Struct_1(-247f, vec2<f32>(-1623f, 1493f)), vec2<i32>(0i, 2147483647i), true, vec2<i32>(-34654i, -6188i)), Struct_3(Struct_1(-249f, vec2<f32>(944f, 369f)), vec2<i32>(14037i, -18081i), false, vec2<i32>(-9481i, 28897i)), Struct_3(Struct_1(-419f, vec2<f32>(-1000f, -263f)), vec2<i32>(-24211i, -62403i), true, vec2<i32>(-53866i, -1532i)), Struct_3(Struct_1(-335f, vec2<f32>(-1375f, -845f)), vec2<i32>(-12831i, 0i), false, vec2<i32>(1i, 2147483647i)), Struct_3(Struct_1(-1197f, vec2<f32>(-255f, 2292f)), vec2<i32>(-16753i, 7835i), true, vec2<i32>(1i, 1i)), Struct_3(Struct_1(-108f, vec2<f32>(-2080f, 1355f)), vec2<i32>(-8679i, -1i), true, vec2<i32>(15083i, -22343i)), Struct_3(Struct_1(886f, vec2<f32>(-2498f, -598f)), vec2<i32>(6577i, -15605i), true, vec2<i32>(-66949i, i32(-2147483648))));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = Struct_5(Struct_1(arg_0.b.x, vec2<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(arg_0.a + arg_0.a)), _wgslsmith_f_op_f32(max(arg_0.a, _wgslsmith_div_f32(146f, 380f))))), ~_wgslsmith_mod_u32(u_input.a.x, firstTrailingBit(firstTrailingBit(u_input.a.x))));
    global1 = -1188f;
    let var_1 = _wgslsmith_f_op_f32(step(arg_0.a, -758f));
    let var_2 = vec2<u32>(~1u, u_input.a.x);
    return true;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: bool) -> vec4<u32> {
    global1 = -417f;
    let var_0 = false;
    var var_1 = Struct_4(false);
    var var_2 = min(firstTrailingBit(u_input.a.x), 4294967295u);
    let var_3 = Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(f32(-1f) * -1190f)), arg_1)) == _wgslsmith_f_op_f32(sign(-652f)));
    return countOneBits(~(max(vec4<u32>(4294967295u, u_input.a.x, 23263u, 31859u), u_input.a) ^ vec4<u32>(1u, u_input.a.x & u_input.a.x, u_input.a.x, ~1u)));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: vec4<bool>, arg_3: vec2<f32>) -> i32 {
    let var_0 = global2[_wgslsmith_index_u32(u_input.a.x, 25u)];
    let var_1 = Struct_5(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-488f + _wgslsmith_f_op_f32(arg_0.x + arg_3.x))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2031f, _wgslsmith_f_op_f32(-arg_3.x)), _wgslsmith_f_op_vec2_f32(var_0.a.b - vec2<f32>(-1031f, arg_0.x)), true))), arg_1.x);
    var var_2 = Struct_4(any(arg_2));
    let var_3 = var_0.a;
    return 1i;
}

fn func_2() -> Struct_1 {
    let var_0 = !(39798i == func_5(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(802f, 189f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-964f, 2101f), vec2<f32>(-1063f, -715f))))), func_4(true, _wgslsmith_f_op_f32(-1469f - 1217f), func_3(Struct_1(-625f, vec2<f32>(-1840f, -250f)))), vec4<bool>(all(vec4<bool>(false, true, false, false)), true, func_3(Struct_1(-1929f, vec2<f32>(-971f, -1760f))), all(vec4<bool>(false, true, false, true))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1683f))))));
    let var_1 = !vec3<bool>(false, all(vec4<bool>(var_0, false, global0[_wgslsmith_index_u32(u_input.a.x, 20u)] > global0[_wgslsmith_index_u32(0u, 20u)], true)), false);
    let var_2 = select(_wgslsmith_clamp_vec3_i32(vec3<i32>(-94385i | global0[_wgslsmith_index_u32(u_input.a.x, 20u)], _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], 19158i), vec2<i32>(13879i, 2147483647i)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, 0u), 20u)]), -countOneBits(vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(1u, 20u)])), _wgslsmith_mult_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(7563u, 20u)], global0[_wgslsmith_index_u32(37199u, 20u)], global0[_wgslsmith_index_u32(85062u, 20u)]) & vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], 26554i, global0[_wgslsmith_index_u32(0u, 20u)]), ~vec3<i32>(global0[_wgslsmith_index_u32(1u, 20u)], 59022i, -2147483647i))), ~vec3<i32>(global0[_wgslsmith_index_u32(~1u, 20u)], firstTrailingBit(-11811i), -1i), func_3(Struct_1(-1355f, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(844f, 783f), vec2<f32>(-302f, 1000f)))))) | select(vec3<i32>(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(27534u, 20u)], 25100i), firstLeadingBit(-13074i), ~max(global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(28653u, 20u)])), -min(~vec3<i32>(global0[_wgslsmith_index_u32(17406u, 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)], -24918i), -vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 20u)], 27766i)), select(var_1, vec3<bool>(57420u <= u_input.a.x, all(vec3<bool>(true, var_0, var_0)), true), select(vec3<bool>(var_0, false, var_1.x), select(var_1, vec3<bool>(var_0, var_1.x, var_0), var_1.x), select(vec3<bool>(var_1.x, var_1.x, var_0), var_1, false))));
    var var_3 = all(!select(var_1.yx, !vec2<bool>(var_0, true), select(var_1.xx, select(var_1.xy, var_1.zy, true), true)));
    var var_4 = true;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(385f, _wgslsmith_div_f32(-341f, 101f)) + _wgslsmith_f_op_f32(-1890f - _wgslsmith_f_op_f32(106f - -1533f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    global0 = array<i32, 20>();
    global2 = array<Struct_3, 25>();
    let var_0 = global0[_wgslsmith_index_u32(u_input.a.x | 0u, 20u)] << (~65727u % 32u);
    let var_1 = 1u;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1201f) + _wgslsmith_f_op_f32(f32(-1f) * -215f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-473f - 1440f)))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(func_1(-(select(1i, 17219i, true) ^ max(0i, -1i))), 39512u);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1177f), 140f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1987f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(698f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-114f * 839f), _wgslsmith_f_op_f32(abs(1000f)))))), _wgslsmith_f_op_f32(min(var_0.a.a, var_0.a.a)));
    let var_2 = Struct_4(!all(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), true)));
    var var_3 = !(!select(vec4<bool>(var_2.a, !var_2.a, false, var_2.a), select(select(vec4<bool>(false, true, true, var_2.a), vec4<bool>(var_2.a, var_2.a, false, var_2.a), true), !vec4<bool>(var_2.a, var_2.a, var_2.a, var_2.a), vec4<bool>(false, true, var_2.a, true)), var_2.a));
    var var_4 = u_input.a.x;
    var var_5 = vec4<bool>(false, all(var_3.wz), true, func_3(Struct_1(var_0.a.a, vec2<f32>(-1000f, var_1.x))));
    let var_6 = vec4<bool>(var_3.x, any(!(!var_5.ww)), true, false);
    var var_7 = func_2();
    let var_8 = Struct_2(firstTrailingBit((reverseBits(vec4<i32>(global0[_wgslsmith_index_u32(12397u, 20u)], 8436i, 0i, 2147483647i)) << (vec4<u32>(u_input.a.x, 4294967295u, 1u, u_input.a.x) % vec4<u32>(32u))) >> (vec4<u32>(func_4(false, 498f, var_5.x).x, u_input.a.x, ~50951u, ~4294967295u) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_0.a.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(-369f, _wgslsmith_div_f32(1000f, 1135f))), -394f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-541f + var_7.b.x)) + _wgslsmith_f_op_f32(max(var_7.a, 248f)))), u_input.a.x, countOneBits(u_input.a.x), _wgslsmith_sub_i32(0i, ~global0[_wgslsmith_index_u32(1u, 20u)]));
}

