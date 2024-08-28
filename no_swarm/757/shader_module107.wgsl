struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: vec2<u32>,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6>;

var<private> global1: array<u32, 11>;

var<private> global2: array<u32, 4>;

var<private> global3: f32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec2<bool>) -> bool {
    global0 = array<bool, 6>();
    let var_0 = max(abs(-(~(-vec4<i32>(u_input.d.x, 173i, u_input.d.x, u_input.d.x)))), ~(~(select(vec4<i32>(u_input.d.x, u_input.d.x, -2147483647i, -2147483647i), vec4<i32>(u_input.d.x, 0i, u_input.d.x, -22635i), true) << ((u_input.c | u_input.c) % vec4<u32>(32u)))));
    let var_1 = ~u_input.d;
    let var_2 = max(~select(_wgslsmith_mod_vec2_u32(u_input.a.xz, _wgslsmith_div_vec2_u32(u_input.a.zz, u_input.a.yx)), u_input.c.zw, any(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 6u)])) && (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(5294u, 4u)], 11u)], 4u)], 4u)] < 43046u)), select(vec2<u32>(_wgslsmith_mult_u32(u_input.b, 53010u), ~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 11u)], 11u)])), u_input.a.yx, true));
    global0 = array<bool, 6>();
    return any(select(vec3<bool>(true, arg_0.x, !all(vec4<bool>(global0[_wgslsmith_index_u32(17859u, 6u)], false, true, false))), !select(select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(arg_0.x, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2.x, 11u)], 6u)], true), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.x, 4u)], 11u)], 6u)]), vec3<bool>(false, true, false), true), !(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_2.x, 0u), u_input.c.xyx) >= countOneBits(global2[_wgslsmith_index_u32(0u, 4u)]))));
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -252f, 354f, -473f) * vec4<f32>(-146f, 523f, -1016f, _wgslsmith_div_f32(-928f, 279f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1746f * 1669f), 403f, _wgslsmith_f_op_f32(-1762f + 860f), _wgslsmith_f_op_f32(f32(-1f) * -878f)))));
    let var_1 = _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(~u_input.c.yz, max(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 51802u), vec2<u32>(14306u, global1[_wgslsmith_index_u32(4294967295u, 11u)])), u_input.a.zy & u_input.c.yx) | ~vec2<u32>(global2[_wgslsmith_index_u32(0u, 4u)], u_input.b)), ~_wgslsmith_add_vec2_u32(vec2<u32>(max(4294967295u, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(36649u, 4u)], 4u)], 11u)]), global2[_wgslsmith_index_u32(1u, 4u)]), u_input.c.wx));
    global0 = array<bool, 6>();
    return Struct_3(select(select(select(!vec3<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 11u)], 6u)], global0[_wgslsmith_index_u32(10560u, 6u)], global0[_wgslsmith_index_u32(12045u, 6u)]), select(vec3<bool>(true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.x, 11u)], 6u)], global0[_wgslsmith_index_u32(89868u, 6u)]), vec3<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(71727u, 4u)], 6u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 11u)], 6u)], global0[_wgslsmith_index_u32(85521u, 6u)]), global0[_wgslsmith_index_u32(0u, 6u)]), var_0.x > 1936f), vec3<bool>(!global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 11u)], 6u)], all(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 6u)])), global0[_wgslsmith_index_u32(var_1.x, 6u)] == true), _wgslsmith_mod_i32(u_input.d.x, u_input.d.x) < 17461i), select(vec3<bool>(!global0[_wgslsmith_index_u32(var_1.x, 6u)], true, true), vec3<bool>(func_3(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], true)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, u_input.a.x), 6u)], func_3(vec2<bool>(false, false))), !select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 6u)], false, global0[_wgslsmith_index_u32(1u, 6u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(6735u, 6u)], true), vec3<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(86775u, 4u)], 11u)], 6u)], false, true))), vec3<bool>(global0[_wgslsmith_index_u32(0u, 6u)], _wgslsmith_div_i32(-18184i, -2997i) > select(u_input.d.x, u_input.d.x, global0[_wgslsmith_index_u32(var_1.x, 6u)]), select(all(vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(34079u, 6u)])), !global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 4u)], 6u)], u_input.d.x <= u_input.d.x))), Struct_1(var_0.zxx, select(vec3<bool>(any(vec2<bool>(true, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], 6u)])), true, false), select(!vec3<bool>(true, false, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 4u)], 6u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 6u)], true, false), vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 6u)], true), vec3<bool>(true, true, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(50343u, 4u)], 4u)], 6u)])), func_3(vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 6u)]))), !select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], true, global0[_wgslsmith_index_u32(var_1.x, 6u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 6u)], false), vec3<bool>(false, global0[_wgslsmith_index_u32(18049u, 6u)], true))), var_1, !select(select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.c.x, 6u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 11u)], 6u)]), vec4<bool>(global0[_wgslsmith_index_u32(14697u, 6u)], true, true, global0[_wgslsmith_index_u32(5870u, 6u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(40539u, 11u)], 6u)], global0[_wgslsmith_index_u32(66316u, 6u)])), !vec4<bool>(true, global0[_wgslsmith_index_u32(35038u, 6u)], false, global0[_wgslsmith_index_u32(119650u, 6u)]), global0[_wgslsmith_index_u32(~1u, 6u)]), ~u_input.d.x), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.ywx, var_0.zzz)), vec3<bool>(!(!global0[_wgslsmith_index_u32(u_input.a.x, 6u)]), true, all(select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 6u)], true, global0[_wgslsmith_index_u32(29139u, 6u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(98381u, 11u)], 6u)], global0[_wgslsmith_index_u32(1u, 6u)]), global0[_wgslsmith_index_u32(u_input.b, 6u)]))), u_input.c.zx, !select(!vec4<bool>(false, false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.x, 11u)], 11u)], 11u)], 6u)], true), vec4<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 4u)], 6u)], global0[_wgslsmith_index_u32(0u, 6u)], true, false), global0[_wgslsmith_index_u32(36733u, 6u)] || true), abs(min(0i, _wgslsmith_div_i32(u_input.d.x, 15689i)))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_0.x, -309f)))))), Struct_1(var_0.yww, select(select(vec3<bool>(true, true, global0[_wgslsmith_index_u32(1u, 6u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(21486u, 6u)], true, false), vec3<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 4u)], 6u)], global0[_wgslsmith_index_u32(var_1.x, 6u)], true), vec3<bool>(true, true, true)), true), select(vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(var_1.x, 6u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 4u)], 6u)], true), vec3<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 6u)]), global0[_wgslsmith_index_u32(31336u, 6u)]), !vec3<bool>(true, false, global0[_wgslsmith_index_u32(1u, 6u)])), true), var_1, select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(43896u, 6u)], false), select(vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(u_input.b, 6u)]), vec4<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 11u)], 4u)], 6u)], true, false, global0[_wgslsmith_index_u32(700u, 6u)]), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], 6u)]), false), !select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(u_input.a.x, 6u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 11u)], 6u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 11u)], 11u)], 6u)]), vec4<bool>(true, false, global0[_wgslsmith_index_u32(91318u, 6u)], global0[_wgslsmith_index_u32(1u, 6u)]), vec4<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(25318u, 4u)], 4u)], 4u)], 6u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 4u)], 6u)], global0[_wgslsmith_index_u32(0u, 6u)], false)), vec4<bool>(select(true, true, global0[_wgslsmith_index_u32(1u, 6u)]), global0[_wgslsmith_index_u32(1u, 6u)], all(vec3<bool>(false, global0[_wgslsmith_index_u32(var_1.x, 6u)], false)), global0[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(u_input.a.x, 4u)], 6u)])), -2147483647i));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4) -> vec3<u32> {
    let var_0 = !all(arg_0.a.zy);
    var var_1 = _wgslsmith_mod_i32(1508i >> (global1[_wgslsmith_index_u32(func_2().c.c.x, 11u)] % 32u), ~(~15237i)) << (min(u_input.b, _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(~(~arg_0.e.c.x), 11u)], ~global1[_wgslsmith_index_u32(arg_1.a.c.x, 11u)] << (1u % 32u))) % 32u);
    global2 = array<u32, 4>();
    var var_2 = arg_0;
    var_1 = ~(-10506i ^ u_input.d.x);
    return u_input.a;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: f32, arg_3: i32) -> vec3<bool> {
    let var_0 = (_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.c.zyw, u_input.c.zww, u_input.a) ^ _wgslsmith_add_vec3_u32(u_input.c.zyw, u_input.c.wwy), ~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.c.c.x, 11u)], 11u)], 4294967295u, 1u)) & ~u_input.c.yyy) | firstTrailingBit(func_4(func_2(), Struct_4(Struct_1(arg_1.b.a, vec3<bool>(global0[_wgslsmith_index_u32(35391u, 6u)], true, true), u_input.c.zy, arg_1.b.d, 33670i))));
    global0 = array<bool, 6>();
    global2 = array<u32, 4>();
    let var_1 = 54600u;
    global2 = array<u32, 4>();
    return arg_1.c.b;
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: bool, arg_3: f32) -> Struct_1 {
    global0 = array<bool, 6>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1188f)), _wgslsmith_f_op_f32(-808f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1335f)), arg_0.c.a.x)))) - _wgslsmith_f_op_f32(step(-896f, _wgslsmith_f_op_f32(floor(arg_1)))));
    let var_1 = arg_0.d;
    global3 = _wgslsmith_f_op_f32(min(var_0, -855f));
    var var_2 = arg_2;
    return func_2().c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 6>();
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -152f));
    global2 = array<u32, 4>();
    global2 = array<u32, 4>();
    var var_0 = Struct_4(func_5(Struct_3(select(func_1(vec2<f32>(-818f, -308f), Struct_3(vec3<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(39790u, 11u)], 6u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(18571u, 4u)], 6u)], global0[_wgslsmith_index_u32(u_input.b, 6u)]), Struct_1(vec3<f32>(-1244f, -1000f, -673f), vec3<bool>(global0[_wgslsmith_index_u32(0u, 6u)], false, false), u_input.a.xx, vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 4u)], 6u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 11u)], 6u)]), u_input.d.x), Struct_1(vec3<f32>(1060f, 1338f, 3641f), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 6u)], true, global0[_wgslsmith_index_u32(u_input.b, 6u)]), u_input.c.zy, vec4<bool>(false, false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 11u)], 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)]), 0i), Struct_2(760f), Struct_1(vec3<f32>(767f, 1366f, 1184f), vec3<bool>(false, false, global0[_wgslsmith_index_u32(5920u, 6u)]), u_input.a.zx, vec4<bool>(true, false, global0[_wgslsmith_index_u32(29209u, 6u)], false), 1i)), -370f, u_input.d.x), vec3<bool>(true, false, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 4u)], 6u)]), func_1(vec2<f32>(-1189f, 1187f), Struct_3(vec3<bool>(global0[_wgslsmith_index_u32(12526u, 6u)], global0[_wgslsmith_index_u32(u_input.a.x, 6u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(72434u, 4u)], 6u)]), Struct_1(vec3<f32>(-458f, -325f, 593f), vec3<bool>(false, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 11u)], 11u)], 4u)], 6u)], true), u_input.c.zz, vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], global0[_wgslsmith_index_u32(76632u, 6u)], global0[_wgslsmith_index_u32(15273u, 6u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 4u)], 6u)]), u_input.d.x), Struct_1(vec3<f32>(767f, 1761f, 803f), vec3<bool>(global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(17355u, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)]), u_input.a.yy, vec4<bool>(global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(29431u, 11u)], 6u)], global0[_wgslsmith_index_u32(0u, 6u)], false), u_input.d.x), Struct_2(-906f), Struct_1(vec3<f32>(2203f, -909f, -173f), vec3<bool>(true, global0[_wgslsmith_index_u32(28678u, 6u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 11u)], 6u)]), vec2<u32>(u_input.a.x, global2[_wgslsmith_index_u32(u_input.c.x, 4u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10025u, 11u)], 6u)], global0[_wgslsmith_index_u32(u_input.b, 6u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 4u)], 6u)]), u_input.d.x)), 158f, -1i)), func_2().c, Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(371f, 1000f, 339f))), !vec3<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 4u)], 6u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(35580u, 4u)], 6u)], false), u_input.c.zx ^ vec2<u32>(0u, 5593u), select(vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 6u)], false, true), vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(62061u, 6u)]), vec4<bool>(global0[_wgslsmith_index_u32(33487u, 6u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 4u)], 4u)], 6u)], false, global0[_wgslsmith_index_u32(u_input.b, 6u)])), i32(-1i) * -6067i), Struct_2(_wgslsmith_f_op_f32(round(-268f))), func_2().c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1019f * _wgslsmith_f_op_f32(abs(907f)))), true, _wgslsmith_f_op_f32(616f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -746f)))));
    let var_1 = Struct_3(func_2().a, func_5(func_2(), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_0.a.a.x, 328f, func_1(var_0.a.a.xz, Struct_3(var_0.a.b, var_0.a, var_0.a, Struct_2(var_0.a.a.x), Struct_1(vec3<f32>(1031f, var_0.a.a.x, 1034f), var_0.a.d.wyw, vec2<u32>(0u, 0u), var_0.a.d, -2147483647i)), var_0.a.a.x, var_0.a.e).x)), var_0.a.a.x, global0[_wgslsmith_index_u32(~firstLeadingBit(global2[_wgslsmith_index_u32(6367u, 4u)]), 6u)])), !global0[_wgslsmith_index_u32(1u, 6u)], _wgslsmith_f_op_f32(trunc(var_0.a.a.x))), func_2().c, Struct_2(-1000f), Struct_1(vec3<f32>(2075f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a.x) - -260f), var_0.a.a.x), vec3<bool>(true, var_0.a.d.x, false), u_input.a.xy, func_5(Struct_3(!var_0.a.b, Struct_1(var_0.a.a, vec3<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 11u)], 11u)], 11u)], 6u)], global0[_wgslsmith_index_u32(17477u, 6u)], var_0.a.b.x), u_input.a.yz, var_0.a.d, -21141i), func_5(Struct_3(var_0.a.b, var_0.a, var_0.a, Struct_2(-141f), Struct_1(var_0.a.a, var_0.a.d.zxy, var_0.a.c, var_0.a.d, -9947i)), 376f, true, var_0.a.a.x), func_2().d, Struct_1(var_0.a.a, vec3<bool>(false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(33301u, 11u)], 6u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 4u)], 6u)]), vec2<u32>(var_0.a.c.x, var_0.a.c.x), vec4<bool>(true, true, false, var_0.a.d.x), -73150i)), var_0.a.a.x, func_5(Struct_3(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 6u)], true, true), var_0.a, var_0.a, Struct_2(var_0.a.a.x), Struct_1(vec3<f32>(1113f, var_0.a.a.x, var_0.a.a.x), var_0.a.b, u_input.a.xy, var_0.a.d, u_input.d.x)), var_0.a.a.x, true, _wgslsmith_f_op_f32(var_0.a.a.x * var_0.a.a.x)).d.x, -1189f).d, -1i));
    let var_2 = select(~_wgslsmith_sub_vec3_i32(~vec3<i32>(-57793i, u_input.d.x, -11538i), countOneBits(vec3<i32>(49573i, u_input.d.x, 4638i))) ^ vec3<i32>(_wgslsmith_add_i32(~1i, 0i), -(u_input.d.x << (47904u % 32u)), _wgslsmith_mult_i32(u_input.d.x, ~u_input.d.x)), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(u_input.d.x, u_input.d.x), -2147483647i, var_0.a.e) << (vec3<u32>(_wgslsmith_mult_u32(u_input.c.x, var_1.c.c.x), ~4294967295u, _wgslsmith_dot_vec2_u32(var_1.c.c, vec2<u32>(u_input.c.x, 61154u))) % vec3<u32>(32u)), ((vec3<i32>(-2147483647i, var_1.e.e, -6364i) << (u_input.c.yxx % vec3<u32>(32u))) << (u_input.c.zww % vec3<u32>(32u))) & -(vec3<i32>(var_1.e.e, var_0.a.e, var_0.a.e) >> (vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 11u)], 59131u, global1[_wgslsmith_index_u32(43999u, 11u)]) % vec3<u32>(32u)))), select(vec3<bool>(var_1.c.b.x, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 34239u), 6u)], var_1.c.d.x), !(!(!var_1.b.d.ywz)), global0[_wgslsmith_index_u32(133199u & global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(var_0.a.c, u_input.c.wy), 11u)], 6u)]));
    global0 = array<bool, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(173f);
}

