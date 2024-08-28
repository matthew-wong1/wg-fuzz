struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec2<bool>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0u, vec2<f32>(1000f, 999f), vec2<f32>(-330f, 1646f), vec2<bool>(false, true), true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: i32) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u) >> (u_input.a % vec4<u32>(32u))), ~(~(~vec4<u32>(0u, 104378u, u_input.a.x, 0u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-761f, 1284f), _wgslsmith_div_vec2_f32(global0.c, global0.c))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, -705f)) + _wgslsmith_div_vec2_f32(vec2<f32>(global0.b.x, 1218f), global0.c))) + global0.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(-209f, global0.c.x) + vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1524f)), global0.c.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(563f)), _wgslsmith_f_op_f32(255f * global0.b.x))))), vec2<bool>(global0.d.x, global0.e), !global0.d.x | global0.d.x);
    let var_1 = global0.a;
    var var_2 = Struct_1(~_wgslsmith_dot_vec2_u32(abs(u_input.a.wx), u_input.a.yx ^ u_input.a.zx) | firstTrailingBit(1u), _wgslsmith_f_op_vec2_f32(global0.c * var_0.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, var_0.b.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.c.x, 1046f), global0.c, false)), !global0.d)))), vec2<bool>(true, any(!vec4<bool>(true, global0.e, var_0.e, global0.d.x)) | (_wgslsmith_sub_i32(arg_0, 2147483647i) == arg_1)), !(all(global0.d) && !all(vec3<bool>(false, true, false))));
    var_2 = Struct_1(1u, global0.c, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, var_2.b.x) + var_0.b)), _wgslsmith_f_op_vec2_f32(var_0.b + _wgslsmith_div_vec2_f32(var_0.c, var_2.b))))), !select(!vec2<bool>(global0.d.x, global0.e), vec2<bool>(all(var_2.d), var_2.d.x), !all(global0.d)), true);
    global0 = Struct_1(_wgslsmith_clamp_u32(1u, global0.a, ~var_0.a), global0.c, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.c.x, _wgslsmith_f_op_f32(trunc(-1000f))))), _wgslsmith_f_op_f32(var_2.c.x + _wgslsmith_f_op_f32(1f + global0.c.x))), vec2<bool>(all(vec3<bool>(var_0.d.x, true, false)) && true, var_0.e), global0.c.x > var_0.c.x);
    return !(!vec4<bool>(var_2.d.x, false, !any(vec3<bool>(true, false, true)), true));
}

fn func_2() -> i32 {
    var var_0 = select(!select(vec4<bool>(global0.d.x, true, all(vec3<bool>(global0.d.x, true, false)), any(vec4<bool>(global0.d.x, global0.d.x, true, global0.e))), func_3(-13545i >> (u_input.b % 32u), -1i), true), vec4<bool>(!global0.d.x, select(global0.c.x != _wgslsmith_f_op_f32(-global0.b.x), true, all(select(vec4<bool>(true, false, global0.e, true), vec4<bool>(global0.e, global0.d.x, false, false), vec4<bool>(global0.d.x, global0.e, global0.d.x, false)))), all(vec3<bool>(true, !global0.d.x, true)), global0.d.x), true);
    var_0 = !vec4<bool>(true, true, var_0.x, true);
    global0 = Struct_1(~_wgslsmith_dot_vec3_u32(u_input.a.ywy, ~vec3<u32>(global0.a, u_input.b, 4294967295u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-790f, _wgslsmith_f_op_f32(-1157f * global0.b.x)) - _wgslsmith_f_op_vec2_f32(sign(global0.c)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(global0.c.x)), _wgslsmith_f_op_f32(-global0.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -885f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) - _wgslsmith_f_op_f32(401f + 1733f)))), var_0.yz, !(true || (true | var_0.x)));
    var var_1 = ~4294967295u;
    var_0 = vec4<bool>(!(_wgslsmith_div_f32(390f, 228f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(944f + -1000f) + _wgslsmith_f_op_f32(-1211f - global0.c.x))), !all(vec2<bool>(all(vec3<bool>(var_0.x, global0.e, global0.d.x)), var_0.x)), any(!func_3(-1i, 57436i).yx) | var_0.x, true != (true && global0.d.x));
    return abs(reverseBits(-(~(-6435i))) & (_wgslsmith_sub_i32(~41448i, ~0i) ^ (reverseBits(2147483647i) << (_wgslsmith_div_u32(4294967295u, u_input.a.x) % 32u))));
}

fn func_1() -> StorageBuffer {
    var var_0 = -func_2();
    var var_1 = -1i;
    var var_2 = vec3<u32>(max(u_input.a.x, abs(firstLeadingBit(global0.a))), _wgslsmith_div_u32(global0.a, 43088u), u_input.b) >> (u_input.a.wzy % vec3<u32>(32u));
    var_1 = -(~0i);
    var var_3 = Struct_1(select(var_2.x, global0.a, any(!select(vec4<bool>(global0.d.x, global0.d.x, true, true), vec4<bool>(true, false, global0.e, true), vec4<bool>(global0.d.x, false, false, false)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -530f), global0.b.x), global0.b, func_3(-2147483647i, -12482i).wz, !all(vec4<bool>(false, true, true, true || global0.d.x)));
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.c.x)) * _wgslsmith_f_op_f32(2019f * var_3.c.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1435f + global0.c.x), _wgslsmith_f_op_f32(-var_3.b.x)))), vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_div_u32(global0.a, u_input.b ^ 4294967295u)), _wgslsmith_add_u32(~(~var_2.x), 85647u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1618f, _wgslsmith_f_op_f32(min(-331f, -951f))) + _wgslsmith_div_f32(var_3.b.x, _wgslsmith_div_f32(_wgslsmith_div_f32(-272f, global0.b.x), var_3.c.x))), ~(143982u << (0u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

