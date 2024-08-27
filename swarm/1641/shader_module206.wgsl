struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6> = array<i32, 6>(23728i, -28822i, 2147483647i, 1i, 1i, -7387i);

var<private> global1: array<f32, 10> = array<f32, 10>(-1650f, -781f, 1583f, 1026f, -782f, -361f, -130f, 923f, 858f, 713f);

var<private> global2: bool = false;

var<private> global3: array<i32, 3> = array<i32, 3>(0i, 4960i, -10708i);

var<private> global4: array<u32, 26>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: i32, arg_3: f32) -> u32 {
    global3 = array<i32, 3>();
    var var_0 = _wgslsmith_f_op_f32(-arg_3);
    global1 = array<f32, 10>();
    var var_1 = -649f;
    global1 = array<f32, 10>();
    return global4[_wgslsmith_index_u32(~arg_1.e.d, 26u)];
}

fn func_3(arg_0: i32, arg_1: vec2<u32>) -> Struct_3 {
    var var_0 = Struct_2(_wgslsmith_clamp_vec3_u32(max(vec3<u32>(1u, 1u, global4[_wgslsmith_index_u32(abs(40655u), 26u)]), _wgslsmith_sub_vec3_u32(u_input.c, u_input.c)), vec3<u32>(abs(_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(u_input.c.x, 26u)], 4294967295u)), 2998u << (1u % 32u), _wgslsmith_dot_vec3_u32(countOneBits(u_input.c), ~u_input.c)), u_input.c), Struct_1(_wgslsmith_add_vec3_u32(u_input.c, vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), arg_1), 1u, 4294967295u)), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(4294967295u, 10u)], 630f)), min(~arg_0 ^ _wgslsmith_dot_vec3_i32(u_input.a.wxw, vec3<i32>(-70732i, -1i, global0[_wgslsmith_index_u32(arg_1.x, 6u)])), -1825i), global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 4294967295u), 26u)], 26u)] | arg_1.x, 26u)], vec3<bool>(!any(vec2<bool>(false, true)), true, select(any(vec2<bool>(false, true)), all(vec4<bool>(true, true, false, true)), true))), Struct_1(u_input.c, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_1.x, 27485u), 10u)]), 0i, 4294967295u, !vec3<bool>(all(vec2<bool>(false, false)), true, true)), Struct_1(~(~vec3<u32>(1112u, arg_1.x, 33265u) << (firstLeadingBit(u_input.c) % vec3<u32>(32u))), 1474f, ~global3[_wgslsmith_index_u32(max(select(0u, 1u, false), _wgslsmith_dot_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(arg_1.x, 26u)], 0u, 4294967295u, 1081u), vec4<u32>(arg_1.x, arg_1.x, 31034u, u_input.c.x))), 3u)], 45033u, !select(vec3<bool>(false, true, false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true))), Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(~47321u, 10616u, 50456u), abs(vec3<u32>(global4[_wgslsmith_index_u32(0u, 26u)], 36919u, u_input.c.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(102f + 697f) + global1[_wgslsmith_index_u32(~1u, 10u)]))), u_input.a.x, _wgslsmith_mult_u32(countOneBits(u_input.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 0u, global4[_wgslsmith_index_u32(5164u, 26u)], arg_1.x), firstLeadingBit(vec4<u32>(12417u, arg_1.x, 1u, global4[_wgslsmith_index_u32(u_input.c.x, 26u)])))), !vec3<bool>(true, all(vec2<bool>(false, true)), true)));
    global0 = array<i32, 6>();
    var_0 = Struct_2(~max(var_0.e.a, ~reverseBits(vec3<u32>(4294967295u, 69026u, var_0.c.d))), Struct_1(~select(_wgslsmith_add_vec3_u32(vec3<u32>(158u, 51232u, arg_1.x), var_0.c.a), var_0.e.a | var_0.b.a, var_0.d.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.b - global1[_wgslsmith_index_u32(77177u, 10u)]) + var_0.b.b) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 10u)]), _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(var_0.a.x, 10u)], -243f, false))))), global3[_wgslsmith_index_u32(75361u, 3u)] & _wgslsmith_div_i32(1i, _wgslsmith_div_i32(arg_0, -4648i)), global4[_wgslsmith_index_u32(~countOneBits(arg_1.x) ^ _wgslsmith_div_u32(4294967295u, ~0u), 26u)], vec3<bool>(var_0.e.e.x, _wgslsmith_f_op_f32(step(var_0.e.b, 1483f)) == _wgslsmith_f_op_f32(f32(-1f) * -283f), all(vec2<bool>(var_0.c.e.x, var_0.e.e.x)))), var_0.b, Struct_1(u_input.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(~var_0.a.x, 10u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 10u)]), var_0.c.e.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_0.d.b, var_0.d.b, true))))), -1i, u_input.c.x, var_0.b.e), var_0.e);
    let var_1 = !(!(!vec4<bool>(!var_0.c.e.x, true, var_0.b.e.x, var_0.d.e.x)));
    let var_2 = all(var_1.zx);
    return Struct_3(var_0.e, var_0.b);
}

