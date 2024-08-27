struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30>;

var<private> global1: f32 = 1181f;

var<private> global2: bool;

var<private> global3: array<f32, 12> = array<f32, 12>(-936f, -1000f, -1962f, 1000f, 1332f, -1315f, 562f, 511f, -967f, 1763f, -548f, 1392f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = select(select(select(select(arg_1.wzw, !arg_1.ywy, select(vec3<bool>(arg_1.x, true, true), vec3<bool>(true, arg_3.a, true), vec3<bool>(false, arg_1.x, arg_3.a))), arg_1.xxx, false), vec3<bool>(!(arg_1.x && false), arg_1.x, !arg_2.a), arg_1.xwz), !(!(!arg_1.wxy)), select(select(select(select(arg_1.wxw, arg_1.yzy, vec3<bool>(false, arg_2.a, false)), select(vec3<bool>(false, true, arg_1.x), vec3<bool>(arg_2.a, arg_1.x, arg_2.a), arg_1.wxx), select(arg_1.yww, vec3<bool>(arg_3.a, arg_2.a, false), arg_1.wzy)), vec3<bool>(arg_2.a, false, all(vec4<bool>(arg_3.a, true, true, arg_1.x))), arg_1.zxy), !arg_1.zzx, (u_input.d == 55640u) || true));
    global1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -970f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1763f * _wgslsmith_f_op_f32(floor(-739f))))), true)), arg_0.x));
    global2 = true;
    global2 = firstTrailingBit(firstTrailingBit(arg_2.d)) < (u_input.b & _wgslsmith_mod_i32(-(u_input.b ^ 0i), _wgslsmith_sub_i32(arg_3.e, u_input.b) << (u_input.d % 32u)));
    var var_1 = Struct_1(all(vec4<bool>(true, !var_0.x, all(!var_0.zz), false)), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.b, 16651i | u_input.b), select(46765i, _wgslsmith_dot_vec4_i32(vec4<i32>(4736i, arg_3.b.x, 0i, 2147483647i), u_input.a), any(vec3<bool>(var_0.x, true, arg_3.a))), -arg_3.d), firstLeadingBit(0i), 1i), select(~vec2<i32>(55297i, arg_2.b.x), arg_3.b.zz, select(select(select(arg_1.yw, vec2<bool>(false, true), arg_1.x), !arg_1.wz, true), !vec2<bool>(arg_3.a, arg_1.x), false)), -5266i, ~(-(~(arg_3.e << (u_input.d % 32u)))));
    return select(vec4<bool>(arg_3.a, arg_1.x, false, any(select(select(vec2<bool>(true, false), arg_1.wz, false), vec2<bool>(true, false), var_0.zx))), !arg_1, arg_1.x);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec2<i32>) -> u32 {
    global1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, ~abs(23487u), _wgslsmith_div_u32(u_input.d, 53854u)), _wgslsmith_mod_vec3_u32(arg_1, ~arg_1)), 12u)];
    var var_0 = vec3<i32>(u_input.e, ~(max(_wgslsmith_sub_i32(-18107i, arg_0.x), -arg_0.x) ^ select(arg_3.x, ~(-60630i), false)), arg_2.e);
    var_0 = ~vec3<i32>(-arg_3.x, u_input.e, var_0.x) | -reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, arg_3.x, 26880i), arg_2.b));
    global2 = !(!(!all(vec2<bool>(arg_2.a, arg_2.a))) && !all(func_3(vec4<f32>(1421f, global3[_wgslsmith_index_u32(u_input.c, 12u)], 2036f, -1000f), vec4<bool>(arg_2.a, arg_2.a, true, false), arg_2, Struct_1(true, arg_2.b, arg_3, arg_2.c.x, -1i))));
    global0 = array<f32, 30>();
    return _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 39035u << (u_input.d % 32u), ~_wgslsmith_mod_u32(~1u, arg_1.x), select(~4294967295u, ~u_input.c, true) & reverseBits(_wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(arg_1.x, arg_1.x, u_input.d)))), (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, arg_1.x, u_input.c, u_input.d) | vec4<u32>(arg_1.x, arg_1.x, u_input.d, 4294967295u), min(vec4<u32>(u_input.d, u_input.c, arg_1.x, u_input.d), vec4<u32>(18636u, 26242u, 1u, 0u))) | vec4<u32>(u_input.d & 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c, arg_1.x, u_input.d), vec4<u32>(31309u, 32407u, 1u, 26998u)), arg_1.x, ~arg_1.x)) & vec4<u32>(1u, _wgslsmith_mod_u32(min(75046u, u_input.d), 4294967295u), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, 38391u), arg_1.xz), abs(81183u)));
}

