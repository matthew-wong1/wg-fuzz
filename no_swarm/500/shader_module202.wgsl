struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = Struct_3(Struct_2(Struct_1(~(u_input.b >> (u_input.d.x % 32u)), _wgslsmith_div_vec4_f32(vec4<f32>(-806f, -610f, -1000f, -327f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1068f, 405f, -732f, 891f), vec4<f32>(-539f, -1038f, -679f, 699f)))))), Struct_1(select(u_input.a, u_input.b, true == any(vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(3012f)), -374f, _wgslsmith_f_op_f32(max(-536f, 1000f)), -1000f) * vec4<f32>(_wgslsmith_f_op_f32(min(-1000f, 1556f)), _wgslsmith_f_op_f32(round(906f)), _wgslsmith_f_op_f32(sign(557f)), _wgslsmith_f_op_f32(abs(1000f))))), 25416u, Struct_2(Struct_1(u_input.a | (i32(-1i) * -2147483647i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(162f, -2291f, -251f, 1093f)))));
    var var_1 = _wgslsmith_dot_vec4_u32(((abs(vec4<u32>(41181u, u_input.d.x, 1u, 9912u)) >> (vec4<u32>(u_input.d.x, 0u, var_0.c, 1u) % vec4<u32>(32u))) & vec4<u32>(~21883u, ~0u, _wgslsmith_add_u32(var_0.c, 1u), var_0.c)) | ((~vec4<u32>(u_input.d.x, var_0.c, var_0.c, var_0.c) ^ ~vec4<u32>(6493u, var_0.c, 1u, var_0.c)) << (vec4<u32>(u_input.d.x, var_0.c, 0u | var_0.c, u_input.d.x) % vec4<u32>(32u))), vec4<u32>(0u ^ u_input.d.x, abs(_wgslsmith_mult_u32(4294967295u, var_0.c)), ~reverseBits(u_input.d.x), firstTrailingBit(var_0.c)) | vec4<u32>(u_input.d.x, 0u, reverseBits(21549u >> (0u % 32u)), ~_wgslsmith_sub_u32(var_0.c, 31427u)));
    return false;
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_div_i32(i32(-1i) * -1i, 1i), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1088f, -1302f, 1327f, 481f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 804f, -897f, 145f)))))), Struct_1(-9821i, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1865f, 135f) - _wgslsmith_f_op_f32(-235f - -1598f)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -690f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 1269f) + -1486f))), ~1u, Struct_2(Struct_1(firstTrailingBit(6428i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(422f, 923f, -128f, 1000f)))));
    var var_1 = var_0.b;
    let var_2 = Struct_1(u_input.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_0.b.b)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-194f, var_1.b.x, var_1.b.x, var_1.b.x)), vec4<f32>(var_1.b.x, var_1.b.x, var_0.b.b.x, var_0.a.a.b.x))) * vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.a.b.x), _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(step(717f, var_1.b.x)), _wgslsmith_f_op_f32(-1618f - var_0.a.a.b.x)))));
    let var_3 = any(vec4<bool>(select(func_3(), !any(vec3<bool>(false, false, true)), false), any(vec3<bool>(true, true, true)), true, all(select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(false, true)))));
    var var_4 = arg_0;
    return var_0.a;
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> i32 {
    var var_0 = 1i;
    var_0 = reverseBits(~u_input.b);
    var var_1 = func_2(u_input.c);
    let var_2 = vec2<bool>(all(select(select(!vec2<bool>(arg_1, arg_1), !vec2<bool>(arg_1, false), vec2<bool>(arg_1, true)), vec2<bool>(true, false), true)), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.a, 31386i, u_input.a, var_1.a.a), vec4<i32>(4577i, 59828i, u_input.c, 1i) ^ vec4<i32>(-2147483647i, u_input.b, -2147483647i, 16016i))) < arg_0.a.a);
    let var_3 = Struct_1(~_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.a, arg_0.a.a) << (u_input.d.x % 32u), u_input.c), arg_0.a.b);
    return arg_0.a.a;
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.a.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1107f, arg_0.a.b.x, -176f, arg_0.a.b.x)), select(vec4<bool>(true, arg_1, !arg_1, all(vec3<bool>(arg_1, arg_1, true))), vec4<bool>(!arg_1, !arg_1, all(vec4<bool>(false, arg_1, false, true)), any(vec4<bool>(arg_1, arg_1, true, true))), 16108u <= _wgslsmith_div_u32(u_input.d.x, 0u)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_0.a.b.x, -593f), _wgslsmith_f_op_f32(min(arg_0.a.b.x, _wgslsmith_f_op_f32(-arg_0.a.b.x))), 1302f, arg_0.a.b.x) + _wgslsmith_f_op_vec4_f32(arg_0.a.b - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.b.x, 397f, arg_0.a.b.x, arg_0.a.b.x)), vec4<f32>(arg_0.a.b.x, arg_0.a.b.x, arg_0.a.b.x, arg_0.a.b.x))))));
    let var_1 = func_2(u_input.b).a;
    let var_2 = 1u;
    let var_3 = arg_0.a.b.x;
    let var_4 = func_3();
    return arg_0.a;
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = select(select(vec2<bool>(_wgslsmith_add_u32(u_input.d.x, u_input.d.x) >= ~u_input.d.x, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, all(vec4<bool>(false, false, false, false)))), vec2<bool>(true, true)), vec2<bool>(true, true), true);
    let var_1 = abs(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, arg_0, 10051i, u_input.b), vec4<i32>(-40542i, func_4(Struct_2(Struct_1(15721i, arg_1.b)), var_0.x).a, 0i, -58324i))));
    let var_2 = vec4<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(~1i, arg_1.a << (_wgslsmith_clamp_u32(u_input.d.x, 13538u, 4294967295u) % 32u)), -23364i), -arg_1.a, -(u_input.a << (~6282u % 32u)), _wgslsmith_mult_i32(countOneBits(14883i), _wgslsmith_add_i32(abs(-u_input.b), -1i)));
    let var_3 = vec4<f32>(arg_1.b.x, _wgslsmith_f_op_f32(round(arg_1.b.x)), arg_1.b.x, arg_1.b.x);
    var var_4 = func_2(var_2.x << (u_input.d.x % 32u));
    return func_2(-2147483647i).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(~(-1i), func_4(Struct_2(Struct_1(firstLeadingBit(-2147483647i), vec4<f32>(1732f, 2293f, -381f, 1712f))), -2147483647i > func_1(Struct_2(Struct_1(u_input.c, vec4<f32>(-1758f, -2278f, 1203f, 1515f))), all(vec2<bool>(false, false)))));
    var_0 = Struct_1(var_0.a, vec4<f32>(873f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(547f + -1000f) * _wgslsmith_f_op_f32(-630f + -719f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-926f)), _wgslsmith_f_op_f32(-var_0.b.x)), -1614f));
    var var_1 = _wgslsmith_add_vec2_u32(select(u_input.d, vec2<u32>(1u, ~26936u) & firstLeadingBit(~u_input.d), any(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)))), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32((u_input.d >> (u_input.d % vec2<u32>(32u))) & ~u_input.d, reverseBits(u_input.d)), vec2<u32>(_wgslsmith_mod_u32(4294967295u, u_input.d.x) ^ 4294967295u, 4294967295u)));
    var var_2 = !all(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), all(vec2<bool>(false, true))));
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(319f - var_0.b.x))));
    var_2 = true != all(vec4<bool>(true, true, true, true));
    let var_4 = Struct_3(func_2(~u_input.a), func_4(Struct_2(Struct_1(i32(-1i) * -2147483647i, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(101f, var_0.b.x, -442f, -911f))))), false), _wgslsmith_dot_vec2_u32(u_input.d, ~_wgslsmith_div_vec2_u32(u_input.d, u_input.d)) & (firstLeadingBit(8788u) & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 1u, u_input.d.x), ~vec3<u32>(4294967295u, u_input.d.x, 25693u))), func_2(_wgslsmith_add_i32(u_input.b, u_input.b & 44675i)));
    let var_5 = !any(vec3<bool>(true, true, any(vec2<bool>(false, false))));
    var_1 = _wgslsmith_div_vec2_u32(u_input.d, reverseBits(vec2<u32>(countOneBits(4294967295u), var_4.c))) | ~(~u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, _wgslsmith_f_op_f32(-func_5(_wgslsmith_mod_i32(-58819i ^ u_input.b, -2147483647i), func_4(var_4.d, false)).b.x), max(abs(1u), var_1.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -930f)))))), (vec4<i32>(-2147483647i | var_4.a.a.a, ~5961i, max(-2147483647i, 1i), 25910i) >> (countOneBits(abs(vec4<u32>(var_1.x, 45119u, var_4.c, var_4.c))) % vec4<u32>(32u))) ^ -select(vec4<i32>(-10805i, -47344i, u_input.a, u_input.b) | vec4<i32>(-11425i, var_4.d.a.a, u_input.c, 49054i), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a, var_0.a, -1i, 1i), vec4<i32>(-13665i, var_4.a.a.a, 1i, var_4.a.a.a), vec4<i32>(u_input.a, 3794i, var_4.b.a, var_4.a.a.a)), !vec4<bool>(false, var_5, var_5, true)));
}

