struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 32>;

var<private> global1: u32;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>) -> vec3<f32> {
    var var_0 = ~global0[_wgslsmith_index_u32(u_input.a, 32u)];
    return vec3<f32>(299f, -881f, _wgslsmith_f_op_f32(-1f));
}

fn func_3() -> f32 {
    var var_0 = Struct_3(Struct_1(u_input.a, ~vec2<u32>(~u_input.a, 7020u)), Struct_2(-1262f, Struct_1(firstTrailingBit(u_input.a), _wgslsmith_mult_vec2_u32(~vec2<u32>(0u, u_input.a), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 61591u), vec2<u32>(48493u, 4294967295u))))));
    global1 = 9434u;
    let var_1 = Struct_5(select(select(vec3<bool>(false, true, var_0.b.a == var_0.b.a), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), !select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), true), false));
    let var_2 = var_0.a;
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(269f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b.a), -276f)), _wgslsmith_f_op_f32(trunc(var_0.b.a))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.a, var_0.b.a)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1147f, var_0.b.a)))))));
    return _wgslsmith_f_op_f32(ceil(var_3.x));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_4) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec2<bool>((0u > arg_1) && true, true), arg_2.a.b)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()));
    global0 = array<vec3<i32>, 32>();
    global0 = array<vec3<i32>, 32>();
    let var_2 = Struct_3(Struct_1(u_input.a, arg_2.a.b), Struct_2(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x)))), Struct_1(~(u_input.a ^ 1u), max(~arg_2.a.b, reverseBits(arg_2.a.b)))));
    return _wgslsmith_add_i32(~reverseBits(arg_0), min(firstTrailingBit(2147483647i), -_wgslsmith_sub_i32(abs(arg_0), abs(-22297i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1356f)), _wgslsmith_f_op_f32(abs(-1061f)), true)))), 142f));
    var var_1 = ~_wgslsmith_mult_i32(1i, ~_wgslsmith_div_i32(2147483647i, 1i));
    var_1 = func_1(2147483647i, u_input.a, Struct_4(Struct_1(~32793u, ~(vec2<u32>(u_input.a, 0u) ^ vec2<u32>(88146u, u_input.a)))));
    global1 = ~u_input.a;
    global1 = _wgslsmith_add_u32(u_input.a, 4294967295u);
    let var_2 = Struct_3(Struct_1(select(firstLeadingBit(select(u_input.a, 4294967295u, false)), ~u_input.a, true), ~_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(44199u, 4294967295u), vec2<u32>(u_input.a, 4294967295u)), ~vec2<u32>(0u, u_input.a))), Struct_2(-321f, Struct_1(4294967295u, ~(~vec2<u32>(u_input.a, 44077u)))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(~(~u_input.a), var_2.b.b.a, 1u), -12245i, ~abs(vec2<i32>(-1i) * -vec2<i32>(0i, 20441i)));
}

