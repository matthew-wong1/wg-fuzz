struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25>;

var<private> global1: vec2<f32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32) -> vec4<i32> {
    var var_0 = ~vec4<u32>(max(~firstLeadingBit(1u), ~1u >> (min(0u, 54887u) % 32u)), 1u, max(~select(16361u, 4294967295u, true), firstLeadingBit(_wgslsmith_add_u32(26941u, 29916u))), ~(~firstTrailingBit(45236u)));
    var var_1 = vec2<u32>(_wgslsmith_sub_u32(1u & (var_0.x >> (reverseBits(var_0.x) % 32u)), ~(var_0.x & 0u)), var_0.x);
    var_1 = firstTrailingBit(~vec2<u32>(_wgslsmith_sub_u32(var_0.x, var_0.x) >> (reverseBits(var_0.x) % 32u), 657u));
    return ((-vec4<i32>(-11596i, arg_0, 1i, -1i) >> (~firstTrailingBit(vec4<u32>(var_1.x, var_1.x, var_1.x, 1u)) % vec4<u32>(32u))) << (~countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(26806u, var_1.x, var_1.x, 60957u), vec4<u32>(1u, var_0.x, var_0.x, 18122u))) % vec4<u32>(32u))) >> (~(~abs(vec4<u32>(16679u, var_1.x, var_0.x, var_1.x))) % vec4<u32>(32u));
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_2, 25>();
    let var_0 = global1.x;
    let var_1 = abs(vec3<u32>(6671u, 62217u << (abs(~4294967295u) % 32u), firstLeadingBit(12227u)));
    global0 = array<Struct_2, 25>();
    global0 = array<Struct_2, 25>();
    return Struct_1(~_wgslsmith_clamp_vec4_i32(func_3(2147483647i), vec4<i32>(u_input.a, -1i, u_input.a, u_input.a) | vec4<i32>(u_input.a, 0i, -17891i, u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -40999i, u_input.a, -2147483647i), vec4<i32>(u_input.a, -15737i, 1i, u_input.a))) | -vec4<i32>(-1i, 1i, u_input.a, -1i), any(vec3<bool>(0u <= var_1.x, true, true)) || !any(vec2<bool>(true, true)), var_1.x);
}

fn func_1(arg_0: f32) -> bool {
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -109f) + vec2<f32>(arg_0, -122f))))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1502f, arg_0) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, global1.x) * vec2<f32>(arg_0, 542f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-486f, arg_0)))));
    global0 = array<Struct_2, 25>();
    var var_0 = Struct_2(~_wgslsmith_dot_vec4_u32(select(~vec4<u32>(81717u, 64391u, 1u, 1u), vec4<u32>(1u, 4294967295u, 41269u, 1u), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true))), vec4<u32>(1u, 4294967295u, 1u, _wgslsmith_mod_u32(4294967295u, 35399u))), func_2(), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_1 = ~vec4<u32>(var_0.b.c, ~reverseBits(_wgslsmith_mult_u32(var_0.a, 4294967295u)), var_0.b.c, firstTrailingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(99502u, 1u), vec2<u32>(var_0.b.c, var_0.a))));
    global0 = array<Struct_2, 25>();
    return var_0.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(false, true), select(vec2<bool>(func_1(-520f), func_1(global1.x)), select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, true)), !func_2().b), !(!vec2<bool>(any(vec3<bool>(false, false, false)), false)));
    var var_1 = any(vec2<bool>(true, all(!vec3<bool>(var_0.x, var_0.x, var_0.x))));
    var var_2 = Struct_3(Struct_2(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(62739u, 0u)), func_2(), global1.x), func_2(), ~vec2<u32>(1u, 1u), _wgslsmith_mult_vec2_i32(~abs(vec2<i32>(-1i, -8705i)), (-vec2<i32>(u_input.a, 0i) >> (select(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), var_0.x) % vec2<u32>(32u))) & -(vec2<i32>(u_input.a, u_input.a) << (vec2<u32>(5886u, 70623u) % vec2<u32>(32u)))), ~(~(~vec2<u32>(0u, 19073u))));
    var var_3 = Struct_3(Struct_2(abs(abs(~var_2.e.x)), Struct_1(_wgslsmith_add_vec4_i32(-var_2.b.a, _wgslsmith_mod_vec4_i32(var_2.b.a, vec4<i32>(u_input.a, 2147483647i, var_2.d.x, u_input.a))), var_2.a.b.b, ~66742u ^ min(454u, var_2.b.c)), 669f), var_2.b, var_2.c, var_2.b.a.zz, var_2.e);
    var_3 = Struct_3(var_3.a, var_3.a.b, abs(~select(vec2<u32>(var_3.b.c, var_3.b.c), var_3.c, var_2.b.b) ^ _wgslsmith_add_vec2_u32(var_2.e, select(var_2.e, vec2<u32>(83637u, var_3.b.c), var_2.a.b.b))), _wgslsmith_mod_vec2_i32(var_3.d, _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(u_input.a, 23389i), 5576i), ~(~vec2<i32>(1i, var_2.d.x)))), ~(vec2<u32>(4294967295u, abs(var_2.b.c)) << ((~var_2.c >> (var_3.c % vec2<u32>(32u))) % vec2<u32>(32u))));
    let var_4 = abs(var_3.c);
    global1 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-268f - var_2.a.c) + _wgslsmith_f_op_f32(abs(var_2.a.c))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1640f)), _wgslsmith_f_op_f32(global1.x - -839f))), _wgslsmith_f_op_f32(179f + var_3.a.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(global1.x, _wgslsmith_div_f32(var_2.a.c, var_3.a.c)))))));
    var var_5 = select(0i, -(~(~(0i ^ var_3.a.b.a.x))), false);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_clamp_vec2_i32(abs(-var_3.d), vec2<i32>(-1i) * -vec2<i32>(0i, u_input.a), vec2<i32>(func_3(-19781i).x & select(var_2.b.a.x, 2147483647i, false), u_input.a)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-753f + var_2.a.c) * _wgslsmith_f_op_f32(1000f + var_3.a.c)) - -775f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - var_3.a.c) + _wgslsmith_f_op_f32(648f * var_2.a.c))), -1572f, var_2.a.c), ~var_2.e.x);
}

