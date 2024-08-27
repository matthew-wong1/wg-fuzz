struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: u32,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: Struct_2,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32) -> vec4<bool> {
    var var_0 = select(~4055i, countOneBits(48631i), select(false, true, false)) | 0i;
    let var_1 = reverseBits(u_input.a);
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(975f, arg_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1))), 1838f)), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, true, true, true))), !select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true), all(vec2<bool>(true, true)))), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(true, false, true))), 907f);
    var var_3 = ~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), ~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)));
    var var_4 = Struct_5(u_input.b.x, var_3.x, var_2, any(select(select(select(vec3<bool>(true, true, var_2.b.x), vec3<bool>(true, var_2.b.x, false), var_2.b.x), !vec3<bool>(true, var_2.b.x, false), vec3<bool>(false, var_2.b.x, var_2.b.x)), !vec3<bool>(false, var_2.b.x, var_2.b.x), select(vec3<bool>(var_2.b.x, false, false), select(vec3<bool>(var_2.b.x, var_2.b.x, var_2.b.x), vec3<bool>(true, var_2.b.x, var_2.b.x), vec3<bool>(true, var_2.b.x, false)), var_1.x > var_1.x))), Struct_2(var_2.a, vec2<bool>(true, select(var_2.b.x == var_2.b.x, any(var_2.b), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1618f * -827f), _wgslsmith_f_op_f32(round(var_2.c)))))));
    return vec4<bool>(select(true, true, firstTrailingBit(var_4.b) > ~(~var_3.x)), var_4.c.b.x, !any(vec4<bool>(!var_4.d, var_2.b.x && false, true, var_2.b.x)), true);
}

