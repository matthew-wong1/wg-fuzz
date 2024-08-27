struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<i32>,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec2<f32>,
    e: f32,
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> vec2<bool> {
    var var_0 = firstLeadingBit(~u_input.b);
    var_0 = _wgslsmith_add_i32(firstTrailingBit(-2112i), i32(-1i) * -2147483647i);
    let var_1 = arg_1.c;
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.b.a, 291f)))))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-634f, 603f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1.b.a, _wgslsmith_f_op_f32(f32(-1f) * -709f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(539f, arg_1.b.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b.a, arg_1.b.a) + vec2<f32>(arg_1.b.a, 2225f))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-467f, -793f), vec2<f32>(arg_1.b.c, arg_1.b.c))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, -1283f))), vec2<f32>(arg_1.b.c, _wgslsmith_f_op_f32(var_2 + arg_1.b.c)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1357f, 1183f), vec2<f32>(arg_1.b.a, -103f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.b.c, var_2), vec2<f32>(arg_1.b.c, 298f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, -618f) + vec2<f32>(1254f, var_2))))), vec2<bool>(!all(vec2<bool>(arg_1.a.x, false)), all(vec3<bool>(!arg_0, true, any(vec3<bool>(arg_0, true, arg_0)))))));
    return arg_1.a;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(!(!func_3(all(vec2<bool>(false, true)), Struct_2(vec2<bool>(true, false), Struct_1(-558f, vec3<i32>(u_input.b, u_input.b, -26911i), 1138f, 4294967295u, vec4<u32>(0u, 3652u, u_input.a, u_input.d)), vec2<i32>(u_input.b, 2147483647i), 908i, vec4<bool>(true, false, false, true)))), Struct_1(-245f, vec3<i32>(countOneBits(~(-2147483647i)), ~u_input.b, 24552i), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(345f)), -213f) - _wgslsmith_f_op_f32(f32(-1f) * -295f)), firstLeadingBit(24780u), abs(~firstLeadingBit(vec4<u32>(u_input.c, 2720u, 4294967295u, u_input.a)))), -vec2<i32>(u_input.b, _wgslsmith_sub_i32(~67344i, u_input.b)), -(~(-42333i) | u_input.b) ^ -35485i, !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true))));
    var_0 = Struct_2(var_0.a, Struct_1(var_0.b.a, _wgslsmith_mod_vec3_i32((var_0.b.b & var_0.b.b) << (~var_0.b.e.wxy % vec3<u32>(32u)), var_0.b.b), _wgslsmith_f_op_f32(step(-1001f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1755f) + _wgslsmith_f_op_f32(select(289f, var_0.b.c, var_0.a.x))))), ~(~(~u_input.d)), reverseBits(var_0.b.e << (var_0.b.e % vec4<u32>(32u)))), _wgslsmith_mult_vec2_i32(var_0.c, select(var_0.c, -vec2<i32>(u_input.b, var_0.b.b.x), any(vec2<bool>(true, var_0.a.x)))), max(_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.b, var_0.c.x), reverseBits(var_0.c.x)), ~0i) >> (_wgslsmith_sub_u32(u_input.d, _wgslsmith_clamp_u32(58244u, max(u_input.a, 62214u), ~var_0.b.d)) % 32u), select(select(!(!var_0.e), vec4<bool>(true, !var_0.e.x, 49176i != var_0.d, all(vec4<bool>(false, var_0.a.x, true, var_0.e.x))), any(select(vec4<bool>(var_0.e.x, false, false, true), var_0.e, var_0.e))), var_0.e, true));
    let var_1 = 1589f;
    var_0 = Struct_2(vec2<bool>((~u_input.b < ~u_input.b) | true, var_0.a.x), var_0.b, max(-(~(-var_0.c)), reverseBits(min(_wgslsmith_clamp_vec2_i32(vec2<i32>(-36508i, -34272i), vec2<i32>(u_input.b, var_0.b.b.x), var_0.c), reverseBits(vec2<i32>(9292i, u_input.b))))), -1i, vec4<bool>(any(vec3<bool>(true, !var_0.e.x, any(vec4<bool>(var_0.e.x, var_0.e.x, true, var_0.e.x)))), var_0.e.x, !all(vec4<bool>(var_0.e.x, true, var_0.a.x, var_0.a.x)), -32413i >= _wgslsmith_dot_vec2_i32(-vec2<i32>(var_0.d, u_input.b), min(vec2<i32>(u_input.b, 31199i), vec2<i32>(1i, 26843i)))));
    var_0 = Struct_2(var_0.a, Struct_1(var_1, _wgslsmith_mod_vec3_i32(var_0.b.b, var_0.b.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.c))), ~(~firstLeadingBit(26018u)), reverseBits(abs(var_0.b.e))), -firstLeadingBit(var_0.b.b.xz & vec2<i32>(1i, 59214i)) & _wgslsmith_mult_vec2_i32(var_0.c, firstLeadingBit(_wgslsmith_mult_vec2_i32(var_0.b.b.zx, var_0.b.b.zx))), u_input.b | -2147483647i, select(select(!select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.e.x, true), var_0.e, false), var_0.e, !var_0.e), !(!select(vec4<bool>(var_0.e.x, var_0.a.x, var_0.a.x, var_0.e.x), vec4<bool>(true, var_0.e.x, var_0.a.x, false), var_0.e)), all(!select(vec3<bool>(true, false, true), vec3<bool>(var_0.a.x, false, var_0.e.x), false))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1 + 755f))) * -289f)), vec3<i32>(u_input.b, var_0.d, var_0.c.x), var_1, min(min(_wgslsmith_mod_u32(~var_0.b.d, 4294967295u), var_0.b.d ^ select(u_input.d, u_input.d, var_0.e.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.d, var_0.b.e.x, var_0.b.d), vec3<u32>(_wgslsmith_div_u32(0u, 4294967295u), 54037u, abs(0u)))), _wgslsmith_mult_vec4_u32(~select(~var_0.b.e, var_0.b.e, var_0.e), select(~(vec4<u32>(56939u, 0u, u_input.c, var_0.b.d) ^ var_0.b.e), var_0.b.e, vec4<bool>(var_0.a.x, all(vec3<bool>(var_0.a.x, false, var_0.a.x)), any(var_0.e.wwy), true))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32) -> bool {
    let var_0 = !select(!select(arg_1.wwz, select(arg_1.zyy, arg_1.wyx, vec3<bool>(true, arg_1.x, arg_1.x)), arg_1.zww), !(!arg_1.ywy), any(arg_1.zww));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(196f, -107f, -172f) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(700f, 643f, -873f), vec3<f32>(arg_0.a, arg_2, arg_2), vec3<bool>(true, var_0.x, arg_1.x))), vec3<f32>(408f, arg_0.c, -522f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(385f, arg_0.a, -964f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, -690f, 481f) * _wgslsmith_div_vec3_f32(vec3<f32>(arg_2, -791f, -2335f), vec3<f32>(531f, arg_2, arg_0.c)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, arg_0.c, arg_2) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-260f)), _wgslsmith_f_op_f32(arg_0.a * arg_2), _wgslsmith_f_op_f32(min(-524f, arg_0.c))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-643f, 1261f, arg_0.c) + vec3<f32>(arg_0.c, arg_2, -732f))))));
    var var_2 = Struct_2(!select(arg_1.ww, var_0.zx, var_0.x), arg_0, arg_0.b.xz ^ vec2<i32>(~(~arg_0.b.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, -1i, u_input.b), vec4<i32>(arg_0.b.x, u_input.b, -2147483647i, u_input.b)), arg_0.b.x ^ -55196i)), select(reverseBits(2147483647i), 1i, true == !(arg_0.b.x <= -21577i)), arg_1);
    var var_3 = countOneBits(~0u);
    var_2 = Struct_2(select(var_2.e.zw, select(var_0.xy, func_3(true, Struct_2(var_0.xy, var_2.b, arg_0.b.zx, -56027i, arg_1)), arg_1.x), true), var_2.b, abs(~(~vec2<i32>(u_input.b, var_2.b.b.x))), 28854i, var_2.e);
    return (true | (select(true, all(var_0), var_2.a.x) && any(vec2<bool>(true, true)))) | var_2.e.x;
}

