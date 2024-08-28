struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2() -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(893f, 798f) * vec2<f32>(-1386f, -151f)))))));
}

fn func_1(arg_0: vec4<f32>, arg_1: bool) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(func_2()), arg_1, -2486f, !(!all(!vec4<bool>(arg_1, true, true, arg_1))));
    var var_1 = !select(!vec4<bool>(var_0.b & false, true, false, var_0.b), select(vec4<bool>(!var_0.d, !var_0.d, arg_1 || true, any(vec3<bool>(var_0.b, true, arg_1))), select(!vec4<bool>(arg_1, arg_1, arg_1, true), !vec4<bool>(arg_1, false, var_0.b, arg_1), vec4<bool>(false, false, var_0.d, true)), !vec4<bool>(var_0.d, arg_1, var_0.d, var_0.b)), !(!(!vec4<bool>(true, arg_1, arg_1, true))));
    var var_2 = ~(~vec3<u32>(_wgslsmith_mod_u32(~u_input.a, _wgslsmith_div_u32(1u, u_input.a)), ~(6961u >> (u_input.a % 32u)), 4294967295u));
    return all(select(!(!(!vec4<bool>(var_0.b, arg_1, false, false))), vec4<bool>(arg_1, -916f >= var_0.c, arg_1, all(vec2<bool>(var_0.d, false))), true));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(arg_1.a, arg_1.a, !vec2<bool>(any(vec2<bool>(arg_1.d, false)), true))), arg_1.b, _wgslsmith_f_op_f32(-arg_1.a.x), u_input.a > _wgslsmith_mod_u32(~_wgslsmith_clamp_u32(4294967295u, 0u, 42223u), u_input.a));
    let var_1 = select(vec3<bool>(any(vec4<bool>(true, var_0.b, var_0.b, false)) && true, var_0.b, any(select(select(vec3<bool>(arg_1.b, arg_1.b, false), vec3<bool>(var_0.b, var_0.d, arg_1.b), vec3<bool>(false, var_0.d, arg_1.d)), !vec3<bool>(arg_1.b, arg_1.b, arg_1.d), !vec3<bool>(arg_1.b, true, var_0.d)))), vec3<bool>(true, all(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, arg_1.b))), all(!(!vec3<bool>(true, false, var_0.b)))), !vec3<bool>(true, any(vec2<bool>(var_0.d, var_0.d)), func_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.a.x, var_0.c, -336f, var_0.a.x))), all(vec4<bool>(false, true, arg_1.d, var_0.d)))));
    let var_2 = arg_1;
    let var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.x, -3191f))), var_2.c), false, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.c, arg_1.a.x)), true);
    let var_4 = _wgslsmith_div_vec4_u32(select(vec4<u32>(1u, ~4294967295u, u_input.a ^ 4294967295u, u_input.a), ~(~vec4<u32>(19538u, 53879u, u_input.a, u_input.a)), select(!vec4<bool>(var_0.b, false, var_2.b, false), vec4<bool>(arg_1.d, true, false, var_3.b), vec4<bool>(var_2.b, var_2.b, var_1.x, true))) & ~(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, 34875u, 4294967295u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) << ((vec4<u32>(u_input.a, 11437u, u_input.a, u_input.a) << (vec4<u32>(0u, u_input.a, u_input.a, 16691u) % vec4<u32>(32u))) % vec4<u32>(32u))), ~(select(~vec4<u32>(1u, u_input.a, 54079u, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a, 52620u, u_input.a), vec4<u32>(68320u, 0u, u_input.a, u_input.a)), !var_1.x) ^ ~(vec4<u32>(1u, u_input.a, u_input.a, 0u) >> (vec4<u32>(4294967295u, u_input.a, 47012u, u_input.a) % vec4<u32>(32u)))));
    return !var_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f))))), func_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(169f, -2321f)), 139f), _wgslsmith_f_op_f32(sign(-604f)), -754f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -251f))), true), _wgslsmith_f_op_vec2_f32(func_2()).x, false);
    var var_1 = select(select(!vec4<bool>(true, select(var_0.d, var_0.d, false), true, var_0.b), vec4<bool>(var_0.b, false, false, all(vec2<bool>(true, true))), false), select(!vec4<bool>(u_input.a != 4294967295u, var_0.b && var_0.d, false, func_1(vec4<f32>(816f, var_0.a.x, 330f, var_0.c), var_0.b)), !select(select(vec4<bool>(var_0.d, var_0.b, var_0.d, false), vec4<bool>(true, var_0.b, var_0.d, var_0.b), vec4<bool>(var_0.b, var_0.d, var_0.b, var_0.b)), select(vec4<bool>(true, var_0.d, false, false), vec4<bool>(var_0.b, var_0.d, var_0.b, false), vec4<bool>(true, false, false, var_0.d)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(func_3(vec3<i32>(2147483647i, 1803i, 35218i), Struct_1(var_0.a, false, var_0.c, false)), var_0.d, var_0.b, var_0.d), !vec4<bool>(true, var_0.b, false, var_0.b))), var_0.b);
    var_1 = select(vec4<bool>(((u_input.a | u_input.a) <= u_input.a) != (true || var_1.x), var_0.b, all(vec4<bool>(false, true, any(vec4<bool>(var_0.d, true, var_0.d, var_0.d)), false)), !(!(!var_0.d))), select(!select(vec4<bool>(false, false, var_1.x, false), vec4<bool>(true, var_0.b, false, var_0.d), false), vec4<bool>(true, true, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 72076i), vec2<i32>(-1i, 2147483647i)) >= -2150i, select(var_1.x, true, true)), !vec4<bool>(var_0.a.x != var_0.c, all(vec4<bool>(true, var_1.x, var_0.b, true)), var_0.d, var_0.c != 1141f)), !(!select(!vec4<bool>(true, var_0.d, var_0.d, var_0.b), !vec4<bool>(false, true, var_1.x, var_1.x), false)));
    var_1 = select(!(!select(select(vec4<bool>(var_1.x, var_0.d, true, var_1.x), vec4<bool>(var_1.x, var_1.x, var_0.d, false), vec4<bool>(var_0.d, false, false, var_1.x)), select(vec4<bool>(true, false, var_0.d, false), vec4<bool>(var_1.x, true, true, var_0.b), vec4<bool>(false, true, false, var_0.d)), 92815u == u_input.a)), vec4<bool>(var_0.d, true, true, any(select(!vec4<bool>(var_1.x, var_1.x, var_0.d, false), select(vec4<bool>(var_0.b, false, false, var_0.b), vec4<bool>(var_1.x, var_1.x, true, var_1.x), true), select(vec4<bool>(true, true, true, var_1.x), vec4<bool>(false, var_1.x, false, true), var_0.b)))), !select(!select(vec4<bool>(true, false, var_1.x, false), vec4<bool>(var_1.x, true, var_1.x, true), true), vec4<bool>(var_0.b, true, all(var_1.yx), false), !select(vec4<bool>(var_0.d, var_1.x, var_0.b, true), vec4<bool>(var_0.b, true, var_0.b, var_0.b), true)));
    var_1 = !(!select(vec4<bool>(true, false, all(vec3<bool>(false, true, false)), !var_0.b), !select(vec4<bool>(var_0.b, var_1.x, false, var_0.b), vec4<bool>(true, false, var_0.d, var_0.d), vec4<bool>(false, true, true, false)), _wgslsmith_f_op_f32(-var_0.a.x) <= _wgslsmith_f_op_f32(var_0.c - -446f)));
    var_1 = !vec4<bool>(var_0.b, any(vec3<bool>(all(vec4<bool>(true, var_0.d, true, true)), true, false)), any(!(!var_1.yxz)), any(select(select(vec4<bool>(var_0.d, false, true, true), vec4<bool>(true, true, var_1.x, var_0.b), vec4<bool>(var_1.x, false, var_1.x, false)), vec4<bool>(false, var_1.x, true, var_0.d), vec4<bool>(false, var_0.d, var_1.x, var_1.x))));
    var_1 = !(!select(select(select(vec4<bool>(false, var_1.x, true, true), vec4<bool>(true, var_0.d, false, var_0.d), vec4<bool>(true, var_0.b, true, false)), vec4<bool>(true, var_0.d, var_1.x, var_1.x), !vec4<bool>(var_1.x, var_1.x, var_0.b, var_0.b)), select(vec4<bool>(var_1.x, true, true, false), vec4<bool>(false, var_1.x, var_1.x, var_0.b), var_1.x), !var_1.x));
    var_1 = vec4<bool>(!(!var_1.x), !select(var_1.x, true || (var_0.d & var_0.b), true), !((true | any(vec2<bool>(var_1.x, false))) && false), var_1.x | var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(-firstLeadingBit(vec2<i32>(10580i, -1i)), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, -16772i), vec2<i32>(1i, 1i)), var_0.b || var_0.d), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.x, -1111f) - _wgslsmith_f_op_f32(ceil(460f))), -1000f, -1358f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c * 1497f))));
}

