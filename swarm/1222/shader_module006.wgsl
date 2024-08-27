struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> f32 {
    let var_0 = true;
    var var_1 = Struct_1(abs(1i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1324f, -799f, 1467f, 841f) - vec4<f32>(-1000f, 109f, 1304f, -813f)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(586f, -260f, -256f, 475f), vec4<f32>(-867f, -1057f, 1149f, -661f)))), vec4<f32>(-844f, _wgslsmith_div_f32(1529f, -533f), _wgslsmith_div_f32(502f, -1726f), _wgslsmith_f_op_f32(568f - 1027f)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(764f, 1255f, -1000f, -1534f)))))));
    var_1 = Struct_1(u_input.a >> (0u % 32u), vec4<f32>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x));
    let var_2 = ~(~(~vec3<u32>(1u, 1u, 1u)));
    var_1 = Struct_1(countOneBits(0i), _wgslsmith_f_op_vec4_f32(var_1.b * _wgslsmith_f_op_vec4_f32(round(var_1.b))));
    return _wgslsmith_f_op_f32(var_1.b.x - -594f);
}

fn func_2() -> Struct_2 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1490f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-147f + _wgslsmith_f_op_f32(-160f * 915f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -504f), _wgslsmith_f_op_f32(f32(-1f) * -1404f))))) - _wgslsmith_f_op_f32(ceil(-866f))));
    var var_1 = true;
    let var_2 = Struct_1(u_input.a << (reverseBits(_wgslsmith_sub_u32(reverseBits(17169u), _wgslsmith_clamp_u32(4294967295u, 1771u, 0u))) % 32u), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-1000f, var_0.x)))), var_0.x), var_0.x, -2425f, 1634f));
    var var_3 = select(select(select(vec3<bool>(true, all(vec3<bool>(false, false, false)), true), vec3<bool>(true, false, all(vec3<bool>(true, false, true))), any(vec2<bool>(true, true))), !vec3<bool>(true, any(vec2<bool>(false, true)), var_2.a > u_input.a), all(vec4<bool>(true, false, false, false)) & false), select(!vec3<bool>(true, true, any(vec4<bool>(true, true, false, true))), vec3<bool>(true, true, true), true), all(vec4<bool>(all(vec3<bool>(true, true, true)), any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true)), true, true)));
    let var_4 = !vec4<bool>(all(select(var_3.zz, var_3.yx, vec2<bool>(var_3.x, false))), var_3.x, true, any(vec3<bool>(true, true, false)));
    return Struct_2(_wgslsmith_mod_i32(-2147483647i, -1i));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1046f, _wgslsmith_f_op_f32(exp2(arg_1.b.x)), arg_1.b.x)))));
    var var_1 = var_0.x;
    var var_2 = reverseBits(vec3<i32>(-arg_1.a, 1220i, ~(-1i)));
    let var_3 = countOneBits(~(~vec4<u32>(12107u << (0u % 32u), 4294967295u, ~92564u, 1u)));
    var_2 = countOneBits(_wgslsmith_mod_vec3_i32(max(firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_3.a, arg_1.a, var_2.x), vec3<i32>(arg_1.a, u_input.a, -10267i))), abs(vec3<i32>(var_2.x, -1i, -1i))), ~firstTrailingBit(vec3<i32>(2147483647i, -1981i, -11764i)) << (vec3<u32>(1u, select(0u, 4294967295u, false), _wgslsmith_add_u32(5923u, var_3.x)) % vec3<u32>(32u))));
    return Struct_1(_wgslsmith_mult_i32(-1i, -67811i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, arg_1.b.x, arg_1.b.x, var_0.x) * _wgslsmith_f_op_vec4_f32(floor(arg_1.b))))));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = arg_0.b.x;
    let var_1 = _wgslsmith_div_vec2_u32(countOneBits(~vec2<u32>(52883u, 17559u)) >> (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 64906u, 39651u, 55103u), vec4<u32>(1u, 23462u, 1u, 4294967295u)), ~43472u) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(43570u, 0u)), ~vec2<u32>(25316u, 0u)), vec2<u32>(68229u, 80454u))) & abs(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(11672u, 97979u), vec2<u32>(40389u, 0u))));
    var var_2 = ~(~_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_1.x, 4294967295u), vec3<u32>(1u, var_1.x, var_1.x)) ^ ~vec3<u32>(var_1.x, 16403u, 16767u), select(vec3<u32>(var_1.x, var_1.x, var_1.x), reverseBits(vec3<u32>(65139u, 1u, var_1.x)), vec3<bool>(false, false, arg_1))));
    var var_3 = vec2<f32>(arg_2.b.x, -206f);
    var_2 = vec3<u32>(min(0u, _wgslsmith_dot_vec3_u32(~(vec3<u32>(var_2.x, var_2.x, var_2.x) | vec3<u32>(var_2.x, var_2.x, 30053u)), abs(vec3<u32>(var_2.x, 61950u, 4294967295u)))), var_2.x, ~_wgslsmith_clamp_u32(~(~25879u), var_2.x, ~_wgslsmith_div_u32(var_1.x, var_1.x)));
    return reverseBits(max(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, min(var_2.x, 47509u), 1u, 35164u), vec4<u32>(~var_1.x, var_2.x, ~53187u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, 1u, var_1.x), vec3<u32>(var_1.x, var_1.x, var_2.x)))), vec4<u32>(1u, var_2.x, ~4294967295u, 4294967295u) << (vec4<u32>(countOneBits(var_1.x), ~45311u, 0u, var_2.x) % vec4<u32>(32u))));
}

