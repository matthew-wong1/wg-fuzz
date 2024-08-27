struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: vec2<u32>,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> vec4<bool> {
    var var_0 = vec3<u32>(~select(1u, 74173u, arg_0), ~(~_wgslsmith_mult_u32(firstTrailingBit(u_input.a), 23860u)), select(min(~73946u, ~(~81809u)), 112952u, true));
    var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(abs(~u_input.a), 809u, select(~var_0.x, 1u | var_0.x, all(vec3<bool>(arg_0, false, arg_0)))) ^ ~vec3<u32>(_wgslsmith_mult_u32(u_input.a, u_input.a), var_0.x, 64655u), ~(~abs(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, var_0.x, 43785u), vec3<u32>(12703u, var_0.x, 1u)))));
    let var_1 = vec2<bool>(!all(!(!vec4<bool>(false, arg_0, arg_0, false))), arg_0);
    var_0 = vec3<u32>(30177u, firstTrailingBit(~max(u_input.a, 1u)), u_input.a);
    let var_2 = vec2<bool>(var_1.x, arg_0);
    return vec4<bool>(true, any(vec2<bool>(any(select(vec2<bool>(false, var_1.x), vec2<bool>(false, var_2.x), vec2<bool>(true, true))), select(true, !arg_0, var_1.x))), !var_2.x && true, -1i != ~(1i ^ abs(u_input.d.x)));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> u32 {
    var var_0 = 1i;
    var_0 = 1i;
    var var_1 = 0u;
    let var_2 = Struct_1(~(~(-_wgslsmith_clamp_vec2_i32(vec2<i32>(-11350i, -2147483647i), vec2<i32>(u_input.b.x, 2147483647i), arg_0.a))));
    let var_3 = select(select(vec4<bool>(true, true, true, true), !(!func_3(false)), false), select(!select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec4<bool>(false, false, true, false)), any(func_3(true).xzw), false, true), select(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), true), func_3(true), false)), true);
    return 1u;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(arg_1.b, _wgslsmith_f_op_f32(-arg_1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1605f)), true))));
    var_0 = 904f;
    return arg_1.d;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec3<f32>) -> f32 {
    let var_0 = func_4(vec4<u32>(_wgslsmith_sub_u32(u_input.a, reverseBits(func_2(arg_1.d, arg_1.c.x))), 4294967295u, arg_1.c.x, _wgslsmith_sub_u32(abs(_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a)), arg_1.c.x)), Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(763f, -368f) * arg_1.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, arg_1.a.x))), !(arg_2.x != arg_2.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -120f))), arg_1.c, Struct_1(countOneBits(arg_1.d.a & arg_1.d.a)), !arg_0.zz), _wgslsmith_clamp_vec3_u32(max(vec3<u32>(4294967295u, _wgslsmith_sub_u32(16360u, arg_1.c.x), ~6053u), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.a, 45943u), vec3<u32>(arg_1.c.x, 19543u, 0u)), vec3<u32>(21692u, u_input.a, u_input.a))), select(_wgslsmith_add_vec3_u32(~vec3<u32>(arg_1.c.x, arg_1.c.x, 56166u), vec3<u32>(69287u, 70173u, arg_1.c.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, 49425u) & vec3<u32>(u_input.a, 1u, 4294967295u), vec3<u32>(arg_1.c.x, arg_1.c.x, arg_1.c.x)), u_input.a < arg_1.c.x), min(reverseBits(abs(vec3<u32>(u_input.a, 0u, u_input.a))), ~select(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(35457u, u_input.a, 1u), vec3<bool>(false, arg_1.e.x, true)))));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2105f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -543f) - 1214f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_2.x)), 332f) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(338f, arg_1.b) * vec2<f32>(920f, arg_2.x)), arg_1.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.a * arg_2.zz))))));
    var var_2 = Struct_2(vec2<f32>(arg_1.a.x, arg_1.b), -680f, vec2<u32>(arg_1.c.x, 36227u) | _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.a) | vec2<u32>(u_input.a, u_input.a), ~countOneBits(vec2<u32>(1u, arg_1.c.x))), var_0, !arg_0.yw);
    var_2 = arg_1;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-267f * 1208f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.a.x + var_2.a.x), -1000f, true)) - _wgslsmith_f_op_f32(trunc(-844f)))));
}

