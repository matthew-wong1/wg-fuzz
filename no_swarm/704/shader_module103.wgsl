struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<f32>,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec4<i32> {
    var var_0 = firstTrailingBit(_wgslsmith_add_vec4_i32(-(~_wgslsmith_mult_vec4_i32(vec4<i32>(-42299i, 1i, u_input.a, u_input.b.x), vec4<i32>(u_input.a, u_input.a, 50782i, u_input.b.x))), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 16923i, -1i, 22481i), _wgslsmith_sub_vec4_i32(-vec4<i32>(-87267i, u_input.b.x, -19713i, 7520i), vec4<i32>(u_input.a, -23689i, -2147483647i, -39419i)))));
    let var_1 = any(vec4<bool>(false, !any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true))), !((var_0.x == u_input.a) == true), !(8179i > var_0.x) & true));
    let var_2 = vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~(-vec4<i32>(9738i, -12059i, 1610i, -50961i)), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, -8452i, var_0.x, u_input.b.x), ~vec4<i32>(-9756i, 2147483647i, var_0.x, -1i))), -vec4<i32>(1i, var_0.x, u_input.b.x, -2147483647i)), -2147483647i, firstLeadingBit(1i));
    var_0 = _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.x, -8998i, 2147483647i, var_2.x), vec4<i32>(1i, var_2.x, var_0.x, var_0.x)) & vec4<i32>(var_2.x, 2147483647i, -1i, 1i), firstLeadingBit(vec4<i32>(var_2.x, 9409i, -59862i, -1i)), vec4<i32>(var_2.x, 1i, max(u_input.b.x, u_input.a), _wgslsmith_div_i32(var_2.x, 2147483647i))), min(_wgslsmith_div_vec4_i32(vec4<i32>(-12798i, 2147483647i, 7197i, var_2.x), vec4<i32>(var_0.x, 35672i, -40747i, -1i)), -vec4<i32>(var_2.x, var_0.x, var_2.x, u_input.a)) << (vec4<u32>(25307u, ~14544u, u_input.d.x, 53057u | u_input.d.x) % vec4<u32>(32u))), ~select(firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, 26423i, var_0.x, u_input.a), vec4<i32>(1i, 31910i, var_2.x, -1i))), reverseBits(~vec4<i32>(u_input.a, var_0.x, -2147483647i, var_0.x)), vec4<bool>(false, any(vec3<bool>(var_1, var_1, false)), var_1, var_1)), ~select(abs(vec4<i32>(var_2.x, 32305i, -2147483647i, u_input.a)) | vec4<i32>(var_2.x, -17913i, 2147483647i, var_0.x), vec4<i32>(-3027i, 42801i, _wgslsmith_clamp_i32(-1i, var_2.x, u_input.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-9268i, u_input.b.x, 25842i, 36474i), vec4<i32>(2147483647i, 44444i, u_input.b.x, -15015i))), !select(var_1, false, true)));
    var var_3 = Struct_4(Struct_3(Struct_1(~(i32(-1i) * -16971i))), !all(vec3<bool>(u_input.d.x <= 3494u, false, any(vec3<bool>(var_1, var_1, var_1)))), vec4<i32>(_wgslsmith_clamp_i32(max(-42028i, var_2.x), 76145i, 0i), abs(-countOneBits(u_input.b.x)), ~(-_wgslsmith_clamp_i32(var_0.x, -30771i, 1i)), -(~countOneBits(-2147483647i))), -firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(-12244i, var_0.x, 5432i, 1i) << (vec4<u32>(u_input.d.x, u_input.c.x, u_input.d.x, u_input.d.x) % vec4<u32>(32u)), vec4<i32>(u_input.b.x, var_2.x, 0i, u_input.b.x))), firstLeadingBit(countOneBits(vec3<u32>(u_input.d.x, u_input.d.x, ~u_input.c.x))));
    return -var_3.c;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<f32>) -> i32 {
    var var_0 = Struct_2(2147483647i, Struct_1(min(0i, -11116i)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1295f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.x, arg_1.x)) + _wgslsmith_f_op_f32(ceil(arg_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -332f)))), -1376f < arg_1.x, _wgslsmith_div_f32(-1878f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(step(-967f, 976f))))))));
    var var_1 = Struct_2(var_0.a, Struct_1(-2147483647i), arg_1.yxy, true, -376f);
    var var_2 = ~_wgslsmith_mult_u32(u_input.c.x, firstTrailingBit(61982u));
    var var_3 = Struct_4(Struct_3(var_1.b), true, -_wgslsmith_sub_vec4_i32(firstTrailingBit(max(vec4<i32>(var_0.a, var_0.a, var_0.b.a, 1i), vec4<i32>(-37347i, var_1.a, 2590i, 97295i))), -func_3()), abs(abs(vec4<i32>(var_1.b.a, -1i, var_0.b.a, var_1.b.a)) << (_wgslsmith_add_vec4_u32(vec4<u32>(0u, 24769u, u_input.d.x, u_input.d.x) >> (vec4<u32>(0u, 90776u, 126514u, 1u) % vec4<u32>(32u)), vec4<u32>(0u, 0u, 33965u, u_input.d.x)) % vec4<u32>(32u))), vec3<u32>(u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, u_input.c.x)), _wgslsmith_mult_u32(4294967295u, u_input.c.x), u_input.d.x, _wgslsmith_sub_u32(u_input.d.x, 6961u)), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.d.x, u_input.c.x), vec4<u32>(27090u, u_input.c.x, 1u, 45397u)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.d.x, 12536u, 4294967295u), vec4<u32>(109795u, 2608u, u_input.c.x, 1u)))), (~0u << (_wgslsmith_div_u32(81320u, u_input.c.x) % 32u)) >> (u_input.c.x % 32u)));
    let var_4 = Struct_4(var_3.a, var_3.b, _wgslsmith_mult_vec4_i32(countOneBits(~(-vec4<i32>(var_3.d.x, var_1.a, -7357i, 2147483647i))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b.a, var_1.b.a), vec2<i32>(38301i, -1i)) >> (var_3.e.x % 32u), _wgslsmith_add_i32(max(-20912i, 2147483647i), var_1.b.a), var_1.a, ~(-u_input.b.x))), var_3.d, vec3<u32>(firstLeadingBit(1u & (u_input.c.x >> (u_input.d.x % 32u))), abs(u_input.c.x), 1u));
    return -2147483647i;
}