fn func_1(arg_0: vec2<f32>, arg_1: f32) -> Struct_3 {
    var var_0 = func_3(_wgslsmith_dot_vec2_i32(-(u_input.a.zy & vec2<i32>(1i, -1i)) << (u_input.c.yx % vec2<u32>(32u)), vec2<i32>(1i, 0i)), _wgslsmith_sub_vec2_u32(~vec2<u32>(_wgslsmith_mod_u32(2298u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(13966u, 26u)], 26u)]), ~u_input.c.x), vec2<u32>(func_2(vec2<bool>(false, true), Struct_2(u_input.c, Struct_1(vec3<u32>(1u, 1u, global4[_wgslsmith_index_u32(1u, 26u)]), 1414f, 2147483647i, u_input.c.x, vec3<bool>(true, true, true)), Struct_1(u_input.c, -1000f, global3[_wgslsmith_index_u32(u_input.c.x, 3u)], 20981u, vec3<bool>(false, false, true)), Struct_1(vec3<u32>(5925u, u_input.c.x, 44631u), global1[_wgslsmith_index_u32(36890u, 10u)], -1i, 4294967295u, vec3<bool>(false, false, true)), Struct_1(vec3<u32>(global4[_wgslsmith_index_u32(116418u, 26u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 26u)], 26u)], global4[_wgslsmith_index_u32(u_input.c.x, 26u)]), 477f, -25084i, global4[_wgslsmith_index_u32(56638u, 26u)], vec3<bool>(false, false, true))), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-2147483647i, -1i, 0i, u_input.a.x)), 2116f), _wgslsmith_mod_u32(_wgslsmith_div_u32(1u, 1u), u_input.c.x))));
    var var_1 = vec2<bool>(func_3(1i, u_input.c.yz).a.e.x, select(!any(!vec4<bool>(var_0.a.e.x, true, false, var_0.a.e.x)), func_3(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.a.zzy, u_input.a.yww), 4705i << (1u % 32u)), u_input.c.xx).a.e.x, false));
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.b, var_0.b.b, 1000f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1389f, -1384f, -218f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(596f))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(var_0.b.a.x, 26u)], u_input.c.x), 10u)]), -109f), any(vec4<bool>(false, true, var_1.x, true))))));
    var_0 = Struct_3(Struct_1(~u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x))), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 0i, global3[_wgslsmith_index_u32(9993u, 3u)]) ^ vec3<i32>(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(15873u, 26u)], 3u)], u_input.a.x, var_0.a.c), u_input.a.yyy), _wgslsmith_mod_i32(reverseBits(u_input.a.x), _wgslsmith_mod_i32(-14411i, -2147483647i))), 1u, var_0.a.e), func_3(_wgslsmith_dot_vec3_i32(u_input.a.zzy, _wgslsmith_add_vec3_i32(-vec3<i32>(global0[_wgslsmith_index_u32(56099u, 6u)], u_input.b.x, 22089i), u_input.a.xzz)), firstTrailingBit(abs(_wgslsmith_sub_vec2_u32(var_0.a.a.yy, vec2<u32>(var_0.b.d, 4294967295u))))).a);
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2383f + _wgslsmith_f_op_f32(ceil(var_0.a.b))) * -606f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), -1325f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + global1[_wgslsmith_index_u32(u_input.c.x, 10u)])) - _wgslsmith_f_op_f32(f32(-1f) * -182f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(func_2(select(var_0.a.e.xx, var_0.a.e.yz, var_0.a.e.zy), Struct_2(vec3<u32>(14154u, 63742u, var_0.a.d), var_0.b, var_0.a, Struct_1(vec3<u32>(u_input.c.x, 14901u, 11329u), var_2.x, global0[_wgslsmith_index_u32(var_0.a.d, 6u)], 37782u, vec3<bool>(var_1.x, true, var_1.x)), var_0.a), 1i, _wgslsmith_f_op_f32(f32(-1f) * -813f)), 10u)] + _wgslsmith_f_op_f32(func_3(1i, vec2<u32>(global4[_wgslsmith_index_u32(var_0.a.a.x, 26u)], 0u)).b.b + _wgslsmith_f_op_f32(arg_0.x * -799f)))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, 963f, var_0.a.b, -224f), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1000f, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.c.x, 26u)], 10u)], 109f, arg_1))), vec4<bool>(true, var_0.a.e.x, false, var_1.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-559f, var_2.x, global1[_wgslsmith_index_u32(var_0.b.a.x, 10u)], -544f) + _wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(7077u, 10u)], var_0.b.b, 274f, var_2.x), vec4<f32>(var_2.x, arg_1, var_0.a.b, -1358f))))))));
    return Struct_3(Struct_1(~max(vec3<u32>(var_0.b.d, 49283u, 6244u), _wgslsmith_mod_vec3_u32(u_input.c, u_input.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1145f)))), global0[_wgslsmith_index_u32(1u, 6u)] << (_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(max(global4[_wgslsmith_index_u32(var_0.b.a.x, 26u)], 10970u), 26u)], u_input.c.x ^ 1u) % 32u), global4[_wgslsmith_index_u32(firstLeadingBit(1u), 26u)], !(!var_0.b.e)), var_0.b);
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    var var_0 = Struct_2(vec3<u32>(~_wgslsmith_sub_u32(arg_0.a.a.x, 15683u), reverseBits(u_input.c.x), global4[_wgslsmith_index_u32(~0u, 26u)]) & max(firstLeadingBit(u_input.c), arg_0.b.a), arg_0.a, Struct_1(reverseBits(~arg_0.b.a), 624f, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(47483u | min(u_input.c.x, global4[_wgslsmith_index_u32(1u, 26u)]), 4294967295u), 6u)], _wgslsmith_mod_u32(1u, 35639u), vec3<bool>(!any(vec4<bool>(false, arg_0.a.e.x, false, arg_0.a.e.x)), false, true)), Struct_1(func_1(vec2<f32>(arg_0.b.b, 802f), -663f).a.a & vec3<u32>(~arg_0.a.d, global4[_wgslsmith_index_u32(1u, 26u)] ^ 45664u, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.a.a.xy, vec2<u32>(u_input.c.x, 1440u)), 26u)]), _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(~arg_0.b.a.x, 10u)])), arg_0.b.c, max(~48242u, arg_0.b.d >> (arg_0.b.d % 32u)) >> (abs(6633u) % 32u), !vec3<bool>(arg_0.a.e.x, true, false)), Struct_1(~vec3<u32>(48386u, _wgslsmith_mult_u32(arg_0.b.d, u_input.c.x), _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(arg_0.a.a.x, global4[_wgslsmith_index_u32(12763u, 26u)], arg_0.b.a.x))), _wgslsmith_f_op_f32(979f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.a.b - global1[_wgslsmith_index_u32(28226u, 10u)])))), arg_0.a.c, u_input.c.x, vec3<bool>(true, !any(arg_0.a.e), u_input.a.x == -1i)));
    global4 = array<u32, 26>();
    global0 = array<i32, 6>();
    var var_1 = ~4294967295u;
    global1 = array<f32, 10>();
    return arg_0.a;
}

