struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: Struct_2,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1038f, 2759f)), _wgslsmith_f_op_f32(min(-1971f, 1411f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(809f, -416f)))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1628f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)))));
    var var_1 = var_0;
    let var_2 = true;
    var_1 = var_0;
    var var_3 = reverseBits(vec3<u32>(1u, 1u, 1u));
    return var_0;
}

fn func_2(arg_0: vec2<bool>, arg_1: bool, arg_2: f32) -> f32 {
    let var_0 = Struct_3(vec4<bool>(true, !(!all(vec4<bool>(true, arg_1, arg_1, false))), false, 1877f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(true)))), vec2<u32>(1u, select(~(~66443u), select(abs(90749u), abs(1u), arg_0.x | true), true)), Struct_2(Struct_1(vec2<i32>(1i, 1i), abs(~vec4<u32>(0u, 6266u, 83770u, 95532u)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, arg_0.x, arg_1), vec4<bool>(false, arg_1, arg_0.x, true)), !(arg_1 != arg_0.x), arg_1), Struct_1(select(firstTrailingBit(vec2<i32>(u_input.a, u_input.a)), u_input.c, all(arg_0)), vec4<u32>(~21738u, 1u, ~0u, _wgslsmith_clamp_u32(25855u, 6739u, 0u)), vec4<bool>(2147483647i == u_input.a, false, true, !arg_0.x), arg_0.x, any(arg_0)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_2 * 702f), _wgslsmith_f_op_f32(func_3(false)), _wgslsmith_f_op_f32(f32(-1f) * -1081f), _wgslsmith_f_op_f32(-904f + arg_2)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 227f, -176f, -1556f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, 1617f, 1971f) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2, arg_2, 478f)))))), arg_2, Struct_1(firstLeadingBit(vec2<i32>(min(-20685i, 2147483647i), u_input.c.x)), ~(~vec4<u32>(0u, 0u, 0u, 4294967295u) | firstTrailingBit(vec4<u32>(1u, 18335u, 1u, 58147u))), select(select(vec4<bool>(arg_1, arg_1, arg_0.x, arg_0.x), !vec4<bool>(arg_0.x, true, true, arg_0.x), arg_0.x), vec4<bool>(37074i >= u_input.b, arg_0.x, false, arg_1), any(vec2<bool>(arg_0.x, arg_1)) || all(vec3<bool>(true, arg_0.x, true))), !arg_0.x, any(vec3<bool>(all(vec3<bool>(arg_1, arg_1, true)), arg_1, select(arg_1, true, false)))));
    var var_1 = var_0.c;
    var var_2 = _wgslsmith_f_op_f32(func_3(!any(select(var_0.e.c, select(vec4<bool>(arg_1, true, false, var_0.c.a.c.x), var_0.e.c, true), var_1.b.d))));
    let var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_1.d)));
    var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1370f, 377f))));
    return var_0.d;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<f32>) -> u32 {
    let var_0 = max(~(~1u) | arg_1.b.x, ~15647u);
    let var_1 = vec2<bool>(true, ~1u >= var_0);
    let var_2 = ~reverseBits(arg_1.b.yw);
    var var_3 = Struct_2(arg_1, arg_1, vec4<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(select(-1567f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(824f * 1862f))), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -109f)))), -387f), vec3<f32>(-609f, _wgslsmith_f_op_f32(-773f + _wgslsmith_div_f32(-1663f, _wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(func_2(select(!arg_1.c.xz, vec2<bool>(var_1.x, false), all(arg_1.c)), true, _wgslsmith_f_op_f32(156f + _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)))))));
    var var_4 = ~max(~select(~var_3.b.b.xx, select(vec2<u32>(var_0, var_3.a.b.x), vec2<u32>(var_3.b.b.x, 1u), true), true), ~_wgslsmith_add_vec2_u32(var_3.a.b.zy | arg_1.b.wz, _wgslsmith_add_vec2_u32(arg_1.b.yx, var_2)));
    return ~abs(0u >> (0u % 32u));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: bool) -> f32 {
    var var_0 = ~(-vec3<i32>((982i & u_input.b) & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -12615i, u_input.c.x, -2147483647i), vec4<i32>(u_input.a, u_input.a, 22880i, -2147483647i)), -_wgslsmith_clamp_i32(u_input.b, u_input.c.x, u_input.b), ~2147483647i));
    var var_1 = ~_wgslsmith_sub_u32(arg_0.x, _wgslsmith_dot_vec2_u32(~countOneBits(arg_0.yz), ~_wgslsmith_sub_vec2_u32(arg_0.yy, vec2<u32>(arg_0.x, arg_0.x))));
    var_1 = 12129u;
    var_1 = func_4(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -281f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec2<bool>(false, true), arg_3, _wgslsmith_f_op_f32(abs(-1188f)))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, arg_2.x))), arg_1.x), Struct_1(-_wgslsmith_clamp_vec2_i32(u_input.c, var_0.xy, var_0.zz), reverseBits(vec4<u32>(_wgslsmith_clamp_u32(arg_0.x, arg_0.x, 0u), min(0u, 63912u), ~arg_0.x, 1u)), !select(vec4<bool>(false, arg_3, arg_3, arg_3), select(vec4<bool>(false, true, arg_3, false), vec4<bool>(true, arg_3, false, arg_3), vec4<bool>(false, arg_3, arg_3, true)), !vec4<bool>(arg_3, false, false, arg_3)), arg_3, !(!any(vec2<bool>(arg_3, true)))), arg_1.xxy);
    var var_2 = vec4<i32>(~(-2147483647i), -reverseBits(var_0.x), 0i, u_input.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-243f - 877f))) - _wgslsmith_f_op_f32(floor(1444f)))));
}

