struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: bool,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: vec3<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19>;

var<private> global1: bool;

var<private> global2: vec3<bool>;

var<private> global3: array<vec3<f32>, 26>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>) -> vec3<f32> {
    var var_0 = Struct_1(global3[_wgslsmith_index_u32(u_input.a.x, 26u)], true, !(0i != u_input.c), vec4<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(max(u_input.b & u_input.d, 3977u), 19u)], global0[_wgslsmith_index_u32(~select(u_input.d, u_input.a.x, false), 19u)]), _wgslsmith_f_op_f32(f32(-1f) * -497f), _wgslsmith_f_op_f32(f32(-1f) * -335f), global0[_wgslsmith_index_u32(1u, 19u)]), firstTrailingBit(vec4<i32>(~115150i, -10710i, u_input.c, 5101i) << (countOneBits(u_input.a >> (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_1 = _wgslsmith_div_vec2_i32(var_0.e.xx, ~min(_wgslsmith_mod_vec2_i32(vec2<i32>(-39592i, -4149i), var_0.e.yw), vec2<i32>(u_input.c & var_0.e.x, ~44378i)));
    var var_2 = 24817i;
    global1 = !(!all(vec2<bool>(var_0.b, global2.x)));
    global0 = array<f32, 19>();
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(1u, 19u)], 1029f, 448f), global3[_wgslsmith_index_u32(28242u, 26u)])) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_0.d.zyw - var_0.a)))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: f32) -> i32 {
    global3 = array<vec3<f32>, 26>();
    global3 = array<vec3<f32>, 26>();
    var var_0 = u_input.b;
    var_0 = u_input.e ^ u_input.e;
    global2 = !(!(!select(!vec3<bool>(true, global2.x, false), select(vec3<bool>(true, arg_2.b, global2.x), vec3<bool>(false, arg_2.b, false), vec3<bool>(arg_2.c, global2.x, global2.x)), global2.x)));
    return -4963i;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec3<bool>) -> Struct_2 {
    let var_0 = (_wgslsmith_mult_i32(1i, u_input.c) ^ func_4(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_3(vec2<bool>(global2.x, arg_2.x))), _wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(arg_0, 26u)] + global3[_wgslsmith_index_u32(3154u, 26u)]))), firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(u_input.c, -2147483647i, u_input.c))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(arg_0, 19u)], -252f, 494f) + vec3<f32>(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(arg_0, 19u)], global0[_wgslsmith_index_u32(1u, 19u)])), global2.x, false, _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(arg_1, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)], -520f, global0[_wgslsmith_index_u32(arg_1, 19u)]) + vec4<f32>(-1398f, 853f, -693f, global0[_wgslsmith_index_u32(arg_0, 19u)])), max(vec4<i32>(u_input.c, -2147483647i, 0i, -1i), vec4<i32>(u_input.c, 0i, u_input.c, -1i))), -2298f)) ^ ~_wgslsmith_dot_vec2_i32(vec2<i32>(abs(u_input.c), _wgslsmith_mod_i32(2147483647i, -1i)), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, -11301i), vec2<i32>(u_input.c, 1i)));
    var var_1 = -407f;
    global1 = _wgslsmith_div_f32(-461f, 1286f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1101f))))));
    var var_2 = global3[_wgslsmith_index_u32(arg_1, 26u)];
    var var_3 = _wgslsmith_clamp_vec3_i32(~firstTrailingBit(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(u_input.c, u_input.c, -2147483647i)), vec3<i32>(1i, u_input.c, -1i) >> (u_input.a.xwz % vec3<u32>(32u)))), vec3<i32>(-23393i, reverseBits(20612i), _wgslsmith_dot_vec2_i32((vec2<i32>(var_0, 45314i) << (u_input.a.wy % vec2<u32>(32u))) << (u_input.a.ww % vec2<u32>(32u)), vec2<i32>(~var_0, 0i))), _wgslsmith_mult_vec3_i32(abs(select(~vec3<i32>(u_input.c, 0i, var_0), abs(vec3<i32>(u_input.c, 20015i, var_0)), global2.x == true)), vec3<i32>(var_0, ~var_0 ^ ~u_input.c, -37967i)));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(round(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(arg_1, 45480u, arg_0, u_input.a.x), u_input.a), u_input.a), 26u)])), all(select(arg_2, select(vec3<bool>(arg_2.x, global2.x, true), vec3<bool>(false, true, true), false), arg_2)), true, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2133f, global0[_wgslsmith_index_u32(arg_1, 19u)], 492f, global0[_wgslsmith_index_u32(arg_0, 19u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], var_2.x, -1072f, -420f))) - vec4<f32>(-135f, global0[_wgslsmith_index_u32(u_input.d, 19u)], 956f, -538f))), max(vec4<i32>(u_input.c >> (1u % 32u), 0i, 13922i ^ var_3.x, ~32297i), vec4<i32>(22497i, u_input.c, -1i, u_input.c) << (u_input.a % vec4<u32>(32u)))), arg_2.x, arg_2.x, vec3<bool>(true, any(arg_2), global2.x), Struct_1(global3[_wgslsmith_index_u32(63939u, 26u)], true, select(false, global2.x, true || (var_3.x >= u_input.c)), _wgslsmith_div_vec4_f32(vec4<f32>(802f, _wgslsmith_f_op_f32(select(3025f, global0[_wgslsmith_index_u32(arg_1, 19u)], global2.x)), var_2.x, var_2.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(arg_1, 19u)], var_2.x, var_2.x, var_2.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1000f, var_2.x, var_2.x) - vec4<f32>(global0[_wgslsmith_index_u32(0u, 19u)], -3247f, -817f, -1244f)))), vec4<i32>(var_3.x, u_input.c, func_4(global3[_wgslsmith_index_u32(1u, 26u)], vec3<i32>(1i, -1i, var_0), Struct_1(vec3<f32>(-1764f, global0[_wgslsmith_index_u32(4294967295u, 19u)], -1369f), true, arg_2.x, vec4<f32>(var_2.x, global0[_wgslsmith_index_u32(41155u, 19u)], var_2.x, -824f), vec4<i32>(var_0, var_0, -15525i, u_input.c)), -1763f), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-11432i, -2147483647i, var_3.x)), vec3<i32>(var_3.x, -2147483647i, var_0)))));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_2 {
    global1 = !(-1524f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d, 19u)]))));
    var var_0 = arg_0;
    global1 = all(vec3<bool>(any(select(select(vec4<bool>(true, true, true, true), arg_1, false), arg_1, any(arg_1))), true, true));
    global3 = array<vec3<f32>, 26>();
    var var_1 = arg_0;
    return func_2(4294967295u, 9161u, vec3<bool>(true, true, false));
}

