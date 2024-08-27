struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8> = array<i32, 8>(-28395i, i32(-2147483648), -24000i, 2147483647i, 1i, 37301i, -1i, i32(-2147483648));

var<private> global1: array<f32, 15> = array<f32, 15>(799f, 1255f, 1227f, -296f, 1493f, -2021f, -531f, -1630f, -2111f, -110f, -590f, -936f, 493f, 541f, -2636f);

var<private> global2: Struct_3 = Struct_3(Struct_2(Struct_1(33874i), Struct_1(1i)));

var<private> global3: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(Struct_1(-1i), Struct_1(3835i)), Struct_2(Struct_1(-6392i), Struct_1(2147483647i)), Struct_2(Struct_1(-8973i), Struct_1(-51508i)));

var<private> global4: array<Struct_2, 31>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    global2 = Struct_3(global3[_wgslsmith_index_u32(~abs(1u), 3u)]);
    var var_0 = ~((-_wgslsmith_clamp_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(0u, 8u)], 0i), u_input.a, vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(2968u, 8u)])) & (u_input.a | vec2<i32>(4411i, 28152i))) & -vec2<i32>(global0[_wgslsmith_index_u32(1u, 8u)], _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(27405u, 8u)], global0[_wgslsmith_index_u32(68341u, 8u)])));
    let var_1 = !(!select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, all(vec4<bool>(false, true, false, false)), true, true), vec4<bool>(any(vec3<bool>(true, false, true)), true, all(vec2<bool>(false, false)), any(vec2<bool>(false, true)))));
    global2 = Struct_3(Struct_2(Struct_1(~(~global0[_wgslsmith_index_u32(0u, 8u)])), global2.a.a));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(firstLeadingBit(32923u), 15u)])), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(690f)), 1f, var_1.x)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 15u)]), -586f) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(1u, 15u)], 875f, -780f), vec4<f32>(global1[_wgslsmith_index_u32(50020u, 15u)], 1802f, global1[_wgslsmith_index_u32(22756u, 15u)], global1[_wgslsmith_index_u32(4182u, 15u)]))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1659f, global1[_wgslsmith_index_u32(28542u, 15u)], global1[_wgslsmith_index_u32(4294967295u, 15u)], 838f), vec4<f32>(global1[_wgslsmith_index_u32(93816u, 15u)], -703f, global1[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(36664u, 15u)]), var_1.x)))))));
    return !var_1.x;
}

fn func_4(arg_0: bool) -> i32 {
    var var_0 = vec4<i32>(u_input.a.x, _wgslsmith_mult_i32(-(~30606i), ~1i), 0i, select(countOneBits(2147483647i), ~reverseBits(-5263i), all(vec4<bool>(arg_0 && arg_0, arg_0, arg_0, global0[_wgslsmith_index_u32(1u, 8u)] < -30216i))));
    global1 = array<f32, 15>();
    global1 = array<f32, 15>();
    let var_1 = Struct_2(Struct_1(firstLeadingBit(u_input.a.x)), Struct_1(0i));
    let var_2 = global2.a.a;
    return _wgslsmith_mult_i32(~_wgslsmith_add_i32(_wgslsmith_mod_i32(abs(-1i), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(1u, 8u)], var_2.a)), 0i), var_1.b.a >> (0u % 32u));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> u32 {
    let var_0 = Struct_2(Struct_1(func_4(!func_3())), arg_1);
    global1 = array<f32, 15>();
    var var_1 = _wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_mod_u32(1u, arg_3), 31721u), vec2<u32>(~arg_3, ~arg_3) >> (~((vec2<u32>(1u, 0u) >> (vec2<u32>(0u, arg_3) % vec2<u32>(32u))) << (vec2<u32>(arg_3, 1469u) % vec2<u32>(32u))) % vec2<u32>(32u)));
    global1 = array<f32, 15>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1[_wgslsmith_index_u32(arg_3, 15u)], global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(1851u, 15u)])))))));
    return ~reverseBits(~countOneBits(~4294967295u));
}

