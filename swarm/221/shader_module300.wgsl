struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = Struct_1(arg_0.a, arg_0.b);
    global0 = array<bool, 31>();
    var var_1 = all(vec2<bool>(all(vec3<bool>(1u >= u_input.c.x, true, arg_0.a.x)), arg_0.a.x));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1653f);
    var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.b.x)) - 877f)));
    return !select(select(vec3<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 31u)], false, var_0.a.x, true)), all(vec3<bool>(false, true, true)), true), select(select(vec3<bool>(arg_0.a.x, true, arg_0.a.x), vec3<bool>(true, false, true), vec3<bool>(var_0.a.x, var_0.a.x, true)), vec3<bool>(false, false, arg_0.a.x), var_0.a.x), select(!vec3<bool>(arg_0.a.x, global0[_wgslsmith_index_u32(0u, 31u)], var_0.a.x), !vec3<bool>(arg_0.a.x, false, global0[_wgslsmith_index_u32(6627u, 31u)]), arg_0.a.x | global0[_wgslsmith_index_u32(4294967295u, 31u)])), vec3<bool>(true, !any(vec4<bool>(global0[_wgslsmith_index_u32(229u, 31u)], var_0.a.x, global0[_wgslsmith_index_u32(1u, 31u)], true)), !select(global0[_wgslsmith_index_u32(u_input.c.x, 31u)], global0[_wgslsmith_index_u32(20225u, 31u)], global0[_wgslsmith_index_u32(u_input.b, 31u)])), any(select(!vec4<bool>(true, arg_0.a.x, arg_0.a.x, var_0.a.x), !vec4<bool>(arg_0.a.x, global0[_wgslsmith_index_u32(u_input.a, 31u)], false, false), !vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.e, 31u)], global0[_wgslsmith_index_u32(u_input.c.x, 31u)]))));
}

fn func_2(arg_0: bool) -> Struct_1 {
    global0 = array<bool, 31>();
    var var_0 = !func_3(Struct_1(!select(vec2<bool>(arg_0, false), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 31u)]), vec2<bool>(arg_0, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-576f, 2517f)) * vec2<f32>(-355f, 1991f))));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(487f * -1000f)) - 130f))));
    global0 = array<bool, 31>();
    var var_2 = !(!var_0.yy);
    return Struct_1(select(!var_0.zz, var_0.yy, !var_0.yx), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(1307f + -1118f))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1179f, _wgslsmith_f_op_f32(165f + 1868f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-176f, 328f), vec2<f32>(-1600f, -421f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1471f, 1000f)))))));
}

