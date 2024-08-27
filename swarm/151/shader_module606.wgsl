struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: bool,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u, 643f, true);

var<private> global1: Struct_3;

var<private> global2: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true));

var<private> global3: bool = false;

var<private> global4: vec4<bool> = vec4<bool>(true, false, false, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec4<f32>, arg_3: u32) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(-global1.e.b);
    let var_1 = Struct_3(Struct_2(false), reverseBits(-15014i), any(vec2<bool>(true, arg_1)), global1.d, global1.e);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1274f, global1.e.b, global1.e.b) * vec4<f32>(global1.e.b, global1.e.b, 481f, -614f)) * _wgslsmith_f_op_vec4_f32(floor(arg_2)))) * vec4<f32>(global1.e.b, _wgslsmith_f_op_f32(-global1.e.b), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, -994f), -187f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global1.e.b, 313f))))));
    global4 = select(vec4<bool>(any(!vec4<bool>(false, arg_0.a, var_1.c, global0.c)) || (var_1.b >= 0i), false, true, true), vec4<bool>((true && global0.c) & false, all(global4.zxz), true, -(~14257i) > reverseBits(global1.b)), vec4<bool>(4294967295u >= (~global0.a << (global1.e.a % 32u)), any(select(vec2<bool>(true, true), global4.wx, select(global4.xy, global4.xw, false))), arg_1 || true, true));
    var_2 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1350f))) + var_2.x), -464f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(959f, _wgslsmith_f_op_f32(-var_1.e.b))) + var_1.e.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_2.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.x * -367f)))))));
    return _wgslsmith_f_op_vec2_f32(step(var_2.yx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.wx))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3) -> bool {
    global0 = Struct_1(31080u, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(788f - _wgslsmith_f_op_f32(round(global0.b))), _wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(trunc(273f)))))), global0.c);
    let var_0 = ~(~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_1.e.a), u_input.a.zx))));
    global2 = array<vec4<bool>, 2>();
    global2 = array<vec4<bool>, 2>();
    global1 = Struct_3(arg_1.a, -select(27321i, 2147483647i | (-2147483647i | arg_1.d.x), !(!arg_1.a.a)), global4.x, max(_wgslsmith_div_vec4_i32(select(global1.d, vec4<i32>(16506i, arg_1.b, u_input.c.x, 2147483647i), global1.c), global1.d), global1.d), Struct_1(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1107f)) + _wgslsmith_f_op_f32(select(global1.e.b, -304f, false)))), !(any(global2[_wgslsmith_index_u32(global0.a, 2u)]) || global0.c)));
    return true && (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-456f * arg_0.x))) + global0.b) >= -1249f);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_3(global1.a, -38462i, true && func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(global1.a, global4.x, vec4<f32>(1867f, -1063f, -174f, global0.b), u_input.a.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(752f, global1.e.b) - vec2<f32>(252f, -761f))), Struct_3(global1.a, -2147483647i, select(false, true, global0.c), global1.d, global1.e)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, -1i, u_input.c.x, _wgslsmith_mult_i32(u_input.c.x, 34917i)), vec4<i32>(~(~0i), ~_wgslsmith_sub_i32(u_input.c.x, -1i), ~firstLeadingBit(global1.d.x), global1.d.x)), Struct_1(4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-975f)) + 121f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(394f)), _wgslsmith_f_op_f32(global0.b + global1.e.b)))), true));
    let var_1 = var_0;
    global0 = var_0.e;
    global0 = Struct_1(abs(~(~global0.a)), _wgslsmith_f_op_f32(f32(-1f) * -1461f), true);
    global2 = array<vec4<bool>, 2>();
    return global1.a;
}

fn func_5(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(global0.b, 1000f), global1.e.b, _wgslsmith_f_op_f32(-global0.b))))))));
    let var_1 = max(~4294967295u, u_input.a.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b * var_0.x) + -482f), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(global1.e.b - 654f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-global1.e.b))));
    var_0 = vec3<f32>(_wgslsmith_div_f32(global1.e.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.x))))), global0.b, 1032f);
    global3 = global1.c;
    return global2[_wgslsmith_index_u32(14443u & ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a, global1.e.a, 56585u, 0u), u_input.a >> (vec4<u32>(19640u, global1.e.a, u_input.b, var_1) % vec4<u32>(32u)))), 2u)];
}

fn func_1(arg_0: i32, arg_1: i32) -> StorageBuffer {
    global3 = true;
    global0 = Struct_1(global0.a | ~(~(~global0.a)), -1973f, !any(func_5(func_2())));
    global1 = Struct_3(global1.a, _wgslsmith_sub_i32(-2147483647i, u_input.c.x), true, ~vec4<i32>(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, arg_0), u_input.c.zz)), global1.d.x, _wgslsmith_add_i32(-14788i, min(14838i, 19391i)), ~_wgslsmith_dot_vec2_i32(u_input.c.yx, global1.d.yz)), Struct_1(global1.e.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-849f + global1.e.b)) + _wgslsmith_f_op_vec2_f32(func_3(Struct_2(global0.c), 2147483647i > arg_0, _wgslsmith_div_vec4_f32(vec4<f32>(global1.e.b, 840f, global1.e.b, -1404f), vec4<f32>(-1143f, -1200f, 320f, -1775f)), 101010u)).x), all(!select(vec4<bool>(global0.c, false, true, global1.e.c), vec4<bool>(global4.x, global0.c, false, global1.a.a), global2[_wgslsmith_index_u32(0u, 2u)]))));
    global3 = any(vec3<bool>(global4.x, all(select(vec2<bool>(false, false), select(global4.zw, global4.yy, global4.xw), global4.yx)), false & select(global1.e.b < global1.e.b, true, arg_0 >= 18139i)));
    var var_0 = global1.a;
    return StorageBuffer(global1.e.b, select(0u, u_input.a.x, any(vec2<bool>(arg_0 >= arg_0, var_0.a && global1.e.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_i32(-1i, global1.b);
    var var_1 = _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.a.xy, ~u_input.a.yw >> (~(~vec2<u32>(1u, 0u)) % vec2<u32>(32u))), 32047u);
    var_0 = _wgslsmith_div_i32(9249i, ~abs(13128i));
    let x = u_input.a;
    s_output = func_1(min(u_input.c.x, 140i), ~(i32(-1i) * -1i));
}

