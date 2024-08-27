struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1108f;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(-1560f, -304f, 467f, 1856f));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> bool {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1299f, _wgslsmith_f_op_f32(abs(global1.a.x)))) + _wgslsmith_f_op_f32(exp2(global1.a.x)))));
    var var_0 = ~vec3<u32>(~reverseBits(~9606u), u_input.b, _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.d, 17019u), reverseBits(vec2<u32>(4294967295u, u_input.b)), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), ~abs(vec2<u32>(18445u, u_input.d))));
    let var_1 = ~1u;
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) + -2666f)));
    var var_3 = vec3<bool>(!((abs(-2811i) ^ u_input.a.x) > min(firstLeadingBit(-2147483647i), u_input.c)), !all(vec4<bool>(false, true, true, true)) || true, u_input.a.x < 1666i);
    return all(vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1191f)) + global1.a.x) < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.a.x))), true, false));
}

fn func_2() -> vec4<bool> {
    global1 = Struct_1(global1.a);
    global1 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2463f, global1.a.x, -785f, -412f)), _wgslsmith_f_op_vec4_f32(-global1.a)), global1.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, global1.a.x, -1392f, -995f)), _wgslsmith_f_op_vec4_f32(abs(global1.a))) - _wgslsmith_f_op_vec4_f32(abs(global1.a)))));
    var var_0 = reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, _wgslsmith_mod_u32(4294967295u, 103875u), u_input.d) << (vec3<u32>(u_input.d, u_input.d, ~86896u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(56226u, u_input.b, u_input.d), vec3<u32>(u_input.b, u_input.d, u_input.d))), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 81277u, u_input.d), vec3<u32>(u_input.b, 24771u, u_input.d), vec3<u32>(0u, 0u, 1u)) & vec3<u32>(0u, u_input.b, u_input.d))));
    global1 = Struct_1(vec4<f32>(global1.a.x, global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -101f))), _wgslsmith_f_op_f32(-global1.a.x)));
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(global1.a, global1.a))))));
    return vec4<bool>(true, true, func_3(), true);
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = ~(~(~(~37975u)));
    global1 = Struct_1(arg_2);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(global1.a, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(999f, 274f, false)), arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(431f, global1.a.x, true))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.x, -1000f, global1.a.x, 121f), _wgslsmith_f_op_vec4_f32(sign(arg_2)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), false))), select(func_2(), func_2(), true))), ~(~arg_1) >= ~(~arg_1))));
    let var_2 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(global1.a.x, var_1.a.x, arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + -699f))), var_1.a));
    var var_3 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(2128f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)), var_1.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-959f, global1.a.x, var_2.a.x, 1640f)) + _wgslsmith_div_vec4_f32(arg_2, var_1.a))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1000f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(var_3.a.x, 344f, false)), arg_2.x)), var_3.a.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1065f, -808f, global1.a.x, arg_2.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_2.a, vec4<f32>(arg_2.x, var_1.a.x, -253f, var_1.a.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(vec4<u32>(max(_wgslsmith_mod_u32(775u << (u_input.d % 32u), 31915u | u_input.b), _wgslsmith_mod_u32(u_input.b, u_input.d) << (abs(u_input.b) % 32u)), _wgslsmith_div_u32(_wgslsmith_div_u32(1u, u_input.d), ~1u), u_input.b << (0u % 32u), u_input.d), 1u, global1.a);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.a.x)) * global1.a.x));
    let var_0 = _wgslsmith_f_op_vec2_f32(-global1.a.yy);
    global0 = 1000f;
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(-global1.a));
    global1 = func_1(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.d, u_input.b & 37641u), u_input.d), u_input.d & u_input.b, _wgslsmith_mult_u32(max(~u_input.b, u_input.b), ~u_input.d), ~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 32272u), vec4<u32>(u_input.d, 10344u, u_input.b, u_input.d)))), u_input.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global1.a + _wgslsmith_f_op_vec4_f32(-vec4<f32>(2255f, 554f, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(global1.a + vec4<f32>(var_0.x, -1635f, 150f, -798f)), func_3()))));
    let var_1 = (vec2<u32>(~u_input.b, u_input.d) | ~(~(vec2<u32>(u_input.b, u_input.b) << (vec2<u32>(0u, u_input.b) % vec2<u32>(32u))))) & (select(vec2<u32>(_wgslsmith_mod_u32(0u, u_input.d), ~44732u), vec2<u32>(~u_input.d, u_input.b), select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true))) & (~(~vec2<u32>(u_input.d, 88u)) ^ ~(~vec2<u32>(4294967295u, 0u))));
    global0 = _wgslsmith_f_op_f32(abs(var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.x);
}

