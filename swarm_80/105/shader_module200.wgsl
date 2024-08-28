struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = abs(vec3<i32>(~(-37983i), -10876i, 2147483647i)) ^ ~abs(firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 31997i, arg_2.c), vec3<i32>(1i, 14375i, 2147483647i), vec3<i32>(0i, u_input.d, 2147483647i))));
    return arg_0.c >= (i32(-1i) * -1i);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.x + -966f))))));
    let var_1 = Struct_1(arg_1.a, vec4<bool>(func_3(Struct_1(-1356f, arg_1.b, _wgslsmith_mod_i32(2147483647i, arg_1.c)), arg_1, Struct_1(-958f, !vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, arg_1.b.x), arg_1.c & 1i)), true, true, func_3(arg_1, arg_1, arg_1)), u_input.e.x);
    let var_2 = var_1.b.xz;
    var var_3 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-927i ^ var_1.c, i32(-1i) * -43701i, 1i, 7826i), ~(-vec4<i32>(u_input.e.x, -2147483647i, 51829i, 1i)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(-34785i, 48844i, -34646i, u_input.d), vec4<i32>(-19645i, var_1.c, 45608i, u_input.e.x), vec4<i32>(arg_1.c, arg_1.c, -2147483647i, arg_1.c))), _wgslsmith_clamp_vec4_i32(abs(~vec4<i32>(u_input.d, -12803i, -14330i, var_1.c)), countOneBits(vec4<i32>(-1i, u_input.d, arg_1.c, -2147483647i)) | _wgslsmith_div_vec4_i32(vec4<i32>(-21615i, 80073i, 547i, -2147483647i), vec4<i32>(-7015i, var_1.c, 2147483647i, 3976i)), vec4<i32>(-1i) * -vec4<i32>(var_1.c, u_input.d, arg_1.c, -33502i))), _wgslsmith_add_i32(var_1.c, _wgslsmith_sub_i32(~(-1175i), ~var_1.c)));
    var_3 = 15842i;
    return var_1;
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = -(i32(-1i) * -26230i);
    let var_1 = _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(round(arg_2.a))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_0.x));
    return Struct_1(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a * arg_2.a)))), !select(vec4<bool>(true, 1391f < arg_2.a, true, true), arg_2.b, arg_2.b), arg_2.c);
}