fn func_5(arg_0: f32, arg_1: bool) -> Struct_1 {
    let var_0 = reverseBits(vec2<u32>(~44891u, 15685u));
    var var_1 = ~(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_0.x, u_input.c) | vec3<u32>(var_0.x, 0u, var_0.x), countOneBits(vec3<u32>(u_input.a, 17250u, u_input.a))), vec3<u32>(~u_input.d, var_0.x, ~15397u)) ^ ~func_2().e.x);
    var_1 = 0u;
    var_1 = select(var_0.x, u_input.a, any(vec2<bool>(true, true)) | true) << (24310u % 32u);
    let var_2 = Struct_2(vec2<bool>(any(func_3(any(vec4<bool>(arg_1, false, true, true)), Struct_2(vec2<bool>(arg_1, true), Struct_1(562f, vec3<i32>(-1i, -8806i, 30388i), 321f, 75994u, vec4<u32>(u_input.d, u_input.a, var_0.x, u_input.d)), vec2<i32>(u_input.b, 2153i), u_input.b, vec4<bool>(arg_1, arg_1, true, true)))), select(arg_1, true & arg_1, true)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(step(-1000f, 1698f))) - -887f), -max(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, u_input.b), vec3<i32>(-1i, u_input.b, u_input.b)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 32705i, 12972i), vec3<i32>(23084i, -27552i, u_input.b))), -1244f, ~(~(~var_0.x)), ~vec4<u32>(min(83547u, 1u), 57880u, countOneBits(var_0.x), 87149u)), _wgslsmith_mod_vec2_i32(vec2<i32>(abs(u_input.b & u_input.b), -u_input.b), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 19325i), min(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-2147483647i, u_input.b)))), -80512i, !(!(!vec4<bool>(arg_1, true, true, true))));
    return func_2();
}

