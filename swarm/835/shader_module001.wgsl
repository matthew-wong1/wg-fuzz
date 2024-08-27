struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
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

var<private> global0: array<vec4<f32>, 18> = array<vec4<f32>, 18>(vec4<f32>(1360f, -102f, -685f, -909f), vec4<f32>(841f, 2242f, -1261f, -232f), vec4<f32>(-735f, 614f, 164f, 2358f), vec4<f32>(901f, 331f, 1802f, 344f), vec4<f32>(1798f, 1406f, 1230f, 1000f), vec4<f32>(-384f, -1046f, 1000f, -1044f), vec4<f32>(-1122f, 2151f, -184f, -1000f), vec4<f32>(-308f, -1137f, 348f, 1281f), vec4<f32>(445f, -1115f, -181f, 675f), vec4<f32>(1279f, 700f, 1405f, 899f), vec4<f32>(911f, -416f, 109f, 726f), vec4<f32>(-1064f, 118f, -433f, -2973f), vec4<f32>(-284f, 293f, 350f, 522f), vec4<f32>(1454f, -771f, 1717f, 1023f), vec4<f32>(1116f, -784f, -465f, -436f), vec4<f32>(264f, 303f, -2329f, -679f), vec4<f32>(158f, -681f, 837f, 144f), vec4<f32>(2711f, -522f, 547f, -315f));

var<private> global1: array<f32, 1>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: vec3<bool>) -> f32 {
    let var_0 = Struct_1(arg_3.x == arg_0.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-782f, -251f, _wgslsmith_f_op_f32(round(-540f)))));
    var var_1 = var_0.a;
    var var_2 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 1u)] * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.b.x, _wgslsmith_f_op_f32(select(-1598f, 418f, true)), !arg_0.x)) + -1285f)) > global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, ~u_input.a.x, ~u_input.a.x), ~_wgslsmith_sub_u32(38877u, 0u)) >> (1u % 32u), 1u)];
    let var_3 = Struct_2(any(arg_3.zx) && ((~arg_1.x ^ 0i) >= _wgslsmith_add_i32(arg_1.x, i32(-1i) * -3470i)));
    var_1 = !(!(!(!any(vec4<bool>(var_3.a, false, true, arg_0.x)))));
    return _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(max(~u_input.a.x >> (~u_input.a.x % 32u), 0u), 1u)]);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(true, vec3<f32>(684f, global1[_wgslsmith_index_u32(~(~(~u_input.a.x)), 1u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(198f)) * _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(4294967295u, 1u)]))))));
    var_0 = Struct_1(!all(!vec4<bool>(var_0.a, var_0.a, var_0.a, false)), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(u_input.a.x, 1u)], 315f)) + _wgslsmith_f_op_f32(func_3(vec2<bool>(true, var_0.a), vec2<i32>(22594i, 36028i), vec3<u32>(u_input.a.x, 0u, u_input.a.x), vec3<bool>(false, false, false)))), -107f), _wgslsmith_f_op_vec3_f32(var_0.b - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1626f, -987f, -480f))))))));
    var_0 = Struct_1(all(vec2<bool>(var_0.a, all(vec2<bool>(false, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1325f, _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(21373u, 1u)])), _wgslsmith_f_op_f32(floor(144f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.b.x, global1[_wgslsmith_index_u32(u_input.a.x, 1u)], -365f))) - vec3<f32>(-1000f, -432f, global1[_wgslsmith_index_u32(1u, 1u)])))));
    let var_1 = vec4<bool>(true, var_0.a, any(vec2<bool>(var_0.a, var_0.a | true)) & select(false, true, var_0.a), !any(vec4<bool>(var_0.a, true, u_input.a.x <= u_input.a.x, var_0.a || var_0.a)));
    global1 = array<f32, 1>();
    return Struct_2(!any(!(!vec3<bool>(var_1.x, false, true))));
}

fn func_1(arg_0: Struct_2) -> bool {
    let var_0 = u_input.a.x;
    var var_1 = func_2();
    let var_2 = all(!vec4<bool>(false, arg_0.a, false, !arg_0.a));
    var var_3 = arg_0;
    var var_4 = u_input.a.x;
    return true;
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: i32, arg_3: f32) -> Struct_2 {
    let var_0 = _wgslsmith_mod_vec4_i32(~(~(-vec4<i32>(arg_2, -21008i, arg_2, arg_2)) ^ select(vec4<i32>(0i, -57978i, 1615i, arg_2), max(vec4<i32>(-12373i, arg_2, -1i, 14343i), vec4<i32>(arg_2, 22235i, arg_2, arg_2)), !vec4<bool>(false, false, arg_1.x, arg_1.x))), -countOneBits(abs(vec4<i32>(-28765i, arg_2, -7799i, 26683i))) >> (~vec4<u32>(4294967295u, 54297u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)));
    global0 = array<vec4<f32>, 18>();
    global1 = array<f32, 1>();
    global1 = array<f32, 1>();
    var var_1 = select(max(vec3<u32>(abs(u_input.a.x), 47488u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) ^ vec3<u32>(16037u, 65821u, u_input.a.x)) ^ select((vec3<u32>(u_input.a.x, 48470u, 20984u) >> (vec3<u32>(0u, 1218u, u_input.a.x) % vec3<u32>(32u))) | (vec3<u32>(u_input.a.x, 1u, u_input.a.x) & vec3<u32>(57164u, 24956u, u_input.a.x)), vec3<u32>(4294967295u, 1u, u_input.a.x), true), ~min(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.a.x, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), ~abs(vec3<u32>(u_input.a.x, u_input.a.x, 0u))), any(vec3<bool>(func_2().a, all(select(vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), vec4<bool>(true, arg_1.x, false, arg_1.x))), any(vec3<bool>(arg_1.x, arg_1.x, true)))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(true);
    global0 = array<vec4<f32>, 18>();
    global0 = array<vec4<f32>, 18>();
    global0 = array<vec4<f32>, 18>();
    var_0 = func_4(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 0u)), _wgslsmith_div_u32(0u, 14858u), 4294967295u), 1u)] - -1000f), !vec4<bool>(any(!vec3<bool>(var_0.a, true, false)), func_1(Struct_2(false)), var_0.a && false, true), 2147483647i, 699f);
    var_0 = func_2();
    var var_1 = vec3<i32>(~3150i, 1i, i32(-1i) * -2147483647i);
    var var_2 = Struct_1(any(vec2<bool>(true, true)), vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 1u)], _wgslsmith_f_op_f32(f32(-1f) * -263f), 419f));
    global1 = array<f32, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(~vec4<u32>(_wgslsmith_mod_u32(0u, 6341u), _wgslsmith_clamp_u32(u_input.a.x, 0u, 2381u), u_input.a.x, min(85255u, u_input.a.x)), ~(vec4<u32>(14408u, 72146u, 1u, u_input.a.x) << (~vec4<u32>(0u, u_input.a.x, 4294967295u, u_input.a.x) % vec4<u32>(32u)))));
}

