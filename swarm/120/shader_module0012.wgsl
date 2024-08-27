struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(firstTrailingBit(_wgslsmith_mod_i32(-2147483647i, u_input.a)) & -2147483647i, u_input.a, -2147483647i), ~(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, -2147483647i, u_input.a), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, -25675i), vec3<i32>(u_input.a, u_input.a, u_input.a))) | ~(vec3<i32>(-1i, u_input.a, 14371i) & vec3<i32>(u_input.a, u_input.a, -2147483647i))));
    global0 = array<Struct_2, 30>();
    global0 = array<Struct_2, 30>();
    var var_1 = !(max(var_0.x, 76574i) >= -2147483647i);
    global0 = array<Struct_2, 30>();
    return ~(firstTrailingBit(2147483647i) << (abs(u_input.c) % 32u));
}

fn func_1() -> vec2<u32> {
    var var_0 = ~_wgslsmith_div_u32(u_input.d.x, ~(~u_input.c));
    global0 = array<Struct_2, 30>();
    var_0 = abs(u_input.b.x ^ select(~_wgslsmith_mult_u32(u_input.d.x, u_input.b.x), ~21464u, any(vec4<bool>(true, true, true, true))));
    let var_1 = vec4<i32>(u_input.a, 1i, func_2(), ~(-1443i));
    var_0 = ~(~(~1u));
    return vec2<u32>(~73217u, ~(max(~79643u, ~u_input.c) & ~0u));
}

fn func_3(arg_0: f32, arg_1: bool) -> vec4<i32> {
    return vec4<i32>(_wgslsmith_mod_i32(firstLeadingBit(reverseBits(_wgslsmith_mult_i32(0i, -3845i))), u_input.a), _wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(-30380i, u_input.a, -9746i)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, 0i), vec3<i32>(-16432i, -4545i, 1i)))), abs(abs(vec3<i32>(u_input.a, u_input.a, u_input.a) & vec3<i32>(-23351i, u_input.a, 1i)))), u_input.a, -50216i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 30>();
    global0 = array<Struct_2, 30>();
    let var_0 = Struct_1(13469i, (_wgslsmith_clamp_u32(firstTrailingBit(u_input.b.x), 48784u, select(u_input.d.x, 3311u, false)) & ~u_input.b.x) <= u_input.d.x, func_1(), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1282f) - 1f), 242f, _wgslsmith_f_op_f32(-1f)));
    var var_1 = _wgslsmith_mod_vec4_i32(reverseBits(~(vec4<i32>(var_0.a, 0i, var_0.a, 0i) >> (u_input.b % vec4<u32>(32u)))), vec4<i32>(_wgslsmith_mult_i32(u_input.a, _wgslsmith_mult_i32(u_input.a, 2147483647i)), -1i & (u_input.a & -28630i), var_0.a, _wgslsmith_sub_i32(-1i, -56238i))) | func_3(-1508f, !var_0.b);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.d.x))) * var_0.d.x);
    let var_3 = countOneBits(~vec3<u32>(_wgslsmith_mod_u32(var_0.c.x, var_0.c.x) << (abs(u_input.d.x) % 32u), 74850u, 23090u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.d * vec3<f32>(var_0.d.x, var_0.d.x, -309f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, -413f, 461f)))), _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.a | -70772i, func_3(var_0.d.x, var_0.b).x, 0i, 0i), -(~_wgslsmith_div_vec4_i32(vec4<i32>(-42149i, u_input.a, u_input.a, -5471i), vec4<i32>(u_input.a, u_input.a, u_input.a, -42030i))), -_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.x, 39435i, 2147483647i, var_0.a), -vec4<i32>(var_0.a, 2147483647i, -1i, 0i))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x + 736f) + var_0.d.x) + -366f), var_0.d.x, _wgslsmith_f_op_f32(step(var_0.d.x, _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.d.x, 1800f), _wgslsmith_div_f32(var_0.d.x, -2065f))))), var_3.x, 9973u);
}

