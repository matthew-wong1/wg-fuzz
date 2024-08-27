struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<f32>,
    c: u32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17> = array<u32, 17>(4294967295u, 16756u, 52209u, 1u, 4294967295u, 1u, 75618u, 0u, 1u, 4294967295u, 4294967295u, 72283u, 1u, 89279u, 4294967295u, 4294967295u, 28249u);

var<private> global1: Struct_1;

var<private> global2: array<f32, 18> = array<f32, 18>(2643f, 2435f, -712f, -554f, -1314f, -1217f, -1070f, -2252f, 345f, 1007f, -355f, 2419f, 2097f, 604f, 962f, 1290f, 1095f, 304f);

var<private> global3: vec3<i32> = vec3<i32>(0i, -2969i, 2147483647i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> bool {
    var var_0 = u_input.a.x;
    let var_1 = select(!(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), false))), select(select(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, all(vec4<bool>(true, true, false, false)), false, any(vec2<bool>(true, true))), select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true))), select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), false), vec4<bool>(true, true, true, true)), all(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true))))), any(vec2<bool>(false, any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false)))));
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(723f, 188f, -1153f, global1.a.x), global1.a), vec4<f32>(-668f, global2[_wgslsmith_index_u32(u_input.a.x, 18u)], 1300f, 1010f), true)), global1.a)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(global1.a)), global1.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.c, 289f, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], 18u)], -1348f)))), vec4<bool>(false, var_1.x, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 17u)], 17u)], 18u)] <= global1.c, true)))), vec2<i32>(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(global3.x, global3.x), abs(global1.d.yz))), ~_wgslsmith_dot_vec3_i32(-vec3<i32>(-12692i, 20725i, global1.b.x), vec3<i32>(-91934i, 0i, 38781i))), 887f, ~vec3<i32>(global3.x, reverseBits(_wgslsmith_dot_vec3_i32(global1.d, vec3<i32>(0i, global1.d.x, 1i))), i32(-1i) * -global3.x));
    var var_2 = Struct_3(Struct_2(-384f, _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(abs(0u), 18u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global1.a.xxx)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-432f, 223f, -1281f, global1.c) * vec4<f32>(global1.c, global2[_wgslsmith_index_u32(u_input.a.x, 18u)], 986f, global2[_wgslsmith_index_u32(6350u, 18u)]))), vec2<i32>(global3.x, -31574i) ^ _wgslsmith_div_vec2_i32(global3.xz, global3.xz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1488f - -846f) - -594f), global1.d & ~global1.d), Struct_1(vec4<f32>(1f, -1000f, _wgslsmith_f_op_f32(abs(-120f)), -1126f), _wgslsmith_mult_vec2_i32(global3.zx, firstLeadingBit(vec2<i32>(1i, global3.x))), -1316f, ~firstTrailingBit(global1.d))), select(var_1, !select(var_1, select(var_1, var_1, var_1.x), true), false), Struct_1(global1.a, vec2<i32>(global3.x, global3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(507f * global2[_wgslsmith_index_u32(5195u, 18u)]))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-70554i, 33869i, 0i, global1.b.x), abs(vec4<i32>(0i, global1.b.x, global3.x, -23079i))), 23733i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global3.x, global1.d.x, 1i), global1.d, global1.d), ~vec3<i32>(global3.x, 26397i, -43814i)))));
    let var_3 = global1.a.zz;
    return var_1.x;
}

