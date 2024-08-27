struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<f32>,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(Struct_2(false, 1654f, vec3<i32>(21984i, -69845i, -1i)), vec4<u32>(23832u, 12044u, 0u, 1u), vec2<f32>(100f, 1000f)), Struct_3(Struct_2(false, -867f, vec3<i32>(-33111i, 0i, i32(-2147483648))), vec4<u32>(1u, 0u, 57415u, 1u), vec2<f32>(1376f, -156f)), Struct_3(Struct_2(false, -607f, vec3<i32>(i32(-2147483648), 0i, 1i)), vec4<u32>(0u, 1u, 0u, 31355u), vec2<f32>(1803f, -655f)), Struct_3(Struct_2(false, -1000f, vec3<i32>(-5696i, -1i, 16886i)), vec4<u32>(0u, 17707u, 1342u, 23472u), vec2<f32>(392f, 578f)), Struct_3(Struct_2(false, -254f, vec3<i32>(-1i, i32(-2147483648), i32(-2147483648))), vec4<u32>(4294967295u, 36335u, 0u, 4294967295u), vec2<f32>(-1000f, 693f)), Struct_3(Struct_2(false, 149f, vec3<i32>(59922i, 31825i, 6684i)), vec4<u32>(0u, 1u, 5368u, 4294967295u), vec2<f32>(1000f, 432f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> i32 {
    global0 = array<Struct_3, 6>();
    let var_0 = all(select(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true))), !vec4<bool>(true, true, all(vec4<bool>(false, false, true, false)), true), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)))));
    global0 = array<Struct_3, 6>();
    var var_1 = Struct_1(-2317f, !((select(var_0, var_0, false) & (true || var_0)) || !var_0), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(899f, -207f, -667f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1191f, 538f) - vec3<f32>(713f, 1794f, -1405f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1899f + -1121f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1828f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -958f)))), 1u, select(vec3<bool>(true, abs(-9054i) == _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(1i, u_input.a)), var_0), select(!vec3<bool>(var_0, var_0, true), vec3<bool>(all(vec2<bool>(true, var_0)), all(vec2<bool>(var_0, false)), var_0), select(vec3<bool>(var_0, true, false), !vec3<bool>(false, false, var_0), vec3<bool>(true, false, true))), vec3<bool>(!(1i != u_input.a), false, true)));
    global0 = array<Struct_3, 6>();
    return abs(_wgslsmith_dot_vec3_i32(min(~vec3<i32>(u_input.a, 12840i, -23684i) >> (vec3<u32>(var_1.d, var_1.d, 6863u) % vec3<u32>(32u)), vec3<i32>(u_input.a, u_input.a, u_input.a) ^ vec3<i32>(u_input.a, u_input.a, u_input.a)), vec3<i32>(~reverseBits(42368i), 2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a, 18163i), vec3<i32>(0i, u_input.a, 0i) & vec3<i32>(u_input.a, -2147483647i, 12585i)))));
}

