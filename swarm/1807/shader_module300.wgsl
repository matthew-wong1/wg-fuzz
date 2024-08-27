struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: u32) -> u32 {
    var var_0 = Struct_1(~_wgslsmith_div_vec4_u32(~firstLeadingBit(vec4<u32>(1u, 52434u, u_input.c, arg_3)), abs(vec4<u32>(12927u, u_input.c, u_input.c, u_input.c) | vec4<u32>(14404u, arg_3, 4294967295u, 82541u))));
    var_0 = Struct_1(var_0.a);
    let var_1 = vec3<i32>(~u_input.e.x, -2134i ^ (2147483647i ^ -max(u_input.a.x, 1i)), arg_2.x);
    var var_2 = Struct_4(Struct_3(!(u_input.a.x < (u_input.b.x ^ -2147483647i)), 0u, Struct_1(~(var_0.a >> (var_0.a % vec4<u32>(32u)))), Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(37740u, 2142u, 4294967295u, 4294967295u) & vec4<u32>(var_0.a.x, u_input.c, 0u, arg_3), var_0.a >> (vec4<u32>(arg_3, u_input.c, 4294967295u, 1u) % vec4<u32>(32u)), var_0.a)), Struct_2((arg_0.c.x > 1u) && arg_1.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(1011f, arg_0.b.x, arg_0.b.x) * _wgslsmith_f_op_vec3_f32(select(arg_0.b, vec3<f32>(-1000f, 1114f, -788f), false))), _wgslsmith_mod_vec2_u32(vec2<u32>(7387u, arg_0.c.x) << (vec2<u32>(var_0.a.x, 37067u) % vec2<u32>(32u)), ~vec2<u32>(arg_0.c.x, 1u)))));
    var var_3 = var_2.a.e;
    return ~u_input.c;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<f32>) -> vec4<i32> {
    var var_0 = ~(_wgslsmith_add_u32(arg_1.a.x << (u_input.c % 32u), arg_1.a.x) << (71424u % 32u)) > reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, func_3(Struct_2(arg_0.x, vec3<f32>(arg_2.x, arg_2.x, arg_2.x), arg_1.a.zz), arg_0.yzy, u_input.e.xx, 14618u)), _wgslsmith_add_vec2_u32(~arg_1.a.xy, vec2<u32>(0u, u_input.c))));
    let var_1 = vec2<i32>(firstLeadingBit(-2147483647i), u_input.e.x);
    var_0 = !(!select(select(-59721i != var_1.x, false, arg_0.x), !arg_0.x, false));
    var_0 = !arg_0.x;
    let var_2 = ~(~((arg_1.a.yx >> (~arg_1.a.xy % vec2<u32>(32u))) & ~(vec2<u32>(u_input.c, 61209u) << (arg_1.a.yz % vec2<u32>(32u)))));
    return vec4<i32>(_wgslsmith_mod_i32(-abs(var_1.x), _wgslsmith_div_i32(var_1.x, (var_1.x ^ -18357i) & ~0i)), abs(-1i), -16178i, -(~firstTrailingBit(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b))));
}

fn func_1() -> Struct_5 {
    var var_0 = ~max(_wgslsmith_dot_vec4_i32(-(vec4<i32>(52350i, -12102i, u_input.a.x, 28026i) & vec4<i32>(1177i, u_input.b.x, 34655i, -31287i)), ~func_2(vec4<bool>(false, true, false, true), Struct_1(vec4<u32>(1u, u_input.c, u_input.c, 42823u)), vec4<f32>(1456f, 1784f, 805f, -138f))), func_2(vec4<bool>(true, true, true, true), Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 13924u, 33818u, u_input.c), vec4<u32>(u_input.c, 4658u, 25969u, u_input.c))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-406f, 505f, 1385f, 411f), vec4<f32>(-543f, 709f, -2102f, -581f), vec4<bool>(false, true, true, false)))))).x);
    var_0 = 0i;
    var var_1 = !all(vec2<bool>(true, true));
    var var_2 = vec3<bool>(true, true, true);
    let var_3 = ~1u;
    return Struct_5(Struct_4(Struct_3(any(vec2<bool>(false, false)), 1u, Struct_1(vec4<u32>(var_3, var_3, 0u, var_3) | vec4<u32>(var_3, u_input.c, 30931u, 1u)), Struct_1(~vec4<u32>(1u, var_3, u_input.c, 46979u)), Struct_2(any(vec3<bool>(var_2.x, var_2.x, var_2.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-355f, 572f, 198f)), vec2<u32>(98099u, var_3)))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_5, arg_2: i32) -> f32 {
    let var_0 = !(true | (arg_1.a.a.e.b.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.a.a.e.b.x, arg_0.a.a.e.b.x, false)) + _wgslsmith_f_op_f32(-arg_1.a.a.e.b.x))));
    var var_1 = 1083f;
    var_1 = 1308f;
    var_1 = 1664f;
    var_1 = arg_1.a.a.e.b.x;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -432f), _wgslsmith_f_op_f32(min(-1976f, 113f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-333f * -1209f))), 1463f) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-188f, -571f))), vec2<f32>(2021f, -225f)))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1217f * _wgslsmith_f_op_f32(f32(-1f) * -3332f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(910f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(457f)))))));
    var_0 = u_input.c;
    var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_1.x) + var_1.x), _wgslsmith_f_op_f32(func_4(func_1(), Struct_5(func_1().a), 79535i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-216f))));
    let var_2 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.xx, u_input.e, ~(-1i), -vec2<i32>(reverseBits(reverseBits(12205i)), reverseBits(_wgslsmith_add_i32(u_input.a.x, 2147483647i))));
}

