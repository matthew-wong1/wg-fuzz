struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_3,
    d: f32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec2<f32> {
    var var_0 = _wgslsmith_add_vec4_u32(~firstTrailingBit(~(~vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b))), vec4<u32>(~u_input.b, max(u_input.b, u_input.b), u_input.b, 49063u));
    var_0 = vec4<u32>(abs(~var_0.x), 1u, ~(~reverseBits(var_0.x)), _wgslsmith_div_u32(var_0.x, firstLeadingBit(u_input.b)));
    var_0 = abs(~(~vec4<u32>(_wgslsmith_mult_u32(u_input.b, 11789u), 4294967295u, var_0.x << (u_input.b % 32u), firstLeadingBit(var_0.x))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1359f, 247f, 1108f) - vec4<f32>(-974f, 1309f, -106f, 908f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1004f, 744f, -358f, 937f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(471f, -273f, 528f, 1265f), _wgslsmith_f_op_vec4_f32(vec4<f32>(2716f, 980f, -296f, -1001f) * vec4<f32>(870f, 868f, 1807f, -1616f)), vec4<bool>(true, true, true, true))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1090f, 188f, 556f, -310f) + vec4<f32>(-1742f, 248f, 1000f, -244f)))))), Struct_1(35553u), Struct_1(var_0.x));
    let var_2 = var_1;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a.ww + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2484f, var_2.a.x))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1234f, var_2.a.x), vec2<f32>(var_2.a.x, var_2.a.x), vec2<bool>(false, false))))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: u32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -900f), _wgslsmith_div_f32(-211f, 1394f)))));
    var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -876f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + var_0.x) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -783f), _wgslsmith_f_op_f32(-var_0.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1047f + var_0.x)) - _wgslsmith_f_op_f32(var_0.x * -1367f))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()), vec2<f32>(833f, var_0.x))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1000f)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + vec2<f32>(205f, var_0.x)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, 1134f), vec2<f32>(-1066f, var_0.x))), !arg_1.yw)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1159f))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(ceil(-123f)), _wgslsmith_f_op_f32(-1317f + -1345f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 1329f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_3())))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-279f, var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -583f, var_0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1896f, var_0.x, var_0.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 1260f))))) * vec3<f32>(-323f, 1f, -132f)));
    return Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -165f), Struct_1(1u), Struct_3(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(40085u, arg_2, 1u), vec3<u32>(0u, arg_2, u_input.b)), _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(arg_2, u_input.b, arg_2)), vec3<u32>(u_input.b, u_input.b, 51213u))), ~vec4<u32>(arg_2, u_input.b & arg_2, 1u, ~1u), arg_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-260f, 974f, var_0.x))), Struct_1(~4294967295u)), _wgslsmith_f_op_f32(round(1673f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_1.x, var_1.x), vec4<f32>(1000f, var_1.x, var_1.x, var_1.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(452f, 172f, -325f, 971f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 159f, -769f) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(849f, 1192f, 1794f, var_0.x))))), arg_1)));
}

fn func_4(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_4) -> vec3<u32> {
    let var_0 = ~countOneBits(~min(4294967295u, 1u));
    let var_1 = vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -23997i, -1i) | firstTrailingBit(vec3<i32>(-28223i, 13875i, 0i)), select(vec3<i32>(arg_2.c.c, u_input.a.x, arg_2.c.c), vec3<i32>(48712i, arg_2.c.c, -56944i), vec3<bool>(true, arg_1, false)) ^ (vec3<i32>(u_input.a.x, arg_2.c.c, -1i) | vec3<i32>(u_input.a.x, 1i, u_input.a.x))), firstTrailingBit(_wgslsmith_add_i32(~arg_2.c.c, u_input.a.x)) << (_wgslsmith_mult_u32(2239u, 1u) % 32u));
    var var_2 = !select(select(!vec3<bool>(arg_1, arg_1, false), select(vec3<bool>(false, arg_1, false), !vec3<bool>(arg_1, false, true), true), vec3<bool>(true, true & arg_1, arg_1)), vec3<bool>(!(!arg_1), arg_1, true), all(vec2<bool>(any(vec4<bool>(false, arg_1, false, false)), any(vec4<bool>(false, arg_1, false, arg_1)))));
    var_2 = !select(!select(select(vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(false, true, arg_1), vec3<bool>(false, arg_1, true)), select(vec3<bool>(var_2.x, arg_1, true), vec3<bool>(arg_1, true, arg_1), true), !vec3<bool>(true, var_2.x, arg_1)), select(vec3<bool>(11790i <= arg_2.c.c, true, arg_1), vec3<bool>(arg_1, !var_2.x, true), any(vec2<bool>(false, false))), !vec3<bool>(true, true, all(var_2.yy)));
    let var_3 = firstTrailingBit(_wgslsmith_sub_u32(arg_2.b.a, 4053u));
    return vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(arg_2.b.a, 0u), u_input.b), var_3, max(~1u, ~u_input.b) & 1u);
}

