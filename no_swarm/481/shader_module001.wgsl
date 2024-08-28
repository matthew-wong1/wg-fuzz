struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: u32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23> = array<i32, 23>(-7057i, -1i, -1i, i32(-2147483648), 31123i, 869i, i32(-2147483648), 2147483647i, 0i, 1i, 0i, -15237i, 6492i, -1i, -41759i, i32(-2147483648), -22446i, 40339i, -53509i, 1i, 2147483647i, 16903i, -30456i);

var<private> global1: array<bool, 9>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_div_vec4_i32(u_input.d, u_input.d & min(u_input.d, u_input.d));
    var var_1 = Struct_4(Struct_2(-vec2<i32>(0i, abs(-7236i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(457f, 1255f) * vec2<f32>(945f, -365f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-466f, 1429f) + vec2<f32>(-1834f, -845f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -550f), _wgslsmith_f_op_f32(round(-1000f))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-169f, 299f), vec2<f32>(-1029f, 233f)))))), ~(u_input.e | u_input.e), select(vec4<bool>(false, true, true, select(global1[_wgslsmith_index_u32(0u, 9u)], !global1[_wgslsmith_index_u32(0u, 9u)], !global1[_wgslsmith_index_u32(8097u, 9u)])), !vec4<bool>(!global1[_wgslsmith_index_u32(u_input.e, 9u)], all(vec3<bool>(true, true, global1[_wgslsmith_index_u32(7600u, 9u)])), u_input.e >= u_input.e, global0[_wgslsmith_index_u32(1u, 23u)] > global0[_wgslsmith_index_u32(u_input.e, 23u)]), select(select(!vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 9u)], true, global1[_wgslsmith_index_u32(u_input.e, 9u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.e, 9u)], true, true, true), vec4<bool>(false, false, global1[_wgslsmith_index_u32(36879u, 9u)], false), vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.e, 9u)], global1[_wgslsmith_index_u32(u_input.e, 9u)])), true), !select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.e, 9u)], global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(u_input.e, 9u)], global1[_wgslsmith_index_u32(45833u, 9u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.e, 9u)], global1[_wgslsmith_index_u32(37663u, 9u)], global1[_wgslsmith_index_u32(u_input.e, 9u)], true), vec4<bool>(false, true, false, false)), !(!vec4<bool>(global1[_wgslsmith_index_u32(1u, 9u)], true, global1[_wgslsmith_index_u32(u_input.e, 9u)], true)))));
    let var_2 = true;
    var var_3 = Struct_1(vec4<i32>(_wgslsmith_dot_vec2_i32(-u_input.d.wx >> (vec2<u32>(u_input.e, u_input.e) % vec2<u32>(32u)), abs(vec2<i32>(var_1.a.a.x, u_input.d.x))), global0[_wgslsmith_index_u32(u_input.e, 23u)], var_1.a.a.x & min(2147483647i, _wgslsmith_div_i32(var_0.x, u_input.a)), 0i), u_input.e, u_input.d);
    var_1 = Struct_4(Struct_2(-max(-var_1.a.a, ~vec2<i32>(var_1.a.a.x, u_input.b))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(583f, -495f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(625f, -364f))), var_1.b)), ~firstTrailingBit(~(~60425u)), select(vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(u_input.e, 9u)]), var_1.d, vec4<bool>(true, true, true, true)));
    return _wgslsmith_add_u32(~(~(~(~0u))), select(0u, countOneBits(var_1.c), var_2));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_3) -> vec2<f32> {
    var var_0 = vec2<u32>(func_3(), 0u);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.a) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_3.a), arg_3.a))))));
}

