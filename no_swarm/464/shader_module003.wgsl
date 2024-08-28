struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
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

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_mod_vec2_u32(u_input.a, _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(~u_input.a.x, 14799u))), u_input.a);
    var var_1 = -1i;
    var_1 = 1i;
    let var_2 = var_0.b.x;
    let var_3 = Struct_1(vec2<u32>(firstLeadingBit(u_input.b), ~firstLeadingBit(abs(1u))), var_0.b);
    return u_input.a;
}

fn func_2(arg_0: i32) -> vec2<bool> {
    let var_0 = ~vec3<i32>(_wgslsmith_clamp_i32(firstTrailingBit(_wgslsmith_mod_i32(arg_0, 12720i)), -9510i, ~2147483647i), 36148i, _wgslsmith_clamp_i32((i32(-1i) * -9442i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_0, -35305i, 9582i), vec4<i32>(3240i, 2147483647i, arg_0, arg_0)), arg_0, -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, arg_0, arg_0), vec4<i32>(1i, -3293i, 1i, 614i))));
    let var_1 = -214f;
    let var_2 = Struct_1(~abs(func_3()), u_input.a);
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-833f)), _wgslsmith_f_op_f32(-1000f + 1178f)), -1414f), _wgslsmith_f_op_f32(var_1 * var_1)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1, var_1, var_1), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(199f, var_1, var_1))))) + vec3<f32>(561f, _wgslsmith_f_op_f32(exp2(var_1)), var_1)));
    var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_3.x, var_1)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, 244f, var_1), vec3<f32>(-1580f, -816f, -246f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, 253f, var_3.x) + vec3<f32>(1237f, 349f, var_1)))))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_3.x, -536f)) * _wgslsmith_f_op_f32(var_1 + var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) - -921f), var_1), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1, -142f, var_1), vec3<f32>(var_1, var_1, -771f)) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(205f, var_3.x, var_1))))))))));
    return !vec2<bool>(2147483647i == ~(~var_0.x), !(true | (50903u == u_input.a.x)));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec3<f32>) -> bool {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_mod_i32(arg_0, min(~arg_0, arg_0));
    let var_2 = Struct_1(select(firstTrailingBit(_wgslsmith_mod_vec2_u32(u_input.a ^ arg_1.b, arg_1.a)), ~((u_input.a | vec2<u32>(arg_1.b.x, arg_1.a.x)) ^ _wgslsmith_add_vec2_u32(vec2<u32>(arg_1.a.x, 15740u), var_0.b)), select(!func_2(58071i), select(vec2<bool>(false, false), func_2(0i), func_2(1i).x), vec2<bool>(true, true))), min(~vec2<u32>(abs(arg_1.a.x), arg_1.b.x), ~u_input.a));
    let var_3 = vec4<bool>(true, all(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), !(func_2(var_1 | -3273i).x | !(arg_2.x == arg_2.x)), !(any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false))) | all(func_2(-3002i))));
    let var_4 = true;
    return var_3.x && var_4;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: bool) -> vec4<bool> {
    var var_0 = Struct_1(~u_input.a, ~u_input.a);
    var var_1 = 177f;
    var_0 = arg_0;
    var_0 = arg_0;
    var_0 = arg_0;
    return select(select(vec4<bool>(!all(vec2<bool>(arg_2, false)), any(select(vec2<bool>(arg_2, false), vec2<bool>(false, arg_2), arg_2)), true, arg_3), select(vec4<bool>(true, true, true, !arg_3), !(!vec4<bool>(true, true, arg_3, false)), select(vec4<bool>(false, true, true, arg_3), vec4<bool>(false, arg_3, arg_3, true), arg_3)), arg_2), vec4<bool>(any(!vec4<bool>(false, arg_3, false, arg_2)), arg_2, true, true), !vec4<bool>(func_1(_wgslsmith_add_i32(-2147483647i, 1i), Struct_1(var_0.b, var_0.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-696f, -490f, 590f))), arg_3 != false, true, !arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -360f) + _wgslsmith_div_f32(418f, 1449f))));
    let var_1 = select(vec4<bool>(false, !all(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, true, true)) || true, false), select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), u_input.b > u_input.b), vec4<bool>(true, true, true, true), false), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), func_4(Struct_1(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(15238u, 0u)), 1u, func_1(53900i, Struct_1(vec2<u32>(5249u, u_input.a.x), u_input.a), vec3<f32>(-1412f, 393f, var_0)), true)), true), func_2(-2147483647i).x | true);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0));
    let var_3 = u_input.a.x;
    let var_4 = Struct_1(func_3() | u_input.a, reverseBits(vec2<u32>(var_3, ~4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(firstTrailingBit(max(countOneBits(var_3), var_4.a.x))));
}

