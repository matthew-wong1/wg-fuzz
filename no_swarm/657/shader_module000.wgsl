struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec3<f32>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: u32,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec2<i32> {
    let var_0 = _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.c, select(~48569u, ~65256u, false), reverseBits(_wgslsmith_add_u32(1u, 22005u)))), vec3<u32>(1u, u_input.c, select(max(62682u, abs(4294967295u)), ~select(u_input.d, 1u, true), all(!vec2<bool>(arg_0, arg_0)))));
    let var_1 = Struct_3(reverseBits(-(~vec2<i32>(-1i, u_input.b.x))), Struct_2(arg_1.a.yww), arg_1.a.wzz, vec4<u32>(0u, 0u, var_0, var_0));
    let var_2 = u_input.b.x;
    let var_3 = ~firstTrailingBit(vec4<u32>(_wgslsmith_div_u32(97684u, var_0), 97506u, 46465u, 0u));
    let var_4 = 2147483647i;
    return -vec2<i32>(abs(max(arg_1.c.x | -1i, u_input.a.x & var_1.a.x)), var_4);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<bool>) -> Struct_5 {
    var var_0 = Struct_4(Struct_3(func_3(true, Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2645f, 252f, -1760f, -759f))), 2147483647i << (u_input.d % 32u), abs(u_input.b))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1238f, 272f, -459f), vec3<f32>(216f, -711f, -1357f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-904f, 1438f, -935f)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, -1573f, -741f))))), ~(~vec4<u32>(1u, 81471u, 30748u, u_input.c) >> (_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, u_input.d, u_input.d), vec4<u32>(29108u, u_input.c, 56839u, u_input.c)) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(162f, -365f)) + _wgslsmith_f_op_f32(sign(-1603f))))), countOneBits(_wgslsmith_mod_u32(reverseBits(~u_input.d), abs(reverseBits(106242u)))));
    var_0 = Struct_4(var_0.a, 1579f, 58916u);
    var_0 = Struct_4(var_0.a, var_0.b, abs(u_input.c));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b - 1631f) * _wgslsmith_f_op_f32(-var_0.a.b.a.x)) < -1099f;
    var_0 = Struct_4(Struct_3(~vec2<i32>(reverseBits(-2147483647i), u_input.b.x), Struct_2(var_0.a.b.a), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.b, var_0.a.b.a.x, -1919f)))), var_0.a.c), ~vec4<u32>(select(50075u, u_input.d, arg_0.x), u_input.d, u_input.d, firstLeadingBit(1u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(338f)), _wgslsmith_f_op_f32(trunc(321f)))) + _wgslsmith_f_op_f32(select(-1472f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b))), any(select(arg_1.xxz, arg_1.wxx, vec3<bool>(arg_0.x, true, arg_0.x)))))), 39263u);
    return Struct_5(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.b, -1134f, var_0.b, var_0.a.c.x), vec4<f32>(599f, var_0.a.c.x, 1335f, var_0.a.c.x)))))))));
}