fn func_5(arg_0: f32, arg_1: Struct_3) -> vec4<u32> {
    let var_0 = arg_1.c;
    let var_1 = 4294967295u;
    var var_2 = Struct_1(arg_1.c.a.a, vec4<u32>(~var_0.b.b.x, _wgslsmith_sub_u32(arg_1.e.b.x, min(var_1, var_1)), ~var_0.b.b.x, firstLeadingBit(~_wgslsmith_mult_u32(var_0.a.b.x, 0u))), var_0.a.c, !var_0.a.e, true);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, arg_1.c.d.x, 1f, var_0.d.x)), arg_1.c.c)) + vec4<f32>(arg_1.c.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_f32(trunc(-287f)))), _wgslsmith_f_op_f32(f32(-1f) * -1431f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(false)) * _wgslsmith_div_f32(-1099f, var_0.c.x)) * 1508f)));
    let var_4 = arg_1.c;
    return vec4<u32>(max(4294967295u, var_0.a.b.x), _wgslsmith_dot_vec2_u32(~(vec2<u32>(1u, var_2.b.x) | ~vec2<u32>(29521u, var_0.b.b.x)), vec2<u32>(49850u, func_4(var_3.yxw, var_0.a, arg_1.c.c.zxz))), var_4.b.b.x, 91937u);
}

