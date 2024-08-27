struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_5, arg_2: Struct_5) -> vec4<bool> {
    var var_0 = min(_wgslsmith_mod_vec2_u32(select(u_input.e.yz >> (vec2<u32>(72793u, u_input.a.x) % vec2<u32>(32u)), u_input.e.xx, true), ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 60778u), vec2<u32>(7814u, 117745u)))), min(select(u_input.c, vec2<u32>(u_input.c.x, 1u), vec2<bool>(arg_1.b.a, false)), u_input.c) ^ firstTrailingBit(u_input.c | u_input.c));
    let var_1 = ~(~(~_wgslsmith_mult_vec4_u32(select(vec4<u32>(var_0.x, 1u, 56825u, var_0.x), vec4<u32>(u_input.a.x, 63264u, var_0.x, u_input.c.x), vec4<bool>(false, arg_1.a.b, true, false)), vec4<u32>(4294967295u, var_0.x, var_0.x, var_0.x))));
    var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(136825u, 32639u), u_input.c);
    var var_2 = u_input.c.x;
    let var_3 = Struct_4(Struct_3(u_input.d.x, (-34596i > countOneBits(arg_1.a.c)) && arg_1.a.b, ~arg_2.a.a, arg_2.b));
    return vec4<bool>(var_3.a.d.a, arg_1.a.d.a, ((-u_input.d.x >> (var_1.x % 32u)) << (_wgslsmith_mod_u32(u_input.c.x, var_1.x ^ u_input.e.x) % 32u)) == (arg_0 >> (~1u % 32u)), var_3.a.b);
}

fn func_2(arg_0: u32) -> vec4<bool> {
    var var_0 = u_input.d.xzy;
    global0 = array<Struct_2, 23>();
    let var_1 = _wgslsmith_mod_i32(-7135i, abs(u_input.b));
    global0 = array<Struct_2, 23>();
    let var_2 = any(vec3<bool>(true, true, true)) && true;
    return select(vec4<bool>(var_2, var_2, false, any(!vec3<bool>(true, false, var_2))), !func_3(u_input.d.x, Struct_5(Struct_3(-32891i, var_2, var_1, Struct_1(true, vec2<f32>(1461f, 896f))), Struct_1(false, vec2<f32>(-1217f, -103f))), Struct_5(Struct_3(var_1, var_2, var_1, Struct_1(var_2, vec2<f32>(-1000f, -456f))), Struct_1(false, vec2<f32>(1689f, -2742f)))), !(!select(select(vec4<bool>(var_2, var_2, false, var_2), vec4<bool>(false, false, var_2, var_2), var_2), select(vec4<bool>(true, var_2, var_2, true), vec4<bool>(true, false, true, false), vec4<bool>(true, var_2, false, var_2)), !vec4<bool>(false, var_2, var_2, true))));
}

fn func_1() -> i32 {
    global0 = array<Struct_2, 23>();
    global0 = array<Struct_2, 23>();
    let var_0 = u_input.d;
    let var_1 = select(vec3<bool>(all(vec4<bool>(all(vec4<bool>(false, false, true, true)), all(vec2<bool>(true, false)), u_input.c.x == 34948u, true)), !(u_input.e.x <= (u_input.e.x | 29993u)), true), vec3<bool>(!all(vec4<bool>(false, false, false, true)) != all(func_2(u_input.a.x)), true, all(vec2<bool>(func_2(u_input.c.x).x, true))), false);
    var var_2 = vec2<i32>(-u_input.b, 0i);
    return -1i;
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> Struct_3 {
    var var_0 = arg_0;
    let var_1 = var_0.b;
    global0 = array<Struct_2, 23>();
    let var_2 = _wgslsmith_clamp_vec4_u32(~(~(~vec4<u32>(u_input.e.x, 10922u, 0u, 6569u)) >> (~vec4<u32>(u_input.a.x, u_input.e.x, 4294967295u, 1u) % vec4<u32>(32u))), vec4<u32>(u_input.a.x, arg_1, _wgslsmith_div_u32(arg_1, min(~arg_1, 30957u)), 13028u), max(vec4<u32>(_wgslsmith_mult_u32(u_input.c.x, _wgslsmith_sub_u32(29570u, u_input.c.x)), ~1u, firstTrailingBit(0u) >> (arg_1 % 32u), 85863u), firstLeadingBit(countOneBits(countOneBits(vec4<u32>(4294967295u, u_input.a.x, arg_1, arg_1))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-arg_0.d.b);
    return Struct_3(u_input.b, true, firstLeadingBit(_wgslsmith_mult_i32(-arg_0.a, _wgslsmith_mult_i32(select(u_input.d.x, var_0.c, true), -1i | var_0.c))), Struct_1(true, _wgslsmith_f_op_vec2_f32(-var_3)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 23>();
    var var_0 = true;
    let var_1 = func_4(Struct_3(_wgslsmith_mod_i32(~(~(-12195i)), ~func_1()), false, _wgslsmith_dot_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 53752i, u_input.b), u_input.d.wzx), u_input.d.yxx), Struct_1(any(vec4<bool>(false, false, false, true)), vec2<f32>(_wgslsmith_div_f32(-583f, 1577f), _wgslsmith_f_op_f32(sign(-1299f))))), reverseBits(u_input.a.x));
    let var_2 = Struct_5(var_1, func_4(func_4(var_1, 16997u), u_input.a.x).d);
    global0 = array<Struct_2, 23>();
    let var_3 = Struct_5(func_4(func_4(func_4(func_4(var_2.a, u_input.a.x), u_input.c.x), _wgslsmith_mult_u32(select(u_input.c.x, u_input.a.x, var_2.a.b), 18918u)), u_input.c.x), var_2.a.d);
    global0 = array<Struct_2, 23>();
    let var_4 = Struct_1(true, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(764f, _wgslsmith_f_op_f32(437f + 769f)) - vec2<f32>(_wgslsmith_f_op_f32(var_2.b.b.x - 1092f), var_1.d.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-630f, var_3.a.d.b.x, 422f, -664f), vec4<f32>(var_3.a.d.b.x, var_3.a.d.b.x, -1000f, -1910f), false)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(864f, -508f, 717f, -719f)))), vec4<f32>(_wgslsmith_f_op_f32(trunc(401f)), _wgslsmith_f_op_f32(max(var_1.d.b.x, -722f)), -1095f, 721f))) - vec4<f32>(var_3.a.d.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(411f)))), var_1.d.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.d.b.x)))), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, reverseBits(var_3.a.a & u_input.b)), ~select(vec2<i32>(u_input.d.x, var_2.a.c), u_input.d.ww, true) | u_input.d.zx), _wgslsmith_mod_vec4_u32(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.e.x, u_input.c.x, u_input.a.x, u_input.a.x), select(vec4<u32>(4294967295u, u_input.e.x, 4294967295u, u_input.c.x), vec4<u32>(1u, 0u, u_input.a.x, 1u), var_2.a.d.a), vec4<u32>(27107u, u_input.c.x, 48547u, 5133u) << (vec4<u32>(25629u, u_input.c.x, 3188u, 53464u) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(0u, 4294967295u), abs(0u), u_input.a.x, ~u_input.e.x), abs(~vec4<u32>(78621u, u_input.c.x, u_input.a.x, u_input.c.x)), min(~vec4<u32>(u_input.c.x, u_input.c.x, 1u, u_input.a.x), ~vec4<u32>(0u, 1u, u_input.a.x, 4294967295u)))), var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-650f + 887f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_4.b.x, var_1.d.b.x))))));
}

