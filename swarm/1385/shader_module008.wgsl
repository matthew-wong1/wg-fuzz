struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec4<f32>,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<f32>) -> vec2<bool> {
    var var_0 = min(~vec3<u32>(u_input.b.x, abs(~u_input.b.x), ~(u_input.b.x | 65426u)), vec3<u32>(0u, u_input.b.x, ~u_input.b.x));
    var_0 = ~_wgslsmith_add_vec3_u32(~vec3<u32>(1u, 18131u, 48454u), max(vec3<u32>(1u, u_input.b.x, var_0.x), select(u_input.b, vec3<u32>(var_0.x, 0u, 47320u), true))) | (u_input.b << ((firstTrailingBit(u_input.b) >> (countOneBits(u_input.b) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_1 = Struct_1(countOneBits(u_input.a.x), vec2<bool>(any(vec4<bool>(all(vec2<bool>(true, true)), true, all(vec3<bool>(true, true, true)), select(true, false, true))), true), -_wgslsmith_mult_vec4_i32(firstLeadingBit(-vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x)), select(~vec4<i32>(0i, -15578i, 2689i, -5776i), vec4<i32>(u_input.a.x, 1i, -32753i, u_input.a.x), vec4<bool>(true, true, true, true))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(698f - _wgslsmith_f_op_f32(1153f - arg_0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)), arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -449f)), ~(~var_0.x | var_0.x));
    let var_2 = u_input.a.x;
    let var_3 = _wgslsmith_f_op_f32(arg_0.x - 1186f);
    return var_1.b;
}

fn func_2() -> i32 {
    var var_0 = Struct_1(_wgslsmith_clamp_i32(-33597i, 2892i, _wgslsmith_add_i32(~(-u_input.a.x), -19029i)), select(vec2<bool>(true, all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)))), !vec2<bool>(21433u != u_input.b.x, true), func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(731f, -441f, 1452f, 194f) + vec4<f32>(345f, -387f, -1238f, 2454f)) * vec4<f32>(-125f, -1203f, -1206f, 1262f)))), min(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 53442i), vec4<i32>(u_input.a.x, 72594i, 21600i, u_input.a.x) ^ vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 0i)), ~vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, -1i)) | reverseBits(min(-vec4<i32>(0i, -29522i, u_input.a.x, u_input.a.x), -vec4<i32>(-2147483647i, -23867i, -3417i, u_input.a.x))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2557f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1271f * 908f)), _wgslsmith_div_f32(-1161f, _wgslsmith_f_op_f32(ceil(-161f)))))), u_input.b.x);
    var var_1 = vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(-vec3<i32>(-32147i, var_0.c.x, u_input.a.x) ^ vec3<i32>(2147483647i, u_input.a.x, 1i), var_0.c.zwy);
    let var_2 = Struct_2(1i >> (min(4294967295u, _wgslsmith_mult_u32(0u, ~1u)) % 32u));
    var_0 = Struct_1(-u_input.a.x, vec2<bool>(any(select(vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), !vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), !var_0.b.x)), !any(!vec4<bool>(var_0.b.x, false, var_0.b.x, false))), -firstTrailingBit(vec4<i32>(-1i) * -var_0.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_0.d))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(455f, 514f, var_0.d.x) * vec3<f32>(var_0.d.x, var_0.d.x, var_0.d.x)) - _wgslsmith_f_op_vec3_f32(exp2(var_0.d))) * var_0.d)), ~(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.e, var_0.e, 18208u), select(vec4<u32>(17265u, 1u, var_0.e, var_0.e), vec4<u32>(u_input.b.x, var_0.e, 27352u, u_input.b.x), true)) | ~var_0.e));
    var var_3 = true;
    return ~(-(~(-(~2147483647i))));
}

