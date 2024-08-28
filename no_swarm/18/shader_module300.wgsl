struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<bool>) -> vec3<u32> {
    let var_0 = false;
    let var_1 = ~arg_0.b.x;
    var var_2 = Struct_1(arg_0.a, ~(~select(vec3<i32>(28430i, -15192i, arg_0.e.x) & arg_0.b, -vec3<i32>(-37105i, var_1, -2147483647i), !arg_2.x)), _wgslsmith_mult_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.c.x, arg_0.c.x, 0u, 4294967295u), arg_0.c), ~vec4<u32>(arg_0.a.x, 1u, 1u, arg_0.a.x), !vec4<bool>(var_0, arg_2.x, true, var_0)) & (_wgslsmith_mod_vec4_u32(arg_0.c, arg_0.c) | arg_0.c), select(_wgslsmith_mult_vec4_u32(arg_0.c, ~vec4<u32>(1u, 0u, arg_0.a.x, arg_1.a.x)), _wgslsmith_mult_vec4_u32(firstTrailingBit(arg_0.c), ~vec4<u32>(15524u, 4294967295u, 1u, 24683u)), !vec4<bool>(var_0, arg_2.x, false, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(-693f * 2014f), 980f, -304f))) + arg_0.d), firstTrailingBit(_wgslsmith_mult_vec3_i32(select(min(arg_0.b, arg_0.b), select(vec3<i32>(arg_0.e.x, var_1, var_1), arg_0.e, vec3<bool>(false, var_0, var_0)), false), vec3<i32>(~(-1i), _wgslsmith_mult_i32(u_input.a, u_input.a), ~u_input.a))));
    var_2 = Struct_1(_wgslsmith_sub_vec3_u32(~firstTrailingBit(vec3<u32>(arg_1.a.x, var_2.a.x, 26530u) ^ vec3<u32>(87514u, arg_1.a.x, arg_1.a.x)), select(vec3<u32>(20636u << (arg_1.a.x % 32u), ~arg_1.a.x, reverseBits(4294967295u)), abs(vec3<u32>(arg_1.a.x, arg_1.a.x, 4294967295u)) << (var_2.a % vec3<u32>(32u)), select(!vec3<bool>(var_0, true, var_0), vec3<bool>(true, var_0, true), !var_0))), reverseBits(countOneBits(select(var_2.b, ~arg_0.e, arg_0.a.x < 4294967295u))), ~var_2.c, vec4<f32>(1187f, _wgslsmith_f_op_f32(var_2.d.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1225f, arg_0.d.x)), _wgslsmith_f_op_f32(trunc(712f)))), _wgslsmith_f_op_f32(var_2.d.x - var_2.d.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_2.d.x))))), vec3<i32>(~var_1 << (var_2.c.x % 32u), ~max(45290i, 54828i), -2147483647i));
    var var_3 = arg_0;
    return arg_1.a;
}

fn func_2(arg_0: i32) -> vec4<f32> {
    var var_0 = Struct_2(~reverseBits(vec3<u32>(1u, 3553u, 2119u)) | func_3(Struct_1(~vec3<u32>(1u, 0u, 4294967295u), max(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-2147483647i, u_input.a, u_input.a)), vec4<u32>(24200u, 4294967295u, 1u, 1u), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1496f, -368f, 876f, 539f) - vec4<f32>(601f, -294f, 932f, 789f)), select(vec3<i32>(1i, u_input.a, arg_0), vec3<i32>(arg_0, u_input.a, u_input.a), true)), Struct_2(~vec3<u32>(1u, 15420u, 8565u)), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))));
    let var_1 = Struct_2(vec3<u32>(var_0.a.x, var_0.a.x ^ 18055u, 30621u | _wgslsmith_clamp_u32(abs(0u), var_0.a.x ^ var_0.a.x, var_0.a.x)));
    var var_2 = Struct_2(~abs(vec3<u32>(var_1.a.x, _wgslsmith_mult_u32(0u, 60865u), var_1.a.x)));
    let var_3 = var_2.a.x;
    var_0 = Struct_2(vec3<u32>(~var_2.a.x, _wgslsmith_clamp_u32(min(var_2.a.x, 1u ^ var_1.a.x), 1652u, select(_wgslsmith_mod_u32(0u, 4294967295u), select(var_2.a.x, var_2.a.x, true), 3309u > var_0.a.x)), _wgslsmith_sub_u32(1u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.x, 4294967295u), var_1.a.yz) % 32u), var_1.a.x)));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_div_f32(-1165f, -395f), _wgslsmith_div_f32(-1699f, 402f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -550f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(376f + -207f) - _wgslsmith_f_op_f32(sign(1579f)))))), -556f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -579f) * _wgslsmith_f_op_f32(max(-367f, _wgslsmith_div_f32(-1329f, -708f)))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: i32) -> u32 {
    var var_0 = arg_1.x;
    var var_1 = select(!(!(!(!arg_1))), arg_1, arg_1);
    var_0 = false;
    let var_2 = abs(_wgslsmith_add_u32(22896u, 0u));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1322f, _wgslsmith_f_op_f32(f32(-1f) * -2199f), -305f, -1000f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(arg_2)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1998f, 872f, -1595f, -1056f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1516f, -111f, 1127f, 1000f) + vec4<f32>(-1000f, 423f, -1000f, 105f))), !(false == (false | var_1.x)))));
    return 31529u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    var_0 = _wgslsmith_mult_u32(3716u, _wgslsmith_mult_u32(1u, _wgslsmith_div_u32(func_1(~vec2<u32>(0u, 74848u), vec3<bool>(true, false, false), 1i), firstTrailingBit(0u << (1u % 32u)))));
    let var_1 = abs(firstLeadingBit(firstTrailingBit(~37913u)));
    var_0 = _wgslsmith_div_u32(var_1, reverseBits(var_1));
    let var_2 = Struct_2(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_1, ~var_1, ~var_1), ~(vec3<u32>(var_1, var_1, 97478u) ^ vec3<u32>(var_1, 4294967295u, 54575u))));
    var var_3 = ~(reverseBits(~select(vec4<i32>(-47343i, 1i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, 943i, u_input.a), vec4<bool>(true, true, false, true))) >> (_wgslsmith_div_vec4_u32(min(vec4<u32>(36319u, 49806u, 58010u, 4294967295u), vec4<u32>(var_2.a.x, 72429u, var_1, var_2.a.x) & vec4<u32>(var_2.a.x, 41336u, 0u, var_1)), ~vec4<u32>(23062u, var_1, 80821u, var_2.a.x)) % vec4<u32>(32u)));
    var_0 = ~(~4294967295u);
    var_0 = 0u;
    let var_4 = _wgslsmith_mult_vec2_u32(var_2.a.yy, ~var_2.a.yy);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec3<u32>(0u, 16837u, (var_4.x ^ 1u) & ~10211u)));
}