fn func_5(arg_0: u32, arg_1: u32) -> Struct_3 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1773f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1, 15u)]), 146f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(~7653u, 15u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(17099u, 15u)] * global1[_wgslsmith_index_u32(arg_0, 15u)])))), 1105f, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~select(vec3<u32>(arg_0, arg_1, 100307u), vec3<u32>(29190u, arg_0, 723u), false)), ~vec3<u32>(87278u, _wgslsmith_clamp_u32(4294967295u, 88828u, arg_1), 0u)), 15u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0, 15u)] - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1, 15u)]))));
    global4 = array<Struct_2, 31>();
    var var_1 = false;
    var var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(reverseBits(13021i), _wgslsmith_dot_vec2_i32(vec2<i32>(13162i, -58107i) & abs(vec2<i32>(global0[_wgslsmith_index_u32(22992u, 8u)], u_input.a.x)), _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, global0[_wgslsmith_index_u32(arg_1, 8u)])), vec2<i32>(global2.a.a.a, global0[_wgslsmith_index_u32(4294967295u, 8u)])))), vec2<i32>(u_input.a.x, select(u_input.a.x, -(u_input.a.x ^ 5822i), false)));
    var var_3 = Struct_3(Struct_2(global2.a.b, global2.a.a));
    return Struct_3(var_3.a);
}

fn func_6(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: bool, arg_3: Struct_3) -> bool {
    global4 = array<Struct_2, 31>();
    var var_0 = func_5(_wgslsmith_mod_u32(1u, 1350u), _wgslsmith_add_u32(0u, 35088u)).a.b;
    return !(!(!select(true, global1[_wgslsmith_index_u32(4294967295u, 15u)] == -1384f, global1[_wgslsmith_index_u32(46403u, 15u)] >= global1[_wgslsmith_index_u32(arg_1.x, 15u)])));
}

fn func_7(arg_0: bool, arg_1: vec2<bool>, arg_2: bool) -> Struct_3 {
    var var_0 = ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~abs(select(vec4<u32>(11549u, 1u, 21142u, 0u), vec4<u32>(4294967295u, 4294967295u, 36702u, 4294967295u), arg_0)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(4294967295u, 1u, 5110u, 23761u)), ~1u, ~(~28022u), 39714u)), 8u)];
    var var_1 = ~global2.a.a.a;
    global3 = array<Struct_2, 3>();
    var var_2 = vec2<bool>(any(!vec3<bool>(arg_1.x, arg_0, true)), any(!arg_1));
    global3 = array<Struct_2, 3>();
    return Struct_3(global4[_wgslsmith_index_u32(4294967295u, 31u)]);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_sub_i32(i32(-1i) * -arg_1.a, ~abs(-1i)));
    global2 = func_7(func_6(global4[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(1u, 4294967295u, 1u), 31u)], ~vec4<u32>(1u, 1u, 1u, 1u), true, func_5(~105280u, _wgslsmith_mod_u32(func_2(Struct_2(global2.a.b, Struct_1(25686i)), Struct_1(global2.a.b.a), -63578i, 7726u), select(13814u, 314u, true)))), select(!vec2<bool>(arg_2, !arg_2), vec2<bool>(any(!vec3<bool>(false, arg_2, arg_2)), true), all(!select(vec3<bool>(false, arg_2, arg_2), vec3<bool>(arg_2, false, arg_2), true))), arg_2);
    global2 = func_7(arg_2, vec2<bool>(true & any(vec2<bool>(true, true)), true), true || select(all(vec3<bool>(arg_2, false, true)), !func_6(Struct_2(Struct_1(0i), arg_1), vec4<u32>(20742u, 17660u, 85737u, 76026u), arg_2, Struct_3(global3[_wgslsmith_index_u32(4294967295u, 3u)])), true));
    global0 = array<i32, 8>();
    let var_1 = Struct_1(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(24097i, arg_1.a, var_0.a, global2.a.a.a), vec4<i32>(arg_1.a, 12888i, -3050i, global0[_wgslsmith_index_u32(43668u, 8u)])) | firstTrailingBit(vec4<i32>(global2.a.b.a, var_0.a, 1i, 1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-39528i, 0i, 42109i, -19701i), vec4<i32>(u_input.a.x, global2.a.b.a, 2147483647i, u_input.a.x)) ^ (vec4<i32>(-40160i, var_0.a, arg_1.a, arg_1.a) & vec4<i32>(var_0.a, u_input.a.x, 51612i, 2147483647i))), abs(select(2147483647i | var_0.a, min(0i, -2147483647i), arg_2))));
    return global4[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~_wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 47637u, 0u), vec3<u32>(0u, 36244u, 1u))), ~_wgslsmith_div_u32(~1u, ~0u)), 31u)];
}