fn func_6(arg_0: Struct_2) -> Struct_2 {
    global1 = true;
    let var_0 = u_input.c;
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(func_5(Struct_2(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(1281f, -1454f, 2075f), vec3<f32>(-639f, 1288f, -423f)), global2.x, all(vec4<bool>(false, true, global2.x, true)), vec4<f32>(-263f, -1172f, global0[_wgslsmith_index_u32(13444u, 19u)], 195f), vec4<i32>(-4202i, arg_0.a.e.x, var_0, 2147483647i) >> (vec4<u32>(74722u, 4294967295u, 10665u, 32303u) % vec4<u32>(32u))), true, true, !func_2(u_input.b, u_input.a.x, vec3<bool>(false, false, false)).d, arg_0.e), vec4<bool>(true, !any(vec3<bool>(arg_0.c, arg_0.d.x, true)), true, !any(vec4<bool>(global2.x, false, true, arg_0.d.x))), func_5(arg_0, !vec4<bool>(true, false, false, global2.x), arg_0.e, arg_0.a.a).e, global3[_wgslsmith_index_u32(u_input.d, 26u)]).a.a));
    let var_2 = u_input.a.x;
    global3 = array<vec3<f32>, 26>();
    return Struct_2(arg_0.a, -483f > _wgslsmith_div_f32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(var_2, 2399u), var_2 | var_2, var_2), 19u)], 777f), ((_wgslsmith_dot_vec4_i32(arg_0.e.e, vec4<i32>(var_0, -1i, arg_0.e.e.x, u_input.c)) >> (u_input.b % 32u)) <= 2147483647i) | true, !arg_0.d, func_2(min(4294967295u, 1u), ~(~u_input.a.x), arg_0.d).e);
}

