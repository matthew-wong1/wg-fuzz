struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: Struct_1,
    d: bool,
    e: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_2,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec2<u32>,
    d: u32,
    e: Struct_1,
}

struct Struct_5 {
    a: vec2<bool>,
    b: u32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<f32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: vec3<u32>, arg_3: Struct_3) -> Struct_5 {
    let var_0 = arg_3.c.c;
    var var_1 = arg_3.c.b.x;
    var_1 = arg_3.c.b.x << (u_input.b.x % 32u);
    let var_2 = u_input.b;
    let var_3 = select(any(arg_0.zy), arg_3.c.d, !select(true, !(!arg_3.a), any(arg_0.yx)));
    return Struct_5(!vec2<bool>(var_3 || select(arg_3.d.d, arg_3.a, false), !arg_3.d.d && (true && var_3)), ~(max(~1u, firstLeadingBit(u_input.e)) | 37172u), vec2<i32>(u_input.a, arg_3.d.b.x));
}

fn func_3() -> vec3<u32> {
    var var_0 = ~vec2<i32>(~(-21983i), 57695i);
    let var_1 = true;
    var_0 = select(max(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, -2147483647i) ^ vec2<i32>(var_0.x, var_0.x), -vec2<i32>(u_input.a, -28843i)), _wgslsmith_add_i32(min(-44308i, var_0.x), ~(-9291i))), vec2<i32>(u_input.a, u_input.a)), select(vec2<i32>(~var_0.x, var_0.x), _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(max(vec2<i32>(var_0.x, var_0.x), vec2<i32>(u_input.a, 0i)), ~vec2<i32>(-77387i, u_input.a), vec2<i32>(var_0.x, 45687i)), min(vec2<i32>(var_0.x, -46298i), vec2<i32>(var_0.x, var_0.x) ^ vec2<i32>(-1i, -38445i))), all(vec2<bool>(true, all(vec2<bool>(true, var_1))))), vec2<bool>(all(select(select(vec2<bool>(false, var_1), vec2<bool>(var_1, false), vec2<bool>(true, false)), func_1(vec3<bool>(var_1, true, false), vec3<i32>(u_input.a, u_input.a, -1i), vec3<u32>(4294967295u, u_input.c, 37260u), Struct_3(var_1, 22529u, Struct_2(8911i, vec3<i32>(1i, 2147483647i, var_0.x), Struct_1(vec3<f32>(800f, -2166f, -620f)), var_1, vec4<f32>(-1862f, -1000f, 255f, 338f)), Struct_2(var_0.x, vec3<i32>(u_input.a, -2147483647i, -26986i), Struct_1(vec3<f32>(-237f, 2128f, 217f)), var_1, vec4<f32>(838f, -663f, 1019f, 715f)), u_input.e)).a, true)), false));
    let var_2 = select(vec4<bool>(true, var_1, false, !any(vec2<bool>(true, true))), !(!(!(!vec4<bool>(true, var_1, true, true)))), !var_1);
    var_0 = _wgslsmith_add_vec2_i32(select(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.x, -1i), vec2<i32>(u_input.a, var_0.x), vec2<i32>(u_input.a, var_0.x)), vec2<i32>(u_input.a, var_0.x), var_2.yz) ^ -(vec2<i32>(u_input.a, -5116i) << (u_input.b % vec2<u32>(32u))), abs(func_1(var_2.yxw, countOneBits(vec3<i32>(u_input.a, u_input.a, 34390i)), select(vec3<u32>(12442u, u_input.c, 0u), vec3<u32>(u_input.b.x, 0u, u_input.e), var_2.zzx), Struct_3(true, 72126u, Struct_2(-12416i, vec3<i32>(u_input.a, u_input.a, -19700i), Struct_1(vec3<f32>(-995f, -1256f, -556f)), false, vec4<f32>(-1003f, -621f, 941f, 974f)), Struct_2(var_0.x, vec3<i32>(8464i, 13780i, var_0.x), Struct_1(vec3<f32>(-1351f, 1277f, 815f)), var_1, vec4<f32>(-383f, -369f, 2515f, 413f)), 0u)).c)) & ~vec2<i32>(_wgslsmith_div_i32(var_0.x ^ 2147483647i, -1i), 1i);
    return ~vec3<u32>(72796u, abs(firstLeadingBit(59994u)), 103670u);
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = (_wgslsmith_add_u32(u_input.b.x, arg_0.x) == ~firstTrailingBit(45832u)) & true;
    let var_1 = arg_0.x;
    var var_2 = func_1(vec3<bool>(false && !any(vec3<bool>(var_0, true, true)), var_0, all(select(select(vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, true, true), vec3<bool>(var_0, true, var_0)), vec3<bool>(false, true, false), !var_0))), ((~vec3<i32>(-2147483647i, u_input.a, u_input.a) >> (func_3() % vec3<u32>(32u))) & select(vec3<i32>(0i, -2147483647i, u_input.a), vec3<i32>(u_input.a, 57989i, 1i), select(vec3<bool>(var_0, false, var_0), vec3<bool>(false, var_0, var_0), false))) | (vec3<i32>(u_input.a, firstLeadingBit(u_input.a), -28501i) & _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, -34080i) | vec3<i32>(2147483647i, u_input.a, u_input.a), vec3<i32>(-11128i, u_input.a, u_input.a))), vec3<u32>(~firstTrailingBit(var_1), 0u, var_1) | ~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 4294967295u, 3881u), max(vec3<u32>(16304u, arg_0.x, 33425u), vec3<u32>(arg_0.x, 71584u, 16637u))), Struct_3(var_0, 23022u, Struct_2(u_input.a, ~(-vec3<i32>(2147483647i, u_input.a, 2147483647i)), Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-660f, 275f, 547f), vec3<f32>(arg_1.a.x, -566f, arg_1.a.x), var_0))), var_0, vec4<f32>(-524f, _wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(-arg_1.a.x))), Struct_2(~_wgslsmith_mult_i32(u_input.a, -1i), vec3<i32>(~2147483647i, 56162i, -1i), Struct_1(arg_1.a), false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(954f, arg_1.a.x, arg_1.a.x, arg_1.a.x)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-434f, arg_1.a.x, arg_1.a.x, arg_1.a.x))))), 66812u));
    var_2 = func_1(vec3<bool>(var_2.a.x, true & (!var_0 && any(vec3<bool>(var_2.a.x, var_2.a.x, var_0))), false), _wgslsmith_sub_vec3_i32(min(_wgslsmith_div_vec3_i32(vec3<i32>(49374i, -57126i, u_input.a), vec3<i32>(-1i, 2147483647i, 1167i) ^ vec3<i32>(var_2.c.x, -43820i, 2147483647i)), (vec3<i32>(var_2.c.x, -30370i, u_input.a) | vec3<i32>(u_input.a, u_input.a, u_input.a)) & (vec3<i32>(-2147483647i, 46062i, u_input.a) & vec3<i32>(u_input.a, 0i, 0i))), -vec3<i32>(-7925i, _wgslsmith_add_i32(63815i, 9114i), u_input.a)), (~countOneBits(vec3<u32>(0u, arg_0.x, var_2.b)) | (vec3<u32>(1u, 0u, var_2.b) | abs(vec3<u32>(u_input.d, var_1, 1u)))) ^ abs(firstTrailingBit(vec3<u32>(arg_0.x, 0u, u_input.c)) | vec3<u32>(u_input.d, 143796u, 35796u)), Struct_3(!(u_input.a >= abs(-46715i)), arg_0.x, Struct_2(-17789i, ~(vec3<i32>(21792i, var_2.c.x, -291i) & vec3<i32>(-4970i, 1i, -21203i)), arg_1, func_1(vec3<bool>(true, false, var_2.a.x), vec3<i32>(1i, u_input.a, -2147483647i), abs(vec3<u32>(var_1, 1679u, 4294967295u)), Struct_3(var_0, u_input.e, Struct_2(u_input.a, vec3<i32>(u_input.a, -1i, var_2.c.x), arg_1, true, vec4<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x)), Struct_2(var_2.c.x, vec3<i32>(var_2.c.x, 0i, -55749i), arg_1, true, vec4<f32>(arg_1.a.x, 813f, -791f, arg_1.a.x)), 4294967295u)).a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.a.x, -1201f, 769f, arg_1.a.x), vec4<f32>(806f, arg_1.a.x, arg_1.a.x, -516f), vec4<bool>(var_0, var_2.a.x, var_0, var_2.a.x))))), Struct_2(~_wgslsmith_add_i32(var_2.c.x, 0i), min(vec3<i32>(var_2.c.x, 49111i, -5283i), vec3<i32>(u_input.a, var_2.c.x, u_input.a)) ^ abs(vec3<i32>(1i, u_input.a, -19676i)), Struct_1(arg_1.a), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, -1270f, arg_1.a.x, arg_1.a.x) + vec4<f32>(1330f, arg_1.a.x, 335f, -1061f)) - vec4<f32>(arg_1.a.x, 1108f, arg_1.a.x, -1138f))), var_2.b));
    let var_3 = 178f;
    return Struct_1(arg_1.a);
}

