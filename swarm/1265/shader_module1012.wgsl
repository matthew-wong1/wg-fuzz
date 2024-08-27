struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: vec4<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(716f, 156f))), vec2<f32>(517f, -1341f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1196f, -330f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(777f, 330f)))))), _wgslsmith_dot_vec4_u32((vec4<u32>(u_input.d.x, 14996u, u_input.a.x, u_input.a.x) >> (vec4<u32>(u_input.d.x, u_input.d.x, 1u, 0u) % vec4<u32>(32u))) | select(u_input.d, u_input.d, vec4<bool>(false, false, false, true)), min(vec4<u32>(u_input.a.x, u_input.d.x, u_input.d.x, 1887u), _wgslsmith_add_vec4_u32(u_input.d, u_input.d))) & 1u);
    let var_1 = select(vec2<bool>(!((2147483647i ^ u_input.b) > 1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + _wgslsmith_f_op_f32(f32(-1f) * -915f)) < -740f), select(vec2<bool>(true, true), !vec2<bool>(true, all(vec4<bool>(true, false, true, true))), false), false);
    var var_2 = all(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, var_1.x), select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, false, false), vec3<bool>(true, true, var_1.x)))));
    var_2 = var_1.x;
    var var_3 = reverseBits(_wgslsmith_dot_vec4_u32(firstLeadingBit(u_input.d), vec4<u32>(1u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.a.x, var_0.b), var_0.b, var_0.b), min(10788u, max(var_0.b, var_0.b)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, var_0.b, u_input.d.x), u_input.a))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * -888f);
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_3(vec2<bool>(!all(!vec4<bool>(arg_0.x, false, arg_0.x, false)), !arg_0.x), _wgslsmith_f_op_f32(func_3()), ~(~23452i));
    var_0 = Struct_3(var_0.a, _wgslsmith_f_op_f32(-var_0.b), var_0.c);
    var_0 = Struct_3(vec2<bool>(all(!select(arg_0.yx, var_0.a, var_0.a.x)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_0.b))))))), _wgslsmith_mult_i32(2147483647i, _wgslsmith_clamp_i32(firstLeadingBit(~var_0.c), u_input.c.x, ~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -25077i), vec2<i32>(1i, u_input.c.x)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(331f, -812f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1401f, var_0.b)))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(183f, var_0.b) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.b, var_0.b), vec2<f32>(var_0.b, -1240f))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1002f, var_0.b)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, var_0.b) - vec2<f32>(var_0.b, var_0.b))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_0.b))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1195f, var_0.b), vec2<f32>(var_0.b, var_0.b), select(vec2<bool>(var_0.a.x, arg_0.x), var_0.a, var_0.a))))), any(arg_0)));
    var_0 = Struct_3(arg_0.xy, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * -1235f)), var_0.b), 14960i);
    return Struct_1(select(!select(!vec2<bool>(true, var_0.a.x), vec2<bool>(var_0.a.x, var_0.a.x), var_0.c > u_input.b), vec2<bool>(!var_0.a.x, any(select(vec3<bool>(false, true, var_0.a.x), arg_0, arg_0.x))), vec2<bool>(true, arg_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(1000f + -157f), var_0.b))));
}

fn func_1(arg_0: vec3<i32>) -> Struct_3 {
    let var_0 = func_2(vec3<bool>(select(~0u <= _wgslsmith_clamp_u32(4294967295u, 1u, 4294967295u), all(vec3<bool>(true, true, false)), false || select(true, true, true)), true, _wgslsmith_dot_vec2_i32(arg_0.zx, u_input.c.zx) >= -u_input.b));
    let var_1 = u_input.d.xw;
    var var_2 = ~arg_0.x;
    let var_3 = select(select(select(select(vec3<bool>(false, false, var_0.a.x), !vec3<bool>(true, var_0.a.x, var_0.a.x), vec3<bool>(var_0.a.x, false, var_0.a.x)), vec3<bool>(true, arg_0.x <= 2147483647i, select(var_0.a.x, var_0.a.x, var_0.a.x)), any(vec2<bool>(false, false))), !(!select(vec3<bool>(var_0.a.x, false, true), vec3<bool>(var_0.a.x, true, true), vec3<bool>(var_0.a.x, true, var_0.a.x))), !(!var_0.a.x & any(var_0.a))), select(vec3<bool>(all(!vec4<bool>(true, var_0.a.x, true, var_0.a.x)), var_0.a.x, true), !vec3<bool>(any(vec4<bool>(var_0.a.x, false, var_0.a.x, true)), true, var_0.a.x | var_0.a.x), !select(!vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<bool>(false, false, true), any(vec3<bool>(true, true, true)))), vec3<bool>(false, all(vec4<bool>(var_0.a.x, var_0.b.x > var_0.b.x, true, 10719u < var_1.x)), !(max(var_1.x, 0u) >= ~1u)));
    let var_4 = Struct_1(vec2<bool>(any(var_3), !var_3.x | false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b)))));
    return Struct_3(var_3.yz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-433f - _wgslsmith_f_op_f32(-var_0.b.x)) + var_4.b.x) - var_4.b.x), min(-60248i, max(firstLeadingBit(u_input.b), ~u_input.c.x)));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: Struct_3) -> i32 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1814f, _wgslsmith_f_op_f32(arg_2.b * arg_2.b))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(897f + 391f)))), 500f));
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1119f, var_0.x)), _wgslsmith_div_vec2_f32(vec2<f32>(-1125f, arg_2.b), vec2<f32>(arg_2.b, arg_2.b)), arg_1.x && false)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1298f)))))));
    let var_2 = Struct_1(vec2<bool>(!(!arg_2.a.x) | false, any(vec3<bool>(true, false, !arg_2.a.x))), func_2(vec3<bool>(arg_2.a.x, true, !(false & arg_2.a.x))).b);
    var var_3 = 4294967295u;
    let var_4 = ~_wgslsmith_dot_vec3_i32(select(~u_input.c.zzz, u_input.c.yww, select(vec3<bool>(var_2.a.x, arg_2.a.x, true), arg_1, arg_1.x)) | u_input.c.xwz, vec3<i32>(arg_2.c, countOneBits(min(arg_2.c, arg_2.c)), arg_2.c));
    return -5547i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(u_input.c, abs(u_input.c)), vec4<i32>(func_4(_wgslsmith_add_vec4_u32(vec4<u32>(32949u, u_input.d.x, u_input.a.x, 62292u), vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.d.x)), vec3<bool>(true, true, true), func_1(-u_input.c.xyx)), countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -7623i, 14681i, -1i), firstTrailingBit(vec4<i32>(12631i, -29223i, -66749i, u_input.b)))), -(~_wgslsmith_div_i32(-2147483647i, u_input.c.x)), ~45232i));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(var_0.zww).b));
    let var_2 = ~firstLeadingBit(u_input.a.zx);
    var_1 = -1475f;
    var_1 = -1021f;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_vec2_i32(u_input.c.wx, -vec2<i32>(var_0.x, 2147483647i)), u_input.d, reverseBits(~select(min(vec2<i32>(var_0.x, var_0.x), vec2<i32>(-1i, var_0.x)), ~u_input.c.wx, true)), u_input.c.xzw);
}

