struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec3<bool> = vec3<bool>(false, false, true);

var<private> global2: Struct_3 = Struct_3(Struct_2(Struct_1(vec2<bool>(true, false))), 1053f, Struct_2(Struct_1(vec2<bool>(false, true))), 302f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    var var_0 = global1.xz;
    var var_1 = global2.c.a;
    let var_2 = Struct_3(global2.a, -174f, Struct_2(arg_0), global2.d);
    let var_3 = select(!select(vec3<bool>(all(vec3<bool>(var_2.c.a.a.x, true, false)), false, !var_2.c.a.a.x), select(vec3<bool>(false, arg_1.a.a.x, true), !vec3<bool>(false, true, var_0.x), select(vec3<bool>(false, global0.a.a.x, false), vec3<bool>(false, false, global2.a.a.a.x), vec3<bool>(true, var_2.c.a.a.x, false))), true), select(vec3<bool>(var_2.a.a.a.x, var_2.a.a.a.x, select(true, any(vec4<bool>(false, global0.a.a.x, global1.x, global0.a.a.x)), true)), vec3<bool>(false, all(!var_1.a), false), vec3<bool>(true, any(vec4<bool>(var_0.x, false, var_2.c.a.a.x, true)), global1.x)), true);
    global2 = Struct_3(arg_1, global2.b, Struct_2(Struct_1(select(select(vec2<bool>(arg_1.a.a.x, false), vec2<bool>(var_3.x, var_1.a.x), vec2<bool>(false, global1.x)), global2.c.a.a, vec2<bool>(var_2.c.a.a.x, global1.x)))), var_2.b);
    return var_2.b;
}

fn func_2(arg_0: vec2<i32>) -> bool {
    var var_0 = Struct_3(global2.a, 265f, Struct_2(global2.a.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1426f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.b, 195f))))));
    var_0 = Struct_3(var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec2<bool>(true, false)), global2.c)) + var_0.b) + _wgslsmith_f_op_f32(-465f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1076f, 687f))))), Struct_2(Struct_1(global0.a.a)), global2.d);
    var_0 = Struct_3(var_0.a, _wgslsmith_f_op_f32(select(global2.b, global2.b, true)), Struct_2(var_0.c.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * _wgslsmith_f_op_f32(var_0.b + var_0.d)) - var_0.d)));
    var var_1 = var_0.c;
    var var_2 = true;
    return !((var_0.a.a.a.x | any(!global2.c.a.a)) || global2.a.a.a.x);
}

fn func_1(arg_0: vec3<i32>, arg_1: bool) -> vec3<bool> {
    let var_0 = func_2(vec2<i32>(~60132i, ~countOneBits(countOneBits(arg_0.x))));
    global1 = select(vec3<bool>(var_0, true, all(vec3<bool>(any(vec4<bool>(var_0, global1.x, false, true)), arg_1, u_input.a > u_input.a))), vec3<bool>(-11389i > ~arg_0.x, true, _wgslsmith_f_op_f32(global2.d * global2.b) == _wgslsmith_f_op_f32(f32(-1f) * -902f)), !vec3<bool>(global0.a.a.x, global1.x, true));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1201f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.b * 1287f), global2.b) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global2.d))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-966f - -1597f) - -1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(520f, -1000f, -447f)))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2.d, 1048f, 1660f)))), false));
    let var_2 = 1i;
    let var_3 = u_input.d == ~_wgslsmith_div_u32(33105u, u_input.d);
    return select(select(select(!(!vec3<bool>(false, global1.x, global1.x)), vec3<bool>(global0.a.a.x, any(vec3<bool>(false, global1.x, var_3)), u_input.d == 11620u), var_3), vec3<bool>(global2.d >= var_1.x, false, true), select(vec3<bool>(all(vec4<bool>(false, true, var_0, var_3)), global2.d == global2.b, true), !(!vec3<bool>(true, true, var_3)), true)), vec3<bool>(_wgslsmith_f_op_f32(global2.b + -1264f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * var_1.x) - global2.d), true, true), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.d + _wgslsmith_f_op_f32(global2.d - _wgslsmith_f_op_f32(min(global2.d, -662f)))), 1000f);
    var var_1 = _wgslsmith_div_i32(_wgslsmith_clamp_i32(-29426i, u_input.b, -(~(i32(-1i) * -1i))), -(5032i | u_input.c));
    global1 = !(!func_1(vec3<i32>(firstTrailingBit(u_input.b), 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.c), vec2<i32>(-12299i, -2147483647i))), true));
    let x = u_input.a;
    s_output = StorageBuffer(~select((vec3<u32>(4294967295u, 4294967295u, u_input.d) ^ vec3<u32>(u_input.d, 1182u, 134751u)) & firstLeadingBit(vec3<u32>(84305u, 4294967295u, 17789u)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.d), vec2<u32>(67327u, 0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 49971u), vec2<u32>(u_input.d, u_input.d)), reverseBits(4294967295u)), true), vec2<i32>(_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.b), vec2<i32>(u_input.c, -26479i))), min(u_input.c, -u_input.b)) << ((firstLeadingBit(~vec2<u32>(u_input.d, 4294967295u)) << (~vec2<u32>(6487u, u_input.d) % vec2<u32>(32u))) % vec2<u32>(32u)));
}

