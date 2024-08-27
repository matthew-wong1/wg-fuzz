struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: vec4<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: vec3<u32>,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec3<i32>,
    d: Struct_1,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_5, arg_1: vec4<f32>, arg_2: i32, arg_3: bool) -> vec4<bool> {
    let var_0 = arg_2;
    var var_1 = false;
    var var_2 = vec2<bool>(!(!arg_3), true);
    var var_3 = select(!any(select(vec4<bool>(true, false, arg_3, var_2.x), !vec4<bool>(false, var_2.x, var_2.x, arg_3), arg_3)), false, !arg_3);
    var var_4 = vec2<u32>(_wgslsmith_sub_u32(74052u, arg_0.e.d.c), 7522u);
    return !(!vec4<bool>(any(!vec4<bool>(arg_3, arg_3, true, var_2.x)), any(select(vec3<bool>(true, var_2.x, false), vec3<bool>(true, arg_3, var_2.x), vec3<bool>(true, true, false))), true, false));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(610f, -641f))), -324f, 922f)) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-429f, -2038f, 1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1090f, 850f, 508f) - vec3<f32>(167f, -155f, 1000f))), vec3<bool>(true, true, true))))));
    var var_1 = true;
    var var_2 = u_input.a;
    var var_3 = Struct_2(select(~(-vec3<i32>(4650i, u_input.a, u_input.a)), vec3<i32>(u_input.a, u_input.a, 1i) | (vec3<i32>(-36347i, u_input.a, u_input.a) & vec3<i32>(1i, u_input.a, 0i)), firstTrailingBit(88351u) == firstLeadingBit(1u)) | abs(~(~vec3<i32>(-19609i, u_input.a, u_input.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-346f)), _wgslsmith_f_op_f32(-var_0.x)), ~vec3<u32>(~6936u, 1u, 66761u) >> (firstTrailingBit(countOneBits(~vec3<u32>(0u, 38996u, 1u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(round(var_0)), reverseBits(max(countOneBits(vec4<i32>(u_input.a, u_input.a, -6957i, 38089i)), countOneBits(vec4<i32>(u_input.a, u_input.a, -32686i, u_input.a)))) ^ (~(~vec4<i32>(11679i, 1i, u_input.a, 61531i)) | ~(-vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a))));
    var var_4 = Struct_5(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, 1898f, false))))), var_0, var_3.c.x, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(510f, var_0.x, -242f, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(319f, -1357f, -1619f, 796f)), true)), vec4<f32>(_wgslsmith_f_op_f32(step(var_3.b, 112f)), var_3.b, _wgslsmith_f_op_f32(abs(var_3.b)), var_0.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_3.d.xz, vec2<f32>(var_0.x, var_3.d.x), true)), vec2<f32>(_wgslsmith_f_op_f32(sign(-243f)), _wgslsmith_f_op_f32(abs(var_0.x))))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.xy), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -498f), var_0.x), vec2<bool>(true, all(vec4<bool>(true, true, true, true))))), Struct_1(var_0.x, var_0, 1u, vec4<f32>(-1473f, 197f, -2685f, var_3.d.x), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, -1174f)))), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) * var_3.d.x)), Struct_3(var_3.a), _wgslsmith_sub_vec3_i32(var_3.a, var_3.e.ywy), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_3.d.x)), _wgslsmith_f_op_f32(var_0.x + -287f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 238f, var_0.x) - var_3.d) * var_0), 44631u, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -105f), _wgslsmith_f_op_f32(-var_0.x), var_0.x, var_0.x), vec2<f32>(_wgslsmith_f_op_f32(-var_3.b), _wgslsmith_div_f32(var_3.d.x, var_0.x))), Struct_3(~vec3<i32>(var_3.a.x, 9028i, var_3.a.x))));
    return u_input.a ^ abs(~(u_input.a >> (7465u % 32u)) >> (_wgslsmith_mult_u32(var_4.d.c, ~var_4.d.c) % 32u));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec4<i32>, arg_3: f32) -> Struct_1 {
    let var_0 = select(vec4<bool>(true, true, !arg_1, arg_1), !select(select(func_2(Struct_5(Struct_1(1000f, vec3<f32>(arg_3, -1034f, arg_3), 4294967295u, vec4<f32>(arg_3, arg_3, -827f, arg_3), vec2<f32>(arg_3, arg_3)), arg_3, vec2<f32>(arg_3, 149f), Struct_1(arg_3, vec3<f32>(-482f, -270f, -2179f), arg_0, vec4<f32>(347f, 924f, arg_3, 1796f), vec2<f32>(-2674f, 200f)), Struct_4(arg_3, Struct_3(arg_2.wzz), arg_2.xwx, Struct_1(-1523f, vec3<f32>(arg_3, -273f, -1000f), 78866u, vec4<f32>(arg_3, arg_3, arg_3, 1554f), vec2<f32>(-340f, -338f)), Struct_3(arg_2.xzy))), vec4<f32>(arg_3, 1089f, 1053f, arg_3), -17975i, false), func_2(Struct_5(Struct_1(374f, vec3<f32>(-819f, 720f, -1284f), arg_0, vec4<f32>(arg_3, 1000f, 1014f, 462f), vec2<f32>(731f, arg_3)), -1000f, vec2<f32>(arg_3, arg_3), Struct_1(arg_3, vec3<f32>(-1186f, arg_3, -307f), arg_0, vec4<f32>(arg_3, arg_3, -1338f, -1214f), vec2<f32>(arg_3, -790f)), Struct_4(1137f, Struct_3(vec3<i32>(arg_2.x, u_input.a, u_input.a)), vec3<i32>(u_input.a, 62226i, -4058i), Struct_1(arg_3, vec3<f32>(arg_3, arg_3, -445f), 1u, vec4<f32>(1185f, arg_3, 1000f, arg_3), vec2<f32>(-205f, arg_3)), Struct_3(arg_2.zxz))), vec4<f32>(-460f, 626f, -366f, -1098f), -69817i, true), true), func_2(Struct_5(Struct_1(arg_3, vec3<f32>(-588f, arg_3, arg_3), arg_0, vec4<f32>(arg_3, -652f, -463f, arg_3), vec2<f32>(-501f, arg_3)), 551f, vec2<f32>(arg_3, arg_3), Struct_1(1389f, vec3<f32>(arg_3, arg_3, arg_3), 7727u, vec4<f32>(arg_3, -1382f, arg_3, 986f), vec2<f32>(arg_3, 679f)), Struct_4(212f, Struct_3(vec3<i32>(-20267i, arg_2.x, arg_2.x)), arg_2.wwx, Struct_1(arg_3, vec3<f32>(arg_3, 169f, -519f), arg_0, vec4<f32>(1365f, -1008f, 1168f, arg_3), vec2<f32>(arg_3, arg_3)), Struct_3(vec3<i32>(-24148i, u_input.a, 0i)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_3, arg_3, 2034f)), arg_2.x >> (arg_0 % 32u), true), true), vec4<bool>(all(vec4<bool>(arg_1, arg_1, arg_1, false)), !(true & arg_1) | false, select(true, false, _wgslsmith_div_i32(6856i, arg_2.x) < arg_2.x), true));
    var var_1 = vec3<u32>(~_wgslsmith_add_u32(22555u << (~arg_0 % 32u), countOneBits(12552u)), firstTrailingBit(~arg_0) & ~max(~23313u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 1u), vec2<u32>(arg_0, arg_0))), arg_0);
    var_1 = vec3<u32>(1u, 1u, 1u);
    var var_2 = vec4<i32>(abs(func_3()), firstLeadingBit(arg_2.x | -43641i) >> (~_wgslsmith_add_u32(var_1.x, 4294967295u) % 32u), reverseBits(reverseBits(u_input.a | arg_2.x)), _wgslsmith_clamp_i32(~0i, u_input.a, countOneBits(arg_2.x)) & -2147483647i) ^ (arg_2 & max(vec4<i32>(arg_2.x, -17907i, arg_2.x, -1i) & vec4<i32>(-2147483647i, arg_2.x, -11705i, arg_2.x), -reverseBits(vec4<i32>(arg_2.x, u_input.a, -79144i, arg_2.x))));
    let var_3 = Struct_5(Struct_1(arg_3, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_3, arg_3)), vec3<f32>(466f, arg_3, -860f))))), 0u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, arg_3, 1000f, arg_3))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, -1000f, arg_3, 1629f))))), vec2<f32>(arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_3)) + 311f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3))) - -1548f) - -1475f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1963f, -167f)), Struct_1(_wgslsmith_f_op_f32(245f * arg_3), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(307f, arg_3, 545f)))))), min(~(~arg_0), 4294967295u), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3), arg_3), arg_3, -239f, 1574f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-362f, -1000f))), Struct_4(_wgslsmith_f_op_f32(arg_3 + 615f), Struct_3(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_2.x, 1i, 10806i), vec3<i32>(1i, arg_2.x, 21924i))), vec3<i32>(-25279i, min(-2147483647i, -1i), -1i) >> ((vec3<u32>(arg_0, 0u, 36563u) | reverseBits(vec3<u32>(12967u, 4294967295u, arg_0))) % vec3<u32>(32u)), Struct_1(arg_3, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_3, -219f, 284f), vec3<f32>(arg_3, arg_3, arg_3))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-615f, arg_3, arg_3)))), var_1.x, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-710f, -699f, arg_3, 1000f)))), vec2<f32>(224f, _wgslsmith_f_op_f32(sign(494f)))), Struct_3(~arg_2.zyw)));
    return var_3.e.d;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_5, arg_2: vec2<u32>) -> Struct_3 {
    let var_0 = Struct_2(vec3<i32>(-1i, reverseBits(1i), _wgslsmith_mod_i32(arg_1.e.c.x, _wgslsmith_mod_i32(u_input.a, arg_1.e.e.a.x)) << (arg_1.d.c % 32u)), arg_1.a.e.x, ~_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(1u, 1u, arg_0.c)), ~vec3<u32>(arg_1.a.c, 4294967295u, arg_0.c)), abs(vec3<u32>(arg_0.c, 1u, 1u))), _wgslsmith_f_op_vec3_f32(-arg_1.e.d.d.yxx), vec4<i32>(arg_1.e.c.x, u_input.a, 2147483647i, ~(-arg_1.e.c.x)));
    var var_1 = select(vec3<bool>((var_0.d.x > _wgslsmith_f_op_f32(f32(-1f) * -136f)) || false, !(!all(vec3<bool>(true, true, true))), !all(vec2<bool>(true, true))), !select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(false, false, true), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec4<bool>(true, true, true, false))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-arg_1.a.d);
    return Struct_3(vec3<i32>(u_input.a & ~_wgslsmith_sub_i32(arg_1.e.c.x, -2147483647i), i32(-1i) * -firstTrailingBit(arg_1.e.b.a.x), 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(~(~1917u), true, vec4<i32>(0i, u_input.a << (1u % 32u), ~_wgslsmith_clamp_i32(u_input.a, 0i, 0i), 0i), _wgslsmith_f_op_f32(floor(-2090f))), Struct_5(Struct_1(-309f, _wgslsmith_div_vec3_f32(vec3<f32>(-1800f, 1274f, 948f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-567f, 604f, -1759f)))), ~_wgslsmith_mod_u32(4294967295u, 4294967295u), vec4<f32>(func_1(4094u, true, vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), -607f).d.x, _wgslsmith_f_op_f32(min(1271f, 128f)), _wgslsmith_f_op_f32(f32(-1f) * -927f), 403f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(146f - _wgslsmith_f_op_f32(-410f - -103f))), vec2<f32>(-1000f, func_1(~31311u, any(vec3<bool>(true, true, false)), vec4<i32>(u_input.a, u_input.a, 1306i, 7024i), _wgslsmith_div_f32(-120f, -750f)).d.x), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(880f, 1000f, false)) + -1612f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1566f, -268f)) - vec3<f32>(-448f, 305f, 602f)), ~0u >> (abs(1u) % 32u), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-714f, 660f, -1250f, 183f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1678f, 1035f)))), Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-237f * 670f), _wgslsmith_f_op_f32(f32(-1f) * -846f)), Struct_3(abs(vec3<i32>(u_input.a, u_input.a, u_input.a))), ~vec3<i32>(u_input.a, u_input.a, u_input.a), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1469f), vec3<f32>(2331f, -1250f, -1145f), 1u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-820f, 1132f, 923f, 389f)), _wgslsmith_div_vec2_f32(vec2<f32>(390f, -452f), vec2<f32>(-524f, 1140f))), Struct_3(~vec3<i32>(u_input.a, u_input.a, u_input.a)))), vec2<u32>(1u, 1u));
    let var_1 = _wgslsmith_div_vec4_u32(select(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), select(func_2(Struct_5(Struct_1(1676f, vec3<f32>(-763f, -733f, -1000f), 4294967295u, vec4<f32>(-199f, -874f, 1000f, -318f), vec2<f32>(-445f, 1443f)), 1778f, vec2<f32>(-1840f, 779f), Struct_1(2365f, vec3<f32>(327f, -281f, -1520f), 31084u, vec4<f32>(2142f, -572f, -2585f, 354f), vec2<f32>(-355f, 1322f)), Struct_4(-923f, Struct_3(vec3<i32>(23649i, 39792i, 44571i)), vec3<i32>(20355i, u_input.a, var_0.a.x), Struct_1(177f, vec3<f32>(-1274f, -1523f, -387f), 1u, vec4<f32>(-1496f, -1409f, 326f, 1794f), vec2<f32>(-187f, -762f)), Struct_3(var_0.a))), vec4<f32>(157f, -1568f, -790f, -341f), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 2147483647i, var_0.a.x, -2147483647i), vec4<i32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)), true), vec4<bool>(any(vec2<bool>(false, true)), false, true, false), any(vec2<bool>(true, false)))), abs(~max(vec4<u32>(1u, 1u, 1u, 1u), min(vec4<u32>(0u, 1u, 0u, 0u), vec4<u32>(46674u, 783u, 4294967295u, 4294967295u)))));
    var var_2 = _wgslsmith_clamp_vec4_u32(firstTrailingBit(var_1), (var_1 ^ vec4<u32>(~53685u, var_1.x, _wgslsmith_sub_u32(0u, var_1.x), var_1.x)) & firstLeadingBit(~_wgslsmith_add_vec4_u32(var_1, vec4<u32>(0u, var_1.x, var_1.x, 0u))), select(~(vec4<u32>(0u, var_1.x, 4294967295u, 1u) & firstLeadingBit(var_1)), var_1, !(!any(vec2<bool>(false, false)))));
    let var_3 = Struct_2(vec3<i32>(~(~var_0.a.x), var_0.a.x, -2147483647i >> (1u % 32u)), 1208f, vec3<u32>(~1u, ~firstTrailingBit(1u), 0u), vec3<f32>(1000f, _wgslsmith_f_op_f32(sign(1233f)), 1f), _wgslsmith_mult_vec4_i32(min(_wgslsmith_mult_vec4_i32(vec4<i32>(28260i, var_0.a.x, -14804i, var_0.a.x), vec4<i32>(-19326i, 2147483647i, -9850i, var_0.a.x)), vec4<i32>(-1i, u_input.a, var_0.a.x, var_0.a.x)) >> (vec4<u32>(1u, var_1.x, var_2.x, ~0u) % vec4<u32>(32u)), (~vec4<i32>(u_input.a, -1i, -17072i, -20569i) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, var_0.a.x, var_0.a.x, 30986i), vec4<i32>(var_0.a.x, u_input.a, u_input.a, 0i), vec4<i32>(10988i, 2147483647i, u_input.a, var_0.a.x))) << (vec4<u32>(var_1.x, 31998u, func_1(1u, true, vec4<i32>(-19600i, -4453i, 1i, 1631i), 263f).c, ~var_1.x) % vec4<u32>(32u))));
    var_2 = max(vec4<u32>(4294967295u, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, var_1.x, 43217u, 42831u), var_1) | var_1.x), 9302u, var_1.x), vec4<u32>(min(_wgslsmith_sub_u32(44653u, var_2.x) << (_wgslsmith_add_u32(1u, 0u) % 32u), var_3.c.x), var_2.x, _wgslsmith_add_u32(var_2.x, ~var_3.c.x), ~var_1.x));
    var var_4 = Struct_5(Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_3.b)) * _wgslsmith_f_op_f32(select(441f, 2532f, true))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1569f, _wgslsmith_f_op_f32(-var_3.b), 736f))), ~var_1.x, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(trunc(755f)), _wgslsmith_f_op_f32(select(-359f, var_3.b, false)), var_3.b, var_3.d.x), vec4<f32>(_wgslsmith_f_op_f32(step(var_3.d.x, var_3.d.x)), var_3.d.x, var_3.d.x, _wgslsmith_f_op_f32(min(642f, 486f))), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)))), _wgslsmith_f_op_vec2_f32(-var_3.d.yy)), -1729f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.d.x, 2121f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-473f, var_3.d.x, true))))), Struct_1(var_3.b, var_3.d, ~1u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.d.x, var_3.d.x, -852f, 1248f) - vec4<f32>(265f, var_3.d.x, var_3.b, var_3.b)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b, -1627f, var_3.b, var_3.d.x) - vec4<f32>(var_3.d.x, 1000f, -205f, 588f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1843f, var_3.d.x, 452f, var_3.b), vec4<f32>(var_3.d.x, var_3.d.x, var_3.d.x, var_3.d.x)) + vec4<f32>(-751f, var_3.b, 103f, -518f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-1280f, -1268f)), _wgslsmith_f_op_f32(1016f + var_3.d.x)))), Struct_4(var_3.d.x, Struct_3(~var_0.a), vec3<i32>(~u_input.a, max(-22382i, -15556i | var_0.a.x), 26246i), Struct_1(-921f, var_3.d, var_1.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.d.x, var_3.b, -1846f, var_3.d.x)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -370f), _wgslsmith_f_op_f32(var_3.d.x * 580f))), Struct_3(vec3<i32>(-u_input.a, _wgslsmith_add_i32(var_3.a.x, -16292i), _wgslsmith_div_i32(1i, -19911i)))));
    var_2 = vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~var_3.c.zz, ~vec2<u32>(var_4.e.d.c, var_3.c.x)), firstLeadingBit(var_4.a.c) & _wgslsmith_mult_u32(var_4.d.c, 30912u)), var_2.x), var_1.x, 82495u, 117712u);
    var_4 = Struct_5(Struct_1(func_1(23514u, true, firstTrailingBit(reverseBits(var_3.e)), _wgslsmith_f_op_f32(round(1000f))).d.x, vec3<f32>(_wgslsmith_f_op_f32(step(var_4.c.x, -226f)), _wgslsmith_f_op_f32(var_3.d.x * var_3.b), var_4.c.x), 4294967295u, var_4.a.d, _wgslsmith_f_op_vec2_f32(ceil(var_3.d.yy))), 599f, vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.e.a * 975f)), all(vec4<bool>(false, false, true, false)))), var_3.b), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-540f, -287f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_4.a.d.x + -1817f))), any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -152f), _wgslsmith_f_op_f32(max(var_3.d.x, -1582f)), 168f) + var_3.d), ~_wgslsmith_add_u32(~var_3.c.x, _wgslsmith_mod_u32(0u, var_4.e.d.c)), var_4.a.d, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_4.c.x, var_4.a.d.x), vec2<f32>(var_4.c.x, -464f), vec2<bool>(true, true))))))), var_4.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(764f, -987f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.b), _wgslsmith_f_op_f32(var_4.c.x * var_3.b))) + var_4.e.d.d.yxy), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.d.zz - var_4.e.d.b.zx))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_3.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1479f)) - var_3.d.yy)));
}

