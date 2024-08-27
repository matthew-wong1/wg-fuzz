struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: Struct_3,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
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

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_mod_vec4_i32(abs(vec4<i32>(~u_input.c.x, _wgslsmith_div_i32(-8866i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, arg_3.b.x), u_input.b.wy)), -arg_3.b.x, arg_3.b.x)), _wgslsmith_clamp_vec4_i32(min(-abs(arg_3.b), _wgslsmith_add_vec4_i32(arg_3.b, vec4<i32>(-22201i, u_input.c.x, -1i, u_input.c.x)) | _wgslsmith_div_vec4_i32(vec4<i32>(-11592i, 0i, u_input.c.x, arg_3.b.x), arg_0.b)), vec4<i32>(u_input.b.x >> (u_input.a.x % 32u), arg_0.b.x & 0i, 51005i, 1i) & -abs(arg_3.b), reverseBits(u_input.b)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(250f, _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(1968f + -348f)))));
    var var_2 = Struct_4(!select(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), any(vec2<bool>(true, false))), Struct_3(~u_input.a.x, vec4<bool>(any(vec2<bool>(true, true)), !any(vec4<bool>(false, true, false, true)), all(vec3<bool>(true, true, true)), (i32(-1i) * -4184i) >= -var_0.x)), Struct_3(36352u, vec4<bool>(false, true, all(vec4<bool>(false, false, true, true)), true)), ~(_wgslsmith_sub_i32(abs(arg_3.b.x), -2147483647i) ^ max(firstLeadingBit(2147483647i), _wgslsmith_clamp_i32(-3040i, u_input.b.x, -42630i))), true);
    var var_3 = -1021f;
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_1.x, 1198f)), _wgslsmith_f_op_f32(trunc(436f))), _wgslsmith_f_op_f32(f32(-1f) * -483f))) - arg_0.d);
    return var_2.c.b;
}

fn func_2() -> vec4<f32> {
    var var_0 = -(~_wgslsmith_clamp_vec3_i32(vec3<i32>(-29184i >> (u_input.d.x % 32u), ~u_input.c.x, u_input.b.x), ~(~u_input.b.yxz), vec3<i32>(firstLeadingBit(-40583i), ~u_input.b.x, -47143i >> (1u % 32u))));
    var var_1 = Struct_2(!(!func_3(Struct_1(vec4<f32>(1000f, -1396f, 716f, -935f), u_input.b, vec4<f32>(-1840f, -1876f, 1106f, -367f), 627f), _wgslsmith_div_vec2_f32(vec2<f32>(535f, 2175f), vec2<f32>(-1219f, -1981f)), 1u, Struct_1(vec4<f32>(-341f, -169f, -233f, 956f), vec4<i32>(u_input.b.x, u_input.b.x, var_0.x, 2147483647i), vec4<f32>(-120f, -467f, 1959f, -118f), 147f))), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1612f, 1676f, 347f, 857f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(479f, 457f, 130f, 1370f) * vec4<f32>(555f, 876f, -1000f, -1353f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(868f, -825f, -1087f, 1000f))))), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.b, ~vec4<i32>(0i, var_0.x, var_0.x, -2147483647i), vec4<i32>(-2026i, u_input.b.x, 20729i, var_0.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, u_input.c.x, u_input.c.x, -1835i), ~u_input.b, abs(vec4<i32>(0i, var_0.x, 1i, var_0.x)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-832f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(429f)), -413f)), -190f, _wgslsmith_f_op_f32(trunc(-656f))), 1129f), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1371f - -1253f) * _wgslsmith_f_op_f32(ceil(-444f))), -689f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1258f - 853f)), 1f), u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1107f, 968f, -1101f) - vec4<f32>(-619f, 1118f, 429f, 610f))))), 143f), Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-998f, 1870f, -733f, 320f) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1058f, -2105f, 670f, 1291f)))))), abs(max(vec4<i32>(-12010i, -1i, 2147483647i, var_0.x), vec4<i32>(20456i, -2147483647i, u_input.c.x, var_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-232f, 366f, 1117f, -2085f) - vec4<f32>(109f, -551f, -1420f, -112f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-623f, -1117f, -715f, 336f)))) - vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1019f))), 1000f))), Struct_1(vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(422f * 475f) - _wgslsmith_f_op_f32(sign(1087f))), -959f, _wgslsmith_f_op_f32(1f * -2043f)), vec4<i32>(-11027i, -2147483647i, abs(-2943i), -_wgslsmith_mod_i32(var_0.x, u_input.c.x)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(407f, -129f, -1000f, -341f), vec4<f32>(561f, 305f, 1354f, 179f), true))))), 1254f));
    var var_2 = u_input.a.x;
    var var_3 = u_input.b;
    var_0 = ~(-(~vec3<i32>(var_3.x, var_0.x, 2147483647i)) >> (_wgslsmith_clamp_vec3_u32(~(u_input.d << (vec3<u32>(0u, u_input.a.x, u_input.a.x) % vec3<u32>(32u))), u_input.a, vec3<u32>(1u, 4294967295u, u_input.d.x) | _wgslsmith_div_vec3_u32(vec3<u32>(27743u, 1u, 9115u), vec3<u32>(28663u, 4294967295u, u_input.a.x))) % vec3<u32>(32u)));
    return var_1.c.a;
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: u32) -> u32 {
    var var_0 = ~u_input.a.zy;
    var_0 = u_input.a.xx;
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_2())));
    let var_2 = vec3<i32>(select(_wgslsmith_clamp_i32(arg_2.b.x, -(~(-2147483647i)), -abs(65488i)), _wgslsmith_clamp_i32(u_input.b.x, ~u_input.c.x, _wgslsmith_dot_vec3_i32(arg_2.b.xxy ^ vec3<i32>(arg_2.b.x, -38057i, 2147483647i), vec3<i32>(u_input.b.x, arg_2.b.x, arg_2.b.x))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(arg_1.x, true, arg_1.x, false), all(vec3<bool>(true, true, arg_1.x))))), firstTrailingBit(firstLeadingBit(1i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(arg_2.b.yw, u_input.b.xy), arg_2.b.yw));
    var_1 = arg_2.c;
    return _wgslsmith_sub_u32(15660u >> (_wgslsmith_mod_u32(arg_0, 0u) % 32u), ~_wgslsmith_mod_u32(firstTrailingBit(countOneBits(17575u)), _wgslsmith_div_u32(~u_input.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, u_input.d.x), vec2<u32>(4294967295u, arg_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mod_u32(func_1(4294967295u, vec2<bool>(all(vec4<bool>(true, false, false, false)), true), Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-525f, -356f, -1417f, 1228f), vec4<f32>(-1134f, 1053f, 684f, 234f))), _wgslsmith_sub_vec4_i32(u_input.b, u_input.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(454f, -135f, -863f, 256f)), 765f), 27899u), _wgslsmith_div_u32(1u, ~u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-596f)), _wgslsmith_f_op_vec4_f32(func_2()).x)));
}

