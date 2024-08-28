struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25> = array<bool, 25>(false, true, false, true, true, true, true, false, false, true, false, true, false, true, true, false, false, true, true, true, true, true, false, false, true);

var<private> global1: array<Struct_2, 2>;

var<private> global2: u32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global1 = array<Struct_2, 2>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-167f, 1149f, _wgslsmith_f_op_f32(step(977f, -251f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-650f, -1674f, 393f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(116f, -1242f, -577f) + vec3<f32>(-503f, 409f, 1288f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1142f, -258f, 678f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-2308f, -1029f, -555f))), vec3<f32>(-655f, 1620f, -575f)) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(291f, 1026f, 427f)))))));
    var var_1 = Struct_2(Struct_1(global0[_wgslsmith_index_u32(0u, 25u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-821f * var_0.x), true)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(79272u, 15749u, 0u, 38205u), vec4<u32>(0u, 52858u, 0u, 3572u), true))), !global0[_wgslsmith_index_u32(47260u, 25u)] || false, min(select(vec2<u32>(1u, 1u), vec2<u32>(_wgslsmith_mod_u32(11022u, 4656u), 1u), vec2<bool>(!global0[_wgslsmith_index_u32(50148u, 25u)], global0[_wgslsmith_index_u32(71424u, 25u)])), vec2<u32>(1u, 1u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -277f, 522f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 539f, 703f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(1266f, -381f, var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 963f, var_0.x) + vec3<f32>(-478f, var_0.x, var_0.x)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), -1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), var_0.x, _wgslsmith_f_op_f32(var_0.x + var_0.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 500f, -1957f)))));
    var_1 = Struct_2(Struct_1(!(!any(vec3<bool>(false, var_1.b, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x + 1442f)))), var_1.a.c), false, vec2<u32>(min(~max(var_1.a.c, var_1.c.x), firstLeadingBit(var_1.a.c)), 25578u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-var_1.d.x), 618f, var_1.e.x))) * var_1.e), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(var_1.e)))));
    let var_2 = vec3<bool>(false, global0[_wgslsmith_index_u32(var_1.c.x & 32222u, 25u)], !(any(select(vec4<bool>(global0[_wgslsmith_index_u32(60578u, 25u)], false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, global0[_wgslsmith_index_u32(60194u, 25u)], true, true))) || true));
    return 12955u;
}

