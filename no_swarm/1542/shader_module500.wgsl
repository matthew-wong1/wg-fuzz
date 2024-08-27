struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: f32,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: bool,
    e: vec4<i32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec3<bool>) -> vec4<i32> {
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.d, 1u, 5477u), ~(~(~global0.a.d.xxz)));
    global0 = arg_0.b.b;
    let var_1 = -1036f;
    global0 = Struct_2(arg_0.b.b.a, arg_1.d.xwz, select(vec3<bool>(arg_2.x, !(true & arg_3.x), arg_0.b.c.a.x), select(vec3<bool>(var_1 != -731f, arg_1.a.x && true, !arg_0.b.d), arg_3, arg_3), vec3<bool>(arg_1.a.x, true, false)));
    var var_2 = Struct_4(global0.a, Struct_2(arg_1, vec3<u32>(_wgslsmith_add_u32(u_input.e, 4294967295u) >> (~51686u % 32u), 81568u, 32327u), select(arg_0.b.b.c, vec3<bool>(true, any(vec2<bool>(arg_0.b.d, arg_1.a.x)), select(arg_2.x, false, false)), arg_3.x)), arg_1, arg_1.a.x, arg_0.b.e);
    return var_2.e;
}

fn func_2() -> Struct_2 {
    let var_0 = -2147483647i > u_input.a;
    var var_1 = !(!(!select(!vec3<bool>(true, global0.a.a.x, false), !global0.c, !global0.c)));
    var var_2 = Struct_4(Struct_1(!vec2<bool>(true, var_0), 1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.c - global0.a.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1608f) * global0.a.c), _wgslsmith_f_op_f32(floor(-1648f)) >= _wgslsmith_f_op_f32(max(global0.a.b, global0.a.b)))), global0.a.d, global0.a.d.x), Struct_2(Struct_1(vec2<bool>(any(vec3<bool>(var_0, false, var_1.x)), true & var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1517f)) + _wgslsmith_f_op_f32(exp2(global0.a.b))), _wgslsmith_f_op_f32(min(global0.a.b, _wgslsmith_f_op_f32(1000f * 561f))), vec4<u32>(global0.b.x, 1u, global0.b.x, 41790u), 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(~43232u, countOneBits(265u), select(global0.b.x, global0.b.x, var_0)), global0.a.d.zzw | _wgslsmith_div_vec3_u32(global0.a.d.wzy, vec3<u32>(4294967295u, u_input.e, u_input.b.x))), vec3<bool>(all(select(vec2<bool>(false, false), global0.c.zx, var_0)), global0.c.x, false)), global0.a, any(vec3<bool>(true, var_1.x, true)), select(select(-vec4<i32>(23186i, u_input.a, u_input.a, u_input.a), countOneBits(vec4<i32>(u_input.a, 36135i, -2147483647i, -2147483647i)), var_0 && false) << (vec4<u32>(global0.a.d.x, ~4294967295u, global0.b.x, 58376u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, 2147483647i, 2147483647i, -32884i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), -vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), func_3(Struct_5(u_input.a, Struct_4(global0.a, Struct_2(global0.a, global0.b, vec3<bool>(true, false, var_1.x)), global0.a, var_0, vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a))), Struct_1(global0.c.xx, global0.a.c, global0.a.b, vec4<u32>(u_input.e, global0.a.d.x, global0.a.e, 1u), global0.b.x), var_1.zz, global0.c)) | firstLeadingBit(vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i)), vec4<bool>(true, global0.c.x, false, global0.c.x)));
    let var_3 = var_2.b;
    global0 = var_2.b;
    return var_2.b;
}

fn func_1(arg_0: bool, arg_1: Struct_4, arg_2: f32) -> f32 {
    global0 = func_2();
    var var_0 = u_input.d | ~(1u ^ _wgslsmith_div_u32(47865u, arg_1.c.e));
    var var_1 = Struct_4(Struct_1(vec2<bool>(true, true), -485f, arg_2, vec4<u32>(global0.a.e << (_wgslsmith_mult_u32(15900u, u_input.e) % 32u), _wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_1.b.b.x, 4294967295u), ~4294967295u), global0.b.x, global0.b.x), arg_1.c.d.x), func_2(), Struct_1(vec2<bool>(false, !arg_1.c.a.x), 1002f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(arg_1.a.c)), global0.a.b))), arg_1.b.a.d, _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.e, 4294967295u, countOneBits(arg_1.b.b.x)), ~vec3<u32>(1u, 33041u, global0.b.x))), arg_0, func_3(Struct_5(_wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, 656i, -10486i, u_input.a), vec4<i32>(u_input.a, 28593i, arg_1.e.x, 36894i)), Struct_4(arg_1.b.a, Struct_2(Struct_1(global0.a.a, global0.a.c, 1000f, vec4<u32>(global0.a.e, arg_1.b.b.x, 30566u, u_input.e), 7359u), arg_1.a.d.yxw, vec3<bool>(true, arg_1.c.a.x, true)), arg_1.a, false, arg_1.e)), func_2().a, arg_1.b.c.xz, select(!vec3<bool>(global0.a.a.x, false, arg_0), !global0.c, vec3<bool>(true, !arg_0, true))));
    var var_2 = arg_1.b;
    global0 = var_1.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2().a.c * -949f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1(true, Struct_4(global0.a, Struct_2(Struct_1(global0.a.a, -1163f, 2582f, vec4<u32>(global0.a.d.x, u_input.c.x, u_input.b.x, 4294967295u), 4294967295u), global0.b, global0.c), global0.a, select(global0.c.x, global0.c.x, global0.a.a.x), vec4<i32>(0i, -2147483647i, u_input.a, u_input.a) ^ vec4<i32>(-31549i, -1i, u_input.a, -24350i)), 1f)), global0.a.b, _wgslsmith_f_op_f32(step(-638f, _wgslsmith_f_op_f32(857f - _wgslsmith_f_op_f32(select(-122f, global0.a.c, false)))))) + vec3<f32>(global0.a.c, global0.a.c, _wgslsmith_f_op_f32(exp2(global0.a.c))));
    var var_1 = var_0.x;
    global0 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_0.zz))) - var_0.yy)), vec4<i32>(u_input.a, 17669i, 1i, ~u_input.a));
}

