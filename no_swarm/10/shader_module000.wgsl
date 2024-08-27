struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: u32,
    d: vec3<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct Struct_5 {
    a: i32,
    b: vec3<i32>,
    c: Struct_4,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_4, arg_3: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1595f)), 1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1692f) - _wgslsmith_f_op_f32(f32(-1f) * -844f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(488f * -546f), 1759f)))));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-1492f + var_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1023f, var_0.x)), var_0.x))));
    let var_2 = Struct_2(arg_3.a.a, arg_3.c.c.e.xxz, Struct_1(vec3<bool>(!any(vec3<bool>(false, arg_3.a.c.e.x, arg_0)), _wgslsmith_f_op_f32(-139f + 1001f) > var_1, !arg_2.a.a.d.x == (4294967295u >= u_input.b)), _wgslsmith_mult_u32(~_wgslsmith_div_u32(9507u, arg_2.a.a.c), 1u), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, u_input.d.x), ~(~vec2<u32>(0u, arg_3.c.a.c))), select(arg_3.c.b, vec3<bool>(true, true, true), true), vec4<bool>(arg_0, true, arg_1, all(vec3<bool>(true, false, arg_0)))), -arg_3.c.d >> (_wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_3.a.c.c >> (arg_3.a.a.c % 32u), ~arg_2.b), _wgslsmith_clamp_u32(~u_input.e, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(61072u, 0u, 4294967295u, arg_2.b), vec4<u32>(21099u, 1u, arg_2.a.a.c, u_input.c)))) % 32u));
    var var_3 = ~(1u & (~_wgslsmith_mult_u32(u_input.b, 21868u) | var_2.c.b));
    let var_4 = 1000f;
    return ~abs(~0u);
}

