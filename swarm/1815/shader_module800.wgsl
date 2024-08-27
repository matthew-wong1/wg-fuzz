struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: u32,
    d: vec2<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(true, true, true, false), 1445f, 4294967295u, vec2<f32>(502f, -1432f), 11296u);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<bool> {
    global0 = Struct_1(!(!(!(!vec4<bool>(true, global0.a.x, global0.a.x, global0.a.x)))), global0.d.x, abs(1u), _wgslsmith_f_op_vec2_f32(abs(global0.d)), ~(~u_input.b));
    var var_0 = !vec4<bool>(true, !global0.a.x, false, global0.a.x);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), 1f);
    var var_2 = !all(vec3<bool>(any(!var_0.wz), true, false));
    return global0.a;
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: vec3<f32>, arg_3: u32) -> vec3<f32> {
    let var_0 = vec4<u32>(30896u, global0.c, 4294967295u, 4294967295u) | (vec4<u32>(1u >> (arg_3 % 32u), ~(global0.c | global0.c), arg_3, ~0u) & _wgslsmith_add_vec4_u32(u_input.a ^ _wgslsmith_div_vec4_u32(vec4<u32>(global0.e, u_input.a.x, u_input.a.x, 70925u), vec4<u32>(39735u, 29589u, u_input.a.x, global0.e)), ~(~u_input.a)));
    global0 = Struct_1(vec4<bool>(any(select(func_3(), func_3(), select(global0.a, vec4<bool>(true, true, global0.a.x, true), global0.a.x))), global0.a.x, _wgslsmith_f_op_f32(2263f - 1000f) < arg_2.x, any(!select(vec2<bool>(true, false), vec2<bool>(global0.a.x, false), vec2<bool>(true, global0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.b, _wgslsmith_f_op_f32(sign(1424f))))), ~(_wgslsmith_mult_u32(_wgslsmith_div_u32(global0.c, 11806u), 1u) | ~(~arg_3)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global0.d))), global0.d)))), _wgslsmith_mult_u32(1u, firstLeadingBit(countOneBits(~29127u))));
    global0 = Struct_1(select(func_3(), select(select(select(vec4<bool>(true, global0.a.x, false, false), vec4<bool>(true, false, global0.a.x, false), global0.a.x), !vec4<bool>(false, false, false, global0.a.x), false), global0.a, global0.a.x), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-697f - _wgslsmith_f_op_f32(exp2(global0.d.x))))) * _wgslsmith_f_op_f32(min(781f, _wgslsmith_f_op_f32(step(-381f, _wgslsmith_f_op_f32(max(1295f, 2101f))))))), ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.a, var_0, vec4<u32>(global0.c, 4294967295u, 4294967295u, u_input.a.x)), ~vec4<u32>(global0.c, 1u, var_0.x, 11563u)), global0.e), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-796f, global0.d.x) + vec2<f32>(-381f, arg_1.x)) - arg_2.zz), arg_1.yx, all(vec3<bool>(false, global0.a.x, true))))), ~select(~_wgslsmith_add_u32(arg_3, arg_3), 48852u, !global0.a.x));
    global0 = Struct_1(vec4<bool>(true, any(!global0.a.yx), global0.a.x, 1016f >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-global0.b))), _wgslsmith_f_op_f32(ceil(-537f)), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(_wgslsmith_div_u32(35273u, 1u), ~1u, 4294967295u, ~var_0.x)), reverseBits(vec4<u32>(arg_3, arg_3, var_0.x, global0.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(992f, 1f) * _wgslsmith_f_op_vec2_f32(-arg_1.yw))), ~u_input.a.x);
    let var_1 = true;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(942f * arg_1.x), global0.d.x)), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, -839f)))) + arg_2));
}

fn func_1(arg_0: vec4<u32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, global0.b, 1298f)) + _wgslsmith_f_op_vec3_f32(func_2(-1i, vec4<f32>(-853f, global0.d.x, -329f, -662f), vec3<f32>(global0.b, global0.d.x, global0.d.x), 32119u))))))));
    var var_1 = Struct_1(vec4<bool>(false, !((global0.a.x && true) != true), !global0.a.x, true), 708f, arg_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(global0.d, global0.d))))), _wgslsmith_sub_u32(global0.e, arg_0.x));
    var var_2 = _wgslsmith_mod_vec4_u32(select(~vec4<u32>(_wgslsmith_div_u32(u_input.b, 0u), 100719u, var_1.c << (u_input.a.x % 32u), 3202u), ~_wgslsmith_mod_vec4_u32(~u_input.a, ~vec4<u32>(arg_0.x, global0.e, global0.e, 52103u)), func_3()), ~vec4<u32>(~22528u, _wgslsmith_dot_vec3_u32(arg_0.zzw, u_input.a.xxy), abs(26252u), reverseBits(1u)) >> (~(~firstLeadingBit(vec4<u32>(50455u, 0u, var_1.c, 47655u))) % vec4<u32>(32u)));
    var var_3 = ~(~20757u);
    let var_4 = 11421u;
    return select(false, false, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~select(vec3<i32>(1i, -25661i, 21968i), abs(min(vec3<i32>(-2147483647i, -27598i, -38346i), vec3<i32>(55048i, -20618i, -2147483647i))), vec3<bool>(global0.e != global0.c, func_1(vec4<u32>(0u, 1u, 24872u, 0u)), func_1(u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(-1827f, ~(~64333u), global0.b);
}

