struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(-1000f, 637u, Struct_3(Struct_2(1692f), Struct_2(-535f)));

var<private> global1: u32;

var<private> global2: array<vec3<f32>, 2> = array<vec3<f32>, 2>(vec3<f32>(-354f, 166f, 834f), vec3<f32>(-1244f, -225f, 498f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    global0 = Struct_4(-554f, 40442u, Struct_3(global0.c.a, Struct_2(global0.a)));
    global2 = array<vec3<f32>, 2>();
    var var_0 = global0.c.a;
    var var_1 = Struct_1(-_wgslsmith_sub_i32(-24998i, -1i >> (global0.b % 32u)), -523f, (0u ^ global0.b) >> ((_wgslsmith_mod_u32(global0.b, ~global0.b) >> (76797u % 32u)) % 32u));
    var var_2 = Struct_3(global0.c.a, Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-173f)))))));
    return 53278i;
}

fn func_2(arg_0: vec3<u32>) -> Struct_3 {
    global1 = 4294967295u;
    let var_0 = global0.c;
    let var_1 = _wgslsmith_mult_i32(func_3(), -_wgslsmith_dot_vec4_i32(select(vec4<i32>(-43510i, 1i, 0i, 0i), vec4<i32>(-1i, 1i, 1i, 2147483647i), true), ~(-vec4<i32>(-2147483647i, -2570i, -1i, -46451i))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.b.a))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -823f)))));
    global2 = array<vec3<f32>, 2>();
    return global0.c;
}

fn func_1() -> Struct_4 {
    var var_0 = firstTrailingBit(vec4<i32>(reverseBits(2147483647i), 13377i, -3752i, -countOneBits(1i)));
    global0 = Struct_4(global0.c.a.a, ~0u, func_2(abs(max(vec3<u32>(global0.b, 40585u, u_input.a.x) | vec3<u32>(u_input.a.x, 10970u, 0u), vec3<u32>(u_input.b, global0.b, global0.b)))));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.c.a.a + 492f), _wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-global0.a), 2500f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-494f, -1000f, -951f, global0.a), vec4<f32>(-1010f, -694f, 1000f, global0.a))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(234f, global0.c.a.a, 1399f, global0.c.a.a))))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.a, -701f, global0.a, -1364f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(336f, -1000f, 127f, -305f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(638f, -245f, 894f, -227f)))))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)));
    let var_3 = u_input.a ^ ~abs(~vec2<u32>(global0.b, u_input.b));
    return Struct_4(global0.a, ~0u, Struct_3(func_2(vec3<u32>(u_input.a.x, ~0u, ~0u)).a, Struct_2(global0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(~(-1i));
    var_0 = -11153i;
    let var_1 = func_1();
    var var_2 = Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.a.a - var_1.c.a.a)))), var_1.b >> (83146u % 32u), global0.c);
    var_0 = ~(~(-firstTrailingBit(~1i)));
    var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(430f))))), _wgslsmith_add_i32(-1i >> (var_2.b % 32u), 1i), _wgslsmith_mod_i32(_wgslsmith_sub_i32(-1i, func_3()), min(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, -1i, 23451i), firstLeadingBit(vec4<i32>(0i, -5828i, 13852i, -61007i))), 1i)));
}

