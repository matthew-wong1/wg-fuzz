struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_4(_wgslsmith_div_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1038f), -594f, _wgslsmith_f_op_f32(ceil(1f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1378f, 858f, 1000f, 133f), vec4<f32>(662f, 477f, 559f, -443f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -191f, 715f, 2132f)), vec4<bool>(true, true, true, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-901f, -662f, 1709f, -1626f)), true))), Struct_1(select(u_input.a, ~firstLeadingBit(-2147483647i), true), _wgslsmith_mod_i32(countOneBits(_wgslsmith_add_i32(u_input.a, u_input.a)), ~(~35369i)), _wgslsmith_f_op_f32(step(-493f, -1000f))), vec4<bool>(!all(vec3<bool>(false, true, false)), select(true, false, true), true, any(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
    let var_1 = var_0.c;
    let var_2 = _wgslsmith_clamp_i32(firstLeadingBit(var_0.b.a) >> (_wgslsmith_clamp_u32(46212u, _wgslsmith_clamp_u32(~u_input.c.x, u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 16842u, 43268u, 42167u), vec4<u32>(1u, u_input.b, 14099u, 24419u))), firstLeadingBit(0u)) % 32u), ~abs(select(56570i, -var_0.b.b, false)), u_input.a);
    let var_3 = Struct_5(Struct_2(Struct_1(max(1i, -var_0.b.a), -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -1i, -2147483647i), vec3<i32>(var_0.b.b, 2147483647i, u_input.a)), var_0.a.x), var_0.c.wy, Struct_1(_wgslsmith_add_i32(_wgslsmith_sub_i32(20208i, 19041i), var_0.b.b), -2147483647i, _wgslsmith_f_op_f32(select(431f, -286f, true))), !vec3<bool>(all(var_1.yxz), var_1.x, 4294967295u > u_input.c.x), var_0.b), Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.a.x, var_0.b.c, var_0.a.x))) + vec3<f32>(894f, 589f, var_0.a.x)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -831f), 2786f, var_0.b.c)), 218f), 68477u, Struct_1(~var_2 >> (4294967295u % 32u), u_input.a, 715f));
    var var_4 = var_3.d.b << (~46827u % 32u);
    return _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, var_2, 1i), ~(~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 2147483647i, 632i), vec3<i32>(var_3.d.a, var_3.a.c.b, 2147483647i)))) | ~(-max(vec3<i32>(0i, -30218i, -14083i), vec3<i32>(0i, var_3.a.e.a, 3265i) >> (u_input.c % vec3<u32>(32u))));
}

