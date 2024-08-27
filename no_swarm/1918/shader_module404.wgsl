struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 7> = array<vec3<i32>, 7>(vec3<i32>(2147483647i, -27666i, 4924i), vec3<i32>(0i, 4878i, -4640i), vec3<i32>(-13421i, 0i, -57331i), vec3<i32>(50i, 37998i, 2147483647i), vec3<i32>(1i, -1i, -24586i), vec3<i32>(-1i, 12637i, 1i), vec3<i32>(597i, -5737i, -13074i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> f32 {
    let var_0 = u_input.e.x;
    let var_1 = Struct_4(Struct_2(min(var_0, _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(4294967295u, 0u, u_input.e.x))), u_input.d, 17850u, select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>((u_input.b.x <= var_0) && any(vec3<bool>(false, true, true)), any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true)))));
    var var_2 = Struct_2(~_wgslsmith_sub_u32(~33299u, firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(108621u, var_1.a.a, var_0), u_input.e.ywz))), -firstTrailingBit(u_input.d), u_input.b.x, var_1.a.e, select(vec2<bool>(true, true), vec2<bool>(var_1.a.e.x, false), true));
    let var_3 = vec4<f32>(139f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1319f), _wgslsmith_f_op_f32(round(-1437f)), var_2.e.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -408f) * _wgslsmith_f_op_f32(117f + 308f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1241f)) - 882f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(300f * _wgslsmith_f_op_f32(sign(309f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(322f - -124f), _wgslsmith_f_op_f32(step(104f, -181f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1719f)))));
    var var_4 = -_wgslsmith_sub_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.d) << (vec2<u32>(1u, 0u) % vec2<u32>(32u)), -vec2<i32>(-1i, var_1.a.b)), -55105i >> (_wgslsmith_sub_u32(_wgslsmith_sub_u32(0u, var_0), 0u) % 32u));
    return var_3.x;
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: vec4<u32>, arg_3: i32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2095f - -432f), 893f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1014f, -596f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(404f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1148f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1116f, 727f)))), select(any(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), true, true)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-964f, 145f, var_0.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, 1000f, var_0.x), vec3<f32>(-796f, 304f, var_0.x))))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 1087f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 755f) * vec3<f32>(-1000f, var_0.x, var_0.x)))))), vec2<i32>(u_input.d, (~arg_1.x >> (30954u % 32u)) | 1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1668f, var_0.x, var_0.x, 178f), vec4<f32>(1117f, 534f, 911f, -967f)) - _wgslsmith_div_vec4_f32(vec4<f32>(-886f, var_0.x, -522f, var_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, -1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, -317f, -885f, var_0.x), vec4<f32>(-514f, var_0.x, var_0.x, 598f), true))))), _wgslsmith_sub_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_2.x, 57422u), ~arg_2.xy), _wgslsmith_mult_vec2_u32(vec2<u32>(select(u_input.c, arg_2.x, true), max(33653u, u_input.b.x)), vec2<u32>(firstTrailingBit(arg_0), min(arg_2.x, arg_2.x)))));
    global0 = array<vec3<i32>, 7>();
    var var_2 = 28623u;
    var var_3 = var_1;
    return Struct_2(_wgslsmith_div_u32(var_3.d.x, min(arg_2.x, arg_2.x)), _wgslsmith_div_i32(-var_3.b.x, ~_wgslsmith_clamp_i32(reverseBits(17436i), ~2147483647i, arg_1.x)), reverseBits(firstTrailingBit(11724u)), select(vec2<bool>(!select(true, false, true), ~var_1.d.x >= reverseBits(0u)), !(!select(vec2<bool>(false, true), vec2<bool>(false, true), false)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)))), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(false, true, false))), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(false, false), false)));
}