fn func_8(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> vec3<i32> {
    global3 = array<Struct_2, 3>();
    global3 = array<Struct_2, 3>();
    var var_0 = func_5(abs(abs(select(16001u, 10771u, false))) | select(1u, _wgslsmith_sub_u32(87989u, 0u), true), _wgslsmith_clamp_u32(1u << (1u % 32u), _wgslsmith_dot_vec2_u32(max(~vec2<u32>(18199u, 53403u), ~vec2<u32>(4294967295u, 65395u)), ~(~vec2<u32>(1u, 0u))), 1u));
    var var_1 = firstLeadingBit(min(firstTrailingBit(vec4<i32>(-2147483647i, -1i, -58119i, max(-1i, var_0.a.a.a))), -vec4<i32>(-20173i, 0i, global2.a.b.a | 2147483647i, -2147483647i)));
    global0 = array<i32, 8>();
    return var_1.zzz;
}

fn func_9(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: i32, arg_3: bool) -> Struct_3 {
    global3 = array<Struct_2, 3>();
    var var_0 = Struct_3(Struct_2(Struct_1(-firstTrailingBit(arg_1.a.b.a)), Struct_1(19400i)));
    global1 = array<f32, 15>();
    global1 = array<f32, 15>();
    var var_1 = -(vec2<i32>(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-66754i, 1i, 15801i), -vec3<i32>(arg_0.x, u_input.a.x, -42553i))) >> (firstLeadingBit(vec2<u32>(1u, 1u)) % vec2<u32>(32u)));
    return Struct_3(global4[_wgslsmith_index_u32(~74222u, 31u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_9(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(55461i, 0i, global2.a.b.a), vec3<i32>(0i, global0[_wgslsmith_index_u32(10925u, 8u)], global2.a.b.a)), i32(-1i) * -8227i, global2.a.a.a), select(abs(vec3<i32>(-2147483647i, global2.a.a.a, 30080i)), min(vec3<i32>(global0[_wgslsmith_index_u32(33008u, 8u)], 0i, -51379i), vec3<i32>(1i, -1i, global0[_wgslsmith_index_u32(0u, 8u)])), true)) ^ (func_8(Struct_3(Struct_2(Struct_1(2307i), Struct_1(global0[_wgslsmith_index_u32(22754u, 8u)]))), func_1(1072f, global2.a.a, true, global0[_wgslsmith_index_u32(4294967295u, 8u)]), global3[_wgslsmith_index_u32(1u, 3u)], func_1(-1000f, Struct_1(u_input.a.x), true, global2.a.a.a).b) >> (reverseBits(vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u))), Struct_3(global2.a), 0i, false);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(1u, 15u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(21614u, 15u)])))))));
    global4 = array<Struct_2, 31>();
    global0 = array<i32, 8>();
    var_0 = global1[_wgslsmith_index_u32(~81487u, 15u)];
    var var_1 = select(vec4<bool>(true, true, true, true), select(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), false), select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, 18789i == global2.a.b.a, func_3(), true), vec4<bool>(true, true, true, true)), select(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), true), select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(false, true, true, false)), vec4<bool>(false, false, false, true)), !vec4<bool>(any(vec2<bool>(true, true)), true, false, any(vec4<bool>(true, true, false, false)))));
    let var_2 = global4[_wgslsmith_index_u32(~74241u, 31u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.a, _wgslsmith_f_op_f32(round(-879f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(113045u, 15u)], -820f, global1[_wgslsmith_index_u32(1u, 15u)], -332f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-818f, global1[_wgslsmith_index_u32(64635u, 15u)], -247f, -519f))) + vec4<f32>(_wgslsmith_f_op_f32(floor(-1049f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1305f))), 792f, global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(0u, 35096u), 15u)])), vec4<u32>(1u, 1u, reverseBits(92164u), 0u));
}

