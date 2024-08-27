struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec2<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: bool) -> bool {
    global0 = arg_2;
    var var_0 = !arg_2;
    var var_1 = 229f;
    global0 = select(_wgslsmith_add_u32(min(u_input.c.x, ~u_input.d.x), ~42928u) <= (37295u & (u_input.d.x >> (u_input.b % 32u))), arg_2 | !all(select(vec3<bool>(true, true, true), vec3<bool>(arg_2, false, arg_2), false)), arg_2);
    let var_2 = !vec3<bool>(true, any(vec3<bool>(false & arg_2, u_input.e <= 0i, false)), !all(!vec2<bool>(arg_2, false)));
    return !var_2.x;
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    let var_0 = Struct_1(493f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1281f, 361f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(398f)), _wgslsmith_f_op_f32(ceil(-1507f)))))));
    global0 = !func_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(round(var_0.a)))))), Struct_2(u_input.a), true);
    global0 = true;
    var var_1 = Struct_2(i32(-1i) * -abs(min(u_input.a, u_input.e)));
    var_1 = Struct_2(~(-2147483647i));
    return 129f;
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: bool, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.zx));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-307f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<bool>(arg_2, arg_2, true, arg_2)))) + 539f)));
    var var_1 = min(vec2<u32>(u_input.c.x, abs(~1u)), u_input.d.yx);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_3.x))), arg_3.x, 1000f, _wgslsmith_f_op_f32(func_2(vec4<bool>(func_3(arg_3.x, Struct_2(arg_0), true), any(select(vec3<bool>(arg_2, arg_2, false), vec3<bool>(arg_2, false, false), vec3<bool>(false, false, true))), arg_2, -arg_0 <= ~u_input.e))));
    global0 = true;
    return Struct_2(_wgslsmith_sub_i32(min(_wgslsmith_sub_i32(arg_0, 8928i), arg_0) ^ (select(arg_0, 2147483647i, true) | firstLeadingBit(1i)), _wgslsmith_div_i32(-arg_0, ~(2147483647i | arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(535f, 1000f, -162f) * vec3<f32>(-334f, -1605f, 816f)), vec3<f32>(709f, -2851f, -1550f), true))))));
    global0 = false != any(vec3<bool>(true, true, var_0.x > -661f));
    let var_1 = -10326i;
    var var_2 = u_input.d;
    let var_3 = var_0;
    var_2 = u_input.d ^ ~u_input.d;
    var_2 = ~(~vec3<u32>(var_2.x, firstLeadingBit(1u), ~(~var_2.x)));
    let var_4 = func_1(min(-(~var_1), var_1), var_3, 35944i != u_input.e, vec4<f32>(var_3.x, _wgslsmith_f_op_f32(step(-357f, var_0.x)), 165f, -547f));
    let x = u_input.a;
    s_output = StorageBuffer(17439u, _wgslsmith_f_op_f32(abs(var_0.x)), var_2.x, vec2<i32>(~(~2147483647i >> (_wgslsmith_clamp_u32(0u, var_2.x, 0u) % 32u)), 1i), vec2<u32>(max(1u, abs(var_2.x)) << ((_wgslsmith_add_u32(9812u, 10219u) >> (_wgslsmith_add_u32(u_input.c.x, u_input.d.x) % 32u)) % 32u), max(19416u, ~countOneBits(1u))));
}