fn func_2() -> Struct_2 {
    var var_0 = 3698u;
    let var_1 = ~(~(~(~max(4294967295u, 0u))));
    var var_2 = vec3<bool>(false, _wgslsmith_f_op_f32(-1797f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(332f, 697f))))) <= 176f, all(vec4<bool>(true, !all(vec3<bool>(true, true, true)), select(false, false, true), any(func_3(vec3<f32>(1198f, 138f, 2136f), 252f)))));
    var_2 = vec3<bool>(!(any(!vec4<bool>(true, var_2.x, var_2.x, var_2.x)) || var_2.x), all(!var_2.yz), var_2.x);
    let var_3 = ~(firstTrailingBit(-vec4<i32>(20473i, 30054i, u_input.a.x, 1i)) | ~vec4<i32>(u_input.b.x, u_input.a.x, _wgslsmith_div_i32(u_input.b.x, u_input.b.x), -34258i));
    return Struct_2(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + 154f), _wgslsmith_f_op_f32(sign(508f))))), -397f, _wgslsmith_f_op_f32(2186f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-136f - -784f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1675f - _wgslsmith_div_f32(-2132f, 515f)))), !vec2<bool>(true, any(vec2<bool>(var_2.x, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(361f)) - -163f));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: f32, arg_3: Struct_5) -> Struct_3 {
    var var_0 = arg_0.d;
    let var_1 = Struct_4(Struct_3(func_2(), abs(var_0.a.x), vec2<bool>(arg_0.a.b.x, func_2().b.x), Struct_1(vec3<i32>(max(2147483647i, 2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -2147483647i), arg_0.d.a.zx), ~arg_0.d.a.x))), arg_0.d, arg_3.b);
    var_0 = Struct_1(vec3<i32>(_wgslsmith_mult_i32(1i, arg_0.d.a.x), -37144i, -(u_input.a.x << (max(4294967295u, 86225u) % 32u))));
    var_0 = arg_0.d;
    let var_2 = Struct_1(u_input.a);
    return Struct_3(arg_3.c, min(~(~(-15420i)), _wgslsmith_mod_i32(-57544i, -2203i)), func_3(arg_3.e.a.yxz, _wgslsmith_div_f32(var_1.a.a.c, _wgslsmith_f_op_f32(arg_0.a.a.x + -819f))).yz, var_1.b);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_2) -> Struct_4 {
    let var_0 = reverseBits(arg_0.x) | abs(arg_0.x);
    let var_1 = -1000f;
    let var_2 = Struct_3(arg_1.a, u_input.b.x, !vec2<bool>(arg_1.c.x & func_2().b.x, true), Struct_1(abs(func_4(Struct_3(arg_1.a, u_input.a.x, arg_1.c, arg_1.d), arg_2.b.x, _wgslsmith_f_op_f32(ceil(var_1)), Struct_5(u_input.b.x, arg_0.x, arg_1.a, arg_1.a.b.x, arg_1.a)).d.a)));
    var var_3 = -183f;
    var var_4 = ~reverseBits(_wgslsmith_mod_u32(31345u, 26962u));
    return Struct_4(arg_1, Struct_1(arg_1.d.a & ~(u_input.a | u_input.a)), 0u);
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = max(~u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_add_i32(countOneBits(1i), _wgslsmith_div_i32(-18583i, u_input.a.x) >> (~22590u % 32u)), -2147483647i));
    let var_1 = func_5(vec3<u32>(1u, 1u, 1u), func_4(Struct_3(func_2(), ~u_input.a.x, select(!vec2<bool>(arg_0, true), func_2().b, vec2<bool>(false, arg_0)), Struct_1(-u_input.a)), any(vec4<bool>(all(vec3<bool>(false, arg_0, arg_0)), true, any(vec3<bool>(arg_0, false, arg_0)), !arg_0)), -1651f, Struct_5(reverseBits(u_input.a.x), 1u, func_2(), all(func_3(vec3<f32>(249f, 1199f, -2269f), 1445f).zy), func_2())), Struct_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1313f, 2003f, 1603f, -1078f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(260f, 739f, 581f, 784f), vec4<f32>(-342f, -109f, -697f, 1460f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(422f, 1179f, -423f, -1400f) + vec4<f32>(-825f, -1697f, -202f, -1374f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-320f, 1823f, -1757f, 480f))))), vec2<bool>(arg_0, false), -2281f));
    var var_2 = vec4<i32>(_wgslsmith_dot_vec2_i32(var_1.a.d.a.yy, reverseBits(-u_input.b)), 2147483647i, var_1.b.a.x, _wgslsmith_add_i32(-u_input.b.x | u_input.a.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i), _wgslsmith_add_vec3_i32(u_input.a, var_1.a.d.a ^ u_input.a))));
    var_2 = vec4<i32>(i32(-1i) * -2147483647i, var_1.b.a.x, -19304i, ~((-14608i & (u_input.b.x >> (61442u % 32u))) | reverseBits(-7879i)));
    let var_3 = ~vec4<u32>(~(~(~0u)), 6697u, max(_wgslsmith_div_u32(~35555u, 52689u), _wgslsmith_add_u32(~var_1.c, ~29633u)), _wgslsmith_clamp_u32(0u, 20322u, abs(13638u)));
    return Struct_1(_wgslsmith_add_vec3_i32(var_2.wwz, _wgslsmith_add_vec3_i32(~_wgslsmith_mod_vec3_i32(var_2.xwy, vec3<i32>(var_2.x, 2147483647i, 2147483647i)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.b.x, var_2.x), vec3<i32>(u_input.b.x, -20158i, var_1.b.a.x)))));
}

