struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1>;

var<private> global1: array<f32, 12>;

var<private> global2: bool;

var<private> global3: bool = false;

var<private> global4: i32 = 0i;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_1) -> u32 {
    global2 = _wgslsmith_f_op_f32(ceil(1000f)) >= arg_1;
    return arg_3.b.x;
}

fn func_3() -> u32 {
    global3 = !(!all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a, 12u)], global1[_wgslsmith_index_u32(u_input.a, 12u)]))))) * _wgslsmith_f_op_f32(f32(-1f) * -834f));
    var var_1 = Struct_2(~(~vec4<u32>(0u, 1967u, u_input.a ^ 4294967295u, 4294967295u)), ~1u & u_input.a, Struct_1(vec3<u32>(u_input.a, 1u, u_input.d), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(42888u, u_input.a))), false));
    global2 = !(u_input.e.x > max(~(~u_input.c.x), u_input.e.x));
    var_0 = 1441f;
    return u_input.d | min(27877u, abs(0u));
}

fn func_1() -> Struct_1 {
    let var_0 = -1284f;
    global4 = firstTrailingBit(-28436i);
    global3 = abs(_wgslsmith_mod_u32(~(~93700u), func_2(true, _wgslsmith_f_op_f32(-651f - var_0), _wgslsmith_clamp_vec2_u32(vec2<u32>(11535u, 17803u), vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.d)), Struct_1(vec3<u32>(u_input.d, 1u, 0u), vec2<u32>(32320u, 46478u), true)))) < 56823u;
    let var_1 = _wgslsmith_div_u32(u_input.a, firstLeadingBit(~u_input.d));
    var var_2 = global0[_wgslsmith_index_u32(func_3(), 1u)];
    return var_2.c;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    let var_0 = global1[_wgslsmith_index_u32(u_input.d, 12u)];
    var var_1 = arg_1;
    var var_2 = arg_1.b;
    let var_3 = _wgslsmith_mod_u32(~(~(~_wgslsmith_dot_vec3_u32(arg_0.a, vec3<u32>(arg_0.b.x, 0u, arg_0.a.x)))), arg_1.b);
    global2 = arg_1.c.c;
    return -899f >= _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(0u, 12u)]));
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> vec4<f32> {
    global0 = array<Struct_2, 1>();
    var var_0 = _wgslsmith_mult_u32(~select(0u, arg_1.b, 1u < u_input.d), ~_wgslsmith_mod_u32(1u, ~_wgslsmith_add_u32(1u, 29198u)));
    var var_1 = global0[_wgslsmith_index_u32(arg_1.c.b.x | 52458u, 1u)];
    var var_2 = max(-1494i, u_input.b);
    var var_3 = arg_1;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(372f, 752f, -1000f, global1[_wgslsmith_index_u32(arg_1.a.x, 12u)]))), vec4<f32>(_wgslsmith_f_op_f32(1000f - -840f), -880f, global1[_wgslsmith_index_u32(74403u, 12u)], _wgslsmith_f_op_f32(min(120f, -2213f))), select(select(vec4<bool>(var_1.c.c, arg_0, true, false), vec4<bool>(var_3.c.c, arg_0, true, true), true), vec4<bool>(false, arg_1.c.c, false, var_1.c.c), vec4<bool>(arg_0, var_1.c.c, arg_0, false)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1[_wgslsmith_index_u32(var_3.a.x, 12u)], 461f, 1000f, global1[_wgslsmith_index_u32(u_input.d, 12u)]), vec4<f32>(1859f, 1068f, global1[_wgslsmith_index_u32(62580u, 12u)], 241f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(var_3.b, 12u)], -1175f, global1[_wgslsmith_index_u32(34084u, 12u)], -896f) + vec4<f32>(global1[_wgslsmith_index_u32(var_3.a.x, 12u)], -228f, -1000f, global1[_wgslsmith_index_u32(1u, 12u)]))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(2239f, 1241f, _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(53302u, 12u)], _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(4294967295u, 12u)], -864f)), false)), global1[_wgslsmith_index_u32(var_3.a.x, 12u)]) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 339f, -742f, global1[_wgslsmith_index_u32(1u, 12u)]) + vec4<f32>(-339f, global1[_wgslsmith_index_u32(u_input.d, 12u)], -663f, 328f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(69351u, 12u)], -678f, 158f, global1[_wgslsmith_index_u32(arg_1.b, 12u)]))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(954f, -1000f, 1000f, -715f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_5(func_4(func_1(), Struct_2(select(~vec4<u32>(63124u, u_input.d, 29735u, u_input.d), ~vec4<u32>(41522u, 0u, u_input.d, u_input.d), vec4<bool>(true, true, true, true)), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 19440u, 9510u, u_input.d), vec4<u32>(0u, 4294967295u, u_input.a, 729u)), _wgslsmith_add_u32(u_input.d, u_input.d)), func_1())), global0[_wgslsmith_index_u32(113081u, 1u)]));
    global3 = !all(vec3<bool>(func_1().c, func_1().c, true));
    let var_1 = vec4<u32>(_wgslsmith_add_u32(61105u, ~(u_input.d | 0u)), firstLeadingBit(12536u), u_input.d, u_input.d);
    let var_2 = vec2<f32>(-384f, global1[_wgslsmith_index_u32(u_input.d, 12u)]);
    let var_3 = Struct_2(var_1, var_1.x, Struct_1(vec3<u32>(~39745u, _wgslsmith_mod_u32(1u, var_1.x), u_input.d) << (vec3<u32>(firstTrailingBit(var_1.x), 12841u, ~var_1.x) % vec3<u32>(32u)), vec2<u32>(max(4294967295u, u_input.a) & var_1.x, u_input.a), true));
    var var_4 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(0u, 12u)])), var_0.x)));
    var var_5 = !vec4<bool>(false, 990f <= _wgslsmith_f_op_f32(-var_4.x), false, !var_3.c.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, 1000f);
}