fn func_7(arg_0: f32, arg_1: Struct_2, arg_2: vec2<i32>) -> vec4<bool> {
    global2 = arg_1.d;
    var var_0 = _wgslsmith_f_op_f32(exp2(func_5(func_2(u_input.a.x, _wgslsmith_sub_u32(u_input.d, abs(u_input.a.x)), vec3<bool>(false, select(arg_1.d.x, false, global2.x), arg_2.x < -2147483647i)), !vec4<bool>(any(vec4<bool>(arg_1.b, arg_1.d.x, false, false)), !arg_1.a.b, true, arg_1.c && false), Struct_1(_wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(~u_input.d, 26u)]), true, arg_1.c, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-arg_1.e.d), vec4<f32>(global0[_wgslsmith_index_u32(1u, 19u)], 215f, arg_0, arg_1.e.a.x))), func_6(arg_1).a.e), func_6(func_2(_wgslsmith_sub_u32(65298u, 46565u), ~4294967295u, !arg_1.d)).e.d.yxw).a.d.x));
    let var_1 = func_5(func_6(Struct_2(func_2(u_input.d, u_input.d, !arg_1.d).a, true, all(!vec4<bool>(arg_1.c, false, arg_1.b, arg_1.c)), func_5(arg_1, vec4<bool>(true, true, true, true), Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(u_input.e, 19u)], 239f, arg_1.a.d.x), true, true, vec4<f32>(-327f, arg_1.e.d.x, arg_1.e.d.x, arg_0), vec4<i32>(67768i, arg_1.a.e.x, arg_1.a.e.x, -33320i)), _wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.d, 19u)], arg_1.e.a.x, arg_1.e.a.x), vec3<f32>(arg_0, arg_0, 773f))).d, func_6(Struct_2(Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], arg_0, 494f), true, arg_1.b, vec4<f32>(1468f, -2559f, -1379f, global0[_wgslsmith_index_u32(u_input.a.x, 19u)]), arg_1.e.e), false, arg_1.d.x, vec3<bool>(true, true, arg_1.d.x), arg_1.e)).e)), !(!select(vec4<bool>(true, global2.x, true, true), !vec4<bool>(arg_1.d.x, false, global2.x, false), func_6(Struct_2(Struct_1(vec3<f32>(-690f, -640f, global0[_wgslsmith_index_u32(1u, 19u)]), arg_1.d.x, global2.x, vec4<f32>(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(u_input.a.x, 19u)], 1542f, global0[_wgslsmith_index_u32(0u, 19u)]), vec4<i32>(u_input.c, 1i, 1i, arg_2.x)), arg_1.e.b, arg_1.b, vec3<bool>(global2.x, true, arg_1.e.b), arg_1.e)).c)), func_2(~firstLeadingBit(4294967295u), _wgslsmith_div_u32(0u | u_input.d, ~u_input.b) | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, 15129u, 11335u), vec4<u32>(u_input.b, 1u, u_input.e, u_input.d)), !func_2(_wgslsmith_mult_u32(1u, u_input.d), u_input.a.x, !arg_1.d).d).a, vec3<f32>(-343f, _wgslsmith_f_op_f32(-3452f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(790f - arg_0), _wgslsmith_f_op_f32(exp2(arg_1.e.d.x)))), -1427f));
    let var_2 = !vec3<bool>(var_1.c, true, !(arg_1.a.a.x == _wgslsmith_div_f32(var_1.a.d.x, arg_0)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.e.d.x + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_6(Struct_2(var_1.a, true, true, vec3<bool>(var_1.e.c, arg_1.e.b, arg_1.b), arg_1.a)).a.d.x + arg_0)))) * -1000f);
    return !(!(!select(select(vec4<bool>(false, arg_1.a.c, true, var_1.b), vec4<bool>(global2.x, false, var_1.d.x, arg_1.d.x), vec4<bool>(false, arg_1.b, var_2.x, global2.x)), !vec4<bool>(arg_1.c, var_2.x, true, false), func_6(arg_1).e.c)));
}