fn func_5(arg_0: f32, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: vec3<u32>) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-692f + arg_0), _wgslsmith_f_op_f32(func_1(vec4<bool>(true, false, false, false), Struct_2(arg_1.yz, arg_2.x, arg_3.xz, Struct_1(u_input.b.zz), vec2<bool>(false, false)), vec3<f32>(-590f, arg_2.x, arg_2.x))))), _wgslsmith_f_op_vec2_f32(-arg_2.yz)), arg_1.x, vec2<u32>(~(~_wgslsmith_div_u32(u_input.a, 36284u)), _wgslsmith_sub_u32(arg_3.x, min(min(11631u, 20235u), arg_3.x))), func_4(vec4<u32>(arg_3.x, _wgslsmith_sub_u32(firstLeadingBit(arg_3.x), arg_3.x >> (arg_3.x % 32u)), 4294967295u, _wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, arg_3.x), arg_3.x)), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-140f, arg_0)) - _wgslsmith_f_op_vec2_f32(abs(arg_1.yz))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - arg_0)), abs(vec2<u32>(arg_3.x, 4294967295u)), func_4(~vec4<u32>(u_input.a, arg_3.x, u_input.a, arg_3.x), Struct_2(vec2<f32>(arg_0, 1000f), arg_2.x, arg_3.zz, Struct_1(u_input.d), vec2<bool>(true, true)), firstTrailingBit(arg_3)), vec2<bool>(true, true)), ~_wgslsmith_clamp_vec3_u32(arg_3, arg_3, ~vec3<u32>(22825u, arg_3.x, arg_3.x))), !func_3(true).zz);
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, arg_0, 1000f, _wgslsmith_div_f32(arg_2.x, _wgslsmith_div_f32(arg_2.x, arg_2.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, var_0.b, arg_2.x, -537f), vec4<f32>(arg_2.x, -312f, -2139f, 1327f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, -210f, arg_2.x, arg_1.x) * vec4<f32>(1263f, 1702f, -1131f, arg_2.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 1000f, -1011f, var_0.a.x) + vec4<f32>(var_0.a.x, -1048f, arg_0, -711f)) * vec4<f32>(arg_0, 1106f, 1851f, arg_1.x)))))));
    var var_2 = arg_3.x;
    var_2 = 4294967295u;
    let var_3 = var_0.e.x;
    return Struct_2(_wgslsmith_f_op_vec2_f32(-arg_1.xy), arg_0, max(~(vec2<u32>(arg_3.x, 4294967295u) ^ (vec2<u32>(47252u, arg_3.x) ^ var_0.c)), vec2<u32>(var_0.c.x, _wgslsmith_mod_u32(4294967295u, u_input.a))), Struct_1(u_input.d), select(vec2<bool>(!(!var_0.e.x), any(vec2<bool>(var_3, var_3)) | true), select(!select(var_0.e, vec2<bool>(var_0.e.x, var_0.e.x), vec2<bool>(false, var_0.e.x)), vec2<bool>(var_0.e.x, !var_0.e.x), select(vec2<bool>(false, false), vec2<bool>(false, true), any(var_0.e))), var_0.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -683f)) + _wgslsmith_f_op_f32(func_1(vec4<bool>(false, true, false, false), Struct_2(vec2<f32>(408f, -214f), 164f, vec2<u32>(u_input.a, u_input.a), Struct_1(vec2<i32>(u_input.b.x, u_input.b.x)), vec2<bool>(false, false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-467f, -457f, 510f) * vec3<f32>(-391f, 1187f, -2731f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-209f, -252f, -697f))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(473f, 262f, -1333f)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(589f, 1000f, -720f) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-914f, -1166f, 772f), vec3<f32>(-2639f, -390f, -436f)))) - vec3<f32>(-1961f, _wgslsmith_f_op_f32(-368f - 1000f), _wgslsmith_f_op_f32(min(-158f, -207f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-3103f, 242f, -1358f) - vec3<f32>(1000f, -936f, 1843f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-2055f, -284f, -1000f) + vec3<f32>(-730f, -630f, 985f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(264f, -920f, 775f))) - vec3<f32>(_wgslsmith_f_op_f32(trunc(-192f)), -480f, _wgslsmith_f_op_f32(1150f + 1000f)))), vec3<u32>(u_input.a, 9977u, firstLeadingBit(func_2(Struct_1(vec2<i32>(-2147483647i, -21749i)), u_input.a) ^ u_input.a)));
    var var_1 = _wgslsmith_f_op_f32(trunc(780f));
    var_1 = _wgslsmith_f_op_f32(-1f);
    let var_2 = ~firstLeadingBit(min(select(u_input.b | vec4<i32>(var_0.d.a.x, 2147483647i, 2147483647i, 67i), max(vec4<i32>(-8244i, var_0.d.a.x, u_input.b.x, var_0.d.a.x), u_input.b), var_0.b > 1900f), vec4<i32>(1i, abs(u_input.c), _wgslsmith_add_i32(0i, var_0.d.a.x), firstLeadingBit(-69445i))));
    var_0 = func_5(var_0.a.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, -1334f, 722f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b, var_0.b, -1272f), vec3<f32>(294f, 1442f, var_0.b), vec3<bool>(false, true, var_0.e.x))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.a.x, var_0.a.x, var_0.b)))))), vec3<f32>(var_0.b, _wgslsmith_f_op_f32(abs(var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.b)), 1000f))), firstTrailingBit(vec3<u32>(u_input.a << (func_5(var_0.a.x, vec3<f32>(609f, 691f, -1000f), vec3<f32>(1073f, var_0.a.x, 125f), vec3<u32>(0u, var_0.c.x, 0u)).c.x % 32u), 37552u, var_0.c.x)));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), var_0.a.x);
    var_1 = _wgslsmith_f_op_f32(step(592f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.b, -1299f))))))));
    var var_3 = var_0.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2229f), _wgslsmith_f_op_f32(func_1(func_3(true), Struct_2(vec2<f32>(130f, var_0.a.x), -283f, vec2<u32>(var_0.c.x, u_input.a), var_0.d, var_0.e), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.b, var_0.b, var_0.b))))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1(vec4<bool>(var_0.e.x, var_0.e.x, var_0.e.x, false), Struct_2(var_0.a, 1332f, var_0.c, Struct_1(var_2.wy), var_0.e), vec3<f32>(305f, -474f, var_0.a.x))), var_0.b, _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(step(1906f, -380f))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-865f, -398f, var_0.b, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, -518f, 511f, 1000f))))))));
}

