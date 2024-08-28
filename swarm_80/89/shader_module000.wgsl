struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4> = array<i32, 4>(0i, i32(-2147483648), 32985i, 2147483647i);

var<private> global1: array<vec3<i32>, 18> = array<vec3<i32>, 18>(vec3<i32>(876i, -7699i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -20589i, 0i), vec3<i32>(32038i, 37226i, -1i), vec3<i32>(-1i, -13360i, 1i), vec3<i32>(1i, 29177i, 32987i), vec3<i32>(-1i, 2425i, -15960i), vec3<i32>(-1i, -62284i, i32(-2147483648)), vec3<i32>(2147483647i, 4940i, 0i), vec3<i32>(7521i, 1i, 24671i), vec3<i32>(8042i, -17375i, 48112i), vec3<i32>(-30378i, 19091i, -3841i), vec3<i32>(-1i, 0i, 0i), vec3<i32>(48472i, 1i, -39429i), vec3<i32>(-32016i, 0i, -17225i), vec3<i32>(-5083i, -9664i, 35067i), vec3<i32>(-1i, i32(-2147483648), 1i), vec3<i32>(-7547i, 12582i, 1i), vec3<i32>(8968i, 51955i, 0i));

var<private> global2: array<Struct_2, 12>;

var<private> global3: f32;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec3<i32>) -> i32 {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(378f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-910f)))), 1262f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(min(-453f, -244f)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -1097f))))));
    var_0 = vec3<f32>(var_0.x, -1988f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(floor(var_0.x)))));
    var var_1 = vec4<i32>(_wgslsmith_clamp_i32(arg_1.x, -2147483647i >> (firstLeadingBit(arg_0.b) % 32u), _wgslsmith_sub_i32(0i, _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(1u, 4u)], arg_1.x))) ^ (arg_2.x | 1i), _wgslsmith_dot_vec2_i32(min(arg_2.xy, vec2<i32>(arg_1.x, 0i)), vec2<i32>(_wgslsmith_sub_i32(arg_2.x, global0[_wgslsmith_index_u32(8598u, 4u)]), 2147483647i)) ^ -1i, max(~arg_1.x, -1i), arg_2.x);
    var_1 = firstLeadingBit(arg_1) ^ vec4<i32>(24228i, arg_2.x | select(_wgslsmith_mult_i32(-38643i, u_input.a.x), arg_1.x, all(vec3<bool>(arg_0.a, arg_0.c, true))), -34600i, arg_1.x);
    var var_2 = any(!select(select(vec2<bool>(arg_0.a, arg_0.c), vec2<bool>(false, true), !vec2<bool>(arg_0.a, false)), vec2<bool>(any(vec4<bool>(true, arg_0.c, false, arg_0.a)), true), !select(vec2<bool>(arg_0.a, arg_0.c), vec2<bool>(false, arg_0.c), false)));
    return ~(arg_2.x << (((abs(u_input.b.x) & _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.b, 0u, 33953u), vec4<u32>(38802u, 4294967295u, 25438u, 0u))) & _wgslsmith_sub_u32(u_input.d.x, _wgslsmith_clamp_u32(10313u, arg_0.b, u_input.c))) % 32u));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>) -> i32 {
    global1 = array<vec3<i32>, 18>();
    let var_0 = Struct_3(-1400i & firstTrailingBit(u_input.a.x), Struct_1(arg_1.a, arg_0 >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, arg_0) * _wgslsmith_div_f32(636f, arg_0))), arg_1, global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.b.x, _wgslsmith_mult_u32(0u, 41211u | arg_1.a.x)), 12u)]);
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1495f + 2573f)));
    let var_2 = Struct_3(_wgslsmith_clamp_i32(func_3(Struct_2(false, 183u, true), vec4<i32>(_wgslsmith_mod_i32(1i, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-20210i, u_input.a.x, 0i, u_input.a.x), vec4<i32>(-34739i, u_input.a.x, 0i, -2147483647i)), 1i, global0[_wgslsmith_index_u32(u_input.b.x, 4u)]), ~(vec3<i32>(-2147483647i, u_input.a.x, -56290i) << (arg_1.a % vec3<u32>(32u)))), _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 4u)], -2147483647i)), ~(-vec2<i32>(u_input.a.x, 2147483647i))), _wgslsmith_dot_vec2_i32(-(~u_input.a), ~_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 0i), u_input.a))), var_0.c, Struct_1(vec3<u32>(~8179u, 1u, max(firstTrailingBit(u_input.c), ~4294967295u)), _wgslsmith_f_op_f32(sign(753f)) == _wgslsmith_f_op_f32(step(var_1, 1f))), Struct_2(var_0.b.b, 6520u, any(arg_2.xx)));
    var var_3 = var_2.b;
    return _wgslsmith_sub_i32(reverseBits(firstTrailingBit(_wgslsmith_div_i32(1i, var_0.a))), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~1u, ~_wgslsmith_clamp_u32(u_input.b.x ^ arg_1.a.x, ~1u, 40077u)), 4u)]);
}

