struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: vec3<f32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>) -> vec4<f32> {
    var var_0 = Struct_1(firstTrailingBit(~arg_0.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, 603f, arg_0.b.x, 653f))))), _wgslsmith_div_vec4_f32(vec4<f32>(-1299f, _wgslsmith_f_op_f32(min(arg_0.b.x, 661f)), _wgslsmith_f_op_f32(f32(-1f) * -1024f), -2117f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x)))))));
    var var_1 = _wgslsmith_div_i32(-1i, ~(i32(-1i) * -(~4118i)));
    let var_2 = Struct_3(-(~vec2<i32>(-2147483647i, u_input.a)) >> (reverseBits(select(vec2<u32>(var_0.a.x, 0u), vec2<u32>(56850u, 30980u), false) ^ ~vec2<u32>(var_0.a.x, 0u)) % vec2<u32>(32u)), -49936i, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) + _wgslsmith_f_op_f32(step(var_0.b.x, _wgslsmith_f_op_f32(sign(-144f))))), _wgslsmith_f_op_f32(var_0.b.x - -641f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(2579f * _wgslsmith_f_op_f32(arg_0.b.x + 1878f))))), arg_1.xx);
    let var_3 = vec4<bool>(!(!arg_1.x | !var_2.d.x) && any(vec2<bool>(var_2.d.x, false)), true, false, select(false, (true && !arg_1.x) && !any(vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x)), 0u <= (4294967295u << (var_0.a.x % 32u))));
    var var_4 = Struct_3(var_2.a, ~(-25643i), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(var_2.c.x * _wgslsmith_f_op_f32(var_2.c.x - -430f)), var_2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.b.x)))))), vec2<bool>(var_3.x, _wgslsmith_add_u32(~u_input.b, 14654u ^ u_input.b) == ~(~var_0.a.x)));
    return _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.x, var_2.c.x))), 1283f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1518f * var_4.c.x) + var_4.c.x)))));
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_1(vec3<u32>(52154u, min(52184u, 15460u), _wgslsmith_div_u32(~1u, u_input.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec3<u32>(0u, u_input.b, u_input.b), vec4<f32>(-518f, 1031f, 336f, 1000f)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(211f - 968f)), -1057f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-520f, -260f)), _wgslsmith_f_op_f32(f32(-1f) * -598f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -194f) * -1143f))));
    var var_1 = Struct_2(abs(abs(~vec2<i32>(u_input.a, -1i))), abs(_wgslsmith_mult_i32(25378i, u_input.a)), var_0);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_0.b.x, 412f, true))))))) * _wgslsmith_f_op_f32(-var_1.c.b.x));
    var var_3 = vec3<bool>(!select(false, !(var_0.b.x <= var_1.c.b.x), false), !(!((1u ^ var_1.c.a.x) > ~2981u)), true);
    var_1 = Struct_2((min(var_1.a, reverseBits(var_1.a)) & (vec2<i32>(1i, -2147483647i) & abs(var_1.a))) | _wgslsmith_mult_vec2_i32(firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(var_1.a.x, -2147483647i), vec2<i32>(2147483647i, var_1.b))), var_1.a), var_1.b, var_0);
    return vec2<bool>(true, true);
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    let var_0 = func_2();
    var var_1 = select(vec3<u32>(~countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 44140u, 21888u), vec4<u32>(arg_0.x, u_input.b, 20468u, u_input.b))), arg_0.x, _wgslsmith_mod_u32(22360u & u_input.b, 4294967295u) | (~u_input.b >> (u_input.b % 32u))), select(arg_0, max(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.x, 1u, u_input.b), arg_0), ~(~vec3<u32>(u_input.b, 1u, arg_0.x))), true), !(!(true & var_0.x)));
    var var_2 = vec3<bool>(var_0.x, u_input.a > ~(i32(-1i) * -17869i), all(vec3<bool>(any(vec2<bool>(true, var_0.x)), var_0.x, select(all(vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.x, !var_0.x))));
    var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_div_u32(4294967295u, _wgslsmith_mod_u32(arg_0.x | u_input.b, 35241u)), min(954u, u_input.b), max(68775u, 101895u)), _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(43407u, 0u, var_1.x | 162790u), ~vec3<u32>(var_1.x, u_input.b, u_input.b), _wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_0.x, 4294967295u, 28817u), vec3<u32>(var_1.x, 76996u, u_input.b) >> (vec3<u32>(u_input.b, 0u, var_1.x) % vec3<u32>(32u)), arg_0 << (arg_0 % vec3<u32>(32u)))), ~arg_0));
    let var_3 = ~(~select(var_1.xy, var_1.xz, false));
    return ~(~u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<u32>(~min(15820u, ~10981u), u_input.b, u_input.b);
    var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_add_u32(u_input.b, ~3943u), 1u, 30000u), ~(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 40393u, var_0.x), vec3<u32>(var_0.x, u_input.b, 1u) >> (vec3<u32>(19773u, var_0.x, 53222u) % vec3<u32>(32u))) << ((firstTrailingBit(vec3<u32>(var_0.x, 4294967295u, u_input.b)) >> (~vec3<u32>(var_0.x, u_input.b, u_input.b) % vec3<u32>(32u))) % vec3<u32>(32u))));
    var var_1 = firstTrailingBit(~(~(~firstLeadingBit(var_0.x))));
    let var_2 = Struct_1(vec3<u32>(u_input.b, _wgslsmith_div_u32(u_input.b, 1u), 6956u), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(1689f, -380f, _wgslsmith_f_op_f32(max(124f, -172f)), _wgslsmith_div_f32(-1968f, -972f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(197f, -1058f, -1000f, 1444f))))))));
    var_0 = abs(~vec3<u32>(firstLeadingBit(u_input.b ^ var_0.x), var_2.a.x, ~u_input.b));
    var var_3 = vec4<u32>(0u, 4294967295u, _wgslsmith_mod_u32(var_0.x, func_1(var_2.a)), select(max(31924u & u_input.b, select(u_input.b, _wgslsmith_mult_u32(1u, var_2.a.x), any(vec4<bool>(false, false, true, true)))), _wgslsmith_div_u32(~_wgslsmith_clamp_u32(u_input.b, 0u, 4294967295u), var_2.a.x), any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false), func_2().x))));
    var var_4 = select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), all(vec3<bool>(true, true, true))), _wgslsmith_div_u32(abs(0u), 62896u) >= var_2.a.x), vec3<bool>(any(vec2<bool>(true, true)), false, true), false);
    var_3 = ~select(abs(reverseBits(vec4<u32>(u_input.b, 12810u, 1u, 0u)) & vec4<u32>(var_2.a.x, 62721u, 33028u, 14110u)), select(_wgslsmith_sub_vec4_u32(vec4<u32>(var_3.x, var_0.x, 1u, u_input.b), max(vec4<u32>(4294967295u, var_3.x, var_2.a.x, u_input.b), vec4<u32>(u_input.b, var_3.x, 18530u, 4294967295u))), ~(vec4<u32>(var_2.a.x, var_2.a.x, 89443u, var_0.x) ^ vec4<u32>(49693u, u_input.b, 4294967295u, 0u)), !var_4.x), !select(select(vec4<bool>(var_4.x, var_4.x, var_4.x, false), vec4<bool>(false, true, true, false), false), !vec4<bool>(true, var_4.x, false, var_4.x), false));
    let var_5 = Struct_2(vec2<i32>(-_wgslsmith_div_i32(-34297i, u_input.a), u_input.a), -abs(u_input.a), Struct_1(vec3<u32>(4294967295u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(45588u, 51992u, var_0.x), vec3<u32>(0u, u_input.b, var_2.a.x)), _wgslsmith_mod_u32(var_2.a.x, var_3.x)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.b) * var_2.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -752f)));
}

