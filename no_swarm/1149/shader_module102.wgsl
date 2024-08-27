struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<bool>,
    c: vec3<f32>,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: u32, arg_2: vec4<bool>, arg_3: vec3<u32>) -> u32 {
    var var_0 = arg_0.c.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.e.zx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.a, 1000f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_0.c.zy)), arg_0.e.zx)))) - vec2<f32>(1134f, 424f));
    return 78530u;
}

fn func_2(arg_0: vec3<f32>) -> Struct_4 {
    var var_0 = select(!vec2<bool>(!any(vec2<bool>(true, false)), true), !select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), select(vec2<bool>(select(true, true, true), all(vec3<bool>(false, false, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true)));
    var var_1 = Struct_2(4294967295u, ~28563i, Struct_1(vec2<u32>(_wgslsmith_clamp_u32(func_3(Struct_5(Struct_4(-537f), vec3<bool>(true, true, var_0.x), vec3<f32>(-1427f, arg_0.x, arg_0.x), vec2<u32>(u_input.b.x, u_input.d), arg_0), 31022u, vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec3<u32>(u_input.d, u_input.c.x, u_input.c.x)), ~2582u, u_input.c.x), u_input.c.x)), select(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, var_0.x))), !vec2<bool>(var_0.x, true), vec2<bool>(any(select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, true), vec2<bool>(false, true))), ~u_input.a.x < ~22546u)), vec2<i32>(~_wgslsmith_add_i32(0i, ~13783i), -2147483647i));
    let var_2 = select(countOneBits(_wgslsmith_div_vec2_u32(reverseBits(u_input.b), firstLeadingBit(var_1.c.a))) & vec2<u32>(0u, func_3(Struct_5(Struct_4(arg_0.x), vec3<bool>(var_1.d.x, true, var_0.x), arg_0, vec2<u32>(4294967295u, 4294967295u), vec3<f32>(680f, -2241f, 639f)), ~1u, vec4<bool>(true, var_0.x, false, var_0.x), ~vec3<u32>(0u, u_input.b.x, 4294967295u))), var_1.c.a, false);
    var var_3 = ~(-(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, var_1.b, var_1.e.x), vec3<i32>(-2147483647i, var_1.e.x, var_1.b)) | -vec3<i32>(var_1.b, var_1.b, var_1.b))) ^ min(~vec3<i32>(~var_1.e.x, max(1i, var_1.e.x), var_1.b & var_1.e.x), ~(-vec3<i32>(var_1.b, var_1.b, -16333i)));
    var var_4 = Struct_2(0u, var_1.e.x, var_1.c, var_1.d, max(_wgslsmith_sub_vec2_i32(vec2<i32>(i32(-1i) * -2147483647i, abs(var_3.x)), vec2<i32>(min(var_1.e.x, var_3.x), ~var_3.x)), vec2<i32>(1i, min(-var_3.x, var_3.x))));
    return Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -443f)), _wgslsmith_f_op_f32(trunc(778f))));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = func_2(vec3<f32>(-747f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-785f, 946f)) * _wgslsmith_f_op_f32(max(-963f, -284f))))));
    var var_1 = -1697f;
    var var_2 = Struct_3(871f, true);
    let var_3 = firstLeadingBit(u_input.a.zyw);
    let var_4 = _wgslsmith_div_i32(-(~_wgslsmith_add_i32(_wgslsmith_div_i32(47574i, 10126i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -1i, -1i), vec3<i32>(0i, -1i, 1i)))), _wgslsmith_dot_vec4_i32(-(~vec4<i32>(0i, -9038i, 24247i, 0i)), select(abs(firstLeadingBit(vec4<i32>(-18197i, 2263i, 39145i, 2147483647i))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(60687i, 16100i, -2147483647i, 13847i), vec4<i32>(-10132i, 1i, -1i, 1i)), false)));
    return Struct_1(~u_input.a.zy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_mult_vec3_u32(u_input.a.xwx, abs(_wgslsmith_div_vec3_u32(u_input.a.wxw, vec3<u32>(u_input.a.x, u_input.a.x, 66259u)))));
    var var_1 = func_1(vec2<bool>(all(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), true)), true));
    let var_2 = _wgslsmith_f_op_f32(step(-595f, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, 291f, -187f)))).a * 1000f)));
    let var_3 = -249f;
    var var_4 = Struct_1(_wgslsmith_div_vec2_u32(abs(var_1.a), ~max(u_input.b, reverseBits(var_0.xx))));
    var var_5 = vec2<i32>(-1i, 0i);
    var var_6 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2, var_2, var_3, 825f), vec4<f32>(1671f, 302f, 885f, var_3), vec4<bool>(true, false, false, false))))))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-326f, _wgslsmith_f_op_f32(var_2 - -1073f), 658f, _wgslsmith_f_op_f32(-1339f * -1066f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, 1f, var_2, -1065f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-417f, var_2, var_2, var_3) - vec4<f32>(var_3, -1000f, var_3, 1000f)) - vec4<f32>(var_3, var_2, 1107f, 2544f))))));
    var var_7 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(var_3, _wgslsmith_f_op_f32(max(-204f, -644f)), _wgslsmith_f_op_f32(-111f + var_2), var_6.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-527f, var_3, -802f, var_3)) * vec4<f32>(var_3, -173f, var_3, var_2))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_6.x, 792f, var_3, 233f), vec4<f32>(var_2, var_2, var_6.x, var_2)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-212f, 2007f, 1035f, var_6.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, 698f, var_2, 516f)))))));
    var var_8 = u_input.a.wyy;
    let x = u_input.a;
    s_output = StorageBuffer(var_6.x);
}