fn func_1(arg_0: bool, arg_1: u32) -> Struct_3 {
    global2 = array<Struct_2, 12>();
    let var_0 = abs((global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, arg_1, arg_1), vec3<u32>(arg_1, arg_1, 37038u)), 4294967295u, 63152u), 4u)] ^ -u_input.a.x) | 0i);
    let var_1 = vec4<i32>(firstLeadingBit(-_wgslsmith_clamp_i32(min(-2147483647i, global0[_wgslsmith_index_u32(0u, 4u)]), global0[_wgslsmith_index_u32(u_input.d.x, 4u)] >> (arg_1 % 32u), countOneBits(u_input.a.x))), var_0, 12362i, 55264i);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -450f);
    var var_3 = Struct_3(func_2(_wgslsmith_div_f32(-556f, _wgslsmith_f_op_f32(ceil(-1000f))), Struct_1(vec3<u32>(u_input.b.x, u_input.d.x, 0u), true), vec4<bool>(true, arg_1 < 47826u, u_input.c == 1u, true || arg_0)) | abs(min(_wgslsmith_mod_i32(-23041i, var_1.x), u_input.a.x << (u_input.b.x % 32u))), Struct_1(~(~abs(vec3<u32>(arg_1, 0u, arg_1))), any(select(select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(false, false, arg_0, true), vec4<bool>(false, false, true, arg_0)), !vec4<bool>(arg_0, arg_0, false, false), !vec4<bool>(arg_0, false, arg_0, arg_0)))), Struct_1(~(~select(vec3<u32>(4294967295u, arg_1, arg_1), vec3<u32>(arg_1, 0u, arg_1), arg_0)), all(!vec2<bool>(arg_0, true))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(105642u, arg_1)), vec2<u32>(0u, arg_1)), u_input.d), 12u)]);
    return Struct_3(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0, 2147483647i, global0[_wgslsmith_index_u32(4294967295u, 4u)], var_1.x), vec4<i32>(var_1.x, var_0, 1i, global0[_wgslsmith_index_u32(u_input.b.x, 4u)])), max(-2147483647i, -2547i)), vec2<i32>(-2673i, -2147483647i), -_wgslsmith_add_vec2_i32(var_1.zx, vec2<i32>(44598i, var_3.a))), _wgslsmith_div_vec2_i32(var_1.zy, reverseBits(countOneBits(vec2<i32>(2147483647i, 38202i))))), Struct_1(~vec3<u32>(152092u, 116513u >> (arg_1 % 32u), 1u), true), var_3.c, global2[_wgslsmith_index_u32(var_3.d.b, 12u)]);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>) -> i32 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(378f)), _wgslsmith_f_op_f32(step(911f, 1090f)))) + 367f), _wgslsmith_f_op_f32(floor(-2498f)))), true, !all(vec3<bool>(true, u_input.c == u_input.b.x, true)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, 113f) * vec2<f32>(-637f, 2209f))))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(171f, var_0.a) * _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -1000f), vec2<f32>(var_0.a, var_0.a)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, var_0.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_0.a) + vec2<f32>(var_0.a, -1084f)))))));
    global3 = var_0.a;
    var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.a, var_0.a)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) + vec2<f32>(var_1.x, -1025f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1248f, var_1.x) + vec2<f32>(var_1.x, 103f))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-909f, var_0.a, false)), _wgslsmith_f_op_f32(-var_1.x))), var_1.x), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.x, -1485f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1362f, var_0.a) * vec2<f32>(-134f, var_1.x)), true))))), select(vec2<bool>(any(vec3<bool>(var_0.c, var_0.b, false)), true), select(select(select(vec2<bool>(arg_0.c.b, false), vec2<bool>(var_0.b, var_0.b), vec2<bool>(false, true)), vec2<bool>(true, arg_0.b.b), all(vec4<bool>(true, false, arg_0.b.b, var_0.c))), !vec2<bool>(var_0.b, false), !(!vec2<bool>(false, var_0.c))), !vec2<bool>(true, all(vec4<bool>(false, arg_0.d.a, true, true))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 1819f));
    return func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a - -1000f))), func_1(arg_0.b.b, arg_0.b.a.x).b, !select(vec4<bool>(false, !arg_0.d.a, true, var_0.b), select(vec4<bool>(true, false, arg_0.b.b, var_0.c), select(vec4<bool>(true, false, arg_0.b.b, var_0.b), vec4<bool>(true, var_0.b, arg_0.d.a, var_0.c), vec4<bool>(false, arg_0.d.c, false, true)), select(vec4<bool>(true, false, var_0.b, true), vec4<bool>(var_0.b, false, var_0.c, false), vec4<bool>(true, false, false, true))), vec4<bool>(false, true, arg_0.b.b, all(vec3<bool>(true, false, arg_0.d.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(~u_input.a, ~(~vec2<i32>(-1i, -167i))), _wgslsmith_sub_vec2_i32(vec2<i32>(func_4(func_1(true, u_input.b.x), u_input.a), -49946i), vec2<i32>(~u_input.a.x, ~u_input.a.x)));
    let var_1 = u_input.c;
    var var_2 = all(select(vec2<bool>(any(vec4<bool>(true, true, true, true)), false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true)));
    var var_3 = func_1(true, var_1 ^ 30491u).c;
    var var_4 = _wgslsmith_mult_i32(0i, _wgslsmith_div_i32(-var_0.x, ~(~u_input.a.x)));
    var var_5 = 469f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(~52501u, var_1), var_3.a.xz), vec2<u32>(u_input.d.x, (17458u | var_1) << (max(20636u, u_input.d.x) % 32u))), _wgslsmith_mult_vec3_i32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.d.x, ~u_input.c), ~(~var_3.a.x)), 18u)], vec3<i32>(-1i, reverseBits(-2147483647i), _wgslsmith_div_i32(-16498i, ~u_input.a.x))));
}