fn func_1(arg_0: i32, arg_1: i32) -> u32 {
    let var_0 = func_2(any(!select(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 31u)], true), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.e, 31u)], true), global0[_wgslsmith_index_u32(u_input.e & 99974u, 31u)])));
    var var_1 = (vec3<u32>(_wgslsmith_add_u32(~u_input.e, _wgslsmith_mod_u32(u_input.e, u_input.e)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 4294967295u, u_input.e), select(vec3<u32>(u_input.c.x, 0u, 0u), vec3<u32>(51259u, 4294967295u, 0u), global0[_wgslsmith_index_u32(u_input.e, 31u)])), 40889u) | vec3<u32>(~(~u_input.e), u_input.e, firstLeadingBit(0u))) ^ vec3<u32>(1u, _wgslsmith_mult_u32(~u_input.a, countOneBits(1u)), ~_wgslsmith_mult_u32(73151u, countOneBits(4294967295u)));
    var_1 = _wgslsmith_clamp_vec3_u32(~((vec3<u32>(1u, var_1.x, 24907u) ^ vec3<u32>(u_input.a, var_1.x, u_input.a)) << (~vec3<u32>(1u, u_input.c.x, u_input.c.x) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(vec3<u32>(45125u, ~51348u, u_input.c.x), _wgslsmith_add_vec3_u32(select(vec3<u32>(var_1.x, 5355u, 12780u), vec3<u32>(5651u, u_input.b, var_1.x), vec3<bool>(var_0.a.x, true, global0[_wgslsmith_index_u32(7289u, 31u)])), vec3<u32>(u_input.e, 34030u, var_1.x))), vec3<u32>(1u, ~_wgslsmith_mult_u32(5582u, 1u), min(0u, ~31825u))) | (vec3<u32>(_wgslsmith_sub_u32(u_input.c.x, var_1.x), var_1.x, var_1.x & u_input.b) << (_wgslsmith_sub_vec3_u32((vec3<u32>(0u, u_input.e, u_input.b) & vec3<u32>(1u, var_1.x, 11839u)) >> (min(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(0u, u_input.b, 4294967295u)) % vec3<u32>(32u)), ~(~vec3<u32>(var_1.x, 0u, 4294967295u))) % vec3<u32>(32u)));
    var var_2 = firstTrailingBit(-vec4<i32>(reverseBits(max(u_input.d, arg_0)), _wgslsmith_clamp_i32(1i, i32(-1i) * -41237i, -10641i), arg_1, abs(u_input.d) & _wgslsmith_add_i32(-6283i, -18683i)));
    global0 = array<bool, 31>();
    return _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, u_input.a, u_input.b, 0u), vec4<u32>(0u, 10697u, u_input.a, 4294967295u)), abs(vec4<u32>(var_1.x, var_1.x, 77143u, 0u)), select(vec4<bool>(false, false, var_0.a.x, global0[_wgslsmith_index_u32(var_1.x, 31u)]), vec4<bool>(true, false, var_0.a.x, false), vec4<bool>(var_0.a.x, global0[_wgslsmith_index_u32(u_input.e, 31u)], var_0.a.x, false))), firstTrailingBit(vec4<u32>(4294967295u, 4294967295u, 3980u, var_1.x)), ~vec4<u32>(var_1.x, 0u, u_input.a, 1u)), ~(~(vec4<u32>(0u, var_1.x, var_1.x, 26125u) & vec4<u32>(var_1.x, 11874u, var_1.x, 4294967295u)))) ^ _wgslsmith_clamp_u32(u_input.c.x, abs(_wgslsmith_mult_u32(u_input.c.x, 33780u)), u_input.b);
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_1) -> f32 {
    global0 = array<bool, 31>();
    global0 = array<bool, 31>();
    let var_0 = func_2(true);
    var var_1 = !(!(!global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(2069u, arg_2), vec2<u32>(1u, arg_2)), 31u)]));
    var_1 = func_2(_wgslsmith_f_op_f32(var_0.b.x * arg_3.b.x) != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2129f, -1298f, false)) - _wgslsmith_f_op_f32(-616f * arg_3.b.x)), _wgslsmith_f_op_f32(ceil(func_2(arg_1.x).b.x))))).a.x;
    return var_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(countOneBits(3826i), ~(-16008i), -1i) & ~(-(vec3<i32>(u_input.d, u_input.d, u_input.d) << (vec3<u32>(u_input.e, u_input.a, 1u) % vec3<u32>(32u))) ^ _wgslsmith_add_vec3_i32(abs(vec3<i32>(1i, -20829i, u_input.d)), -vec3<i32>(u_input.d, u_input.d, u_input.d)));
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-227f, -538f, 2025f), vec3<f32>(-354f, 1962f, -1045f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1204f, -628f, 841f), vec3<f32>(-231f, 511f, 414f), vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(27545u, 31u)]))))))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-285f)))))), _wgslsmith_f_op_f32(128f - _wgslsmith_f_op_f32(func_4(_wgslsmith_div_u32(1u, 52759u), vec4<bool>(true, global0[_wgslsmith_index_u32(19575u, 31u)], true, global0[_wgslsmith_index_u32(u_input.e, 31u)]), func_1(2147483647i, var_0.x), Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(4549u, 31u)], true), vec2<f32>(-685f, -1198f))))), -1496f)));
    global0 = array<bool, 31>();
    var var_2 = Struct_1(!vec2<bool>(func_3(Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(56977u, 31u)], global0[_wgslsmith_index_u32(19910u, 31u)]), vec2<f32>(var_1.x, -1000f))).x, any(func_3(Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 31u)], global0[_wgslsmith_index_u32(69096u, 31u)]), var_1.xz)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.x, -1386f), var_1.yz, vec2<bool>(global0[_wgslsmith_index_u32(u_input.e, 31u)], false))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(142f, var_1.x) - var_1.yy) - vec2<f32>(121f, 1196f))));
    var_2 = Struct_1(var_2.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_2.b.x)), _wgslsmith_f_op_f32(138f - 293f)) * var_2.b));
    let var_3 = Struct_1(!(!vec2<bool>(global0[_wgslsmith_index_u32(60184u, 31u)], !global0[_wgslsmith_index_u32(20807u, 31u)])), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.xy * var_2.b)), var_1.xz, !vec2<bool>(false, var_2.a.x))))));
    let var_4 = var_3;
    let var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.b.x), u_input.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(var_3.b.x * _wgslsmith_f_op_f32(f32(-1f) * -207f))))));
}

