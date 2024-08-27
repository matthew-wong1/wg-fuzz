struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    return 0i;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec4<i32>(func_3(), -2147483647i, ~(-_wgslsmith_mult_i32(-17318i, -1i) & _wgslsmith_clamp_i32(-2147483647i, ~(-38483i), ~1i)), 1i);
    var var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1317f, 2784f) * _wgslsmith_f_op_f32(trunc(-517f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2282f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-769f, -328f, true)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1344f)), _wgslsmith_div_f32(1680f, 115f), true))))));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-386f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 1143f) * _wgslsmith_f_op_f32(1602f - -554f)))));
    let var_3 = u_input.a.x;
    return Struct_1(all(select(arg_0.b, arg_0.b, arg_0.b)), vec4<bool>(true, true, true, var_1.b.x));
}

fn func_1(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_1(false, select(!vec4<bool>(true, !arg_0, arg_0, any(vec2<bool>(true, arg_2.a))), select(!(!vec4<bool>(arg_2.a, true, arg_2.b.x, false)), vec4<bool>(false, true, true, false), false), arg_0));
    var var_1 = func_2(arg_2);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1484f, 563f)) + -913f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-279f, 236f)), _wgslsmith_f_op_f32(-1000f - -379f)))))));
    var var_3 = 0u;
    var_3 = arg_1.x;
    return _wgslsmith_mult_i32(1i, func_3()) | -1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec2_u32(firstTrailingBit(u_input.a.zy) & firstLeadingBit(~_wgslsmith_div_vec2_u32(vec2<u32>(40416u, 44598u), vec2<u32>(u_input.a.x, u_input.a.x))), select(_wgslsmith_mod_vec2_u32(u_input.a.wy, min(vec2<u32>(105216u, u_input.a.x), u_input.a.zy) | vec2<u32>(u_input.a.x, 0u)), ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.wx)), select(vec2<bool>(true, true), vec2<bool>(true, true), firstTrailingBit(1u) > _wgslsmith_div_u32(u_input.a.x, u_input.a.x))), u_input.a.zz);
    let var_1 = max(1i, ~(~select(select(2147483647i, -17554i, false), func_1(false, u_input.a.xxx, Struct_1(false, vec4<bool>(true, false, true, false))), true)));
    var var_2 = false;
    var_2 = false;
    let var_3 = _wgslsmith_div_f32(1612f, _wgslsmith_f_op_f32(f32(-1f) * -1540f));
    var var_4 = Struct_1(true, vec4<bool>(!any(vec2<bool>(true, true)), all(vec2<bool>(true, true)), abs(var_0.x) < ~u_input.a.x, true));
    let var_5 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-234f, var_3, -139f) * vec3<f32>(604f, 301f, 1488f))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(526f, var_3, var_3) + vec3<f32>(var_3, var_3, var_3))))))));
    var var_6 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_5.xx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1033f, var_3))));
}

