struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec3<f32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_5 {
    a: bool,
    b: vec4<f32>,
    c: i32,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
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

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = max(_wgslsmith_mod_i32(~u_input.a.x, ~(1i >> (u_input.b % 32u))), _wgslsmith_add_i32(u_input.c, firstTrailingBit(firstLeadingBit(u_input.c) >> (~u_input.b % 32u))));
    let var_1 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(130f, 1529f), vec2<f32>(-1046f, 608f), vec2<bool>(false, true))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(115f, 142f) + vec2<f32>(743f, -1000f))))), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 55178u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 29257u, u_input.b)) ^ (477u ^ ~u_input.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(2169f, 827f, -1000f), vec3<f32>(341f, -1534f, -455f), vec3<bool>(false, false, true))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(339f, 1000f, -427f))))), ~vec4<u32>(u_input.b, ~u_input.b, max(u_input.b, u_input.b), 0u)), _wgslsmith_mult_vec2_u32(~max(max(vec2<u32>(u_input.b, 1u), vec2<u32>(1118u, u_input.b)), vec2<u32>(u_input.b, 4294967295u)), select(abs(vec2<u32>(1374u, u_input.b) << (vec2<u32>(u_input.b, 22270u) % vec2<u32>(32u))), vec2<u32>(12543u, 50384u) | ~vec2<u32>(u_input.b, u_input.b), vec2<bool>(true, true))));
    var_0 = arg_0;
    var_0 = countOneBits(min(-_wgslsmith_mult_i32(arg_0, u_input.c), -_wgslsmith_dot_vec3_i32(u_input.a, u_input.a)) | -(_wgslsmith_mod_i32(62481i, u_input.c) | ~arg_0));
    var_0 = u_input.c;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(510f + -163f)));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec2<u32>) -> i32 {
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(581f, -1443f) + vec2<f32>(997f, 658f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(391f, -183f)))), ~(44682u >> (arg_2.x % 32u)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1471f)), 570f), _wgslsmith_f_op_f32(func_3(u_input.c)), -178f), ~firstLeadingBit(vec4<u32>(52477u, u_input.b, arg_2.x, 1u) & vec4<u32>(u_input.b, 1u, u_input.b, u_input.b))), abs(vec2<u32>(1u, select(max(4294967295u, 51442u), arg_2.x, arg_0))));
    let var_1 = u_input.a.x;
    var var_2 = ~var_0.a.d;
    var_2 = var_0.a.d;
    var_2 = select(~abs(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.x, var_2.x, var_2.x, arg_2.x), vec4<u32>(27509u, var_0.b.x, 4294967295u, arg_2.x)))), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(arg_2.x, ~var_0.b.x), 49541u ^ (arg_2.x & arg_2.x), _wgslsmith_sub_u32(33127u, 4294967295u << (var_2.x % 32u)), 1u), var_0.a.d), vec4<bool>(arg_0, all(vec4<bool>(false, select(false, true, arg_1), arg_1, any(vec2<bool>(false, false)))), !select(true, true, arg_0) & (~15677u <= ~arg_2.x), false));
    return 1i;
}

