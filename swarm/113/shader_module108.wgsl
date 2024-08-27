struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 30615i;

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    global0 = 0i;
    global0 = i32(-1i) * -1i;
    let var_0 = true;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global1.a, global1.a))) - vec3<f32>(global1.a.x, -1851f, 1878f)));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.a - var_1.a) + _wgslsmith_div_vec3_f32(global1.a, global1.a)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, global1.a.x, -1000f)))));
    return 1u;
}

fn func_2(arg_0: vec3<u32>, arg_1: bool, arg_2: vec3<u32>, arg_3: bool) -> f32 {
    var var_0 = select(select(vec3<bool>(all(vec4<bool>(arg_1, arg_1, false, arg_1)) || (true && arg_3), (true != arg_1) && any(vec2<bool>(arg_3, true)), false), vec3<bool>(_wgslsmith_f_op_f32(-global1.a.x) >= global1.a.x, abs(-2147483647i) != u_input.a.x, arg_1), !select(!vec3<bool>(arg_3, arg_3, arg_3), select(vec3<bool>(true, arg_1, false), vec3<bool>(true, false, arg_3), vec3<bool>(true, arg_3, arg_1)), !vec3<bool>(arg_1, arg_1, arg_1))), vec3<bool>(~func_3() <= 1u, arg_3, true), !vec3<bool>(any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, arg_1, arg_1, true), vec4<bool>(arg_3, true, true, arg_3))), any(vec4<bool>(true, true, arg_1, arg_3)) && false, all(vec2<bool>(false, true))));
    var var_1 = max(vec3<i32>(-1i) * -max(select(vec3<i32>(u_input.a.x, 31898i, 66818i), vec3<i32>(2147483647i, 0i, u_input.a.x), vec3<bool>(arg_3, arg_1, var_0.x)), -vec3<i32>(u_input.a.x, -1i, -42123i)), ~firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(-46447i, 52751i, 11636i), abs(vec3<i32>(19471i, 9879i, 69230i)))));
    global0 = ~_wgslsmith_sub_i32(select(0i, 1i, any(vec4<bool>(arg_3, true, false, false))), var_1.x) << (~(~(~1u)) % 32u);
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.a * vec3<f32>(global1.a.x, -2049f, _wgslsmith_f_op_f32(-global1.a.x))) + _wgslsmith_f_op_vec3_f32(-global1.a)));
    var var_2 = select(arg_3, !any(var_0.xx), arg_1);
    return global1.a.x;
}

fn func_1(arg_0: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, 655f, 305f, 460f)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(688f, arg_0, 1604f, global1.a.x)))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1182f) - 1123f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-325f + 721f), global1.a.x, -779f, _wgslsmith_f_op_f32(f32(-1f) * -1045f)), vec4<f32>(_wgslsmith_f_op_f32(arg_0 - global1.a.x), _wgslsmith_f_op_f32(func_2(vec3<u32>(4294967295u, 4294967295u, 4294967295u), true, vec3<u32>(61149u, 11642u, 4294967295u), false)), _wgslsmith_f_op_f32(select(1882f, 720f, true)), -968f), vec4<bool>(arg_0 < arg_0, true, false, all(vec2<bool>(false, false)))))));
    let var_1 = Struct_1(var_0.zxw);
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global1.a)), var_0.wwz);
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.zyz, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(1546f * 1312f), _wgslsmith_f_op_f32(var_1.a.x - global1.a.x), _wgslsmith_f_op_f32(-var_1.a.x)), vec3<f32>(580f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 237f), true)), select(!any(vec2<bool>(false, false)), false, all(vec2<bool>(false, true))))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(-2488f, var_0.x, var_0.x), vec3<f32>(1000f, -1000f, var_2.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a.x, arg_0, arg_0), vec3<f32>(1906f, arg_0, -1093f), true)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-100f, global1.a.x, 1198f), global1.a)))))));
    global1 = var_1;
    return Struct_2(var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<u32>(50866u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(50507u, 4294967295u, 100923u)), ~max(4294967295u, 0u)), _wgslsmith_dot_vec2_u32(max(vec2<u32>(105864u, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(13580u, 59708u), vec2<u32>(118953u, 79132u), vec2<u32>(43922u, 58416u))), vec2<u32>(1u, 1u)));
    var var_1 = func_1(-408f);
    var var_2 = _wgslsmith_dot_vec2_i32(-reverseBits(countOneBits(u_input.a)), vec2<i32>(u_input.a.x, ~2147483647i)) << (~_wgslsmith_mult_u32(var_0.x, (0u << (var_0.x % 32u)) << (max(118264u, var_0.x) % 32u)) % 32u);
    var_2 = _wgslsmith_mod_i32(1i, _wgslsmith_mult_i32(2147483647i, max(_wgslsmith_sub_i32(u_input.a.x, -7646i), -_wgslsmith_clamp_i32(2147483647i, u_input.a.x, u_input.a.x))));
    var var_3 = any(!select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), select(vec2<bool>(true, false), vec2<bool>(false, true), true), select(vec2<bool>(false, false), vec2<bool>(true, false), false)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)))));
    var var_4 = Struct_2(var_1.a);
    var var_5 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(global1.a, abs(~vec3<u32>(4294967295u, var_0.x, var_0.x)) >> (~abs(vec3<u32>(34863u, var_0.x, var_0.x) | vec3<u32>(79819u, var_0.x, 1u)) % vec3<u32>(32u)), var_4.a.a.x);
}

