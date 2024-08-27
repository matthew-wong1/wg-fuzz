struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(1i, -1i, -13187i, 2147483647i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_4, arg_1: u32) -> i32 {
    global0 = vec4<i32>(firstLeadingBit(-15193i), countOneBits(i32(-1i) * -23006i), -min(2147483647i, u_input.a >> (_wgslsmith_add_u32(arg_1, u_input.b) % 32u)), _wgslsmith_add_i32(-(~(-772i)) ^ (i32(-1i) * -global0.x), global0.x));
    let var_0 = Struct_2(arg_0.a.a, Struct_1(true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.a.c + _wgslsmith_f_op_vec4_f32(-arg_0.a.e))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(arg_0.a.c - vec4<f32>(-408f, arg_0.a.e.x, -287f, -355f))))), arg_0.a.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.e.x, arg_0.a.e.x, -349f, -2145f)) + vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.c.x + 1080f), arg_0.a.e.x, -944f, _wgslsmith_f_op_f32(f32(-1f) * -974f))) - vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(409f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -384f))), arg_0.a.e.x)));
    var var_1 = _wgslsmith_mult_u32((~(~76716u) & u_input.b) << (_wgslsmith_clamp_u32(1u, 3501u, 92037u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_1, 78868u), vec3<u32>(arg_1, u_input.d.x, arg_1))) % 32u), arg_1);
    let var_2 = i32(-1i) * -20088i;
    global0 = _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(-6663i, global0.x, 21468i, global0.x), vec4<i32>(0i, u_input.e, 0i, u_input.a) >> (vec4<u32>(3223u, u_input.d.x, arg_1, 27630u) % vec4<u32>(32u))), vec4<i32>(global0.x & -15195i, 17758i, u_input.e ^ global0.x, 0i)) & vec4<i32>(-1i, _wgslsmith_dot_vec2_i32(global0.zy & vec2<i32>(var_2, global0.x), min(global0.xw, global0.xw)), i32(-1i) * -u_input.e, 0i), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(~u_input.a, -65996i), -2147483647i), u_input.e, -48821i, i32(-1i) * -21888i));
    return ~countOneBits(2147483647i);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2) -> u32 {
    let var_0 = arg_2.d;
    global0 = -abs(min(vec4<i32>(_wgslsmith_div_i32(u_input.a, -2147483647i), max(9234i, u_input.a), max(6772i, -2167i), _wgslsmith_sub_i32(global0.x, 0i)), reverseBits(~vec4<i32>(global0.x, u_input.a, u_input.a, global0.x))));
    var var_1 = ~vec3<i32>(select(u_input.a, func_3(Struct_4(Struct_2(arg_1.b, arg_1.a.d, vec4<f32>(arg_2.e.x, arg_1.a.e.x, arg_1.a.e.x, arg_0.a.e.x), Struct_1(var_0.a), vec4<f32>(1000f, -1000f, 986f, arg_2.e.x))), 1u), true), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, global0.x, 14165i, global0.x), vec4<i32>(2147483647i, 2147483647i, -1i, 1i))), abs(global0.x), reverseBits(25820i | u_input.a)), ~abs(func_3(Struct_4(Struct_2(Struct_1(arg_0.a.b.a), arg_2.d, arg_1.a.c, Struct_1(arg_1.a.d.a), vec4<f32>(733f, arg_0.a.e.x, arg_1.a.c.x, arg_2.c.x))), u_input.c.x)));
    let var_2 = arg_0;
    var var_3 = -global0.x;
    return countOneBits(_wgslsmith_div_u32(u_input.c.x, u_input.b));
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: u32) -> Struct_1 {
    var var_0 = 1i;
    var var_1 = u_input.e;
    var var_2 = false;
    var_1 = reverseBits(u_input.e);
    return arg_2.b;
}

