struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: u32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: f32,
    d: vec2<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: vec2<bool>) -> Struct_4 {
    return Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, -788f, 1250f)), _wgslsmith_f_op_vec3_f32(select(arg_1.a, arg_1.a, vec3<bool>(false, arg_2.x, global0[_wgslsmith_index_u32(u_input.a.x, 32u)])))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, arg_0, 1526f)))), Struct_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(abs(2101f)), _wgslsmith_f_op_f32(arg_1.a.x + arg_0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(arg_1.a)))))), _wgslsmith_f_op_f32(1992f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0)), arg_1.a.x) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_1.a.x)))))), 4294967295u);
}

fn func_3() -> vec3<i32> {
    var var_0 = all(select(!(!select(vec3<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 32u)]), vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.a.x, 32u)]), false)), vec3<bool>(!global0[_wgslsmith_index_u32(~u_input.a.x, 32u)], !any(vec3<bool>(global0[_wgslsmith_index_u32(17359u, 32u)], false, false)), global0[_wgslsmith_index_u32(51392u, 32u)]), vec3<bool>(!any(vec3<bool>(true, global0[_wgslsmith_index_u32(2388u, 32u)], global0[_wgslsmith_index_u32(u_input.a.x, 32u)])), 0i <= -u_input.c.x, false)));
    var_0 = any(select(!vec3<bool>(1i > u_input.b.x, u_input.a.x < u_input.a.x, global0[_wgslsmith_index_u32(select(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 32u)]), 32u)]), !(!select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(38429u, 32u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(1u, 32u)]), global0[_wgslsmith_index_u32(35124u, 32u)])), u_input.a.x < ((u_input.a.x & u_input.a.x) ^ 76474u)));
    var_0 = all(vec4<bool>(true && any(!vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 32u)])), true, true, !global0[_wgslsmith_index_u32(~abs(4294967295u), 32u)]));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1160f + -674f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-376f, -1568f, global0[_wgslsmith_index_u32(u_input.a.x, 32u)])) - -102f), _wgslsmith_div_f32(-1342f, _wgslsmith_f_op_f32(trunc(788f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-538f, 250f, 854f) + _wgslsmith_div_vec3_f32(vec3<f32>(191f, -191f, -1054f), vec3<f32>(901f, 746f, -915f))))))));
    var_0 = !any(!vec4<bool>(global0[_wgslsmith_index_u32(~u_input.a.x, 32u)], true, true, true));
    return vec3<i32>(_wgslsmith_div_i32(reverseBits(58685i), u_input.c.x), u_input.c.x, countOneBits(-11025i));
}

fn func_1() -> bool {
    let var_0 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -1126f), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), !(!select(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 32u)], false), vec2<bool>(true, true), select(vec2<bool>(true, global0[_wgslsmith_index_u32(94166u, 32u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 32u)], true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)])))));
    let var_1 = u_input.c.xww;
    var var_2 = u_input.c.x;
    var var_3 = _wgslsmith_mod_vec3_i32(func_3(), vec3<i32>(min(i32(-1i) * -2147483647i, ~_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(21114i, var_1.x, -4995i, 1i))), _wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_clamp_i32(46570i, var_1.x, -23775i)), abs(var_1.x)), -2147483647i));
    var var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(-var_0.c)) * var_0.a.a.x))));
    return false;
}

fn func_4(arg_0: vec4<f32>, arg_1: bool, arg_2: vec2<i32>) -> vec3<f32> {
    global0 = array<bool, 32>();
    let var_0 = vec4<u32>(select(_wgslsmith_dot_vec2_u32(u_input.a.xy, vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, 3861u), 22714u)), u_input.a.x, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, u_input.a.x & u_input.a.x), 32u)]), _wgslsmith_sub_u32(~(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 14260u, 60433u, u_input.a.x)) & u_input.a.x), ~firstTrailingBit(u_input.a.x)), 50170u, _wgslsmith_dot_vec2_u32(u_input.a.xx, _wgslsmith_add_vec2_u32(u_input.a.zy, vec2<u32>(0u, u_input.a.x)) << (u_input.a.yy % vec2<u32>(32u))));
    let var_1 = false;
    var var_2 = func_2(_wgslsmith_f_op_f32(round(arg_0.x)), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-373f + 803f) * arg_0.x), func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x))), func_2(_wgslsmith_f_op_f32(-arg_0.x), Struct_2(vec3<f32>(-1000f, 1000f, arg_0.x)), vec2<bool>(false, false)).b, !select(vec2<bool>(var_1, global0[_wgslsmith_index_u32(u_input.a.x, 32u)]), vec2<bool>(arg_1, var_1), true)).b, select(vec2<bool>(true & arg_1, false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)] && global0[_wgslsmith_index_u32(0u, 32u)], !arg_1), vec2<bool>(all(vec3<bool>(true, true, true)), true))).a, !select(!select(vec2<bool>(global0[_wgslsmith_index_u32(37308u, 32u)], false), vec2<bool>(var_1, true), vec2<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 32u)])), select(select(vec2<bool>(var_1, true), vec2<bool>(false, global0[_wgslsmith_index_u32(31461u, 32u)]), arg_1), !vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 32u)]), select(vec2<bool>(true, true), vec2<bool>(false, var_1), vec2<bool>(var_1, true))), !arg_1));
    let var_3 = true;
    return _wgslsmith_f_op_vec3_f32(max(arg_0.yxx, _wgslsmith_f_op_vec3_f32(arg_0.ywx * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-614f, var_2.b.a.x, arg_0.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1222f, 2451f, var_2.b.a.x) * arg_0.zyx)))))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_5) -> StorageBuffer {
    global0 = array<bool, 32>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_f32(422f + _wgslsmith_f_op_f32(618f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.a.x))))));
    let var_1 = vec3<bool>(global0[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_div_u32(1u, 4341u)), 32u)] && !(!any(vec2<bool>(false, false))), false, all(select(!(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], true)), vec2<bool>(any(vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 32u)])), true), select(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, 1u), 32u)], !global0[_wgslsmith_index_u32(22010u, 32u)], true))));
    let var_2 = arg_1;
    var_0 = var_2.a.a.a.x;
    return StorageBuffer(vec2<u32>(arg_1.a.d, 4294967295u), reverseBits(~(~u_input.a)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-284f, var_2.a.c) * arg_1.a.a.a.x), var_2.a.a.a.x, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(func_2(-286f, func_2(arg_1.a.b.a.x, Struct_2(vec3<f32>(458f, arg_0.a.x, -1341f)), vec2<bool>(global0[_wgslsmith_index_u32(var_2.a.d, 32u)], var_1.x)).a, select(vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(arg_1.a.d, 32u)], var_1.x), vec2<bool>(true, var_1.x))).a.a.x, -989f)), arg_1.a.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 32>();
    var var_0 = min(u_input.a.x, 35027u);
    var_0 = 4294967295u;
    var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-293f + 258f)))), -1000f)));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-162f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1171f)))), 163f)));
    var var_2 = vec3<bool>(global0[_wgslsmith_index_u32(12738u, 32u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 32u)]);
    let x = u_input.a;
    s_output = func_5(Struct_2(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 2164f, -189f, -396f)), func_1(), func_3().yy))), Struct_5(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(640f * -1697f)), Struct_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(115f, 1195f, 1063f), vec3<f32>(-189f, -591f, -561f)))), !select(var_2.yy, var_2.zy, var_2.xy))));
}