fn func_2() -> vec4<i32> {
    var var_0 = vec3<u32>(u_input.d.x, u_input.c, ~(~0u ^ _wgslsmith_add_u32(~u_input.d.x, 36274u)));
    var_0 = _wgslsmith_sub_vec3_u32(abs(vec3<u32>(_wgslsmith_clamp_u32(u_input.a, ~27024u, ~4294967295u), func_3(all(vec4<bool>(true, false, false, true)), false, Struct_4(Struct_2(Struct_1(vec3<bool>(true, false, true), var_0.x, u_input.e, vec3<bool>(true, true, true), vec4<bool>(false, false, true, false)), vec3<bool>(true, true, false), Struct_1(vec3<bool>(true, false, false), var_0.x, 36184u, vec3<bool>(false, true, false), vec4<bool>(true, false, false, true)), 72371i), var_0.x), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, false), 16037u, var_0.x, vec3<bool>(true, false, false), vec4<bool>(false, false, false, true)), vec3<bool>(true, false, false), Struct_1(vec3<bool>(true, true, false), var_0.x, 66248u, vec3<bool>(false, true, false), vec4<bool>(false, false, true, true)), -15824i), -4087i, Struct_2(Struct_1(vec3<bool>(false, false, true), var_0.x, var_0.x, vec3<bool>(true, true, true), vec4<bool>(true, true, false, true)), vec3<bool>(false, true, true), Struct_1(vec3<bool>(false, false, false), 4294967295u, var_0.x, vec3<bool>(true, false, false), vec4<bool>(true, false, false, false)), 38662i))), u_input.d.x)), vec3<u32>(_wgslsmith_div_u32(4072u ^ u_input.b, 1u) & abs(_wgslsmith_sub_u32(var_0.x, 1u)), ~_wgslsmith_add_u32(u_input.b, 63508u), u_input.b));
    var_0 = vec3<u32>(u_input.c, _wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(var_0.x, 23045u), var_0.zx, _wgslsmith_sub_vec2_u32(vec2<u32>(6561u, var_0.x), vec2<u32>(u_input.a, 0u))), firstLeadingBit(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.d, var_0.yx), _wgslsmith_add_vec2_u32(var_0.xz, u_input.d), var_0.zx))), 1u);
    let var_1 = ~abs(u_input.d);
    var var_2 = _wgslsmith_add_i32(41635i, ~(-countOneBits(7060i)));
    return abs(firstLeadingBit(~min(vec4<i32>(-1i, 16746i, 26348i, -1i), vec4<i32>(-2147483647i, -2147483647i, 1i, 0i)) | select(firstLeadingBit(vec4<i32>(-17254i, 15134i, -161i, 1i)), ~vec4<i32>(2147483647i, -34388i, -2147483647i, 1i), all(vec3<bool>(false, false, false)))));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: f32, arg_3: Struct_5) -> f32 {
    let var_0 = vec4<i32>(~42314i >> (~u_input.a % 32u), abs(~arg_3.a << (~u_input.d.x % 32u)), _wgslsmith_mult_i32(-firstLeadingBit(31720i), min(arg_3.b.x | -2147483647i, -arg_3.a)), 47759i) & (_wgslsmith_mult_vec4_i32(select(-vec4<i32>(arg_3.a, -16923i, 0i, -30181i), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_3.c.a.d, arg_3.b.x, arg_3.c.a.d, arg_3.a), vec4<i32>(-4030i, 0i, arg_3.b.x, arg_3.b.x)), !arg_3.c.a.c.e.x), func_2()) ^ (vec4<i32>(1i, countOneBits(arg_3.b.x), 72143i, -arg_3.a) | _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-35102i, -9731i, arg_3.a, arg_3.a), vec4<i32>(arg_3.c.a.d, arg_3.a, -2147483647i, arg_3.a)), vec4<i32>(2147483647i, 0i, arg_3.b.x, arg_3.b.x) >> (vec4<u32>(20742u, 4294967295u, u_input.c, 0u) % vec4<u32>(32u)))));
    let var_1 = 4294967295u;
    let var_2 = Struct_2(arg_3.c.a.c, arg_3.c.a.a.d, Struct_1(arg_3.c.a.c.e.wzw, ~(~_wgslsmith_div_u32(var_1, 0u)), ~(~73026u), vec3<bool>(!all(vec2<bool>(arg_0, arg_3.c.a.b.x)), true, any(!vec2<bool>(false, arg_0))), arg_3.c.a.c.e), max(-49590i, 1i));
    let var_3 = u_input.a;
    let var_4 = vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(~var_3, 7943u, 4294967295u), ~(~var_2.c.b)), 81662u, 1u, _wgslsmith_sub_u32(func_3(var_2.c.a.x, any(var_2.b.zx), Struct_4(arg_3.c.a, _wgslsmith_sub_u32(1u, var_1)), Struct_3(Struct_2(Struct_1(vec3<bool>(var_2.b.x, arg_0, var_2.c.d.x), u_input.c, arg_1.x, var_2.c.d, var_2.a.e), vec3<bool>(true, var_2.c.d.x, false), Struct_1(arg_3.c.a.b, arg_1.x, 4294967295u, arg_3.c.a.a.e.zzx, arg_3.c.a.c.e), 434i), _wgslsmith_dot_vec4_i32(var_0, var_0), Struct_2(var_2.a, var_2.a.d, Struct_1(var_2.a.e.zzw, 44834u, 5822u, vec3<bool>(var_2.c.d.x, false, true), vec4<bool>(false, true, false, var_2.c.d.x)), -1i))), firstTrailingBit(~(~var_1))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-477f + -1894f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(169f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(386f * 502f), _wgslsmith_f_op_f32(func_1(false, u_input.d, 1000f, Struct_5(-20594i, vec3<i32>(38242i, 1i, 13658i), Struct_4(Struct_2(Struct_1(vec3<bool>(true, false, true), 6127u, u_input.c, vec3<bool>(true, false, false), vec4<bool>(false, true, false, false)), vec3<bool>(true, false, false), Struct_1(vec3<bool>(false, false, true), u_input.b, u_input.d.x, vec3<bool>(true, false, false), vec4<bool>(false, true, false, true)), 87495i), 4294967295u), vec2<u32>(u_input.b, 3559u)))), true)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), true))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1489f, -450f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-630f, _wgslsmith_f_op_f32(-1000f - -534f))) + 1262f)));
    var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) + vec3<f32>(857f, var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, var_0.x, -399f))), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -819f, 1000f) + vec3<f32>(233f, var_0.x, -1000f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, 940f, -1764f))))), vec3<bool>(true, true, true))))));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-747f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-235f, 202f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x + var_0.x))))), _wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-430f, var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, -368f, -134f))), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, -192f), vec3<f32>(222f, var_0.x, var_0.x)), true)))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, 575f), vec3<f32>(709f, 241f, var_0.x), vec3<bool>(true, false, false))))) * vec3<f32>(_wgslsmith_f_op_f32(-1421f + 1992f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) * _wgslsmith_f_op_f32(1520f + -985f)), var_0.x)));
    let var_1 = vec4<f32>(_wgslsmith_div_f32(357f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(-1065f + -1000f), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(285f - -1253f) + _wgslsmith_f_op_f32(647f + 676f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(var_0.x, var_0.x)))));
    let var_2 = true;
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_1.xww, vec3<f32>(var_0.x, var_0.x, var_0.x)))))) + _wgslsmith_f_op_vec3_f32(-var_1.ywx));
    let var_3 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(1i, ~(-12649i), func_2().x) & vec3<i32>(-1i, -27242i, -_wgslsmith_dot_vec2_i32(vec2<i32>(3829i, 36105i), vec2<i32>(-1i, 1i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_1.zw + _wgslsmith_f_op_vec2_f32(-var_0.xx)))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 867f) * vec2<f32>(var_1.x, 1554f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1459f, var_1.x) - vec2<f32>(var_0.x, 1000f))))))));
}

