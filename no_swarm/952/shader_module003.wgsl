struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: Struct_2,
    d: u32,
    e: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(false, Struct_3(vec4<u32>(2388u, 17660u, 4294967295u, 14543u), true, Struct_2(vec3<bool>(false, false, true)), 0u, -1000f), Struct_2(vec3<bool>(true, false, false)), false);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32, arg_1: Struct_4) -> vec4<f32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.b.e))), _wgslsmith_f_op_f32(exp2(global0.b.e)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2074f, _wgslsmith_div_f32(-896f, global0.b.e), global0.d)) - 899f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.b.e))), -1059f));
    var var_1 = arg_1.b.e;
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1200f), var_0.x);
    let var_2 = ~0u;
    var_1 = _wgslsmith_f_op_f32(-global0.b.e);
    return _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-1892f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -162f))), 375f, 445f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0, -332f)), var_0.x))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1000f, 2238f)))))), -754f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1541f * 1000f)) - var_0.x), -464f), true));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<f32>) -> f32 {
    global0 = Struct_4(true, Struct_3(vec4<u32>(1u, u_input.b.x, 4294967295u, u_input.a.x), _wgslsmith_mod_i32(u_input.c, ~u_input.c) < (abs(arg_2.b) | firstTrailingBit(-2147483647i)), Struct_2(vec3<bool>(true, false, global0.b.e != 1699f)), global0.b.d, arg_3.x), global0.b.c, true);
    let var_0 = arg_3.ywy;
    global0 = Struct_4(!any(arg_0.a.yz) & global0.c.a.x, global0.b, Struct_2(select(vec3<bool>(true, arg_0.a.x, false), global0.c.a, arg_1.a)), !all(!(!vec2<bool>(arg_1.a.x, false))));
    global0 = Struct_4(true, Struct_3(select(global0.b.a, vec4<u32>(global0.b.a.x, global0.b.a.x, u_input.a.x, global0.b.d), select(vec4<bool>(arg_0.a.x, arg_1.a.x, arg_1.a.x, true), vec4<bool>(global0.b.c.a.x, arg_1.a.x, true, true), any(vec3<bool>(false, arg_0.a.x, global0.a)))), any(select(vec3<bool>(true, true, true), !vec3<bool>(global0.c.a.x, true, arg_1.a.x), !vec3<bool>(false, arg_0.a.x, arg_0.a.x))), Struct_2(select(vec3<bool>(arg_1.a.x, false, global0.d), arg_0.a, vec3<bool>(arg_1.a.x, global0.d, false))), ~(~4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.e + -506f) - -1000f)), arg_0, u_input.c < ~_wgslsmith_clamp_i32(-1i, _wgslsmith_clamp_i32(-2147483647i, 46492i, u_input.c), ~arg_2.a));
    var var_1 = select(select(!select(vec4<bool>(arg_0.a.x, true, true, true), select(vec4<bool>(arg_0.a.x, arg_0.a.x, true, global0.a), vec4<bool>(true, true, arg_0.a.x, true), arg_0.a.x), !vec4<bool>(false, arg_1.a.x, true, global0.b.b)), vec4<bool>(true, true, !global0.c.a.x, any(vec2<bool>(true, true))), vec4<bool>(select(arg_1.a.x, true, u_input.b.x > u_input.b.x), true, arg_0.a.x && true, arg_1.a.x)), select(vec4<bool>(all(vec4<bool>(false, arg_0.a.x, false, global0.a)), any(!vec3<bool>(false, arg_0.a.x, true)), global0.a, !arg_1.a.x & true), vec4<bool>(!select(true, global0.b.b, true), all(!arg_0.a), (arg_3.x >= -464f) && true, all(global0.c.a)), true), all(select(!select(vec4<bool>(global0.a, true, arg_0.a.x, true), vec4<bool>(global0.b.b, global0.d, true, false), global0.a), vec4<bool>(true, false, !arg_0.a.x, arg_1.a.x), !(!arg_0.a.x))));
    return -300f;
}

