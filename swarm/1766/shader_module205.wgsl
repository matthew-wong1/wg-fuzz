struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec3<i32>,
    d: vec4<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = !(!vec4<bool>(false, true & all(vec4<bool>(true, false, false, false)), true, all(vec3<bool>(true, true, true)) && any(vec2<bool>(true, true))));
    var var_1 = Struct_1(abs(vec2<i32>(-1i) * -vec2<i32>(u_input.a.x, 1i)));
    return -677f;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-424f, -315f, 638f, 2509f) * vec4<f32>(545f, -1167f, 1000f, -1043f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-625f, -949f, 298f, -941f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-327f, 102f, 255f, 1044f))))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1918f - 1047f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -931f), -1328f)), _wgslsmith_div_f32(-892f, 1697f), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(step(1130f, 477f))))))));
    var var_1 = ~_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(33451u, u_input.c, u_input.b, u_input.c)), vec4<u32>(firstTrailingBit(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, 21458u), vec4<u32>(u_input.c, 1u, u_input.c, u_input.b)), abs(u_input.c), u_input.b)) << (countOneBits(vec4<u32>(~(~u_input.c), 4294967295u, (33248u & u_input.c) ^ u_input.b, 0u)) % vec4<u32>(32u));
    let var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1474f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(trunc(-656f))), 2478f, var_0.x);
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1463f - var_0.x), var_2.x, _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(select(var_0.x, 558f, false))), _wgslsmith_f_op_f32(f32(-1f) * -372f))), vec4<f32>(1874f, -242f, -2118f, var_0.x));
    let var_4 = ~(_wgslsmith_div_u32(_wgslsmith_mod_u32(var_1.x, var_1.x), _wgslsmith_clamp_u32(~var_1.x, _wgslsmith_sub_u32(131271u, u_input.c), u_input.c)) >> (u_input.b % 32u));
    return Struct_1(u_input.a.zy);
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec4<u32>) -> f32 {
    global0 = u_input.c;
    let var_0 = 1000f;
    global0 = 11732u;
    var var_1 = Struct_4(vec4<i32>(-1i, 1i, ~select(~(-14608i), firstLeadingBit(-2147483647i), false), -14083i), Struct_2(Struct_1(u_input.a.yz), Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(-16836i, -36203i), vec2<i32>(-1i, 1i) << (arg_2.ww % vec2<u32>(32u))))), arg_1.e.a, arg_1.a.x);
    let var_2 = countOneBits((~_wgslsmith_mult_u32(arg_1.d.x, 4294967295u) ^ ~23543u) >> (_wgslsmith_mod_u32(~min(32743u, 8164u), min(~arg_1.d.x, 0u & u_input.b)) % 32u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-675f, var_0, all(select(arg_1.a.wx, vec2<bool>(true, false), arg_1.a.yy)) != (79782u != _wgslsmith_sub_u32(arg_1.d.x, u_input.b)))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1200f * 533f) - var_0), var_0) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - var_0)) + var_0)));
}

fn func_1(arg_0: bool) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(true, Struct_3(vec4<bool>(false, true, true, !arg_0), Struct_2(func_2(), func_2()), u_input.a, _wgslsmith_sub_vec4_u32(~vec4<u32>(0u, u_input.b, u_input.c, u_input.c), ~vec4<u32>(32704u, u_input.c, u_input.c, u_input.c)), Struct_2(func_2(), func_2())), _wgslsmith_mod_vec4_u32(~vec4<u32>(33444u, u_input.b, u_input.c, 52221u) & ~vec4<u32>(4294967295u, 4294967295u, 19550u, 1u), vec4<u32>(4294967295u, u_input.b >> (0u % 32u), u_input.b, _wgslsmith_mod_u32(4294967295u, 4294967295u))))));
    return vec2<i32>(-5562i, min(~(-u_input.a.x & (u_input.a.x >> (u_input.b % 32u))), _wgslsmith_mod_i32(reverseBits(2147483647i), _wgslsmith_mult_i32(_wgslsmith_mult_i32(-35791i, -20625i), ~1i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(_wgslsmith_mult_vec2_i32(func_1(any(vec4<bool>(false, false, false, false))), u_input.a.xx ^ u_input.a.xx)), func_2());
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, ~vec2<u32>(abs(u_input.c), 21391u), vec3<i32>(firstLeadingBit(2147483647i), var_0.b.a.x, var_0.b.a.x), countOneBits(u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-657f * _wgslsmith_f_op_f32(592f + -1000f)))));
}