fn func_5(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-173f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1012f + _wgslsmith_div_f32(arg_2.a, 1498f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(175f, -907f)), _wgslsmith_f_op_f32(max(-786f, -245f))))))), !arg_2.b, 0i);
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, arg_1.x), vec3<f32>(1070f, var_0.a, var_0.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 836f, arg_1.x) - vec3<f32>(arg_0, arg_1.x, arg_0)))))), arg_1.x, arg_2);
    var var_2 = _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(abs(firstLeadingBit(vec3<i32>(u_input.d, var_0.c, -2147483647i))), vec3<i32>(-2147483647i, 1i, ~var_1.c)), vec3<i32>(~(-var_1.c), min(_wgslsmith_mod_i32(u_input.d, -1i), arg_2.c), 31793i)) & vec3<i32>(~(0i << (~4294967295u % 32u)), u_input.d, u_input.e.x);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1552f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.a)))))), func_2(arg_1, arg_2).b, var_2.x);
    let var_4 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~select(vec4<u32>(9425u, 13634u, u_input.c, 0u), vec4<u32>(1u, 61310u, 4294967295u, 120808u), vec4<bool>(var_0.b.x, var_3.b.x, false, var_0.b.x)) ^ ~_wgslsmith_mult_vec4_u32(vec4<u32>(38737u, u_input.b.x, 0u, 4294967295u), vec4<u32>(0u, u_input.c, 5626u, 1u)), ~(~vec4<u32>(9411u, 31080u, 35835u, u_input.b.x) << ((vec4<u32>(1u, u_input.a.x, u_input.c, u_input.b.x) & vec4<u32>(4294967295u, u_input.c, u_input.a.x, u_input.b.x)) % vec4<u32>(32u)))), ~max(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.c, 1u, u_input.b.x), vec4<u32>(1u, u_input.c, 1u, 46624u)), vec4<u32>(u_input.b.x, u_input.c, u_input.b.x, 4294967295u)), ~firstLeadingBit(vec4<u32>(u_input.c, u_input.a.x, 662u, u_input.c))));
    return Struct_1(func_4(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(var_0.a + 1000f), -722f, _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0, 1000f, arg_2.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1204f, 514f, var_3.a)), true)))), arg_2.a, arg_2).a, !(!(!vec4<bool>(var_3.b.x, var_3.b.x, arg_2.b.x, false))), reverseBits(u_input.d));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> bool {
    var var_0 = func_5(-1551f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -722f))), func_4(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1253f, arg_0.a), _wgslsmith_f_op_f32(1186f * 1000f), arg_1.b.x || false)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(arg_1.a, 585f)), -631f)), arg_0.a), 1048f, func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, arg_3.a) * vec2<f32>(arg_1.a, 816f))), Struct_1(_wgslsmith_f_op_f32(-arg_3.a), arg_0.b, u_input.e.x))));
    var_0 = func_5(arg_1.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_3.a)), arg_1.a))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.a, 405f)), arg_3.a)), func_4(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.a, -1036f, arg_1.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(636f, arg_1.a, arg_1.a) - vec3<f32>(255f, -924f, arg_3.a)), !vec3<bool>(true, var_0.b.x, false))))), arg_3.a, arg_0));
    var var_1 = Struct_1(924f, !vec4<bool>(min(4294967295u, 4294967295u) >= u_input.b.x, arg_3.b.x, any(func_2(vec2<f32>(var_0.a, -1000f), arg_1).b.yx), false), ~(~(~select(-2147483647i, -70657i, arg_0.b.x))));
    var_0 = arg_1;
    return ~firstTrailingBit(u_input.b.x) != reverseBits(~u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(!select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true), vec3<bool>(false, !all(vec2<bool>(true, false)), true | func_1(Struct_1(-1396f, vec4<bool>(true, true, true, false), u_input.e.x), Struct_1(153f, vec4<bool>(false, true, true, false), 0i), false, Struct_1(-625f, vec4<bool>(true, true, false, true), u_input.d))), func_4(vec3<f32>(_wgslsmith_f_op_f32(sign(280f)), -2158f, _wgslsmith_div_f32(-376f, -1184f)), 450f, func_5(400f, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-629f, 2212f))), Struct_1(1654f, vec4<bool>(true, true, true, true), u_input.d))).b.x), vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -810f) > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f * -1332f), -1695f, true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))), true), true);
    let var_1 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1519f, 551f)))))), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(435f, 785f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-678f, -914f))), Struct_1(-1170f, vec4<bool>(true, u_input.d < u_input.d, all(var_0), 20564u > u_input.b.x), _wgslsmith_div_i32(firstTrailingBit(u_input.e.x), firstTrailingBit(-41630i))))).b.zwz;
    var var_2 = _wgslsmith_f_op_f32(-813f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-308f * 612f)) - 196f))));
    var var_3 = _wgslsmith_clamp_vec4_u32(vec4<u32>(40304u, 59498u, (u_input.a.x >> (4294967295u % 32u)) | _wgslsmith_sub_u32(4294967295u, 1u), u_input.a.x >> (select(u_input.c, 0u, var_1.x) % 32u)), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 20999u, 27106u, 34793u), max(vec4<u32>(4294967295u, u_input.a.x, 35831u, 1u), vec4<u32>(u_input.b.x, u_input.b.x, 1u, 4294967295u)))), ~(~firstTrailingBit(vec4<u32>(u_input.c, 1u, u_input.a.x, u_input.a.x)))) << (min(~vec4<u32>(select(4294967295u, u_input.a.x, var_1.x), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 60937u), vec2<u32>(3402u, 1u)), u_input.c), vec4<u32>(u_input.a.x, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(60204u, 4294967295u, u_input.c, u_input.b.x), vec4<u32>(u_input.b.x, u_input.a.x, u_input.c, 22417u))), u_input.b.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.a.x, 4294967295u, 54273u), vec4<u32>(u_input.b.x, 16343u, 4312u, u_input.a.x)), _wgslsmith_sub_u32(u_input.a.x, u_input.b.x), ~1u))) % vec4<u32>(32u));
    let var_4 = func_2(vec2<f32>(-278f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(971f)))), func_5(_wgslsmith_f_op_f32(f32(-1f) * -523f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-784f, -578f) * vec2<f32>(899f, -474f)), Struct_1(378f, vec4<bool>(true, var_0.x, false, var_0.x), 2147483647i)).a))), func_5(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1139f, 2114f))), func_4(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, -102f, -1000f))), _wgslsmith_div_f32(958f, -1658f), func_4(vec3<f32>(-319f, 824f, -855f), 1945f, Struct_1(-1324f, vec4<bool>(var_0.x, true, true, var_1.x), -1i)))).a, vec2<f32>(271f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, -1011f)) - -607f)), Struct_1(820f, !select(vec4<bool>(var_1.x, false, true, var_1.x), vec4<bool>(true, var_1.x, var_1.x, var_0.x), var_1.x), abs(~u_input.e.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(606f, _wgslsmith_f_op_f32(trunc(var_4.a))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.a, 889f) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_4.a, 695f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.a, var_4.a) + vec2<f32>(1812f, var_4.a)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(211f, -1329f))))))), countOneBits(vec2<u32>(_wgslsmith_clamp_u32(var_3.x | 1u, _wgslsmith_clamp_u32(89351u, u_input.c, 13508u), var_3.x), 54350u)), vec4<i32>(u_input.e.x << (~(u_input.c & 102078u) % 32u), u_input.d, 19062i, ~1257i));
}

