struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_2,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 2>;

var<private> global1: array<f32, 20>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<f32>) -> f32 {
    global0 = array<Struct_3, 2>();
    var var_0 = 11108i & u_input.b;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 20u)]), _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(u_input.a.x, 20u)])))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1033f - global1[_wgslsmith_index_u32(1u, 20u)]))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u | u_input.a.x, 0u | u_input.a.x), 20u)])), arg_0.c.zzw, vec4<f32>(-582f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-700f * _wgslsmith_f_op_f32(f32(-1f) * -1156f))), global1[_wgslsmith_index_u32(1u, 20u)], _wgslsmith_f_op_f32(step(-1015f, global1[_wgslsmith_index_u32(31539u, 20u)]))));
    return _wgslsmith_f_op_f32(select(-936f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -563f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-1868f - -1340f)) * -976f)), arg_1.x));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_4(vec3<i32>(-3706i, _wgslsmith_dot_vec4_i32(u_input.d | vec4<i32>(11352i, u_input.e.x, -2147483647i, u_input.e.x), ~vec4<i32>(u_input.c.x, u_input.e.x, u_input.e.x, 2147483647i)), u_input.d.x) << (select(vec3<u32>(1u >> (1u % 32u), u_input.a.x | 21915u, u_input.a.x), u_input.a.zxz, select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false))) % vec3<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(step(2218f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], vec3<f32>(global1[_wgslsmith_index_u32(37045u, 20u)], 350f, global1[_wgslsmith_index_u32(u_input.a.x, 20u)]), vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(1u, 20u)], 1478f)), vec2<bool>(true, false), vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], 480f))) * 1413f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 20u)]), global1[_wgslsmith_index_u32(~u_input.a.x, 20u)], -454f) * vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 20u)] - global1[_wgslsmith_index_u32(u_input.a.x, 20u)]), _wgslsmith_f_op_f32(select(316f, global1[_wgslsmith_index_u32(14196u, 20u)], true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], global1[_wgslsmith_index_u32(u_input.a.x, 20u)], 1293f, global1[_wgslsmith_index_u32(u_input.a.x, 20u)]), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], -1362f, global1[_wgslsmith_index_u32(u_input.a.x, 20u)], global1[_wgslsmith_index_u32(10117u, 20u)]), vec4<f32>(global1[_wgslsmith_index_u32(41460u, 20u)], global1[_wgslsmith_index_u32(3316u, 20u)], global1[_wgslsmith_index_u32(u_input.a.x, 20u)], global1[_wgslsmith_index_u32(u_input.a.x, 20u)])))))), Struct_2(Struct_1(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, 16039u), 20u)], -834f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1114f, 1215f, -780f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-194f, global1[_wgslsmith_index_u32(34243u, 20u)], 344f, global1[_wgslsmith_index_u32(u_input.a.x, 20u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global1[_wgslsmith_index_u32(44415u, 20u)], global1[_wgslsmith_index_u32(70466u, 20u)], global1[_wgslsmith_index_u32(1u, 20u)]) - vec4<f32>(1014f, global1[_wgslsmith_index_u32(u_input.a.x, 20u)], -844f, 585f)))), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-350f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 20u)], 1380f, global1[_wgslsmith_index_u32(u_input.a.x, 20u)])))), vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 20u)], -134f, _wgslsmith_f_op_f32(ceil(-467f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(27846u, 20u)] * 387f)))), all(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false))), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), u_input.d.x != -1i))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(min(_wgslsmith_clamp_u32(~35338u, ~u_input.a.x, ~u_input.a.x), _wgslsmith_mod_u32(~107634u, ~u_input.a.x)), 20u)] - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1131f - 1073f)))));
    global1 = array<f32, 20>();
    let var_1 = Struct_2(var_0.b, Struct_1(314f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c.b.b) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b.c.zwy) + var_0.c.b.b)), _wgslsmith_f_op_vec4_f32(-var_0.c.b.c)));
    var var_2 = select(vec4<bool>(~1u > firstTrailingBit(0u), !var_0.d, true, all(vec4<bool>(true, var_0.d, select(var_0.d, false, false), true))), select(!select(vec4<bool>(var_0.d, var_0.d, var_0.d, true), !vec4<bool>(false, var_0.d, false, var_0.d), var_0.a.x < var_0.a.x), !select(select(vec4<bool>(var_0.d, var_0.d, true, true), vec4<bool>(var_0.d, var_0.d, var_0.d, var_0.d), true), select(vec4<bool>(var_0.d, false, var_0.d, var_0.d), vec4<bool>(false, var_0.d, true, var_0.d), var_0.d), false), any(vec4<bool>(var_0.d, true, false & var_0.d, all(vec4<bool>(var_0.d, false, var_0.d, true))))), !vec4<bool>(var_0.d, any(vec3<bool>(false, var_0.d, var_0.d)), var_0.d, true));
    var_2 = !select(select(select(vec4<bool>(true, var_0.d, false, var_2.x), vec4<bool>(false, var_0.d, false, var_0.d), vec4<bool>(var_0.d, var_2.x, true, true)), !select(vec4<bool>(true, var_2.x, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, var_0.d, var_2.x, var_0.d)), true), vec4<bool>(all(!var_2.xw), var_2.x, var_0.d, var_2.x), select(any(!vec3<bool>(var_2.x, false, var_0.d)), true, true));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.a.b.x, global1[_wgslsmith_index_u32(138012u, 20u)])) * _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(~33314u, 20u)]))) - _wgslsmith_div_f32(var_1.b.a, var_1.b.c.x)), var_1.b.c.wzz, _wgslsmith_f_op_vec4_f32(vec4<f32>(407f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.b.b.x))), _wgslsmith_f_op_f32(ceil(var_0.b.a)), 704f) * vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 20u)] - -363f))), _wgslsmith_div_f32(-1503f, -1228f), _wgslsmith_f_op_f32(func_3(var_1.b, !var_2.yw, _wgslsmith_f_op_vec2_f32(-var_0.b.b.zz))), var_1.b.b.x)));
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = Struct_4(vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.d, u_input.d), -2147483647i, _wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.c), u_input.c)), arg_2, Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(132f, arg_2.a))), arg_2.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.x, -1131f, -1784f, -387f) + _wgslsmith_f_op_vec4_f32(arg_2.c + vec4<f32>(arg_2.b.x, 350f, -1000f, -1000f)))), arg_2), arg_3 > reverseBits(_wgslsmith_div_u32(reverseBits(1u), _wgslsmith_mod_u32(arg_3, u_input.a.x))), 2124f);
    var_0 = Struct_4(countOneBits(var_0.a), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.b.c.x) + global1[_wgslsmith_index_u32(abs(u_input.a.x), 20u)])), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(142f - var_0.c.a.b.x), -1335f, var_0.e), _wgslsmith_div_vec3_f32(arg_2.b, arg_2.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(arg_3, 20u)], 611f, 285f, arg_2.a), var_0.b.c, all(vec2<bool>(var_0.d, false)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2.c * var_0.b.c)))), var_0.c, var_0.d == (false & var_0.d), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(899f - -1455f) * func_2().c.x))));
    global1 = array<f32, 20>();
    let var_1 = global0[_wgslsmith_index_u32(arg_0.x, 2u)];
    global0 = array<Struct_3, 2>();
    return Struct_1(-610f, _wgslsmith_f_op_vec3_f32(arg_2.c.zxy + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(arg_2.b - var_0.b.b))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.c.x, 1000f, global1[_wgslsmith_index_u32(arg_0.x, 20u)]) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-470f, -674f, 376f)))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-531f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.b, 20u)]))), -312f, global1[_wgslsmith_index_u32(abs(~u_input.a.x), 20u)]))));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_2(func_4(~vec3<u32>(u_input.a.x & u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, 1u), 1u), firstTrailingBit(_wgslsmith_clamp_i32(arg_0, _wgslsmith_clamp_i32(u_input.b, arg_0, u_input.c.x), arg_0)), func_2(), _wgslsmith_mult_u32(~18634u, _wgslsmith_dot_vec4_u32(u_input.a, ~u_input.a))), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(943f - arg_1.x)))), arg_1, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], 2204f, global1[_wgslsmith_index_u32(0u, 20u)], -1000f) * vec4<f32>(arg_1.x, global1[_wgslsmith_index_u32(42919u, 20u)], global1[_wgslsmith_index_u32(0u, 20u)], 595f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(20678u, 20u)], -1128f, 580f, global1[_wgslsmith_index_u32(u_input.a.x, 20u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-311f, -998f, arg_1.x, arg_1.x), vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], global1[_wgslsmith_index_u32(u_input.a.x, 20u)], -664f, arg_1.x), true))), any(vec3<bool>(false, true, false))))));
    global1 = array<f32, 20>();
    global0 = array<Struct_3, 2>();
    global0 = array<Struct_3, 2>();
    global1 = array<f32, 20>();
    return func_4(vec3<u32>(max(_wgslsmith_add_u32(countOneBits(0u), ~u_input.a.x), 1u), u_input.a.x, 16933u), u_input.d.x, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(41990u, 20u)])) + _wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -390f), arg_1.x)), vec4<f32>(-1138f, _wgslsmith_f_op_f32(exp2(arg_1.x)), arg_1.x, 161f)), _wgslsmith_dot_vec3_u32(vec3<u32>(21017u, 1u, abs(u_input.a.x)), firstTrailingBit(vec3<u32>(17586u, ~44988u, u_input.a.x))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_2) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_2.b.c.x), vec3<f32>(func_1(~(-2147483647i << (u_input.a.x % 32u)), _wgslsmith_f_op_vec3_f32(ceil(func_1(u_input.d.x, vec3<f32>(arg_0.a, global1[_wgslsmith_index_u32(4294967295u, 20u)], 1444f)).b))).c.x, global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 20u)], global1[_wgslsmith_index_u32(~firstTrailingBit(0u & u_input.a.x), 20u)]), arg_1.b.c);
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_add_i32(abs(17258i), 2147483647i << (u_input.a.x % 32u)), -_wgslsmith_mult_i32(-u_input.b, _wgslsmith_sub_i32(1724i, -27586i)), _wgslsmith_dot_vec2_i32(abs(arg_1.a.zx), vec2<i32>(u_input.e.x, 0i)) >> (u_input.a.x % 32u)) & 0i;
    global1 = array<f32, 20>();
    let var_2 = arg_1.d;
    global1 = array<f32, 20>();
    return Struct_2(func_2(), Struct_1(_wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(var_0.c.x - arg_0.c.x), _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(38483u, 20u)])), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2139f, -1000f, arg_0.c.x)), arg_2.a.b)))), _wgslsmith_div_vec4_f32(arg_0.c, arg_0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    let var_1 = (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -295f) - _wgslsmith_div_f32(179f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 20u)] - 381f))) <= global1[_wgslsmith_index_u32(6823u, 20u)]) || (any(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 20u)] == global1[_wgslsmith_index_u32(u_input.a.x, 20u)], any(vec2<bool>(true, false)))) && (1u != _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)));
    let var_2 = func_5(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(597f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], global1[_wgslsmith_index_u32(u_input.a.x, 20u)], 262f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(60803u, 20u)], 641f, global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(u_input.a.x, 20u)]) * vec4<f32>(-1530f, global1[_wgslsmith_index_u32(u_input.a.x, 20u)], 1160f, global1[_wgslsmith_index_u32(u_input.a.x, 20u)])))))), Struct_4(u_input.c, Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 20u)], -1000f))), vec3<f32>(826f, _wgslsmith_div_f32(-802f, global1[_wgslsmith_index_u32(u_input.a.x, 20u)]), global1[_wgslsmith_index_u32(~u_input.a.x, 20u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], global1[_wgslsmith_index_u32(72398u, 20u)], global1[_wgslsmith_index_u32(26720u, 20u)], global1[_wgslsmith_index_u32(u_input.a.x, 20u)]) + vec4<f32>(global1[_wgslsmith_index_u32(51184u, 20u)], global1[_wgslsmith_index_u32(10087u, 20u)], 1285f, global1[_wgslsmith_index_u32(49796u, 20u)])))), Struct_2(Struct_1(_wgslsmith_f_op_f32(max(-530f, global1[_wgslsmith_index_u32(14047u, 20u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(1124u, 20u)])), vec4<f32>(1168f, 677f, global1[_wgslsmith_index_u32(u_input.a.x, 20u)], global1[_wgslsmith_index_u32(u_input.a.x, 20u)])), Struct_1(-581f, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1[_wgslsmith_index_u32(22072u, 20u)], 696f, -276f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-185f, -797f, global1[_wgslsmith_index_u32(41467u, 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)]))))), select(any(!vec2<bool>(var_1, true)), any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(var_1, var_1, true))), true), 1124f), Struct_2(func_1(i32(-1i) * -13717i, vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 20u)] * -908f), _wgslsmith_f_op_f32(abs(-1318f)))), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-849f + global1[_wgslsmith_index_u32(u_input.a.x, 20u)]))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2160f, global1[_wgslsmith_index_u32(u_input.a.x, 20u)], 2008f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(730f, -1447f, global1[_wgslsmith_index_u32(40971u, 20u)], 1650f), vec4<f32>(473f, -1177f, global1[_wgslsmith_index_u32(u_input.a.x, 20u)], -591f))))));
    var var_3 = ~71004u;
    var var_4 = -1211f;
    let x = u_input.a;
    s_output = StorageBuffer(~(-53033i), u_input.e.zy, 6943u);
}

