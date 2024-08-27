struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec2<f32>,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-630f * -1472f), -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -1039f)), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1328f, 1450f), -317f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1264f, -820f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(311f, -319f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1344f, 154f, -633f)) + vec3<f32>(-361f, -1482f, -624f))), 44725u), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -887f) + _wgslsmith_f_op_f32(round(362f))) + _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(ceil(1406f))))), vec2<bool>(!all(vec3<bool>(false, false, true)), false), vec2<f32>(_wgslsmith_f_op_f32(-813f - 256f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-168f + -123f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(round(260f)), _wgslsmith_f_op_f32(-382f * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1334f)))), 36424u), Struct_1(_wgslsmith_f_op_f32(sign(1f)), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(true, false), true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-430f, -1000f) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1780f), _wgslsmith_div_f32(1153f, 1389f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(691f, 349f, -1000f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(504f, 262f, 1413f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1457f, 333f, -501f)))))), ~(~4294967295u)), Struct_1(1f, select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))), vec2<f32>(_wgslsmith_f_op_f32(1040f + _wgslsmith_f_op_f32(f32(-1f) * -1623f)), _wgslsmith_f_op_f32(-1142f * _wgslsmith_f_op_f32(f32(-1f) * -2081f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1011f, 707f, -310f))), _wgslsmith_clamp_u32(abs(~4294967295u), _wgslsmith_mod_u32(reverseBits(u_input.b.x), max(u_input.b.x, 0u)), _wgslsmith_dot_vec2_u32(u_input.b.yx, countOneBits(vec2<u32>(1824u, u_input.b.x))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1722f + _wgslsmith_f_op_f32(abs(1691f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-794f)) + _wgslsmith_f_op_f32(floor(359f)))), !select(vec2<bool>(false, true), vec2<bool>(true, true), any(vec3<bool>(false, true, false))), vec2<f32>(_wgslsmith_f_op_f32(270f + _wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_f32(-1f)), vec3<f32>(-572f, _wgslsmith_f_op_f32(round(-825f)), 1f), (~9642u ^ u_input.b.x) ^ min(~u_input.b.x, 0u)));
    let var_1 = _wgslsmith_f_op_f32(abs(var_0.e.d.x));
    let var_2 = Struct_3(Struct_2(var_0.c, Struct_1(var_0.e.d.x, var_0.b.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 319f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-358f, var_1, var_0.d.d.x) - vec3<f32>(-1026f, var_0.a.a, var_1))), u_input.b.x | _wgslsmith_dot_vec3_u32(u_input.b, u_input.b)), var_0.b, var_0.c, Struct_1(_wgslsmith_div_f32(746f, _wgslsmith_f_op_f32(sign(697f))), var_0.a.b, vec2<f32>(_wgslsmith_f_op_f32(var_1 * var_0.e.d.x), -3309f), vec3<f32>(var_1, -263f, _wgslsmith_f_op_f32(min(-1000f, -507f))), max(~0u, _wgslsmith_clamp_u32(var_0.c.e, var_0.c.e, var_0.d.e)))), var_0.c, var_0, u_input.a & select(reverseBits(vec3<i32>(u_input.a.x, u_input.a.x, u_input.c)), vec3<i32>(u_input.a.x, u_input.a.x, abs(u_input.c)), !var_0.b.b.x | var_0.a.b.x), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(u_input.a.x, u_input.a.x)) >> (vec2<u32>(66263u, u_input.b.x) % vec2<u32>(32u)), u_input.a.zy), vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -16565i, 2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, -2147483647i, u_input.c, u_input.c)), 1i)));
    var var_3 = _wgslsmith_sub_vec2_u32(vec2<u32>(~17571u, max(_wgslsmith_dot_vec3_u32(vec3<u32>(15386u, u_input.b.x, 89129u), u_input.b), var_0.e.e << (var_2.a.c.e % 32u))) | (u_input.b.yz ^ max(min(u_input.b.zy, vec2<u32>(6530u, 65633u)), select(vec2<u32>(var_2.b.e, 20687u), vec2<u32>(4294967295u, var_2.b.e), var_0.e.b.x))), vec2<u32>(_wgslsmith_div_u32(0u, var_2.b.e) >> (_wgslsmith_sub_u32(4294967295u, ~1u) % 32u), _wgslsmith_clamp_u32(3167u, _wgslsmith_div_u32(~var_2.b.e, _wgslsmith_clamp_u32(4294967295u, var_0.d.e, var_0.b.e)), u_input.b.x)));
    var_3 = min(~u_input.b.xz >> (select(~u_input.b.zx, ~(~u_input.b.xz), !vec2<bool>(true, var_0.a.b.x)) % vec2<u32>(32u)), vec2<u32>(countOneBits(u_input.b.x), abs(u_input.b.x)));
    return 1f;
}

