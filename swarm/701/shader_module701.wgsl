struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec2<bool>,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: f32) -> u32 {
    var var_0 = arg_1.b.wyx;
    let var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(40070i, ~(-1i)), arg_1.a);
    let var_2 = arg_2;
    var var_3 = i32(-1i) * -14846i;
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -703f);
    return 0u;
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<bool>) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(232f * 1299f), _wgslsmith_f_op_f32(f32(-1f) * -103f))), _wgslsmith_f_op_f32(107f + -672f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -838f) * _wgslsmith_f_op_f32(step(-1188f, _wgslsmith_f_op_f32(493f - -267f)))), -1443f, 690f) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(839f, -1083f, -254f, -1821f) - vec4<f32>(-1610f, -816f, -545f, -1123f)))), _wgslsmith_div_vec4_f32(vec4<f32>(425f, 1358f, -1409f, 919f), vec4<f32>(-1150f, -966f, 910f, -682f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(594f, -600f, -141f, -243f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-260f, 652f, -1000f, -268f) + vec4<f32>(-1000f, 782f, -147f, 216f))))));
    var var_1 = Struct_3(Struct_1(u_input.a, _wgslsmith_f_op_vec4_f32(select(var_0, var_0, arg_0.x)), -1863i, arg_0.yz), all(vec3<bool>(arg_1.x, true | !arg_0.x, true)), select(vec2<bool>(!(!arg_1.x), true), arg_1.xz, arg_1.zy), all(!arg_1), ~1u);
    var_1 = Struct_3(var_1.a, !select(!arg_1.x, true, false) && any(select(!vec3<bool>(false, arg_0.x, true), vec3<bool>(true, true, true), true)), select(select(vec2<bool>(all(arg_0.yx), true), select(select(arg_1.zz, vec2<bool>(arg_1.x, arg_0.x), arg_0.x), vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(arg_1.x, false)), var_1.d), arg_1.zy, false), true, abs(select(43404u, 1u, any(vec2<bool>(true, true)))));
    return _wgslsmith_sub_vec2_i32(vec2<i32>(-(~u_input.a.x | u_input.a.x), min(_wgslsmith_clamp_i32(select(var_1.a.a.x, u_input.a.x, arg_0.x), ~(-2147483647i), firstLeadingBit(u_input.a.x)), -(-27898i & var_1.a.a.x))), abs(min(var_1.a.a, vec2<i32>(~var_1.a.c, abs(u_input.a.x)))));
}

fn func_2(arg_0: i32, arg_1: u32) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = Struct_1(-max(_wgslsmith_mod_vec2_i32(u_input.a, u_input.a), vec2<i32>(1i, _wgslsmith_sub_i32(30956i, u_input.a.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-514f, -506f, -767f, 1018f)), vec4<f32>(1f, 1f, 1f, 1f), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), true))), vec4<f32>(-159f, _wgslsmith_f_op_f32(sign(-251f)), _wgslsmith_f_op_f32(floor(-351f)), -346f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-922f, 559f, -957f, -624f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(263f, 803f, -821f, 707f), vec4<f32>(246f, 322f, 665f, 654f), false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-100f, -1000f, 726f, -1541f), vec4<f32>(2044f, -1016f, -3104f, -482f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(973f, 356f, 1489f, -355f) + vec4<f32>(-934f, -592f, 1214f, 819f))))), !vec4<bool>(true, true, all(vec3<bool>(true, true, false)), all(vec3<bool>(true, false, false))))), -30705i, vec2<bool>(true, true));
    var_1 = Struct_1(func_3(!vec4<bool>(!var_1.d.x, true, !var_1.d.x, false), select(vec3<bool>(var_1.d.x, true, true), vec3<bool>(var_1.d.x, all(vec2<bool>(false, var_1.d.x)), !var_1.d.x), _wgslsmith_f_op_f32(1527f + 1587f) < _wgslsmith_f_op_f32(var_1.b.x + var_1.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_1.b, var_1.b) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-1466f, 247f)), -1000f, var_1.b.x, var_1.b.x))), -countOneBits(~_wgslsmith_div_i32(u_input.a.x, arg_0)), var_1.d);
    var var_2 = Struct_1(-(vec2<i32>(~u_input.a.x, u_input.a.x >> (arg_1 % 32u)) << (firstTrailingBit(abs(vec2<u32>(4294967295u, 42966u))) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_1.b * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_1.b + var_1.b), var_1.b, !vec4<bool>(var_1.d.x, var_1.d.x, false, var_1.d.x)))))), firstTrailingBit(_wgslsmith_mult_i32(countOneBits(13167i), var_1.c)), !(!vec2<bool>(var_1.d.x, var_0 >= 66703i)));
    var var_3 = ~max(firstLeadingBit(vec4<u32>(arg_1, 1u, firstTrailingBit(27607u), ~1u)), _wgslsmith_add_vec4_u32(reverseBits(firstTrailingBit(vec4<u32>(arg_1, 22051u, arg_1, arg_1))), countOneBits(vec4<u32>(4294967295u, arg_1, 0u, arg_1))));
    return Struct_1(abs(~vec2<i32>(var_1.c, var_0) | abs(-var_2.a)), var_2.b, var_0, vec2<bool>(true, false));
}

