struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1264f, 1f))), Struct_1(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true))), 46308i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1085f))))), Struct_1(select(false, false, any(vec4<bool>(true, true, true, true))), abs(u_input.a.x) & min(u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(abs(1f))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1492f, -1409f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2457f, -322f))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u))));
    let var_1 = vec3<bool>(!(!any(vec4<bool>(var_0.b.a, false, true, true))), !var_0.c.a, false);
    var var_2 = ~vec3<u32>(23005u, min(1u, 562u), _wgslsmith_mod_u32(~_wgslsmith_div_u32(var_0.d.b.x, var_0.d.b.x), var_0.d.b.x));
    var_2 = vec3<u32>(1u, ~var_0.d.b.x, 95416u) & firstLeadingBit(_wgslsmith_sub_vec3_u32(abs(var_0.d.b ^ vec3<u32>(var_2.x, 4294967295u, 4294967295u)), var_0.d.b));
    var var_3 = vec2<f32>(-690f, _wgslsmith_f_op_f32(var_0.c.c + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.a) + var_0.c.c)));
    return u_input.a.x;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: f32, arg_3: i32) -> vec4<f32> {
    var var_0 = vec4<i32>(arg_3, arg_3, ~u_input.a.x, arg_3);
    var var_1 = vec4<f32>(1140f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1305f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-632f + 790f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-303f + arg_1.d.a), _wgslsmith_f_op_f32(select(arg_2, arg_1.c.c, false))))) * -1159f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 - arg_1.c.c) * _wgslsmith_div_f32(arg_0.x, arg_2)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_1.c.c))) - arg_0.x));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(309f + 614f) + _wgslsmith_f_op_f32(floor(-231f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(arg_2))))))), -867f, max(firstLeadingBit(~arg_1.d.b.x), 15693u) <= 4294967295u));
    var var_3 = _wgslsmith_div_vec2_u32(vec2<u32>(min(arg_1.d.b.x, ~1u), 16918u) >> (vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(arg_1.d.b.x, 0u), ~arg_1.d.b.x), arg_1.d.b.x) % vec2<u32>(32u)), vec2<u32>(firstTrailingBit(arg_1.d.b.x), arg_1.d.b.x));
    var var_4 = func_3() << (_wgslsmith_dot_vec3_u32(~countOneBits(firstLeadingBit(vec3<u32>(arg_1.d.b.x, var_3.x, 46639u))), ~vec3<u32>(30440u, reverseBits(1u), 54674u)) % 32u);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2, arg_1.a.x)) * _wgslsmith_f_op_f32(abs(-834f))), var_1.x, -1151f) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, arg_2, var_1.x, -526f)) * vec4<f32>(-196f, 234f, 1545f, arg_2)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(340f, var_2, 638f, arg_0.x), vec4<f32>(-2216f, 1232f, var_2, -587f), vec4<bool>(true, true, arg_1.c.a, true))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_1.a.x, -1028f, var_1.x) - vec4<f32>(arg_0.x, arg_0.x, 1237f, 1488f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1080f, -214f, 359f)) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -887f, arg_1.a.x, 705f) * vec4<f32>(-1439f, var_2, arg_1.d.a, arg_0.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -675f), _wgslsmith_f_op_f32(ceil(arg_0.x)), var_2, arg_2) - vec4<f32>(arg_1.a.x, arg_2, 885f, arg_1.b.c))));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec4<bool>) -> i32 {
    let var_0 = _wgslsmith_add_u32(arg_0, 1u);
    var var_1 = Struct_4(arg_2.xyz, ~firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(37073u, 45186u, 40072u, 0u), vec4<u32>(arg_0, 31524u, arg_0, arg_0)) ^ ~vec4<u32>(0u, var_0, var_0, var_0)));
    let var_2 = _wgslsmith_f_op_f32(step(-1491f, 300f));
    var var_3 = -u_input.a.x;
    let var_4 = _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, -459f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-421f, -674f) * 2437f))), Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1183f, var_2) - _wgslsmith_f_op_vec2_f32(vec2<f32>(543f, -792f) * vec2<f32>(-318f, -1000f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, var_2) * vec2<f32>(var_2, var_2)))), Struct_1(true, 2147483647i, _wgslsmith_f_op_f32(-var_2)), Struct_1(any(vec2<bool>(false, false)), func_3(), 285f), Struct_2(-2022f, ~var_1.b.xwz)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-770f * var_2) + -506f))) + 469f), func_3() >> (~33512u % 32u)));
    return -2147483647i;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: f32) -> u32 {
    let var_0 = countOneBits(u_input.a.xz);
    let var_1 = vec4<i32>(_wgslsmith_add_i32(var_0.x, func_2(arg_0.b.x, true, !vec4<bool>(false, true, arg_1.b.a, false))) >> ((1u | arg_0.b.x) % 32u), ~arg_1.c.b, 1i, var_0.x);
    return ~arg_1.d.b.x;
}

fn func_5(arg_0: f32, arg_1: vec4<u32>) -> Struct_1 {
    return Struct_1((!any(vec3<bool>(true, false, false)) | false) && any(vec3<bool>(all(vec3<bool>(true, true, true)), select(false, false, true), true)), i32(-1i) * -1i, 301f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(false, u_input.a.x ^ u_input.a.x, -2557f);
    let var_1 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1492f)) + var_0.c), _wgslsmith_add_vec4_u32(select(vec4<u32>(func_1(Struct_2(-687f, vec3<u32>(4294967295u, 60949u, 4294967295u)), Struct_3(vec2<f32>(-1378f, var_0.c), var_0, var_0, Struct_2(var_0.c, vec3<u32>(14567u, 1u, 1u))), vec3<f32>(var_0.c, var_0.c, var_0.c), var_0.c), ~4294967295u, countOneBits(78037u), ~2833u), ~(~vec4<u32>(56620u, 48458u, 75258u, 1u)), vec4<bool>(true, var_0.a, true, var_0.a)), vec4<u32>(min(min(0u, 0u), 51215u), firstLeadingBit(1u), 1u, 1u)));
    let var_2 = ~(-21045i);
    let var_3 = true;
    var var_4 = Struct_4(!select(!select(vec3<bool>(var_0.a, var_0.a, false), vec3<bool>(false, false, var_3), var_1.a), vec3<bool>(true, var_1.a, !var_3), true), max(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(5126u, 17452u), 4294967295u, abs(0u), select(32078u, 0u, var_3)), reverseBits(vec4<u32>(4294967295u, 51624u, 12913u, 0u))), vec4<u32>(~23382u, ~1u, ~16646u, max(min(4294967295u, 1u), ~52864u))));
    let var_5 = ~42524u;
    var_4 = Struct_4(!(!select(select(var_4.a, var_4.a, var_4.a), select(vec3<bool>(true, var_4.a.x, true), vec3<bool>(false, var_4.a.x, var_1.a), true), var_1.a)), var_4.b);
    var var_6 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.c, var_0.c, var_1.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c, 429f, var_1.c) - vec3<f32>(462f, 1235f, var_0.c))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, var_0.c, 640f)) - vec3<f32>(var_1.c, var_1.c, var_0.c)) * vec3<f32>(_wgslsmith_f_op_f32(var_0.c * 348f), _wgslsmith_f_op_f32(-1000f - 1000f), _wgslsmith_f_op_f32(var_0.c * -1000f)))), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(abs(var_1.b), ~(-29807i)), vec2<i32>(i32(-1i) * -52098i, -26561i)), ~var_2, 10845i), u_input.a.x);
}

