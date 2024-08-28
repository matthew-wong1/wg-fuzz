struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1081f, -21612i, vec4<f32>(-998f, -461f, 438f, 201f), true, 0u);

var<private> global1: Struct_2;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: u32) -> i32 {
    global0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -262f), i32(-1i) * -2147483647i, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.c.x, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(min(1342f, -321f))), _wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-global0.c.x)), _wgslsmith_div_vec4_f32(global0.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, 1293f, -359f, global0.a) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1077f, global0.a, global0.a, 1000f) + vec4<f32>(518f, 617f, global0.c.x, global0.a)))), global0.d)), !global0.d, arg_2 | _wgslsmith_add_u32(arg_1, _wgslsmith_mod_u32(~global1.a, max(global0.e, 4294967295u))));
    global0 = Struct_1(global0.a, ~_wgslsmith_mult_i32(-33776i, 7473i), vec4<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(f32(-1f) * -612f), _wgslsmith_f_op_f32(-global0.a), 592f), !any(!vec4<bool>(global0.d, true, global0.d, true)), _wgslsmith_mult_u32(arg_2 >> (u_input.c.x % 32u), global1.a));
    return 20436i;
}

fn func_3(arg_0: vec4<i32>, arg_1: f32) -> vec3<bool> {
    var var_0 = ~max(_wgslsmith_div_vec2_u32(u_input.c.zx, u_input.c.yx), firstTrailingBit(~u_input.c.xx));
    let var_1 = global0.a;
    global0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-326f - _wgslsmith_f_op_f32(f32(-1f) * -343f)))), 1000f, false)), reverseBits(arg_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1114f * -359f)), 678f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(153f, -563f)), _wgslsmith_f_op_f32(arg_1 - arg_1)))) - vec4<f32>(arg_1, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(arg_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x + arg_1)), global0.a)), true, abs(18344u));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_dot_vec4_i32(arg_0 ^ abs(firstTrailingBit(vec4<i32>(arg_0.x, 40461i, 28697i, u_input.b))), arg_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.c - vec4<f32>(303f, 1f, _wgslsmith_f_op_f32(step(arg_1, -1000f)), arg_1))), select(!(!global0.d) == !(arg_1 >= global0.c.x), global0.d, global0.d), ~u_input.a & max(~(~global1.a), ~global1.a));
    let var_3 = Struct_2(var_0.x);
    return select(select(!(!(!vec3<bool>(true, true, global0.d))), !vec3<bool>(all(vec2<bool>(true, false)), true, var_2.d), vec3<bool>(true, true, false)), !(!(!(!vec3<bool>(var_2.d, true, true)))), all(!(!vec3<bool>(global0.d, global0.d, global0.d))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: vec4<bool>) -> vec4<u32> {
    var var_0 = func_3(-vec4<i32>(-arg_0.b, i32(-1i) * -2147483647i, _wgslsmith_mult_i32(60859i, global0.b), ~u_input.b) ^ ~vec4<i32>(-11028i, global0.b, func_2(vec4<i32>(2147483647i, u_input.b, arg_0.b, 0i), global0.e, arg_0.e), _wgslsmith_sub_i32(arg_0.b, 1i)), 1432f);
    var_0 = vec3<bool>(var_0.x, all(arg_3.yxz), -reverseBits(-56368i ^ u_input.b) >= global0.b);
    var var_1 = abs(arg_0.b);
    let var_2 = true & global0.d;
    let var_3 = arg_1;
    return _wgslsmith_div_vec4_u32(arg_2, vec4<u32>(_wgslsmith_mod_u32(~(global0.e << (global0.e % 32u)), 1u), global1.a, ~4294967295u, ~_wgslsmith_div_u32(19241u, 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a, ~(-13018i >> (u_input.c.x % 32u)), vec4<f32>(global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(633f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x + -200f)), _wgslsmith_f_op_f32(-global0.c.x)), !(!(!global0.d)), ~(~u_input.a));
    global0 = Struct_1(-1648f, -2147483647i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.c * _wgslsmith_f_op_vec4_f32(global0.c + global0.c)))), true, _wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.c.x, u_input.c.x, 1u, u_input.a) << (~vec4<u32>(1u, 1u, global1.a, 4294967295u) % vec4<u32>(32u))), func_1(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -222f), _wgslsmith_add_i32(1i, 4990i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, 1905f, global0.a, global0.c.x)), global0.d, 0u), Struct_2(1u), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.e, 82202u, 43077u, global0.e), min(vec4<u32>(global0.e, global1.a, 35072u, global0.e), vec4<u32>(global1.a, 1u, 33447u, 4294967295u))), !(!vec4<bool>(true, global0.d, global0.d, global0.d)))));
    var var_0 = func_3(vec4<i32>(abs(u_input.b), 56712i, u_input.b, global0.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a), global0.c.x))).x;
    global0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(global0.a + global0.a)), _wgslsmith_f_op_f32(-global0.a)), global0.a)), -reverseBits(abs(~0i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -161f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-247f)), _wgslsmith_f_op_f32(-166f + global0.a))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.c.x * global0.c.x)))) * global0.c), false, global0.e);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(global1.a, 45479u), ~u_input.c.zy)), -vec4<i32>(select(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.b, u_input.b), vec2<i32>(global0.b, global0.b)), ~global0.b, global0.d), i32(-1i) * -17569i, _wgslsmith_sub_i32(abs(u_input.b), _wgslsmith_div_i32(2517i, u_input.b)), 35294i));
}