fn func_5(arg_0: Struct_4, arg_1: i32, arg_2: i32) -> StorageBuffer {
    let var_0 = 1u;
    global0 = array<i32, 6>();
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(func_4(func_3(28534i, arg_0.b.a.yx)).a.x, 10u)], _wgslsmith_f_op_f32(941f - -2108f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b.b, 215f) - _wgslsmith_f_op_f32(f32(-1f) * -450f)), _wgslsmith_f_op_f32(-arg_0.b.b)), vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_0.b.b)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 10u)] - arg_0.b.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -317f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0, 10u)] * global1[_wgslsmith_index_u32(arg_0.b.a.x, 10u)]) - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 10u)] * -2525f))), !(func_4(Struct_3(Struct_1(u_input.c, global1[_wgslsmith_index_u32(1u, 10u)], u_input.b.x, var_0, vec3<bool>(arg_0.b.e.x, arg_0.b.e.x, arg_0.b.e.x)), Struct_1(arg_0.b.a, -1569f, 16265i, arg_0.b.a.x, vec3<bool>(arg_0.a, true, arg_0.a)))).c < _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global3[_wgslsmith_index_u32(u_input.c.x, 3u)]), vec2<i32>(1i, arg_1))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-600f, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(22290u, 26u)], 10u)], -733f, global1[_wgslsmith_index_u32(63668u, 10u)]) * vec4<f32>(arg_0.b.b, -889f, arg_0.b.b, -840f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(151f, -379f, arg_0.b.b, arg_0.b.b) + vec4<f32>(-1244f, arg_0.b.b, 1151f, 275f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(462f, -377f, global1[_wgslsmith_index_u32(22154u, 10u)], -362f))))), vec4<f32>(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(arg_0.b.a.x & 60906u, 10u)])), -452f, global1[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(8850u << (arg_0.b.a.x % 32u), 26u)], 10u)], _wgslsmith_f_op_f32(f32(-1f) * -582f))))));
    var var_2 = ~(~(_wgslsmith_mult_i32(14813i >> (u_input.c.x % 32u), i32(-1i) * -2147483647i) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, arg_0.b.d, 1u), vec3<u32>(var_0, 1u, 8767u)) % 32u)));
    var var_3 = arg_0;
    return StorageBuffer(arg_0.b.c, vec4<i32>(_wgslsmith_dot_vec4_i32(-(vec4<i32>(arg_0.c.x, var_3.c.x, -1i, 1i) | u_input.a), arg_0.c), func_4(func_1(_wgslsmith_f_op_vec2_f32(-var_1.xz), _wgslsmith_div_f32(1784f, -178f))).c, 1i, firstTrailingBit(arg_0.b.c)), global0[_wgslsmith_index_u32(firstTrailingBit(48551u) ^ _wgslsmith_mod_u32(68048u, _wgslsmith_div_u32(func_4(Struct_3(Struct_1(vec3<u32>(1u, 1u, arg_0.b.d), 799f, u_input.a.x, 0u, vec3<bool>(true, arg_0.a, var_3.b.e.x)), Struct_1(vec3<u32>(9631u, 24557u, global4[_wgslsmith_index_u32(0u, 26u)]), arg_0.b.b, global3[_wgslsmith_index_u32(48807u, 3u)], 1u, vec3<bool>(true, true, true)))).d, 4294967295u)), 6u)], select(select(firstLeadingBit(arg_0.b.a), ~(var_3.b.a ^ vec3<u32>(4294967295u, 4294967295u, 4294967295u)), arg_0.b.e.x), _wgslsmith_mult_vec3_u32(arg_0.b.a, vec3<u32>(global4[_wgslsmith_index_u32(u_input.c.x, 26u)], var_3.b.a.x, 27969u) ^ func_1(vec2<f32>(arg_0.b.b, 888f), -1263f).b.a), true), global4[_wgslsmith_index_u32(func_4(Struct_3(Struct_1(u_input.c, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(19679u, 10u)]), 0i, 0u, vec3<bool>(arg_0.b.e.x, true, arg_0.a)), func_4(Struct_3(var_3.b, arg_0.b)))).d, 26u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 10>();
    var var_0 = false;
    global1 = array<f32, 10>();
    let x = u_input.a;
    s_output = func_5(Struct_4(true, func_4(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(1u, 10u)], 1452f) - vec2<f32>(1000f, 115f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 10u)]))), max(_wgslsmith_clamp_vec4_i32(~u_input.a, vec4<i32>(u_input.b.x, 2147483647i, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(6072u, 26u)], 3u)], 0i) ^ vec4<i32>(u_input.a.x, 0i, global3[_wgslsmith_index_u32(u_input.c.x, 3u)], -16822i), abs(vec4<i32>(global3[_wgslsmith_index_u32(0u, 3u)], -2147483647i, u_input.a.x, global3[_wgslsmith_index_u32(8945u, 3u)]))), vec4<i32>(global3[_wgslsmith_index_u32(2021u, 3u)], firstLeadingBit(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 26u)], 3u)]), -2147483647i, ~2147483647i))), _wgslsmith_clamp_i32(~u_input.a.x, 20939i, _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(1u, 6u)], 1i)), 17473i);
}