fn func_4(arg_0: u32) -> vec2<f32> {
    var var_0 = ~(~(~(-u_input.a) | _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, 1i, -17257i, 12259i) & vec4<i32>(u_input.b, u_input.a.x, -20822i, u_input.e), u_input.a)));
    global0 = array<f32, 30>();
    global2 = all(vec3<bool>(false, true, false));
    var var_1 = ~countOneBits(arg_0);
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(sign(-1320f))));
    return vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 30u)] * 1952f), _wgslsmith_div_f32(var_2.x, global3[_wgslsmith_index_u32(1u, 12u)])))))), var_2.x);
}

fn func_1() -> vec4<bool> {
    global3 = array<f32, 12>();
    var var_0 = _wgslsmith_f_op_vec2_f32(func_4(~(~(1u & func_2(vec2<i32>(u_input.b, u_input.a.x), vec3<u32>(u_input.c, 1u, u_input.c), Struct_1(true, u_input.a.www, u_input.a.xw, 2147483647i, -2147483647i), vec2<i32>(u_input.a.x, 3688i))))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-283f, _wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(select(u_input.d, u_input.c, true), 12u)]))) <= -524f, min(-vec3<i32>(~(-12714i), u_input.e ^ u_input.b, -u_input.a.x), vec3<i32>(_wgslsmith_div_i32(i32(-1i) * -1i, reverseBits(u_input.e)), _wgslsmith_mod_i32(-1i, countOneBits(u_input.e)), 43834i | (u_input.e >> (1u % 32u)))), u_input.a.xy, u_input.b, u_input.b ^ 2147483647i);
    let var_2 = abs(~_wgslsmith_add_vec3_u32(abs(vec3<u32>(0u, 4294967295u, 0u)), _wgslsmith_div_vec3_u32(max(vec3<u32>(35268u, u_input.d, u_input.d), vec3<u32>(0u, 0u, 0u)), countOneBits(vec3<u32>(u_input.d, 1u, u_input.c)))));
    var var_3 = Struct_1(u_input.d >= ~_wgslsmith_add_u32(56296u, 1u), vec3<i32>(0i, var_1.c.x, ~(-_wgslsmith_dot_vec4_i32(u_input.a, u_input.a))), -(~vec2<i32>(_wgslsmith_add_i32(-2147483647i, 1i), -19364i)), abs(~(-_wgslsmith_sub_i32(var_1.c.x, u_input.b))), _wgslsmith_add_i32(0i, firstTrailingBit(_wgslsmith_clamp_i32(u_input.b, var_1.c.x & 2147483647i, _wgslsmith_clamp_i32(-24113i, -26008i, var_1.c.x)))));
    return select(!(!vec4<bool>(u_input.d <= var_2.x, !var_3.a, var_1.a & var_3.a, !var_3.a)), !(!(!(!vec4<bool>(true, true, false, var_3.a)))), !vec4<bool>(true, true, func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 785f, global0[_wgslsmith_index_u32(var_2.x, 30u)], global0[_wgslsmith_index_u32(1u, 30u)]) - vec4<f32>(253f, global0[_wgslsmith_index_u32(u_input.c, 30u)], 925f, global3[_wgslsmith_index_u32(u_input.c, 12u)])), !vec4<bool>(var_1.a, var_3.a, false, true), Struct_1(true, var_3.b, u_input.a.zw, var_3.e, 0i), Struct_1(var_3.a, u_input.a.yxy, vec2<i32>(21481i, 26622i), 0i, -1i)).x, var_1.a | all(vec4<bool>(var_3.a, true, var_1.a, var_3.a))));
}