fn func_4(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec4<bool>) -> bool {
    var var_0 = Struct_4(select(vec2<bool>(arg_1.x, !any(vec2<bool>(arg_0.a.x, arg_3.x))), vec2<bool>(_wgslsmith_f_op_f32(max(-240f, arg_2.a.x)) >= _wgslsmith_f_op_f32(-arg_2.a.x), !all(vec4<bool>(arg_0.a.x, false, arg_3.x, false))), all(select(!arg_3.yzw, select(vec3<bool>(arg_3.x, arg_1.x, false), vec3<bool>(arg_1.x, true, arg_0.a.x), arg_1.x), arg_3.x))), select(vec4<bool>(any(vec4<bool>(arg_1.x, false, arg_3.x, arg_3.x)), all(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), true, func_1(arg_1, select(vec3<i32>(0i, arg_0.c.x, 19798i), vec3<i32>(1i, 23309i, -13549i), vec3<bool>(arg_3.x, true, arg_3.x)), ~vec3<u32>(0u, arg_0.b, u_input.c), Struct_3(true, arg_0.b, Struct_2(u_input.a, vec3<i32>(arg_0.c.x, arg_0.c.x, 60330i), arg_2, arg_0.a.x, vec4<f32>(arg_2.a.x, -1376f, arg_2.a.x, -1191f)), Struct_2(u_input.a, vec3<i32>(u_input.a, -15875i, -29490i), Struct_1(arg_2.a), arg_0.a.x, vec4<f32>(arg_2.a.x, 183f, 2085f, -1000f)), 34420u)).a.x), !arg_3, select(select(select(arg_3, vec4<bool>(false, true, false, true), true), select(arg_3, vec4<bool>(true, arg_3.x, false, arg_3.x), vec4<bool>(false, true, false, false)), true), arg_3, select(true, false, true))), ~vec2<u32>(1u, 1u), func_3().x, func_2(firstTrailingBit(~abs(vec2<u32>(u_input.d, arg_0.b))), Struct_1(vec3<f32>(-598f, 1281f, arg_2.a.x))));
    let var_1 = arg_0;
    var var_2 = abs(arg_0.c.x);
    var_0 = Struct_4(!arg_0.a, select(var_0.b, select(!(!vec4<bool>(var_0.a.x, true, false, arg_0.a.x)), !(!vec4<bool>(var_0.a.x, false, arg_1.x, true)), any(!vec2<bool>(arg_3.x, true))), arg_3), vec2<u32>(arg_0.b, arg_0.b), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(69095u, 10332u, 42716u), vec3<u32>(_wgslsmith_clamp_u32(u_input.d, 21951u, arg_0.b), _wgslsmith_div_u32(29838u, u_input.c), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d, var_0.d), u_input.b))), func_2(max(firstTrailingBit(select(vec2<u32>(var_0.d, arg_0.b), vec2<u32>(u_input.b.x, 40914u), arg_3.zz)), var_0.c), func_2(vec2<u32>(abs(4294967295u), ~var_0.d), arg_2)));
    var var_3 = _wgslsmith_f_op_f32(-1677f + _wgslsmith_f_op_f32(min(1344f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.a.x - arg_2.a.x))), -1146f)))));
    return true == var_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(12315u & u_input.b.x, _wgslsmith_mult_u32(~reverseBits(u_input.c), ~(~select(18639u, 49422u, false))));
    var_0 = vec2<u32>(u_input.e, 1u);
    var var_1 = 571f;
    let var_2 = Struct_4(!vec2<bool>(all(vec4<bool>(true, true, false, false)), func_4(func_1(vec3<bool>(false, false, false), vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<u32>(75637u, 9544u, 57452u), Struct_3(false, 4294967295u, Struct_2(2147483647i, vec3<i32>(1i, -19332i, u_input.a), Struct_1(vec3<f32>(231f, 1000f, -108f)), false, vec4<f32>(2358f, -529f, -1232f, -1467f)), Struct_2(-15728i, vec3<i32>(366i, -2147483647i, -1i), Struct_1(vec3<f32>(-296f, -239f, -394f)), false, vec4<f32>(-2273f, 909f, -1039f, 622f)), var_0.x)), vec3<bool>(true, false, false), func_2(u_input.b, Struct_1(vec3<f32>(-148f, 980f, -2411f))), vec4<bool>(false, false, true, false))), select(!vec4<bool>(true, all(vec3<bool>(true, false, false)), any(vec2<bool>(false, false)), all(vec4<bool>(false, true, true, false))), vec4<bool>(true, (u_input.a > 0i) | true, func_4(Struct_5(vec2<bool>(false, true), var_0.x, vec2<i32>(u_input.a, 112611i)), vec3<bool>(false, true, true), Struct_1(vec3<f32>(-524f, 128f, 1259f)), vec4<bool>(true, true, false, false)) | any(vec3<bool>(false, false, false)), 1u != var_0.x), !vec4<bool>(any(vec2<bool>(false, true)), true, func_1(vec3<bool>(false, false, false), vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), Struct_3(true, var_0.x, Struct_2(u_input.a, vec3<i32>(u_input.a, u_input.a, 41319i), Struct_1(vec3<f32>(238f, 1666f, -1275f)), true, vec4<f32>(-651f, -678f, 1444f, 1537f)), Struct_2(u_input.a, vec3<i32>(u_input.a, u_input.a, 56123i), Struct_1(vec3<f32>(2095f, -637f, -1363f)), true, vec4<f32>(-1000f, -763f, 731f, -1766f)), 4294967295u)).a.x, true)), min(~u_input.b, vec2<u32>(~_wgslsmith_mult_u32(65839u, var_0.x), u_input.e)), u_input.d, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-1375f)), _wgslsmith_f_op_f32(-974f * -1231f), -1223f))));
    var var_3 = _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, min(func_1(var_2.b.zzy, _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 21963i, u_input.a), vec3<i32>(u_input.a, -2147483647i, -9351i)), vec3<u32>(1u, var_2.d, var_0.x) >> (vec3<u32>(1u, 0u, var_2.d) % vec3<u32>(32u)), Struct_3(false, u_input.b.x, Struct_2(u_input.a, vec3<i32>(u_input.a, 0i, 2147483647i), Struct_1(vec3<f32>(var_2.e.a.x, var_2.e.a.x, var_2.e.a.x)), var_2.a.x, vec4<f32>(var_2.e.a.x, var_2.e.a.x, var_2.e.a.x, var_2.e.a.x)), Struct_2(u_input.a, vec3<i32>(u_input.a, 1i, u_input.a), var_2.e, true, vec4<f32>(1087f, 107f, var_2.e.a.x, var_2.e.a.x)), var_2.d)).b, ~_wgslsmith_mod_u32(4294967295u, 8893u)), u_input.d, var_2.c.x), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(2840u, var_2.c.x, 0u, var_0.x), vec4<u32>(162362u, u_input.e, var_0.x, u_input.b.x)), vec4<u32>(u_input.c, var_0.x, u_input.c, 0u)), max(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(27028u, var_0.x), var_2.c))), var_2.c.x, 1u, var_0.x));
    let var_4 = 129f;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(~vec4<u32>(var_2.c.x, 0u, 0u, 4294967295u)))), var_2.e.a.x, var_2.e.a.xx, 0u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(972f, var_2.e.a.x, var_2.e.a.x, 489f))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(570f, 1187f, 888f, var_4), vec4<f32>(var_2.e.a.x, var_2.e.a.x, var_2.e.a.x, -430f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.e.a.x, var_2.e.a.x, var_2.e.a.x, -117f)), vec4<f32>(var_4, -580f, 399f, 516f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1854f, var_2.e.a.x, var_4, var_4))))));
}

