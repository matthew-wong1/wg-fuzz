struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true));

var<private> global1: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(false), Struct_1(true), Struct_1(false));

var<private> global2: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(Struct_1(false), Struct_1(true), vec3<i32>(-1i, 0i, 19737i), vec2<f32>(1236f, -1853f), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(false), vec3<i32>(-50349i, 0i, 21859i), vec2<f32>(-157f, -1446f), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(true), vec3<i32>(1i, 0i, -30556i), vec2<f32>(102f, -462f), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(false), vec3<i32>(-67157i, -1i, -5297i), vec2<f32>(-675f, 1829f), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(true), vec3<i32>(0i, -45394i, -22662i), vec2<f32>(-817f, 783f), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(false), vec3<i32>(30424i, 31844i, 2147483647i), vec2<f32>(354f, 509f), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(true), vec3<i32>(2169i, 0i, -15781i), vec2<f32>(-281f, -2644f), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(false), vec3<i32>(17584i, 0i, 0i), vec2<f32>(-750f, 1316f), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(false), vec3<i32>(0i, 1i, 9768i), vec2<f32>(-340f, -1157f), Struct_1(true)));

var<private> global3: array<i32, 1> = array<i32, 1>(-64002i);

var<private> global4: Struct_2 = Struct_2(Struct_1(true), Struct_1(false), vec3<i32>(2147483647i, 2147483647i, -54394i), vec2<f32>(-103f, -489f), Struct_1(true));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    var var_0 = firstLeadingBit(53945u);
    let var_1 = firstLeadingBit(firstTrailingBit(21006u >> (_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, 22909u)) % 32u)));
    let var_2 = Struct_2(Struct_1(!(!global4.b.a)), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(82802u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(0u, var_1, u_input.a.x)), ~u_input.a.yww), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 32801u), _wgslsmith_div_vec3_u32(vec3<u32>(var_1, var_1, 1u), vec3<u32>(47545u, 44545u, 0u))))), 3u)], firstTrailingBit(global4.c), global4.d, global0[_wgslsmith_index_u32(var_1, 25u)]);
    global3 = array<i32, 1>();
    let var_3 = Struct_2(var_2.b, global0[_wgslsmith_index_u32(0u, 25u)], global4.c, global4.d, Struct_1(!global4.e.a));
    return true;
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-global4.d.x);
    var var_1 = -1743f;
    global1 = array<Struct_1, 3>();
    let var_2 = vec4<bool>(!global4.e.a & global4.b.a, _wgslsmith_f_op_f32(-693f + 2691f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(123f + global4.d.x) + global4.d.x) * _wgslsmith_f_op_f32(floor(1008f))), !func_3(), func_3());
    return global4.e;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>) -> vec2<bool> {
    global0 = array<Struct_1, 25>();
    let var_0 = arg_0.a;
    let var_1 = 0u;
    let var_2 = _wgslsmith_dot_vec3_i32(global4.c, global4.c);
    var var_3 = !(!vec3<bool>(global4.a.a, func_2(~u_input.a).a, var_0.a & !global4.e.a));
    return !var_3.yy;
}