fn func_6(arg_0: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(reverseBits(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(u_input.c, vec2<i32>(arg_0.a.x, u_input.a)), u_input.c << (arg_0.b.ww % vec2<u32>(32u)))), ~(arg_0.b << (abs(arg_0.b) % vec4<u32>(32u))), arg_0.c, false, !arg_0.d), Struct_1(vec2<i32>(0i, arg_0.a.x), func_5(-947f, Struct_3(select(arg_0.c, arg_0.c, arg_0.c), vec2<u32>(arg_0.b.x, arg_0.b.x), Struct_2(arg_0, arg_0, vec4<f32>(-591f, -577f, -1174f, 600f), vec3<f32>(798f, 842f, -2264f)), _wgslsmith_f_op_f32(min(-281f, 366f)), Struct_1(u_input.c, arg_0.b, arg_0.c, arg_0.c.x, false))), !select(arg_0.c, !vec4<bool>(false, arg_0.e, arg_0.c.x, arg_0.d), vec4<bool>(false, arg_0.c.x, false, true)), arg_0.c.x, arg_0.c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1505f, _wgslsmith_f_op_f32(round(822f)), _wgslsmith_f_op_f32(func_1(vec3<u32>(8370u, 1u, 54344u), vec4<f32>(1292f, -1929f, -1000f, 799f), vec2<f32>(-401f, 981f), false)), -628f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(634f, -654f, 1203f, 173f), vec4<f32>(2289f, 1187f, -1000f, 400f), arg_0.c)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1812f, -243f, -1000f, 3091f)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(938f, -1307f, -554f), vec3<f32>(-838f, 1751f, -108f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, 359f, -514f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(511f, 1101f, 1233f))))))), arg_0.e)));
    var var_1 = u_input.b;
    var_1 = -56044i;
    var var_2 = true;
    var_1 = u_input.b;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_1(vec2<i32>(max(~1i, u_input.b ^ u_input.a), u_input.b >> (_wgslsmith_mod_u32(0u, 100347u) % 32u)), abs(func_5(_wgslsmith_f_op_f32(func_1(vec3<u32>(4294967295u, 9046u, 20866u), vec4<f32>(1159f, -1000f, 640f, -470f), vec2<f32>(-1737f, 1856f), true)), Struct_3(vec4<bool>(true, true, true, false), vec2<u32>(40094u, 62736u), Struct_2(Struct_1(vec2<i32>(u_input.c.x, u_input.c.x), vec4<u32>(4294967295u, 81173u, 0u, 73874u), vec4<bool>(true, true, false, false), true, true), Struct_1(vec2<i32>(-23136i, u_input.a), vec4<u32>(1u, 29726u, 4294967295u, 1u), vec4<bool>(true, false, false, false), true, true), vec4<f32>(423f, 104f, -1867f, 612f), vec3<f32>(908f, 509f, 762f)), 144f, Struct_1(u_input.c, vec4<u32>(17423u, 0u, 4294967295u, 4294967295u), vec4<bool>(false, false, false, true), false, true)))), vec4<bool>(true, true, true, true), true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(true, true, false))))));
    let var_1 = Struct_3(!var_0.a.c, vec2<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(var_0.b.b.x, var_0.a.b.x), var_0.a.b.x), var_0.a.b.x), Struct_2(Struct_1(_wgslsmith_add_vec2_i32(select(vec2<i32>(2147483647i, -1i), u_input.c, vec2<bool>(var_0.a.c.x, false)), ~u_input.c), _wgslsmith_mult_vec4_u32(var_0.b.b, ~vec4<u32>(var_0.a.b.x, 25704u, var_0.b.b.x, 6087u)), !var_0.a.c, all(var_0.a.c.ywy), false), Struct_1(vec2<i32>(~(-2147483647i), -var_0.a.a.x), var_0.b.b, !func_6(var_0.b).b.c, any(var_0.b.c.xy) || var_0.b.d, var_0.b.d), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1470f, var_0.d.x, 157f, 1000f) + var_0.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-259f, -1400f, var_0.c.x, var_0.c.x)))), vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.d.x)) + var_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x * 1026f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(944f - var_0.c.x), -445f)))), var_0.c.x)), var_0.b);
    var var_2 = Struct_1(-var_0.b.a, ~select(var_1.c.a.b, firstTrailingBit(var_0.a.b), true) >> (vec4<u32>(8750u, _wgslsmith_mod_u32(var_1.b.x, min(1u, var_0.a.b.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.e.b.x, var_0.a.b.x), var_0.b.b.yx >> (vec2<u32>(4294967295u, 40765u) % vec2<u32>(32u))), countOneBits(func_6(var_0.b).a.b.x)) % vec4<u32>(32u)), var_1.e.c, 51399i < _wgslsmith_dot_vec2_i32(~vec2<i32>(var_0.b.a.x, u_input.c.x), -vec2<i32>(var_0.b.a.x, var_0.b.a.x)), true);
    var_2 = Struct_1(vec2<i32>(_wgslsmith_sub_i32(u_input.b, select(_wgslsmith_dot_vec3_i32(vec3<i32>(-28424i, u_input.b, u_input.b), vec3<i32>(63566i, 19494i, var_1.e.a.x)), firstLeadingBit(var_1.c.b.a.x), all(vec4<bool>(true, true, true, var_2.c.x)))), 2147483647i), min(_wgslsmith_sub_vec4_u32(vec4<u32>(countOneBits(var_1.e.b.x), func_6(var_0.a).a.b.x, var_1.b.x, 19068u), _wgslsmith_sub_vec4_u32(select(var_2.b, vec4<u32>(1u, var_0.a.b.x, var_1.b.x, 0u), var_0.b.e), vec4<u32>(0u, 6198u, 0u, var_1.c.b.b.x))), countOneBits(vec4<u32>(var_0.a.b.x, 0u, var_0.a.b.x, var_0.a.b.x)) << (vec4<u32>(var_0.a.b.x, _wgslsmith_dot_vec2_u32(var_1.c.a.b.zw, vec2<u32>(2062u, var_1.e.b.x)), var_0.a.b.x, max(1u, var_0.a.b.x)) % vec4<u32>(32u))), select(select(!(!vec4<bool>(true, var_1.c.b.c.x, false, true)), select(!vec4<bool>(true, var_0.a.d, var_0.b.c.x, true), vec4<bool>(var_2.c.x, false, var_1.a.x, var_0.b.e), vec4<bool>(false, var_0.a.d, var_1.e.d, var_1.c.b.c.x)), true), vec4<bool>(~var_1.e.b.x <= abs(var_0.a.b.x), var_2.c.x && any(vec2<bool>(true, var_1.c.a.c.x)), _wgslsmith_f_op_f32(-var_1.c.c.x) > _wgslsmith_f_op_f32(1073f - 1682f), var_2.c.x), var_2.c), func_6(var_1.e).a.e, func_6(var_1.c.a).a.e);
    let var_3 = func_6(Struct_1(~firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.c.b.a.x, -1i), var_0.a.a, var_1.e.a)), select(vec4<u32>(firstTrailingBit(var_0.b.b.x), 4294967295u, _wgslsmith_div_u32(1u, 1u), ~var_1.b.x), vec4<u32>(var_1.e.b.x, var_2.b.x, 25914u, 2203u) & _wgslsmith_add_vec4_u32(vec4<u32>(var_2.b.x, var_2.b.x, 65779u, var_2.b.x), vec4<u32>(var_1.e.b.x, 0u, var_0.a.b.x, var_1.c.b.b.x)), true), select(vec4<bool>(true, var_0.b.d, var_2.d, false), select(!vec4<bool>(var_0.b.d, false, var_2.d, var_0.b.d), func_6(var_0.a).b.c, true), func_6(func_6(Struct_1(vec2<i32>(var_0.a.a.x, var_2.a.x), var_0.b.b, vec4<bool>(var_1.c.b.c.x, true, var_0.a.e, false), var_2.c.x, true)).b).b.c), any(select(var_1.c.a.c.zz, vec2<bool>(true, true), var_1.e.c.xy)), var_2.d)).a.c.xzy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(var_1.c.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(var_1.c.d - var_1.c.d), var_1.c.d))))), _wgslsmith_mult_vec4_u32(max(max(vec4<u32>(var_2.b.x, 27651u, var_0.b.b.x, 4294967295u), vec4<u32>(4294967295u, 62951u, var_1.c.b.b.x, var_1.c.a.b.x)), countOneBits(vec4<u32>(32474u, var_0.a.b.x, 23512u, 1u))), var_1.e.b) << (var_0.b.b % vec4<u32>(32u)), var_0.c, ~28990u);
}