fn func_4(arg_0: Struct_5, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: Struct_4) -> Struct_4 {
    var var_0 = Struct_3(func_3(true, Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(209f, 1444f, arg_3.a.b.a.x, 515f)), _wgslsmith_f_op_vec4_f32(-arg_0.a))), _wgslsmith_add_i32(-3072i, ~u_input.a.x), vec2<i32>(38629i, countOneBits(-27424i)))), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.a.b.a.x, -189f)), arg_1.x, 1246f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.c.x, _wgslsmith_f_op_f32(round(arg_0.a.x)), arg_3.b)))), arg_3.a.d);
    var_0 = arg_2.a;
    let var_1 = !(!vec4<bool>(all(vec2<bool>(false, true)) || (arg_3.a.d.x >= 14341u), _wgslsmith_f_op_f32(trunc(738f)) < -534f, false, true));
    var_0 = arg_2.a;
    var_0 = Struct_3(vec2<i32>(~1i, 0i), var_0.b, arg_0.a.xzw, select(vec4<u32>(var_0.d.x, arg_3.c, 4294967295u, arg_2.a.d.x), var_0.d & arg_3.a.d, vec4<bool>(false, any(var_1.xwx) && var_1.x, false, true)));
    return Struct_4(Struct_3(~(firstLeadingBit(vec2<i32>(14634i, arg_2.a.a.x)) | _wgslsmith_add_vec2_i32(vec2<i32>(-1i, 39412i), vec2<i32>(-62077i, u_input.a.x))), Struct_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, arg_1.x, 1132f))))), arg_3.a.c, var_0.d), _wgslsmith_f_op_f32(min(arg_3.b, arg_3.a.c.x)), ~(~abs(1u) | select(~1u, u_input.d, false)));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(752f, 540f) + vec2<f32>(1172f, -323f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1720f, arg_0)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1269f, arg_2), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_2))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0, 950f))) + _wgslsmith_div_vec2_f32(vec2<f32>(arg_0, -303f), vec2<f32>(arg_0, arg_0))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0)) + arg_0)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) + _wgslsmith_f_op_f32(-arg_2)))))));
    var var_1 = func_4(func_2(vec2<bool>(_wgslsmith_clamp_i32(0i, 1i, -34400i) == (-1i << (u_input.d % 32u)), true), select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -452f), 498f))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 176f) * _wgslsmith_f_op_vec2_f32(ceil(var_0)))))), Struct_4(Struct_3(vec2<i32>(7175i, _wgslsmith_add_i32(-2147483647i, u_input.a.x)), Struct_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(504f, -1033f, -310f), vec3<f32>(arg_2, var_0.x, 1058f), false))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1820f, var_0.x, var_0.x), vec3<f32>(arg_2, arg_0, 946f))))), _wgslsmith_sub_vec4_u32(max(vec4<u32>(80506u, u_input.d, u_input.c, 0u), vec4<u32>(67688u, 24785u, 41486u, u_input.d)), vec4<u32>(1u, u_input.d, u_input.c, 58432u) << (vec4<u32>(u_input.c, 57226u, 4294967295u, 5361u) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-var_0.x)))), ~4294967295u), Struct_4(Struct_3(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-27538i, u_input.b.x), vec2<i32>(u_input.b.x, u_input.a.x)), -1i), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2189f, -1030f, arg_2) * vec3<f32>(-113f, -726f, 1332f))), vec3<f32>(306f, arg_0, -355f), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, 10780u, 4294967295u, u_input.d), vec4<u32>(26303u, u_input.c, 25813u, 51602u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-594f, 200f)))), u_input.d));
    var var_2 = func_4(func_2(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), false)), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(true, true)), arg_2 == -439f, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false))))), var_1.a.b.a.yz, Struct_4(Struct_3(var_1.a.a, func_4(func_2(vec2<bool>(false, false), vec4<bool>(true, true, true, false)), _wgslsmith_f_op_vec2_f32(-var_0), func_4(Struct_5(vec4<f32>(-330f, 808f, -349f, arg_0)), vec2<f32>(var_1.a.c.x, 588f), Struct_4(var_1.a, arg_0, var_1.a.d.x), Struct_4(Struct_3(u_input.b, var_1.a.b, vec3<f32>(var_0.x, arg_0, var_1.a.b.a.x), vec4<u32>(var_1.c, u_input.c, u_input.d, var_1.c)), 286f, 1u)), func_4(Struct_5(vec4<f32>(1164f, arg_2, var_0.x, 975f)), vec2<f32>(var_1.b, -1825f), Struct_4(var_1.a, -187f, 11183u), Struct_4(Struct_3(var_1.a.a, var_1.a.b, var_1.a.b.a, vec4<u32>(20817u, 8354u, u_input.c, u_input.c)), arg_2, 1u))).a.b, vec3<f32>(arg_0, _wgslsmith_f_op_f32(var_0.x + arg_2), _wgslsmith_f_op_f32(arg_2 * -256f)), firstLeadingBit(~vec4<u32>(u_input.c, 4294967295u, 4294967295u, 7987u))), arg_0, 4294967295u), func_4(func_2(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), true), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(var_1.a.b.a.xy)))) - var_1.a.b.a.yz), Struct_4(Struct_3(-u_input.b, Struct_2(vec3<f32>(195f, arg_2, -696f)), var_1.a.b.a, ~var_1.a.d), arg_0, 4294967295u), Struct_4(func_4(Struct_5(vec4<f32>(-516f, -1015f, -2267f, -422f)), _wgslsmith_f_op_vec2_f32(-var_1.a.b.a.yy), func_4(Struct_5(vec4<f32>(2360f, 505f, arg_2, -638f)), var_0, Struct_4(Struct_3(var_1.a.a, var_1.a.b, vec3<f32>(var_0.x, 655f, arg_0), vec4<u32>(107219u, 22014u, var_1.a.d.x, 37578u)), 861f, var_1.c), Struct_4(var_1.a, 959f, 4294967295u)), Struct_4(var_1.a, var_1.a.b.a.x, 4294967295u)).a, arg_0, countOneBits(var_1.a.d.x))));
    var_1 = Struct_4(Struct_3(vec2<i32>(~(arg_1 | var_2.a.a.x), -8819i), func_4(Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-420f, -1509f, arg_2, -1000f))), _wgslsmith_f_op_vec2_f32(var_2.a.b.a.xz - _wgslsmith_f_op_vec2_f32(-vec2<f32>(302f, -1026f))), Struct_4(func_4(Struct_5(vec4<f32>(arg_0, -621f, var_0.x, var_2.a.c.x)), vec2<f32>(var_1.b, arg_0), Struct_4(var_2.a, arg_0, var_2.a.d.x), Struct_4(Struct_3(vec2<i32>(19977i, -2549i), Struct_2(var_1.a.c), vec3<f32>(arg_0, -1440f, arg_0), var_1.a.d), arg_0, 36978u)).a, arg_0, u_input.d >> (1u % 32u)), func_4(Struct_5(vec4<f32>(1003f, 259f, var_2.b, -486f)), vec2<f32>(978f, 192f), Struct_4(Struct_3(var_1.a.a, var_2.a.b, var_1.a.c, var_2.a.d), arg_2, u_input.c), func_4(Struct_5(vec4<f32>(261f, var_0.x, -2020f, 1000f)), vec2<f32>(var_1.b, -1000f), Struct_4(var_2.a, -1674f, 4294967295u), Struct_4(Struct_3(var_1.a.a, Struct_2(vec3<f32>(var_0.x, 768f, 1840f)), var_2.a.c, var_2.a.d), -552f, 2631u)))).a.b, func_4(Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -476f, -1341f, -304f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1354f, var_1.a.c.x)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(654f, -763f), var_0))), func_4(Struct_5(vec4<f32>(arg_2, -197f, var_1.b, 400f)), _wgslsmith_div_vec2_f32(vec2<f32>(1070f, -519f), vec2<f32>(var_0.x, -134f)), func_4(Struct_5(vec4<f32>(arg_0, -1000f, arg_2, 703f)), vec2<f32>(372f, -1000f), Struct_4(Struct_3(vec2<i32>(-13647i, 2147483647i), Struct_2(vec3<f32>(1131f, 284f, 424f)), var_2.a.c, var_2.a.d), 423f, var_2.a.d.x), Struct_4(var_2.a, -1486f, 46438u)), func_4(Struct_5(vec4<f32>(-655f, arg_2, 395f, 1000f)), vec2<f32>(-820f, var_0.x), Struct_4(var_1.a, var_0.x, 27421u), Struct_4(Struct_3(vec2<i32>(var_2.a.a.x, 0i), var_2.a.b, var_2.a.c, vec4<u32>(898u, 4294967295u, var_1.a.d.x, 1u)), arg_0, 4294967295u))), Struct_4(func_4(Struct_5(vec4<f32>(var_1.a.b.a.x, var_0.x, -1000f, var_1.a.c.x)), vec2<f32>(arg_0, 640f), Struct_4(var_1.a, -569f, var_1.a.d.x), Struct_4(Struct_3(vec2<i32>(arg_1, u_input.b.x), Struct_2(vec3<f32>(-581f, arg_0, -304f)), vec3<f32>(arg_0, 1003f, var_1.b), vec4<u32>(var_1.c, var_2.a.d.x, 0u, var_1.c)), 964f, var_2.a.d.x)).a, _wgslsmith_f_op_f32(f32(-1f) * -1358f), var_2.a.d.x)).a.c, ~(~vec4<u32>(var_2.a.d.x, var_2.c, var_2.a.d.x, 4294967295u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, func_2(vec2<bool>(false, false), vec4<bool>(true, true, true, true)).a.x)), 23131u);
    var_1 = func_4(Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.b, var_2.b, var_1.b, -1762f))))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(329f, var_1.b, arg_0, var_2.b))))))), var_0, func_4(func_2(vec2<bool>(true, true), vec4<bool>(true, true, true, true)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(662f * var_2.a.c.x), arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-803f, var_0.x)))), Struct_4(Struct_3(_wgslsmith_mod_vec2_i32(var_2.a.a, u_input.a.xy), func_4(Struct_5(vec4<f32>(arg_2, arg_0, -274f, 694f)), var_0, Struct_4(var_2.a, var_0.x, 0u), Struct_4(Struct_3(u_input.a.xw, Struct_2(vec3<f32>(var_2.a.c.x, 437f, var_2.b)), var_2.a.b.a, vec4<u32>(var_2.c, var_1.c, 112869u, 36575u)), -1000f, 0u)).a.b, var_1.a.c, var_1.a.d), arg_2, ~var_1.c), func_4(Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1322f, 1330f, -394f, arg_0))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_1.a.c.xz)), _wgslsmith_f_op_vec2_f32(vec2<f32>(261f, -542f) + vec2<f32>(arg_0, 1110f))), func_4(Struct_5(vec4<f32>(var_0.x, 492f, var_0.x, var_1.a.b.a.x)), vec2<f32>(-1287f, arg_2), Struct_4(var_2.a, -1047f, var_1.c), func_4(Struct_5(vec4<f32>(1016f, arg_0, arg_2, var_0.x)), vec2<f32>(var_1.b, -131f), Struct_4(Struct_3(vec2<i32>(-10190i, u_input.b.x), Struct_2(var_2.a.c), vec3<f32>(-1767f, -871f, var_1.a.c.x), var_2.a.d), arg_0, var_2.a.d.x), Struct_4(var_2.a, var_0.x, u_input.c))), func_4(func_2(vec2<bool>(true, false), vec4<bool>(true, true, false, false)), vec2<f32>(-567f, -1385f), func_4(Struct_5(vec4<f32>(385f, -266f, var_1.a.c.x, -250f)), vec2<f32>(var_0.x, arg_0), Struct_4(var_2.a, var_2.b, u_input.d), Struct_4(var_2.a, var_2.b, var_1.c)), Struct_4(var_1.a, 341f, 4294967295u)))), func_4(Struct_5(func_2(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), true)).a), func_4(func_2(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec4<bool>(true, false, false, true)), vec2<f32>(func_2(vec2<bool>(false, true), vec4<bool>(true, true, false, false)).a.x, _wgslsmith_f_op_f32(arg_0 - arg_0)), func_4(Struct_5(vec4<f32>(117f, var_0.x, var_1.a.b.a.x, var_2.a.c.x)), _wgslsmith_f_op_vec2_f32(var_2.a.c.zz - var_0), func_4(Struct_5(vec4<f32>(-708f, arg_2, 900f, var_1.a.b.a.x)), var_1.a.b.a.zz, Struct_4(Struct_3(var_2.a.a, var_1.a.b, vec3<f32>(var_1.a.b.a.x, var_1.a.c.x, -1000f), var_1.a.d), -762f, var_1.c), Struct_4(Struct_3(vec2<i32>(-54160i, u_input.b.x), var_1.a.b, vec3<f32>(956f, -535f, -456f), vec4<u32>(1u, 0u, 4294967295u, var_2.a.d.x)), arg_0, var_1.c)), func_4(Struct_5(vec4<f32>(arg_0, var_0.x, 190f, 711f)), vec2<f32>(1479f, -498f), Struct_4(Struct_3(var_2.a.a, var_1.a.b, vec3<f32>(-395f, -267f, var_0.x), var_1.a.d), -368f, u_input.d), Struct_4(var_1.a, 766f, var_1.a.d.x))), func_4(Struct_5(vec4<f32>(var_0.x, 343f, 459f, -521f)), vec2<f32>(1000f, var_0.x), Struct_4(Struct_3(u_input.a.zx, Struct_2(var_1.a.b.a), var_1.a.c, var_2.a.d), arg_0, 39342u), Struct_4(var_1.a, 995f, 1u))).a.c.yx, func_4(func_2(vec2<bool>(false, false), vec4<bool>(false, true, true, true)), var_2.a.b.a.zz, func_4(func_2(vec2<bool>(true, false), vec4<bool>(true, false, true, false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, 1825f) * vec2<f32>(arg_2, var_2.b)), func_4(Struct_5(vec4<f32>(var_2.b, var_1.b, 1270f, 187f)), var_1.a.b.a.zz, Struct_4(var_1.a, -291f, u_input.d), Struct_4(Struct_3(vec2<i32>(var_1.a.a.x, var_2.a.a.x), var_2.a.b, vec3<f32>(var_2.a.b.a.x, arg_2, 664f), var_1.a.d), -554f, var_1.a.d.x)), Struct_4(var_1.a, arg_0, var_2.a.d.x)), Struct_4(Struct_3(var_2.a.a, var_2.a.b, vec3<f32>(var_2.b, arg_2, var_0.x), var_2.a.d), _wgslsmith_div_f32(arg_2, 1335f), var_1.a.d.x)), func_4(Struct_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, -966f, 1285f, -326f) - vec4<f32>(-1000f, var_2.a.c.x, -822f, -238f))), _wgslsmith_f_op_vec2_f32(var_2.a.c.yx * _wgslsmith_f_op_vec2_f32(-vec2<f32>(318f, -927f))), Struct_4(func_4(Struct_5(vec4<f32>(arg_0, 1929f, -1312f, 411f)), vec2<f32>(-495f, 1647f), Struct_4(Struct_3(u_input.b, Struct_2(var_2.a.c), var_1.a.c, var_1.a.d), 1224f, 0u), Struct_4(Struct_3(u_input.a.wx, Struct_2(vec3<f32>(-123f, arg_0, -1317f)), vec3<f32>(var_2.b, -787f, -557f), vec4<u32>(u_input.d, var_1.c, 39280u, 0u)), var_0.x, u_input.d)).a, -1531f, ~76046u), Struct_4(var_2.a, _wgslsmith_div_f32(-440f, var_0.x), firstLeadingBit(var_2.a.d.x)))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a.c.x, var_0.x, arg_2, arg_0), vec4<f32>(var_2.a.b.a.x, var_1.a.b.a.x, var_1.a.c.x, var_0.x), false)), func_2(vec2<bool>(true, false), vec4<bool>(false, true, false, true)).a))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2211f, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.c.x * var_2.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -703f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -393f)))), ~_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(var_2.a.a.x, -2147483647i, var_2.a.a.x, 69777i)), ~u_input.a), countOneBits(reverseBits(vec2<i32>(55788i & arg_1, _wgslsmith_dot_vec3_i32(u_input.a.zxz, vec3<i32>(arg_1, arg_1, u_input.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(f32(-1f) * -743f), -_wgslsmith_div_i32(-12912i, u_input.b.x), 109f);
    var var_1 = countOneBits(_wgslsmith_div_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.c), vec4<u32>(u_input.c, 23237u, 17975u, u_input.d)), select(~vec4<u32>(u_input.c, u_input.d, u_input.c, 51837u), ~vec4<u32>(u_input.c, 1u, 2805u, 0u), true)) | (vec4<u32>(82126u, _wgslsmith_mult_u32(u_input.d, u_input.d), 6395u, 50756u) >> ((vec4<u32>(0u, 1u, u_input.d, 34650u) & (vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c) ^ vec4<u32>(u_input.d, 4294967295u, u_input.d, 27582u))) % vec4<u32>(32u))));
    let var_2 = Struct_1(var_0.a, ~(1i | (0i & func_3(false, Struct_1(var_0.a, u_input.b.x, var_0.c)).x)), u_input.a.wx);
    var_1 = countOneBits(vec4<u32>(max(var_1.x, 54222u), _wgslsmith_add_u32(1u, firstLeadingBit(12244u)) << (reverseBits(u_input.d >> (var_1.x % 32u)) % 32u), u_input.d, 0u));
    var var_3 = 675f;
    var_1 = vec4<u32>(_wgslsmith_mod_u32(var_1.x, ~4294967295u), 1u, abs(10087u ^ _wgslsmith_mult_u32(_wgslsmith_sub_u32(87556u, 0u), min(var_1.x, u_input.c))), var_1.x << (var_1.x % 32u));
    let var_4 = func_2(select(!vec2<bool>(true, var_2.a.x == var_0.a.x), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true)), vec4<bool>(true, true, true, true));
    let var_5 = all(!vec4<bool>(select(true, false, true), true, all(vec3<bool>(true, true, true)), true));
    let x = u_input.a;
    s_output = StorageBuffer(129390u, -_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -var_0.b, _wgslsmith_add_i32(var_0.b, 21200i), -23455i), vec4<i32>(_wgslsmith_mult_i32(31111i, var_2.c.x), i32(-1i) * -1i, _wgslsmith_mult_i32(0i, var_2.c.x), func_4(Struct_5(var_0.a), var_4.a.wz, Struct_4(Struct_3(vec2<i32>(var_2.b, u_input.b.x), Struct_2(vec3<f32>(var_2.a.x, var_0.a.x, var_4.a.x)), var_2.a.zyx, vec4<u32>(u_input.c, var_1.x, 53783u, u_input.c)), var_4.a.x, 43358u), Struct_4(Struct_3(u_input.a.wz, Struct_2(vec3<f32>(var_4.a.x, 530f, var_4.a.x)), vec3<f32>(-782f, var_0.a.x, 642f), vec4<u32>(u_input.c, 85358u, u_input.d, u_input.c)), 903f, 1u)).a.a.x)), vec4<i32>(6490i, _wgslsmith_mod_i32(~(-2147483647i >> (var_1.x % 32u)), -1i), -func_4(Struct_5(vec4<f32>(-1163f, 153f, 447f, -433f)), vec2<f32>(var_2.a.x, -2033f), func_4(var_4, vec2<f32>(-1060f, 525f), Struct_4(Struct_3(var_2.c, Struct_2(vec3<f32>(-1000f, -1430f, var_2.a.x)), var_0.a.wzw, vec4<u32>(3806u, 37062u, var_1.x, 19308u)), var_0.a.x, var_1.x), Struct_4(Struct_3(vec2<i32>(1i, var_0.b), Struct_2(var_2.a.wzz), var_4.a.yzy, vec4<u32>(1u, 26953u, 0u, 0u)), var_0.a.x, u_input.d)), Struct_4(Struct_3(u_input.a.yx, Struct_2(vec3<f32>(1654f, 708f, var_2.a.x)), var_2.a.xxx, vec4<u32>(1u, u_input.c, u_input.c, var_1.x)), var_4.a.x, var_1.x)).a.a.x, func_1(_wgslsmith_f_op_f32(var_0.a.x + -1131f), 1i, 2078f).b), -962f);
}

