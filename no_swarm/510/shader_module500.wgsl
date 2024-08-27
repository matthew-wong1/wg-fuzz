struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: i32,
    d: vec2<i32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_2) -> bool {
    var var_0 = Struct_2(1056u, _wgslsmith_f_op_f32(round(503f)), 1i, _wgslsmith_sub_vec2_i32(-vec2<i32>(~5581i, _wgslsmith_dot_vec3_i32(vec3<i32>(46319i, arg_0.c, arg_0.d.x), vec3<i32>(arg_0.d.x, u_input.a, u_input.a))), ~(vec2<i32>(-2147483647i, arg_0.d.x) | arg_0.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(arg_0.b))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1199f), -493f)) - arg_0.e) <= _wgslsmith_f_op_f32(-997f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.b + -664f), _wgslsmith_f_op_f32(trunc(-1000f)))));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_2) -> f32 {
    let var_0 = ~u_input.a;
    var var_1 = false;
    var_1 = true || all(vec3<bool>(false, func_3(Struct_2(arg_0.a, arg_0.e, 4253i, arg_2.d, arg_1.x)), arg_2.a != ~arg_0.a));
    var_1 = !any(vec4<bool>(false, !all(vec2<bool>(true, false)), true, select(any(vec3<bool>(true, false, false)), true, true)));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1881f)));
    return _wgslsmith_f_op_f32(f32(-1f) * -729f);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_1(min(_wgslsmith_add_vec3_i32(vec3<i32>(max(u_input.b, -40694i), u_input.a, -u_input.a), vec3<i32>(_wgslsmith_sub_i32(25719i, 51697i), i32(-1i) * -3670i, u_input.a)), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(4312i, u_input.b), ~u_input.a), max(~u_input.a, -u_input.b), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(2147483647i, 17506i), countOneBits(-1i), _wgslsmith_sub_i32(18269i, u_input.a)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_0.x - 302f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(708f, 1000f), _wgslsmith_f_op_f32(max(-589f, arg_0.x)), u_input.a < u_input.a))), vec3<f32>(_wgslsmith_f_op_f32(select(787f, 1000f, !arg_1.x)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_0.x, 3068f), _wgslsmith_f_op_f32(-494f - 1035f))), -1159f))));
    let var_1 = Struct_2(_wgslsmith_add_u32(_wgslsmith_mult_u32(abs(abs(arg_2)), 13965u), 19542u), var_0.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-12956i, -1i), ~_wgslsmith_div_vec2_i32(var_0.a.yy >> (vec2<u32>(arg_2, arg_2) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(var_0.a.yx, vec2<i32>(26242i, -38760i), vec2<i32>(u_input.b, -29311i)))), firstLeadingBit(~(-_wgslsmith_clamp_vec2_i32(var_0.a.xx, var_0.a.xx, var_0.a.xx))), -943f);
    var var_2 = select(firstLeadingBit(var_0.a.yx), vec2<i32>(countOneBits(-select(38589i, -73255i, arg_1.x)), var_0.a.x), !arg_1.xy);
    var_2 = select(firstLeadingBit(select(~var_0.a.yz, min(countOneBits(vec2<i32>(var_0.a.x, 2147483647i)), vec2<i32>(-27751i, var_1.c)), select(!arg_1.zz, arg_1.yy, select(true, false, true)))), var_1.d, arg_1.zx);
    var_0 = Struct_1(abs(vec3<i32>(-(~var_0.a.x), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 7902i), vec2<i32>(-62228i, -71548i)), countOneBits(-1i)), 64918i)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2080f, var_0.b.x, 269f) * var_0.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1594f, -109f, var_1.b) - vec3<f32>(-1000f, arg_0.x, -467f)), !(var_1.d.x > var_1.c))))));
    return Struct_1(max(vec3<i32>(reverseBits(-3634i), select(-2147483647i, -59100i, arg_1.x) | abs(2147483647i), _wgslsmith_sub_i32(u_input.b ^ -25006i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_0.a.x, var_1.d.x), var_0.a))), -vec3<i32>(-var_0.a.x, 0i ^ u_input.a, 2147483647i)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.b, vec3<f32>(var_1.b, var_0.b.x, -298f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(var_0.b + vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x)))), _wgslsmith_f_op_vec3_f32(-var_0.b), !vec3<bool>(arg_1.x, false, arg_1.x))), select(!select(vec3<bool>(arg_1.x, false, true), arg_1, true), !select(arg_1, vec3<bool>(false, true, true), true), vec3<bool>(var_0.b.x != -1989f, !arg_1.x, true)))));
}

fn func_1() -> i32 {
    var var_0 = func_4(vec2<f32>(_wgslsmith_f_op_f32(step(-824f, _wgslsmith_f_op_f32(-1241f * _wgslsmith_f_op_f32(func_2(Struct_2(0u, -1575f, -9879i, vec2<i32>(u_input.b, -2147483647i), 759f), vec4<f32>(1177f, -567f, -1356f, 1269f), Struct_2(1u, -968f, u_input.a, vec2<i32>(-47503i, 1i), 315f)))))), _wgslsmith_f_op_f32(trunc(749f))), !vec3<bool>(true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false))), true), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 28650u, 4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(26486u, 4294967295u, 24210u), vec3<u32>(4294967295u, 332u, 29610u), vec3<u32>(0u, 28473u, 11836u)))));
    var var_1 = true;
    var var_2 = Struct_2(0u, _wgslsmith_f_op_f32(min(578f, -230f)), reverseBits(~(reverseBits(-9320i) ^ _wgslsmith_dot_vec2_i32(var_0.a.zz, var_0.a.xz))), select(vec2<i32>(_wgslsmith_div_i32(1i, 11974i), firstTrailingBit(var_0.a.x)), var_0.a.xz, false) & var_0.a.zx, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.x - -634f), var_0.b.x)));
    var var_3 = func_4(var_0.b.zy, vec3<bool>(true, true, true), 4294967295u);
    var_0 = Struct_1(vec3<i32>(-func_4(var_0.b.yx, vec3<bool>(true, false, false), 0u).a.x & max(_wgslsmith_clamp_i32(u_input.a, u_input.b, var_0.a.x), u_input.a), _wgslsmith_add_i32(31909i >> (var_2.a % 32u), select(_wgslsmith_clamp_i32(u_input.b, -1i, -58187i), -1i << (0u % 32u), any(vec3<bool>(true, false, false)))), ~(-var_3.a.x)), vec3<f32>(var_3.b.x, _wgslsmith_div_f32(868f, 1437f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(660f, var_0.b.x), var_0.b.x), var_2.e))));
    return var_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(u_input.a, -countOneBits(u_input.a), u_input.a, _wgslsmith_mult_i32(u_input.b, u_input.b));
    let var_1 = vec2<u32>(_wgslsmith_sub_u32(~1u, ~1u), 1u);
    var var_2 = select(~min(u_input.b, -4143i << (var_1.x % 32u)), -_wgslsmith_div_i32(firstLeadingBit(var_0.x), func_1()), select(false, all(vec3<bool>(any(vec3<bool>(true, false, false)), var_1.x >= var_1.x, all(vec2<bool>(true, true)))), !any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false)))));
    let var_3 = vec3<u32>(var_1.x, 1u, ~(~36729u) & abs(_wgslsmith_clamp_u32(var_1.x, ~var_1.x, var_1.x)));
    var_2 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~6454i), vec4<i32>(firstLeadingBit(countOneBits(_wgslsmith_mult_i32(-13618i, -9585i))), 38544i >> (~(~var_1.x) % 32u), 2147483647i, -1i));
}

