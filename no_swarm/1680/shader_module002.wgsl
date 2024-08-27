struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(381f), Struct_1(1550f), Struct_1(889f), Struct_1(826f), Struct_1(253f), Struct_1(-933f), Struct_1(231f), Struct_1(-810f), Struct_1(300f), Struct_1(557f), Struct_1(-1687f), Struct_1(175f), Struct_1(-970f), Struct_1(190f), Struct_1(-744f), Struct_1(-2840f), Struct_1(-846f), Struct_1(344f), Struct_1(-1422f), Struct_1(1441f));

var<private> global1: u32 = 56900u;

var<private> global2: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(-577f), Struct_1(507f), Struct_1(-164f), Struct_1(-1313f), Struct_1(-738f), Struct_1(238f), Struct_1(-140f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = 1u == ~u_input.a.x;
    var var_1 = vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(427f)) * _wgslsmith_f_op_f32(trunc(arg_1.a))) * _wgslsmith_f_op_f32(exp2(arg_1.a))))), arg_1.a, _wgslsmith_div_f32(arg_0.a, 1326f));
    let var_2 = any(!select(vec4<bool>(true, all(vec4<bool>(var_0, true, var_0, var_0)), any(vec3<bool>(true, true, false)), var_0), select(vec4<bool>(var_0, var_0, false, false), !vec4<bool>(true, var_0, var_0, true), any(vec3<bool>(var_0, false, var_0))), var_0));
    let var_3 = arg_0;
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-631f + -197f), _wgslsmith_div_f32(arg_1.a, 921f), arg_0.a, _wgslsmith_f_op_f32(1244f * 491f)))));
    return ~firstLeadingBit(abs(1u) ^ ~u_input.b) | ~_wgslsmith_sub_u32(countOneBits(u_input.a.x), u_input.b);
}

fn func_2(arg_0: vec4<bool>, arg_1: f32) -> bool {
    let var_0 = vec4<u32>(14118u, firstLeadingBit(~(~(~u_input.a.x))), func_3(Struct_1(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-arg_1))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(476f + 1000f)))), 16109u);
    let var_1 = arg_0.wzw;
    let var_2 = global2[_wgslsmith_index_u32(34651u, 7u)];
    return true;
}

fn func_1(arg_0: vec3<f32>, arg_1: bool) -> Struct_1 {
    var var_0 = all(select(vec4<bool>(false, !all(vec2<bool>(arg_1, arg_1)), true, arg_1), !vec4<bool>(false, arg_1, arg_1 | true, u_input.a.x == 4015u), func_2(vec4<bool>(true, false || arg_1, true, all(vec4<bool>(arg_1, arg_1, arg_1, false))), _wgslsmith_f_op_f32(sign(arg_0.x)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), -1325f, all(vec4<bool>(false, true, arg_1, arg_1)))))), arg_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))))));
    let var_2 = abs(~(~_wgslsmith_sub_u32(abs(u_input.a.x), 1u)));
    global0 = array<Struct_1, 20>();
    var var_3 = u_input.a.x;
    return Struct_1(-2349f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -126f) * -617f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1182f + _wgslsmith_f_op_f32(184f * 440f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1387f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -431f))))), true);
    let var_1 = _wgslsmith_div_u32(~_wgslsmith_mult_u32(~firstLeadingBit(u_input.b), ~firstLeadingBit(u_input.a.x)), ~0u);
    global1 = var_1;
    var var_2 = select(vec3<bool>(any(vec4<bool>(true, true, true, true)) && !all(vec2<bool>(true, true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), true), vec3<bool>(false, true, true), !all(!select(vec2<bool>(false, false), vec2<bool>(true, true), false)));
    var var_3 = vec3<u32>(~countOneBits(21061u), ~var_1, var_1);
    let var_4 = select(vec2<bool>(true, true), var_2.xx, true);
    var var_5 = global2[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(var_3.x, ~func_3(global0[_wgslsmith_index_u32(var_3.x, 20u)], global2[_wgslsmith_index_u32(var_3.x, 7u)]))), 7u)];
    var var_6 = func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_5.a)), var_0.a)), var_5.a) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1441f, var_5.a)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1019f, var_0.a, 1456f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.a, 2249f, var_0.a) * vec3<f32>(var_0.a, -951f, 1313f))))), false);
    var var_7 = select(var_4, vec2<bool>(true, !func_2(select(vec4<bool>(var_4.x, true, var_4.x, false), vec4<bool>(var_4.x, false, false, var_4.x), vec4<bool>(true, var_2.x, var_4.x, true)), _wgslsmith_f_op_f32(abs(var_6.a)))), var_2.xx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.a), max(vec2<i32>(min(i32(-1i) * -23522i, _wgslsmith_mod_i32(2147483647i, -3267i)), _wgslsmith_mod_i32(_wgslsmith_div_i32(2147483647i, -4841i), -24322i)), min(reverseBits(vec2<i32>(-22640i, 13240i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(26018i, 3784i), vec2<i32>(0i, 10989i), vec2<i32>(2147483647i, -16500i)) >> (firstLeadingBit(u_input.a) % vec2<u32>(32u)))), ~(~abs(~vec4<u32>(1u, 1u, var_1, 1u))));
}

