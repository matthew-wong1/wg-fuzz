struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec3<i32>(6193i, 6973i, i32(-2147483648)), -20821i, vec3<u32>(4294967295u, 4294967295u, 79296u)), Struct_1(vec3<i32>(-12087i, -40808i, 31826i), 1i, vec3<u32>(50349u, 1u, 44202u)), Struct_1(vec3<i32>(2147483647i, -25889i, 0i), 1i, vec3<u32>(60969u, 1u, 23019u)), Struct_1(vec3<i32>(50544i, -32705i, 3733i), 2147483647i, vec3<u32>(8706u, 10256u, 4294967295u)), Struct_1(vec3<i32>(0i, -8240i, -1i), -1i, vec3<u32>(1145u, 4294967295u, 27790u)), Struct_1(vec3<i32>(-20093i, 1i, -43740i), 2147483647i, vec3<u32>(29156u, 1u, 53560u)), Struct_1(vec3<i32>(-78379i, 2147483647i, 0i), -1i, vec3<u32>(103557u, 17472u, 4294967295u)), Struct_1(vec3<i32>(-16972i, 2147483647i, 20121i), 1i, vec3<u32>(38340u, 4294967295u, 62548u)), Struct_1(vec3<i32>(-40634i, -55182i, 1i), 2147483647i, vec3<u32>(0u, 4294967295u, 31448u)), Struct_1(vec3<i32>(-57306i, 2147483647i, -64306i), 0i, vec3<u32>(64612u, 0u, 5036u)), Struct_1(vec3<i32>(0i, 83219i, -60223i), i32(-2147483648), vec3<u32>(0u, 40686u, 0u)), Struct_1(vec3<i32>(1i, -1i, -1i), 1i, vec3<u32>(1u, 58296u, 1u)), Struct_1(vec3<i32>(20762i, -1288i, 1i), -1i, vec3<u32>(31961u, 0u, 7524u)), Struct_1(vec3<i32>(i32(-2147483648), -65881i, -1253i), -27417i, vec3<u32>(4294967295u, 0u, 0u)), Struct_1(vec3<i32>(2147483647i, 30767i, 2147483647i), -55856i, vec3<u32>(162548u, 0u, 25901u)), Struct_1(vec3<i32>(i32(-2147483648), 1i, -2517i), 22201i, vec3<u32>(0u, 0u, 1u)), Struct_1(vec3<i32>(2147483647i, -11473i, i32(-2147483648)), -25396i, vec3<u32>(8038u, 1u, 632u)), Struct_1(vec3<i32>(-26715i, 1i, 13978i), 18159i, vec3<u32>(7610u, 0u, 18885u)), Struct_1(vec3<i32>(i32(-2147483648), 13843i, -56690i), -20474i, vec3<u32>(28184u, 8920u, 1u)), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 2147483647i), 15381i, vec3<u32>(4294967295u, 1u, 2721u)), Struct_1(vec3<i32>(1i, -56472i, 0i), -18014i, vec3<u32>(4294967295u, 1u, 0u)), Struct_1(vec3<i32>(15919i, 50043i, 2147483647i), 0i, vec3<u32>(1u, 1u, 4294967295u)), Struct_1(vec3<i32>(0i, 53488i, 0i), 1i, vec3<u32>(6335u, 72136u, 11941u)), Struct_1(vec3<i32>(2147483647i, -1i, 1i), -5951i, vec3<u32>(27549u, 4344u, 14845u)), Struct_1(vec3<i32>(-11508i, -1i, -21074i), 10362i, vec3<u32>(4294967295u, 26523u, 1739u)), Struct_1(vec3<i32>(-1i, i32(-2147483648), 0i), 52101i, vec3<u32>(0u, 47006u, 10390u)), Struct_1(vec3<i32>(-67479i, 0i, -7826i), 27928i, vec3<u32>(45853u, 73531u, 32641u)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> u32 {
    return ~(_wgslsmith_div_u32(1u, u_input.a.x) | arg_1.c.x);
}

fn func_3() -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-435f, -1203f, -668f)) - vec3<f32>(-239f, -1000f, -244f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-366f, 467f, 100f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-486f, 801f, -431f), vec3<f32>(-245f, 379f, 386f), vec3<bool>(true, false, true))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1016f, -1682f)))), global0[_wgslsmith_index_u32(u_input.a.x, 27u)]);
    let var_1 = countOneBits(var_0.b.a);
    var var_2 = var_0.b.c.xz;
    var var_3 = var_0;
    var_2 = countOneBits(var_0.b.c.zz);
    return 47415u;
}

fn func_1(arg_0: vec4<f32>, arg_1: f32) -> Struct_1 {
    let var_0 = ~_wgslsmith_div_vec4_u32(vec4<u32>(~114639u, func_2(arg_0.x, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c, u_input.c, u_input.c), vec4<u32>(0u, 4294967295u, 19994u, u_input.c)), 27u)], u_input.c), firstLeadingBit(u_input.a.x), reverseBits(u_input.a.x)), vec4<u32>(_wgslsmith_mult_u32(func_3(), countOneBits(u_input.c)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(2207u, u_input.c, 4294967295u, u_input.c), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 24417u)), ~4294967295u, _wgslsmith_mult_u32(u_input.a.x, 3773u)), ~1u, 45310u));
    let var_1 = global0[_wgslsmith_index_u32(~(~max(~u_input.c, _wgslsmith_mod_u32(firstTrailingBit(var_0.x), ~4294967295u))), 27u)];
    global0 = array<Struct_1, 27>();
    let var_2 = 0u;
    global0 = array<Struct_1, 27>();
    return global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(var_0, var_0), var_2) & _wgslsmith_sub_u32(var_2, var_2), ~(~(~1u))), 27u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-select(reverseBits(vec3<i32>(1i, u_input.d, 10017i)), vec3<i32>(-u_input.d, -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.d), vec2<i32>(-2147483647i, -1i))), vec3<bool>(true, true, all(vec4<bool>(false, true, false, false)))), ~u_input.d, vec3<u32>(u_input.a.x, 32294u, u_input.a.x) | ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 0u, u_input.a.x), select(vec3<u32>(31510u, u_input.a.x, 4294967295u), vec3<u32>(u_input.c, u_input.a.x, 9544u), vec3<bool>(false, false, false))));
    let var_1 = _wgslsmith_f_op_f32(-963f * -453f);
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(863f, var_1, var_1)))))), func_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, var_1, -200f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(328f, -589f, 1000f, 1000f), vec4<f32>(var_1, 980f, 172f, var_1)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1538f, var_1, 792f, -666f))), vec4<bool>(true, true, true, 4294967295u < var_0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -140f), -536f))));
    var var_3 = vec4<bool>(!(!(true & any(vec4<bool>(false, true, false, true)))), false, any(select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), false);
    let var_4 = true;
    var_3 = vec4<bool>(u_input.d < ~_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, var_2.b.a.x, -1i), var_2.b.a), var_0.a.x), var_4, var_4, !(true && var_4) && false);
    let var_5 = var_2.a;
    let var_6 = firstTrailingBit(var_0.a.x);
    var var_7 = vec2<i32>(-2147483647i, func_1(vec4<f32>(_wgslsmith_f_op_f32(-747f + -2291f), var_1, 1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_1))))), _wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_f_op_f32(abs(-162f)))).a.x);
    let x = u_input.a;
    s_output = StorageBuffer(-30882i, var_7.x, _wgslsmith_dot_vec3_u32(reverseBits(var_2.b.c), ~(~vec3<u32>(4294967295u, 17426u, 1u))), var_2.b.c.x);
}

