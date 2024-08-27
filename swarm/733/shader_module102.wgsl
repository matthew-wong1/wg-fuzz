struct Struct_1 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 1u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: vec3<bool>, arg_3: Struct_1) -> i32 {
    global0 = abs(u_input.b.xx);
    let var_0 = Struct_1(all(arg_2), any(!(!arg_2)));
    var var_1 = _wgslsmith_f_op_f32(sign(-192f));
    global0 = ~(~(~u_input.b.zx));
    let var_2 = arg_3;
    return 8555i;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: bool) -> vec2<u32> {
    global0 = firstLeadingBit(_wgslsmith_div_vec2_u32(firstLeadingBit(_wgslsmith_sub_vec2_u32(~u_input.b.zy, vec2<u32>(1u, global0.x))), u_input.b.zz));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-209f, _wgslsmith_div_f32(592f, 1f)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(205f + -408f))))));
    let var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(~(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(52354u, 9883u, u_input.b.x)) & ~arg_2), 4294967295u, ~17950u, u_input.b.x), min(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(18204u, 0u, 1u, 46210u), vec4<u32>(arg_2, 1u, arg_2, arg_2))), vec4<u32>(14704u, _wgslsmith_sub_u32(global0.x, 4294967295u), global0.x, u_input.b.x)) | ~select(min(vec4<u32>(global0.x, u_input.b.x, arg_2, 1u), vec4<u32>(arg_2, arg_2, arg_2, 8995u)), ~vec4<u32>(arg_2, 4294967295u, 28904u, 76185u), true));
    let var_2 = arg_0;
    return u_input.b.zz;
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, arg_0) + _wgslsmith_div_f32(arg_0, arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_div_f32(arg_1, 1126f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(283f - arg_0) + _wgslsmith_f_op_f32(floor(1250f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0))), arg_1);
    global0 = func_4(arg_3, _wgslsmith_sub_i32(u_input.a.x, func_3(u_input.a.x ^ u_input.a.x, select(select(vec2<bool>(arg_3.a, arg_3.b), vec2<bool>(arg_3.b, true), false), vec2<bool>(true, true), u_input.a.x < -2147483647i), !select(vec3<bool>(true, arg_3.a, arg_3.b), vec3<bool>(true, false, arg_3.b), vec3<bool>(true, true, false)), arg_3)), 34313u, false);
    let var_1 = -(~_wgslsmith_clamp_vec4_i32(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-51400i, 1i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, 52142i, -8568i, 11998i)), vec4<i32>(u_input.a.x, 2147483647i, -13310i, u_input.a.x), true), ~vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 37830i), -vec4<i32>(u_input.a.x, -44499i, -2147483647i, u_input.a.x)));
    global0 = ~u_input.b.zx;
    global0 = arg_2.wy ^ _wgslsmith_add_vec2_u32(firstTrailingBit(max(reverseBits(vec2<u32>(4911u, 10651u)), ~vec2<u32>(global0.x, 4294967295u))), vec2<u32>(firstTrailingBit(~global0.x), 33479u));
    return vec2<u32>(u_input.b.x, global0.x);
}

fn func_1() -> vec2<u32> {
    global0 = firstTrailingBit(max(vec2<u32>(_wgslsmith_mult_u32(1u, ~global0.x), countOneBits(1u)), select(~u_input.b.zy, _wgslsmith_clamp_vec2_u32(reverseBits(u_input.b.zy), vec2<u32>(105440u, 0u), func_2(859f, -313f, vec4<u32>(7193u, u_input.b.x, u_input.b.x, u_input.b.x), Struct_1(false, true))), vec2<bool>(any(vec3<bool>(true, false, false)), any(vec2<bool>(true, true))))));
    let var_0 = ~(-(~select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 2147483647i), vec4<i32>(-18593i, u_input.a.x, u_input.a.x, 0i), false)) << (~_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, 26626u, u_input.b.x, 124484u) | vec4<u32>(9115u, 4294967295u, 26371u, u_input.b.x), select(vec4<u32>(global0.x, 27156u, u_input.b.x, 79795u), vec4<u32>(0u, global0.x, global0.x, global0.x), false), ~vec4<u32>(u_input.b.x, 13619u, u_input.b.x, 31149u)) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-148f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 1000f))))), _wgslsmith_f_op_f32(sign(-194f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1070f) + -1748f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-505f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -103f))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(519f, 743f))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-720f - 1342f), _wgslsmith_f_op_f32(624f * -1020f), _wgslsmith_div_f32(-2455f, 750f), _wgslsmith_f_op_f32(537f - 1331f))))));
    var var_2 = !(!(!select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(false, true))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1442f)), _wgslsmith_f_op_f32(sign(var_1.x)))), var_1.x)), _wgslsmith_f_op_f32(-var_1.x), var_1.x);
    return firstLeadingBit(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), -2467f, ~vec4<u32>(global0.x, 1u, u_input.b.x, 1u), Struct_1(true, var_1.x > 1206f))) & vec2<u32>(func_2(_wgslsmith_f_op_f32(var_1.x + -136f), -113f, ~vec4<u32>(global0.x, u_input.b.x, global0.x, u_input.b.x), Struct_1(true, true)).x << (func_2(_wgslsmith_f_op_f32(f32(-1f) * -582f), _wgslsmith_f_op_f32(exp2(var_1.x)), ~vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x), Struct_1(var_2.x, var_2.x)).x % 32u), min(~(~21796u), ~(~u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(max(~firstLeadingBit(4294967295u), 14684u), ~4294967295u);
    global0 = func_1();
    let var_1 = true;
    global0 = u_input.b.yx;
    var var_2 = _wgslsmith_sub_i32(-u_input.a.x, i32(-1i) * -u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(4294967295u));
}

