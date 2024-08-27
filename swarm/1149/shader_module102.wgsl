struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: f32;

var<private> global2: Struct_2;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: f32) -> vec4<bool> {
    let var_0 = arg_2;
    let var_1 = global2.e.x;
    var var_2 = arg_2;
    var var_3 = ~_wgslsmith_mult_u32(32267u & firstLeadingBit(~arg_0.b.a), 12712u);
    var var_4 = arg_2;
    return !(!select(!select(global2.d.b, arg_0.d.b, vec4<bool>(false, true, true, var_2.c.e.x)), var_0.c.b.b, !(!vec4<bool>(false, false, arg_0.b.b.x, arg_2.c.b.b.x))));
}

fn func_2(arg_0: bool, arg_1: vec4<bool>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a, global0.x)) * vec2<f32>(global2.c, -213f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a, 682f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c, global2.a) + vec2<f32>(global0.x, -848f))))));
    let var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a.x, 1u), 35280u), ~39866u, abs(32930u & u_input.a.x) | ~77355u), ~firstLeadingBit(vec3<u32>(firstLeadingBit(u_input.a.x), ~global2.d.a, _wgslsmith_div_u32(1u, u_input.a.x))));
    var var_2 = Struct_2(global2.c, Struct_1(~0u, func_3(Struct_2(_wgslsmith_f_op_f32(-global2.c), Struct_1(var_1.x, vec4<bool>(true, true, true, true), -2147483647i, global2.b.c), global2.c, global2.b, select(vec2<bool>(true, false), arg_1.xy, global2.e)), (vec3<u32>(var_1.x, 74697u, u_input.a.x) >> (var_1 % vec3<u32>(32u))) >> (~vec3<u32>(31831u, 32037u, 96620u) % vec3<u32>(32u)), Struct_3(899f, abs(var_1.x), Struct_2(-581f, Struct_1(global2.d.a, vec4<bool>(false, false, arg_0, arg_1.x), global2.b.d, global2.d.d), var_0.x, Struct_1(1u, vec4<bool>(global2.e.x, true, arg_0, global2.e.x), global2.b.d, 0i), global2.b.b.zw)), _wgslsmith_f_op_f32(min(var_0.x, var_0.x))), global2.b.c, global2.b.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(613f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)))), Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), min(u_input.a.x | u_input.a.x, var_1.x)), select(!global2.d.b, !vec4<bool>(true, arg_0, false, arg_0), true), min(-9213i, i32(-1i) * -47717i), global2.d.d), select(select(!(!global2.d.b.yz), !(!arg_1.zy), !select(vec2<bool>(true, arg_0), vec2<bool>(global2.b.b.x, false), true)), vec2<bool>(_wgslsmith_f_op_f32(ceil(var_0.x)) > _wgslsmith_f_op_f32(-global2.a), arg_0 & false), select(global2.d.b.ww, select(vec2<bool>(true, false), global2.e, arg_0), vec2<bool>(arg_0, arg_0))));
    let var_3 = _wgslsmith_f_op_f32(var_2.c - _wgslsmith_f_op_f32(f32(-1f) * -352f));
    var var_4 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) - global0.x) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.c, global2.a))))), abs(4294967295u), Struct_2(-464f, Struct_1(33202u, vec4<bool>(false, true, !arg_1.x, select(false, arg_1.x, arg_0)), global2.d.c, 2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)), Struct_1(13852u, var_2.b.b, var_2.d.c, select(~var_2.d.d, -6409i, true)), arg_1.yw));
    return Struct_3(-903f, _wgslsmith_div_u32(global2.d.a, global2.d.a & (_wgslsmith_add_u32(var_1.x, 2087u) << (min(global2.b.a, 0u) % 32u))), Struct_2(var_4.c.c, Struct_1(_wgslsmith_dot_vec3_u32(var_1 & var_1, _wgslsmith_mult_vec3_u32(var_1, vec3<u32>(4294967295u, 0u, var_1.x))), vec4<bool>(true, true & global2.e.x, false, false), -15707i, global2.b.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-440f, -1401f, func_3(Struct_2(var_0.x, global2.b, -980f, var_4.c.d, vec2<bool>(global2.b.b.x, var_2.d.b.x)), var_1, Struct_3(global0.x, 4294967295u, var_4.c), -600f).x))), Struct_1(_wgslsmith_mult_u32(4294967295u, ~var_2.b.a), var_4.c.b.b, _wgslsmith_mod_i32(0i, ~(-2147483647i)), 9084i), vec2<bool>(true, !global2.e.x)));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec3<f32>) -> u32 {
    let var_0 = func_2(!arg_0.b.x, vec4<bool>(true, !any(select(vec4<bool>(false, arg_0.b.x, global2.e.x, false), arg_0.b, arg_0.b)), true, !arg_0.b.x));
    global2 = Struct_2(_wgslsmith_f_op_f32(-global0.x), global2.d, global0.x, global2.b, arg_0.b.yw);
    let var_1 = -1640f;
    let var_2 = 16761u;
    global0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - _wgslsmith_f_op_f32(-212f + 258f)), 199f))), _wgslsmith_f_op_f32(ceil(-171f)));
    return ~var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-827f, -925f, global0.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(923f, global0.x, global2.a) + vec3<f32>(global2.a, 561f, -1634f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, global0.x, 569f), vec3<f32>(237f, global2.c, global2.c), vec3<bool>(true, global2.e.x, global2.d.b.x)))))), vec3<f32>(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(f32(-1f) * -430f), global2.a), true)), vec3<f32>(2513f, -521f, global2.a), all(vec3<bool>(all(global2.e), all(vec2<bool>(global2.b.b.x, global2.e.x)), true))));
    var var_1 = -11822i;
    let var_2 = vec4<u32>(_wgslsmith_div_u32(global2.b.a, 96829u), ~min(select(50499u, ~0u, all(vec4<bool>(global2.b.b.x, global2.b.b.x, global2.d.b.x, true))), global2.d.a), select(_wgslsmith_div_u32(~4294967295u | global2.b.a, ~(~u_input.a.x)), func_1(global2.b, ~u_input.a.x, vec3<f32>(_wgslsmith_f_op_f32(global0.x - global2.c), _wgslsmith_f_op_f32(404f - var_0.x), 514f)), global2.d.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x | global2.d.a, 85157u, 0u) >> (vec3<u32>(global2.b.a, 42187u, ~4294967295u) % vec3<u32>(32u)), select(~vec3<u32>(u_input.a.x, u_input.a.x, 32175u), _wgslsmith_add_vec3_u32(vec3<u32>(global2.b.a, global2.d.a, 4936u), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, global2.b.a, global2.d.a), vec3<u32>(35047u, u_input.a.x, 0u))), vec3<bool>(any(vec4<bool>(global2.e.x, global2.b.b.x, global2.b.b.x, true)), global2.e.x, 4294967295u <= global2.d.a))));
    var var_3 = var_2.yxz;
    let var_4 = global2.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(abs(345f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -1635f) - _wgslsmith_f_op_f32(ceil(-1140f)))))), 16578u, var_4.c, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(546f, global2.c, 174f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(169f, global0.x, -2760f), var_0)), var_0, var_4.b.xxx))))));
}

