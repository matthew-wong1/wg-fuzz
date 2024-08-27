struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 7>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_1(min(_wgslsmith_div_vec4_u32(~arg_0.a & (arg_2.a | arg_2.a), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.a.x, 1u, 28521u, arg_2.a.x), vec4<u32>(arg_2.d.x, arg_0.a.x, 0u, arg_0.d.x)) >> (vec4<u32>(arg_0.a.x, 4294967295u, arg_2.a.x, 1u) % vec4<u32>(32u))), ~arg_0.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-3004f * arg_1.x), 632f, -1011f, _wgslsmith_f_op_f32(1000f - arg_1.x)) + arg_2.b), arg_0.b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-230f, 512f)), arg_1.x)), -620f)))), arg_2.d);
    global0 = array<vec3<f32>, 7>();
    var var_1 = arg_0.a.wz & ~vec2<u32>(arg_0.a.x, var_0.d.x & 55156u);
    let var_2 = Struct_2(true, arg_2.c);
    var_1 = var_0.d.xx;
    return select(91811u, ~(var_0.a.x | var_0.d.x), _wgslsmith_f_op_f32(-675f * 749f) >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c + 530f), _wgslsmith_f_op_f32(step(715f, 1456f)))));
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-687f))) - _wgslsmith_f_op_f32(594f + _wgslsmith_f_op_f32(f32(-1f) * -637f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-637f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_1 = Struct_1(vec4<u32>(1u, select(~func_3(Struct_1(vec4<u32>(4294967295u, 0u, 0u, 5348u), vec4<f32>(163f, var_0, var_0, var_0), var_0, vec3<u32>(43743u, 4294967295u, 4294967295u)), global0[_wgslsmith_index_u32(20790u, 7u)], Struct_1(vec4<u32>(30789u, 0u, 78828u, 6368u), vec4<f32>(var_0, var_0, 1000f, var_0), 226f, vec3<u32>(0u, 54018u, 1u))), ~(~4294967295u), true), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, 1u, reverseBits(0u)), ~4294967295u), 60435u), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0))), var_0) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, 283f, var_0)))))), var_0, firstLeadingBit(max(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u))) & min(select(abs(vec3<u32>(40682u, 4294967295u, 847u)), vec3<u32>(12125u, 9910u, 1u), vec3<bool>(true, true, true)), select(vec3<u32>(1u, 35428u, 4294967295u), vec3<u32>(60433u, 0u, 15641u), vec3<bool>(false, false, false)) | reverseBits(vec3<u32>(61167u, 35334u, 6822u))));
    let var_2 = Struct_2(true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(486f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -881f), -835f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.c)) + var_0) * _wgslsmith_f_op_f32(ceil(-229f))))));
    let var_3 = Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.d.x | var_1.a.x, var_1.d.x, _wgslsmith_dot_vec4_u32(var_1.a, var_1.a), reverseBits(max(var_1.d.x, 95021u))), (select(vec4<u32>(10736u, 25647u, 0u, 21785u), var_1.a, true) << (select(vec4<u32>(1u, 0u, var_1.d.x, var_1.d.x), vec4<u32>(var_1.a.x, var_1.a.x, 4294967295u, var_1.d.x), var_2.a) % vec4<u32>(32u))) & vec4<u32>(~4294967295u, 1u, 34953u, _wgslsmith_dot_vec4_u32(var_1.a, vec4<u32>(72155u, var_1.d.x, var_1.a.x, 21148u)))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_2.b, 737f), _wgslsmith_f_op_f32(var_2.b + var_0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-501f)))) - var_0), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_1.b.x, -625f))), -869f), -462f, abs(~var_1.d >> (~_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.a.x, 11634u, var_1.d.x), vec3<u32>(0u, var_1.a.x, var_1.d.x)) % vec3<u32>(32u))));
    var var_4 = func_3(Struct_1(~vec4<u32>(var_3.a.x, _wgslsmith_clamp_u32(var_3.d.x, var_1.a.x, var_1.d.x), ~var_3.a.x, var_1.d.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_3.b * vec4<f32>(-1465f, 2060f, 258f, var_1.c))) - _wgslsmith_f_op_vec4_f32(-var_1.b)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-387f)), _wgslsmith_f_op_f32(-207f - -1579f)))), vec3<u32>(var_1.d.x, max(_wgslsmith_sub_u32(var_3.a.x, 0u), 82423u), ~(~1u))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-116f, _wgslsmith_f_op_f32(ceil(var_3.b.x)), _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.c, var_0, 878f)), !all(vec2<bool>(var_2.a, var_2.a)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(623f, 126f, var_1.c) + vec3<f32>(558f, var_0, -284f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-307f, var_1.b.x, var_1.b.x))))), vec3<f32>(_wgslsmith_f_op_f32(exp2(var_1.b.x)), _wgslsmith_f_op_f32(trunc(var_3.c)), _wgslsmith_f_op_f32(min(120f, -1993f))))), Struct_1(var_3.a, _wgslsmith_f_op_vec4_f32(-var_3.b), _wgslsmith_f_op_f32(-301f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), _wgslsmith_add_vec3_u32(vec3<u32>(abs(53722u), 0u, ~var_1.a.x), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, var_3.d.x, var_3.d.x), _wgslsmith_mod_vec3_u32(var_3.d, var_1.a.wzx)))));
    return firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 33337u, 1433u, 1u), var_1.a), var_1.d.x, 4294967295u, 0u), vec4<u32>(~(~55579u), 5780u, ~(~1u), _wgslsmith_add_u32(1u, _wgslsmith_div_u32(var_1.a.x, 4294967295u)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_2) -> f32 {
    global0 = array<vec3<f32>, 7>();
    global0 = array<vec3<f32>, 7>();
    var var_0 = ~(select(16283i, -(i32(-1i) * -33636i), arg_2.x) << ((_wgslsmith_add_u32(~21426u, ~arg_0.a.x) | _wgslsmith_add_u32(func_2(), arg_0.d.x)) % 32u));
    var_0 = -(~_wgslsmith_sub_i32(countOneBits(35193i), -u_input.b.x));
    var var_1 = 1f;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f))) - arg_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 65050u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(607f * _wgslsmith_f_op_f32(func_1(Struct_1(vec4<u32>(var_0, var_0, 1u, var_0), vec4<f32>(286f, 324f, -315f, 223f), 402f, vec3<u32>(var_0, 12279u, var_0)), Struct_1(vec4<u32>(var_0, var_0, 6829u, var_0), vec4<f32>(127f, 1174f, 1320f, -1121f), -185f, vec3<u32>(var_0, var_0, 0u)), vec3<bool>(false, false, true), Struct_2(false, -1820f))))))) > _wgslsmith_f_op_f32(406f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-322f * 508f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1517f - 406f) * _wgslsmith_f_op_f32(f32(-1f) * -602f)))));
    var var_2 = Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_div_u32(~4294967295u, 65978u), 0u, 1u & select(61204u, 4294967295u, false), _wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, var_0, var_0), vec3<u32>(var_0, 29837u, var_0), vec3<bool>(false, false, true)), ~vec3<u32>(var_0, 46796u, 16167u))), ~_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 104567u, 4294967295u, var_0), vec4<u32>(var_0, 0u, 39788u, 1u)), vec4<u32>(0u, 31728u, var_0, var_0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(538f, _wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec4<u32>(22988u, 20443u, 38280u, var_0), vec4<f32>(119f, 588f, -588f, 332f), -1745f, vec3<u32>(var_0, var_0, 0u)), Struct_1(vec4<u32>(0u, 67199u, var_0, 3941u), vec4<f32>(1671f, 956f, 2918f, -280f), 367f, vec3<u32>(13590u, var_0, 26039u)), vec3<bool>(true, true, true), Struct_2(false, 883f))) + 2230f), -525f)), _wgslsmith_f_op_f32(max(-1032f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(497f)) * _wgslsmith_f_op_f32(-917f - -701f)) + -574f))), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(var_0, var_0, 41510u), 4294967295u), var_0, 22860u) ^ (vec3<u32>(21589u, ~var_0, 15243u ^ var_0) << (_wgslsmith_div_vec3_u32(vec3<u32>(0u, var_0, 39326u) | vec3<u32>(var_0, 4294967295u, var_0), ~vec3<u32>(var_0, var_0, var_0)) % vec3<u32>(32u))));
    var_2 = Struct_1(~countOneBits(_wgslsmith_add_vec4_u32(var_2.a | var_2.a, min(vec4<u32>(78421u, 4294967295u, var_0, 9234u), vec4<u32>(82849u, var_2.d.x, var_2.a.x, var_2.a.x)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(var_2.b)))))), _wgslsmith_f_op_f32(-1f), _wgslsmith_mod_vec3_u32(var_2.d | ~vec3<u32>(0u, 4294967295u, 21536u), vec3<u32>(~(~1u), select(var_0, ~var_0, false), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(var_2.a, vec4<u32>(var_2.a.x, var_0, var_0, var_2.a.x)), var_2.a))));
    var var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(var_2.b, vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.b.x * -282f))), 186f, -356f, -873f)));
}