fn func_2() -> Struct_2 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~max(~9786u, firstTrailingBit(9595u)) | func_3(), ~4294967295u), 2u)];
    let var_1 = Struct_2(var_0.a, 1001f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1629f))), var_0.c, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)), var_0.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.a.b)), -555f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.x, _wgslsmith_f_op_f32(min(var_0.d.x, 1144f)), var_0.e.x)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e.x, 1169f, 135f) - vec3<f32>(-240f, var_0.d.x, 1557f))) - _wgslsmith_f_op_vec3_f32(step(var_0.e, _wgslsmith_f_op_vec3_f32(-var_0.d))))));
    global0 = array<bool, 25>();
    global2 = _wgslsmith_div_u32(countOneBits(~var_1.a.c << (_wgslsmith_mod_u32(var_0.a.c, var_1.a.c) % 32u)), 4294967295u);
    var_0 = Struct_2(Struct_1(select(u_input.a, select(1i, u_input.a, true), select(var_0.a.a, global0[_wgslsmith_index_u32(var_0.a.c, 25u)], false)) >= abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -3144i, u_input.a, u_input.a), vec4<i32>(u_input.a, 1i, -2147483647i, 568i))), 1455f, _wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, var_1.c.x), var_1.a.c, 14560u)), select(false, (global0[_wgslsmith_index_u32(~var_1.a.c, 25u)] == true) || (2763i < _wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a)), var_0.a.a), var_1.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.b, 326f, var_0.d.x) + _wgslsmith_f_op_vec3_f32(-var_1.d)))) - var_1.d), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_f_op_f32(max(319f, var_0.d.x)), 231f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_1.e))), select(select(vec3<bool>(global0[_wgslsmith_index_u32(18241u, 25u)], global0[_wgslsmith_index_u32(var_0.a.c, 25u)], false), vec3<bool>(var_0.a.a, false, global0[_wgslsmith_index_u32(39303u, 25u)]), global0[_wgslsmith_index_u32(var_0.c.x, 25u)]), vec3<bool>(var_0.b, false, false), !vec3<bool>(false, global0[_wgslsmith_index_u32(8183u, 25u)], true)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(844f, 176f)) * _wgslsmith_f_op_f32(var_1.e.x + var_0.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-282f - -1174f) - _wgslsmith_f_op_f32(-var_1.a.b)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1000f, 580f), _wgslsmith_f_op_f32(max(830f, var_0.a.b))))), any(select(!vec2<bool>(false, global0[_wgslsmith_index_u32(var_1.c.x, 25u)]), vec2<bool>(global0[_wgslsmith_index_u32(var_0.c.x, 25u)], false), select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 25u)], var_1.b), vec2<bool>(false, var_0.a.a), vec2<bool>(false, false)))))));
    return Struct_2(var_1.a, u_input.a == (_wgslsmith_div_i32(u_input.a, -u_input.a) >> (~_wgslsmith_mult_u32(7690u, 1u) % 32u)), vec2<u32>(firstLeadingBit(var_1.a.c), 58782u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.d + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.b, var_1.a.b, 785f))))), _wgslsmith_f_op_vec3_f32(var_0.e + var_1.d));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = 1138f;
    let var_1 = ~_wgslsmith_add_i32(firstLeadingBit(u_input.a), ~(-25519i)) ^ 1i;
    global0 = array<bool, 25>();
    let var_2 = func_2();
    let var_3 = Struct_1(arg_1.a.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-arg_1.d.x)))), ~arg_1.c.x);
    return Struct_2(func_2().a, func_2().b, vec2<u32>(_wgslsmith_mult_u32(~_wgslsmith_sub_u32(0u, 0u), firstTrailingBit(27892u)), 4294967295u ^ _wgslsmith_mod_u32(abs(var_3.c), ~var_2.a.c)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.e.x, _wgslsmith_f_op_f32(round(arg_1.e.x)), _wgslsmith_f_op_f32(ceil(811f))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.e.x, var_3.b, 104f)), vec3<f32>(-1171f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(665f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b * 1000f))))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(arg_1.d)))), vec3<f32>(_wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(max(1122f, _wgslsmith_f_op_f32(max(1443f, arg_0.d.x)))), arg_1.e.x)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(abs(arg_1.e.x)), _wgslsmith_div_f32(-1243f, _wgslsmith_f_op_f32(max(1725f, arg_0.e.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.e.x + arg_1.a.b)))))));
    global2 = 1u;
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.c, 0u, _wgslsmith_clamp_u32(arg_0.c.x, arg_0.c.x, firstTrailingBit(4294967295u << (arg_1.a.c % 32u))), 46547u), (vec4<u32>(~0u, arg_1.c.x, ~65478u, func_3()) & _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, arg_0.c.x, arg_1.c.x) | vec4<u32>(arg_1.c.x, 4294967295u, 38440u, arg_1.c.x), firstLeadingBit(vec4<u32>(34984u, 0u, arg_1.a.c, arg_0.c.x)))) | ((vec4<u32>(arg_0.c.x, arg_0.c.x, 4294967295u, arg_1.c.x) << (~vec4<u32>(arg_1.c.x, 0u, 77397u, 54455u) % vec4<u32>(32u))) << (firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.a.c, arg_0.a.c, arg_1.a.c, 1u), vec4<u32>(arg_0.a.c, arg_1.a.c, 3978u, 67658u), vec4<u32>(1u, arg_0.a.c, 4294967295u, arg_0.a.c))) % vec4<u32>(32u))));
    global0 = array<bool, 25>();
    let var_2 = vec2<i32>(-arg_2.x, u_input.a);
    return -abs(_wgslsmith_clamp_i32(min(i32(-1i) * -1i, -2147483647i), _wgslsmith_div_i32(1i, u_input.a), _wgslsmith_clamp_i32(arg_2.x, -3076i, _wgslsmith_sub_i32(1i, 2147483647i))));
}

