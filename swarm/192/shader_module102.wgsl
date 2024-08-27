struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

var<private> global1: f32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> bool {
    let var_0 = -1i;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-536f, _wgslsmith_f_op_f32(f32(-1f) * -105f), !all(vec3<bool>(true, false, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-542f - 1932f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(369f - 820f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1112f - 230f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1491f))));
    let var_2 = false;
    let var_3 = false;
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x))))));
    return any(vec4<bool>(true, !var_3, !var_3, var_3));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_2) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -564f) + -1527f) - -1330f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(856f * arg_0)))), 494f), arg_1));
    let var_1 = Struct_1(_wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(0u, arg_2.c.x, 10038u, arg_2.b)), vec4<u32>(arg_2.b, countOneBits(0u), _wgslsmith_add_u32(~79672u, arg_2.b), 1u)), vec3<i32>(~15604i, firstLeadingBit(arg_2.a.x), arg_2.a.x));
    let var_2 = Struct_1(_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(1u, 4294967295u, 0u, var_1.a)), vec4<u32>(4294967295u, var_1.a, 4294967295u, ~9018u >> (~arg_2.b % 32u))), -_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(arg_2.a, vec3<i32>(10356i, 2147483647i, var_1.b.x)), select(arg_2.a, var_1.b, arg_1.x)), _wgslsmith_div_vec3_i32(arg_2.a, vec3<i32>(57730i, 26827i, 2147483647i))));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(-arg_0), true)), _wgslsmith_f_op_f32(arg_0 + var_0.x)), 327f) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-339f, var_0.x))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, -291f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-893f, arg_0))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-482f, var_0.x)))))));
}

fn func_2() -> Struct_3 {
    var var_0 = u_input.c;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-677f, 1000f)), _wgslsmith_f_op_vec2_f32(func_3(-1686f, vec2<bool>(true, true), Struct_2(vec3<i32>(14687i, u_input.b.x, u_input.a), 1u, vec3<u32>(96241u, 19798u, 31995u), u_input.c)))) + vec2<f32>(_wgslsmith_f_op_f32(1000f - 112f), 422f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(-1463f, vec2<bool>(true, false), Struct_2(vec3<i32>(u_input.b.x, 2147483647i, -1i), 3271u, vec3<u32>(4294967295u, 0u, 0u), u_input.a))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-180f, 660f) * vec2<f32>(640f, -1521f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1513f, -1210f) - vec2<f32>(132f, -1027f)), _wgslsmith_f_op_vec2_f32(func_3(-381f, vec2<bool>(true, false), Struct_2(vec3<i32>(-711i, -3155i, -47964i), 10974u, vec3<u32>(0u, 1u, 43497u), u_input.a))))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(136f, -265f) + vec2<f32>(1001f, -315f)))))));
    let var_2 = Struct_3(!select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, any(vec2<bool>(false, true)), func_1(38625i, Struct_1(83667u, vec3<i32>(2147483647i, -38259i, -2147483647i)))), vec3<bool>(true, true, true)), 1u, Struct_2(_wgslsmith_sub_vec3_i32(-vec3<i32>(-3625i, u_input.c, -2147483647i) << (vec3<u32>(4294967295u, 35160u, 4294967295u) % vec3<u32>(32u)), ~(vec3<i32>(28088i, u_input.a, u_input.a) ^ vec3<i32>(u_input.b.x, -13408i, u_input.a))), 10520u << (~_wgslsmith_dot_vec4_u32(vec4<u32>(61654u, 4294967295u, 1u, 33634u), vec4<u32>(20270u, 1u, 16169u, 1u)) % 32u), ~select(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(38292u, 1u, 1u), vec3<bool>(true, true, true)), -(~max(2147483647i, u_input.b.x))), Struct_2(vec3<i32>(-1i) * -firstLeadingBit(vec3<i32>(u_input.a, -47105i, -43322i)), ~(~4294967295u << (abs(0u) % 32u)), firstLeadingBit(~reverseBits(vec3<u32>(548u, 71896u, 31823u))), -12218i));
    var var_3 = var_2.a.x;
    var_3 = var_2.a.x;
    return var_2;
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_3) -> Struct_2 {
    let var_0 = vec4<i32>(_wgslsmith_mod_i32(0i, -2147483647i), 16142i, _wgslsmith_div_i32(abs(_wgslsmith_sub_i32(-39196i, arg_2.d.d << (arg_2.d.b % 32u))), u_input.a), arg_0);
    let var_1 = Struct_1(arg_2.d.b, -vec3<i32>(_wgslsmith_div_i32(arg_0, arg_0), -17842i, -arg_0));
    let var_2 = max(arg_2.c.c, ~(~arg_2.c.c));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(637f * -1506f), _wgslsmith_f_op_f32(113f - -315f)) - _wgslsmith_f_op_f32(floor(-198f)))));
    let var_3 = _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(~arg_2.d.a.zz, vec2<i32>(0i, 1i)), ~arg_2.d.d, _wgslsmith_dot_vec2_i32(-arg_2.d.a.xx, var_0.yx), ~u_input.a), min(~var_0, vec4<i32>(~arg_2.c.d, -arg_0, ~(-2147483647i), min(var_1.b.x, 11404i))) >> (~_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(6710u, var_1.a, 68420u, 108541u), vec4<u32>(4294967295u, 26173u, arg_2.c.c.x, var_1.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 107179u, 19265u, var_1.a), vec4<u32>(arg_2.c.c.x, var_1.a, var_2.x, 36198u))) % vec4<u32>(32u)));
    return func_2().d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 724f;
    let var_0 = Struct_1(~_wgslsmith_clamp_u32(~1u, ~19657u, min(13430u, 9478u)), vec3<i32>(u_input.a, ~(-29683i >> (1u % 32u)), u_input.c));
    let var_1 = var_0.b & (var_0.b ^ -select(_wgslsmith_clamp_vec3_i32(var_0.b, vec3<i32>(var_0.b.x, var_0.b.x, -17776i), vec3<i32>(0i, -2147483647i, var_0.b.x)), var_0.b, true));
    let var_2 = Struct_3(vec3<bool>(false, select((u_input.a >= 1i) & false, select(func_1(-1i, Struct_1(var_0.a, vec3<i32>(12509i, 2147483647i, var_1.x))), true, true), true), !(!(var_0.a >= 4294967295u))), ~var_0.a & ~(~1916u), func_4(-(~33064i), vec2<bool>(true, true), func_2()), func_4(_wgslsmith_mult_i32(u_input.a, 1i), vec2<bool>(true, true), Struct_3(select(vec3<bool>(true, true, true), func_2().a, vec3<bool>(true, true, true)), ~reverseBits(var_0.a), Struct_2(~vec3<i32>(1i, -88340i, var_1.x), var_0.a << (var_0.a % 32u), vec3<u32>(var_0.a, var_0.a, var_0.a), var_1.x), func_4(2646i, vec2<bool>(false, false), Struct_3(vec3<bool>(true, false, true), 115758u, Struct_2(var_1, 35002u, vec3<u32>(4294967295u, 0u, var_0.a), 2147483647i), Struct_2(vec3<i32>(2147483647i, u_input.b.x, var_0.b.x), 0u, vec3<u32>(39272u, var_0.a, var_0.a), var_0.b.x))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(503f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1);
}