fn func_4(arg_0: Struct_3) -> vec3<i32> {
    let var_0 = arg_0.a;
    let var_1 = arg_0;
    let var_2 = !(!select(vec4<bool>(false, -36626i < u_input.a.x, any(vec2<bool>(false, var_1.b)), var_0.d.x), vec4<bool>(false, false, var_1.d, any(vec2<bool>(true, true))), !select(vec4<bool>(false, false, var_1.a.d.x, var_0.d.x), vec4<bool>(false, arg_0.d, var_0.d.x, arg_0.a.d.x), vec4<bool>(var_1.a.d.x, var_1.d, true, var_1.c.x))));
    var var_3 = vec3<bool>(var_0.d.x, true, true);
    var var_4 = 642f;
    return ~_wgslsmith_clamp_vec3_i32(vec3<i32>(-677i, var_0.c, firstTrailingBit(~23968i)), _wgslsmith_div_vec3_i32(vec3<i32>(abs(var_1.a.c), arg_0.a.a.x << (9279u % 32u), -2187i), abs(-vec3<i32>(arg_0.a.a.x, u_input.a.x, 1i))), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(var_1.a.a.x, -1i), var_0.a.x), arg_0.a.c, -29155i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~min(1u >> (countOneBits(reverseBits(52646u)) % 32u), _wgslsmith_clamp_u32(func_1(_wgslsmith_div_u32(28159u, 72418u), Struct_1(u_input.a, vec4<f32>(-1845f, -1091f, 1000f, -1000f), 0i, vec2<bool>(true, false)), _wgslsmith_f_op_f32(ceil(1505f))), 86570u, ~52787u));
    var var_1 = reverseBits(-func_4(Struct_3(func_2(u_input.a.x, 62661u), any(vec3<bool>(false, false, false)), select(vec2<bool>(true, true), vec2<bool>(false, false), true), true, var_0)));
    var_1 = vec3<i32>(_wgslsmith_mod_i32(var_1.x, _wgslsmith_mult_i32(var_1.x, _wgslsmith_mult_i32(-16610i, -u_input.a.x))), min(6202i, _wgslsmith_dot_vec4_i32(-countOneBits(vec4<i32>(u_input.a.x, -78006i, var_1.x, -2147483647i)), countOneBits(vec4<i32>(u_input.a.x, var_1.x, 19123i, -48690i) ^ vec4<i32>(-2147483647i, -29378i, 68152i, u_input.a.x)))), 30882i);
    var var_2 = select(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(var_0, var_0, var_0, 4294967295u), vec4<u32>(0u, 1u, 0u, var_0) | vec4<u32>(9656u, 1u, var_0, var_0)), vec4<u32>(max(var_0, 9131u), 54797u, var_0 & var_0, 4294967295u)), var_0 ^ abs(~var_0)), 1u, !(any(vec3<bool>(true, true, true)) && true));
    let var_3 = Struct_2(func_2(~var_1.x, 107939u), ~(~max(abs(var_0), _wgslsmith_sub_u32(86686u, var_0))));
    let var_4 = _wgslsmith_f_op_f32(-var_3.a.b.x);
    let var_5 = -_wgslsmith_mult_vec2_i32(~vec2<i32>(var_3.a.c ^ 2147483647i, func_2(1434i, var_3.b).c), ~select(var_1.zy, vec2<i32>(1i, 2147483647i), true));
    let var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i, 2147483647i, var_5.x, _wgslsmith_div_i32(_wgslsmith_div_i32(1i, ~(-3636i)), _wgslsmith_div_i32(_wgslsmith_div_i32(var_5.x, -30921i), var_1.x))), ~var_1.x, u_input.a.x, -11836i);
}

