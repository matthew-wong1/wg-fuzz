struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec3<bool>, 17> = array<vec3<bool>, 17>(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> f32 {
    global1 = array<vec3<bool>, 17>();
    global1 = array<vec3<bool>, 17>();
    var var_0 = Struct_1(~(~countOneBits(~92565u)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))), 244f, _wgslsmith_f_op_f32(-1036f + -593f)))), _wgslsmith_f_op_f32(f32(-1f) * -685f), 4699i, min(1i, 0i));
    global1 = array<vec3<bool>, 17>();
    var_0 = Struct_1(0u, var_0.b, _wgslsmith_f_op_f32(-var_0.c), -var_0.d, abs(1i) << (_wgslsmith_mult_u32(~u_input.d << (52134u % 32u), 0u | (var_0.a << (var_0.a % 32u))) % 32u));
    return var_0.b.x;
}

fn func_2() -> f32 {
    var var_0 = Struct_1(~1u, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1401f, -271f, 174f), vec3<f32>(1000f, -328f, -1673f))), vec3<f32>(3380f, -1000f, -542f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1292f - 562f), _wgslsmith_f_op_f32(func_3()), true))))), _wgslsmith_dot_vec2_i32(vec2<i32>(abs(0i), _wgslsmith_sub_i32(48125i, u_input.a.x) >> ((1u ^ u_input.d) % 32u)), ~(-u_input.a.xx | ~vec2<i32>(u_input.e, u_input.b))), select(select(u_input.a.x, ~(-41457i), any(vec2<bool>(false, true))), -1i, true));
    let var_1 = 1398f;
    let var_2 = firstTrailingBit(_wgslsmith_div_vec4_u32(abs(~abs(vec4<u32>(u_input.c, 4294967295u, 4294967295u, 45817u))), vec4<u32>(max(reverseBits(5631u), 0u), var_0.a, ~var_0.a, ~var_0.a)));
    let var_3 = 33862u;
    var var_4 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_3, 4725u, u_input.c), ~vec3<u32>(8694u, var_2.x, 0u)), firstTrailingBit(_wgslsmith_sub_u32(u_input.d, 23165u))), select(~var_2.zzw, (vec3<u32>(0u, var_0.a, 4294967295u) << (var_2.xwy % vec3<u32>(32u))) & var_2.ywy, vec3<bool>(true, any(vec3<bool>(false, false, true)), any(global1[_wgslsmith_index_u32(4294967295u, 17u)])))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-747f)), var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(405f)))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-608f - 1439f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-970f * -1000f)))), var_1, 1i, 13504i);
    return _wgslsmith_f_op_f32(2408f * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_4.b.x)), -804f))));
}

fn func_1(arg_0: i32, arg_1: bool) -> f32 {
    global1 = array<vec3<bool>, 17>();
    var var_0 = -_wgslsmith_dot_vec4_i32(vec4<i32>(14376i, ~(-1i), arg_0, u_input.b), firstLeadingBit(max(~vec4<i32>(arg_0, arg_0, arg_0, -2147483647i), vec4<i32>(u_input.a.x, arg_0, arg_0, -2147483647i))));
    var var_1 = select(select(select(vec2<bool>(true, u_input.d >= 4294967295u), select(!vec2<bool>(arg_1, arg_1), select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, arg_1), false), !arg_1), vec2<bool>(arg_0 >= 3407i, !arg_1)), vec2<bool>(!all(vec2<bool>(true, true)), arg_1), _wgslsmith_f_op_f32(func_2()) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-637f * 1257f))), select(select(vec2<bool>(false | arg_1, any(global1[_wgslsmith_index_u32(4294967295u, 17u)])), !(!vec2<bool>(arg_1, arg_1)), select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1), false), select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, false), false), true)), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(arg_1, false), arg_1), vec2<bool>(true, true)), vec2<bool>(arg_1, all(vec2<bool>(true, true)))), !(!(!select(vec2<bool>(false, true), vec2<bool>(arg_1, true), false))));
    var var_2 = any(global1[_wgslsmith_index_u32(u_input.c, 17u)]);
    let var_3 = Struct_1(0u, _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-726f)))), _wgslsmith_f_op_f32(649f * _wgslsmith_f_op_f32(step(-1512f, -120f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(960f)), _wgslsmith_div_f32(-1590f, -1834f))))), 1412f, ~arg_0, abs(select(20632i, -arg_0 ^ arg_0, arg_1)));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b.x) * var_3.b.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_i32(38777i, u_input.e);
    global1 = array<vec3<bool>, 17>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(802f, 1572f, 1807f, 661f), vec4<f32>(-792f, 868f, 365f, 586f), false)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1(u_input.b, true)), _wgslsmith_f_op_f32(abs(-2776f)), _wgslsmith_f_op_f32(f32(-1f) * -847f), _wgslsmith_f_op_f32(267f * -389f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(496f, -1000f, -1070f, -874f), vec4<f32>(-1016f, 988f, -879f, -1000f))))));
    let var_2 = Struct_1(_wgslsmith_sub_u32(~(~(u_input.d | 0u)), 0u | abs(u_input.d)), var_1.zyy, var_1.x, -var_0, ~(-u_input.a.x));
    global1 = array<vec3<bool>, 17>();
    var var_3 = all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), all(global1[_wgslsmith_index_u32(49896u, 17u)])), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))), false)) & (all(vec4<bool>(any(global1[_wgslsmith_index_u32(var_2.a, 17u)]), false, true, true)) & (any(vec2<bool>(true, true)) || true));
    global0 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-9307i, -2147483647i, var_0, 3965i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.e, u_input.e, 2147483647i, 1i), vec4<i32>(38274i, -24789i, 2147483647i, 0i), vec4<i32>(-45087i, -56409i, var_2.e, var_2.d))), _wgslsmith_clamp_i32(-1i, u_input.e, 1i), -60925i, reverseBits(u_input.a.x) | u_input.b) & _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 3330i, var_2.d, var_2.d), ~vec4<i32>(0i, 898i, u_input.a.x, var_0)), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(-1i, 47642i, 21488i, u_input.e)), _wgslsmith_mod_vec4_i32(vec4<i32>(-10555i, 25964i, var_0, var_0), vec4<i32>(31233i, 17700i, var_2.e, 3192i)))), vec4<i32>(0i, -1i, u_input.b, 0i) ^ countOneBits(vec4<i32>(-var_2.e, -u_input.b, i32(-1i) * -1i, u_input.b)));
    var_3 = !(!(!all(global1[_wgslsmith_index_u32(1u, 17u)]) || true));
    let var_4 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(reverseBits(firstLeadingBit(firstLeadingBit(vec4<i32>(u_input.b, u_input.e, -1i, 4794i))))));
}

