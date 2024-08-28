struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec4<f32>,
    c: bool,
    d: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<f32>(568f, -1054f, -1465f), Struct_1(vec4<bool>(false, false, true, true), vec2<f32>(-545f, -879f)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> i32 {
    global0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.b.x) - global0.a.x))), 825f, _wgslsmith_f_op_f32(-global0.a.x)), Struct_1(select(global0.b.a, vec4<bool>(!global0.b.a.x, global0.b.a.x, true, true), !select(vec4<bool>(global0.b.a.x, false, false, true), global0.b.a, global0.b.a.x)), vec2<f32>(global0.a.x, global0.b.b.x)));
    global0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.a * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.b.b.x, -724f, global0.a.x)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.b.b.x), _wgslsmith_f_op_f32(-global0.b.b.x), 1f))), Struct_1(select(select(!vec4<bool>(true, global0.b.a.x, false, global0.b.a.x), select(global0.b.a, vec4<bool>(global0.b.a.x, global0.b.a.x, true, false), global0.b.a.x), !global0.b.a.x), !vec4<bool>(true, false, global0.b.a.x, global0.b.a.x), global0.b.a), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(772f, 776f)))), -1192f)));
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1335f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.b.b.x))), 964f)), global0.b);
    var var_1 = -abs(u_input.c);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.a.x)) - var_0.a.x);
    return countOneBits(reverseBits(_wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_div_i32(17368i, u_input.c), 0i), ~u_input.b.x)));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: bool, arg_3: vec3<bool>) -> f32 {
    var var_0 = Struct_2(global0.a, !select(true, func_3() == -2147483647i, true));
    let var_1 = ~(-1i);
    return _wgslsmith_f_op_f32(-global0.a.x);
}

fn func_1(arg_0: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.a.x, -288f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(1u, global0.b.a.x, global0.b.a.x, global0.b.a.yxw)) + 742f)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.a.x, 1644f, 1110f), global0.a)))), global0.a))) * vec3<f32>(_wgslsmith_f_op_f32(-176f * -709f), global0.a.x, -949f));
    var var_1 = vec2<bool>(global0.b.a.x, all(select(!global0.b.a, vec4<bool>(true, false, true, global0.b.a.x), select(vec4<bool>(false, false, true, global0.b.a.x), !global0.b.a, vec4<bool>(false, true, true, true)))));
    global0 = Struct_3(_wgslsmith_f_op_vec3_f32(sign(global0.a)), Struct_1(!(!(!global0.b.a)), global0.b.b));
    let var_2 = Struct_1(vec4<bool>(true, true, true, true), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(trunc(var_0.x))));
    let var_3 = ~max(0i, select(-1i, arg_0, any(global0.b.a) && (global0.b.a.x || global0.b.a.x)));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(_wgslsmith_div_u32(43024u, u_input.a.x), false, false, vec3<bool>(var_1.x, var_2.a.x, global0.b.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(global0.a, Struct_1(global0.b.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.a.x, -291f))) - vec2<f32>(-812f, _wgslsmith_f_op_f32(global0.b.b.x + global0.b.b.x)))));
    global0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(func_1(-(~u_input.b.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1154f)))), -199f), global0.b);
    let var_0 = Struct_5(Struct_2(_wgslsmith_f_op_vec3_f32(global0.a * _wgslsmith_f_op_vec3_f32(-global0.a)), !all(!global0.b.a.wy)), !any(vec4<bool>(!global0.b.a.x, any(global0.b.a), false, all(vec4<bool>(false, global0.b.a.x, true, false)))), !all(!(!global0.b.a.wx)));
    var var_1 = ~((-u_input.e.wzx >> (~vec3<u32>(u_input.d, 0u, u_input.d) % vec3<u32>(32u))) & countOneBits(~(~vec3<i32>(u_input.c, u_input.e.x, u_input.e.x))));
    var var_2 = Struct_4(-2147483647i, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x, var_0.a.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(step(-176f, var_0.a.a.x)), global0.a.x, global0.a.x, _wgslsmith_f_op_f32(global0.b.b.x + -550f))))), false, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1771f + -116f), _wgslsmith_f_op_f32(min(var_0.a.a.x, 1353f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<u32>(~u_input.a.x, u_input.d, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), countOneBits(vec2<u32>(29560u, u_input.a.x))), firstLeadingBit(u_input.d) << (~8089u % 32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a + global0.a))))), ~1u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.d * global0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -202f), _wgslsmith_f_op_f32(1173f + var_0.a.a.x))))));
}