fn func_5(arg_0: vec4<bool>) -> Struct_1 {
    global3 = array<f32, 12>();
    let var_0 = ~reverseBits(u_input.b);
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0[_wgslsmith_index_u32(~u_input.c, 30u)], _wgslsmith_div_f32(-843f, _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(4294967295u, 12u)]))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(222f, 1286f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global3[_wgslsmith_index_u32(4294967295u, 12u)], -399f)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(1586u, 12u)], -302f, global3[_wgslsmith_index_u32(u_input.d, 12u)]), vec3<f32>(global3[_wgslsmith_index_u32(u_input.d, 12u)], global3[_wgslsmith_index_u32(u_input.c, 12u)], 188f)), vec3<f32>(-1581f, 225f, global0[_wgslsmith_index_u32(44875u, 30u)]), vec3<bool>(true, arg_0.x, false))))));
    global3 = array<f32, 12>();
    global1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~1u, 12u)])));
    return Struct_1(arg_0.x, select(~(vec3<i32>(var_0, 1i, -23564i) << (vec3<u32>(u_input.c, 4294967295u, u_input.d) % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0, 16057i, var_0) >> (vec3<u32>(u_input.d, u_input.c, 40635u) % vec3<u32>(32u)), -u_input.a.zyy) >> (~vec3<u32>(u_input.c, 4294967295u, 1u) % vec3<u32>(32u)), !arg_0.zyw), u_input.a.yx, _wgslsmith_mod_i32(-max(u_input.a.x, var_0) | -_wgslsmith_mult_i32(u_input.a.x, var_0), countOneBits(28286i)), min(~_wgslsmith_dot_vec3_i32(u_input.a.zzz, abs(vec3<i32>(var_0, -1i, var_0))), -25216i));
}

fn func_6(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> vec3<u32> {
    global1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(floor(arg_0.x))));
    global2 = 1f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.c | arg_1, 12u)]) - -2197f);
    let var_0 = arg_0.x;
    let var_1 = arg_2;
    let var_2 = 0i;
    return ~_wgslsmith_mod_vec3_u32(~_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(4294967295u, u_input.c, arg_1)), firstLeadingBit(vec3<u32>(18336u, arg_1, arg_1))), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, arg_1, 64597u), min(~vec3<u32>(81393u, arg_1, arg_1), ~vec3<u32>(u_input.c, 5421u, 13593u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-21262i);
    let var_1 = _wgslsmith_div_f32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, u_input.d), select(vec2<u32>(u_input.c, 1u), vec2<u32>(0u, 34970u), false)), vec2<u32>(abs(u_input.c), u_input.c | 1u)), select(countOneBits(reverseBits(vec2<u32>(1u, u_input.c))), vec2<u32>(select(4294967295u, 1u, false), 33606u), vec2<bool>(true, true))), 12u)], _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u << (u_input.c % 32u), 12u)] * 659f));
    var var_2 = func_6(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(792f, global3[_wgslsmith_index_u32(u_input.d, 12u)], 1103f, global0[_wgslsmith_index_u32(u_input.d, 30u)]) + vec4<f32>(-1225f, -492f, var_1, global3[_wgslsmith_index_u32(u_input.c, 12u)])) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(826f, 1000f, global0[_wgslsmith_index_u32(0u, 30u)], var_1))))))), (~u_input.d & 90957u) << (0u % 32u), func_5(select(func_1(), select(vec4<bool>(true, false, true, true), func_1(), true), any(vec2<bool>(true, true)))), Struct_1(true, vec3<i32>(28959i, var_0, var_0), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(15672i, 35975i, 1i, -1i), u_input.a) & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, var_0, -66562i, -1i), vec4<i32>(u_input.e, 8150i, var_0, var_0)), -_wgslsmith_div_i32(var_0, 1i)), abs(i32(-1i) * -3309i), _wgslsmith_mod_i32(_wgslsmith_add_i32(-2147483647i, u_input.e), var_0)));
    global2 = func_5(!(!func_1())).a == (all(func_1().zwz) & (-1591f != _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_2.x, 30u)] * global3[_wgslsmith_index_u32(1u, 12u)]), _wgslsmith_f_op_f32(-1530f + 750f))));
    let var_3 = min(1u, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(82684u, var_2.x, 0u)), ~abs(vec3<u32>(var_2.x, u_input.c, u_input.c)) << (min(~vec3<u32>(24296u, var_2.x, 15311u), vec3<u32>(u_input.d, u_input.c, 39594u)) % vec3<u32>(32u))));
    var var_4 = ~_wgslsmith_mod_u32(~(~40029u), var_3);
    global3 = array<f32, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(u_input.c, firstLeadingBit(_wgslsmith_div_u32(min(u_input.d, u_input.d), 11437u))), vec2<u32>(var_2.x, 8641u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(130f, global3[_wgslsmith_index_u32(var_2.x, 12u)])), select(_wgslsmith_sub_i32(u_input.b, var_0), 2147483647i, all(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)))));
}

