struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: bool,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_1(~vec4<u32>(_wgslsmith_clamp_u32(~arg_0.a.x, 29959u, _wgslsmith_sub_u32(36282u, u_input.b.x)), u_input.b.x, min(_wgslsmith_div_u32(u_input.b.x, 22990u), arg_0.d ^ u_input.b.x), 0u), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.e * arg_0.e) + _wgslsmith_f_op_f32(select(arg_0.b.x, 1190f, arg_0.c))), arg_0.b.x, -265f) - arg_0.b), arg_0.c, 1u, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -504f) - 1f))))));
    let var_1 = _wgslsmith_clamp_vec3_i32(abs(select(~(~vec3<i32>(-36873i, u_input.d, u_input.d)), min(abs(u_input.c.xyx), u_input.c.zzy), true == var_0.c)), u_input.c.xxx, vec3<i32>(_wgslsmith_mod_i32(~firstTrailingBit(-6444i), ~(-1i)), 7109i >> (firstTrailingBit(abs(4294967295u)) % 32u), 0i));
    let var_2 = Struct_2(-var_1, Struct_1(vec4<u32>(32656u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(arg_0.a.x, u_input.b.x)), 0u, abs(arg_0.d)), vec4<f32>(-744f, -277f, 867f, -458f), !var_0.c | select(!var_0.c, var_0.c, true), 0u, 233f), -u_input.c.wzw);
    var var_3 = -_wgslsmith_sub_vec3_i32(reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(9755i, -1i, -1i), u_input.c.zyw)), vec3<i32>(-10021i, -u_input.a, -_wgslsmith_mult_i32(var_2.a.x, -6177i)));
    var var_4 = var_2.b.b.yx;
    return 0u;
}

fn func_2(arg_0: i32) -> vec3<i32> {
    let var_0 = Struct_1(~firstTrailingBit(vec4<u32>(~u_input.b.x, u_input.b.x >> (u_input.b.x % 32u), func_3(Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, 0u, 63231u), vec4<f32>(1131f, -1000f, 289f, 559f), true, 53532u, -1490f)), 76812u)), vec4<f32>(-504f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(115f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -789f) + -102f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -279f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -703f), -570f)), _wgslsmith_f_op_f32(2314f + _wgslsmith_f_op_f32(-1027f * 401f))), (!all(vec4<bool>(true, false, true, false)) || !all(vec2<bool>(true, false))) && select(any(vec3<bool>(true, true, true)), true, true), u_input.b.x, _wgslsmith_f_op_f32(floor(-459f)));
    let var_1 = u_input.b.x;
    let var_2 = -251f;
    var var_3 = select(select(vec2<bool>(any(vec4<bool>(true, false, var_0.c, true)), !var_0.c | false), select(select(vec2<bool>(var_0.c, false), select(vec2<bool>(var_0.c, var_0.c), vec2<bool>(var_0.c, var_0.c), var_0.c), var_0.c), select(select(vec2<bool>(false, var_0.c), vec2<bool>(var_0.c, var_0.c), var_0.c), vec2<bool>(true, true), var_0.c == var_0.c), true), var_0.b.x < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-370f, var_2))), select(!(!select(vec2<bool>(false, false), vec2<bool>(true, var_0.c), vec2<bool>(false, var_0.c))), select(!select(vec2<bool>(true, var_0.c), vec2<bool>(false, var_0.c), var_0.c), !vec2<bool>(var_0.c, false), vec2<bool>(var_0.c != false, var_1 < var_1)), vec2<bool>(false, !var_0.c)), !all(!(!vec3<bool>(var_0.c, true, var_0.c))));
    let var_4 = _wgslsmith_add_u32(u_input.b.x ^ firstTrailingBit(firstLeadingBit(89513u)), func_3(var_0));
    return u_input.c.xyz << (countOneBits(var_0.a.zyz & vec3<u32>(var_1, var_1, 55366u << (var_1 % 32u))) % vec3<u32>(32u));
}