fn func_1(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: bool) -> vec4<i32> {
    var var_0 = arg_0;
    var var_1 = 1i;
    let var_2 = abs(1u >> (_wgslsmith_div_u32(reverseBits(arg_1.x), 1u) % 32u)) <= arg_1.x;
    var var_3 = ~var_0.a.d.wx;
    let var_4 = _wgslsmith_f_op_vec2_f32(-arg_0.a.c.zz);
    return abs(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, 0i, 35837i, u_input.c) << (~vec4<u32>(0u, var_3.x, 31049u, arg_0.a.d.x) % vec4<u32>(32u)), vec4<i32>(~u_input.a.x, func_2(true, false, vec2<u32>(u_input.b, 4294967295u)), ~u_input.c, 2147483647i), ~max(vec4<i32>(0i, 1i, u_input.a.x, u_input.c), vec4<i32>(u_input.a.x, -8551i, u_input.a.x, -37816i)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = any(vec3<bool>(all(select(!vec4<bool>(arg_0.a, false, false, true), vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), !arg_0.a)), arg_0.a, any(!(!vec3<bool>(true, false, arg_0.a)))));
    let var_1 = func_1(Struct_4(arg_0.b, ~(~vec2<u32>(61289u, u_input.b) << (~vec2<u32>(1u, u_input.b) % vec2<u32>(32u)))), arg_0.b.d.yxx, arg_0.a).x;
    let var_2 = !any(vec4<bool>(false, !arg_0.a, false, arg_0.a)) && any(select(vec3<bool>(arg_0.a, -8157i >= arg_1.x, arg_0.a), select(select(vec3<bool>(true, true, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, false), vec3<bool>(arg_0.a, true, arg_0.a)), !vec3<bool>(arg_0.a, true, true), !vec3<bool>(arg_0.a, arg_0.a, arg_0.a)), false));
    let var_3 = !select(vec2<bool>(all(select(vec3<bool>(false, false, var_2), vec3<bool>(arg_0.a, true, arg_0.a), vec3<bool>(arg_0.a, true, false))), !(!arg_0.a)), vec2<bool>(true, all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(var_2, var_2)))), true);
    let var_4 = select(select(vec4<bool>(!var_2, u_input.a.x <= (u_input.a.x << (1u % 32u)), !select(true, var_2, false), false | !var_2), !select(vec4<bool>(false, false, false, arg_0.a), select(vec4<bool>(var_3.x, true, var_3.x, var_3.x), vec4<bool>(var_2, var_2, var_3.x, var_2), vec4<bool>(var_2, true, false, var_2)), !vec4<bool>(var_2, false, var_2, true)), vec4<bool>(true, true, var_3.x, select(arg_0.a, var_2, true))), vec4<bool>(!all(select(vec4<bool>(arg_0.a, false, false, false), vec4<bool>(var_2, true, false, arg_0.a), vec4<bool>(var_3.x, var_2, true, arg_0.a))), any(select(select(vec3<bool>(false, true, false), vec3<bool>(var_2, false, true), false), !vec3<bool>(true, var_2, false), arg_0.b.d.x < u_input.b)), arg_2.x >= 281f, !(select(var_3.x, arg_0.a, true) | true)), all(select(select(select(var_3, var_3, var_3.x), vec2<bool>(false, arg_0.a), var_3), var_3, select(var_3.x && arg_0.a, arg_0.b.b < u_input.b, all(vec2<bool>(true, var_2))))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1118f, arg_0.b.c.x), arg_0.b.c.yx)), vec2<f32>(-495f, _wgslsmith_f_op_f32(f32(-1f) * -356f))))), 64426u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_0.b.c, _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b.c.x, -1030f, 493f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, arg_2.x, arg_2.x))), !arg_0.a))), arg_0.b.d ^ arg_0.b.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~(firstLeadingBit(u_input.b) & _wgslsmith_add_u32(_wgslsmith_sub_u32(0u, u_input.b), 47396u)), ~_wgslsmith_sub_u32(~_wgslsmith_add_u32(u_input.b, u_input.b), u_input.b), 11677u);
    let var_1 = Struct_2(any(vec3<bool>(!any(vec3<bool>(false, false, false)), !all(vec4<bool>(false, true, false, true)), true)), func_4(Struct_2(false, Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1785f, 743f))), 1u, _wgslsmith_f_op_vec3_f32(vec3<f32>(-309f, 237f, 101f) - vec3<f32>(725f, 350f, -905f)), min(vec4<u32>(24454u, var_0.x, 1u, 4294967295u), vec4<u32>(58388u, 4294967295u, 17963u, u_input.b)))), ~firstLeadingBit(func_1(Struct_4(Struct_1(vec2<f32>(-1267f, -1809f), var_0.x, vec3<f32>(1057f, -1122f, -834f), vec4<u32>(1u, u_input.b, 4294967295u, u_input.b)), var_0.zx), vec3<u32>(5950u, 4294967295u, var_0.x), true)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 414f, -198f, 267f) * vec4<f32>(-763f, -326f, 392f, 610f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-477f, 1237f, -1330f, 502f))), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false))))));
    let var_2 = var_1;
    var_0 = ~var_2.b.d.wyx;
    var_0 = vec3<u32>(var_2.b.b, 4294967295u, u_input.b << ((countOneBits(4294967295u) | u_input.b) % 32u));
    var_0 = countOneBits(max(vec3<u32>(u_input.b, 54555u, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_0.x, var_0.x, var_1.b.b), var_2.b.d), 59302u)), ~var_1.b.d.yyz));
    var_0 = max(vec3<u32>(26055u, countOneBits(1u), func_4(Struct_2(false, var_2.b), select(-vec4<i32>(u_input.c, u_input.c, -28658i, -16268i), vec4<i32>(-1i, u_input.c, 0i, u_input.a.x), all(vec2<bool>(var_1.a, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1368f, 672f, var_2.b.c.x, var_2.b.a.x))) * vec4<f32>(var_2.b.a.x, var_1.b.c.x, var_2.b.c.x, -162f))).d.x), vec3<u32>(~reverseBits(var_2.b.d.x), (var_1.b.d.x ^ var_0.x) | 54503u, _wgslsmith_clamp_u32(var_1.b.b, _wgslsmith_dot_vec3_u32(~var_1.b.d.yxy, vec3<u32>(var_0.x, var_1.b.d.x, 55380u)), ~firstTrailingBit(var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.yz, ~var_2.b.d);
}