fn func_2() -> Struct_2 {
    var var_0 = reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(1i & firstTrailingBit(-2147483647i), u_input.a, -2147483647i, ~(i32(-1i) * -8290i)), _wgslsmith_mod_vec4_i32(select(~vec4<i32>(-5946i, -1i, 43264i, u_input.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(10319i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 0i), vec4<i32>(11880i, u_input.a, u_input.a, 2147483647i)), true), select(vec4<i32>(u_input.a, 0i, 0i, u_input.a), vec4<i32>(1i, u_input.a, u_input.a, u_input.a), true) & ~vec4<i32>(u_input.a, -1i, 4182i, 6437i))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1852f, _wgslsmith_f_op_f32(step(-772f, -600f)))), 702f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(747f - var_1.x), _wgslsmith_f_op_f32(round(957f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.zx + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.yz - var_1.yw))))));
    var var_3 = var_1.wyw;
    var var_4 = -_wgslsmith_mult_vec3_i32(func_3(), vec3<i32>(-21468i >> (1u % 32u), reverseBits(25144i), 0i));
    return Struct_2(Struct_1(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_4.x, u_input.a), vec2<i32>(var_4.x, var_0.x)) | -var_4.x, ~(abs(u_input.a) << (max(u_input.b, 4294967295u) % 32u)), var_1.x), vec2<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(true, false), true))), Struct_1(_wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.a, 3590i, var_0.x), var_0.x), firstTrailingBit(u_input.a)), min(firstLeadingBit(var_4.x) << (~4294967295u % 32u), -var_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_3.x)) + 123f))), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false))), (_wgslsmith_sub_i32(var_4.x, 11983i) | -30947i) >= ~(44736i | var_4.x)), Struct_1(-_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(var_0.zzz, var_0.xzw), 12804i), firstLeadingBit(select(_wgslsmith_sub_i32(-13423i, var_4.x), -1316i, false)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - -246f) - _wgslsmith_f_op_f32(trunc(var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.x)) - _wgslsmith_f_op_f32(var_2.x - var_3.x))))));
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: vec4<f32>, arg_3: i32) -> i32 {
    let var_0 = Struct_1(u_input.a, _wgslsmith_div_i32(-22576i, 19456i), _wgslsmith_f_op_f32(136f + arg_2.x));
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.c, -1173f, arg_2.x), arg_2.xyx))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(arg_1.ywy)) - _wgslsmith_div_vec3_f32(arg_1.xyy, vec3<f32>(arg_2.x, arg_1.x, var_0.c))), any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false)))))), -1000f);
    let var_2 = Struct_5(func_2(), Struct_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1139f, var_0.c, var_1.a.x)) * arg_1.zzz))), var_1.b), ~(~arg_0), func_2().a);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2().e.c - var_1.a.x) * _wgslsmith_f_op_f32(var_2.d.c * -2205f)));
    let var_4 = select(all(select(select(!var_2.a.d, var_2.a.d, false), vec3<bool>(true, var_2.a.d.x, false), !select(true, var_2.a.b.x, false))), true, !((_wgslsmith_f_op_f32(-arg_2.x) < _wgslsmith_f_op_f32(max(-282f, 150f))) && (false || (false | var_2.a.d.x))));
    return _wgslsmith_dot_vec4_i32(~(vec4<i32>(-22769i, var_0.a, 14460i, 2147483647i) ^ -vec4<i32>(var_0.b, 35255i, var_2.d.b, u_input.a)) & abs(-(~vec4<i32>(var_2.a.c.b, arg_3, -16855i, 2147483647i))), -countOneBits(~select(vec4<i32>(-1i, 14713i, arg_3, 1i), vec4<i32>(var_0.a, var_0.a, -51045i, -42310i), false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x;
    let var_1 = !(!any(vec3<bool>(true, true, false)));
    var var_2 = _wgslsmith_div_vec2_i32(select(min((vec2<i32>(u_input.a, u_input.a) | vec2<i32>(u_input.a, u_input.a)) ^ ~vec2<i32>(u_input.a, 0i), vec2<i32>(_wgslsmith_add_i32(24754i, u_input.a), _wgslsmith_clamp_i32(1i, -69955i, u_input.a))), _wgslsmith_add_vec2_i32(-vec2<i32>(u_input.a, 27048i) | vec2<i32>(u_input.a, u_input.a), max(-vec2<i32>(u_input.a, -42834i), -vec2<i32>(u_input.a, -2147483647i))), false), -vec2<i32>(-958i, -2147483647i));
    var_2 = ~vec2<i32>(i32(-1i) * -29087i, -u_input.a);
    var_2 = firstTrailingBit(-_wgslsmith_sub_vec2_i32(vec2<i32>(-26886i, -var_2.x), vec2<i32>(func_1(u_input.b, vec4<f32>(-265f, -301f, -115f, -402f), vec4<f32>(-524f, -428f, -465f, 407f), 8594i), u_input.a)));
    let var_3 = any(!(!vec3<bool>(true, any(vec4<bool>(true, true, var_1, false)), true)));
    let var_4 = any(!vec2<bool>(!(!var_3), true));
    let var_5 = func_2().a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-613f)), -565f, var_5.c, _wgslsmith_div_f32(var_5.c, var_5.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_5.c, 1000f, var_5.c, var_5.c), vec4<f32>(var_5.c, var_5.c, var_5.c, 154f), var_4)))) - vec4<f32>(_wgslsmith_f_op_f32(-var_5.c), -760f, -914f, _wgslsmith_f_op_f32(var_5.c + -376f))))));
}