fn func_2() -> Struct_2 {
    let var_0 = !all(vec4<bool>(true, false, true, true));
    let var_1 = Struct_3(Struct_2(Struct_1(-1047f, vec2<bool>(true, var_0), vec2<f32>(-541f, _wgslsmith_f_op_f32(-1049f * 665f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-802f, -1255f, 1233f)), vec3<f32>(-722f, -636f, -421f), select(vec3<bool>(var_0, var_0, true), vec3<bool>(true, false, var_0), vec3<bool>(var_0, var_0, var_0)))), _wgslsmith_sub_u32(firstTrailingBit(90508u), ~u_input.b.x)), Struct_1(-455f, select(select(vec2<bool>(false, var_0), vec2<bool>(var_0, var_0), vec2<bool>(var_0, false)), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, true), vec2<bool>(true, var_0)), false), vec2<f32>(_wgslsmith_div_f32(169f, -1103f), _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_vec3_f32(vec3<f32>(1087f, -985f, -1519f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-415f, 1445f, -1351f) * vec3<f32>(-115f, 1573f, 1000f))), u_input.b.x), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -350f), -640f)), select(vec2<bool>(var_0, var_0), vec2<bool>(false, var_0), var_0), vec2<f32>(1f, 1f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(908f, -1635f, -382f))), vec3<f32>(1714f, 2556f, -990f))), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(1u, u_input.b.x, 4294967295u, 0u)), firstLeadingBit(vec4<u32>(1u, u_input.b.x, u_input.b.x, 1u)))), Struct_1(-1581f, select(select(vec2<bool>(false, var_0), vec2<bool>(false, var_0), var_0), !vec2<bool>(true, var_0), any(vec4<bool>(var_0, var_0, false, true))), vec2<f32>(1f, 1f), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1035f, -2406f, 1197f), vec3<f32>(1328f, -951f, -1465f))))), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 1u, 0u) & vec4<u32>(4294967295u, 1u, 0u, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(35000u, u_input.b.x, u_input.b.x, 2595u)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -143f)), !select(vec2<bool>(true, var_0), vec2<bool>(var_0, false), vec2<bool>(var_0, false)), vec2<f32>(1f, 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1246f, -1478f, 636f))), ~(~u_input.b.x))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -709f), !select(select(vec2<bool>(true, var_0), vec2<bool>(var_0, var_0), vec2<bool>(false, var_0)), !vec2<bool>(var_0, var_0), select(vec2<bool>(false, var_0), vec2<bool>(true, var_0), vec2<bool>(var_0, var_0))), vec2<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(-470f, -148f)), -1444f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1859f, _wgslsmith_f_op_f32(f32(-1f) * -487f))), ~1u), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -600f)), vec2<bool>(false, true), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-993f, 946f), vec2<f32>(-602f, 267f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(613f, 1531f, 537f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-365f, -139f, -184f) + vec3<f32>(-969f, -1436f, -720f))), u_input.b.x << (min(u_input.b.x, u_input.b.x) % 32u)), Struct_1(-277f, select(select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, true), false), vec2<bool>(false, true), var_0), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(159f, -1000f) - vec2<f32>(1000f, 374f)), vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-190f, -714f, 808f))), 35630u), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1330f * 1355f) - _wgslsmith_f_op_f32(floor(1411f))), vec2<bool>(true, true), vec2<f32>(-930f, _wgslsmith_f_op_f32(373f + -210f)), vec3<f32>(-2039f, -1054f, _wgslsmith_f_op_f32(1090f * -945f)), ~(~u_input.b.x)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(561f * 346f) - _wgslsmith_f_op_f32(350f - -535f)), !(!vec2<bool>(true, var_0)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1685f, -1773f))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -333f), 1f, -285f), _wgslsmith_add_u32(32511u << (u_input.b.x % 32u), 732u)), Struct_1(704f, vec2<bool>(false, true & var_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1090f, 780f) + vec2<f32>(-137f, 1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(717f, -949f, -355f) * vec3<f32>(-1092f, 1251f, -1005f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1718f, 674f, 649f))), u_input.b.x)), vec3<i32>(u_input.a.x, _wgslsmith_mod_i32(-13358i >> (u_input.b.x % 32u), _wgslsmith_dot_vec2_i32(u_input.a.yy, u_input.a.xy)), _wgslsmith_mod_i32(reverseBits(0i), u_input.c)) | (_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-40565i, 2147483647i, u_input.a.x), u_input.a), u_input.a) | firstTrailingBit(u_input.a)), ~_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a.x, u_input.a.x)), -u_input.a.xy | select(u_input.a.xx, u_input.a.xz, var_0)));
    let var_2 = var_1.a;
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(var_2.d.d.x)), !(!vec2<bool>(var_1.a.c.b.x, var_1.c.b.b.x)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.b.d.yz - vec2<f32>(-531f, -662f)) * var_1.b.d.yz))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(956f, -316f, var_1.a.e.d.x), vec3<f32>(var_2.c.c.x, -1673f, var_1.a.a.c.x)))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(477f, var_2.a.d.x, var_1.b.a), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.d.d.x, var_2.b.c.x, var_2.c.d.x))))))), 18286u), Struct_1(_wgslsmith_f_op_f32(floor(-1302f)), !select(select(var_1.c.e.b, vec2<bool>(var_1.b.b.x, true), false), var_1.c.d.b, true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.b.d.xy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.a.d.zx))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(341f, -2255f, -1431f), var_1.a.e.d))))), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, u_input.b.x, var_1.b.e), u_input.b), u_input.b)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - var_2.c.c.x)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.b.a - var_2.d.d.x)))), select(vec2<bool>(var_1.c.d.b.x || true, true), !select(vec2<bool>(false, var_0), vec2<bool>(var_2.c.b.x, true), vec2<bool>(var_2.c.b.x, false)), select(select(var_1.b.b, vec2<bool>(var_0, var_1.c.d.b.x), true), select(vec2<bool>(var_2.b.b.x, var_0), vec2<bool>(false, true), var_2.b.b), var_1.b.b)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-692f, 269f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1105f - -452f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-564f, var_1.a.c.a, -314f))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_2.d.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.a, -2079f, var_2.b.d.x))))), _wgslsmith_div_u32(~4294967295u, firstTrailingBit(_wgslsmith_add_u32(u_input.b.x, u_input.b.x)))), var_1.a.b, var_1.a.b);
    var var_4 = var_1.c.e.b.x;
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1953f))), var_2.c.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(var_2.b.d.zx)), _wgslsmith_div_vec2_f32(vec2<f32>(1000f, 401f), vec2<f32>(-244f, var_3.d.d.x)))) - vec2<f32>(160f, 833f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_3.c.a, _wgslsmith_f_op_f32(-var_1.b.d.x), 1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.c.x, 1184f, -382f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.e.c.x, 329f, 2068f) + vec3<f32>(var_3.a.a, 1517f, -160f))))), 4294967295u), var_2.b, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.e.c.x) * _wgslsmith_f_op_f32(-var_1.c.a.c.x)), !var_3.e.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-407f, 1000f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1350f, var_3.c.d.x, var_2.a.a), var_1.a.a.d)))), 1u), Struct_1(_wgslsmith_f_op_f32(var_2.a.c.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.d.x * var_3.e.d.x))), select(!var_3.c.b, select(vec2<bool>(true, var_1.b.b.x), vec2<bool>(var_1.c.e.b.x, false), false), var_1.a.c.b), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.a.a))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1163f)))), var_1.c.e.d, 43129u), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1.b.c.x, var_3.b.a))), _wgslsmith_f_op_f32(f32(-1f) * -984f))), vec2<bool>(any(var_1.a.d.b) && select(var_1.a.e.b.x, false, false), 11458i >= ~u_input.c), var_2.c.d.zy, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.c.c.x, var_2.c.a, var_1.a.e.d.x) * var_1.a.a.d))), _wgslsmith_clamp_u32(u_input.b.x << (41515u % 32u), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 55523u), u_input.b.yz)), ~abs(61248u))));
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: vec4<u32>) -> vec2<bool> {
    var var_0 = max(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-select(u_input.a.x, 2147483647i, false), arg_0), _wgslsmith_mult_vec2_i32(u_input.a.xz, -(~u_input.a.xy))));
    var_0 = u_input.c;
    var var_1 = func_2();
    return !select(vec2<bool>(true, true), !select(var_1.c.b, vec2<bool>(false, var_1.e.b.x), select(vec2<bool>(false, arg_1.b.b.x), var_1.c.b, true)), func_2().d.b.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: f32) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_3 * _wgslsmith_div_f32(arg_3, 1804f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_2.a)), 133f), -356f, arg_0.d.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-945f, arg_3, -180f, -437f) - vec4<f32>(-1101f, -301f, arg_2.c.x, -625f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(498f, arg_0.d.x, arg_3, 2396f)))))));
    var var_1 = all(vec4<bool>(arg_2.b.x, 1u != arg_2.e, arg_0.b.x, all(!func_2().a.b)));
    var var_2 = arg_0;
    var_2 = arg_2;
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(484f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(sign(-1967f))))), select(select(vec2<bool>(true, arg_0.b.x), arg_2.b, vec2<bool>(true, arg_0.b.x)), vec2<bool>(var_2.b.x, var_2.b.x), func_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.a.x, u_input.c, -2147483647i), vec4<i32>(2147483647i, u_input.c, u_input.c, 89464i)), func_2(), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_2.e, var_2.e, arg_0.e), vec4<u32>(u_input.b.x, 1u, arg_0.e, arg_1.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c.x, -1183f))), _wgslsmith_f_op_vec3_f32(arg_0.d * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, 121f, 260f) * vec3<f32>(1000f, -555f, 456f)))), ~abs(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(arg_0.e, arg_1.x, arg_1.x)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(308f - _wgslsmith_f_op_f32(ceil(arg_0.a))) - 1000f), vec2<bool>(!all(vec3<bool>(arg_0.b.x, true, false)), false), var_0.wx, arg_2.d, ~1u), arg_2, Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * 128f) - _wgslsmith_f_op_f32(func_3())), -1810f)), var_2.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -603f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3()), 146f, 344f)), ~_wgslsmith_div_u32(1u, arg_0.e) ^ ~firstLeadingBit(arg_1.x)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1215f)))), !vec2<bool>(true, arg_2.b.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_2.d.x), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.a, arg_0.d.x))) * _wgslsmith_f_op_vec2_f32(select(var_2.d.zx, var_0.xx, vec2<bool>(false, true)))), true)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -167f), arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_2.d.x) + _wgslsmith_f_op_f32(-166f + arg_3))), arg_2.e ^ arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(-789f, select(!func_1(u_input.c, Struct_2(Struct_1(2164f, vec2<bool>(true, true), vec2<f32>(1259f, 1000f), vec3<f32>(-928f, 1000f, 866f), 45233u), Struct_1(487f, vec2<bool>(false, true), vec2<f32>(826f, 282f), vec3<f32>(-760f, -256f, 486f), u_input.b.x), Struct_1(193f, vec2<bool>(false, false), vec2<f32>(-255f, 359f), vec3<f32>(1711f, -1000f, -1474f), 0u), Struct_1(-687f, vec2<bool>(true, true), vec2<f32>(1505f, -1213f), vec3<f32>(219f, 1000f, -358f), u_input.b.x), Struct_1(-564f, vec2<bool>(true, true), vec2<f32>(-938f, -506f), vec3<f32>(630f, -651f, 897f), u_input.b.x)), vec4<u32>(12419u, u_input.b.x, 0u, 0u)), func_2().a.b, select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), func_2().b.d.xy, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-800f, _wgslsmith_f_op_f32(ceil(-880f)), 1f), func_2().b.d, true)), _wgslsmith_mult_u32(4294967295u, _wgslsmith_add_u32(21961u, u_input.b.x))), u_input.b, func_2().c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -464f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1051f, _wgslsmith_f_op_f32(-1330f + -932f), true)))));
    var var_1 = select(select(select(!select(vec3<bool>(var_0.e.b.x, var_0.d.b.x, var_0.a.b.x), vec3<bool>(var_0.c.b.x, false, var_0.a.b.x), var_0.a.b.x), vec3<bool>(true, !var_0.d.b.x, -2147483647i <= u_input.c), !(!vec3<bool>(false, var_0.c.b.x, true))), vec3<bool>(func_2().a.b.x && var_0.e.b.x, !var_0.a.b.x, (i32(-1i) * -1i) > _wgslsmith_add_i32(0i, u_input.a.x)), select(select(!vec3<bool>(var_0.d.b.x, var_0.b.b.x, true), vec3<bool>(var_0.d.b.x, false, var_0.a.b.x), var_0.e.b.x), vec3<bool>(true && var_0.e.b.x, true, true), false)), vec3<bool>(!(!var_0.a.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -655f), _wgslsmith_f_op_f32(-var_0.b.c.x)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.a + -1392f) * _wgslsmith_div_f32(var_0.e.d.x, var_0.e.a)), _wgslsmith_mult_i32(-u_input.a.x, -u_input.c) <= countOneBits(u_input.c ^ -1i)), !func_2().c.b.x);
    var_1 = select(vec3<bool>(~u_input.a.x == -(i32(-1i) * -1i), func_4(func_2().a, vec3<u32>(23170u, 0u, var_0.e.e) >> (select(vec3<u32>(87656u, 4294967295u, u_input.b.x), u_input.b, false) % vec3<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(exp2(var_0.e.d.x)), vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.e.d.x, 499f), var_0.e.d.yy, var_1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.d.x, -430f, var_0.b.c.x)), 1u), 334f).d.b.x, any(!vec4<bool>(var_1.x, false, false, var_1.x))), !(!(!vec3<bool>(var_0.a.b.x, false, true))), var_1.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.a.d.x, var_0.d.c.x, -756f, 1343f)));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3())))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.a + var_2.x)) + var_0.c.a) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_2.x, var_0.b.a)))))), -1163f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.d.x) + _wgslsmith_f_op_f32(abs(var_0.c.a)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(472f, _wgslsmith_f_op_f32(func_3()), true))))));
    let var_4 = Struct_2(var_0.e, func_4(func_2().a, u_input.b, func_2().d, _wgslsmith_f_op_f32(abs(1867f))).d, func_4(func_4(Struct_1(_wgslsmith_f_op_f32(235f * 1674f), vec2<bool>(var_1.x, var_0.e.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-875f, var_3.x)), func_4(var_0.e, u_input.b, var_0.c, var_2.x).c.d, 4294967295u), select(vec3<u32>(var_0.b.e, u_input.b.x, var_0.d.e), u_input.b, true) ^ select(u_input.b, vec3<u32>(var_0.b.e, 1u, 0u), true), Struct_1(1f, !vec2<bool>(var_0.b.b.x, var_1.x), var_3.xy, _wgslsmith_f_op_vec3_f32(-var_0.a.d), var_0.a.e), 1f).c, vec3<u32>(var_0.a.e, var_0.e.e >> (u_input.b.x % 32u), ~1u) & reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, 3849u), u_input.b)), func_4(func_2().b, u_input.b, Struct_1(_wgslsmith_f_op_f32(abs(var_0.d.c.x)), vec2<bool>(false, false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.d.x, 494f)), vec3<f32>(var_0.c.c.x, var_3.x, -468f), 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.e.c.x)) - _wgslsmith_f_op_f32(floor(var_3.x)))).c, _wgslsmith_f_op_f32(-837f * func_2().e.c.x)).e, var_0.c, var_0.b);
    let var_5 = _wgslsmith_f_op_f32(f32(-1f) * -692f);
    var_1 = vec3<bool>(func_2().e.b.x, true, reverseBits(_wgslsmith_div_u32(var_0.c.e, ~var_4.c.e)) < (abs(1u) | firstTrailingBit(0u)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(_wgslsmith_add_u32(u_input.b.x, ~var_4.d.e), ~71297u, ~(~var_0.b.e), var_4.d.e)), u_input.b.zy);
}

