struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_2, arg_2: f32) -> f32 {
    var var_0 = !(!vec3<bool>(!arg_0.c.c.a, true, select(arg_0.c.a.x > -389f, all(vec3<bool>(true, arg_0.c.c.a, false)), true)));
    var_0 = !select(select(!vec3<bool>(var_0.x, arg_1.c.a, true), vec3<bool>(arg_0.c.c.a, !arg_1.c.a, arg_0.c.c.a || true), -u_input.c > u_input.c), vec3<bool>(true, arg_1.c.a, arg_1.c.a), !(_wgslsmith_f_op_f32(max(-877f, -1226f)) != arg_2));
    var var_1 = Struct_3(!(!(!select(vec3<bool>(false, var_0.x, arg_1.c.a), vec3<bool>(true, arg_0.c.c.a, false), true))), arg_0.c.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_1.c.b.x, arg_1.a.x, arg_1.c.b.x) - vec4<f32>(306f, arg_0.a, -542f, -1007f))), vec4<f32>(arg_2, _wgslsmith_f_op_f32(-1324f + 2729f), arg_1.a.x, 369f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2, arg_0.c.c.b.x, arg_0.a, arg_2)))))));
    var var_2 = arg_2;
    var_1 = Struct_3(select(var_1.a, var_1.a, vec3<bool>(u_input.c > firstLeadingBit(u_input.c), all(select(var_0.xz, vec2<bool>(true, true), vec2<bool>(arg_1.c.a, arg_1.c.a))), var_1.b.a)), var_1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(var_1.c, var_1.c)))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(var_1.c, vec4<f32>(arg_0.c.c.b.x, 886f, 722f, -1080f))))))));
    return arg_0.c.c.b.x;
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> Struct_2 {
    var var_0 = min(u_input.a, ~(-2147483647i));
    var var_1 = vec3<u32>(1u, firstTrailingBit(_wgslsmith_mult_u32(select(arg_1.b.c.x, u_input.d, arg_1.a.x), u_input.e.x) >> (4294967295u % 32u)), arg_1.b.c.x);
    var_0 = u_input.a;
    let var_2 = firstTrailingBit(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_1.x), vec2<u32>(var_1.x, var_1.x)), select(u_input.d, 77415u, select(false, arg_1.b.a, false)), arg_1.b.c.x)) | _wgslsmith_div_u32(u_input.d, arg_1.b.c.x);
    let var_3 = Struct_2(vec2<f32>(-610f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(236f, _wgslsmith_f_op_f32(ceil(arg_1.c.x))))), u_input.e.xx, arg_1.b);
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(max(arg_0, 630f))))), 942f), min(vec2<u32>(var_3.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, u_input.b.x, var_1.x, var_3.b.x), vec4<u32>(111875u, u_input.d, var_2, 32932u)) & (4294967295u & var_1.x)), u_input.e.xz), var_3.c);
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_2) -> Struct_3 {
    var var_0 = Struct_3(select(!vec3<bool>(arg_2.c.a, true, any(vec4<bool>(arg_2.c.a, true, arg_3.c.a, true))), !select(!vec3<bool>(true, true, arg_3.c.a), !vec3<bool>(true, true, arg_2.c.a), !vec3<bool>(false, arg_2.c.a, arg_3.c.a)), true), func_3(1804f, Struct_3(vec3<bool>(u_input.a < u_input.a, true, !arg_2.c.a), Struct_1(true, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1891f, arg_2.a.x, arg_2.c.b.x), vec3<f32>(256f, -347f, 1533f))), vec2<u32>(u_input.d, 33780u)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c.b.x, arg_3.c.b.x, arg_3.a.x, arg_2.c.b.x)))))).c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(878f, arg_3.c.b.x, 1091f, 626f), vec4<f32>(arg_2.a.x, arg_2.c.b.x, arg_2.a.x, -236f), arg_2.c.a))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-642f, -836f, arg_2.a.x, arg_2.a.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.c.b.x, arg_2.c.b.x, arg_3.a.x, arg_3.c.b.x) * vec4<f32>(458f, 237f, arg_3.c.b.x, arg_3.c.b.x))))));
    var_0 = Struct_3(!var_0.a, Struct_1(!(_wgslsmith_f_op_f32(-arg_3.c.b.x) != _wgslsmith_div_f32(-1000f, arg_3.c.b.x)), arg_3.c.b, _wgslsmith_mult_vec2_u32(u_input.b.yx ^ max(u_input.e.xy, arg_0), func_3(_wgslsmith_f_op_f32(abs(arg_2.c.b.x)), Struct_3(var_0.a, Struct_1(false, vec3<f32>(-204f, var_0.c.x, var_0.c.x), vec2<u32>(u_input.d, 18502u)), var_0.c)).c.c)), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(Struct_4(-571f, vec3<u32>(24693u, var_0.b.c.x, 30584u), Struct_2(vec2<f32>(var_0.c.x, 2888f), vec2<u32>(8977u, 0u), var_0.b)), func_3(103f, Struct_3(vec3<bool>(false, false, arg_3.c.a), var_0.b, var_0.c)), _wgslsmith_f_op_f32(arg_3.c.b.x * var_0.c.x))), _wgslsmith_f_op_f32(-var_0.b.b.x))), 342f, 625f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(Struct_4(arg_2.a.x, vec3<u32>(u_input.b.x, 791u, 34764u), Struct_2(var_0.b.b.yy, u_input.b.xy, Struct_1(true, vec3<f32>(arg_3.a.x, 589f, 1000f), arg_2.c.c))), arg_2, 248f)), _wgslsmith_f_op_f32(f32(-1f) * -1296f))) * arg_3.a.x)));
    var_0 = Struct_3(vec3<bool>(!arg_2.c.a, arg_2.c.a, true), var_0.b, var_0.c);
    let var_1 = vec4<i32>(u_input.c, 10380i, 1i, 2147483647i);
    var_0 = Struct_3(var_0.a, Struct_1(arg_2.c.a, vec3<f32>(396f, func_3(_wgslsmith_f_op_f32(max(var_0.b.b.x, arg_3.a.x)), Struct_3(vec3<bool>(true, arg_3.c.a, var_0.b.a), Struct_1(var_0.b.a, vec3<f32>(arg_3.a.x, arg_2.a.x, arg_3.c.b.x), u_input.e.yy), vec4<f32>(var_0.b.b.x, arg_2.a.x, var_0.b.b.x, -486f))).a.x, _wgslsmith_f_op_f32(func_2(Struct_4(var_0.c.x, u_input.b, Struct_2(vec2<f32>(-1163f, -1537f), vec2<u32>(u_input.b.x, 44804u), var_0.b)), func_3(845f, Struct_3(var_0.a, Struct_1(true, var_0.b.b, arg_2.c.c), vec4<f32>(2445f, arg_2.c.b.x, -487f, 167f))), _wgslsmith_f_op_f32(round(arg_2.a.x))))), ~_wgslsmith_add_vec2_u32(countOneBits(arg_2.c.c), max(vec2<u32>(u_input.d, 0u), arg_3.c.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.c * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.c.b.x, arg_2.a.x, arg_3.a.x, -1000f) * vec4<f32>(688f, arg_2.a.x, 963f, arg_2.a.x))) * vec4<f32>(_wgslsmith_f_op_f32(597f - 680f), 741f, _wgslsmith_f_op_f32(min(767f, -1000f)), _wgslsmith_f_op_f32(102f * arg_2.c.b.x))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-var_0.c), vec4<f32>(841f, arg_2.a.x, -370f, arg_2.a.x)))))));
    return Struct_3(var_0.a, func_3(_wgslsmith_f_op_f32(exp2(var_0.b.b.x)), Struct_3(select(select(vec3<bool>(arg_2.c.a, arg_3.c.a, true), vec3<bool>(arg_3.c.a, true, false), false), !var_0.a, true), Struct_1(!arg_3.c.a, _wgslsmith_f_op_vec3_f32(step(arg_2.c.b, var_0.b.b)), u_input.b.yx | arg_3.b), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(var_0.c, var_0.c)))))).c, var_0.c);
}

