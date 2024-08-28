struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(-1226i, 10335u, vec2<u32>(26116u, 0u), vec2<f32>(-1279f, -149f)), Struct_1(i32(-2147483648), 1u, vec2<u32>(4752u, 4294967295u), vec2<f32>(-420f, -667f)), Struct_1(-753i, 4294967295u, vec2<u32>(0u, 59606u), vec2<f32>(440f, 838f)), Struct_1(i32(-2147483648), 46165u, vec2<u32>(1480u, 38292u), vec2<f32>(-356f, -1418f)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> u32 {
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    let var_0 = _wgslsmith_div_u32(abs(_wgslsmith_div_u32(~(~51329u), _wgslsmith_mod_u32(arg_1.c.x, ~arg_1.b))), 0u);
    var var_1 = (~(~vec2<u32>(29229u, var_0)) << (arg_1.c % vec2<u32>(32u))) ^ ~(~(~arg_1.c));
    let var_2 = vec2<i32>(_wgslsmith_mult_i32(arg_1.a ^ _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a, -1i, 0i), firstTrailingBit(vec3<i32>(u_input.a.x, 0i, 2147483647i))), arg_1.a), 2147483647i);
    return reverseBits(~(~(~(~7052u))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: u32) -> u32 {
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    var var_0 = global0[_wgslsmith_index_u32(0u, 4u)];
    var_0 = arg_1;
    return countOneBits(func_1(_wgslsmith_f_op_f32(f32(-1f) * -970f), global0[_wgslsmith_index_u32(1u, 4u)]));
}

fn func_2() -> vec3<bool> {
    let var_0 = _wgslsmith_mult_u32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -449f), _wgslsmith_f_op_f32(ceil(206f)), _wgslsmith_f_op_f32(f32(-1f) * -2063f))), Struct_1(_wgslsmith_mod_i32(-160i, u_input.a.x) >> (1u % 32u), 43292u, ~vec2<u32>(69026u, 489u), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-532f, 443f)))), 127561u), reverseBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(67428u, 4294967295u, 59147u, 0u), vec4<u32>(0u, 1u, 4294967295u, 36995u))) ^ 40309u);
    var var_1 = Struct_1(73009i, countOneBits(_wgslsmith_mod_u32(~0u, var_0) | _wgslsmith_add_u32(var_0, 1u)), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0, ~var_0 | _wgslsmith_clamp_u32(4294967295u, 21268u, var_0)), ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, var_0), vec2<u32>(var_0, var_0)))), vec2<f32>(1f, 1f));
    var_1 = Struct_1(_wgslsmith_mult_i32(1i, reverseBits(~_wgslsmith_mult_i32(1i, -1i))), 0u, ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, var_0, var_1.c.x), ~vec4<u32>(4294967295u, 0u, var_1.b, 0u)), ~60326u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.d.x, var_1.d.x), var_1.d), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_1.d), _wgslsmith_f_op_vec2_f32(-var_1.d))))));
    var var_2 = vec3<f32>(var_1.d.x, _wgslsmith_f_op_f32(2023f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.x + var_1.d.x))), 733f);
    var var_3 = global0[_wgslsmith_index_u32(17154u, 4u)];
    return vec3<bool>(any(vec2<bool>(all(vec2<bool>(true, true)), false | (var_1.b <= 19652u))), !(var_1.c.x < ~var_3.b) | (true || all(vec3<bool>(true, true, true))), select(any(select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), true)), select(_wgslsmith_f_op_f32(f32(-1f) * -642f) <= _wgslsmith_f_op_f32(-441f * var_1.d.x), true, all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), true))), true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    var var_0 = (select(vec2<u32>(1u, 1u), ~(~vec2<u32>(46861u, 1u)), any(vec2<bool>(true, true))) & ~vec2<u32>(1u, ~59744u)) & ~_wgslsmith_add_vec2_u32(vec2<u32>(~25437u, _wgslsmith_mod_u32(25683u, 24343u)), vec2<u32>(func_1(-1846f, Struct_1(2147483647i, 0u, vec2<u32>(37741u, 0u), vec2<f32>(470f, -1102f))), 9729u));
    var var_1 = func_2();
    let var_2 = global0[_wgslsmith_index_u32(var_0.x, 4u)];
    var_0 = var_2.c;
    var_0 = countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(~(~var_0.x), firstLeadingBit(select(var_2.c.x, 1u, var_1.x))), abs(var_2.c), vec2<u32>(~var_2.c.x, ~var_2.b)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.wzy, _wgslsmith_clamp_vec2_i32(-firstTrailingBit(vec2<i32>(var_2.a, u_input.a.x)), u_input.a.zy, _wgslsmith_mod_vec2_i32(~u_input.a.zx, ~vec2<i32>(-19537i, 4658i) << (select(vec2<u32>(var_2.b, var_2.c.x), var_2.c, var_1.yz) % vec2<u32>(32u)))));
}

