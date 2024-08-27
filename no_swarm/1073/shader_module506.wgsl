struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec2<u32>,
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

var<private> global0: Struct_3;

var<private> global1: array<vec4<bool>, 13>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2() -> Struct_3 {
    let var_0 = ~vec4<i32>(u_input.d, 57295i, -(_wgslsmith_mod_i32(u_input.b, u_input.a) << (~u_input.c.x % 32u)), u_input.b);
    let var_1 = 55146i;
    var var_2 = vec2<bool>(any(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, select(true, false, false), true), true)), !(true == (u_input.b <= 0i)));
    var var_3 = u_input.e.x;
    let var_4 = false;
    return Struct_3(-114f);
}

fn func_1() -> Struct_3 {
    global1 = array<vec4<bool>, 13>();
    global0 = func_2();
    let var_0 = all(vec2<bool>(true, !(u_input.e.x < 4294967295u) && false));
    var var_1 = Struct_1(u_input.c.x, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1027f, -971f, 945f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, global0.a, 2039f)) * vec3<f32>(1112f, 958f, -237f)))), _wgslsmith_add_u32(select(4294967295u, ~4294967295u, true), ~_wgslsmith_dot_vec3_u32(u_input.c, u_input.c)));
    var var_2 = func_2();
    return func_2();
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> f32 {
    let var_0 = !global1[_wgslsmith_index_u32(firstLeadingBit(~u_input.e.x), 13u)];
    global0 = arg_0;
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1558f, global0.a, -532f), vec3<f32>(arg_0.a, arg_0.a, 315f), true)))));
    var var_2 = 4294967295u;
    var var_3 = var_1.a.zx;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(2512f, -1410f)))), arg_0.a));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: f32) -> Struct_3 {
    global0 = arg_0;
    return Struct_3(_wgslsmith_f_op_f32(exp2(global0.a)));
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: vec3<f32>) -> Struct_3 {
    let var_0 = u_input.c ^ u_input.c;
    var var_1 = Struct_1(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_0.x, u_input.c.x, u_input.c.x, 3329u)) | ~vec4<u32>(10566u, 1u, 28328u, 43561u), vec4<u32>(firstTrailingBit(120256u), ~35443u, var_0.x, 8982u << (1u % 32u))) | ~(reverseBits(1u) << (_wgslsmith_mod_u32(u_input.c.x, 4294967295u) % 32u)), vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.a, -114f)) - arg_1.a)), global0.a), var_0.x);
    var var_2 = arg_1;
    global1 = array<vec4<bool>, 13>();
    let var_3 = false;
    return func_4(arg_1, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1491f)), _wgslsmith_div_f32(1387f, -1216f), _wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-756f, _wgslsmith_f_op_f32(var_1.b.x + 1242f)) * 236f)), Struct_1(~(var_0.x & 4294967295u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, arg_2.x, 1365f) * vec3<f32>(470f, 533f, var_1.b.x))), u_input.e.x | 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1596f * 122f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(false, func_4(func_1(), vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(-913f), u_input.c.x))), global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(146f * -253f))), Struct_1(u_input.e.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2452f, global0.a, -940f) + vec3<f32>(global0.a, -1000f, global0.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, -448f, global0.a) + vec3<f32>(-144f, global0.a, 1932f))), u_input.c.x), _wgslsmith_f_op_f32(-1231f * _wgslsmith_div_f32(global0.a, global0.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.a, 504f, global0.a), vec3<f32>(739f, global0.a, 1966f), false))) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1182f, global0.a, 1678f), _wgslsmith_div_vec3_f32(vec3<f32>(-165f, global0.a, global0.a), vec3<f32>(global0.a, 820f, -1131f))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), 877f, -1476f)));
    var var_0 = select(vec4<bool>(false, true, false, abs(~0i) == u_input.a), global1[_wgslsmith_index_u32(~u_input.c.x, 13u)], !global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.c.x, 78625u, u_input.e.x)), ~vec3<u32>(u_input.e.x, 1u, 22723u))), 13u)]);
    var var_1 = vec4<u32>(~4294967295u, 18470u, ~4294967295u, u_input.e.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1230f, global0.a, global0.a)))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-131f, global0.a, 586f), vec3<f32>(global0.a, -1000f, global0.a))))))));
    var var_3 = var_0.x;
    let var_4 = func_2();
    let var_5 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2 * var_2)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_2)))), _wgslsmith_f_op_vec3_f32(var_2 * var_2)));
    let x = u_input.a;
    s_output = StorageBuffer(-1646f);
}