fn func_1() -> u32 {
    let var_0 = -(~func_2(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1281f, 245f, 1937f, 452f) * vec4<f32>(875f, 180f, -226f, -210f)), vec4<f32>(-545f, -1780f, 637f, 309f)))));
    let var_1 = Struct_2(1365i, Struct_1(1i ^ -var_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(758f, -1335f, -897f), vec3<f32>(-685f, -1000f, -3220f), false)))) * vec3<f32>(1f, 1f, 1f)) * vec3<f32>(_wgslsmith_f_op_f32(-1554f * _wgslsmith_f_op_f32(782f + 1363f)), 1937f, -214f)), true, -254f);
    var var_2 = ~62367u;
    let var_3 = u_input.c.x;
    let var_4 = _wgslsmith_mult_vec3_i32(u_input.b, -min(firstLeadingBit(u_input.b) >> (firstLeadingBit(u_input.d) % vec3<u32>(32u)), -vec3<i32>(u_input.b.x, 20324i, u_input.a)));
    return var_3 & abs(4358u | _wgslsmith_dot_vec2_u32(select(u_input.c, u_input.c, vec2<bool>(var_1.d, false)), vec2<u32>(63046u, 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(1u, func_1());
    var var_1 = -931f;
    let var_2 = ~_wgslsmith_sub_i32(-28555i, min(-14821i, min(-2147483647i, 1i)));
    let var_3 = Struct_4(Struct_3(Struct_1(-_wgslsmith_mult_i32(-10061i, u_input.a))), true, -abs(min(vec4<i32>(10695i, -94291i, 2147483647i, var_2) << (vec4<u32>(u_input.c.x, u_input.c.x, 22523u, 101834u) % vec4<u32>(32u)), vec4<i32>(var_2, u_input.a, var_2, 2147483647i) & vec4<i32>(var_2, -44402i, u_input.a, u_input.a))), -(min(vec4<i32>(u_input.b.x, var_2, u_input.b.x, 1688i), vec4<i32>(0i, var_2, u_input.b.x, var_2) & vec4<i32>(var_2, var_2, var_2, var_2)) | reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(var_2, var_2, -78901i, 0i), vec4<i32>(u_input.a, var_2, u_input.b.x, u_input.b.x)))), u_input.d);
    let var_4 = select(var_3.d, var_3.d, !(!select(vec4<bool>(var_3.b, var_3.b, var_3.b, true), !vec4<bool>(var_3.b, var_3.b, var_3.b, var_3.b), select(vec4<bool>(true, false, true, var_3.b), vec4<bool>(var_3.b, false, true, true), vec4<bool>(true, true, var_3.b, var_3.b)))));
    let var_5 = vec3<i32>(u_input.a, func_2(vec3<bool>(false, var_3.b, true), vec4<f32>(_wgslsmith_f_op_f32(select(-575f, _wgslsmith_f_op_f32(round(462f)), var_3.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -1697f, _wgslsmith_f_op_f32(min(1f, -546f)))), ~(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_2), u_input.b.zx) >> ((1u ^ u_input.d.x) % 32u)));
    let var_6 = Struct_2(var_2, Struct_1(_wgslsmith_mod_i32(~var_5.x, _wgslsmith_sub_i32(_wgslsmith_sub_i32(39076i, 2147483647i), -167i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(695f, -679f, -293f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(272f, 960f, 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(631f, -939f, -973f)))), vec3<bool>(any(vec2<bool>(true, var_3.b)), all(vec2<bool>(var_3.b, false)), var_3.b))) + vec3<f32>(-1000f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1687f)))), any(!vec4<bool>(true, true, var_3.b, true)), -195f);
    let var_7 = var_3.a;
    var var_8 = var_3.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x);
}