fn func_1(arg_0: vec2<bool>, arg_1: bool, arg_2: vec3<i32>, arg_3: i32) -> vec4<f32> {
    global3 = array<vec3<f32>, 26>();
    let var_0 = func_7(_wgslsmith_f_op_f32(342f * global0[_wgslsmith_index_u32(countOneBits(u_input.d), 19u)]), func_6(func_5(func_2(abs(53744u), 1u, vec3<bool>(global2.x, arg_0.x, global2.x)), !(!vec4<bool>(arg_1, arg_0.x, true, true)), func_2(u_input.e, 4294967295u | u_input.b, !vec3<bool>(arg_1, true, arg_1)).e, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1094f, global0[_wgslsmith_index_u32(4294967295u, 19u)], -1392f)))))), arg_2.xx);
    let var_1 = func_5(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(u_input.b, 26u)])), true, any(select(vec4<bool>(false, false, arg_0.x, false), var_0, var_0)), vec4<f32>(-819f, 939f, _wgslsmith_f_op_f32(f32(-1f) * -741f), -1767f), ~max(vec4<i32>(u_input.c, 0i, u_input.c, u_input.c), vec4<i32>(arg_3, -2147483647i, -9632i, 1i))), arg_1 & (7851i != (arg_3 >> (41676u % 32u))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 19u)] * 602f) <= global0[_wgslsmith_index_u32(~u_input.b, 19u)], !func_6(Struct_2(Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(37941u, 19u)], -671f, -479f), true, false, vec4<f32>(global0[_wgslsmith_index_u32(u_input.d, 19u)], global0[_wgslsmith_index_u32(2047u, 19u)], -342f, 236f), vec4<i32>(-2147483647i, 32719i, u_input.c, arg_2.x)), true, arg_1, vec3<bool>(global2.x, true, arg_1), Struct_1(global3[_wgslsmith_index_u32(1u, 26u)], false, global2.x, vec4<f32>(489f, global0[_wgslsmith_index_u32(u_input.d, 19u)], -659f, -707f), vec4<i32>(0i, 1i, -1i, u_input.c)))).d, func_6(func_5(Struct_2(Struct_1(vec3<f32>(861f, global0[_wgslsmith_index_u32(35946u, 19u)], global0[_wgslsmith_index_u32(u_input.b, 19u)]), false, arg_0.x, vec4<f32>(-751f, 676f, 353f, 571f), vec4<i32>(arg_2.x, arg_2.x, 13819i, arg_2.x)), arg_1, true, vec3<bool>(var_0.x, true, true), Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(u_input.e, 19u)], 1124f, global0[_wgslsmith_index_u32(4294967295u, 19u)]), arg_0.x, global2.x, vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 19u)], global0[_wgslsmith_index_u32(u_input.d, 19u)], 513f, global0[_wgslsmith_index_u32(10703u, 19u)]), vec4<i32>(arg_3, 1i, 1i, arg_3))), var_0, func_6(Struct_2(Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 19u)], 1000f, global0[_wgslsmith_index_u32(u_input.a.x, 19u)]), arg_1, arg_0.x, vec4<f32>(global0[_wgslsmith_index_u32(u_input.e, 19u)], global0[_wgslsmith_index_u32(u_input.d, 19u)], -150f, 1485f), vec4<i32>(u_input.c, u_input.c, -2147483647i, 11298i)), global2.x, false, vec3<bool>(arg_0.x, global2.x, true), Struct_1(global3[_wgslsmith_index_u32(u_input.d, 26u)], false, true, vec4<f32>(-1194f, -729f, 1262f, global0[_wgslsmith_index_u32(37416u, 19u)]), vec4<i32>(-2147483647i, arg_3, -43677i, u_input.c)))).a, global3[_wgslsmith_index_u32(u_input.d, 26u)])).e), vec4<bool>(arg_3 > u_input.c, !var_0.x && global2.x, any(!var_0.wx), func_2(u_input.b, ~u_input.d, select(var_0.xyw, vec3<bool>(true, arg_0.x, var_0.x), func_2(39015u, 58566u, vec3<bool>(global2.x, false, global2.x)).d)).b), func_5(Struct_2(func_2(u_input.e, u_input.b, !vec3<bool>(var_0.x, arg_1, arg_0.x)).a, !(!global2.x), any(var_0.wzx) & arg_1, var_0.zxy, func_5(func_2(53133u, 26904u, vec3<bool>(global2.x, arg_0.x, arg_1)), var_0, func_2(u_input.d, 51817u, vec3<bool>(arg_0.x, false, arg_0.x)).e, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.d, 19u)], global0[_wgslsmith_index_u32(u_input.a.x, 19u)], global0[_wgslsmith_index_u32(1u, 19u)]))).a), func_7(global0[_wgslsmith_index_u32(~(~1u), 19u)], func_2(~7588u, ~u_input.d, var_0.yzw), arg_2.zz), Struct_1(global3[_wgslsmith_index_u32(u_input.a.x, 26u)], false, true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1168f, 649f, 1008f, global0[_wgslsmith_index_u32(64315u, 19u)])) + vec4<f32>(global0[_wgslsmith_index_u32(u_input.d, 19u)], -1381f, global0[_wgslsmith_index_u32(u_input.e, 19u)], global0[_wgslsmith_index_u32(1u, 19u)])), abs(vec4<i32>(u_input.c, 2147483647i, 27088i, -27822i))), global3[_wgslsmith_index_u32(u_input.b, 26u)]).e, _wgslsmith_div_vec3_f32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~(1u | u_input.a.x), _wgslsmith_div_u32(~u_input.d, ~1367u)), 26u)], _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.e, 19u)] + 1964f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(45653u, 19u)] - global0[_wgslsmith_index_u32(14137u, 19u)]), global0[_wgslsmith_index_u32(~u_input.b, 19u)])))));
    let var_2 = func_6(func_5(var_1, vec4<bool>(func_2(~4294967295u, ~21219u, func_2(0u, u_input.e, var_0.wzw).d).d.x, !all(var_1.d), !all(vec4<bool>(true, var_0.x, true, true)), select(all(var_0), true, any(arg_0))), var_1.e, vec3<f32>(1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-492f * var_1.a.d.x))), func_5(Struct_2(var_1.a, true, global2.x, var_1.d, var_1.e), !vec4<bool>(true, true, var_1.e.c, false), func_2(6149u, u_input.e, vec3<bool>(true, arg_1, true)).a, _wgslsmith_f_op_vec3_f32(var_1.e.a - global3[_wgslsmith_index_u32(24939u, 26u)])).e.d.x)));
    global0 = array<f32, 19>();
    return var_2.e.d;
}

