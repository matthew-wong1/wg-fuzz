struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: bool,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14> = array<f32, 14>(1402f, -1000f, 1022f, 2544f, -2079f, -594f, -504f, -1000f, -1136f, -554f, 408f, -947f, 1398f, 1445f);

var<private> global1: array<bool, 14>;

var<private> global2: vec4<f32> = vec4<f32>(2351f, -1289f, -936f, -740f);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: bool) -> vec4<f32> {
    let var_0 = arg_1.d;
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, 1541f, arg_1.a.x, 363f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(657f, 156f, 264f, 1532f), vec4<f32>(-529f, arg_1.d.c.x, 1032f, -2357f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global0[_wgslsmith_index_u32(u_input.c, 14u)], global2.x, _wgslsmith_f_op_f32(arg_1.a.x * -365f)), select(vec4<bool>(false, arg_3, false, arg_0), var_0.b, var_0.b.x || arg_3))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(global2.x)), _wgslsmith_f_op_f32(step(-162f, var_0.c.x)), global0[_wgslsmith_index_u32(~0u, 14u)], -1691f))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(2567f, 335f));
    global0 = array<f32, 14>();
    let var_2 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -469f) * _wgslsmith_f_op_f32(-arg_1.a.x)), global0[_wgslsmith_index_u32(1u, 14u)]), firstTrailingBit(0u));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, var_0.c.x, arg_1.d.c.x, var_2.a.x)))))), vec4<f32>(-614f, _wgslsmith_f_op_f32(-global2.x), global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.e, ~vec3<u32>(1u, 4294967295u, var_2.b))), 14u)], _wgslsmith_f_op_f32(-1f)));
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    global2 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(54230u, 14u)])), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.e.x, 14u)] - global2.x), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.e.x, 14u)], global2.x)), _wgslsmith_f_op_f32(-762f - 244f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-441f, global0[_wgslsmith_index_u32(0u, 14u)], global2.x, 896f) - vec4<f32>(global0[_wgslsmith_index_u32(u_input.c, 14u)], -643f, global0[_wgslsmith_index_u32(u_input.e.x, 14u)], global0[_wgslsmith_index_u32(u_input.e.x, 14u)]))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(u_input.b.x < u_input.d, Struct_2(global2.yz, vec4<i32>(-2147483647i, u_input.a, 2147483647i, u_input.b.x), false, Struct_1(true, vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec3<f32>(-1380f, 439f, -799f)), false), abs(vec4<i32>(0i, u_input.a, -43523i, 31097i)), any(vec3<bool>(true, false, arg_0.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-448f, global0[_wgslsmith_index_u32(1u, 14u)], global2.x, global2.x), vec4<f32>(-465f, global0[_wgslsmith_index_u32(0u, 14u)], -425f, 2900f)))))));
    let var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_sub_vec2_i32(u_input.b.zy, vec2<i32>(-2147483647i, u_input.b.x))), ~(~u_input.b.ww)), firstTrailingBit(u_input.a));
    global1 = array<bool, 14>();
    global2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-337f)) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(10558u, 14u)])), -528f, global2.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(global2.x))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(all(arg_0.yx), Struct_2(global2.zz, u_input.b, global1[_wgslsmith_index_u32(0u, 14u)], Struct_1(true, vec4<bool>(arg_0.x, global1[_wgslsmith_index_u32(u_input.e.x, 14u)], arg_0.x, global1[_wgslsmith_index_u32(u_input.c, 14u)]), global2.yzz), global1[_wgslsmith_index_u32(71362u, 14u)]), ~vec4<i32>(2147483647i, u_input.d, u_input.a, -7061i), global1[_wgslsmith_index_u32(abs(u_input.c), 14u)])) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.c, 14u)], global2.x, global2.x, global2.x) + vec4<f32>(global2.x, global0[_wgslsmith_index_u32(0u, 14u)], 343f, -895f)), _wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(27803u, 14u)], 1000f, -753f, global2.x), vec4<f32>(684f, global2.x, 2099f, 941f)))))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0[_wgslsmith_index_u32(u_input.e.x & 1u, 14u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(u_input.e.x, 14u)])))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.e.x & u_input.c, 14u)] * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.e.x, 14u)] * global0[_wgslsmith_index_u32(u_input.e.x, 14u)])), _wgslsmith_f_op_vec4_f32(func_3(any(vec4<bool>(false, arg_0.x, global1[_wgslsmith_index_u32(u_input.e.x, 14u)], true)), Struct_2(global2.yz, vec4<i32>(var_0.x, var_0.x, 62977i, 0i), true, Struct_1(arg_0.x, vec4<bool>(true, arg_0.x, true, false), vec3<f32>(1627f, -1568f, global0[_wgslsmith_index_u32(u_input.c, 14u)])), arg_0.x), _wgslsmith_add_vec4_i32(vec4<i32>(6014i, -2147483647i, u_input.b.x, -85637i), u_input.b), global1[_wgslsmith_index_u32(4294967295u, 14u)] & global1[_wgslsmith_index_u32(u_input.e.x, 14u)])).x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0[_wgslsmith_index_u32(u_input.c, 14u)], global2.x, global2.x, global0[_wgslsmith_index_u32(48847u, 14u)]))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(299f, global0[_wgslsmith_index_u32(0u, 14u)], 636f, 703f)))))), !select(select(!vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(u_input.c, 14u)]), vec4<bool>(arg_0.x, false, false, false), vec4<bool>(true, arg_0.x, arg_0.x, false)), !(!vec4<bool>(arg_0.x, global1[_wgslsmith_index_u32(u_input.e.x, 14u)], global1[_wgslsmith_index_u32(u_input.e.x, 14u)], global1[_wgslsmith_index_u32(1u, 14u)])), !select(vec4<bool>(true, false, arg_0.x, true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 14u)], arg_0.x, false, true), false))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1032f)) - global2.x), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.e.x, u_input.c), vec3<u32>(u_input.c, 0u, 1u)), 14u)] - global2.x), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(-2189f, global0[_wgslsmith_index_u32(~(20837u | _wgslsmith_sub_u32(u_input.c, u_input.c)), 14u)]));
    return u_input.e.x;
}

