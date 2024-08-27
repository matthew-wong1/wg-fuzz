struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 26> = array<vec2<bool>, 26>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false));

var<private> global1: Struct_3;

var<private> global2: array<Struct_2, 28>;

var<private> global3: array<vec2<u32>, 9>;

var<private> global4: array<vec3<i32>, 13>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1711f)))));
    global4 = array<vec3<i32>, 13>();
    global4 = array<vec3<i32>, 13>();
    var var_1 = 4294967295u;
    global4 = array<vec3<i32>, 13>();
    return ~global1.a;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = max(vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(21631u, 0u, 37869u)), ~global1.a), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_3(), global1.a), 9u)]);
    let var_1 = Struct_4(vec2<i32>(-arg_2, -u_input.a));
    var var_2 = Struct_2(vec3<bool>(!arg_3.x, arg_1, false), ~max(abs(vec3<i32>(arg_2, 2147483647i, 2147483647i)), vec3<i32>(18868i, _wgslsmith_clamp_i32(u_input.a, var_1.a.x, arg_2), -1i >> (var_0.x % 32u))), Struct_1(arg_0.a));
    let var_3 = Struct_4(vec2<i32>(0i, -1i));
    global2 = array<Struct_2, 28>();
    return Struct_1(arg_0.a);
}

fn func_1(arg_0: vec2<i32>) -> f32 {
    var var_0 = vec4<u32>(5149u >> (global1.a % 32u), 1u, ~1u, ~global1.a);
    let var_1 = func_2(Struct_1(-944f), -1i <= _wgslsmith_clamp_i32(_wgslsmith_div_i32(44906i, arg_0.x), ~select(-1i, -1i, global1.b.x), ~(-2147483647i) << (~var_0.x % 32u)), _wgslsmith_sub_i32(arg_0.x, (arg_0.x >> (1u % 32u)) & arg_0.x), select(vec4<bool>(!(u_input.c.x == 59851u), true || all(vec4<bool>(global1.b.x, global1.b.x, global1.b.x, true)), global1.b.x, global1.b.x), vec4<bool>(true, false, global1.b.x, 1u <= u_input.c.x), select(!select(vec4<bool>(global1.b.x, global1.b.x, true, true), vec4<bool>(global1.b.x, global1.b.x, global1.b.x, global1.b.x), vec4<bool>(false, global1.b.x, global1.b.x, global1.b.x)), !select(vec4<bool>(false, global1.b.x, false, global1.b.x), vec4<bool>(global1.b.x, false, true, global1.b.x), vec4<bool>(global1.b.x, global1.b.x, global1.b.x, true)), select(!vec4<bool>(false, true, global1.b.x, global1.b.x), select(vec4<bool>(false, global1.b.x, true, false), vec4<bool>(global1.b.x, true, false, global1.b.x), vec4<bool>(global1.b.x, global1.b.x, false, global1.b.x)), any(vec4<bool>(false, global1.b.x, true, global1.b.x))))));
    var_0 = vec4<u32>(var_0.x, abs(~abs(_wgslsmith_mod_u32(118271u, 4294967295u))), firstLeadingBit(1u), ~func_3());
    global2 = array<Struct_2, 28>();
    let var_2 = ~arg_0.x;
    return _wgslsmith_f_op_f32(func_2(var_1, any(select(!vec3<bool>(global1.b.x, false, false), vec3<bool>(false, global1.b.x, true), all(vec3<bool>(true, global1.b.x, false)))), -u_input.a, select(vec4<bool>(2683u != global1.a, false, true, all(global0[_wgslsmith_index_u32(0u, 26u)])), select(select(vec4<bool>(true, global1.b.x, global1.b.x, global1.b.x), vec4<bool>(global1.b.x, global1.b.x, false, global1.b.x), vec4<bool>(global1.b.x, global1.b.x, global1.b.x, global1.b.x)), vec4<bool>(false, global1.b.x, true, global1.b.x), vec4<bool>(global1.b.x, global1.b.x, false, false)), select(!vec4<bool>(global1.b.x, global1.b.x, global1.b.x, global1.b.x), select(vec4<bool>(true, global1.b.x, false, global1.b.x), vec4<bool>(global1.b.x, global1.b.x, true, global1.b.x), false), !global1.b.x))).a + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2087f - var_1.a) + _wgslsmith_f_op_f32(var_1.a - 618f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(firstTrailingBit(~16085u), vec3<bool>(false, global1.b.x, false & global1.b.x));
    global3 = array<vec2<u32>, 9>();
    let var_0 = !select(select(vec2<bool>(global1.b.x, true), !(!global0[_wgslsmith_index_u32(4294967295u, 26u)]), select(global1.b.zy, !global1.b.zz, global1.b.xy)), vec2<bool>(true, all(vec2<bool>(global1.b.x, global1.b.x)) & global1.b.x), all(global0[_wgslsmith_index_u32(26116u, 26u)]));
    global2 = array<Struct_2, 28>();
    global2 = array<Struct_2, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1555f + _wgslsmith_f_op_f32(func_1(vec2<i32>(32153i, u_input.a))))), 206f, 481f, _wgslsmith_f_op_f32(floor(-1136f))));
}

