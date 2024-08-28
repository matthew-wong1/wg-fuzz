struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(select(411f, _wgslsmith_f_op_f32(max(1f, -444f)), all(select(select(select(vec2<bool>(false, false), vec2<bool>(true, arg_2), vec2<bool>(true, false)), vec2<bool>(true, true), u_input.d.x <= u_input.b.x), vec2<bool>(arg_2, false & arg_2), vec2<bool>(any(vec3<bool>(false, arg_2, arg_2)), false)))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -572f);
    let var_2 = Struct_1(~_wgslsmith_mult_u32(arg_0.a, 29844u));
    var_1 = 1000f;
    var var_3 = !(114709u != ~(~arg_1.a & (arg_0.a ^ var_2.a)));
    return select(vec2<bool>(select(all(select(vec2<bool>(arg_2, true), vec2<bool>(false, false), vec2<bool>(arg_2, arg_2))), !(!arg_2), arg_2), false), select(!(!(!vec2<bool>(arg_2, true))), !vec2<bool>(all(vec4<bool>(arg_2, arg_2, arg_2, arg_2)), true), arg_2), !select(true, select(arg_2, true, true), arg_2));
}

fn func_2() -> vec2<bool> {
    var var_0 = func_3(Struct_1(26734u), Struct_1(u_input.e), all(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true))));
    var_0 = !func_3(Struct_1(select(4294967295u, ~u_input.e, u_input.d.x > u_input.a)), Struct_1(~(33029u >> (0u % 32u))), true);
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1000f, -547f)));
    let var_2 = Struct_1(u_input.e);
    var_1 = _wgslsmith_f_op_f32(1f + 1f);
    return !select(vec2<bool>(select(u_input.b.x <= 1i, all(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), all(vec3<bool>(var_0.x, true, true))), all(select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, false), true))), vec2<bool>(func_3(var_2, Struct_1(var_2.a), var_0.x).x && (true && var_0.x), any(!vec4<bool>(true, var_0.x, true, true))), all(vec2<bool>(!var_0.x, true)));
}

fn func_1() -> Struct_1 {
    let var_0 = ~(select(~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(u_input.e, 68872u)), ~(vec2<u32>(u_input.e, 6493u) ^ vec2<u32>(u_input.e, u_input.e)), !func_2()) | firstLeadingBit(vec2<u32>(u_input.e, u_input.e)));
    let var_1 = Struct_1(~_wgslsmith_add_u32(u_input.e, _wgslsmith_div_u32(u_input.e, _wgslsmith_clamp_u32(4294967295u, 4294967295u, 1u))));
    var var_2 = Struct_1(var_0.x);
    let var_3 = ~(vec3<i32>(-1i) * -(~(vec3<i32>(u_input.b.x, 0i, -62526i) >> (vec3<u32>(var_0.x, 0u, 601u) % vec3<u32>(32u)))));
    var var_4 = Struct_1(1u);
    return Struct_1(_wgslsmith_dot_vec3_u32(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.a, 4294967295u, var_0.x) << (vec3<u32>(var_2.a, 4294967295u, var_4.a) % vec3<u32>(32u)), vec3<u32>(1u, var_1.a, var_0.x) >> (vec3<u32>(var_1.a, var_4.a, var_4.a) % vec3<u32>(32u)))), firstTrailingBit(~vec3<u32>(u_input.e, 50731u, u_input.e))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = var_0;
    var var_2 = _wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_add_u32(var_0.a, u_input.e), ~1u, 85829u ^ countOneBits(u_input.e)), ~vec3<u32>(4294967295u, abs(var_0.a >> (41525u % 32u)), ~select(10687u, var_1.a, false)));
    let var_3 = select(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), false), any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)))), vec4<bool>(true, any(vec3<bool>(false, false, false)) || true, true, u_input.a != u_input.a), true), !(!vec4<bool>(true, true, true, any(vec4<bool>(false, true, false, false)))), any(select(vec3<bool>(true, func_2().x, true), vec3<bool>(true, true, true), func_3(func_1(), Struct_1(0u), true).x)));
    var var_4 = Struct_1(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-436f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1327f, 226f)))))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-753f, -2670f, true))))), ~u_input.d.x);
}