fn func_2(arg_0: Struct_4, arg_1: f32) -> Struct_2 {
    let var_0 = Struct_3(arg_0.c, vec4<bool>(all(!(!vec3<bool>(arg_0.a, true, arg_0.a))), any(vec3<bool>(arg_0.a, arg_0.a, true)), !select(arg_0.a, false, arg_0.a) || false, func_3()), arg_0.c.d);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.c.d.a)), global3.zy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1052f) + _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(countOneBits(~u_input.a.x), 18u)], _wgslsmith_f_op_f32(-arg_0.c.a), false))), _wgslsmith_clamp_vec3_i32((abs(vec3<i32>(global1.b.x, -1i, 1i)) >> (vec3<u32>(0u, 87303u, global0[_wgslsmith_index_u32(87247u, 17u)]) % vec3<u32>(32u))) >> (countOneBits(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 17u)], 17u)], 4294967295u, u_input.a.x)) % vec3<u32>(32u)), -select(global1.d, global1.d, arg_0.a) ^ (vec3<i32>(global3.x, 2147483647i, global3.x) << (~vec3<u32>(u_input.a.x, 0u, 4294967295u) % vec3<u32>(32u))), select(vec3<i32>(_wgslsmith_clamp_i32(var_0.a.e.b.x, 1i, global3.x), -47459i, 1i), abs(_wgslsmith_mod_vec3_i32(arg_0.c.e.d, vec3<i32>(global3.x, arg_0.b, 37941i))), func_3())));
    global3 = -abs(min(-min(vec3<i32>(48721i, 2147483647i, 1i), vec3<i32>(58513i, global3.x, -2147483647i)), -vec3<i32>(0i, 40184i, -1i)));
    global1 = var_0.c;
    var var_2 = !all(!select(!vec3<bool>(false, false, var_0.b.x), var_0.b.xww, vec3<bool>(arg_0.a, var_0.b.x, true)));
    return var_0.a;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec3<bool>) -> i32 {
    let var_0 = i32(-1i) * -(~_wgslsmith_sub_i32(1i, _wgslsmith_mult_i32(-8399i, arg_0)));
    var var_1 = arg_1;
    let var_2 = (arg_0 ^ ~global3.x) < var_1.d.b.x;
    let var_3 = abs(var_1.d.b.x);
    let var_4 = arg_1.d;
    return var_3;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_2) -> f32 {
    let var_0 = ~vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], countOneBits(~(~4294967295u)), 74733u, ~_wgslsmith_add_u32(global0[_wgslsmith_index_u32(max(57943u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 17u)], 17u)], 17u)]), 17u)], 42045u));
    global3 = ~(~abs(min(vec3<i32>(66880i, global3.x, -2147483647i), vec3<i32>(arg_2.e.d.x, global1.b.x, arg_0.a.d.b.x))));
    let var_1 = -func_4(1i, func_2(arg_1, arg_0.a.e.a.x), vec3<bool>(false, arg_0.b.x, !(0u != var_0.x)));
    let var_2 = -select(vec2<i32>(arg_1.c.e.b.x, 2147483647i), vec2<i32>(arg_0.c.b.x, i32(-1i) * -50163i), arg_0.b.zy);
    var var_3 = vec2<i32>(-10928i, var_2.x);
    return _wgslsmith_f_op_f32(841f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.c.e.a.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(871f)), 1f)))));
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> u32 {
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.e.a - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c, arg_0, global2[_wgslsmith_index_u32(13830u, 18u)], 741f)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(arg_1.d.a - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1531f, 626f, global1.c, global1.a.x))), vec4<f32>(_wgslsmith_f_op_f32(select(-1000f, 1000f, false)), _wgslsmith_f_op_f32(662f * arg_1.d.a.x), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(max(-171f, global2[_wgslsmith_index_u32(0u, 18u)])))))), _wgslsmith_div_vec2_i32(vec2<i32>(global3.x, abs(3600i)), ~func_2(Struct_4(false, 2147483647i, Struct_2(arg_0, global2[_wgslsmith_index_u32(34752u, 18u)], vec3<f32>(-962f, 259f, arg_1.c.x), arg_1.e, arg_1.e)), global2[_wgslsmith_index_u32(abs(u_input.a.x), 18u)]).e.b), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.c.x - 668f), _wgslsmith_f_op_f32(-182f - global2[_wgslsmith_index_u32(u_input.a.x, 18u)]))))), global1.d);
    global0 = array<u32, 17>();
    global2 = array<f32, 18>();
    global0 = array<u32, 17>();
    global1 = func_2(Struct_4(all(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))), global3.x, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) + 117f), global1.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.d.c, 130f, 250f)))), func_2(Struct_4(false, arg_1.e.b.x, arg_1), _wgslsmith_f_op_f32(min(-307f, global2[_wgslsmith_index_u32(21587u, 18u)]))).d, func_2(Struct_4(false, global3.x, Struct_2(arg_0, global1.c, arg_1.d.a.xwz, arg_1.e, arg_1.e)), -1261f).d)), _wgslsmith_f_op_f32(-arg_1.a)).d;
    return ~u_input.a.x | _wgslsmith_sub_u32(~(~global0[_wgslsmith_index_u32(45176u, 17u)] >> (33498u % 32u)), 19955u);
}