fn func_4(arg_0: vec4<i32>, arg_1: bool) -> bool {
    let var_0 = -620f;
    var var_1 = Struct_1(true, vec4<bool>(true, arg_1, !global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~u_input.c), 14u)], arg_1), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-900f, global0[_wgslsmith_index_u32(0u, 14u)], var_0) - vec3<f32>(global2.x, var_0, 1300f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(var_0, 451f, global2.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-133f, global0[_wgslsmith_index_u32(71228u, 14u)], 1167f) + vec3<f32>(-1000f, -1013f, var_0)))))));
    var var_2 = countOneBits(_wgslsmith_mod_u32(u_input.e.x, _wgslsmith_mod_u32(abs(abs(u_input.c)), u_input.c)));
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec4_f32(func_3(select(any(!vec2<bool>(var_1.b.x, false)), all(vec3<bool>(false, var_1.a, global1[_wgslsmith_index_u32(u_input.c, 14u)])), true), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(56041u, 14u)], 640f) - vec2<f32>(var_0, var_1.c.x)), u_input.b, arg_1, Struct_1(u_input.e.x >= 18094u, vec4<bool>(false, false, var_1.b.x, arg_1), _wgslsmith_f_op_vec3_f32(global2.xwz - vec3<f32>(global2.x, var_0, var_1.c.x))), false), vec4<i32>(select(_wgslsmith_mult_i32(arg_0.x, u_input.d), u_input.d, arg_1), firstTrailingBit(u_input.d), _wgslsmith_mult_i32(~u_input.a, arg_0.x), firstLeadingBit(2147483647i)), true)).x));
    let var_4 = Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(select(_wgslsmith_add_vec3_u32(vec3<u32>(26699u, 19220u, u_input.c), vec3<u32>(0u, 1u, u_input.c)), vec3<u32>(u_input.c, 11499u, u_input.e.x), u_input.e.x != u_input.e.x)), abs(select(u_input.e, u_input.e, arg_1)) | ~u_input.e), 14u)], var_1.b, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -548f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(889f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 14u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-456f, -716f), -287f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-260f * global2.x))))));
    return global1[_wgslsmith_index_u32(0u, 14u)];
}

