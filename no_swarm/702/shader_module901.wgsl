struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1 = Struct_1(-159f, 1025f, false, true, vec2<f32>(2167f, -1188f));

var<private> global2: array<bool, 32>;

var<private> global3: f32;

var<private> global4: array<vec4<bool>, 16>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    global4 = array<vec4<bool>, 16>();
    global1 = Struct_1(global1.e.x, -1305f, global2[_wgslsmith_index_u32(u_input.c.x, 32u)], var_0.d && true, vec2<f32>(arg_2.e.x, 251f));
    var var_1 = ~vec3<u32>(u_input.c.x, 10997u, abs(71745u));
    var var_2 = 1f;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.x - -470f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-242f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.b, -894f, global2[_wgslsmith_index_u32(var_1.x, 32u)]))))), false, false, vec2<f32>(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_div_f32(arg_3.e.x, _wgslsmith_f_op_f32(ceil(766f)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> f32 {
    let var_0 = u_input.b.x > arg_3;
    let var_1 = arg_3 << (abs(u_input.c.x) % 32u);
    global4 = array<vec4<bool>, 16>();
    var var_2 = 51154i;
    global0 = 4294967295u;
    return arg_2.b;
}

fn func_4(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-751f * _wgslsmith_f_op_f32(ceil(arg_0.b)));
    var var_1 = global1.d;
    var_1 = true;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a - _wgslsmith_div_f32(-1159f, -588f)) - _wgslsmith_f_op_f32(func_3(func_2(~u_input.a, func_2(u_input.a, Struct_1(-1000f, -1114f, true, arg_0.d, global1.e), Struct_1(983f, var_0, true, false, global1.e), Struct_1(-621f, 220f, global2[_wgslsmith_index_u32(4294967295u, 32u)], false, vec2<f32>(-388f, global1.e.x))), func_2(u_input.a, Struct_1(-554f, -400f, global2[_wgslsmith_index_u32(u_input.c.x, 32u)], arg_0.c, vec2<f32>(-454f, 1000f)), Struct_1(global1.a, arg_0.e.x, global2[_wgslsmith_index_u32(u_input.c.x, 32u)], true, arg_0.e), arg_0), func_2(u_input.b.x, arg_0, arg_0, Struct_1(-1077f, var_0, false, global1.c, arg_0.e))), arg_0, arg_0, ~u_input.a))), global1.e.x, _wgslsmith_sub_u32(u_input.c.x, _wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.c.zy), u_input.c.yx)) < (u_input.c.x << (_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(41238u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(12020u, 237u, 28u, u_input.c.x)), min(vec4<u32>(u_input.c.x, u_input.c.x, 21735u, 0u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 4294967295u))) % 32u)), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.c.x, ~countOneBits(abs(6942u))), 32u)], arg_0.e);
    var_1 = all(vec4<bool>(u_input.a < ~_wgslsmith_mod_i32(u_input.b.x, 2147483647i), false, firstLeadingBit(_wgslsmith_div_i32(u_input.a, 4046i)) < u_input.b.x, all(!select(vec2<bool>(true, global1.c), vec2<bool>(global1.c, global2[_wgslsmith_index_u32(0u, 32u)]), global2[_wgslsmith_index_u32(u_input.c.x, 32u)]))));
    return _wgslsmith_mult_u32(u_input.c.x, _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(u_input.c, u_input.c), ~_wgslsmith_add_vec3_u32(u_input.c, u_input.c))) ^ u_input.c.x;
}