fn func_6(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_4(func_4(Struct_3(func_5(vec3<u32>(1u, 33059u, 4294967295u), Struct_3(Struct_2(vec4<f32>(arg_1, arg_1, 1527f, -514f), vec2<bool>(false, false), arg_1), -27969i, vec2<bool>(true, true), arg_0), func_5(vec3<u32>(4294967295u, 1u, 1u), Struct_3(Struct_2(vec4<f32>(arg_1, 1142f, arg_1, arg_1), vec2<bool>(true, true), 313f), -36661i, vec2<bool>(false, true), arg_0), Struct_2(vec4<f32>(arg_1, -1201f, arg_1, 217f), vec2<bool>(true, true), arg_1)).a.a).a.a, u_input.a.x, func_2().b, arg_0), 450f != arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1 + arg_1)))), Struct_5(max(arg_0.a.x, i32(-1i) * -16592i), _wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, 1u), 19662u), Struct_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1, arg_1, -619f, arg_1))), vec2<bool>(true, false), _wgslsmith_f_op_f32(-519f - arg_1)), -u_input.a.x != -6451i, Struct_2(func_2().a, vec2<bool>(true, true), arg_1))), func_4(func_5(~abs(vec3<u32>(86902u, 4294967295u, 9382u)), func_5(vec3<u32>(1u, 1u, 1u), func_5(vec3<u32>(1u, 1u, 0u), Struct_3(Struct_2(vec4<f32>(arg_1, arg_1, arg_1, -826f), vec2<bool>(true, false), 1067f), u_input.a.x, vec2<bool>(true, false), Struct_1(vec3<i32>(u_input.b.x, u_input.a.x, 2147483647i))), Struct_2(vec4<f32>(505f, arg_1, arg_1, 1000f), vec2<bool>(false, true), arg_1)).a, func_2()).a, Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-278f, arg_1, -3183f, arg_1), vec4<f32>(arg_1, 940f, arg_1, -769f), true)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), 1120f)).a, true, _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(trunc(639f))), Struct_5(u_input.a.x, ~67200u, func_4(func_5(vec3<u32>(4294967295u, 533u, 44981u), Struct_3(Struct_2(vec4<f32>(arg_1, arg_1, -1320f, arg_1), vec2<bool>(true, true), -870f), u_input.b.x, vec2<bool>(false, false), arg_0), Struct_2(vec4<f32>(arg_1, -1000f, 146f, -1850f), vec2<bool>(true, true), arg_1)).a, true, arg_1, Struct_5(59930i, 0u, Struct_2(vec4<f32>(762f, -132f, -2256f, arg_1), vec2<bool>(true, false), 566f), false, Struct_2(vec4<f32>(arg_1, arg_1, arg_1, arg_1), vec2<bool>(false, true), arg_1))).a, select(func_4(Struct_3(Struct_2(vec4<f32>(arg_1, arg_1, arg_1, arg_1), vec2<bool>(false, true), arg_1), arg_0.a.x, vec2<bool>(false, false), Struct_1(arg_0.a)), true, arg_1, Struct_5(u_input.a.x, 4294967295u, Struct_2(vec4<f32>(arg_1, 1000f, -696f, arg_1), vec2<bool>(false, true), arg_1), false, Struct_2(vec4<f32>(1295f, arg_1, arg_1, arg_1), vec2<bool>(false, false), arg_1))).a.b.x, select(false, true, true), all(vec2<bool>(true, true))), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, 616f, arg_1)), vec2<bool>(true, false), 1f))).d, func_5(vec3<u32>(~8498u, firstLeadingBit(1u), 1u), Struct_3(func_5(~vec3<u32>(4294967295u, 1u, 1u), Struct_3(Struct_2(vec4<f32>(arg_1, 951f, arg_1, arg_1), vec2<bool>(false, false), arg_1), -2147483647i, vec2<bool>(false, true), Struct_1(arg_0.a)), Struct_2(vec4<f32>(arg_1, arg_1, arg_1, arg_1), vec2<bool>(false, true), -459f)).a.a, ~select(-8333i, 0i, false), func_2().b, func_1(true)), func_4(func_4(func_5(vec3<u32>(48644u, 4294967295u, 34202u), Struct_3(Struct_2(vec4<f32>(arg_1, 275f, arg_1, -1206f), vec2<bool>(false, false), -774f), arg_0.a.x, vec2<bool>(true, true), arg_0), Struct_2(vec4<f32>(arg_1, 986f, arg_1, arg_1), vec2<bool>(false, true), 601f)).a, all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(arg_1 * arg_1), Struct_5(arg_0.a.x, 4294967295u, Struct_2(vec4<f32>(arg_1, 1106f, arg_1, arg_1), vec2<bool>(false, true), -600f), true, Struct_2(vec4<f32>(arg_1, 1000f, -349f, -1856f), vec2<bool>(true, true), -952f))), true, _wgslsmith_f_op_f32(round(615f)), Struct_5(arg_0.a.x, abs(10169u), func_5(vec3<u32>(36267u, 13820u, 4294967295u), Struct_3(Struct_2(vec4<f32>(arg_1, arg_1, 432f, arg_1), vec2<bool>(false, false), -235f), 66021i, vec2<bool>(true, false), arg_0), Struct_2(vec4<f32>(arg_1, arg_1, arg_1, arg_1), vec2<bool>(true, false), -344f)).a.a, true, Struct_2(vec4<f32>(arg_1, 421f, 772f, arg_1), vec2<bool>(true, true), arg_1))).a).c);
    let var_1 = min(countOneBits(_wgslsmith_dot_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(-57755i, arg_0.a.x, -27675i, 9329i), vec4<i32>(var_0.b.a.x, -2147483647i, -14632i, -8848i)), ~abs(vec4<i32>(var_0.b.a.x, u_input.b.x, var_0.a.b, -9879i)))), -(~func_1(var_0.a.a.b.x).a.x));
    var var_2 = 752i;
    var var_3 = ~vec4<u32>(abs(_wgslsmith_sub_u32(~var_0.c, 9399u)), 0u, 4294967295u, var_0.c);
    let var_4 = _wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, firstTrailingBit(select(reverseBits(0u), 13966u << (var_0.c % 32u), !var_0.a.a.b.x))), _wgslsmith_add_u32(~var_3.x, 72253u));
    return func_4(Struct_3(var_0.a.a, ~1i, !vec2<bool>(true, var_0.a.a.b.x || var_0.a.c.x), Struct_1(~vec3<i32>(-33028i, u_input.a.x, 0i))), func_4(Struct_3(var_0.a.a, _wgslsmith_sub_i32(var_1, -1i) << (4294967295u % 32u), var_0.a.a.b, arg_0), false, var_0.a.a.c, Struct_5(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1, 22414i) & u_input.a.xy, min(arg_0.a.yz, arg_0.a.xx)), _wgslsmith_clamp_u32(1u, _wgslsmith_add_u32(var_0.c, 51481u), 21170u), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a.c, arg_1, var_0.a.a.c, 728f)), vec2<bool>(false, false), 1127f), false || var_0.a.a.b.x, Struct_2(var_0.a.a.a, !vec2<bool>(var_0.a.a.b.x, var_0.a.a.b.x), func_4(Struct_3(Struct_2(var_0.a.a.a, vec2<bool>(true, var_0.a.c.x), 779f), u_input.a.x, vec2<bool>(false, var_0.a.c.x), Struct_1(arg_0.a)), true, var_0.a.a.a.x, Struct_5(-38328i, var_4, var_0.a.a, true, Struct_2(vec4<f32>(714f, arg_1, 2873f, -1555f), vec2<bool>(false, false), -445f))).a.c))).a.b.x, 204f, Struct_5(1i << (1u % 32u), 4294967295u, func_5(~max(vec3<u32>(var_3.x, var_3.x, 64917u), vec3<u32>(16586u, var_4, var_4)), func_4(func_5(vec3<u32>(var_4, 0u, var_4), var_0.a, var_0.a.a).a, !var_0.a.c.x, arg_1, Struct_5(arg_0.a.x, var_4, Struct_2(vec4<f32>(570f, 700f, arg_1, 726f), vec2<bool>(false, false), -244f), var_0.a.a.b.x, Struct_2(var_0.a.a.a, vec2<bool>(var_0.a.c.x, var_0.a.a.b.x), 689f))), var_0.a.a).a.a, any(select(!vec4<bool>(true, false, var_0.a.a.b.x, false), select(vec4<bool>(true, var_0.a.a.b.x, var_0.a.c.x, var_0.a.c.x), vec4<bool>(var_0.a.c.x, var_0.a.c.x, true, true), vec4<bool>(var_0.a.c.x, false, var_0.a.a.b.x, var_0.a.a.b.x)), false)), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(arg_1 - var_0.a.a.a.x), -586f, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(ceil(743f))), var_0.a.c, arg_1))).d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_1(any(vec2<bool>(true, all(vec3<bool>(true, true, true))))), -1000f);
    let var_1 = !vec3<bool>(true && select(true, var_0.a.x <= 6439i, false), any(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), !select(true, any(vec2<bool>(true, true)), true));
    var_0 = Struct_1(vec3<i32>(u_input.b.x, -u_input.a.x, _wgslsmith_sub_i32(u_input.b.x & -28636i, ~(~11044i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1037f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1000f)))), abs(~(~(~vec4<u32>(116188u, 4294967295u, 11093u, 4294967295u)))), vec3<i32>(_wgslsmith_add_i32(2147483647i, i32(-1i) * -u_input.b.x), ~_wgslsmith_sub_i32(-2147483647i, ~var_0.a.x), 1i), min(0u, _wgslsmith_dot_vec3_u32(~abs(vec3<u32>(59456u, 1u, 0u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(317u, 2057u, 4294967295u), ~vec3<u32>(35624u, 4294967295u, 13124u), select(vec3<u32>(69549u, 1u, 28391u), vec3<u32>(91530u, 35876u, 75450u), var_1)))), max(87735u, 113782u));
}