fn func_6(arg_0: bool) -> Struct_4 {
    global3 = func_2(Struct_4(true, _wgslsmith_dot_vec3_i32(-global1.d, global1.d), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -706f) - _wgslsmith_f_op_f32(global1.c - global2[_wgslsmith_index_u32(4294967295u, 18u)])), global1.c, _wgslsmith_f_op_vec3_f32(ceil(global1.a.wyx)), func_2(Struct_4(arg_0, global3.x, Struct_2(global1.a.x, global1.c, global1.a.xxx, Struct_1(global1.a, global3.zx, global2[_wgslsmith_index_u32(75925u, 18u)], global1.d), Struct_1(vec4<f32>(-126f, 420f, -1430f, -1370f), vec2<i32>(global3.x, 0i), -1032f, global1.d))), _wgslsmith_f_op_f32(exp2(global1.a.x))).d, Struct_1(vec4<f32>(global1.a.x, -670f, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 17u)], 18u)], global2[_wgslsmith_index_u32(6646u, 18u)]), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, global1.d.x), global1.b), _wgslsmith_f_op_f32(-global1.a.x), vec3<i32>(1i, -24094i, 2147483647i)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], 17u)], 1u | u_input.a.x), 18u)]), -1000f))).e.d;
    let var_0 = arg_0 && false;
    let var_1 = Struct_3(func_2(Struct_4(!all(vec4<bool>(arg_0, true, false, arg_0)), -59080i, Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -157f), _wgslsmith_f_op_f32(global1.c * -222f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1152f, global2[_wgslsmith_index_u32(1u, 18u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 17u)], 18u)]) - vec3<f32>(-1275f, -115f, -291f)), Struct_1(global1.a, vec2<i32>(-2147483647i, global3.x), global2[_wgslsmith_index_u32(62887u, 18u)], global1.d), func_2(Struct_4(true, global3.x, Struct_2(global1.a.x, global2[_wgslsmith_index_u32(u_input.a.x, 18u)], global1.a.wwz, Struct_1(global1.a, vec2<i32>(global1.d.x, 23825i), global2[_wgslsmith_index_u32(13661u, 18u)], global1.d), Struct_1(global1.a, global1.d.yz, global2[_wgslsmith_index_u32(u_input.a.x, 18u)], global1.d))), global2[_wgslsmith_index_u32(4294967295u, 18u)]).e)), global1.a.x), select(!vec4<bool>(true, false, true, arg_0), select(vec4<bool>(!var_0, true, !arg_0, !arg_0), !vec4<bool>(arg_0, arg_0, false, false), arg_0), !vec4<bool>(var_0, true, arg_0, !arg_0)), func_2(Struct_4(arg_0, func_4(abs(global1.d.x), func_2(Struct_4(true, 10941i, Struct_2(279f, global1.a.x, vec3<f32>(global1.c, global1.c, 577f), Struct_1(global1.a, global3.yz, global2[_wgslsmith_index_u32(0u, 18u)], vec3<i32>(global3.x, -40336i, global1.b.x)), Struct_1(global1.a, global1.b, global1.a.x, global1.d))), -877f), select(vec3<bool>(arg_0, true, var_0), vec3<bool>(false, arg_0, var_0), false)), func_2(Struct_4(var_0, global3.x, Struct_2(587f, -1609f, vec3<f32>(global1.c, -172f, global1.c), Struct_1(global1.a, global3.zx, global2[_wgslsmith_index_u32(21706u, 18u)], global1.d), Struct_1(global1.a, vec2<i32>(global1.d.x, 1i), global1.c, global1.d))), -1082f)), _wgslsmith_f_op_f32(global1.a.x * global2[_wgslsmith_index_u32(1u, 18u)])).d);
    global1 = func_2(Struct_4(any(!(!var_1.b)), -_wgslsmith_dot_vec3_i32(-vec3<i32>(global1.d.x, -3457i, global1.b.x), var_1.c.d), func_2(Struct_4(var_1.b.x, _wgslsmith_mod_i32(global1.b.x, var_1.a.d.d.x), Struct_2(global1.a.x, var_1.c.c, global1.a.xzz, Struct_1(global1.a, vec2<i32>(global1.d.x, global1.b.x), -1650f, vec3<i32>(-18603i, global1.d.x, 1i)), var_1.a.e)), _wgslsmith_f_op_f32(max(var_1.c.c, _wgslsmith_f_op_f32(-264f * global1.a.x))))), -535f).e;
    global2 = array<f32, 18>();
    return Struct_4(1211f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-460f)) - -453f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c + var_1.a.c.x) * _wgslsmith_f_op_f32(f32(-1f) * -221f))), -22134i, Struct_2(_wgslsmith_f_op_f32(-1328f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 505f)), global1.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(global1.a.x)), _wgslsmith_f_op_f32(252f - -1201f), _wgslsmith_f_op_f32(global1.a.x + 216f))), Struct_1(var_1.c.a, global1.d.yz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(409f, 673f)) + -511f), vec3<i32>(global1.b.x, ~2147483647i, abs(var_1.a.e.d.x))), var_1.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(1281f, Struct_2(_wgslsmith_f_op_f32(1076f - -526f), _wgslsmith_f_op_f32(func_1(Struct_3(Struct_2(237f, global1.c, global1.a.wwx, Struct_1(vec4<f32>(global1.a.x, 1702f, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(53853u, 17u)], 17u)], 18u)], global1.a.x), global3.zz, global2[_wgslsmith_index_u32(13598u, 18u)], global1.d), Struct_1(vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 18u)], 139f, global2[_wgslsmith_index_u32(u_input.a.x, 18u)], global1.c), global3.xy, -672f, vec3<i32>(0i, global1.d.x, global3.x))), vec4<bool>(true, true, false, false), Struct_1(global1.a, vec2<i32>(-3554i, global1.b.x), -267f, vec3<i32>(global3.x, 0i, 1i))), Struct_4(false, global3.x, Struct_2(-1026f, -1050f, vec3<f32>(global2[_wgslsmith_index_u32(1u, 18u)], 1000f, 749f), Struct_1(global1.a, vec2<i32>(1i, -1i), 582f, global1.d), Struct_1(global1.a, global1.d.zz, global1.c, vec3<i32>(0i, global1.b.x, global1.d.x)))), Struct_2(global1.a.x, -787f, global1.a.yyx, Struct_1(vec4<f32>(global2[_wgslsmith_index_u32(10480u, 18u)], -282f, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 17u)], 18u)], -423f), global3.xy, -1639f, global1.d), Struct_1(global1.a, vec2<i32>(2147483647i, -26244i), global1.c, vec3<i32>(global1.d.x, 28576i, -1i))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c, global2[_wgslsmith_index_u32(0u, 18u)], 1155f)), func_2(Struct_4(true, global3.x, Struct_2(624f, global2[_wgslsmith_index_u32(u_input.a.x, 18u)], vec3<f32>(-1244f, global1.a.x, -329f), Struct_1(vec4<f32>(-254f, -459f, global1.c, -1019f), global1.d.xy, global2[_wgslsmith_index_u32(u_input.a.x, 18u)], global1.d), Struct_1(vec4<f32>(-134f, global1.a.x, global1.a.x, -128f), vec2<i32>(global3.x, 1i), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(52022u, 17u)], 18u)], global1.d))), global1.c).e, Struct_1(vec4<f32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(69913u, 17u)], 18u)], -852f, global2[_wgslsmith_index_u32(1u, 18u)], -679f), vec2<i32>(global3.x, global3.x), -805f, vec3<i32>(-24894i, global3.x, -1i)))) <= ~21827u);
    global3 = func_6(any(!vec2<bool>(true, var_0.a))).c.e.d | vec3<i32>(-1i, 4741i, 23763i);
    var var_1 = vec4<bool>(var_0.a != (global2[_wgslsmith_index_u32(abs(~1u), 18u)] <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(28050u, 18u)])) - 566f)), func_6(var_0.a && (global0[_wgslsmith_index_u32(0u, 17u)] != 14248u)).a && any(vec3<bool>(var_0.a, var_0.a, func_3())), true, true);
    global3 = abs(var_0.c.d.d);
    let var_2 = func_6(true);
    var var_3 = var_1.xw;
    let x = u_input.a;
    s_output = StorageBuffer(global1.c, _wgslsmith_clamp_vec4_u32(~(_wgslsmith_div_vec4_u32(vec4<u32>(1u, global0[_wgslsmith_index_u32(25445u, 17u)], 12936u, 64253u), vec4<u32>(4294967295u, 4294967295u, 1u, 8321u)) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(30303u, 17u)], 49445u, global0[_wgslsmith_index_u32(4294967295u, 17u)], u_input.a.x), vec4<u32>(55020u, 18870u, 59296u, 56122u))), vec4<u32>(_wgslsmith_mult_u32(select(4294967295u, 0u, false), 0u), 1u, _wgslsmith_sub_u32(reverseBits(4294967295u), _wgslsmith_mult_u32(0u, 2318u)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 17u)], 17u)]), _wgslsmith_clamp_vec4_u32(vec4<u32>(9475u, min(90516u, global0[_wgslsmith_index_u32(87378u, 17u)]), 33971u ^ u_input.a.x, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], 0u)), ~abs(vec4<u32>(1293u, u_input.a.x, 4294967295u, u_input.a.x)), ~firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(1u, 17u)], u_input.a.x, 80916u)))), ~_wgslsmith_sub_i32(-29491i, -1i));
}

