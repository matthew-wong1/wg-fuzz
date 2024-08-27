struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>) -> vec4<f32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-962f * -117f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1605f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2096f) * _wgslsmith_f_op_f32(1000f - 445f))))));
    var_0 = _wgslsmith_f_op_f32(ceil(374f));
    let var_1 = vec4<i32>(2147483647i, -2147483647i, u_input.e, ~min(u_input.b, _wgslsmith_mod_i32(u_input.e, _wgslsmith_add_i32(u_input.e, 31347i))));
    let var_2 = var_1;
    let var_3 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -284f), _wgslsmith_f_op_f32(ceil(160f))))), -_wgslsmith_dot_vec2_i32(-(~var_1.wx), vec2<i32>(31276i, -2147483647i >> (u_input.d % 32u))), Struct_1(938f, ~vec3<i32>(var_1.x, -2147483647i, 1i), select(vec2<u32>(select(u_input.d, u_input.d, false), 0u), countOneBits(~vec2<u32>(u_input.d, 4294967295u)), vec2<bool>(false, arg_0)), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(13755u, u_input.d, u_input.d), vec3<u32>(0u, u_input.d, 0u)), vec3<u32>(u_input.d, 0u, 0u)), ~max(vec3<u32>(0u, 0u, u_input.d), vec3<u32>(4294967295u, u_input.d, 4294967295u))), ~firstLeadingBit(vec3<u32>(u_input.d, 4294967295u, 1u))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-338f, -632f)))))), -1454f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(961f, 1072f))), -132f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-862f, -681f, -1504f) * vec3<f32>(-120f, -1902f, -1000f)) + _wgslsmith_div_vec3_f32(vec3<f32>(-383f, 468f, -387f), vec3<f32>(-506f, 192f, -1000f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(459f, -951f, 121f))))), vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(310f + 870f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-823f)))))));
    return vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -516f), 869f, var_3.d.x, _wgslsmith_f_op_f32(487f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_3.c.a)), -1960f, !arg_0)), -1780f)));
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_4) -> Struct_1 {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(arg_3.d + _wgslsmith_f_op_vec4_f32(func_3(true, vec3<bool>(false, true, arg_0.x))))));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -2062f), ~(~(-1i)), arg_3.c, _wgslsmith_f_op_vec4_f32(-var_0.a.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.a.a.x * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a - arg_1)), arg_3.e.x) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_3.d.xxw), _wgslsmith_div_vec3_f32(vec3<f32>(-950f, 826f, 1035f), _wgslsmith_f_op_vec3_f32(-arg_3.d.xxy)), select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), select(vec3<bool>(true, true, false), vec3<bool>(true, true, arg_0.x), arg_0.x), true)))));
    let var_2 = !(!any(select(vec3<bool>(false, false, arg_0.x), vec3<bool>(arg_0.x, false, false), vec3<bool>(false, arg_0.x, false)))) && arg_0.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.d.zwx));
    var_0 = Struct_3(var_0.a);
    return Struct_1(arg_1, _wgslsmith_mod_vec3_i32(vec3<i32>(countOneBits(var_1.c.b.x), i32(-1i) * -11582i, 1i) >> (vec3<u32>(arg_3.c.d.x & arg_3.c.d.x, _wgslsmith_mod_u32(arg_3.c.d.x, u_input.d), 1u) % vec3<u32>(32u)), var_1.c.b), min(vec2<u32>(0u, 38023u) | arg_2.d.zx, arg_2.e.yz) ^ vec2<u32>(~abs(68996u), ~(~u_input.d)), ~(~arg_2.d), vec3<u32>(countOneBits(~0u), ~abs(_wgslsmith_mult_u32(54246u, 1u)), arg_3.c.d.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>) -> bool {
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, -594f, 190f, arg_0.a) * vec4<f32>(-460f, arg_0.a, 1521f, arg_0.a)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a, 744f, 651f, 1055f), vec4<f32>(1000f, arg_0.a, arg_0.a, arg_0.a))) - vec4<f32>(-753f, -263f, _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-arg_0.a)))));
    return false;
}