fn func_1(arg_0: vec3<bool>) -> Struct_3 {
    let var_0 = Struct_3(~_wgslsmith_sub_vec3_u32(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1313f, -330f, -843f)), select(false, false, false), func_2(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(true, arg_0.x, true, true), u_input.b)), ~(~vec3<u32>(u_input.b, u_input.b, 0u))), min(~select(abs(vec4<u32>(u_input.b, u_input.b, 15255u, 1u)), vec4<u32>(4294967295u, u_input.b, 15372u, 4294967295u), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)), firstLeadingBit(vec4<u32>(24498u, ~4294967295u, 4294967295u, 53631u & u_input.b))), 0i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1157f, -817f, 1203f)))))), func_2(max(vec4<i32>(func_2(vec4<i32>(28913i, -2147483647i, u_input.a.x, 2147483647i), vec4<bool>(false, arg_0.x, false, true), 4294967295u).c.c, _wgslsmith_clamp_i32(12411i, -1i, -6378i), 1i, 2147483647i), max(~vec4<i32>(-22335i, 13342i, 4696i, 2147483647i), -vec4<i32>(u_input.a.x, 23i, u_input.a.x, -9032i))), !(!vec4<bool>(true, true, false, arg_0.x)), 4294967295u & (firstTrailingBit(33304u) & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 3157u, 142837u), vec4<u32>(u_input.b, 0u, u_input.b, 4294967295u)))).c.e);
    var var_1 = min(abs(_wgslsmith_add_vec2_i32(max(_wgslsmith_mult_vec2_i32(u_input.a, u_input.a), u_input.a), ~(-vec2<i32>(1i, var_0.c)))), vec2<i32>(_wgslsmith_sub_i32(-39662i, var_0.c), 2147483647i));
    var var_2 = vec2<bool>(true, !arg_0.x);
    let var_3 = abs(select(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, var_0.b.x), var_0.b.zz)), var_0.b.yx, true));
    let var_4 = !var_2.x | all(vec2<bool>(true || var_2.x, true));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(select(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), vec3<bool>(any(vec3<bool>(true, true, true)) && true, true, firstLeadingBit(u_input.a.x) <= (u_input.a.x ^ u_input.a.x)), vec3<bool>(true, true, true)));
    let var_1 = ~vec3<u32>(~_wgslsmith_div_u32(var_0.a.x, ~u_input.b), 60984u, ~1u);
    let var_2 = func_2(_wgslsmith_add_vec4_i32(-(vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, -1733i, u_input.a.x, u_input.a.x)), vec4<i32>(-countOneBits(1i), firstTrailingBit(~(-2036i)), select(-u_input.a.x, 1i, all(vec2<bool>(true, false))), ~u_input.a.x >> (1u % 32u))), select(vec4<bool>(true, true, true, true), vec4<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true)), true, !(u_input.b == 87238u), _wgslsmith_f_op_f32(-var_0.d.x) != -482f), false), 4294967295u).c.e;
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, var_0.d.x, -178f, var_0.d.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, var_0.d.x, var_0.d.x, 1163f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(509f, var_0.d.x, var_0.d.x, var_0.d.x))))), var_2, func_1(vec3<bool>(true, true, true)).e);
    var_3 = Struct_2(var_3.a, var_3.b, func_1(vec3<bool>(all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true))), true, any(vec4<bool>(false, true, true, false)) & true)).e);
    let var_4 = var_3.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.x);
}