fn func_1() -> vec4<i32> {
    var var_0 = max(global0.wyz, global0.xxz);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1652f)) < _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(532f, -574f)))), func_4(_wgslsmith_mult_u32(4294967295u, _wgslsmith_mult_u32(~u_input.c.x, func_2(Struct_3(Struct_2(Struct_1(false), Struct_1(true), vec4<f32>(-1176f, 1000f, 526f, 2095f), Struct_1(false), vec4<f32>(1355f, -795f, 1000f, 863f)), Struct_1(false)), Struct_3(Struct_2(Struct_1(true), Struct_1(true), vec4<f32>(-1476f, 470f, -1346f, 1085f), Struct_1(false), vec4<f32>(699f, 490f, 1524f, 788f)), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(false), vec4<f32>(899f, 129f, 586f, 1373f), Struct_1(false), vec4<f32>(1165f, -734f, -1000f, -332f))))), min(-abs(global0.wyy), global0.xwx), Struct_3(Struct_2(Struct_1(false), Struct_1(false), _wgslsmith_f_op_vec4_f32(vec4<f32>(1910f, 488f, -670f, -2406f) + vec4<f32>(-823f, 588f, -1115f, 1000f)), Struct_1(true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2001f, 205f, -1000f, 420f))), Struct_1(true)), _wgslsmith_dot_vec2_u32(abs(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b))), vec2<u32>(~56224u, min(72834u, u_input.b)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1292f, 458f))), 609f, -150f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-631f, 127f))))))), func_4(_wgslsmith_sub_u32(min(_wgslsmith_sub_u32(u_input.d.x, u_input.c.x), u_input.b), ~_wgslsmith_mod_u32(u_input.c.x, u_input.d.x)), vec3<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.e, 28905i)), ~var_0.xz), global0.x, -29669i << (select(4294967295u, u_input.d.x, false) % 32u)), Struct_3(Struct_2(Struct_1(true), Struct_1(false), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(312f, 798f, -570f, 1250f), vec4<f32>(199f, 120f, -906f, 1038f))), Struct_1(true), vec4<f32>(354f, -675f, -166f, -1058f)), Struct_1(false)), u_input.c.x), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(569f, -143f, -664f, 1208f), vec4<f32>(1000f, 2310f, -1000f, 1196f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-450f, 740f, 1124f, 691f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(2502f, -458f, -375f, -1907f), vec4<f32>(-2223f, 1488f, 426f, -482f))))))))));
    let var_2 = !vec3<bool>(var_1.b.a, any(vec3<bool>(true, any(vec2<bool>(var_1.a.a, true)), var_1.b.a)), all(select(vec4<bool>(true, var_1.a.a, true, false), vec4<bool>(var_1.a.a, true, var_1.a.a, var_1.b.a), vec4<bool>(false, false, var_1.b.a, true))) && true);
    var_1 = Struct_2(var_1.b, var_1.b, vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.c.x))))), _wgslsmith_f_op_f32(var_1.c.x - var_1.e.x), var_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-1381f, var_1.e.x), var_1.c.x) + _wgslsmith_f_op_f32(var_1.c.x + _wgslsmith_f_op_f32(-var_1.c.x)))), func_4(0u, ~_wgslsmith_mult_vec3_i32(global0.zww, vec3<i32>(global0.x, 19906i, global0.x)), Struct_3(Struct_2(var_1.d, Struct_1(true), _wgslsmith_f_op_vec4_f32(-var_1.e), func_4(u_input.b, global0.yzw, Struct_3(Struct_2(Struct_1(true), var_1.a, vec4<f32>(var_1.e.x, 297f, 782f, -276f), Struct_1(false), vec4<f32>(var_1.e.x, var_1.e.x, -794f, 521f)), Struct_1(true)), 1510u), _wgslsmith_f_op_vec4_f32(ceil(var_1.c))), var_1.b), ~1u), var_1.c);
    var var_3 = Struct_3(Struct_2(var_1.a, Struct_1(u_input.b == 4294967295u), var_1.c, Struct_1(func_4(countOneBits(4294967295u), global0.yxy, Struct_3(Struct_2(var_1.a, Struct_1(var_2.x), var_1.e, Struct_1(var_1.d.a), var_1.c), var_1.b), func_2(Struct_3(Struct_2(Struct_1(true), var_1.b, vec4<f32>(1000f, 1000f, -517f, var_1.e.x), var_1.b, vec4<f32>(469f, var_1.e.x, -688f, var_1.e.x)), var_1.a), Struct_3(Struct_2(Struct_1(var_1.a.a), var_1.b, vec4<f32>(-194f, -552f, var_1.e.x, -1714f), var_1.d, var_1.c), Struct_1(false)), Struct_2(var_1.d, Struct_1(var_2.x), var_1.e, var_1.a, var_1.c))).a), var_1.e), var_1.d);
    return vec4<i32>(-_wgslsmith_dot_vec3_i32(global0.yzz, vec3<i32>(var_0.x, ~2147483647i, 2147483647i)), _wgslsmith_clamp_i32(countOneBits(~(-u_input.a)), 0i, firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, global0.x, var_0.x, global0.x) | vec4<i32>(u_input.e, u_input.a, global0.x, u_input.a), vec4<i32>(0i, global0.x, 2147483647i, 7364i) >> (vec4<u32>(u_input.b, 36926u, 23666u, 1u) % vec4<u32>(32u))))), -firstTrailingBit(firstTrailingBit(-32395i)), _wgslsmith_dot_vec4_i32(vec4<i32>(min(var_0.x, var_0.x) << (1u % 32u), select(~var_0.x, -7802i, u_input.a != -2147483647i), 1i, abs(var_0.x)), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.e, 9285i, global0.x, 1i), ~vec4<i32>(0i, -9585i, u_input.e, global0.x)), -min(vec4<i32>(u_input.a, var_0.x, var_0.x, u_input.a), vec4<i32>(21510i, -14245i, global0.x, global0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(global0.x, u_input.a, u_input.a, u_input.e) ^ vec4<i32>(0i, -2147483647i, global0.x, -2147483647i)), func_1()) | (vec4<i32>(i32(-1i) * -26831i, ~u_input.e ^ -1i, 2147483647i, global0.x) ^ vec4<i32>(abs(~(-2147483647i)), min(_wgslsmith_clamp_i32(u_input.e, 2147483647i, 9430i), 1i), u_input.e >> (u_input.b % 32u), u_input.a));
    let var_0 = Struct_4(Struct_2(Struct_1(true), Struct_1(all(select(vec2<bool>(false, true), vec2<bool>(false, true), false))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(576f, -951f, -574f, 1115f)), vec4<f32>(-561f, 540f, -1001f, 2104f))))), func_4(~u_input.c.x << (_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(u_input.c.x, 86103u, u_input.b)) % 32u), vec3<i32>(-1i, ~u_input.e, u_input.e), Struct_3(Struct_2(Struct_1(true), Struct_1(true), vec4<f32>(-1536f, -260f, 1191f, -601f), Struct_1(true), vec4<f32>(-1000f, 2752f, -1000f, -1003f)), func_4(u_input.d.x, global0.zxz, Struct_3(Struct_2(Struct_1(true), Struct_1(false), vec4<f32>(-604f, -662f, 1120f, 762f), Struct_1(true), vec4<f32>(-1314f, -861f, 931f, 1344f)), Struct_1(false)), 4757u)), 1u), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-395f, 353f, -677f, 1775f) * vec4<f32>(-1880f, 494f, -576f, 128f)))))));
    let var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(func_2(Struct_3(Struct_2(var_0.a.b, Struct_1(var_0.a.b.a), vec4<f32>(var_0.a.e.x, -756f, var_0.a.e.x, var_0.a.c.x), var_0.a.b, vec4<f32>(var_0.a.e.x, -356f, var_0.a.c.x, -120f)), Struct_1(false)), Struct_3(var_0.a, var_0.a.a), var_0.a), u_input.c.x, u_input.b, countOneBits(_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.b, 2386u), 0u))), _wgslsmith_add_vec4_u32(vec4<u32>(select(abs(u_input.c.x), 42064u, any(vec3<bool>(false, var_0.a.b.a, false))), _wgslsmith_div_u32(1u, ~u_input.b), abs(select(4294967295u, u_input.d.x, var_0.a.a.a)), ~(~u_input.b)), firstTrailingBit(firstLeadingBit(~vec4<u32>(5961u, u_input.c.x, u_input.b, 32810u)))));
    let var_2 = var_0.a.e.x;
    let var_3 = var_0;
    let var_4 = var_0.a.a.a;
    global0 = vec4<i32>(global0.x ^ func_1().x, -2147483647i, countOneBits(max(reverseBits(~(-25821i)), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, global0.x, 18574i, u_input.e), vec4<i32>(25804i, -32465i, u_input.e, global0.x))))), max(global0.x, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(-76071i, var_0.a.e);
}

