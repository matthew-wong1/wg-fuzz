struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec2<i32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = Struct_5(_wgslsmith_mult_vec4_i32(~max(max(vec4<i32>(2147483647i, arg_0.c, -20205i, arg_0.c), vec4<i32>(1i, 2147483647i, arg_0.c, -1i)), vec4<i32>(arg_0.c, arg_0.c, arg_0.c, arg_0.c)), vec4<i32>(-_wgslsmith_mod_i32(arg_0.c, -128i), -1i, i32(-1i) * -39249i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_0.c, -2147483647i, -10769i, arg_0.c)), reverseBits(vec4<i32>(-60724i, arg_0.c, arg_0.c, arg_0.c))))), Struct_3(Struct_1(35479u << (1u % 32u), select(vec2<u32>(arg_0.d, arg_0.d), u_input.a, vec2<bool>(true, true)), -40176i, 4294967295u), 1363f, Struct_1(_wgslsmith_mult_u32(15269u, countOneBits(0u)), u_input.a, _wgslsmith_sub_i32(0i, 15681i), _wgslsmith_mult_u32(1u, arg_0.b.x) << (min(u_input.a.x, 4294967295u) % 32u))));
    var_0 = Struct_5(firstTrailingBit(var_0.a), var_0.b);
    let var_1 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(29059u, u_input.a.x, 21182u), 9611u), 28579u), ~(55387u & ~arg_0.a)), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.b.a.a, ~4294967295u), ~(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.a, var_0.b.c.d), vec2<u32>(9104u, arg_0.d)) & (vec2<u32>(var_0.b.c.d, arg_0.a) >> (vec2<u32>(1u, u_input.a.x) % vec2<u32>(32u))))), -14583i, ~abs(22695u));
    let var_2 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(467f, -918f, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(800f + var_0.b.b) + _wgslsmith_f_op_f32(-307f + -557f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b.b))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2027f, var_0.b.b, var_0.b.b)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(298f, 607f, 1696f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1531f, var_0.b.b, -1114f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.b, 1000f, -980f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.b, var_0.b.b, 1000f)))))));
    let var_3 = Struct_3(var_1, var_2.x, Struct_1(~firstTrailingBit(~u_input.a.x), ~vec2<u32>(max(0u, 0u), 25931u), var_0.b.c.c, u_input.a.x));
    return ~_wgslsmith_sub_vec2_i32(select(max(var_0.a.zw, select(vec2<i32>(2147483647i, 38036i), var_0.a.xy, vec2<bool>(true, false))), var_0.a.yy, all(vec4<bool>(false, false, true, false))), var_0.a.yy);
}

fn func_2() -> u32 {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(-1f);
    let var_2 = Struct_4(-734f, Struct_3(Struct_1(243u, vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<u32>(4294967295u, 37367u, 26871u)), u_input.a.x & u_input.a.x), ~firstLeadingBit(-1i), u_input.a.x), 1616f, Struct_1(u_input.a.x, vec2<u32>(u_input.a.x, ~54866u), 9372i, ~0u)), -_wgslsmith_add_vec2_i32(-_wgslsmith_add_vec2_i32(vec2<i32>(21073i, 30894i), vec2<i32>(-2147483647i, 1i)), ~vec2<i32>(1i, 1i)));
    var var_3 = select(42880u, firstLeadingBit(var_2.b.a.d), true);
    let var_4 = Struct_2(var_2.b.c.c, var_2.b.c, func_3(var_2.b.a));
    return 4294967295u;
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: f32) -> vec3<bool> {
    let var_0 = abs(~vec4<u32>(max(arg_0.c.a, func_2()), arg_0.c.d, u_input.a.x, 0u));
    var var_1 = vec3<u32>(33996u, _wgslsmith_sub_u32(1u, ~(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.x), vec2<u32>(arg_0.c.b.x, 0u)) >> (1u % 32u))), 81541u);
    var_1 = vec3<u32>(~(~u_input.a.x), var_0.x, 79430u);
    let var_2 = Struct_5(~vec4<i32>(-min(arg_1, arg_1), abs(-2147483647i), i32(-1i) * -51008i, countOneBits(i32(-1i) * -1i)), Struct_3(arg_0.c, arg_0.b, Struct_1(42717u, u_input.a, arg_1, ~firstLeadingBit(var_1.x))));
    var var_3 = Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -566f), var_2.b.b, true)) - _wgslsmith_f_op_f32(var_2.b.b - _wgslsmith_f_op_f32(-957f * -505f))), arg_2)), arg_0, vec2<i32>(countOneBits(-36637i), arg_0.c.c));
    return !vec3<bool>(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true))), all(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, false, false), arg_0.a.a <= var_2.b.a.d)), all(select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true))));
}

