struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 23>;

var<private> global1: f32;

var<private> global2: Struct_2;

var<private> global3: array<i32, 11>;

var<private> global4: array<vec3<i32>, 30>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.a.x));
    var var_1 = global4[_wgslsmith_index_u32(1u, 30u)];
    return global2.b.a.x;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: f32) -> f32 {
    global3 = array<i32, 11>();
    global0 = array<vec3<bool>, 23>();
    global4 = array<vec3<i32>, 30>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))))));
    let var_1 = countOneBits(~_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b, u_input.b, 0u), ~vec3<u32>(u_input.b, 51239u, 5272u)), vec3<u32>(u_input.b, 0u << (1u % 32u), countOneBits(u_input.b))));
    return _wgslsmith_f_op_f32(abs(var_0.a.x));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(global2.a.a.x + _wgslsmith_div_f32(global2.c.a.x, _wgslsmith_f_op_f32(func_4(-635f, true, _wgslsmith_f_op_f32(func_3())))));
    let var_1 = global2.e;
    let var_2 = global2.a;
    global0 = array<vec3<bool>, 23>();
    let var_3 = ~abs(~(~(u_input.b | 1u)));
    return Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(281f, var_2.a.x))), var_2.a.x)), Struct_1(var_1.a), global2.a, _wgslsmith_mult_i32(-global2.d >> (1u % 32u), global2.d), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(var_2.a.x, false, global2.e.a.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.c.a.x - var_1.a.x))))));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    var var_1 = 4294967295u;
    global2 = Struct_2(var_0.e, global2.b, var_0.a, -10617i, var_0.b);
    var var_2 = vec2<u32>(1u, _wgslsmith_mult_u32(~firstTrailingBit(4294967295u), reverseBits(countOneBits(~u_input.b))));
    let var_3 = var_0.e;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.b.a.x, _wgslsmith_f_op_f32(step(global2.a.a.x, 1000f)))), global2.e.a.x);
    global2 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(abs(-648f)), -320f)), global2.e, global2.c, global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(~u_input.b, 63275u)) & u_input.b, 11u)], func_1());
    var var_1 = 41385u;
    global0 = array<vec3<bool>, 23>();
    let var_2 = 753f;
    var var_3 = _wgslsmith_mult_u32(1u, ~_wgslsmith_clamp_u32(58930u, reverseBits(select(1u, u_input.b, true)), _wgslsmith_mod_u32(select(0u, u_input.b, true), u_input.b)));
    let var_4 = !(!global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~1u), 1u), 23u)]);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(770f * -574f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -388f)))), global4[_wgslsmith_index_u32(53013u, 30u)], _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(func_4(-684f, true, var_2))))), func_2().c.a), abs(abs(min(select(vec3<u32>(40758u, u_input.b, 0u), vec3<u32>(1u, 0u, 6894u), vec3<bool>(false, true, true)), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 17014u, 22716u), vec3<u32>(u_input.b, u_input.b, u_input.b))))), ~u_input.b);
}

