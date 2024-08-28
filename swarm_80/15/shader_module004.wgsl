struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: u32;

var<private> global2: Struct_1 = Struct_1(false, vec2<bool>(true, true), -35682i);

var<private> global3: bool = false;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> vec4<bool> {
    let var_0 = ~u_input.a.yzy;
    global3 = arg_0.b.x;
    var var_1 = Struct_1(any(!vec4<bool>(false, select(arg_1.x, arg_0.b.x, false), true, arg_1.x)), select(!vec2<bool>(arg_1.x, true), !select(arg_1, arg_0.b, arg_0.b.x), !(_wgslsmith_f_op_f32(sign(1302f)) <= _wgslsmith_f_op_f32(f32(-1f) * -305f))), -global2.c ^ _wgslsmith_div_i32((-1221i | arg_0.c) ^ (-1i << (u_input.b.x % 32u)), -1i));
    global3 = all(select(vec3<bool>(global2.a, all(vec4<bool>(arg_1.x, false, true, var_1.a)), true), !(!vec3<bool>(arg_1.x, true, arg_1.x)), !(!(!vec3<bool>(true, var_1.a, false)))));
    let var_2 = ~vec3<i32>(u_input.c.x, _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(u_input.d, ~(-1i), firstTrailingBit(-47391i))), u_input.d);
    return select(!(!vec4<bool>(global2.a, var_1.a, arg_1.x, all(vec3<bool>(true, global2.a, var_1.b.x)))), vec4<bool>(any(select(select(vec2<bool>(arg_1.x, var_1.b.x), arg_0.b, arg_1.x), vec2<bool>(true, arg_1.x), false)), global2.b.x, true, true), arg_0.b.x);
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    global3 = ~u_input.a.x < u_input.b.x;
    global2 = Struct_1(true | select(!any(vec4<bool>(global2.b.x, false, false, true)), true, -1000f >= _wgslsmith_f_op_f32(step(-2259f, 2251f))), vec2<bool>(arg_0.x, !global2.b.x), global2.c);
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-149f, _wgslsmith_f_op_f32(round(1169f)), _wgslsmith_f_op_f32(-878f - 227f), 1776f) - vec4<f32>(463f, _wgslsmith_f_op_f32(f32(-1f) * -288f), _wgslsmith_f_op_f32(sign(179f)), _wgslsmith_f_op_f32(1251f + 920f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -904f) - _wgslsmith_div_f32(-1074f, 1191f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 506f)), _wgslsmith_f_op_f32(f32(-1f) * -846f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1778f + 1000f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1683f))), 1206f, -879f, _wgslsmith_f_op_f32(f32(-1f) * -345f)) - vec4<f32>(-562f, 383f, -1166f, _wgslsmith_div_f32(1241f, _wgslsmith_div_f32(495f, 733f)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, global2.a))))))));
    var var_2 = global2.b;
    return Struct_1(var_2.x, select(arg_0, vec2<bool>(any(vec4<bool>(var_2.x, arg_0.x, global2.a, false)), all(func_3(Struct_1(var_2.x, vec2<bool>(arg_0.x, arg_0.x), u_input.c.x), global2.b))), all(func_3(Struct_1(global2.a, arg_0, u_input.c.x), !global2.b).wx)), -_wgslsmith_dot_vec3_i32(~vec3<i32>(-2951i, global2.c, 0i), select(vec3<i32>(global2.c, u_input.c.x, global2.c), min(vec3<i32>(global2.c, 7227i, global2.c), vec3<i32>(-2147483647i, u_input.d, 40748i)), vec3<bool>(false, false, false))));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>) -> vec4<u32> {
    var var_0 = _wgslsmith_sub_i32(global2.c, global2.c);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-801f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(arg_0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * -544f) * 382f)) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1266f, -841f, arg_0) - vec3<f32>(arg_0, arg_0, 119f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 193f, 208f) - vec3<f32>(297f, arg_0, 175f)))))))));
    var_0 = global2.c;
    var_0 = u_input.c.x;
    global2 = func_2(select(vec2<bool>(true, (var_1.x > -336f) & all(vec4<bool>(true, arg_1.x, arg_1.x, global2.a))), global2.b, !select(global2.b, vec2<bool>(true, true), select(global2.b, arg_1.wy, false))));
    return select(~select(vec4<u32>(4294967295u, 1u, _wgslsmith_div_u32(30583u, u_input.e.x), 64571u), min(u_input.a, ~u_input.b), select(vec4<bool>(arg_1.x, false, true, arg_1.x), !arg_1, !vec4<bool>(arg_1.x, true, arg_1.x, true))), vec4<u32>(49348u, u_input.b.x, ~(~26757u), 4294967295u) << (min(u_input.a, firstLeadingBit(u_input.b)) % vec4<u32>(32u)), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~_wgslsmith_div_u32(max(_wgslsmith_add_u32(abs(0u), ~u_input.b.x), _wgslsmith_dot_vec4_u32(u_input.a, u_input.b) | u_input.e.x), ~(~_wgslsmith_mult_u32(u_input.a.x, u_input.e.x)));
    global1 = 4294967295u;
    let var_0 = global2.b;
    var var_1 = !(!(global2.b.x & (true && var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(~func_1(1274f, select(vec4<bool>(true, false, true, global2.a), vec4<bool>(var_0.x, global2.a, global2.a, var_0.x), global2.a)), u_input.a | _wgslsmith_add_vec4_u32(max(vec4<u32>(17005u, 0u, u_input.b.x, 1u), vec4<u32>(u_input.e.x, 41000u, 0u, u_input.e.x)), u_input.a)));
}

