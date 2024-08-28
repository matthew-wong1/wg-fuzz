struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<f32>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: bool,
    c: vec4<u32>,
    d: Struct_3,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

var<private> global1: Struct_2 = Struct_2(1i, Struct_1(false), vec4<f32>(-452f, -610f, -1000f, -461f), 1u, Struct_1(true));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> vec3<bool> {
    let var_0 = _wgslsmith_div_i32(select(-1i, -u_input.b, any(vec2<bool>(false, select(arg_1.a.b.a, false, global1.e.a)))), global1.a);
    let var_1 = ~(~arg_1.b.xww);
    let var_2 = ~(~firstLeadingBit(select(arg_1.b.wx, abs(arg_1.b.ww), global1.b.a)));
    let var_3 = arg_1.a.c.x;
    let var_4 = vec3<u32>(~(~countOneBits(arg_1.a.d)) | firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global1.d, 21061u), var_1)), ~(~4294967295u) << (global0[_wgslsmith_index_u32(arg_1.b.x, 16u)] % 32u), arg_1.a.d);
    return arg_1.d;
}

fn func_2(arg_0: bool, arg_1: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global1.c.yyx), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-991f, global1.c.x, global1.c.x), vec3<f32>(-1677f, -547f, 489f), vec3<bool>(arg_0, false, true))) - vec3<f32>(global1.c.x, global1.c.x, global1.c.x)), arg_1)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(global1.c.x + global1.c.x), _wgslsmith_div_f32(global1.c.x, global1.c.x), -644f))), func_3(_wgslsmith_f_op_f32(1000f * global1.c.x), Struct_3(Struct_2(2147483647i, global1.b, global1.c, global1.d, Struct_1(arg_0)), max(vec4<u32>(global0[_wgslsmith_index_u32(3349u, 16u)], 10957u, 64723u, global1.d), vec4<u32>(59868u, global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)], 1u)), Struct_1(true), !vec3<bool>(false, arg_0, arg_1))))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(global1.c.x + global1.c.x), _wgslsmith_f_op_f32(f32(-1f) * -442f))))));
    let var_1 = true;
    var var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(trunc(global1.c.x)), -1000f) * vec4<f32>(global1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1467f), _wgslsmith_f_op_f32(-2004f * -2072f), _wgslsmith_f_op_f32(sign(global1.c.x))))), true, ~abs(~vec4<u32>(u_input.c, 1u, global0[_wgslsmith_index_u32(u_input.c, 16u)], global1.d)) << (~(select(vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12480u, 16u)], 16u)], 16u)], global0[_wgslsmith_index_u32(0u, 16u)], 1u), vec4<u32>(1u, u_input.a.x, 6478u, 7554u), false) >> (_wgslsmith_div_vec4_u32(vec4<u32>(35281u, 1u, 30934u, 7670u), vec4<u32>(global1.d, u_input.a.x, 39496u, global1.d)) % vec4<u32>(32u))) % vec4<u32>(32u)), Struct_3(Struct_2(u_input.b, global1.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1245f, global1.c.x, global1.c.x, -652f) * vec4<f32>(-683f, var_0.x, global1.c.x, -269f)) + vec4<f32>(var_0.x, var_0.x, global1.c.x, global1.c.x)), ~1u, global1.e), vec4<u32>(global0[_wgslsmith_index_u32(abs(~u_input.a.x), 16u)], ~u_input.a.x, abs(countOneBits(global0[_wgslsmith_index_u32(42345u, 16u)])), firstLeadingBit(global1.d)), global1.e, vec3<bool>(true, !var_1, false)), ~(~u_input.a));
    global0 = array<u32, 16>();
    var var_3 = var_2.d.a;
    return Struct_2(u_input.b, var_3.e, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-381f * -793f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_3.c.x, -322f)) * _wgslsmith_f_op_f32(max(var_2.d.a.c.x, var_0.x))), _wgslsmith_f_op_f32(var_2.d.a.c.x * _wgslsmith_f_op_f32(var_3.c.x * -929f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.d.a.c.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(var_3.c)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d.a.c.x, var_2.d.a.c.x, -659f, var_0.x)))), vec4<bool>(global1.b.a, true, 1u < firstLeadingBit(u_input.a.x), all(!var_2.d.d)))), var_2.c.x, Struct_1(true));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_1) -> u32 {
    global1 = func_2(arg_1, false);
    let var_0 = Struct_2(u_input.b, Struct_1(false), vec4<f32>(_wgslsmith_div_f32(func_2(arg_2.a || global1.b.a, true).c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1288f), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.c.x, 836f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.c.x - -776f)))), global1.c.x, func_2(false, arg_2.a).c.x), u_input.c, Struct_1(any(func_3(global1.c.x, Struct_3(Struct_2(2147483647i, Struct_1(true), vec4<f32>(2572f, global1.c.x, global1.c.x, global1.c.x), arg_0.x, global1.e), arg_0, arg_2, vec3<bool>(global1.b.a, true, true))).zx)));
    var var_1 = var_0.d;
    let var_2 = Struct_2(global1.a ^ u_input.b, global1.b, _wgslsmith_f_op_vec4_f32(step(global1.c, _wgslsmith_f_op_vec4_f32(-global1.c))), 4294967295u, arg_2);
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.c.x), -1930f, any(vec3<bool>(arg_2.a, false, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -147f) + _wgslsmith_f_op_f32(-var_0.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(700f, 1250f, true)))));
    return select(~39137u, arg_0.x, false);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(global1.c.x, vec3<f32>(-2020f, global1.c.x, _wgslsmith_f_op_f32(max(global1.c.x, _wgslsmith_div_f32(_wgslsmith_div_f32(global1.c.x, -943f), _wgslsmith_f_op_f32(abs(652f)))))), global1.a >> (((global1.d ^ _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, u_input.c, 4294967295u))) << ((~global0[_wgslsmith_index_u32(4294967295u, 16u)] | func_1(vec4<u32>(4294967295u, global1.d, 4038u, 22174u), false, Struct_1(global1.b.a))) % 32u)) % 32u));
}

