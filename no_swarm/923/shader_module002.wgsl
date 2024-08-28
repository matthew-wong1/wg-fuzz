struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
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

var<private> global0: array<i32, 19> = array<i32, 19>(1483i, 2147483647i, i32(-2147483648), i32(-2147483648), -10949i, 27387i, i32(-2147483648), 2147483647i, 16523i, 31928i, i32(-2147483648), 1i, -1i, -87090i, 0i, -105420i, 35419i, 0i, 0i);

var<private> global1: array<i32, 23>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> bool {
    var var_0 = true;
    global0 = array<i32, 19>();
    global0 = array<i32, 19>();
    let var_1 = any(!select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true)), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), global0[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x), 19u)] > (u_input.a.x & global0[_wgslsmith_index_u32(u_input.b.x, 19u)])));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -497f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-230f, _wgslsmith_f_op_f32(f32(-1f) * -2013f))))), firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.b.x, 21097u) | 1u, 4294967295u)), vec2<i32>(u_input.c.x, select(firstTrailingBit(30966i), firstLeadingBit(_wgslsmith_mod_i32(17826i, -5877i)), true)), Struct_1(var_1, vec4<bool>(select(global1[_wgslsmith_index_u32(u_input.b.x, 23u)], u_input.a.x, true) >= u_input.a.x, var_1, true, false)));
    return false;
}

fn func_2() -> f32 {
    global0 = array<i32, 19>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1238f * 537f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1747f + -1941f), -1886f))))), u_input.b.x, u_input.c.zy, Struct_1(func_3() != true, select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)), true), select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, false, false)), vec4<bool>(select(true, true, true), true, false, true))));
    global0 = array<i32, 19>();
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(1f)) - _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(-var_0.a))), 58825u, Struct_1(any(!var_0.d.b) && (var_0.a <= _wgslsmith_div_f32(-1000f, var_0.a)), select(!select(vec4<bool>(false, true, var_0.d.b.x, var_0.d.a), var_0.d.b, var_0.d.b.x), var_0.d.b, select(select(vec4<bool>(false, var_0.d.b.x, false, var_0.d.b.x), vec4<bool>(var_0.d.a, true, true, false), vec4<bool>(true, var_0.d.a, true, var_0.d.b.x)), select(var_0.d.b, var_0.d.b, vec4<bool>(false, var_0.d.a, var_0.d.b.x, var_0.d.b.x)), select(vec4<bool>(var_0.d.b.x, true, var_0.d.a, var_0.d.b.x), var_0.d.b, var_0.d.b)))), 43565i);
    var_1 = Struct_3(_wgslsmith_f_op_f32(exp2(var_1.a)), u_input.b.x, var_0.d, -(u_input.a.x << (u_input.b.x % 32u)));
    return _wgslsmith_f_op_f32(-var_1.a);
}

fn func_1() -> Struct_3 {
    let var_0 = global0[_wgslsmith_index_u32(~u_input.b.x, 19u)];
    global0 = array<i32, 19>();
    let var_1 = Struct_2(115f, 11420u, ~vec2<i32>(_wgslsmith_mult_i32(67807i, 1i), firstLeadingBit(-24462i)), Struct_1(true, vec4<bool>(true, true, true, true)));
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1507f, var_1.a, var_1.d.a)), var_1.a))), var_1.a, _wgslsmith_f_op_f32(func_2()), var_1.a)));
    let var_3 = abs(abs(firstLeadingBit(_wgslsmith_mult_u32(~u_input.b.x, 80764u))));
    return Struct_3(var_2.x, u_input.b.x, var_1.d, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = ~_wgslsmith_clamp_u32(62195u, ~(~u_input.b.x | ~var_0.b), ~var_0.b);
    let var_2 = abs(i32(-1i) * -9204i);
    global1 = array<i32, 23>();
    global0 = array<i32, 19>();
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-282f + -802f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~10659u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3.x))));
}