fn func_4(arg_0: vec3<bool>) -> Struct_2 {
    let var_0 = Struct_3(Struct_1(u_input.a.x & ~30712u, ~reverseBits(u_input.a | u_input.a), (_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, -34977i, -266i), vec4<i32>(-19982i, -1i, 1i, 1i)) | _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, 0i, -38404i), vec4<i32>(-18203i, 37167i, -1i, -62323i))) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -27194i), ~vec2<i32>(7296i, 2147483647i)), firstLeadingBit(~_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x))), 529f, Struct_1(select(reverseBits(~u_input.a.x), select(u_input.a.x, ~25939u, true), true), u_input.a, countOneBits(~_wgslsmith_div_i32(484i, 1i)), ~(~(~9793u))));
    let var_1 = Struct_5(vec4<i32>(1i << (_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.a.b.x, 1u), ~vec2<u32>(4294967295u, 4294967295u)) % 32u), 42325i & var_0.c.c, var_0.a.c, min(1i, firstLeadingBit(var_0.a.c))), Struct_3(var_0.a, var_0.b, var_0.a));
    let var_2 = ~var_1.a.x;
    var var_3 = abs(max(vec4<u32>(func_2() & 0u, var_1.b.a.a, ~_wgslsmith_div_u32(30364u, u_input.a.x), 4294967295u), ~(~(~vec4<u32>(var_0.c.d, 1u, 1u, u_input.a.x)))));
    let var_4 = var_1.a ^ firstTrailingBit(_wgslsmith_sub_vec4_i32(~(~vec4<i32>(25544i, var_1.b.a.c, -31573i, -17998i)), min(var_1.a << (vec4<u32>(var_1.b.c.a, var_0.a.b.x, 0u, 1u) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.a.c, 22961i, var_2, var_2), vec4<i32>(var_0.c.c, var_1.a.x, 2147483647i, var_2)))));
    return Struct_2(-2147483647i, Struct_1(0u, vec2<u32>(reverseBits(countOneBits(var_3.x)), ~firstTrailingBit(var_1.b.a.a)), -firstTrailingBit(-var_4.x), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(1u & var_0.a.b.x, _wgslsmith_sub_u32(var_3.x, 1u)), var_1.b.c.d, func_2() << (_wgslsmith_clamp_u32(4718u, u_input.a.x, 31666u) % 32u))), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(select(29955i, 2147483647i, arg_0.x), var_4.x), min(2147483647i, var_2)), _wgslsmith_dot_vec4_i32(-(~var_1.a), vec4<i32>(0i, reverseBits(var_0.a.c), var_1.a.x & var_2, _wgslsmith_sub_i32(13918i, var_4.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(!select(select(func_1(Struct_3(Struct_1(1u, vec2<u32>(u_input.a.x, 52061u), 5423i, 4294967295u), 2150f, Struct_1(u_input.a.x, vec2<u32>(u_input.a.x, u_input.a.x), 1i, u_input.a.x)), 1i, -170f), func_1(Struct_3(Struct_1(1u, u_input.a, 37520i, 4294967295u), -284f, Struct_1(u_input.a.x, u_input.a, 2320i, u_input.a.x)), 2147483647i, -606f), any(vec4<bool>(false, true, false, false))), vec3<bool>(true, false, false), false));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(965f * _wgslsmith_div_f32(-1302f, 713f)))) * 1305f), 632f);
    let var_2 = Struct_3(func_4(vec3<bool>(true, true, true)).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * var_1)), func_4(select(vec3<bool>(true, true, true), vec3<bool>(u_input.a.x < u_input.a.x, any(vec4<bool>(true, false, false, false)), true), select(true, true, false))).b);
    var var_3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b, 1000f) + vec2<f32>(var_1, -1000f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1, var_2.b), vec2<f32>(var_2.b, var_1)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-514f, var_2.b)) - vec2<f32>(-428f, var_2.b))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b, -112f) - vec2<f32>(var_2.b, -323f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2.b, var_1))) - vec2<f32>(1015f, var_2.b)), vec2<bool>(true, true)))))));
    var var_4 = 29807u;
    let var_5 = reverseBits(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_2.c.c, 1i, 1i), vec3<i32>(var_0.c.x, 60674i, 1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(var_2.c.c, var_2.a.c, var_2.c.c), vec3<i32>(2147483647i, var_2.a.c, var_2.c.c))) << (vec3<u32>(~0u, var_2.a.d ^ var_0.b.d, ~0u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(-15668i, 0i, -1i) >> (vec3<u32>(var_2.a.d, u_input.a.x, 4294967295u) % vec3<u32>(32u))), vec3<i32>(-1i) * -vec3<i32>(var_0.b.c, 420i, 1i))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec3_u32(abs(vec3<u32>(u_input.a.x, 39035u, 0u)), select(firstTrailingBit(vec3<u32>(4294967295u, var_2.c.a, var_0.b.b.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(45377u, var_0.b.a, 68413u), vec3<u32>(var_2.c.a, 0u, 0u), vec3<u32>(1u, 20982u, var_0.b.a)), true)), vec2<f32>(_wgslsmith_f_op_f32(step(1368f, _wgslsmith_f_op_f32(var_1 - -105f))), var_1), var_3.x, ~(~((var_0.b.a | u_input.a.x) & select(u_input.a.x, 0u, true))));
}