fn func_5(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = Struct_1(false);
    var var_1 = Struct_1(true);
    var var_2 = global2[_wgslsmith_index_u32(6773u, 9u)];
    global2 = array<Struct_2, 9>();
    global2 = array<Struct_2, 9>();
    return vec3<i32>(~2147483647i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(global4.c.x, global4.c.x, -2348i, global4.c.x) ^ firstTrailingBit(vec4<i32>(2001i, -25847i, global3[_wgslsmith_index_u32(u_input.a.x, 1u)], -18945i)), -firstTrailingBit(vec4<i32>(2147483647i, var_2.c.x, global4.c.x, global4.c.x)))), _wgslsmith_mod_i32(countOneBits(-firstLeadingBit(0i)), global3[_wgslsmith_index_u32(~(~firstTrailingBit(u_input.a.x)), 1u)]));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: vec4<bool>, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(true), global1[_wgslsmith_index_u32(1u, 3u)], func_5(func_4(Struct_2(func_2(vec4<u32>(63952u, u_input.a.x, u_input.a.x, u_input.a.x)), func_2(u_input.a), arg_0.xwz, _wgslsmith_f_op_vec2_f32(round(global4.d)), global1[_wgslsmith_index_u32(u_input.a.x | 31194u, 3u)]), countOneBits(arg_0.ww)), func_2(~countOneBits(vec4<u32>(4294967295u, 0u, 11133u, 61696u))).a, func_2(~vec4<u32>(u_input.a.x, 1654u, 64616u, u_input.a.x))), global4.d, func_2(u_input.a));
    global3 = array<i32, 1>();
    var var_1 = arg_3.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(818f, arg_1.x, 363f)))));
    let var_3 = func_2(~vec4<u32>(~max(0u, u_input.a.x), ~1u, u_input.a.x, ~u_input.a.x));
    return Struct_2(global0[_wgslsmith_index_u32(83186u, 25u)], func_2(u_input.a >> (firstTrailingBit(u_input.a) % vec4<u32>(32u))), vec3<i32>(global3[_wgslsmith_index_u32(8369u, 1u)], -19384i, var_0.c.x & global3[_wgslsmith_index_u32(0u, 1u)]), _wgslsmith_f_op_vec2_f32(-global4.d), Struct_1(true));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_1(true);
    var var_1 = func_1(abs(vec4<i32>(select(~(-18850i), 22895i, func_2(vec4<u32>(u_input.a.x, u_input.a.x, 91512u, 15688u)).a), -global3[_wgslsmith_index_u32(60861u, 1u)], max(-global3[_wgslsmith_index_u32(u_input.a.x, 1u)], i32(-1i) * -42577i), _wgslsmith_mod_i32(_wgslsmith_sub_i32(6420i, 2147483647i), arg_0.c.x))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1217f, arg_0.d.x, global4.d.x), vec3<f32>(-1000f, arg_0.d.x, 817f)) * vec3<f32>(global4.d.x, -640f, 1275f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-884f, -1184f)), -1158f, arg_0.d.x)))), vec4<bool>(false, false, !(false == arg_0.b.a), _wgslsmith_f_op_f32(sign(-1000f)) > global4.d.x), !vec3<bool>(arg_0.b.a, true, !(!var_0.a)));
    var var_2 = Struct_2(Struct_1(arg_0.e.a), global4.a, select(-vec3<i32>(arg_0.c.x << (u_input.a.x % 32u), _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(4294967295u, 1u)], arg_0.c.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_1.c.x), vec2<i32>(arg_0.c.x, -22554i))), vec3<i32>(arg_0.c.x, ~min(global3[_wgslsmith_index_u32(u_input.a.x, 1u)], global4.c.x), _wgslsmith_div_i32(global3[_wgslsmith_index_u32(abs(u_input.a.x), 1u)], global4.c.x)), false), vec2<f32>(809f, _wgslsmith_div_f32(-979f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -866f))))), Struct_1(false));
    global1 = array<Struct_1, 3>();
    let var_3 = 16171i;
    return func_2(countOneBits(u_input.a));
}

fn func_7(arg_0: Struct_1, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(arg_3.a);
    var var_1 = !vec2<bool>(func_2(firstTrailingBit(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 138123u))).a, (-23894i > _wgslsmith_dot_vec4_i32(vec4<i32>(-7320i, global4.c.x, global4.c.x, 2147483647i), vec4<i32>(6416i, 1i, 3406i, global4.c.x))) == true);
    var_1 = select(select(vec2<bool>(true | (false && arg_0.a), arg_3.a), !select(select(vec2<bool>(false, arg_0.a), vec2<bool>(false, false), false), vec2<bool>(arg_0.a, true), true), true), !(!vec2<bool>(arg_0.a, false)), false);
    var var_2 = _wgslsmith_f_op_f32(436f + global4.d.x);
    var_2 = 524f;
    return Struct_1(true);
}