fn func_8(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_1) -> bool {
    var var_0 = func_5(Struct_2(func_6(Struct_2(func_6(Struct_2(arg_0, false, arg_0.c, vec3<bool>(global2.x, arg_1.c, arg_3.b), Struct_1(arg_3.a, arg_0.b, arg_3.c, arg_0.d, arg_3.e))).a, arg_1.b && arg_3.c, true, func_6(Struct_2(Struct_1(global3[_wgslsmith_index_u32(u_input.e, 26u)], arg_0.b, arg_1.b, vec4<f32>(-381f, arg_2.x, -186f, arg_0.a.x), arg_3.e), arg_3.c, arg_3.c, vec3<bool>(arg_0.c, global2.x, true), arg_1)).d, Struct_1(vec3<f32>(arg_1.a.x, arg_0.d.x, -1447f), arg_1.c, true, vec4<f32>(arg_1.a.x, -1071f, arg_1.d.x, arg_2.x), vec4<i32>(-2147483647i, 1i, arg_1.e.x, -23955i)))).a, global2.x != func_6(Struct_2(arg_1, false, arg_1.b, vec3<bool>(false, global2.x, true), arg_0)).b, all(vec3<bool>(true, arg_0.b, arg_0.b)) || true, func_7(_wgslsmith_f_op_f32(f32(-1f) * -469f), Struct_2(arg_0, select(false, global2.x, true), true, select(vec3<bool>(global2.x, true, false), vec3<bool>(arg_0.b, true, arg_0.b), false), func_6(Struct_2(arg_0, arg_1.c, arg_1.c, vec3<bool>(false, arg_0.b, false), Struct_1(arg_2.xwz, true, true, vec4<f32>(1144f, arg_3.a.x, arg_2.x, -497f), arg_0.e))).a), abs(arg_0.e.yy)).wwy, arg_1), vec4<bool>(true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -684f))) != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1657f)), 400f)), arg_0.b, arg_3.c), arg_3, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -666f)), _wgslsmith_f_op_f32(func_6(Struct_2(Struct_1(vec3<f32>(759f, 512f, arg_1.d.x), global2.x, arg_1.c, vec4<f32>(arg_2.x, 176f, global0[_wgslsmith_index_u32(u_input.e, 19u)], -1387f), arg_1.e), arg_3.c, true, vec3<bool>(false, false, true), Struct_1(vec3<f32>(arg_2.x, 1000f, -414f), arg_3.c, arg_3.c, vec4<f32>(arg_1.a.x, 546f, 1774f, -378f), arg_0.e))).a.d.x + -1848f)) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * arg_1.d.x)), _wgslsmith_f_op_vec4_f32(func_1(!global2.yy, arg_1.b, vec3<i32>(u_input.c, 13813i, 9785i) | arg_1.e.wyy, arg_0.e.x)).x, _wgslsmith_f_op_f32(exp2(1f)))));
    let var_1 = ~var_0.e.e.x;
    var var_2 = !select(select(vec4<bool>(arg_1.b, arg_0.b, arg_3.b, true), !(!vec4<bool>(arg_3.b, true, arg_1.c, false)), select(func_7(var_0.a.a.x, Struct_2(arg_1, true, false, vec3<bool>(var_0.a.c, false, false), arg_0), vec2<i32>(-54461i, 16575i)), vec4<bool>(false, arg_3.c, arg_0.c, arg_0.c), vec4<bool>(false, arg_0.b, arg_0.b, true))), !(!vec4<bool>(arg_3.b, arg_0.b, var_0.e.b, false)), !vec4<bool>(!arg_0.b, -2147483647i != arg_0.e.x, all(vec3<bool>(arg_0.c, false, false)), arg_0.b));
    var var_3 = func_6(func_5(Struct_2(var_0.a, arg_1.b, var_2.x, vec3<bool>(false, var_2.x, select(var_2.x, arg_1.c, var_0.a.b)), arg_3), select(vec4<bool>(true, 145286u <= u_input.a.x, false, true), func_7(-156f, Struct_2(Struct_1(arg_0.d.wxy, arg_0.c, true, arg_2, arg_1.e), var_0.a.b, false, var_0.d, Struct_1(var_0.a.d.yyw, true, var_2.x, vec4<f32>(var_0.e.d.x, 1543f, 1000f, 2116f), arg_0.e)), -var_0.a.e.wx), arg_3.b), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 19u)], arg_3.d.x, -1065f)), var_0.c, var_2.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_3.d)), vec4<i32>(-9297i, 12334i, arg_0.e.x, -2147483647i) << ((u_input.a ^ vec4<u32>(4294967295u, u_input.b, u_input.e, 1u)) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global3[_wgslsmith_index_u32(4294967295u, 26u)]))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.a.x, 2388f, 1093f)) * vec3<f32>(var_0.a.a.x, arg_2.x, arg_2.x))))).e;
    global3 = array<vec3<f32>, 26>();
    return func_6(func_2(110802u, 47557u, vec3<bool>(false, !arg_0.b, select(select(arg_3.c, true, true), global2.x || global2.x, true)))).d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(~u_input.b);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(u_input.e, 26u)]), func_8(Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(~42034u, 19u)], _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(3801u, 19u)])), global0[_wgslsmith_index_u32(~u_input.d, 19u)]), true, true, _wgslsmith_f_op_vec4_f32(func_1(global2.xx, global2.x, vec3<i32>(1i, -25546i, u_input.c), _wgslsmith_div_i32(u_input.c, 0i))), func_2(4294967295u, firstLeadingBit(35698u), func_6(Struct_2(Struct_1(vec3<f32>(-2221f, -1407f, global0[_wgslsmith_index_u32(u_input.d, 19u)]), global2.x, global2.x, vec4<f32>(1000f, 1234f, 812f, 1159f), vec4<i32>(-2147483647i, 10195i, u_input.c, u_input.c)), global2.x, true, vec3<bool>(global2.x, global2.x, false), Struct_1(vec3<f32>(1502f, -841f, 136f), true, global2.x, vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], global0[_wgslsmith_index_u32(u_input.e, 19u)], global0[_wgslsmith_index_u32(u_input.e, 19u)], global0[_wgslsmith_index_u32(u_input.b, 19u)]), vec4<i32>(u_input.c, -1i, u_input.c, 23147i)))).d).a.e), func_6(func_5(Struct_2(Struct_1(global3[_wgslsmith_index_u32(55739u, 26u)], global2.x, global2.x, vec4<f32>(-164f, 1148f, 145f, global0[_wgslsmith_index_u32(u_input.b, 19u)]), vec4<i32>(u_input.c, -2147483647i, u_input.c, -2147483647i)), global2.x, global2.x, vec3<bool>(false, false, false), Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(0u, 19u)], -1000f, global0[_wgslsmith_index_u32(14587u, 19u)]), global2.x, false, vec4<f32>(1071f, 1437f, global0[_wgslsmith_index_u32(49801u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)]), vec4<i32>(2147483647i, u_input.c, u_input.c, u_input.c))), !vec4<bool>(global2.x, global2.x, global2.x, global2.x), Struct_1(global3[_wgslsmith_index_u32(4294967295u, 26u)], global2.x, false, vec4<f32>(-1000f, global0[_wgslsmith_index_u32(u_input.d, 19u)], -122f, 2236f), vec4<i32>(-4504i, u_input.c, u_input.c, u_input.c)), _wgslsmith_f_op_vec3_f32(trunc(global3[_wgslsmith_index_u32(u_input.d, 26u)])))).e, vec4<f32>(_wgslsmith_f_op_f32(-478f + global0[_wgslsmith_index_u32(~u_input.d, 19u)]), _wgslsmith_f_op_vec3_f32(func_3(global2.xy)).x, global0[_wgslsmith_index_u32(~(~u_input.b), 19u)], _wgslsmith_f_op_f32(abs(-1627f))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global3[_wgslsmith_index_u32(u_input.e, 26u)], vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], global0[_wgslsmith_index_u32(u_input.b, 19u)], global0[_wgslsmith_index_u32(u_input.a.x, 19u)]))), any(!vec4<bool>(global2.x, global2.x, true, false)), global2.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-582f, 716f, global0[_wgslsmith_index_u32(u_input.d, 19u)], global0[_wgslsmith_index_u32(u_input.b, 19u)]), vec4<f32>(-1334f, -1176f, -177f, 408f), vec4<bool>(false, false, true, false))) - vec4<f32>(global0[_wgslsmith_index_u32(12704u, 19u)], global0[_wgslsmith_index_u32(46765u, 19u)], global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(8116u, 19u)])), vec4<i32>(_wgslsmith_clamp_i32(u_input.c, -2147483647i, -6192i), ~0i, u_input.c, u_input.c))), !(~max(u_input.d, u_input.a.x) > ~_wgslsmith_div_u32(u_input.b, u_input.d)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global0[_wgslsmith_index_u32(u_input.d, 19u)], 1889f, global0[_wgslsmith_index_u32(u_input.b, 19u)])) - _wgslsmith_div_vec4_f32(vec4<f32>(-465f, 775f, global0[_wgslsmith_index_u32(u_input.a.x, 19u)], -647f), vec4<f32>(global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(u_input.b, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)]))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(3206f, 663f, global0[_wgslsmith_index_u32(u_input.d, 19u)], global0[_wgslsmith_index_u32(0u, 19u)]) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-179f, -712f, 546f, global0[_wgslsmith_index_u32(u_input.b, 19u)]))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(267f, global0[_wgslsmith_index_u32(u_input.e, 19u)], -1000f, global0[_wgslsmith_index_u32(u_input.d, 19u)]) + vec4<f32>(1000f, 1137f, 162f, -1642f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-581f, global0[_wgslsmith_index_u32(u_input.e, 19u)], 1668f, 495f) - vec4<f32>(global0[_wgslsmith_index_u32(28952u, 19u)], global0[_wgslsmith_index_u32(u_input.e, 19u)], global0[_wgslsmith_index_u32(u_input.e, 19u)], -719f))) + vec4<f32>(global0[_wgslsmith_index_u32(u_input.e << (u_input.d % 32u), 19u)], -1378f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(61578u, 19u)], global0[_wgslsmith_index_u32(32776u, 19u)]), 182f)))), vec4<i32>(7056i, u_input.c, -2008i, u_input.c));
    let var_2 = Struct_1(func_5(Struct_2(func_5(Struct_2(var_1, true, false, vec3<bool>(false, false, var_1.b), Struct_1(var_1.a, true, var_1.b, vec4<f32>(-1071f, var_1.d.x, 675f, 160f), vec4<i32>(1i, var_1.e.x, u_input.c, 2147483647i))), !vec4<bool>(var_1.b, var_1.c, false, true), Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], -2219f, 858f), var_1.c, false, var_1.d, vec4<i32>(47830i, -7431i, var_1.e.x, u_input.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1514f, var_1.d.x, var_1.d.x))).e, all(select(vec3<bool>(global2.x, true, false), vec3<bool>(false, true, var_1.b), vec3<bool>(global2.x, var_1.b, true))), global2.x, !select(vec3<bool>(false, var_1.b, global2.x), vec3<bool>(global2.x, false, var_1.b), vec3<bool>(false, global2.x, var_1.c)), Struct_1(var_1.d.zzy, u_input.d < 100634u, all(vec4<bool>(global2.x, true, global2.x, var_1.b)), vec4<f32>(-341f, global0[_wgslsmith_index_u32(u_input.a.x, 19u)], -163f, 176f), firstLeadingBit(var_1.e))), select(func_7(_wgslsmith_f_op_f32(-1464f * 417f), func_2(u_input.d, 12980u, vec3<bool>(var_1.b, var_1.b, var_1.b)), vec2<i32>(-11651i, -1910i)), vec4<bool>(any(vec4<bool>(var_1.b, false, global2.x, false)), func_2(16882u, 0u, vec3<bool>(global2.x, true, false)).c, func_8(var_1, Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], 1014f, var_1.a.x), true, true, var_1.d, vec4<i32>(u_input.c, var_1.e.x, var_1.e.x, -2147483647i)), vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], var_1.a.x, global0[_wgslsmith_index_u32(u_input.d, 19u)], global0[_wgslsmith_index_u32(1u, 19u)]), var_1), func_8(Struct_1(global3[_wgslsmith_index_u32(u_input.d, 26u)], var_1.c, var_1.c, vec4<f32>(-1503f, var_1.d.x, -406f, global0[_wgslsmith_index_u32(1u, 19u)]), vec4<i32>(0i, var_1.e.x, var_1.e.x, u_input.c)), var_1, var_1.d, Struct_1(var_1.a, true, global2.x, var_1.d, var_1.e))), func_8(var_1, Struct_1(global3[_wgslsmith_index_u32(u_input.b, 26u)], false, global2.x, vec4<f32>(global0[_wgslsmith_index_u32(1u, 19u)], var_1.d.x, -340f, global0[_wgslsmith_index_u32(41761u, 19u)]), var_1.e), vec4<f32>(global0[_wgslsmith_index_u32(u_input.e, 19u)], 1688f, 622f, -956f), var_1) & false), Struct_1(var_1.d.wzz, global2.x || true, !(global2.x | var_1.c), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, -640f) * vec4<f32>(307f, global0[_wgslsmith_index_u32(u_input.a.x, 19u)], global0[_wgslsmith_index_u32(u_input.a.x, 19u)], -1168f)), vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)], 1603f, var_1.a.x)), countOneBits(var_1.e)), _wgslsmith_f_op_vec3_f32(func_3(global2.xx))).a.a, _wgslsmith_f_op_vec4_f32(func_1(vec2<bool>(true, var_1.a.x >= global0[_wgslsmith_index_u32(u_input.a.x, 19u)]), global2.x, func_2(~4294967295u, _wgslsmith_clamp_u32(u_input.b, 12164u, 63120u), func_2(18210u, u_input.e, vec3<bool>(true, false, global2.x)).d).a.e.zzz, -_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.c), vec2<i32>(u_input.c, var_1.e.x)))).x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-830f)) * -650f) - 527f), u_input.b > u_input.b, var_1.d, var_1.e);
    var var_3 = false;
    var var_4 = Struct_2(var_2, any(vec2<bool>(true, all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, global2.x, var_2.b, false), false)))), func_5(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-var_2.d.xyy), func_2(1943u, 70364u, vec3<bool>(true, false, true)).b, global2.x || var_2.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, var_2.a.x, var_1.d.x, 809f)), -vec4<i32>(u_input.c, u_input.c, var_1.e.x, var_1.e.x)), true, var_1.c, vec3<bool>(true, any(global2.yz), any(vec3<bool>(var_1.b, false, true))), var_1), select(vec4<bool>(func_8(var_2, var_1, var_2.d, Struct_1(vec3<f32>(-122f, var_1.d.x, var_1.d.x), true, global2.x, var_2.d, vec4<i32>(var_1.e.x, u_input.c, u_input.c, u_input.c))), false, !global2.x, false), select(func_7(var_1.d.x, Struct_2(var_1, var_1.b, false, vec3<bool>(var_2.b, var_1.c, global2.x), var_2), var_1.e.ww), !vec4<bool>(false, false, global2.x, global2.x), !var_2.c), select(select(vec4<bool>(var_2.c, var_2.c, var_2.b, true), vec4<bool>(var_2.b, true, true, var_1.b), var_2.b), vec4<bool>(true, true, true, true), false && var_2.b)), var_1, func_2(u_input.b, 1u, func_2(_wgslsmith_mod_u32(u_input.b, u_input.d), ~24586u, vec3<bool>(global2.x, true, var_1.c)).d).a.a).a.b, !vec3<bool>(true | all(global2.zy), false || func_5(Struct_2(var_2, global2.x, true, vec3<bool>(true, var_1.b, var_1.c), var_1), vec4<bool>(false, false, var_1.c, true), var_2, var_1.d.wxx).c, !var_1.c), Struct_1(_wgslsmith_f_op_vec3_f32(-func_6(Struct_2(Struct_1(global3[_wgslsmith_index_u32(4294967295u, 26u)], global2.x, var_1.b, var_1.d, var_2.e), false, var_1.b, vec3<bool>(var_1.b, false, var_1.b), Struct_1(vec3<f32>(var_2.d.x, var_2.a.x, 1584f), global2.x, false, var_2.d, vec4<i32>(14187i, -1i, var_1.e.x, var_2.e.x)))).e.a), false, true, vec4<f32>(1479f, 141f, _wgslsmith_f_op_f32(-1920f + _wgslsmith_f_op_f32(1021f * -399f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(260f * var_2.d.x), global0[_wgslsmith_index_u32(~u_input.a.x, 19u)])), ~vec4<i32>(u_input.c >> (4294967295u % 32u), -1919i, -25797i, -var_1.e.x)));
    var var_5 = func_2(u_input.d, abs(reverseBits(0u)), func_7(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_4.a.d.x, 531f)))), func_6(func_6(Struct_2(var_2, true, false, var_4.d, Struct_1(vec3<f32>(-1072f, var_2.d.x, -314f), true, var_1.b, var_4.a.d, vec4<i32>(10579i, var_2.e.x, -53371i, 1i))))), var_4.e.e.wz).yxz).a;
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a.x, _wgslsmith_sub_i32(~0i, i32(-1i) * -55724i), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a) ^ 1u), 61485u, u_input.e), 26u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.e.d.x), 765f), -786f)), var_1.e.x);
}