fn func_1(arg_0: vec3<bool>) -> f32 {
    let var_0 = abs(4294967295u | _wgslsmith_clamp_u32(~1u, 4294967295u, _wgslsmith_div_u32(4294967295u, 4294967295u))) << (abs(u_input.d) % 32u);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -177f) * 383f), _wgslsmith_f_op_f32(f32(-1f) * -830f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1103f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -985f), _wgslsmith_f_op_f32(f32(-1f) * -1734f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1000f - 1372f), _wgslsmith_f_op_f32(f32(-1f) * -509f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-566f, -1124f))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(591f)) + _wgslsmith_f_op_f32(-454f + 905f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1190f + -162f) - _wgslsmith_f_op_f32(round(-837f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(108f)))))));
    let var_2 = vec4<u32>(~_wgslsmith_div_u32(select(u_input.d, u_input.d, !arg_0.x), 0u), var_0, u_input.d, u_input.d);
    let var_3 = !arg_0;
    var var_4 = select(vec2<bool>(arg_0.x, any(vec4<bool>(true, true, u_input.e > u_input.e, select(arg_0.x, var_3.x, arg_0.x)))), !vec2<bool>(!var_3.x, !(!arg_0.x)), arg_0.x);
    return _wgslsmith_div_f32(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-1000f + -493f)), 407f, func_4(func_2(var_3.xx, var_1.x, Struct_1(1094f, vec3<i32>(u_input.b, u_input.c, u_input.a), var_2.zx, vec3<u32>(52163u, 17265u, u_input.d), var_2.yyy), Struct_4(var_1.x, u_input.e, Struct_1(1000f, vec3<i32>(-37159i, u_input.b, 57487i), vec2<u32>(var_2.x, u_input.d), vec3<u32>(25197u, var_2.x, var_2.x), var_2.wxx), vec4<f32>(-1985f, -236f, 1640f, -650f), vec3<f32>(-388f, 1188f, -1220f))), vec2<i32>(0i, -23124i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, 134f)))));
}

fn func_5(arg_0: f32, arg_1: vec4<i32>) -> vec4<f32> {
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1496f, arg_0, arg_0, -1137f) * vec4<f32>(-871f, arg_0, 580f, arg_0)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-610f, arg_0, -1175f, arg_0) + vec4<f32>(arg_0, 197f, 1830f, -280f)))) + vec4<f32>(arg_0, -465f, 911f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(178f, arg_0, false))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1000f, arg_0, arg_0)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-956f, -373f, arg_0, arg_0))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, arg_0) - vec4<f32>(arg_0, -1680f, arg_0, arg_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1422f, arg_0, arg_0, arg_0)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(func_5(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(636f - -741f), _wgslsmith_f_op_f32(func_1(vec3<bool>(false, false, false)))) + _wgslsmith_f_op_f32(f32(-1f) * -568f)), reverseBits(~vec4<i32>(u_input.e, u_input.c, 1672i, -1i)))));
    var var_1 = Struct_4(-659f, u_input.b, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2448f + _wgslsmith_f_op_f32(-var_0.a.x)) - func_2(vec2<bool>(true, true), 342f, Struct_1(-831f, vec3<i32>(7557i, 37287i, u_input.c), vec2<u32>(45999u, u_input.d), vec3<u32>(1u, u_input.d, 68749u), vec3<u32>(98398u, u_input.d, 1u)), Struct_4(var_0.a.x, u_input.c, Struct_1(1267f, vec3<i32>(2147483647i, 23986i, u_input.b), vec2<u32>(28595u, u_input.d), vec3<u32>(25415u, 49255u, 4294967295u), vec3<u32>(47653u, 4294967295u, 42196u)), vec4<f32>(var_0.a.x, 2054f, var_0.a.x, -162f), var_0.a.ywz)).a), vec3<i32>(0i, -1i, firstLeadingBit(u_input.c)) << (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, 0u, 91229u), vec3<u32>(4294967295u, 0u, 17182u)) % vec3<u32>(32u)), select(vec2<u32>(~u_input.d, 4294967295u), firstLeadingBit(vec2<u32>(u_input.d, u_input.d)), any(vec3<bool>(true, false, false))), ~(~abs(vec3<u32>(u_input.d, u_input.d, 1u))), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.d, u_input.d, 9027u) | ~vec3<u32>(u_input.d, 24693u, 20966u), reverseBits(vec3<u32>(u_input.d, 84462u, 4294967295u) | vec3<u32>(u_input.d, 34364u, 0u)))), _wgslsmith_div_vec4_f32(var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, var_0.a.x, var_0.a.x, var_0.a.x), vec4<f32>(1403f, 743f, var_0.a.x, var_0.a.x))))), vec3<f32>(_wgslsmith_f_op_f32(730f * _wgslsmith_f_op_vec4_f32(func_3(false, vec3<bool>(false, false, true))).x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(197f + _wgslsmith_f_op_f32(f32(-1f) * -147f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + _wgslsmith_f_op_f32(-1000f + var_0.a.x))), var_0.a.x));
    var var_2 = Struct_2(var_1.d);
    let var_3 = var_1.c.d ^ vec3<u32>(0u, 59763u, firstLeadingBit(var_1.c.e.x) & 1u);
    let var_4 = var_1.c.b.yx;
    let var_5 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-var_0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~0i, vec2<u32>(var_3.x, _wgslsmith_sub_u32(~(~4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.d), var_3.xz))), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 90202u, u_input.d, var_1.c.d.x), ~vec4<u32>(72572u, var_1.c.e.x, 96756u, var_3.x))), var_3);
}