fn func_1() -> Struct_2 {
    let var_0 = func_4(-(vec4<i32>(-1i) * -u_input.b), global1[_wgslsmith_index_u32(~func_2(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 14u)], true, global1[_wgslsmith_index_u32(u_input.e.x, 14u)])), 14u)]) || global1[_wgslsmith_index_u32(select(u_input.c, u_input.c >> (_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(u_input.e.x, u_input.c, u_input.c)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, u_input.c, 23025u), u_input.e)) % 32u), !all(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 14u)], false))), 14u)];
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(max(global2.xw, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.xw) - _wgslsmith_f_op_vec2_f32(-global2.yz)) + global2.xw))), ~u_input.b >> (vec4<u32>(_wgslsmith_add_u32(abs(u_input.e.x), ~u_input.c), 28350u ^ select(0u, 75185u, false), 0u, 1u) % vec4<u32>(32u)), (_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(global1[_wgslsmith_index_u32(1u, 14u)], Struct_2(vec2<f32>(global2.x, -1064f), u_input.b, false, Struct_1(var_0, vec4<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 14u)], true, var_0, false), global2.ywz), global1[_wgslsmith_index_u32(1u, 14u)]), u_input.b, var_0)).x) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -504f))) | false, Struct_1(true, vec4<bool>(-26658i < u_input.d, all(select(vec3<bool>(true, var_0, true), vec3<bool>(true, var_0, true), vec3<bool>(true, var_0, true))), var_0 & var_0, global1[_wgslsmith_index_u32(u_input.e.x, 14u)]), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec4_f32(func_3(true, Struct_2(global2.zz, u_input.b, true, Struct_1(var_0, vec4<bool>(false, global1[_wgslsmith_index_u32(20897u, 14u)], global1[_wgslsmith_index_u32(35645u, 14u)], var_0), global2.zzy), true), -u_input.b, global1[_wgslsmith_index_u32(74761u, 14u)])).zyx, global2.xyy)), true);
    let var_2 = vec4<bool>(select(any(!select(var_1.d.b.zz, vec2<bool>(var_1.e, true), vec2<bool>(false, var_0))), var_1.c, true), false, global1[_wgslsmith_index_u32(u_input.e.x, 14u)], var_1.d.b.x);
    global0 = array<f32, 14>();
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(-global2.zz), 10582u);
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.xy + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-206f, -1000f)))) * _wgslsmith_f_op_vec2_f32(-var_1.a)), reverseBits(-min(abs(var_1.b), ~vec4<i32>(-27988i, 1i, 0i, -33647i))), true, var_1.d, _wgslsmith_mod_i32(i32(-1i) * -33535i, -29516i) > var_1.b.x);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> vec2<f32> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.a + vec2<f32>(-783f, arg_1.a.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.xx + vec2<f32>(-1072f, 205f))))), u_input.e.x);
    global0 = array<f32, 14>();
    let var_1 = _wgslsmith_f_op_vec2_f32(arg_1.a * vec2<f32>(-769f, _wgslsmith_f_op_f32(2179f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.d.c.x + 262f))))));
    let var_2 = _wgslsmith_mod_i32(abs(arg_0.b.x), arg_1.b.x);
    var var_3 = vec4<f32>(global0[_wgslsmith_index_u32(abs(min(var_0.b, var_0.b)) | 51980u, 14u)], -1465f, global2.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -898f) - _wgslsmith_div_f32(-407f, -1560f)) - 401f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1132f + arg_0.d.c.x), -191f))), !(!(global0[_wgslsmith_index_u32(var_0.b, 14u)] != var_1.x)))));
    return _wgslsmith_f_op_vec2_f32(-func_1().a);
}

