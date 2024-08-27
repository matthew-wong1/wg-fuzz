struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 10> = array<vec4<u32>, 10>(vec4<u32>(0u, 197u, 61056u, 1u), vec4<u32>(18664u, 3451u, 1u, 0u), vec4<u32>(1u, 48104u, 1u, 19621u), vec4<u32>(0u, 1u, 4294967295u, 0u), vec4<u32>(1u, 72115u, 12496u, 1u), vec4<u32>(108949u, 0u, 76752u, 2177u), vec4<u32>(11395u, 91910u, 1u, 32054u), vec4<u32>(0u, 38988u, 4294967295u, 74389u), vec4<u32>(49556u, 1u, 4294967295u, 17377u), vec4<u32>(87436u, 4294967295u, 1u, 4294967295u));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3) -> u32 {
    return u_input.d.x;
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec3<i32>) -> Struct_2 {
    global0 = array<vec4<u32>, 10>();
    let var_0 = _wgslsmith_sub_u32(_wgslsmith_div_u32(max(arg_1, 22123u), ~86440u), ~func_3(Struct_3(_wgslsmith_add_u32(arg_1, u_input.d.x), Struct_1(vec3<u32>(38802u, u_input.d.x, 55736u)), arg_1, ~vec3<i32>(u_input.b, 1i, -36969i))));
    var var_1 = Struct_4(~(~vec4<u32>(1u, 0u & u_input.d.x, _wgslsmith_div_u32(arg_1, var_0), _wgslsmith_div_u32(4294967295u, 20453u))));
    let var_2 = Struct_5(Struct_1(var_1.a.yyw));
    var var_3 = Struct_3(firstLeadingBit(var_0), Struct_1(var_2.a.a), max(var_0, _wgslsmith_sub_u32(1u, u_input.d.x)), arg_2);
    return Struct_2(true, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_3.c, 48002u, var_0), var_3.b.a), vec4<bool>(false, true, -311f < _wgslsmith_f_op_f32(ceil(1475f)), any(vec2<bool>(true, true))), -_wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(var_3.d.x, 36207i, -2147483647i)), ~u_input.a));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2) -> Struct_4 {
    let var_0 = Struct_4(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.d.x << (1u % 32u), arg_2.b, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.b, 48041u), vec2<u32>(u_input.d.x, 1u))), ~(~vec4<u32>(u_input.d.x, arg_1.b, 697u, arg_1.b)), ~global0[_wgslsmith_index_u32(32834u, 10u)])));
    global0 = array<vec4<u32>, 10>();
    global0 = array<vec4<u32>, 10>();
    let var_1 = Struct_1(~var_0.a.zwx);
    global0 = array<vec4<u32>, 10>();
    return Struct_4(reverseBits(select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, arg_2.b, 13333u, var_1.a.x), global0[_wgslsmith_index_u32(~arg_1.b, 10u)]), var_0.a, false)));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec3<f32>) -> vec4<i32> {
    var var_0 = func_4(_wgslsmith_f_op_f32(round(arg_2.x)), func_2(true, 4294967295u, vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, arg_0, u_input.b), vec3<i32>(u_input.a.x, u_input.a.x, arg_0))), func_2(false, _wgslsmith_clamp_u32(u_input.d.x, _wgslsmith_sub_u32(~u_input.d.x, 98639u), _wgslsmith_mod_u32(1u, _wgslsmith_div_u32(0u, arg_1.a.x))), -_wgslsmith_mult_vec3_i32(u_input.a ^ u_input.a, u_input.a)));
    var var_1 = _wgslsmith_mult_vec3_i32(~abs(vec3<i32>(-u_input.a.x, i32(-1i) * -1i, min(0i, 37887i))), u_input.a | func_2(true, func_3(Struct_3(arg_1.a.x, arg_1, var_0.a.x, vec3<i32>(u_input.b, u_input.c.x, arg_0))), select(vec3<i32>(arg_0, -1i, u_input.b), -vec3<i32>(0i, u_input.b, -2147483647i), func_2(false, 65156u, u_input.a).c.x)).d);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2541f * arg_2.x))), arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -564f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(arg_2, vec3<f32>(-1140f, -401f, 806f))))));
    var var_3 = 0i;
    let var_4 = Struct_2(true, firstTrailingBit(var_0.a.x), vec4<bool>(true, false, arg_1.a.x <= u_input.d.x, any(vec4<bool>(select(true, true, true), 2147483647i < u_input.b, true, false))), u_input.a);
    return ~(~firstLeadingBit(vec4<i32>(20488i, arg_0, -var_1.x, firstLeadingBit(u_input.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(0i ^ (_wgslsmith_clamp_i32(-1i, -15394i, 39595i) | u_input.b), _wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, u_input.c.x)), vec2<i32>(-2147483647i, 2147483647i)) ^ countOneBits(u_input.a.x), _wgslsmith_div_i32(u_input.a.x, _wgslsmith_sub_i32(_wgslsmith_mult_i32(0i, 0i), firstTrailingBit(u_input.a.x))), -3290i), vec4<i32>(2147483647i, ~u_input.a.x, firstLeadingBit(-_wgslsmith_add_i32(u_input.b, 0i)), u_input.b), firstTrailingBit(_wgslsmith_add_vec4_i32(~(-vec4<i32>(u_input.b, u_input.a.x, u_input.b, u_input.b)), select(func_1(u_input.a.x, Struct_1(vec3<u32>(6967u, 40594u, 75090u)), vec3<f32>(-580f, 735f, 599f)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.c.x, u_input.a.x), vec4<i32>(33413i, 55187i, u_input.c.x, u_input.b), vec4<i32>(0i, u_input.b, 5338i, -3589i)), false))));
    let var_1 = ~countOneBits(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(select(vec3<i32>(var_0.x, u_input.c.x, 2743i), vec3<i32>(u_input.a.x, 2147483647i, u_input.c.x), vec3<bool>(false, false, false)), u_input.a), ~(-1i)));
    global0 = array<vec4<u32>, 10>();
    let var_2 = Struct_3(~(~(u_input.d.x & ~u_input.d.x)), Struct_1(~vec3<u32>(u_input.d.x ^ u_input.d.x, u_input.d.x, 0u >> (u_input.d.x % 32u))), (~u_input.d.x << ((_wgslsmith_mod_u32(u_input.d.x, 21032u) >> (19646u % 32u)) % 32u)) << (reverseBits(u_input.d.x) % 32u), ~(-(~u_input.a)));
    global0 = array<vec4<u32>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-583f + -444f))))), 2534f));
}