fn func_8(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: i32, arg_3: vec2<f32>) -> Struct_1 {
    global4 = global2[_wgslsmith_index_u32(1u, 9u)];
    global0 = array<Struct_1, 25>();
    let var_0 = func_1(~_wgslsmith_sub_vec4_i32(select(vec4<i32>(7352i, global4.c.x, -1i, 19991i), -vec4<i32>(global4.c.x, -25620i, arg_2, -11322i), false), ~_wgslsmith_div_vec4_i32(vec4<i32>(global4.c.x, global3[_wgslsmith_index_u32(u_input.a.x, 1u)], global3[_wgslsmith_index_u32(arg_0.x, 1u)], global3[_wgslsmith_index_u32(91067u, 1u)]), vec4<i32>(arg_2, global4.c.x, 0i, -1i))), vec3<f32>(_wgslsmith_div_f32(global4.d.x, _wgslsmith_f_op_f32(-1033f - global4.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global4.d.x), _wgslsmith_f_op_f32(trunc(-230f)))) - _wgslsmith_f_op_f32(ceil(791f))), _wgslsmith_f_op_f32(select(188f, global4.d.x, arg_1.a))), vec4<bool>(func_7(arg_1, any(!vec3<bool>(true, global4.a.a, arg_1.a)), ~(u_input.a.ywz >> (u_input.a.zyy % vec3<u32>(32u))), global0[_wgslsmith_index_u32(u_input.a.x, 25u)]).a, all(!vec4<bool>(global4.b.a, true, global4.a.a, global4.b.a)), !(_wgslsmith_add_u32(u_input.a.x, 67888u) > ~u_input.a.x), arg_1.a), select(vec3<bool>(all(!vec3<bool>(true, arg_1.a, false)), all(select(vec3<bool>(true, arg_1.a, true), vec3<bool>(arg_1.a, arg_1.a, global4.e.a), vec3<bool>(global4.e.a, true, arg_1.a))), true), select(!(!vec3<bool>(false, global4.b.a, true)), select(!vec3<bool>(arg_1.a, global4.e.a, false), !vec3<bool>(arg_1.a, true, true), vec3<bool>(global4.a.a, true, global4.b.a)), false), true)).b;
    global1 = array<Struct_1, 3>();
    global2 = array<Struct_2, 9>();
    return func_2(u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 1>();
    var var_0 = func_8(~min(_wgslsmith_sub_vec2_u32(countOneBits(u_input.a.ww), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 0u), vec2<u32>(28487u, u_input.a.x))), ~_wgslsmith_sub_vec2_u32(u_input.a.zx, u_input.a.xy)), func_7(Struct_1(true), true, u_input.a.yyz, func_6(func_1(~vec4<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 1u)], -2147483647i, global3[_wgslsmith_index_u32(22145u, 1u)], global4.c.x), vec3<f32>(global4.d.x, global4.d.x, global4.d.x), select(vec4<bool>(false, global4.b.a, global4.b.a, global4.b.a), vec4<bool>(global4.b.a, true, global4.a.a, false), global4.e.a), vec3<bool>(global4.e.a, true, false)), !vec2<bool>(global4.e.a, false))), _wgslsmith_div_i32(1i, global3[_wgslsmith_index_u32(abs(~25545u), 1u)]) & _wgslsmith_dot_vec2_i32(vec2<i32>(30968i, global4.c.x), _wgslsmith_mult_vec2_i32(-global4.c.yz, global4.c.xx)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.d.x * global4.d.x)), _wgslsmith_f_op_f32(min(-110f, _wgslsmith_f_op_f32(-global4.d.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.d))));
    var var_1 = func_1(vec4<i32>(12311i >> (u_input.a.x % 32u), func_5(func_4(func_1(vec4<i32>(62654i, global3[_wgslsmith_index_u32(u_input.a.x, 1u)], -71177i, global4.c.x), vec3<f32>(global4.d.x, -828f, -133f), vec4<bool>(false, global4.a.a, global4.e.a, global4.b.a), vec3<bool>(global4.e.a, true, global4.e.a)), -global4.c.yz), !(false && global4.a.a), global0[_wgslsmith_index_u32(41037u, 25u)]).x, global4.c.x, global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, u_input.a.x, u_input.a.x), 1u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global4.d.x - 1125f), _wgslsmith_f_op_f32(-1076f * -2753f), -360f))), !select(select(vec4<bool>(false, false, global4.b.a, var_0.a), vec4<bool>(global4.e.a, global4.e.a, global4.b.a, true), global4.a.a), !vec4<bool>(var_0.a, false, false, false), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, global4.b.a, global4.e.a), vec4<bool>(false, global4.a.a, true, true))), vec3<bool>(true, _wgslsmith_f_op_f32(func_1(vec4<i32>(0i, 2147483647i, global3[_wgslsmith_index_u32(0u, 1u)], global3[_wgslsmith_index_u32(51082u, 1u)]), vec3<f32>(global4.d.x, global4.d.x, global4.d.x), vec4<bool>(false, false, global4.a.a, var_0.a), vec3<bool>(false, false, false)).d.x * global4.d.x) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(417f, global4.d.x, global4.e.a)), 1000f), global4.e.a)).a;
    var var_2 = 26649u;
    var var_3 = global4.e;
    let var_4 = reverseBits(min(_wgslsmith_div_vec3_i32(~(vec3<i32>(-881i, 523i, global4.c.x) ^ vec3<i32>(368i, 1i, 22442i)), global4.c), global4.c));
    var_3 = Struct_1(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(26241u) | u_input.a.x);
}