fn func_1(arg_0: i32) -> vec2<bool> {
    var var_0 = countOneBits(vec4<i32>(i32(-1i) * -2147483647i, select(countOneBits(arg_0), _wgslsmith_sub_i32(-48994i, -25699i), true), firstTrailingBit(countOneBits(arg_0)), _wgslsmith_sub_i32(u_input.a, 0i))) << (func_5(func_4(vec3<bool>(true, true, true), Struct_1(15181i, _wgslsmith_div_vec4_f32(vec4<f32>(221f, -1350f, 548f, 1517f), vec4<f32>(785f, -1153f, -435f, -915f))), -1516f, func_2()), all(!select(vec2<bool>(false, false), vec2<bool>(true, true), false)), func_4(vec3<bool>(true, all(vec3<bool>(false, true, false)), true), Struct_1(u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(106f, 936f, 1000f, -1125f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(994f * -547f) - _wgslsmith_f_op_f32(-520f + 1031f)), func_2())) % vec4<u32>(32u));
    var var_1 = ~max(~(-1i), 52088i);
    let var_2 = select(max(~vec2<u32>(0u, 23026u), ~vec2<u32>(1u, 1u)) | vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(46554u, 138142u, 56159u, 23892u), vec4<u32>(27986u, 0u, 92687u, 42189u))), _wgslsmith_sub_u32(~36953u, 1u)), _wgslsmith_add_vec2_u32(~vec2<u32>(31268u, 4294967295u), _wgslsmith_clamp_vec2_u32(vec2<u32>(41802u, 40297u), ~vec2<u32>(25428u, 1u), vec2<u32>(1u, 1u))) >> (vec2<u32>(~(~1u), _wgslsmith_mult_u32(~28626u, 1u)) % vec2<u32>(32u)), true);
    var var_3 = vec2<f32>(411f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1962f - -1000f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1878f)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-270f))))));
    let var_4 = ~(~(~u_input.a));
    return select(vec2<bool>(all(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true))), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, var_4 == -41783i), any(vec2<bool>(true, false))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_1(_wgslsmith_add_i32(-20830i, 14501i | _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 0i, -51550i), vec3<i32>(u_input.a, -44520i, -58967i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(vec3<i32>(-18127i, u_input.a, u_input.a) >> (vec3<u32>(53857u, 4294967295u, 16859u) % vec3<u32>(32u)), max(-vec3<i32>(1i, u_input.a, -20007i), ~vec3<i32>(u_input.a, 0i, u_input.a))) >> (~vec3<u32>(29883u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 15997u, 19314u)), ~0u) % vec3<u32>(32u)), u_input.a);
}

