struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: i32,
    d: bool,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 2>;

var<private> global1: array<vec3<bool>, 8>;

var<private> global2: i32;

var<private> global3: array<Struct_3, 11>;

var<private> global4: i32;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    let var_0 = vec2<bool>(true, true);
    let var_1 = Struct_1(arg_0.x, _wgslsmith_div_vec3_u32(~max(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(52996u, 0u, 4294967295u)), ~vec3<u32>(4294967295u, u_input.a, u_input.a) ^ vec3<u32>(89724u, u_input.a, 0u)) ^ (_wgslsmith_mod_vec3_u32(abs(vec3<u32>(u_input.a, 4294967295u, 0u)), ~vec3<u32>(u_input.a, 11871u, u_input.a)) << (vec3<u32>(~u_input.a, ~28040u, ~u_input.a) % vec3<u32>(32u))));
    global4 = -_wgslsmith_mult_i32(_wgslsmith_add_i32(24459i, firstTrailingBit(-1i >> (u_input.a % 32u))), _wgslsmith_clamp_i32(~1i, 1i, abs(-39384i)));
    global0 = array<vec2<u32>, 2>();
    var var_2 = 43967u;
    return 0u;
}

fn func_2(arg_0: f32) -> Struct_3 {
    var var_0 = Struct_5(global1[_wgslsmith_index_u32(func_3(vec3<f32>(-889f, _wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_f32(1375f - arg_0))), 8u)]);
    global1 = array<vec3<bool>, 8>();
    var var_1 = ~vec2<u32>(~_wgslsmith_add_u32(u_input.a, 0u), ~max(1u << (1u % 32u), ~26691u));
    var var_2 = true;
    return global3[_wgslsmith_index_u32(4294967295u, 11u)];
}

fn func_1(arg_0: u32) -> Struct_3 {
    let var_0 = global0[_wgslsmith_index_u32(52221u, 2u)];
    global1 = array<vec3<bool>, 8>();
    global4 = reverseBits(-1i);
    var var_1 = 2147483647i;
    global1 = array<vec3<bool>, 8>();
    return func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-2221f * _wgslsmith_f_op_f32(trunc(-534f)))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-2528f)), _wgslsmith_f_op_f32(f32(-1f) * -507f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.a);
    let var_1 = -abs(countOneBits(~vec3<i32>(34866i, -1i, var_0.c)));
    var var_2 = Struct_4(vec2<i32>(var_1.x, func_1(_wgslsmith_add_u32(u_input.a, var_0.a.c.x)).b));
    var var_3 = vec2<bool>(var_0.d, 0i == var_0.b);
    var var_4 = -2147483647i;
    let var_5 = _wgslsmith_mod_u32(2585u << (_wgslsmith_mod_u32(67754u, u_input.a) % 32u), ~4294967295u & _wgslsmith_sub_u32(~u_input.a, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(~31545u, -1845f, vec2<i32>(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(5003i, var_2.a.x, var_0.b)) & -var_1, -vec3<i32>(var_2.a.x, var_2.a.x, var_1.x)), countOneBits(1i)));
}

