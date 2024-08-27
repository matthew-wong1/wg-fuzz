struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: bool;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_3) -> vec4<bool> {
    global1 = !(_wgslsmith_f_op_f32(f32(-1f) * -1478f) < _wgslsmith_f_op_f32(-arg_0));
    global1 = !any(vec3<bool>(global0.b.a.c, global0.a.x, any(arg_2.b.a.a)));
    global0 = Struct_3(select(!select(select(vec2<bool>(false, global0.b.a.c), vec2<bool>(global0.a.x, arg_2.b.a.a.x), true), arg_2.b.a.a, true), vec2<bool>(all(!vec4<bool>(global0.b.a.c, arg_2.b.a.c, false, arg_2.a.x)), ~11101u >= ~arg_1), select(!select(global0.a, vec2<bool>(true, false), vec2<bool>(false, arg_2.b.a.a.x)), select(!global0.b.a.a, vec2<bool>(global0.b.a.c, true), arg_2.a), !(!arg_2.a))), Struct_2(global0.b.a));
    var var_0 = Struct_2(Struct_1(!select(vec2<bool>(global0.a.x, arg_2.a.x), select(global0.b.a.a, global0.b.a.a, global0.b.a.a.x), !arg_2.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.b.a.b + vec3<f32>(1232f, arg_0, -1962f)))), all(select(select(global0.a, vec2<bool>(arg_2.a.x, true), true), !vec2<bool>(global0.a.x, global0.a.x), arg_2.a))));
    var var_1 = _wgslsmith_mod_u32(select(arg_1 ^ 30568u, arg_1, all(vec4<bool>(false, all(vec4<bool>(false, arg_2.b.a.c, var_0.a.a.x, arg_2.b.a.a.x)), true, global0.a.x == false))), select(14331u, ~22867u, !(any(vec3<bool>(global0.b.a.a.x, global0.a.x, arg_2.b.a.c)) | true)));
    return !vec4<bool>(all(select(vec2<bool>(false, arg_2.b.a.c), var_0.a.a, true)), all(!global0.b.a.a) && false, true, arg_2.b.a.a.x);
}

fn func_2(arg_0: Struct_3) -> vec2<bool> {
    var var_0 = vec3<bool>(true, false, arg_0.a.x);
    let var_1 = _wgslsmith_f_op_f32(-global0.b.a.b.x);
    var_0 = vec3<bool>(all(select(func_3(_wgslsmith_f_op_f32(-150f + arg_0.b.a.b.x), ~4294967295u, Struct_3(vec2<bool>(false, false), Struct_2(global0.b.a))), !vec4<bool>(true, var_0.x, true, arg_0.a.x), true)), !all(select(vec3<bool>(var_0.x, true, global0.b.a.c), !vec3<bool>(arg_0.b.a.a.x, arg_0.a.x, var_0.x), vec3<bool>(true, true, true))), !(all(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(false, true, true), vec3<bool>(false, var_0.x, true))) || func_3(global0.b.a.b.x, ~101306u, arg_0).x));
    global0 = Struct_3(!select(func_3(_wgslsmith_f_op_f32(step(-2707f, global0.b.a.b.x)), 4294967295u, Struct_3(vec2<bool>(false, arg_0.b.a.a.x), Struct_2(global0.b.a))).ww, select(select(var_0.xy, arg_0.a, false), vec2<bool>(false, global0.b.a.a.x), select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, true), true)), !vec2<bool>(arg_0.a.x, arg_0.a.x)), arg_0.b);
    var var_2 = Struct_3(select(global0.a, select(global0.b.a.a, !vec2<bool>(false, var_0.x), false), var_0.yx), global0.b);
    return var_0.zy;
}

fn func_1() -> Struct_3 {
    global0 = Struct_3(select(!func_2(Struct_3(vec2<bool>(global0.a.x, false), global0.b)), !global0.a, true), Struct_2(Struct_1(global0.b.a.a, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(global0.b.a.b, vec3<f32>(-325f, 1000f, -328f), vec3<bool>(global0.a.x, global0.b.a.a.x, global0.b.a.a.x))), _wgslsmith_f_op_vec3_f32(-global0.b.a.b))), _wgslsmith_f_op_f32(step(-780f, -1371f)) >= _wgslsmith_f_op_f32(f32(-1f) * -517f))));
    let var_0 = global0.b.a.b;
    var var_1 = Struct_1(!func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) - 1418f), ~0u, Struct_3(func_3(-206f, 70351u, Struct_3(global0.a, global0.b)).wy, global0.b)).wz, _wgslsmith_div_vec3_f32(global0.b.a.b, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.b.a.b.x), var_0.x, _wgslsmith_f_op_f32(select(420f, 1000f, false))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-434f, -417f, -687f))))))), true);
    var var_2 = max(max(firstLeadingBit(1u), _wgslsmith_add_u32(countOneBits(_wgslsmith_sub_u32(79269u, 74428u)), ~4294967295u >> (firstLeadingBit(19481u) % 32u))), ~(~reverseBits(67033u)));
    let var_3 = vec4<u32>(1u, _wgslsmith_mult_u32(~20356u, 1u >> (1u % 32u)), 61190u, ~_wgslsmith_mod_u32(countOneBits(min(4294967295u, 1u)), 18027u));
    return Struct_3(!vec2<bool>(var_1.c, true), Struct_2(global0.b.a));
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> vec4<f32> {
    let var_0 = arg_0;
    var var_1 = func_1().b;
    let var_2 = !arg_0.a;
    global0 = func_1();
    var var_3 = global0.b.a.c;
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.a.b.x, var_0.b.a.b.x, -888f, 495f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(561f, 1634f, -581f, var_1.a.b.x))))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(select(vec2<bool>(true, !(true && global0.b.a.c)), select(global0.b.a.a, vec2<bool>(true, true), global0.b.a.a), global0.b.a.c), global0.b);
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(global0.b.a.b.x, 980f, global0.b.a.a.x)), _wgslsmith_f_op_f32(global0.b.a.b.x + 852f), -1083f, global0.b.a.b.x), _wgslsmith_f_op_vec4_f32(func_4(func_1(), global0.a.x)), true)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2189f, -214f, 601f, 258f) * vec4<f32>(-1150f, -963f, global0.b.a.b.x, global0.b.a.b.x)))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.a.b.x, global0.b.a.b.x, global0.b.a.b.x, 420f) + vec4<f32>(-628f, -446f, 1123f, 978f)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.a.b.x, global0.b.a.b.x, 249f, global0.b.a.b.x) + vec4<f32>(646f, 1022f, 698f, 228f))))) * vec4<f32>(1000f, _wgslsmith_f_op_f32(trunc(-544f)), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-706f, global0.b.a.b.x)) + -464f))));
    var var_1 = ~(abs(abs(vec2<u32>(1u, 1u))) & (select(~vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 34316u), true) ^ countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(72098u, 107615u), vec2<u32>(4294967295u, 1u)))));
    var var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec2<i32>(abs(u_input.a & u_input.a), _wgslsmith_div_i32(2147483647i, countOneBits(u_input.a)))));
}