fn func_1(arg_0: vec4<u32>) -> vec2<f32> {
    global0 = array<vec3<i32>, 7>();
    global0 = array<vec3<i32>, 7>();
    var var_0 = Struct_3(func_2(abs(~(~0u)), vec4<i32>(-1i) * -vec4<i32>(-12530i, -8168i, u_input.d, -21040i), arg_0, firstTrailingBit(u_input.d)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1434f), _wgslsmith_f_op_f32(sign(202f)), _wgslsmith_div_f32(-1182f, 1000f))), ~_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d, -48256i), vec2<i32>(-3659i, -2147483647i)), -vec2<i32>(u_input.d, u_input.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-671f, -416f, -489f, -1176f), vec4<f32>(-1000f, 201f, -204f, -892f), true))))), countOneBits(vec2<u32>(arg_0.x, ~u_input.c))), func_2(_wgslsmith_mod_u32(select(1u, 4294967295u, false) >> (~4294967295u % 32u), u_input.b.x), vec4<i32>(1i, u_input.d, func_2(arg_0.x, abs(vec4<i32>(0i, 22652i, 29979i, -3182i)), vec4<u32>(arg_0.x, u_input.e.x, u_input.c, 4294967295u), -52549i).b, -_wgslsmith_dot_vec4_i32(vec4<i32>(-25350i, -2147483647i, u_input.d, u_input.d), vec4<i32>(u_input.d, -39948i, u_input.d, -12369i))), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 1u, arg_0.x, u_input.e.x), arg_0)), u_input.d), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-2265f, 338f)), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -257f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(375f, 1280f, 1760f) - vec3<f32>(1162f, 730f, 853f)))), select(-(vec2<i32>(-2147483647i, 1i) & vec2<i32>(1i, u_input.d)), ~vec2<i32>(16484i, 0i) & vec2<i32>(u_input.d, -1i), vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-411f, -361f, -787f, -493f), _wgslsmith_f_op_vec4_f32(vec4<f32>(2074f, 1515f, 685f, 407f) * vec4<f32>(1068f, 1516f, -117f, -290f))))), select(vec2<u32>(u_input.c, u_input.e.x), ~u_input.b.zw, true) >> (~countOneBits(arg_0.zw) % vec2<u32>(32u))));
    var var_1 = !select(select(!(!vec3<bool>(var_0.c.d.x, true, var_0.c.d.x)), vec3<bool>(var_0.c.e.x | false, select(false, var_0.c.e.x, var_0.c.e.x), false), all(!vec4<bool>(var_0.c.d.x, var_0.a.d.x, false, false))), select(vec3<bool>(var_0.a.b <= var_0.c.b, any(vec2<bool>(true, false)), !var_0.a.e.x), vec3<bool>(true, any(vec2<bool>(false, true)), false), vec3<bool>(var_0.c.e.x, true, true)), select(!(!vec3<bool>(false, var_0.c.e.x, var_0.a.e.x)), vec3<bool>(var_0.a.e.x, true, !var_0.a.e.x), vec3<bool>(var_0.b.d.x <= u_input.c, true, var_0.c.d.x)));
    let var_2 = !(!select(func_2(1u, ~vec4<i32>(u_input.d, var_0.b.b.x, var_0.d.b.x, -267i), select(u_input.b, vec4<u32>(1u, 23924u, var_0.a.c, 24131u), var_1.x), -220i).e, !vec2<bool>(var_1.x, false), true));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_0.d.c.yw))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: bool) -> StorageBuffer {
    global0 = array<vec3<i32>, 7>();
    var var_0 = _wgslsmith_sub_i32(min(~_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.d, -7095i), -vec2<i32>(-2147483647i, u_input.d)), -2147483647i >> (func_2(max(24050u, arg_1.x), -vec4<i32>(u_input.d, 2147483647i, 35861i, u_input.d), ~vec4<u32>(u_input.e.x, arg_1.x, 1u, arg_1.x), u_input.d).a % 32u)), u_input.d);
    let var_1 = vec3<bool>(true, arg_2, true);
    global0 = array<vec3<i32>, 7>();
    let var_2 = _wgslsmith_f_op_f32(func_3());
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1155f, _wgslsmith_f_op_f32(-arg_0.x)) + _wgslsmith_f_op_vec2_f32(-arg_0)) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(arg_0))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_vec2_f32(func_1(select(vec4<u32>(u_input.c, u_input.e.x, u_input.a, u_input.e.x), min(u_input.e, u_input.e), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false))))), u_input.b, !(!any(vec4<bool>(false, false, true, true))));
}

