struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: vec3<i32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: Struct_1 = Struct_1(43749i, -1i, false, vec3<i32>(-75671i, 1i, 6580i), vec2<bool>(true, true));

var<private> global2: i32 = i32(-2147483648);

var<private> global3: bool;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    var var_0 = ~u_input.b;
    return _wgslsmith_f_op_f32(f32(-1f) * -1374f);
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: Struct_1) -> i32 {
    global2 = 11170i;
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -953f), _wgslsmith_f_op_f32(func_2(u_input.a)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(760f - 772f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1608f, -572f, global0.x))))))));
    global2 = ~arg_1.x;
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-475f, -891f))));
    let var_1 = 0u;
    return global1.d.x;
}

fn func_3() -> vec3<i32> {
    global2 = -61828i;
    global3 = u_input.b.x == ~_wgslsmith_dot_vec4_u32(select(~u_input.b, ~u_input.b, any(vec4<bool>(true, global0.x, true, global0.x))), select(_wgslsmith_mod_vec4_u32(vec4<u32>(21992u, u_input.e, u_input.a.x, 3543u), u_input.b), vec4<u32>(18898u, u_input.a.x, 0u, u_input.b.x), u_input.c.x >= 1i));
    let var_0 = vec4<bool>(true == !global1.e.x, true, select(!global1.e.x, false, true || (4294967295u <= u_input.d)) && !global0.x, global0.x);
    let var_1 = firstLeadingBit(func_1(-24442i, _wgslsmith_mult_vec2_i32(abs(global1.d.zz), ~u_input.c), global1.d, Struct_1(-global1.b, global1.a, select(global0.x, true, var_0.x), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), global1.e))) | (global1.a & 0i);
    global3 = all(!select(!select(vec2<bool>(var_0.x, global0.x), var_0.zz, false), vec2<bool>(true, true), global0.xy));
    return ~min(vec3<i32>(global1.d.x, 51215i & ~u_input.c.x, global1.b & _wgslsmith_sub_i32(var_1, -44793i)), vec3<i32>(select(var_1, _wgslsmith_div_i32(1i, global1.a), true), -22604i, ~(~global1.b)));
}

fn func_4(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = u_input.b;
    global2 = arg_2.a;
    var var_1 = ~global1.d.yz;
    var var_2 = arg_2;
    global1 = Struct_1(18289i, i32(-1i) * -58062i, !(!(_wgslsmith_div_u32(var_0.x, 1u) < ~u_input.e)), global1.d, vec2<bool>(global0.x, !(!(var_2.e.x && false))));
    return -u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 24750i;
    let var_0 = Struct_1(_wgslsmith_add_i32(global1.b, u_input.c.x), ~26661i, any(!global0.zx), vec3<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(u_input.c.x), 2147483647i, global1.a | 1i, func_1(u_input.c.x, vec2<i32>(-9258i, global1.a), vec3<i32>(1i, global1.d.x, global1.d.x), Struct_1(u_input.c.x, -35951i, false, global1.d, global1.e))), select(vec4<i32>(49717i, global1.a, -14424i, 15807i) << (u_input.b % vec4<u32>(32u)), vec4<i32>(30172i, u_input.c.x, u_input.c.x, -53863i) << (u_input.b % vec4<u32>(32u)), global1.c || false)), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -193f, -471f, -964f))), _wgslsmith_dot_vec3_u32(u_input.b.wwx, u_input.b.wyx >> (vec3<u32>(4294967295u, u_input.b.x, u_input.d) % vec3<u32>(32u))), Struct_1(u_input.c.x, u_input.c.x, false, vec3<i32>(global1.a, global1.a, 7845i), !global1.e), Struct_1(-2147483647i, -u_input.c.x, global1.e.x, func_3(), vec2<bool>(global0.x, global1.c)))), global1.e);
    let var_1 = -(~var_0.b) < -2147483647i;
    global3 = var_1 || true;
    global0 = vec3<bool>(all(!(!vec3<bool>(global0.x, true, false))), !(!(global0.x & (u_input.d <= 40891u))), global1.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1413f, 2020f)) * _wgslsmith_f_op_f32(min(154f, -1002f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -366f), -561f)), -156f, -1645f) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-324f, -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1230f, 704f))), _wgslsmith_f_op_f32(-1184f - _wgslsmith_f_op_f32(step(-1080f, -2250f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1000f, -566f, global0.x)), _wgslsmith_f_op_f32(trunc(-174f)))))), ~(~0u), (_wgslsmith_sub_u32(4294967295u, min(0u, 1u)) << (~u_input.d % 32u)) & 18137u, 508f, ~max(abs(~u_input.a), ~(~u_input.a)));
}

