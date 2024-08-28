struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: u32,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<u32>) -> bool {
    var var_0 = Struct_1(select(vec2<bool>(any(vec2<bool>(true, true)), true), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false)), vec2<bool>(~u_input.a <= 38155u, true | all(vec4<bool>(false, false, true, true)))), reverseBits(abs(vec4<u32>(_wgslsmith_add_u32(10315u, 0u), 4294967295u | u_input.a, _wgslsmith_div_u32(4294967295u, 73615u), u_input.a))), 35496u, !any(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false))), 0u);
    var var_1 = abs(var_0.b);
    var_1 = ~vec4<u32>(_wgslsmith_mult_u32(arg_0.x, _wgslsmith_clamp_u32(var_0.c, 1u, ~0u)), ~firstLeadingBit(~arg_0.x), 14028u, _wgslsmith_mult_u32(25750u, ~arg_0.x ^ 19505u));
    var var_2 = Struct_1(vec2<bool>(any(vec4<bool>(all(vec3<bool>(var_0.d, var_0.d, true)), any(var_0.a), true, var_0.a.x)), any(select(!vec4<bool>(var_0.a.x, var_0.d, var_0.a.x, true), select(vec4<bool>(false, var_0.a.x, true, var_0.d), vec4<bool>(true, var_0.d, var_0.a.x, false), var_0.d), var_0.d | false))), var_0.b, 0u, (!var_0.d || !var_0.d) | var_0.d, 54165u);
    return var_0.d;
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = true;
    var_0 = !func_3(~_wgslsmith_div_vec2_u32(vec2<u32>(arg_2.b.x, u_input.a), arg_2.b.xx & arg_2.b.xx));
    var_0 = false;
    var var_1 = _wgslsmith_sub_vec2_u32(vec2<u32>(firstLeadingBit(~arg_2.b.x), 0u), _wgslsmith_mult_vec2_u32(arg_2.b.zy, vec2<u32>(5521u, ~(~u_input.a))));
    var var_2 = vec2<bool>(true, arg_2.a.x);
    return !select(vec4<bool>(all(vec2<bool>(true, var_2.x)), !(!arg_0.x), !(true & arg_0.x), var_2.x || !arg_2.a.x), vec4<bool>(any(vec3<bool>(var_2.x, true, var_2.x)), true && any(vec2<bool>(true, arg_0.x)), var_2.x, true), vec4<bool>(true, !all(vec4<bool>(var_2.x, var_2.x, false, false)), true, true));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    global0 = array<f32, 4>();
    var var_0 = vec4<bool>(any(select(vec2<bool>(all(vec3<bool>(false, true, true)), false), !select(vec2<bool>(false, false), vec2<bool>(true, true), false), false)), all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec4<bool>(true, true, false, true))), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), false), func_2(vec3<bool>(true, true, true), select(17908i, arg_0.x, false), Struct_1(vec2<bool>(true, false), vec4<u32>(27775u, 19779u, 0u, u_input.a), u_input.a, true, u_input.a)))), true, !(!func_2(vec3<bool>(true, true, true), arg_0.x, Struct_1(vec2<bool>(false, false), vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), u_input.a, true, u_input.a)).x));
    return Struct_1(vec2<bool>(true, !(!any(var_0.xz))), firstLeadingBit(select(~vec4<u32>(u_input.a, 114967u, u_input.a, 1u), firstLeadingBit(vec4<u32>(u_input.a, u_input.a, 1u, 0u)), select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, true, false, false), !var_0.x))), abs(~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(10038u, 1u, u_input.a, 4294967295u), vec4<u32>(15230u, 0u, 4418u, 4294967295u)), ~4294967295u)), var_0.x, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 4>();
    let var_0 = func_1(u_input.b.yz);
    let var_1 = !(_wgslsmith_mult_i32(u_input.b.x, firstLeadingBit(0i)) > -52103i);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.c, 4u)] + global0[_wgslsmith_index_u32(u_input.a, 4u)]))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(825f * _wgslsmith_f_op_f32(1000f * global0[_wgslsmith_index_u32(1u, 4u)])) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2958f)) * _wgslsmith_f_op_f32(-377f + 363f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1578f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 4u)] + -629f) - global0[_wgslsmith_index_u32(1u, 4u)])))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-1f), -2556f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(var_0.e, 4u)], 850f)), !func_2(vec3<bool>(true, true, true), u_input.b.x, var_0).ww)));
    var_3 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(0u, 4u)], -1000f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1631f, -350f) + vec2<f32>(-1727f, var_3.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-354f, -574f)))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(select(var_3.x, global0[_wgslsmith_index_u32(7954u, 4u)], var_0.a.x)), 230f), vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(41577u, 4u)] * -330f), -1000f)))), (i32(-1i) * -firstTrailingBit(u_input.b.x)) != u_input.b.x));
    let var_4 = var_0;
    let var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(var_5.b ^ var_5.b, u_input.b, min(vec4<i32>(u_input.b.x | -u_input.b.x, _wgslsmith_div_i32(u_input.b.x, 1i), _wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_div_i32(u_input.b.x, u_input.b.x), _wgslsmith_sub_i32(u_input.b.x, u_input.b.x)), i32(-1i) * -16585i), select(vec4<i32>(0i, countOneBits(-1i), -1i, _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, -36038i)), -(~vec4<i32>(u_input.b.x, u_input.b.x, 16239i, u_input.b.x)), vec4<bool>(var_0.d, var_4.a.x, false && var_5.d, var_1))));
}

