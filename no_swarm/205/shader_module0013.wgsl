struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 12>;

var<private> global1: vec4<i32>;

var<private> global2: u32 = 53172u;

var<private> global3: array<u32, 29> = array<u32, 29>(1u, 4294967295u, 37113u, 24224u, 4294967295u, 0u, 0u, 4294967295u, 4294967295u, 33561u, 63497u, 75970u, 4294967295u, 0u, 0u, 82157u, 91634u, 1u, 1u, 0u, 80370u, 52312u, 35566u, 57021u, 18291u, 26748u, 90031u, 0u, 0u);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: vec2<i32>) -> u32 {
    global2 = u_input.a;
    var var_0 = global3[_wgslsmith_index_u32(firstTrailingBit(countOneBits(~43498u)), 29u)];
    let var_1 = Struct_3(Struct_2(Struct_1(1i, ~_wgslsmith_div_u32(19106u, 4294967295u), global1.yxw), Struct_1(abs(arg_2.x), 4294967295u >> (1u % 32u), _wgslsmith_div_vec3_i32(vec3<i32>(0i, -12280i, -43051i), max(global1.wyz, vec3<i32>(1i, global1.x, global1.x))))), _wgslsmith_clamp_u32(~(~u_input.a), reverseBits(0u), _wgslsmith_sub_u32(_wgslsmith_mod_u32(41571u, ~u_input.a), select(global3[_wgslsmith_index_u32(4294967295u, 29u)] << (1u % 32u), 4294967295u ^ global3[_wgslsmith_index_u32(17308u, 29u)], arg_0.x < 1000f))));
    var var_2 = select(firstLeadingBit(vec4<u32>(min(~u_input.a, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(40104u, 29u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 29u)], 29u)]), 29u)]), ~_wgslsmith_mod_u32(1u, 73631u), ~var_1.a.b.b, _wgslsmith_add_u32(~4294967295u, 4294967295u))), _wgslsmith_div_vec4_u32(~abs(abs(vec4<u32>(u_input.a, global3[_wgslsmith_index_u32(18202u, 29u)], var_1.a.a.b, 0u))), ~reverseBits(max(vec4<u32>(40342u, global3[_wgslsmith_index_u32(var_1.a.b.b, 29u)], global3[_wgslsmith_index_u32(var_1.b, 29u)], 40511u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))), true);
    let var_3 = Struct_2(Struct_1(i32(-1i) * -(arg_2.x & var_1.a.a.a), ~4294967295u, (abs(global1.zyw) | global1.yzy) & (global1.wyy | global1.yyz)), Struct_1(i32(-1i) * -1i, var_1.b, select(~global1.xzz, vec3<i32>(10790i, _wgslsmith_mult_i32(var_1.a.a.a, global1.x), reverseBits(-2147483647i)), all(select(vec2<bool>(false, true), vec2<bool>(false, false), true)))));
    return _wgslsmith_mult_u32(~firstLeadingBit(firstLeadingBit(var_2.x)), _wgslsmith_add_u32(~u_input.a, max(1u, var_3.b.b)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<f32>) -> vec3<bool> {
    global3 = array<u32, 29>();
    var var_0 = global0[_wgslsmith_index_u32(countOneBits(min(937u, ~37023u)), 12u)];
    global2 = _wgslsmith_mult_u32(~1u, var_0.a.b.b);
    var var_1 = ~vec2<u32>(countOneBits(~54721u), var_0.b) >> (~countOneBits(vec2<u32>(2780u, arg_0.b)) % vec2<u32>(32u));
    global3 = array<u32, 29>();
    return !(!select(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true)), vec3<bool>(true, true, true)));
}