fn func_1(arg_0: vec2<u32>, arg_1: u32) -> vec4<i32> {
    var var_0 = vec2<bool>((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(649f + -491f)) < _wgslsmith_f_op_f32(round(-101f))) || all(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true))), false);
    var var_1 = Struct_1(~(u_input.a.x >> (arg_1 % 32u)), !(!select(!vec2<bool>(var_0.x, false), !vec2<bool>(var_0.x, true), !vec2<bool>(true, var_0.x))), -vec4<i32>(4533i, _wgslsmith_clamp_i32(func_2(), -10160i, countOneBits(-2147483647i)), abs(u_input.a.x ^ u_input.a.x), 1i), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(2026f, -879f, 264f), vec3<f32>(640f, -152f, 1583f)) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-920f, 128f, 1152f))))))), min(~4294967295u, arg_0.x));
    var_1 = Struct_1(_wgslsmith_dot_vec2_i32(~(countOneBits(var_1.c.zw) ^ vec2<i32>(36369i, -2147483647i)), vec2<i32>(-9805i, 0i)), !select(var_1.b, select(var_1.b, select(vec2<bool>(var_0.x, false), var_1.b, true), var_1.b), all(vec4<bool>(false, false, true, var_1.b.x))), -var_1.c, var_1.d, 1u & arg_0.x);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1355f);
    var_1 = Struct_1(0i, !var_1.b, var_1.c, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-784f, var_1.d.x, var_1.d.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1406f, var_1.d.x, -154f))) + vec3<f32>(var_1.d.x, -1000f, -357f)))), ~var_1.e);
    return min(_wgslsmith_add_vec4_i32(-_wgslsmith_mod_vec4_i32(firstLeadingBit(var_1.c), var_1.c), var_1.c), vec4<i32>(-abs(-var_1.c.x), select(abs(-9679i), -48252i, !var_1.b.x), _wgslsmith_mod_i32(_wgslsmith_mod_i32(~var_1.a, u_input.a.x), max(var_1.a, -1i) >> (arg_0.x % 32u)), _wgslsmith_sub_i32(-65938i, countOneBits(_wgslsmith_sub_i32(u_input.a.x, -20737i)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = min(_wgslsmith_add_vec4_i32(min(_wgslsmith_add_vec4_i32(arg_0, _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, arg_1.a, arg_0.x, arg_1.a), vec4<i32>(arg_1.a, u_input.a.x, -1i, arg_0.x))), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.x, arg_1.a, 2147483647i, -20230i), firstLeadingBit(arg_0))), arg_0), arg_0);
    var var_1 = ~_wgslsmith_clamp_u32(u_input.b.x, _wgslsmith_dot_vec3_u32((vec3<u32>(4294967295u, u_input.b.x, u_input.b.x) & u_input.b) | u_input.b, _wgslsmith_mod_vec3_u32(max(vec3<u32>(39889u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)), u_input.b)), 0u);
    var var_2 = _wgslsmith_div_u32(~max(1u, u_input.b.x), u_input.b.x);
    var var_3 = select(_wgslsmith_dot_vec2_u32(min(u_input.b.yz, vec2<u32>(~u_input.b.x, u_input.b.x)), ~u_input.b.zz), u_input.b.x, select(true, true, false) && true);
    var var_4 = arg_1;
    return Struct_1(-12784i, !(!func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(474f, -444f, 1484f, 1642f) + vec4<f32>(1000f, -142f, 465f, 872f)))), ~(~(~(~vec4<i32>(u_input.a.x, 23732i, -24366i, var_4.a)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-457f, -768f, 110f))))))), u_input.b.x ^ ~(~(u_input.b.x ^ 82283u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(-_wgslsmith_add_vec4_i32(~abs(vec4<i32>(u_input.a.x, 42003i, u_input.a.x, -1i)), func_1(vec2<u32>(0u, u_input.b.x), u_input.b.x | 50014u)), Struct_2(-(~(u_input.a.x & 515i))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.d.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.d.x))))))));
    let var_2 = Struct_2(u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(168f, -654f) * var_0.d.zy) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.x, var_0.d.x) - var_0.d.xy)) - vec2<f32>(296f, _wgslsmith_f_op_f32(-349f + 284f)))), vec2<f32>(var_0.d.x, 1058f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-568f, -284f)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1015f))) + vec2<f32>(_wgslsmith_f_op_f32(sign(-2465f)), _wgslsmith_f_op_f32(f32(-1f) * -258f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(var_0.d.x * var_0.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-850f, 754f, var_0.b.x))), 236f, _wgslsmith_div_f32(var_0.d.x, 791f))));
}