fn func_1() -> u32 {
    let var_0 = firstLeadingBit(-(~vec4<i32>(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(-1i, u_input.b, -1i)), _wgslsmith_clamp_i32(u_input.b, 2147483647i, u_input.b), 830i)));
    let var_1 = 633f;
    let var_2 = Struct_2(vec2<bool>(~u_input.d > u_input.c, all(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false)))), func_5(1000f, func_4(func_2(), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-1705f * var_1))), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, u_input.b, 0i), select(vec4<i32>(u_input.b, u_input.b, var_0.x, -9767i), var_0, vec4<bool>(true, false, false, true))), _wgslsmith_add_i32(~var_0.x, -1i)) & vec2<i32>(var_0.x, var_0.x), _wgslsmith_mult_i32(-28667i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 2147483647i << (u_input.a % 32u), i32(-1i) * -40270i, 2147483647i), ~max(var_0, vec4<i32>(-15979i, -11856i, 0i, var_0.x)))), vec4<bool>(all(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), abs(1u) != ~u_input.a, true, !func_3(var_1 > -1000f, Struct_2(vec2<bool>(true, false), Struct_1(177f, vec3<i32>(2147483647i, var_0.x, 1i), var_1, 0u, vec4<u32>(1u, u_input.c, 4294967295u, u_input.a)), var_0.wy, 1i, vec4<bool>(true, true, false, true))).x));
    var var_3 = var_2.b;
    return var_2.b.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(func_1() >> (6955u % 32u), ~(~func_1()), _wgslsmith_dot_vec4_u32(~(~(vec4<u32>(u_input.c, 4294967295u, 0u, u_input.c) & vec4<u32>(u_input.d, u_input.d, u_input.c, 0u))), ~(~func_2().e)));
    let var_1 = !((true & (_wgslsmith_f_op_f32(f32(-1f) * -1302f) > _wgslsmith_f_op_f32(round(-940f)))) && (true & any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)))));
    var var_2 = firstTrailingBit(~(-abs(u_input.b) ^ (_wgslsmith_add_i32(1i, u_input.b) | -u_input.b)));
    let var_3 = Struct_2(vec2<bool>(false, false), func_2(), vec2<i32>(~max(u_input.b, u_input.b) ^ u_input.b, 17599i), -53103i, vec4<bool>(true, func_4(func_5(_wgslsmith_f_op_f32(ceil(778f)), var_1), select(select(vec4<bool>(var_1, false, false, var_1), vec4<bool>(var_1, false, true, var_1), vec4<bool>(var_1, true, false, true)), !vec4<bool>(var_1, true, var_1, false), select(vec4<bool>(var_1, var_1, true, var_1), vec4<bool>(true, var_1, false, false), vec4<bool>(false, var_1, var_1, var_1))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(426f + 114f)))), !(u_input.a < _wgslsmith_dot_vec3_u32(var_0, vec3<u32>(0u, 1u, u_input.d))), true));
    var var_4 = u_input.b;
    var var_5 = var_3.e.xz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1263f, var_3.b.a), vec2<f32>(var_3.b.c, 563f)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1567f, 2583f), vec2<f32>(-195f, var_3.b.a)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.b.c, 1198f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(506f, 365f)))) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-551f)), -177f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b.c, 935f)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(872f, 309f)))))), ~_wgslsmith_mult_vec2_i32(var_3.c, ~_wgslsmith_add_vec2_i32(vec2<i32>(var_3.b.b.x, var_3.b.b.x), vec2<i32>(1517i, -46469i))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.b.c))), 152f), 1114f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_3.b.a, _wgslsmith_f_op_f32(-var_3.b.c)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-277f, -1631f) - _wgslsmith_div_vec2_f32(vec2<f32>(var_3.b.a, var_3.b.a), vec2<f32>(1639f, -446f)))), !var_3.e.zy)), _wgslsmith_f_op_f32(f32(-1f) * -1873f));
}