fn func_2(arg_0: bool, arg_1: vec4<u32>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1700f, 268f, -1000f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(103f, 1346f, 483f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1156f + 181f), _wgslsmith_div_f32(-883f, -1675f), _wgslsmith_f_op_f32(f32(-1f) * -340f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1269f, 1413f, 557f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1029f, 349f, -1415f) * vec3<f32>(579f, -1817f, 230f)), arg_0))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1539f, -1434f, -1494f), vec3<f32>(588f, 798f, 660f))), vec3<f32>(_wgslsmith_f_op_f32(trunc(-1098f)), _wgslsmith_div_f32(-720f, 352f), -2010f))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_0 + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 149f, 163f))))) + var_0);
    global0 = array<Struct_3, 6>();
    let var_2 = Struct_2(arg_0, var_1.x, _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i & func_3(), _wgslsmith_add_i32(u_input.a, ~u_input.a), 12077i), vec3<i32>(u_input.a, u_input.a, 46895i)));
    global0 = array<Struct_3, 6>();
    return reverseBits(vec3<i32>(var_2.c.x, _wgslsmith_div_i32(~(-var_2.c.x), max(u_input.a >> (arg_1.x % 32u), _wgslsmith_clamp_i32(-17123i, 2147483647i, var_2.c.x))), -reverseBits(~18762i)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<u32>) -> bool {
    let var_0 = vec2<bool>(!any(!select(vec4<bool>(true, arg_1.a, false, false), vec4<bool>(true, arg_1.a, arg_0.e.x, true), false)), arg_1.a);
    global0 = array<Struct_3, 6>();
    global0 = array<Struct_3, 6>();
    let var_1 = arg_1;
    let var_2 = Struct_3(Struct_2(var_1.a, arg_1.b, _wgslsmith_mult_vec3_i32(var_1.c, vec3<i32>(arg_1.c.x, 1i, ~1i))), min(vec4<u32>(_wgslsmith_dot_vec3_u32(arg_2, _wgslsmith_clamp_vec3_u32(arg_2, vec3<u32>(83574u, 4294967295u, 10846u), arg_2)), arg_2.x, min(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, arg_2.x), vec2<u32>(arg_0.d, 28846u)), select(arg_2.x, arg_0.d, true)), arg_2.x), max(reverseBits(~vec4<u32>(29303u, arg_0.d, arg_2.x, 17809u)), select(vec4<u32>(38495u, 0u, 0u, 0u), ~vec4<u32>(0u, arg_2.x, 29566u, arg_0.d), select(vec4<bool>(false, true, false, var_0.x), vec4<bool>(var_1.a, true, var_0.x, arg_1.a), vec4<bool>(var_0.x, true, arg_1.a, arg_0.e.x))))), _wgslsmith_f_op_vec2_f32(arg_0.c.yy * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_0.c.yz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2239f, arg_1.b)), arg_1.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(158f, -884f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1394f, arg_0.c.x) - arg_0.c.xy)))));
    return any(select(!select(vec4<bool>(arg_0.b, var_2.a.a, true, false), !vec4<bool>(var_2.a.a, var_2.a.a, false, false), !vec4<bool>(arg_0.e.x, false, arg_0.b, var_1.a)), select(vec4<bool>(any(arg_0.e.yy), false, arg_0.e.x, true), select(vec4<bool>(var_1.a, var_1.a, var_0.x, var_0.x), select(vec4<bool>(true, true, arg_0.b, var_0.x), vec4<bool>(true, false, var_1.a, true), vec4<bool>(true, false, false, false)), var_1.a & false), var_0.x), select(!(!vec4<bool>(true, true, var_2.a.a, arg_1.a)), select(select(vec4<bool>(false, var_1.a, false, var_0.x), vec4<bool>(false, false, false, false), vec4<bool>(var_2.a.a, true, true, arg_0.b)), vec4<bool>(true, var_0.x, false, false), var_0.x), arg_0.b)));
}

fn func_1() -> f32 {
    var var_0 = -1i;
    global0 = array<Struct_3, 6>();
    let var_1 = func_4(Struct_1(-563f, true, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -137f), 1142f, -1257f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-553f, 1393f, 711f), vec3<f32>(-1000f, -787f, 1312f)))))), 1u, select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false))), Struct_2(all(vec4<bool>(true, true, true, true)), -1911f, firstLeadingBit(abs(func_2(true, vec4<u32>(1u, 0u, 4294967295u, 4294967295u))))), select(select(~(~vec3<u32>(4294967295u, 5349u, 4294967295u)), vec3<u32>(1u, 1u, 1u), vec3<bool>(true, true, true)), select(vec3<u32>(~0u, ~4294967295u, 1u), firstTrailingBit(~vec3<u32>(1u, 9014u, 45228u)), true), vec3<bool>(true, true, true)));
    var_0 = ~(~1i);
    global0 = array<Struct_3, 6>();
    return _wgslsmith_f_op_f32(f32(-1f) * -246f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1153f)) + _wgslsmith_f_op_f32(func_1()))), abs(max((vec3<i32>(1i, 12528i, u_input.a) | vec3<i32>(u_input.a, -2147483647i, u_input.a)) >> (vec3<u32>(55867u, 1u, 83347u) % vec3<u32>(32u)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 2147483647i, u_input.a), vec3<i32>(-1i, 2147483647i, u_input.a)))));
    let var_1 = -681f;
    global0 = array<Struct_3, 6>();
    var var_2 = var_0.b;
    var var_3 = i32(-1i) * -u_input.a;
    let var_4 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, -285f, var_1) - vec3<f32>(988f, var_1, var_1)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 987f, 1100f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_1, -706f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(-36048i, var_4);
}