fn func_1(arg_0: f32) -> Struct_1 {
    global0 = _wgslsmith_sub_u32(select(~(~1u), u_input.c.x, true), _wgslsmith_div_u32(reverseBits(0u), firstTrailingBit(u_input.c.x)));
    global0 = abs(_wgslsmith_div_u32(min(~reverseBits(0u), ~(20234u << (1u % 32u))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(15383u, u_input.c.x, 28591u, 22487u) & vec4<u32>(0u, u_input.c.x, 4294967295u, 0u), ~vec4<u32>(u_input.c.x, 21533u, 4294967295u, 4294967295u))));
    var var_0 = global4[_wgslsmith_index_u32(func_4(Struct_1(1091f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * 309f)) * _wgslsmith_f_op_f32(func_3(Struct_1(1029f, 687f, false, global1.c, vec2<f32>(588f, arg_0)), func_2(1i, Struct_1(1208f, 253f, global2[_wgslsmith_index_u32(u_input.c.x, 32u)], true, global1.e), Struct_1(global1.b, -912f, false, false, vec2<f32>(1207f, global1.b)), Struct_1(-1009f, global1.b, false, global2[_wgslsmith_index_u32(4294967295u, 32u)], global1.e)), func_2(u_input.a, Struct_1(arg_0, 134f, true, global1.c, global1.e), Struct_1(-155f, arg_0, global2[_wgslsmith_index_u32(4294967295u, 32u)], false, vec2<f32>(-350f, 1460f)), Struct_1(global1.e.x, arg_0, false, false, vec2<f32>(1479f, arg_0))), -u_input.b.x))), !global1.c, all(vec3<bool>(true, select(false, false, global2[_wgslsmith_index_u32(u_input.c.x, 32u)]), global1.d)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(select(-1000f, global1.e.x, false)))))), 16u)];
    let var_1 = all(var_0.xx);
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * 407f) + -1246f)));
    return func_2(firstLeadingBit(13821i), func_2(reverseBits(u_input.a << (u_input.c.x % 32u)) ^ abs(u_input.a), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), -1000f), -821f, false, any(select(var_0.ww, vec2<bool>(var_1, global2[_wgslsmith_index_u32(u_input.c.x, 32u)]), true)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(473f, -985f) + global1.e)))), func_2(u_input.a, func_2(2147483647i ^ u_input.a, Struct_1(-819f, var_2, true, var_1, global1.e), Struct_1(global1.b, global1.a, false, var_0.x, vec2<f32>(-953f, -223f)), Struct_1(var_2, 1107f, false, false, global1.e)), func_2(u_input.b.x, func_2(u_input.b.x, Struct_1(-1000f, 1000f, true, var_0.x, global1.e), Struct_1(arg_0, global1.e.x, true, false, global1.e), Struct_1(global1.b, 853f, var_1, var_1, global1.e)), Struct_1(-428f, arg_0, var_0.x, global2[_wgslsmith_index_u32(u_input.c.x, 32u)], vec2<f32>(-1028f, var_2)), Struct_1(-581f, arg_0, true, var_0.x, global1.e)), func_2(u_input.b.x, func_2(-67952i, Struct_1(-209f, var_2, global2[_wgslsmith_index_u32(u_input.c.x, 32u)], global1.c, vec2<f32>(global1.b, -725f)), Struct_1(arg_0, -1492f, false, false, vec2<f32>(319f, -1225f)), Struct_1(arg_0, global1.b, global1.d, global2[_wgslsmith_index_u32(u_input.c.x, 32u)], global1.e)), Struct_1(global1.e.x, 546f, global2[_wgslsmith_index_u32(u_input.c.x, 32u)], true, vec2<f32>(var_2, 1264f)), func_2(u_input.a, Struct_1(441f, var_2, false, false, global1.e), Struct_1(arg_0, -943f, global2[_wgslsmith_index_u32(1u, 32u)], global1.c, vec2<f32>(var_2, 2058f)), Struct_1(-2841f, global1.a, var_0.x, true, vec2<f32>(1000f, var_2))))), func_2(~_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), Struct_1(189f, var_2, var_1, !var_1, global1.e), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -520f), _wgslsmith_f_op_f32(round(arg_0)), global2[_wgslsmith_index_u32(~0u, 32u)], select(true, var_1, false), _wgslsmith_f_op_vec2_f32(global1.e + vec2<f32>(-847f, -563f))), Struct_1(_wgslsmith_div_f32(-1043f, global1.a), global1.b, true, global2[_wgslsmith_index_u32(u_input.c.x, 32u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, 506f) + global1.e)))), func_2(countOneBits(-_wgslsmith_sub_i32(0i, u_input.a)), func_2(~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, u_input.b.x, 1i), vec4<i32>(u_input.a, -2147483647i, 12438i, -2147483647i)), Struct_1(668f, _wgslsmith_f_op_f32(abs(global1.a)), any(vec2<bool>(false, global1.c)), !global1.c, vec2<f32>(475f, 366f)), Struct_1(1000f, _wgslsmith_f_op_f32(abs(-241f)), global1.e.x >= -768f, !var_1, global1.e), Struct_1(235f, _wgslsmith_f_op_f32(f32(-1f) * -621f), true, any(var_0.xwx), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0, 1973f))))), Struct_1(-1156f, -994f, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 1u, 54464u, 1576u) ^ vec4<u32>(1u, 4294967295u, 0u, 44464u), abs(vec4<u32>(u_input.c.x, 40094u, u_input.c.x, u_input.c.x))), 32u)], all(!vec2<bool>(true, global2[_wgslsmith_index_u32(8061u, 32u)])), vec2<f32>(753f, global1.e.x)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) + 637f), _wgslsmith_f_op_f32(1299f - _wgslsmith_f_op_f32(-403f * var_2)), !(56600u > u_input.c.x), true, _wgslsmith_f_op_vec2_f32(-global1.e))), func_2(reverseBits(u_input.b.x), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.e.x) * -913f), -444f, any(vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 32u)], var_0.x)), !global1.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global1.e)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, 1000f) - vec2<f32>(arg_0, var_2)))), Struct_1(-618f, global1.b, var_1, global2[_wgslsmith_index_u32(u_input.c.x ^ 72021u, 32u)], _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, -648f) - vec2<f32>(232f, var_2))))), Struct_1(arg_0, var_2, _wgslsmith_f_op_f32(max(-949f, global1.a)) >= -715f, any(!vec3<bool>(false, var_0.x, false)), vec2<f32>(1317f, -1309f))));
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = func_2(u_input.b.x, func_2(countOneBits(arg_0), arg_2, func_2(9217i, func_1(_wgslsmith_f_op_f32(min(arg_2.b, -1000f))), arg_2, arg_2), func_2(-1i, Struct_1(_wgslsmith_f_op_f32(-315f * global1.e.x), _wgslsmith_f_op_f32(max(arg_2.b, 814f)), true, all(vec2<bool>(true, false)), func_2(arg_0, Struct_1(-927f, global1.e.x, true, arg_2.d, vec2<f32>(arg_2.b, 1494f)), Struct_1(arg_2.b, -997f, false, false, arg_2.e), Struct_1(arg_2.b, 1099f, arg_2.d, global1.c, vec2<f32>(-325f, -1098f))).e), func_2(2147483647i, func_2(arg_0, Struct_1(global1.a, arg_2.b, global2[_wgslsmith_index_u32(u_input.c.x, 32u)], global1.c, vec2<f32>(global1.a, global1.b)), Struct_1(global1.b, arg_2.b, true, arg_2.d, global1.e), arg_2), arg_2, Struct_1(226f, -183f, true, global2[_wgslsmith_index_u32(4294967295u, 32u)], vec2<f32>(-1104f, 392f))), func_2(_wgslsmith_mod_i32(u_input.b.x, -9672i), arg_2, Struct_1(-866f, 284f, false, false, global1.e), func_2(14110i, Struct_1(593f, global1.b, false, true, arg_2.e), arg_2, Struct_1(global1.a, global1.e.x, true, true, global1.e))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(494f * arg_2.b))), true, true, arg_2.e), arg_2);
    var var_1 = 5854i;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(arg_2.a)), func_2(17480i, Struct_1(var_0.e.x, -919f, all(select(vec2<bool>(var_0.c, global2[_wgslsmith_index_u32(1u, 32u)]), vec2<bool>(var_0.d, arg_2.d), vec2<bool>(true, true))), true, global1.e), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -707f), global1.a, arg_2.c, countOneBits(0u) >= ~arg_1, _wgslsmith_f_op_vec2_f32(-global1.e)), func_2(_wgslsmith_mult_i32(u_input.b.x, arg_0), arg_2, func_1(1044f), Struct_1(arg_2.e.x, global1.e.x, select(true, false, true), true, vec2<f32>(var_0.b, var_0.a)))).a, false, true, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.e.x, var_0.b))) - _wgslsmith_div_vec2_f32(vec2<f32>(146f, -1494f), vec2<f32>(arg_2.e.x, 928f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(700f - global1.e.x), _wgslsmith_f_op_f32(567f - arg_2.e.x))), false)));
    var_1 = ~u_input.a;
    var var_3 = _wgslsmith_mult_vec4_i32(~vec4<i32>(20706i, ~_wgslsmith_mod_i32(2147483647i, u_input.a), _wgslsmith_mod_i32(-2147483647i, -35966i), -7600i), vec4<i32>(34003i, arg_0, arg_0, arg_0));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * -664f), func_2(abs(arg_0), Struct_1(arg_2.a, -1713f, global2[_wgslsmith_index_u32(arg_1, 32u)], global1.c, vec2<f32>(-1680f, -1241f)), arg_2, func_2(var_3.x, arg_2, Struct_1(var_2.a, var_2.a, false, var_2.c, vec2<f32>(var_2.b, 145f)), Struct_1(-624f, arg_2.e.x, true, global2[_wgslsmith_index_u32(u_input.c.x, 32u)], vec2<f32>(-561f, -1610f)))).e.x), var_0.e)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~u_input.c.x);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.e.x), global1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global1.b, 100f)))))), true, u_input.b.x != ~(-2147483647i), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(156f, global1.b), global1.e)) - _wgslsmith_f_op_vec2_f32(-global1.e)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -657f) + global1.e) - _wgslsmith_f_op_vec2_f32(func_5(-u_input.a, var_0, func_1(210f)))))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2714f * _wgslsmith_div_f32(var_1.e.x, var_1.e.x))) * _wgslsmith_div_f32(895f, -1346f)), global1.a);
    let var_3 = true || global1.d;
    let var_4 = func_1(global1.e.x);
    global2 = array<bool, 32>();
    global3 = -547f;
    global1 = Struct_1(595f, 1000f, 1i <= u_input.a, true, global1.e);
    var var_5 = !var_3;
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a, countOneBits(~(u_input.c & vec3<u32>(4128u, 4294967295u, u_input.c.x))), u_input.b.x);
}

