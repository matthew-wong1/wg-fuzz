struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<i32>,
    d: bool,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 11>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    global0 = array<Struct_3, 11>();
    global0 = array<Struct_3, 11>();
    global0 = array<Struct_3, 11>();
    global0 = array<Struct_3, 11>();
    global0 = array<Struct_3, 11>();
    return Struct_1(-vec2<i32>(min(-2147483647i, max(13575i, 0i)), ~27112i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -1589f)))));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_3) -> vec4<bool> {
    let var_0 = Struct_4(func_1(arg_2.a));
    var var_1 = -48569i;
    var var_2 = var_0.a.a.x;
    var_2 = -6213i;
    var var_3 = ~(vec4<i32>(-1i) * -(~firstTrailingBit(vec4<i32>(arg_2.b.a.x, arg_2.e, arg_0.x, -2147483647i))));
    return !vec4<bool>(true, arg_2.d, any(!select(vec3<bool>(arg_2.d, false, arg_2.d), vec3<bool>(true, arg_2.d, arg_2.d), arg_2.d)), (!arg_2.d && (arg_2.d | false)) && true);
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: i32) -> vec4<f32> {
    let var_0 = select(!select(!vec4<bool>(arg_1.d, arg_1.d, arg_0, arg_0), select(vec4<bool>(arg_1.d, false, true, false), vec4<bool>(false, arg_0, arg_1.d, arg_1.d), arg_0 || false), arg_1.d), select(!(!func_3(vec2<i32>(arg_3, arg_3), -423f, arg_1)), vec4<bool>(true, false, false, all(vec2<bool>(true, arg_1.d))), !vec4<bool>(select(arg_1.d, arg_0, false), arg_0 || arg_1.d, !arg_0, arg_0)), select(vec4<bool>(!(true && arg_1.d), true, min(0u, arg_2.x) <= 1u, arg_0), !(!select(vec4<bool>(arg_1.d, arg_1.d, false, arg_0), vec4<bool>(true, arg_1.d, false, arg_0), true)), vec4<bool>(arg_1.a.a < arg_1.a.a, !(!arg_0), arg_0, true)));
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1.a.a + -113f), 642f, -1000f, arg_1.a.a) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.b.x, 237f, arg_1.b.b.x, arg_1.b.b.x)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-128f, arg_1.b.b.x)) - arg_1.a.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2228f) + _wgslsmith_f_op_f32(arg_1.b.b.x + arg_1.a.a)), _wgslsmith_f_op_f32(sign(func_1(arg_1.a).b.x)), 1590f)))));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: vec4<f32>) -> i32 {
    let var_0 = arg_2.x;
    var var_1 = vec2<bool>(~select(firstTrailingBit(18024u), arg_0.a.b.x, false) == _wgslsmith_add_u32(max(0u, ~arg_0.a.b.x), arg_0.a.b.x), arg_1);
    var_1 = !(!select(vec2<bool>(arg_1, arg_0.d), !select(vec2<bool>(true, var_1.x), vec2<bool>(false, arg_0.d), vec2<bool>(arg_1, var_1.x)), (u_input.a.x >> (u_input.a.x % 32u)) != ~0u));
    var var_2 = all(select(vec3<bool>(func_3(~vec2<i32>(arg_0.b.a.x, -2147483647i), arg_2.x, Struct_3(Struct_2(-893f, arg_0.a.b), arg_0.b, vec2<i32>(19633i, arg_0.b.a.x), false, arg_0.b.a.x)).x, func_3(vec2<i32>(20570i, arg_0.e), var_0, Struct_3(Struct_2(553f, arg_0.a.b), arg_0.b, vec2<i32>(arg_0.c.x, arg_0.e), true, arg_0.b.a.x)).x || any(vec3<bool>(false, arg_1, false)), !(arg_0.d && true)), vec3<bool>(arg_1, select(arg_0.d, true, arg_1), any(func_3(arg_0.b.a, arg_0.a.a, arg_0).zz)), select(vec3<bool>(true, arg_0.b.a.x < 49440i, arg_0.d), vec3<bool>(var_1.x, true, all(vec3<bool>(false, false, arg_1))), true)));
    var var_3 = Struct_4(arg_0.b);
    return ~(-1i) & var_3.a.a.x;
}

fn func_5(arg_0: vec4<u32>, arg_1: i32) -> Struct_1 {
    global0 = array<Struct_3, 11>();
    global0 = array<Struct_3, 11>();
    let var_0 = -1000f;
    global0 = array<Struct_3, 11>();
    let var_1 = _wgslsmith_f_op_f32(-var_0);
    return func_1(Struct_2(var_0, vec3<u32>(_wgslsmith_add_u32(arg_0.x, 0u) | 1u, arg_0.x, ~countOneBits(arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_add_vec4_u32(~abs(vec4<u32>(4294967295u, 28196u, u_input.a.x, u_input.a.x)), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 0u, u_input.a.x), vec3<u32>(4294967295u, u_input.a.x, 1u)))), func_4(Struct_3(Struct_2(-916f, u_input.a), func_1(Struct_2(-1299f, vec3<u32>(15552u, u_input.a.x, 113785u))), ~(-vec2<i32>(-14507i, 21510i)), -689f == _wgslsmith_f_op_f32(round(645f)), -26982i), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(313f, 359f, -849f, 302f))) - vec4<f32>(398f, 1000f, 1043f, 876f)) - _wgslsmith_f_op_vec4_f32(func_2(true, Struct_3(Struct_2(1203f, u_input.a), Struct_1(vec2<i32>(86427i, 16497i), vec2<f32>(1226f, 1000f)), vec2<i32>(0i, -40844i), false, 1i), ~vec4<u32>(25926u, 49736u, 1u, 1u), ~62052i)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - _wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_0.b.x, 1727f, true)), -972f)))));
    global0 = array<Struct_3, 11>();
    global0 = array<Struct_3, 11>();
    global0 = array<Struct_3, 11>();
    let var_2 = Struct_4(func_5(~_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, 1u, u_input.a.x, 4294967295u), max(vec4<u32>(35644u, u_input.a.x, 4294967295u, 19926u), vec4<u32>(u_input.a.x, u_input.a.x, 1818u, 4294967295u))), 9077i));
    global0 = array<Struct_3, 11>();
    global0 = array<Struct_3, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, ~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), u_input.a.x), vec3<u32>(u_input.a.x, 4294967295u, ~(~u_input.a.x))), u_input.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-872f, var_0.b.x, var_0.b.x, 1000f) + vec4<f32>(795f, var_1, 823f, -1147f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1647f, 1271f, var_1, var_2.a.b.x))))) + vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -503f), var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -256f) - _wgslsmith_f_op_f32(var_0.b.x * var_1)))));
}