fn func_1(arg_0: f32, arg_1: u32) -> u32 {
    var var_0 = Struct_2(u_input.c.zxy, Struct_1(~countOneBits(vec4<u32>(arg_1, arg_1, 4294967295u, 13749u) & vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x)), vec4<f32>(arg_0, -456f, -1163f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(807f * -110f)))), true, u_input.b.x, 232f), func_2(_wgslsmith_mult_i32(62746i ^ u_input.c.x, min(u_input.d, u_input.d))) << (abs(~(~u_input.b)) % vec3<u32>(32u)));
    let var_1 = !all(vec4<bool>(false, true, 556f > _wgslsmith_f_op_f32(min(-1189f, var_0.b.b.x)), true));
    var_0 = Struct_2(firstTrailingBit(u_input.c.www), var_0.b, vec3<i32>(-1i, _wgslsmith_dot_vec3_i32(u_input.c.wwz, _wgslsmith_mult_vec3_i32(vec3<i32>(1i, -8252i, u_input.a) | vec3<i32>(-27095i, 14204i, u_input.a), -vec3<i32>(-2995i, 43844i, 14030i))), ~abs(~(-2147483647i))));
    var_0 = Struct_2(abs(countOneBits(select(~vec3<i32>(var_0.c.x, 0i, var_0.a.x), _wgslsmith_div_vec3_i32(vec3<i32>(1i, -2147483647i, 1i), vec3<i32>(-11282i, var_0.a.x, -1i)), !var_1))), var_0.b, vec3<i32>(~(~42281i), _wgslsmith_dot_vec3_i32(-u_input.c.wxw << (~var_0.b.a.yyx % vec3<u32>(32u)), -vec3<i32>(-19028i, 1456i, var_0.c.x) | vec3<i32>(var_0.c.x, var_0.a.x, var_0.c.x)), reverseBits(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.c, vec4<i32>(u_input.a, -70028i, -2147483647i, u_input.a)), ~u_input.c))));
    var_0 = Struct_2(countOneBits(_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a, 2147483647i, -29515i)), u_input.c.yzz) & var_0.a), Struct_1(firstTrailingBit(~vec4<u32>(0u, 0u, 80004u, arg_1) & var_0.b.a), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_0.b.b - _wgslsmith_f_op_vec4_f32(-var_0.b.b)))), any(!(!vec3<bool>(var_1, var_1, true))), 51880u, -1515f), vec3<i32>(max(_wgslsmith_add_i32(-1i, 2147483647i), -u_input.c.x), 1i, var_0.c.x));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<u32>(func_1(-1293f, ~4294967295u), (u_input.b.x & select(u_input.b.x, 10822u, true)) ^ _wgslsmith_mod_u32(~u_input.b.x, 4294967295u), u_input.b.x, firstLeadingBit(_wgslsmith_clamp_u32(~u_input.b.x, abs(89885u), ~u_input.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-190f, -276f, -1206f, 213f))) - vec4<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(max(198f, -450f))), 1356f, -2540f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -999f)))), all(vec2<bool>(true, any(vec4<bool>(false, false, true, true)))), u_input.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(395f, 1285f)) - -2270f), _wgslsmith_f_op_f32(step(1860f, 1f))));
    var_0 = Struct_1(select(select(~abs(var_0.a), ~(~vec4<u32>(1u, u_input.b.x, var_0.a.x, 3812u)), true | var_0.c), var_0.a, vec4<bool>(!any(vec3<bool>(var_0.c, var_0.c, false)), any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, var_0.c, true), var_0.c)), (1i | u_input.c.x) != _wgslsmith_mod_i32(u_input.d, 18355i), var_0.c)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(var_0.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(abs(var_0.e)), _wgslsmith_f_op_f32(select(var_0.e, var_0.b.x, var_0.c)), _wgslsmith_f_op_f32(f32(-1f) * -381f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.e, -1480f, var_0.b.x, 522f))))), true, func_1(_wgslsmith_f_op_f32(-var_0.b.x), 14864u), _wgslsmith_f_op_f32(f32(-1f) * -499f));
    var var_1 = Struct_2(_wgslsmith_add_vec3_i32(u_input.c.wwy, abs(-vec3<i32>(u_input.c.x, -1i, 49893i))), Struct_1(var_0.a, var_0.b, all(!select(vec4<bool>(true, false, false, var_0.c), vec4<bool>(true, true, var_0.c, var_0.c), vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c))), 7733u, _wgslsmith_f_op_f32(step(var_0.e, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_0.e)), _wgslsmith_f_op_f32(abs(var_0.e))))))), countOneBits(~u_input.c.xwy));
    var_1 = Struct_2(firstTrailingBit(-(~vec3<i32>(var_1.a.x, -1532i, 3930i))), var_1.b, vec3<i32>(0i & u_input.a, _wgslsmith_sub_i32(_wgslsmith_mult_i32(var_1.c.x, 24382i), firstTrailingBit(11277i)), 2147483647i) >> (_wgslsmith_clamp_vec3_u32(var_0.a.yxz, (var_0.a.wzy >> (vec3<u32>(u_input.b.x, var_1.b.a.x, 51114u) % vec3<u32>(32u))) << (~var_1.b.a.wwz % vec3<u32>(32u)), ~var_0.a.zzy) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(min(u_input.c.ww, vec2<i32>(u_input.a & var_1.a.x, u_input.a)), -(~u_input.c.wy)));
}

