struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(-1480f, 1193f, 1952f, 648f), vec2<bool>(true, false));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    let var_0 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.d.x, _wgslsmith_add_u32(min(u_input.a, u_input.a & 4294967295u), ~firstTrailingBit(21627u))), u_input.d.x);
    let var_1 = ~vec2<u32>(u_input.d.x, 78133u);
    global1 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.a.x), global1.a.x)), global1.a.x, _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.a.x - global1.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a))), !global1.b);
    var var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) + _wgslsmith_f_op_f32(-global1.a.x))), _wgslsmith_f_op_f32(round(441f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-952f * global1.a.x))))), 437f), !global1.b);
    var var_3 = u_input.d;
    return var_2.a.x;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.a.xxx + global1.a.yzx), _wgslsmith_f_op_vec3_f32(global1.a.xxz * vec3<f32>(_wgslsmith_f_op_f32(abs(607f)), global1.a.x, _wgslsmith_f_op_f32(-global1.a.x))));
    let var_1 = global1.b.x;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(239f + global1.a.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.a.x)))), 807f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x))) + _wgslsmith_f_op_f32(func_3(max(~u_input.b.zw, vec2<i32>(u_input.b.x, 46065i))))));
    global1 = Struct_1(global1.a, vec2<bool>(!global1.b.x, true));
    var var_3 = ~u_input.d & _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(~u_input.d, vec3<u32>(~88134u, ~u_input.a, _wgslsmith_mult_u32(0u, 32168u))), u_input.d);
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.x)) * var_2.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(458f - global1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(100f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.x, global1.a.x)))), select(global1.b, select(global1.b, global1.b, !(var_3.x < var_3.x)), true));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool) -> vec4<f32> {
    global0 = !(u_input.a <= ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_0.x, 0u), u_input.a));
    let var_0 = u_input.a;
    global1 = func_2();
    let var_1 = arg_0;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-249f, _wgslsmith_f_op_f32(min(global1.a.x, 320f)), 129f, _wgslsmith_f_op_f32(global1.a.x - 1695f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, -359f, 1772f, global1.a.x)))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(func_2().a, vec4<f32>(-865f, -672f, -103f, global1.a.x), select(vec4<bool>(false, false, false, arg_1), vec4<bool>(true, arg_1, false, false), arg_1)))))), !func_2().b);
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1282f)));
    var var_1 = 0i;
    var var_2 = !global1.b.x;
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.a, _wgslsmith_div_u32(u_input.a, u_input.a), 0u, u_input.a >> (u_input.d.x % 32u)), firstLeadingBit(~vec4<u32>(4294967295u, u_input.a, 1u, 3515u))), true)), global1.b);
    var var_3 = func_2();
    let var_4 = !vec4<bool>(true, max(u_input.b.x, _wgslsmith_sub_i32(u_input.c, 23801i)) == -35391i, all(!(!vec3<bool>(false, global1.b.x, true))), true & !any(vec3<bool>(true, global1.b.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(0i, ~_wgslsmith_div_u32(u_input.a, 0u), u_input.a, select(~(~u_input.d) << (vec3<u32>(~68206u, u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 1u, 0u, u_input.a), vec4<u32>(22628u, 34900u, u_input.a, u_input.a))) % vec3<u32>(32u)), ~_wgslsmith_sub_vec3_u32(~u_input.d, ~vec3<u32>(u_input.a, u_input.d.x, u_input.d.x)), any(!vec2<bool>(false, global1.b.x))), u_input.c);
}

