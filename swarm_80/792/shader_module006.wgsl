struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 7> = array<vec3<u32>, 7>(vec3<u32>(599u, 4294967295u, 19350u), vec3<u32>(9788u, 0u, 4294967295u), vec3<u32>(28739u, 4650u, 1u), vec3<u32>(0u, 0u, 0u), vec3<u32>(155687u, 38565u, 0u), vec3<u32>(15729u, 86582u, 30305u), vec3<u32>(47061u, 1u, 0u));

var<private> global1: array<bool, 6> = array<bool, 6>(true, true, false, true, true, true);

var<private> global2: Struct_3 = Struct_3(-194f, Struct_2(Struct_1(vec4<bool>(true, true, true, true)), vec4<bool>(false, false, false, true), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(false, false, false, false))), true);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: u32) -> vec4<i32> {
    global1 = array<bool, 6>();
    let var_0 = reverseBits(_wgslsmith_dot_vec4_u32(u_input.a | u_input.a, ~(~u_input.a | vec4<u32>(arg_2, 4294967295u, arg_2, 22233u))));
    global0 = array<vec3<u32>, 7>();
    global0 = array<vec3<u32>, 7>();
    let var_1 = Struct_3(1f, global2.b, true);
    return -(vec4<i32>(arg_1, -10308i, arg_1, ~(i32(-1i) * -17865i)) << (~u_input.a % vec4<u32>(32u)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_4) -> vec4<i32> {
    global0 = array<vec3<u32>, 7>();
    var var_0 = Struct_1(!vec4<bool>(global2.c, !any(vec2<bool>(true, true)), arg_0.a.x, !any(arg_0.a)));
    global0 = array<vec3<u32>, 7>();
    let var_1 = _wgslsmith_f_op_f32(-global2.a);
    var var_2 = Struct_3(var_1, Struct_2(Struct_1(vec4<bool>(arg_3.a.x, false, true, arg_3.a.x || arg_0.a.x)), !var_0.a, Struct_1(select(!vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(56925u, 6u)]), global2.b.a.a, vec4<bool>(false, false, true, false))), global2.b.e, global2.b.d), !all(vec4<bool>(false, false, global2.b.c.a.x, arg_3.a.x)) || true);
    return _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(min(-vec4<i32>(32640i, 1i, -11747i, -2147483647i) ^ func_3(false, -28228i, 1u), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 27163i, 21482i, 2147483647i), vec4<i32>(-45726i, 0i, 0i, 0i)), -1i, -7388i, -1i)), -countOneBits(vec4<i32>(1i, 1i, 1i, 1i)), func_3(~26642u != _wgslsmith_mod_u32(arg_2, 1u), ~firstLeadingBit(-79757i), 0u)), vec4<i32>(-1i) * -func_3(true, i32(-1i) * -929i, max(26972u, 3419u)));
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = vec2<f32>(global2.a, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a - 1000f)), global2.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2192f) - global2.a), global2.a)))));
    var var_1 = _wgslsmith_div_i32(-arg_0, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(~arg_0, 1i, 31989i, _wgslsmith_div_i32(arg_0, -20975i)), abs(func_2(Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global2.c, true, global1[_wgslsmith_index_u32(u_input.c, 6u)])), vec3<f32>(global2.a, var_0.x, var_0.x), 4294967295u, Struct_4(global2.b.c.a.xy))), ~min(vec4<i32>(-92656i, 1i, arg_0, -10654i), vec4<i32>(arg_0, 4500i, -4227i, arg_0))), ~vec4<i32>(arg_0, arg_0, reverseBits(-56333i), ~arg_0)));
    var var_2 = Struct_3(var_0.x, global2.b, any(vec4<bool>(global2.c && (-24553i > arg_0), all(global2.b.c.a.wyx), true && all(global2.b.c.a), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(38278u, u_input.a.x, 4294967295u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 0u, 1u), vec3<u32>(0u, u_input.a.x, u_input.c))), 6u)])));
    let var_3 = Struct_2(var_2.b.e, global2.b.e.a, global2.b.e, Struct_1(select(var_2.b.e.a, select(select(var_2.b.e.a, var_2.b.c.a, var_2.b.b), !vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 6u)], global2.c, var_2.b.e.a.x), true), true)), Struct_1(var_2.b.c.a));
    var var_4 = arg_0 & 0i;
    return Struct_1(!select(!var_2.b.b, var_2.b.c.a, global2.b.c.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(u_input.a.zx, ~(~u_input.b.zx), global2.b.a.a.yz);
    var var_1 = (var_0.x & u_input.b.x) > var_0.x;
    var_0 = vec2<u32>(firstLeadingBit(1u), ~_wgslsmith_add_u32(~var_0.x & var_0.x, ~1u));
    global2 = Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(152f * global2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1043f * _wgslsmith_f_op_f32(trunc(-296f)))))), Struct_2(global2.b.c, select(global2.b.b, global2.b.e.a, global2.b.d.a), func_1(-2147483647i), global2.b.a, Struct_1(global2.b.e.a)), true);
    var var_2 = vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(u_input.b ^ ~abs(vec3<u32>(4294967295u, 98655u, var_0.x)), vec3<u32>(var_0.x, 35647u, 14548u)), ~1u);
    let var_3 = global2.c;
    var var_4 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-101f - global2.a), _wgslsmith_f_op_f32(-1497f + -186f))) - -845f), global2.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.a - -2807f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.a))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.a + global2.a), 1000f)), vec4<f32>(global2.a, global2.a, global2.a, _wgslsmith_f_op_f32(-global2.a)));
}