fn func_2() -> Struct_4 {
    var var_0 = global0.b.e;
    global0 = Struct_4(!(!(!any(global0.b.c.a))), Struct_3(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 1u, global0.b.d) << (vec4<u32>(53453u, 22870u, 0u, global0.b.d) % vec4<u32>(32u)), ~global0.b.a) >> (_wgslsmith_add_vec4_u32(~vec4<u32>(18766u, u_input.a.x, u_input.a.x, 1u), firstTrailingBit(u_input.a)) % vec4<u32>(32u)), global0.d, global0.c, u_input.a.x, -1798f), global0.c, global0.a);
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(global0.b.c, global0.b.c, Struct_1(-12183i, 0i), _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.e * global0.b.e)), Struct_4(false, Struct_3(vec4<u32>(global0.b.d, 0u, global0.b.a.x, global0.b.a.x), global0.d, Struct_2(vec3<bool>(true, true, global0.a)), 11155u, 937f), global0.b.c, global0.c.a.x | global0.d))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-574f))), false));
    var var_1 = global0.b.a;
    let var_2 = global0.b.e;
    return Struct_4(u_input.c < ~_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(u_input.c, u_input.c, u_input.c)), select(vec3<i32>(u_input.c, 26857i, 59727i), vec3<i32>(u_input.c, u_input.c, 1i), vec3<bool>(true, true, global0.d))), Struct_3(_wgslsmith_mod_vec4_u32(~(~global0.b.a), vec4<u32>(29085u, global0.b.d, global0.b.d, 0u) | abs(global0.b.a)), all(select(vec3<bool>(global0.a, false, global0.a), global0.b.c.a, any(vec4<bool>(true, false, false, global0.b.b)))), Struct_2(global0.b.c.a), _wgslsmith_mult_u32(u_input.a.x, 1u), global0.b.e), global0.c, -317f < global0.b.e);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3) -> vec3<bool> {
    global0 = func_2();
    let var_0 = func_2().b.a.yxy;
    var var_1 = vec4<f32>(arg_0.e, global0.b.e, -2140f, _wgslsmith_f_op_f32(-func_2().b.e));
    var var_2 = vec4<bool>(false, arg_0.b, arg_0.b, false);
    var_2 = !select(vec4<bool>(-16218i < u_input.c, !var_2.x, true, false), select(select(select(vec4<bool>(arg_0.c.a.x, var_2.x, arg_0.b, true), vec4<bool>(global0.a, arg_0.b, global0.d, true), vec4<bool>(arg_1.b, global0.b.c.a.x, false, true)), vec4<bool>(true, false, false, arg_0.c.a.x), all(vec4<bool>(arg_1.c.a.x, true, false, false))), select(select(vec4<bool>(arg_0.b, true, arg_1.c.a.x, true), vec4<bool>(true, true, false, arg_1.b), vec4<bool>(true, true, arg_1.c.a.x, arg_0.c.a.x)), !vec4<bool>(false, true, false, arg_0.c.a.x), arg_0.b), arg_1.c.a.x), vec4<bool>(all(!global0.b.c.a), !any(vec3<bool>(global0.a, true, var_2.x)), global0.a, !(!var_2.x)));
    return !vec3<bool>(false, _wgslsmith_f_op_f32(func_4(global0.b.c, Struct_2(vec3<bool>(false, arg_0.c.a.x, global0.c.a.x)), Struct_1(-1i, u_input.c), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.b.e, global0.b.e, var_1.x, 762f), vec4<f32>(global0.b.e, arg_0.e, arg_0.e, global0.b.e))))) > _wgslsmith_f_op_f32(round(-1000f)), !any(vec4<bool>(true, false, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4((select(any(vec3<bool>(global0.b.b, global0.b.b, global0.c.a.x)), global0.c.a.x, true & global0.d) & true) & !(!any(global0.b.c.a)), Struct_3(global0.b.a, any(vec3<bool>(global0.a, 11421u <= u_input.a.x, global0.b.b)), Struct_2(vec3<bool>(true, u_input.a.x > 37575u, true)), ~(max(global0.b.a.x, 36939u) << (u_input.a.x % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.e + -557f) + -637f) * global0.b.e)), Struct_2(!func_1(global0.b, Struct_3(vec4<u32>(global0.b.a.x, 0u, 18041u, 0u), false, Struct_2(vec3<bool>(true, global0.d, false)), 21797u, 105f))), false);
    var var_0 = func_2().c;
    global0 = Struct_4(!(!var_0.a.x & (global0.b.e <= _wgslsmith_f_op_f32(min(-2507f, global0.b.e)))), func_2().b, Struct_2(!var_0.a), func_1(func_2().b, func_2().b).x);
    let var_1 = Struct_2(var_0.a);
    let var_2 = ~82721u;
    var_0 = func_2().b.c;
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global0.b.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1371f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.b.e))) * -1332f), 1501f, global0.b.e));
    let var_4 = func_1(func_2().b, Struct_3(select(u_input.a >> (u_input.a % vec4<u32>(32u)), vec4<u32>(30246u, 4294967295u, 1u, 5170u), !vec4<bool>(false, true, false, var_1.a.x)), (i32(-1i) * -1i) > reverseBits(u_input.c), func_2().c, u_input.a.x, -578f)).x & true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(global0.b.e)), _wgslsmith_add_u32(var_2, 1u));
}

