struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: u32,
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

var<private> global0: array<vec4<bool>, 9> = array<vec4<bool>, 9>(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2) -> bool {
    global0 = array<vec4<bool>, 9>();
    var var_0 = _wgslsmith_mult_vec2_u32(u_input.b, _wgslsmith_div_vec2_u32(abs(select(vec2<u32>(u_input.e, u_input.c), u_input.b | u_input.b, u_input.e >= u_input.c)), u_input.b));
    let var_1 = Struct_3(vec2<u32>(countOneBits(select(~u_input.e, u_input.b.x, true)), ~countOneBits(~u_input.c)), _wgslsmith_sub_u32(var_0.x, 1u));
    var var_2 = i32(-1i) * -1i;
    var var_3 = 4294967295u;
    return false;
}

fn func_3() -> f32 {
    let var_0 = ~(~4294967295u);
    return _wgslsmith_f_op_f32(-490f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-545f, _wgslsmith_f_op_f32(select(223f, 296f, false))))), _wgslsmith_f_op_f32(sign(1629f)))));
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = select(!(!vec3<bool>(u_input.d < u_input.d, false, any(vec4<bool>(true, true, true, true)))), select(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), vec3<bool>(false, true, false), false), all(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.e, u_input.c, u_input.e), 9u)])), vec3<bool>(!all(vec2<bool>(true, true)), true && func_2(vec3<i32>(u_input.d, u_input.d, u_input.d), Struct_2(arg_0, Struct_1(664f), -1945f)), false), any(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))), !any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false))) & false);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(func_3()));
    var_0 = vec3<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1434f, var_1.a, !var_0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-165f, var_1.a)), _wgslsmith_f_op_f32(-arg_0.a))))) <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(arg_0.a)))), false, true);
    global0 = array<vec4<bool>, 9>();
    global0 = array<vec4<bool>, 9>();
    return _wgslsmith_f_op_f32(-var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(select(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c, 4294967295u, u_input.b.x, 1u), vec4<u32>(u_input.a, _wgslsmith_mult_u32(u_input.a, u_input.b.x), u_input.b.x, u_input.b.x)), reverseBits(vec4<u32>(~48125u, 25725u, _wgslsmith_sub_u32(44850u, u_input.b.x), _wgslsmith_mult_u32(9032u, u_input.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(-238f))) - _wgslsmith_f_op_f32(max(1000f, 1368f))) != _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -490f))));
    var var_1 = all(vec2<bool>(true, true)) != any(vec2<bool>(true, true));
    var var_2 = 67417u;
    var var_3 = Struct_3(u_input.b, 1u);
    let var_4 = Struct_1(_wgslsmith_f_op_f32(max(-978f, -1000f)));
    var_1 = any(!(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), vec3<bool>(false, false, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)))));
    let var_5 = !(!(!vec3<bool>(true, all(global0[_wgslsmith_index_u32(var_3.a.x, 9u)]), true)));
    let var_6 = _wgslsmith_f_op_f32(var_4.a - 139f);
    var_0 = vec4<u32>(1u, _wgslsmith_mod_u32(max(43598u, _wgslsmith_dot_vec2_u32(var_0.zy ^ var_3.a, var_3.a)), ~var_3.a.x), ~_wgslsmith_dot_vec2_u32(select(vec2<u32>(39909u, var_0.x), abs(var_3.a), vec2<bool>(var_5.x, var_5.x)), (vec2<u32>(var_0.x, u_input.e) & vec2<u32>(u_input.b.x, u_input.c)) ^ _wgslsmith_add_vec2_u32(vec2<u32>(u_input.e, 1u), var_0.wy)), var_3.b);
    let x = u_input.a;
    s_output = StorageBuffer(-733f);
}