fn func_1() -> vec2<i32> {
    let var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(-19155i, func_5(func_4(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 25u)], true, global0[_wgslsmith_index_u32(20899u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)]), func_2()), Struct_2(Struct_1(false, -749f, 16266u), global0[_wgslsmith_index_u32(~4294967295u, 25u)], vec2<u32>(54115u, 149658u), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-649f, -1260f, 1645f))), vec3<f32>(-469f, 623f, -746f)), select(~vec3<i32>(u_input.a, -2147483647i, -30698i), _wgslsmith_sub_vec3_i32(vec3<i32>(52191i, u_input.a, -15731i), vec3<i32>(0i, u_input.a, u_input.a)), vec3<bool>(global0[_wgslsmith_index_u32(1u, 25u)], true, false))), 73552i), abs(select(~vec3<i32>(u_input.a, u_input.a, -16637i), _wgslsmith_div_vec3_i32(vec3<i32>(0i, u_input.a, u_input.a) | vec3<i32>(u_input.a, u_input.a, 15656i), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, 19226i, 20135i), vec3<i32>(-3246i, 60160i, 2147483647i), vec3<i32>(438i, -2147483647i, 0i))), !vec3<bool>(false, true, global0[_wgslsmith_index_u32(1u, 25u)]))));
    var var_1 = select(!select(!(!vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 25u)], false, global0[_wgslsmith_index_u32(52587u, 25u)])), select(vec3<bool>(global0[_wgslsmith_index_u32(11507u, 25u)], false, global0[_wgslsmith_index_u32(1u, 25u)]), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 25u)], true, global0[_wgslsmith_index_u32(13312u, 25u)]), true), vec3<bool>(false & global0[_wgslsmith_index_u32(57531u, 25u)], true, false & global0[_wgslsmith_index_u32(1u, 25u)])), select(select(!(!vec3<bool>(global0[_wgslsmith_index_u32(9413u, 25u)], global0[_wgslsmith_index_u32(84634u, 25u)], false)), select(!vec3<bool>(global0[_wgslsmith_index_u32(16104u, 25u)], global0[_wgslsmith_index_u32(5141u, 25u)], true), select(vec3<bool>(false, global0[_wgslsmith_index_u32(8824u, 25u)], global0[_wgslsmith_index_u32(121714u, 25u)]), vec3<bool>(false, false, false), false), vec3<bool>(global0[_wgslsmith_index_u32(1u, 25u)], true, global0[_wgslsmith_index_u32(0u, 25u)])), !(!vec3<bool>(global0[_wgslsmith_index_u32(3700u, 25u)], global0[_wgslsmith_index_u32(0u, 25u)], true))), select(select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 25u)], true, false), !vec3<bool>(global0[_wgslsmith_index_u32(0u, 25u)], false, true), true), !vec3<bool>(false, global0[_wgslsmith_index_u32(23439u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)]), vec3<bool>(true, true, func_2().b)), all(!select(vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 25u)], false, false), vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)]), vec4<bool>(global0[_wgslsmith_index_u32(79523u, 25u)], true, global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(0u, 25u)])))), vec3<bool>(global0[_wgslsmith_index_u32(func_3(), 25u)], false, !func_2().b));
    var_1 = vec3<bool>(true, func_4(!vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(7883u, 25u)]), Struct_2(Struct_1(global0[_wgslsmith_index_u32(82577u, 25u)], -1000f, 4605u), var_1.x, min(vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 42913u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-448f, 1091f, 1249f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1084f, 990f, -365f), vec3<f32>(-172f, 1160f, -784f)))).a.c == reverseBits(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(42682u, 4294967295u), vec2<u32>(4294967295u, 68895u)))), true);
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-425f)) + func_2().d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(130f, -252f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(182f))))))));
    global0 = array<bool, 25>();
    return select(var_0.xx, min(var_0.yx, vec2<i32>(-60553i, var_0.x)), select(!var_1.yy, vec2<bool>(func_4(select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(661u, 25u)], true, var_1.x), vec4<bool>(false, true, global0[_wgslsmith_index_u32(34469u, 25u)], global0[_wgslsmith_index_u32(43147u, 25u)]), vec4<bool>(true, true, global0[_wgslsmith_index_u32(0u, 25u)], false)), global1[_wgslsmith_index_u32(select(4294967295u, 492u, true), 2u)]).b, !global0[_wgslsmith_index_u32(1u, 25u)]), !(all(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 25u)], false, global0[_wgslsmith_index_u32(0u, 25u)])) & true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 25>();
    var var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(~2147483647i, _wgslsmith_mult_i32(u_input.a, -2147483647i) >> (1u % 32u)), firstTrailingBit(_wgslsmith_mult_vec2_i32(~(-vec2<i32>(u_input.a, u_input.a)), func_1())));
    let var_1 = ~(~select(func_4(!vec4<bool>(false, global0[_wgslsmith_index_u32(64862u, 25u)], false, global0[_wgslsmith_index_u32(36670u, 25u)]), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(36434u, 12879u), 2u)]).c.x, max(~1u, 1u), global0[_wgslsmith_index_u32(4294967295u, 25u)]));
    let var_2 = ~(~(~1u << (select(~0u, func_4(vec4<bool>(true, global0[_wgslsmith_index_u32(2917u, 25u)], false, true), Struct_2(Struct_1(false, 862f, var_1), global0[_wgslsmith_index_u32(var_1, 25u)], vec2<u32>(var_1, 38867u), vec3<f32>(-927f, -1008f, -1023f), vec3<f32>(-869f, -1558f, 214f))).a.c, true) % 32u)));
    let var_3 = global0[_wgslsmith_index_u32(func_2().a.c, 25u)];
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1727f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1577f)))) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, _wgslsmith_f_op_f32(1527f * _wgslsmith_f_op_f32(-995f - 1005f))))));
    var var_5 = global0[_wgslsmith_index_u32(~var_1, 25u)];
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