fn func_1() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_2(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.e, 9u)], false), vec2<bool>(global1[_wgslsmith_index_u32(434u, 9u)], global1[_wgslsmith_index_u32(1u, 9u)]), global1[_wgslsmith_index_u32(u_input.e, 9u)]), Struct_2(vec2<i32>(u_input.a, global0[_wgslsmith_index_u32(72221u, 23u)])), !vec2<bool>(global1[_wgslsmith_index_u32(89216u, 9u)], global1[_wgslsmith_index_u32(50489u, 9u)]), Struct_3(vec2<f32>(325f, 593f), Struct_2(vec2<i32>(global0[_wgslsmith_index_u32(u_input.e, 23u)], u_input.d.x)), Struct_2(vec2<i32>(23044i, u_input.a)), Struct_2(u_input.d.yx)))))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f + -1258f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -994f)))));
    global1 = array<bool, 9>();
    var var_1 = Struct_1(vec4<i32>(global0[_wgslsmith_index_u32(reverseBits(0u), 23u)], _wgslsmith_dot_vec4_i32(abs(u_input.d), vec4<i32>(global0[_wgslsmith_index_u32(u_input.e, 23u)], _wgslsmith_add_i32(u_input.b, global0[_wgslsmith_index_u32(u_input.e, 23u)]), -u_input.c, abs(global0[_wgslsmith_index_u32(u_input.e, 23u)]))), global0[_wgslsmith_index_u32(u_input.e, 23u)], global0[_wgslsmith_index_u32(u_input.e, 23u)]), ~abs(max(_wgslsmith_mod_u32(u_input.e, u_input.e), ~u_input.e)), _wgslsmith_div_vec4_i32(u_input.d, abs(vec4<i32>(u_input.d.x, u_input.a, -1i, u_input.d.x) & u_input.d)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_div_f32(-793f, _wgslsmith_f_op_f32(1457f * var_0.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(-var_0.x))))));
    var var_3 = ~vec4<u32>(~var_1.b, var_1.b, var_1.b, ~_wgslsmith_mod_u32(~var_1.b, ~var_1.b));
    return select(!vec3<bool>(0u == var_1.b, !(!global1[_wgslsmith_index_u32(var_3.x, 9u)]), any(vec2<bool>(global1[_wgslsmith_index_u32(29991u, 9u)], global1[_wgslsmith_index_u32(13376u, 9u)]))), !select(!(!vec3<bool>(false, global1[_wgslsmith_index_u32(var_3.x, 9u)], global1[_wgslsmith_index_u32(40968u, 9u)])), select(select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(8853u, 9u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.e, 9u)], true, false), vec3<bool>(true, global1[_wgslsmith_index_u32(104715u, 9u)], true)), select(vec3<bool>(global1[_wgslsmith_index_u32(28178u, 9u)], true, global1[_wgslsmith_index_u32(30276u, 9u)]), vec3<bool>(true, true, global1[_wgslsmith_index_u32(var_1.b, 9u)]), false), vec3<bool>(global1[_wgslsmith_index_u32(25787u, 9u)], global1[_wgslsmith_index_u32(24934u, 9u)], false)), select(vec3<bool>(global1[_wgslsmith_index_u32(var_1.b, 9u)], global1[_wgslsmith_index_u32(1u, 9u)], true), select(vec3<bool>(global1[_wgslsmith_index_u32(65431u, 9u)], global1[_wgslsmith_index_u32(46671u, 9u)], global1[_wgslsmith_index_u32(119738u, 9u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.e, 9u)], false, false), global1[_wgslsmith_index_u32(4294967295u, 9u)]), false || global1[_wgslsmith_index_u32(var_3.x, 9u)])), true);
}

fn func_4(arg_0: vec3<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(1u, 23u)], 0i);
    global0 = array<i32, 23>();
    let var_1 = 0u & ~u_input.e;
    var var_2 = Struct_4(Struct_2(u_input.d.xw), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(min(-875f, 139f)), _wgslsmith_div_f32(408f, 674f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-1479f, 745f), vec2<f32>(1319f, -775f)), vec2<f32>(-1152f, 292f), arg_0.zx)), vec2<bool>(all(arg_0.xx), true))) - vec2<f32>(-722f, _wgslsmith_f_op_f32(-378f * -288f))), 47843u, vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, u_input.e), 9u)], true, any(func_1()), true));
    var var_3 = vec4<i32>(-41593i, var_0, global0[_wgslsmith_index_u32(1u, 23u)], _wgslsmith_dot_vec3_i32(u_input.d.zxw, vec3<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -24656i, var_2.a.a.x), select(vec3<i32>(var_0, -23022i, 0i), vec3<i32>(var_0, -38757i, 2147483647i), var_2.d.x)), abs(var_0))));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(abs(vec4<i32>(~u_input.d.x, u_input.b, 1i, u_input.d.x)), vec4<i32>(u_input.b, 2147483647i, -2147483647i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(-1i, global0[_wgslsmith_index_u32(u_input.e, 23u)]), -14471i)), !select(!vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.e, 9u)], true, false), !vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 9u)], false, false), vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(80235u, 9u)]))), u_input.e, select(reverseBits(-u_input.d) << (vec4<u32>(~59331u, 1u, u_input.e, 4294967295u ^ u_input.e) % vec4<u32>(32u)), -_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, u_input.a, 1i, global0[_wgslsmith_index_u32(u_input.e, 23u)]), u_input.d, vec4<i32>(-67485i, global0[_wgslsmith_index_u32(0u, 23u)], 23303i, global0[_wgslsmith_index_u32(u_input.e, 23u)])), u_input.d), !vec4<bool>(!global1[_wgslsmith_index_u32(u_input.e, 9u)], true, true, true)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2137f), _wgslsmith_f_op_f32(floor(1000f)));
    var var_2 = func_4(!(!func_1()));
    var_0 = Struct_1(var_0.c, min(16181u, abs(~4294967295u)), u_input.d);
    let var_3 = select(vec3<bool>(true, !global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.e, u_input.e) >> (~u_input.e % 32u), 9u)], global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(firstLeadingBit(u_input.e), 1u, _wgslsmith_add_u32(1u, u_input.e)), 1u), 9u)]), func_1(), false);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(41026u, 29236u, var_0.b, 20873u), vec4<u32>(var_0.b, 1u, 24461u, u_input.e))), 0u, ~(~u_input.e) & abs(var_0.b), reverseBits(0u)));
}

