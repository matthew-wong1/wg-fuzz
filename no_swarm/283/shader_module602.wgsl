struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<i32>,
    c: bool,
    d: Struct_4,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_1(vec2<i32>(-1i, -1i), 785f, 55667i), Struct_3(-1328f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: bool) -> f32 {
    let var_0 = u_input.c;
    global0 = Struct_4(global0.a, arg_1);
    var var_1 = Struct_2(u_input.c.x);
    let var_2 = global0.a.c;
    let var_3 = var_0.x < u_input.c.x;
    return global0.b.a;
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: bool) -> Struct_1 {
    let var_0 = select(!(!vec3<bool>(arg_0.x != true, true, any(vec3<bool>(false, true, arg_0.x)))), select(vec3<bool>(arg_3, arg_0.x, arg_0.x), vec3<bool>(!(!arg_0.x), true, arg_0.x), arg_3), arg_0.x);
    global0 = Struct_4(global0.a, arg_2);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.a.b * arg_2.a), _wgslsmith_f_op_f32(func_2(arg_2.a, global0.b, vec4<f32>(-856f, 182f, 558f, arg_2.a), arg_3)))) - arg_2.a) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1007f * -1492f)))));
    let var_2 = Struct_2(abs(global0.a.a.x));
    var_1 = global0.b;
    return global0.a;
}

fn func_1(arg_0: u32, arg_1: Struct_5, arg_2: vec4<u32>, arg_3: u32) -> i32 {
    let var_0 = arg_3;
    var var_1 = ~(~1u);
    let var_2 = Struct_4(func_3(select(vec2<bool>(true, true), vec2<bool>(false, false), select(select(vec2<bool>(arg_1.c, arg_1.c), vec2<bool>(false, false), arg_1.c), vec2<bool>(false, arg_1.c), select(vec2<bool>(arg_1.c, arg_1.c), vec2<bool>(true, arg_1.c), vec2<bool>(arg_1.c, arg_1.c)))), arg_2, Struct_3(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-global0.b.a), Struct_3(-1242f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1053f, arg_1.e.b, 276f, global0.a.b)), var_0 > u_input.b.x))), false), global0.b);
    var var_3 = func_3(!select(select(vec2<bool>(false, arg_1.c), select(vec2<bool>(arg_1.c, true), vec2<bool>(arg_1.c, arg_1.c), true), select(vec2<bool>(false, arg_1.c), vec2<bool>(arg_1.c, false), vec2<bool>(arg_1.c, arg_1.c))), !(!vec2<bool>(false, arg_1.c)), arg_1.c), ~vec4<u32>(1025u, ~arg_3, abs(u_input.b.x), ~select(49221u, 8512u, false)), global0.b, true).b;
    var_1 = 1u;
    return ~(var_2.a.c >> (~(~countOneBits(0u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2118f;
    let var_1 = u_input.d;
    var var_2 = _wgslsmith_mod_i32(0i, _wgslsmith_sub_i32(16701i, 1i));
    var_0 = -1450f;
    var_0 = global0.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_1, min(1u, 6015u), vec2<i32>(global0.a.c, func_1(var_1, Struct_5(Struct_4(Struct_1(vec2<i32>(u_input.e, u_input.e), 128f, 0i), global0.b), vec3<i32>(u_input.e, global0.a.c, global0.a.a.x), true, Struct_4(global0.a, global0.b), Struct_1(vec2<i32>(u_input.e, u_input.e), global0.a.b, -4764i)), vec4<u32>(u_input.b.x, u_input.a.x, 31049u, _wgslsmith_dot_vec2_u32(u_input.a.zz, u_input.b)), u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-515f, -192f) - global0.a.b))), 253f);
}

