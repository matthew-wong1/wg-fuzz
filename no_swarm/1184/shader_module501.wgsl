struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(-1886f, 377f), 40613u);

var<private> global1: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.a.x, global1.a.x))), 18532u);
    let var_1 = ~vec4<u32>(var_0.b, ~1u, var_0.b << (~var_0.b % 32u), global1.b);
    var var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(global1.a.x)), var_0.a.x), reverseBits(~23650u));
    var var_3 = !(!vec3<bool>(all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), true)), false, false));
    let var_4 = Struct_1(global0.a, _wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, 1u), _wgslsmith_sub_u32(global0.b, ~2230u)) << (_wgslsmith_mult_u32(234u, global1.b) % 32u));
    return -1i;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> bool {
    let var_0 = min(-_wgslsmith_sub_i32(1i, _wgslsmith_mod_i32(~(-1i), func_3())), _wgslsmith_mod_i32(-2147483647i, ~1i | u_input.b) & u_input.b);
    let var_1 = _wgslsmith_add_vec4_u32(~_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.b, global1.b, arg_0.b, 27333u), vec4<u32>(4294967295u, 17303u, 59685u, 35819u), vec4<u32>(0u, 4294967295u, 14643u, global0.b)), ~vec4<u32>(global0.b, global0.b, 0u, u_input.a)) >> ((vec4<u32>(global0.b, 35437u, min(global1.b, 53310u), _wgslsmith_add_u32(1u, arg_2.b)) << (countOneBits(select(vec4<u32>(30117u, global0.b, arg_0.b, 32566u), vec4<u32>(global0.b, arg_2.b, 56766u, arg_2.b), vec4<bool>(true, true, arg_1, false))) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32((_wgslsmith_div_vec4_u32(vec4<u32>(global1.b, arg_0.b, 0u, u_input.a), vec4<u32>(52402u, 0u, 1u, global1.b)) << (~vec4<u32>(4294967295u, global1.b, global1.b, 1u) % vec4<u32>(32u))) | vec4<u32>(1u ^ global0.b, global0.b, abs(4294967295u), firstLeadingBit(0u)), ~vec4<u32>(4294967295u, abs(u_input.a), _wgslsmith_add_u32(19511u, 38445u), _wgslsmith_clamp_u32(4294967295u, global1.b, u_input.a))));
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), arg_2.a.x, -925f, arg_2.a.x), vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(round(global0.a.x)), _wgslsmith_f_op_f32(exp2(arg_2.a.x)), 1000f)))))));
    let var_3 = arg_0;
    let var_4 = var_1.xzz;
    return true;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: vec3<u32>) -> u32 {
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global1.a.x - 1000f), _wgslsmith_f_op_f32(-global0.a.x)) + global1.a))), 0u);
    let var_0 = vec3<bool>(true, arg_1.x, all(select(vec3<bool>(all(vec3<bool>(true, true, true)), true, arg_1.x), vec3<bool>(true, func_2(Struct_1(vec2<f32>(arg_0.x, -1000f), arg_2.x), arg_1.x, Struct_1(vec2<f32>(global1.a.x, global0.a.x), u_input.a)), arg_1.x), !vec3<bool>(false, arg_1.x, arg_1.x))));
    var var_1 = vec2<bool>(true, var_0.x);
    return global0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global1.a, u_input.a);
    let var_1 = _wgslsmith_mult_u32(select(var_0.b, _wgslsmith_add_u32(~func_1(global1.a, vec2<bool>(false, false), vec3<u32>(global0.b, var_0.b, global0.b)), global1.b), 1f <= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global1.a.x))))), _wgslsmith_mod_u32(reverseBits(~(u_input.a & 6128u)), _wgslsmith_sub_u32(u_input.a, u_input.a) | firstLeadingBit(_wgslsmith_clamp_u32(u_input.a, global0.b, global0.b))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(sign(-575f))), _wgslsmith_f_op_f32(286f + _wgslsmith_f_op_f32(step(global1.a.x, global1.a.x))), -830f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(146f * global0.a.x), _wgslsmith_f_op_f32(-global1.a.x)))))));
    let var_3 = 13141u;
    var var_4 = _wgslsmith_mod_u32(var_3, 4371u >> (_wgslsmith_div_u32(global0.b, (global1.b >> (global1.b % 32u)) | (15609u | var_0.b)) % 32u));
    var_4 = 28792u ^ (global1.b << (_wgslsmith_mult_u32(firstLeadingBit(u_input.a), _wgslsmith_mult_u32(var_0.b, 5949u) & ~global0.b) % 32u));
    global1 = Struct_1(global1.a, var_3);
    let var_5 = select(vec4<bool>(true, true, any(vec2<bool>(true, true)), true), select(vec4<bool>(true, !any(vec4<bool>(true, true, true, true)), any(vec4<bool>(false, false, true, true)), true), vec4<bool>(select(true, true, true), all(vec3<bool>(true, true, true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false))), !any(vec3<bool>(true, true, true))), any(select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), false))), !vec4<bool>(all(vec2<bool>(true, true)), all(vec3<bool>(true, true, true)), false, (var_1 > global1.b) && true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.x, -1954f, var_2.x, 1011f), vec4<f32>(global1.a.x, global1.a.x, 449f, var_2.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(545f, global1.a.x, 3152f, 1479f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-109f, var_2.x, -249f, 107f) + vec4<f32>(442f, -2735f, global1.a.x, 1171f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2091f, var_0.a.x, -539f, var_0.a.x))))), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_add_u32(var_1 | u_input.a, u_input.a));
}