fn func_2(arg_0: vec2<u32>) -> Struct_3 {
    let var_0 = func_4(Struct_1(43217i, _wgslsmith_mod_u32(arg_0.x, ~func_3(vec2<f32>(-905f, 339f), vec2<f32>(-289f, 262f), vec2<i32>(global1.x, 16022i))), _wgslsmith_clamp_vec3_i32(-(vec3<i32>(global1.x, -37357i, 1i) << (vec3<u32>(0u, 104271u, u_input.a) % vec3<u32>(32u))), firstLeadingBit(countOneBits(global1.yww)), _wgslsmith_mod_vec3_i32(global1.www, global1.yyw) << (vec3<u32>(u_input.a, 3841u, 46133u) % vec3<u32>(32u)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -717f), -302f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(327f)))))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-173f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -519f), _wgslsmith_f_op_f32(-1398f - -256f)))));
    var var_1 = !(true & !(!(!var_0.x)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1739f), _wgslsmith_div_f32(1369f, -1338f), var_0.x)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-598f)))));
    let var_3 = 30471u;
    let var_4 = Struct_2(Struct_1(global1.x, firstLeadingBit(0u), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(global1.yxy ^ vec3<i32>(global1.x, global1.x, 0i), -global1.zxw), (vec3<i32>(global1.x, global1.x, global1.x) ^ global1.xzw) << ((vec3<u32>(var_3, arg_0.x, u_input.a) << (vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(83461u, 29u)], 29u)], 29u)], 29u)], global3[_wgslsmith_index_u32(u_input.a, 29u)]) % vec3<u32>(32u))) % vec3<u32>(32u)))), Struct_1(-global1.x, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(arg_0.x, 4294967295u, 4294967295u)), abs(vec3<u32>(55595u, 55553u, 0u))), global1.zxw));
    return Struct_3(Struct_2(Struct_1(_wgslsmith_div_i32(global1.x, _wgslsmith_add_i32(-2147483647i, global1.x)), var_3, ~(~vec3<i32>(1i, global1.x, -2147483647i))), var_4.a), min(max(u_input.a & u_input.a, 21095u), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0.x, 0u), 29u)]) << (~u_input.a % 32u));
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = func_2(~(~((vec2<u32>(global3[_wgslsmith_index_u32(u_input.a, 29u)], global3[_wgslsmith_index_u32(u_input.a, 29u)]) << (vec2<u32>(2110u, u_input.a) % vec2<u32>(32u))) >> (~vec2<u32>(4938u, u_input.a) % vec2<u32>(32u)))));
    var var_1 = Struct_3(func_2(~vec2<u32>(63136u, var_0.b)).a, 13724u);
    var var_2 = all(vec4<bool>((true && func_4(Struct_1(-57066i, 1u, var_0.a.b.c), vec3<f32>(882f, 885f, 186f), vec2<f32>(arg_0.x, 918f)).x) | !any(vec3<bool>(true, false, false)), !(_wgslsmith_dot_vec3_u32(vec3<u32>(34352u, var_0.b, 19451u), vec3<u32>(0u, 4294967295u, global3[_wgslsmith_index_u32(4294967295u, 29u)])) == 4294967295u), true, true));
    var var_3 = func_2(_wgslsmith_mult_vec2_u32(vec2<u32>(0u ^ var_1.a.a.b, 1u), reverseBits(vec2<u32>(~4294967295u, abs(64836u))))).a.a;
    var var_4 = -232f;
    return var_1.a.b;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    let var_0 = 26347u;
    global0 = array<Struct_3, 12>();
    global0 = array<Struct_3, 12>();
    var var_1 = _wgslsmith_f_op_f32(-235f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(709f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-434f, 452f, false)) - _wgslsmith_f_op_f32(-1346f - -930f))))));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(abs(min(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 12608u, 23507u), vec3<u32>(u_input.a, u_input.a, 1u)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(19333u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 29u)], 29u)], 29u)], u_input.a), vec3<u32>(u_input.a, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(40208u, 29u)], 29u)], u_input.a)))), abs((_wgslsmith_div_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(u_input.a, 29u)], u_input.a, 0u), vec3<u32>(global3[_wgslsmith_index_u32(1u, 29u)], 0u, global3[_wgslsmith_index_u32(12974u, 29u)])) ^ vec3<u32>(1u, 4294967295u, 2913u)) & ~(vec3<u32>(u_input.a, 4294967295u, 4294967295u) | vec3<u32>(0u, u_input.a, 0u))), true);
    let var_1 = func_5(Struct_2(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2380f, 1228f))), Struct_1(select(global1.x, global1.x, true) | global1.x, var_0.x, reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(-24495i, -2147483647i, 1i), vec3<i32>(-31780i, 32504i, global1.x))))), Struct_2(func_1(vec2<f32>(_wgslsmith_f_op_f32(select(229f, 119f, false)), _wgslsmith_f_op_f32(abs(-1141f)))), func_2(~abs(var_0.zz)).a.b), true);
    global0 = array<Struct_3, 12>();
    var var_2 = 4294967295u;
    var var_3 = ~(~(~global3[_wgslsmith_index_u32(4294967295u, 29u)]));
    global2 = max(firstTrailingBit(u_input.a) & (var_1.b ^ ~func_3(vec2<f32>(1054f, 107f), vec2<f32>(2509f, -1825f), vec2<i32>(2147483647i, global1.x))), 38436u);
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(u_input.a), global1.x & 1i, abs(-_wgslsmith_sub_vec3_i32(countOneBits(var_1.c), abs(vec3<i32>(2147483647i, -42757i, 0i)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(763f, 549f)))), -199f, -755f, _wgslsmith_f_op_f32(floor(435f))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1679f, -336f, -336f, -120f), vec4<f32>(-1167f, 106f, -1440f, 566f), true)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-477f, 1000f, 2212f, 313f)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1436f, 2026f, 340f, 1615f)))))));
}