fn func_6(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: f32, arg_3: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_2, -228f))) - func_1().a)), arg_1.x);
    global1 = array<bool, 14>();
    var var_1 = vec2<bool>(false, false);
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(10424u, 14u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(434f * global0[_wgslsmith_index_u32(arg_1.x, 14u)])))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_1.x, 14u)] + -1000f)), _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(1255f + arg_0.x)))), reverseBits(~(var_0.b | 15625u)));
    var_1 = !func_1().d.b.xz;
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1784f, _wgslsmith_f_op_f32(-var_0.a.x)))), global2.x), u_input.b, all(vec4<bool>(var_1.x, all(vec2<bool>(global1[_wgslsmith_index_u32(19776u, 14u)], false)), false & global1[_wgslsmith_index_u32(~28749u, 14u)], var_1.x)), func_1().d, _wgslsmith_div_u32(~var_0.b, ~(~u_input.e.x)) >= 3106u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_5(func_1(), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(991f, 898f)), -vec4<i32>(1i, 41471i, 2147483647i, 0i), all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 14u)], true, global1[_wgslsmith_index_u32(51981u, 14u)])), Struct_1(false, vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.c, 14u)], global1[_wgslsmith_index_u32(u_input.e.x, 14u)]), global2.yxy), false))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(145f * global0[_wgslsmith_index_u32(47434u, 14u)]), _wgslsmith_f_op_f32(global2.x + global0[_wgslsmith_index_u32(u_input.c, 14u)])), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0[_wgslsmith_index_u32(u_input.e.x, 14u)], -1000f))), _wgslsmith_f_op_vec2_f32(global2.yz - global2.wy))))), abs(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e.x, 1u, u_input.e.x, 55637u), vec4<u32>(13773u, u_input.e.x, 4294967295u, 77736u)))) ^ (vec4<u32>(firstLeadingBit(16439u), countOneBits(u_input.e.x), 70923u, 1u) << (~vec4<u32>(u_input.c, u_input.e.x, 0u, u_input.e.x) % vec4<u32>(32u))), global0[_wgslsmith_index_u32(30363u, 14u)], _wgslsmith_sub_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.e.x, u_input.e.x), vec2<u32>(1u, u_input.e.x), select(u_input.e.xx, u_input.e.yy, vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 14u)], global1[_wgslsmith_index_u32(4294967295u, 14u)]))), ~vec2<u32>(u_input.c | 50120u, u_input.e.x)));
    var var_1 = var_0;
    var var_2 = var_0.d;
    let var_3 = var_1.d;
    var var_4 = func_1();
    let var_5 = var_4.d;
    global0 = array<f32, 14>();
    var var_6 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-523f, _wgslsmith_f_op_f32(-var_0.d.c.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.c.x, var_1.a.x)))), ~((-u_input.b ^ ~vec4<i32>(9995i, -793i, u_input.a, u_input.d)) & ((var_1.b | vec4<i32>(var_1.b.x, u_input.d, u_input.d, var_1.b.x)) << (min(vec4<u32>(u_input.c, 4294967295u, 35531u, u_input.e.x), vec4<u32>(0u, 107283u, u_input.c, 4294967295u)) % vec4<u32>(32u)))), !var_4.e, var_4.d, _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(332f * 137f) * global2.x)) <= _wgslsmith_f_op_f32(-188f + _wgslsmith_f_op_f32(floor(1157f))));
    var var_7 = func_6(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_0.a)) * vec2<f32>(_wgslsmith_f_op_f32(1000f + var_0.d.c.x), -1614f)), vec4<u32>(0u, 22517u, 4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(3508u, u_input.e.x, u_input.c, 23822u), vec4<u32>(4294967295u, 0u, 1u, 0u))) << (_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(21430u, 4294967295u, u_input.c, u_input.e.x), _wgslsmith_div_vec4_u32(vec4<u32>(5066u, u_input.e.x, u_input.c, 17755u), vec4<u32>(u_input.e.x, u_input.e.x, 1u, 1u)), vec4<u32>(31596u, 26621u, u_input.e.x, 4294967295u) >> (vec4<u32>(1u, 4294967295u, 4294967295u, 49714u) % vec4<u32>(32u))), ~vec4<u32>(4294967295u, 5790u, u_input.e.x, u_input.c)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_4.a.x))) - -253f))), vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 1u, u_input.e.x, u_input.c), vec4<u32>(18682u, u_input.c, 4294967295u, u_input.c)), u_input.c), _wgslsmith_mult_u32(~4294967295u, 12140u), ~1u), u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x, _wgslsmith_mult_u32(u_input.e.x, ~(1u << (reverseBits(u_input.e.x) % 32u))));
}