fn func_1() -> Struct_4 {
    var var_0 = func_4(_wgslsmith_div_vec2_u32(~u_input.b.xx, _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.d), vec2<u32>(1u, u_input.e.x))), firstTrailingBit(u_input.c), func_3(_wgslsmith_f_op_f32(func_2(Struct_4(_wgslsmith_f_op_f32(-170f + 1000f), ~vec3<u32>(3834u, u_input.e.x, u_input.e.x), Struct_2(vec2<f32>(-1095f, -500f), vec2<u32>(u_input.e.x, 0u), Struct_1(false, vec3<f32>(-2290f, 932f, -271f), vec2<u32>(u_input.d, u_input.b.x)))), Struct_2(vec2<f32>(-2395f, -1605f), vec2<u32>(u_input.b.x, 4294967295u), Struct_1(false, vec3<f32>(446f, -2191f, -675f), vec2<u32>(20767u, u_input.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -218f) + _wgslsmith_f_op_f32(-647f - 960f)))), Struct_3(select(vec3<bool>(true, false, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), true), Struct_1(false, vec3<f32>(1238f, 421f, 476f), u_input.e.zy), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1687f, -296f, 572f, -849f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1574f, 1291f, -522f, -1963f) + vec4<f32>(-1428f, 1557f, -760f, -1589f)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), true))))), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(204f + 252f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(430f, 149f))))), u_input.e.yz, func_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1102f)))), Struct_3(vec3<bool>(false, true, true), func_3(673f, Struct_3(vec3<bool>(false, false, true), Struct_1(false, vec3<f32>(1584f, 423f, 720f), vec2<u32>(1u, 9312u)), vec4<f32>(259f, 493f, -1154f, -241f))).c, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-904f, 1108f, 500f, -1092f), vec4<f32>(-2162f, -143f, 1025f, 356f))))).c));
    return Struct_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_0.b.b.x)))), ~_wgslsmith_add_vec3_u32(~(~vec3<u32>(var_0.b.c.x, u_input.d, var_0.b.c.x)), vec3<u32>(4294967295u, ~4294967295u, firstTrailingBit(var_0.b.c.x))), Struct_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(floor(var_0.c.x)), _wgslsmith_f_op_f32(-var_0.b.b.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c.xy) * _wgslsmith_f_op_vec2_f32(vec2<f32>(566f, var_0.c.x) - vec2<f32>(1000f, var_0.c.x))))), u_input.e.zx, Struct_1(false, func_3(_wgslsmith_f_op_f32(212f * var_0.b.b.x), Struct_3(vec3<bool>(var_0.a.x, true, true), Struct_1(false, var_0.c.xwy, u_input.b.yx), var_0.c)).c.b, (vec2<u32>(0u, u_input.b.x) | vec2<u32>(0u, u_input.d)) ^ ~vec2<u32>(6411u, 40250u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(u_input.a, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(max(-vec2<i32>(13864i, u_input.a), firstTrailingBit(vec2<i32>(-2147483647i, u_input.c))), min(vec2<i32>(u_input.c, 62585i) >> (u_input.b.zx % vec2<u32>(32u)), firstLeadingBit(vec2<i32>(0i, u_input.a)))), _wgslsmith_mult_i32(-u_input.c, -18508i) | -44914i));
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-610f, 2018f)) * _wgslsmith_f_op_f32(step(-699f, -875f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(575f + -494f))))));
    var var_2 = func_1();
    let var_3 = _wgslsmith_mult_vec2_u32(select(~vec2<u32>(u_input.d, select(1u, 1u, var_2.c.c.a)), _wgslsmith_sub_vec2_u32(func_1().c.b ^ _wgslsmith_mult_vec2_u32(vec2<u32>(1u, var_2.c.b.x), vec2<u32>(u_input.b.x, 11007u)), _wgslsmith_mult_vec2_u32(vec2<u32>(var_2.b.x, var_2.b.x), u_input.b.xy)), vec2<bool>(true, -19981i >= (var_0.x << (88048u % 32u)))), var_2.c.b);
    let var_4 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-205f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -399f) + _wgslsmith_f_op_f32(var_1.x + var_1.x))))), ~vec3<u32>(var_3.x, max(_wgslsmith_mod_u32(var_2.c.c.c.x, 0u), ~32653u), firstTrailingBit(2811u)), func_1().c);
    var_2 = Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-319f - _wgslsmith_f_op_f32(sign(-393f))))), var_2.b, var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_4.c.c.b + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1109f, 1011f, -531f) - vec3<f32>(-1196f, -1441f, -1349f)))));
}

