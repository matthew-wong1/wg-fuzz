struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: f32,
    d: f32,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: i32) -> vec4<f32> {
    global0 = Struct_4(arg_1, Struct_3(~min(vec2<i32>(global0.b.a.x, -20319i), _wgslsmith_clamp_vec2_i32(global0.b.a, global0.b.a, global0.b.a))), 1732f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1178f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1501f)))), -354f)));
    let var_0 = global0.b.a.x;
    global0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(global0.d + global0.d), 990f), Struct_3(vec2<i32>(-2147483647i, ~(-u_input.a))), -129f, 413f);
    var var_1 = arg_1;
    var var_2 = vec2<i32>(max(arg_2, -1i) ^ u_input.a, -2147483647i ^ arg_2);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-303f, -721f, -1000f, global0.c))))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(-1244f, var_1.b)), -351f, 419f, _wgslsmith_f_op_f32(f32(-1f) * -1132f)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(710f, global0.d, arg_1.a, var_1.a)), vec4<f32>(global0.d, 218f, -124f, var_1.a)))));
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_2(~u_input.c.x, Struct_1(_wgslsmith_f_op_f32(global0.d + _wgslsmith_f_op_f32(f32(-1f) * -2630f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(global0.c * -1362f), select(false, true, true)))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(ceil(-1271f))) - global0.c), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.b, _wgslsmith_f_op_f32(global0.a.b * global0.c)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.d))))), u_input.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-430f, _wgslsmith_f_op_f32(global0.d - global0.c), any(vec2<bool>(false, false))))), -791f, 1483f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)), -1324f))));
    let var_1 = any(select(!vec4<bool>(true, var_0.a != var_0.a, -1415f < global0.a.b, true), !vec4<bool>(true, true, true, any(vec3<bool>(false, false, true))), var_0.a > 140798u));
    var_0 = Struct_2(0u, Struct_1(_wgslsmith_f_op_f32(floor(var_0.b.a)), var_0.c.a), Struct_1(-794f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-335f, _wgslsmith_f_op_f32(359f - 1066f), var_1)))), ~abs(-9022i), _wgslsmith_f_op_vec4_f32(func_3(vec2<bool>(false, false), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(868f + global0.a.b) - 1058f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.a.a)))), 0i >> (_wgslsmith_dot_vec3_u32(u_input.c, u_input.c) % 32u))));
    var_0 = Struct_2(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(var_0.a, 18714u) ^ ~vec2<u32>(var_0.a, 7289u)), abs(countOneBits(vec2<u32>(u_input.c.x, u_input.b)))), Struct_1(var_0.c.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.x * -1011f)), _wgslsmith_f_op_f32(f32(-1f) * -482f)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.b) - _wgslsmith_div_f32(var_0.b.a, var_0.b.b)) * _wgslsmith_f_op_f32(-var_0.c.b)), 282f), abs(2147483647i | -(var_0.d | global0.b.a.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.e + var_0.e)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a.b, var_0.b.b, -1230f, 1988f), vec4<f32>(var_0.e.x, var_0.e.x, global0.c, 1423f), vec4<bool>(var_1, var_1, true, false))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.b.b, -1870f, var_0.e.x, -623f), var_0.e)))))));
    let var_2 = var_0.e.x;
    return select(!select(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, var_1), true), !(!vec3<bool>(var_1, var_1, var_1)), true), vec3<bool>(true, var_1, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-418f)))) < _wgslsmith_f_op_f32(round(959f))), select(select(!vec3<bool>(true, true, var_1), !vec3<bool>(var_1, var_1, var_1), vec3<bool>(true, false, var_1)), select(vec3<bool>(false, !var_1, var_1 & var_1), select(select(vec3<bool>(var_1, false, false), vec3<bool>(true, var_1, var_1), vec3<bool>(var_1, var_1, var_1)), select(vec3<bool>(true, true, var_1), vec3<bool>(var_1, true, var_1), var_1), true), !vec3<bool>(var_1, false, true)), all(select(select(vec3<bool>(true, var_1, false), vec3<bool>(var_1, true, true), true), vec3<bool>(true, true, false), !vec3<bool>(var_1, false, true)))));
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: f32) -> Struct_4 {
    let var_0 = 1127f;
    let var_1 = Struct_4(global0.a, Struct_3(vec2<i32>(-66609i, 35335i)), arg_1, -921f);
    global0 = Struct_4(var_1.a, global0.b, _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c))), _wgslsmith_f_op_f32(-327f - arg_1));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1064f));
    var var_3 = select(vec2<bool>(true, true), select(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), false)), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(true, false), true)), true), vec2<bool>(true, any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), func_2()))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(108f * _wgslsmith_f_op_f32(global0.a.a + global0.c)) * global0.c));
    let var_0 = Struct_5(abs(1u), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.d + -807f))), _wgslsmith_f_op_f32(step(global0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1965f)))))));
    global0 = func_1(global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.a), var_0.b.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec2<bool>(false, true), func_1(Struct_3(global0.b.a), _wgslsmith_f_op_f32(423f - -834f), -1503f).a, i32(-1i) * -2147483647i)).x));
    let var_1 = 26187u;
    let var_2 = ~(-2147483647i);
    global0 = Struct_4(global0.a, func_1(func_1(global0.b, _wgslsmith_f_op_f32(-490f + var_0.b.a), -371f).b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a)))), -1000f).b, global0.c, var_0.b.a);
    let var_3 = all(vec2<bool>(true, any(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)))));
    global0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-377f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b.a)) * -738f)), _wgslsmith_f_op_f32(-1250f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(832f, -1545f) + -1030f))), func_1(func_1(func_1(global0.b, _wgslsmith_f_op_f32(f32(-1f) * -391f), var_0.b.b).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.b.a)) + _wgslsmith_f_op_f32(select(global0.c, global0.d, var_3))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.b.b - var_0.b.b)))).b, -545f, _wgslsmith_f_op_f32(-1763f - 752f)).b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(395f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -976f))))), _wgslsmith_div_f32(global0.a.b, _wgslsmith_f_op_f32(global0.a.a * 177f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1187f), _wgslsmith_f_op_f32(-var_0.b.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -939f), _wgslsmith_f_op_f32(252f - var_0.b.a))))), u_input.c, -504f, _wgslsmith_clamp_vec4_i32(select(vec4<i32>(var_2 & -35566i, 20274i, var_2, 40017i ^ var_2), vec4<i32>(max(-27577i, global0.b.a.x), -u_input.a, u_input.a, 1i), true), -vec4<i32>(_wgslsmith_mod_i32(u_input.a, 14465i), reverseBits(1i), -global0.b.a.x, countOneBits(-3336i)), vec4<i32>(~0i, -514i, countOneBits(-11257i), global0.b.a.x)), ~(-12996i));
}

