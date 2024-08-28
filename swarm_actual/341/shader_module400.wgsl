struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(Struct_1(-1944f, vec4<bool>(true, false, true, true), 29232i, -1000f), true, Struct_1(109f, vec4<bool>(false, true, false, false), 48014i, -975f), Struct_1(-801f, vec4<bool>(true, true, true, true), 0i, 319f)), Struct_2(Struct_1(125f, vec4<bool>(true, false, true, true), 1i, 1192f), false, Struct_1(-241f, vec4<bool>(false, false, true, true), i32(-2147483648), 506f), Struct_1(699f, vec4<bool>(true, false, false, true), 2147483647i, 2113f)), Struct_2(Struct_1(-796f, vec4<bool>(false, true, false, true), i32(-2147483648), -1795f), false, Struct_1(-314f, vec4<bool>(false, true, true, false), 19012i, 1537f), Struct_1(-1000f, vec4<bool>(false, true, false, true), 84138i, -873f)), Struct_2(Struct_1(-1742f, vec4<bool>(true, true, false, false), -1i, 836f), false, Struct_1(-1292f, vec4<bool>(false, true, false, true), -19006i, -1755f), Struct_1(220f, vec4<bool>(false, true, false, false), -37882i, 745f)), Struct_2(Struct_1(-520f, vec4<bool>(false, false, true, true), -1i, 905f), true, Struct_1(-184f, vec4<bool>(true, false, true, false), -6984i, -1524f), Struct_1(-219f, vec4<bool>(true, true, false, false), 2147483647i, 798f)), Struct_2(Struct_1(-1000f, vec4<bool>(true, false, false, true), 4015i, 1310f), true, Struct_1(2066f, vec4<bool>(true, true, false, true), -3225i, -808f), Struct_1(1133f, vec4<bool>(false, true, false, true), 2147483647i, -285f)), Struct_2(Struct_1(704f, vec4<bool>(false, true, false, true), -2105i, 2873f), true, Struct_1(-355f, vec4<bool>(false, true, false, true), i32(-2147483648), -221f), Struct_1(459f, vec4<bool>(true, true, false, false), -1954i, 1054f)), Struct_2(Struct_1(-853f, vec4<bool>(false, false, false, false), -15054i, 811f), true, Struct_1(-229f, vec4<bool>(false, true, false, false), 9439i, -148f), Struct_1(-799f, vec4<bool>(false, false, false, false), -9206i, -262f)), Struct_2(Struct_1(1980f, vec4<bool>(true, false, true, false), 2147483647i, -749f), false, Struct_1(-179f, vec4<bool>(false, false, false, true), 1i, 324f), Struct_1(-295f, vec4<bool>(false, false, false, false), 31731i, -2016f)), Struct_2(Struct_1(275f, vec4<bool>(true, false, false, false), 38496i, -1872f), false, Struct_1(-1532f, vec4<bool>(false, false, true, true), -42254i, 198f), Struct_1(-602f, vec4<bool>(false, true, true, true), 7113i, -1117f)), Struct_2(Struct_1(-465f, vec4<bool>(true, false, true, true), 32704i, -681f), false, Struct_1(360f, vec4<bool>(false, true, true, false), 0i, -1547f), Struct_1(-2648f, vec4<bool>(false, false, true, false), 2147483647i, -777f)), Struct_2(Struct_1(1000f, vec4<bool>(true, false, true, false), 2147483647i, -629f), true, Struct_1(408f, vec4<bool>(false, false, false, true), -20150i, 1914f), Struct_1(1345f, vec4<bool>(true, false, true, true), 27038i, 446f)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec4<bool> {
    let var_0 = _wgslsmith_clamp_i32(-1i, -((i32(-1i) * -u_input.b) << (~(~u_input.c.x) % 32u)), 24728i);
    let var_1 = vec3<bool>(true, -u_input.b <= firstLeadingBit(-1i), any(vec3<bool>(false, false, false)));
    global1 = array<Struct_2, 12>();
    var var_2 = u_input.c.x;
    let var_3 = Struct_1(-1000f, vec4<bool>(var_1.x, any(vec2<bool>(var_1.x, !var_1.x)), true, all(select(var_1, !vec3<bool>(var_1.x, var_1.x, true), true))), countOneBits(28098i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, -2011f))));
    return vec4<bool>(!var_3.b.x, true, any(select(vec4<bool>(var_3.b.x && var_1.x, !var_3.b.x, select(var_3.b.x, false, var_1.x), true), vec4<bool>(var_1.x, false | var_3.b.x, var_3.b.x, 65929u >= u_input.a), true)), all(vec4<bool>(var_3.a > -736f, true, any(!var_1.yz), !(!var_3.b.x))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> vec3<u32> {
    global0 = arg_1.d;
    let var_0 = _wgslsmith_f_op_f32(ceil(851f));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(arg_0.c.d)))), _wgslsmith_div_f32(-1703f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_0)), 216f))))), !func_3(), abs(_wgslsmith_mult_i32(arg_3.a.c, ~(~arg_1.c))), 1000f);
    global0 = arg_3.c.a;
    var var_2 = arg_2.a;
    return _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(~countOneBits(vec3<u32>(105100u, 60945u, 1u) >> (u_input.c % vec3<u32>(32u))), ~vec3<u32>(u_input.a, u_input.a, u_input.a) | vec3<u32>(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(68349u, 1u, 4294967295u, u_input.a), vec4<u32>(u_input.a, u_input.a, 0u, u_input.c.x)), _wgslsmith_div_u32(u_input.a, u_input.c.x))), u_input.c);
}

fn func_1(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-arg_0.c.d), -1261f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.a) - _wgslsmith_f_op_f32(f32(-1f) * -400f))));
    global1 = array<Struct_2, 12>();
    let var_1 = vec2<u32>(abs(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(337u, 26620u, u_input.a) << (u_input.c % vec3<u32>(32u))), ~vec3<u32>(29223u, u_input.a, u_input.a))), 0u);
    var var_2 = ~reverseBits(vec3<u32>(1u, u_input.c.x, 0u));
    var_2 = ~(~abs(func_2(global1[_wgslsmith_index_u32(89616u, 12u)], Struct_1(var_0.x, arg_0.c.b, arg_0.a.c, arg_0.c.a), global1[_wgslsmith_index_u32(u_input.a, 12u)], arg_0))) >> (_wgslsmith_mult_vec3_u32(u_input.c, ~u_input.c) % vec3<u32>(32u));
    return arg_0.d.b;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<f32>) -> u32 {
    let var_0 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 37534u, 5101u, 1u) << (vec4<u32>(u_input.a, 2131u, u_input.c.x, 15740u) % vec4<u32>(32u)), vec4<u32>(64513u, 66807u, 0u, arg_0.x)), arg_0), vec4<u32>(arg_0.x | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 46252u), vec2<u32>(arg_0.x, 4294967295u)), _wgslsmith_mult_u32(1u, abs(arg_0.x)), _wgslsmith_sub_u32(~u_input.a, _wgslsmith_div_u32(arg_0.x, u_input.c.x)), ~u_input.a)), ~_wgslsmith_add_u32(0u, 4294967295u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -650f));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-arg_1.x), select(func_1(Struct_2(Struct_1(-340f, vec4<bool>(false, true, false, false), -20741i, -1994f), true, Struct_1(-1287f, vec4<bool>(false, true, false, false), 21026i, arg_1.x), Struct_1(173f, vec4<bool>(false, true, true, true), u_input.b, arg_1.x))), vec4<bool>((-1i & u_input.b) <= _wgslsmith_add_i32(u_input.b, 2147483647i), false, true, true), true), u_input.b, _wgslsmith_f_op_f32(-var_1));
    global1 = array<Struct_2, 12>();
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_2.d)), _wgslsmith_f_op_f32(step(943f, var_1))), vec2<f32>(_wgslsmith_f_op_f32(-470f - 253f), _wgslsmith_f_op_f32(-var_1))))), _wgslsmith_f_op_vec2_f32(trunc(arg_1.wz)), var_2.b.x));
    return _wgslsmith_dot_vec2_u32(u_input.c.xx, _wgslsmith_mod_vec2_u32(u_input.c.yz, min(arg_0.yy, vec2<u32>(_wgslsmith_mod_u32(4294967295u, var_0), u_input.a << (4294967295u % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~93502i;
    let var_1 = func_4(_wgslsmith_add_vec4_u32(~select(countOneBits(vec4<u32>(u_input.c.x, 5951u, u_input.c.x, u_input.a)), vec4<u32>(1u, 0u, u_input.a, u_input.c.x) >> (vec4<u32>(1u, u_input.a, 4294967295u, u_input.c.x) % vec4<u32>(32u)), func_1(Struct_2(Struct_1(602f, vec4<bool>(false, true, false, true), u_input.b, 247f), true, Struct_1(1621f, vec4<bool>(false, true, false, false), var_0, 585f), Struct_1(1263f, vec4<bool>(false, true, true, false), u_input.b, 919f)))), ~select(vec4<u32>(u_input.c.x, 0u, u_input.a, 4294967295u) & vec4<u32>(u_input.a, 0u, u_input.c.x, u_input.c.x), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 60974u, 0u, 5954u), vec4<u32>(4294967295u, u_input.a, u_input.c.x, u_input.c.x)), true)), vec4<f32>(_wgslsmith_div_f32(1237f, _wgslsmith_div_f32(1000f, 1f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1054f * 164f), _wgslsmith_f_op_f32(sign(-489f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-594f)))) + 212f), -1000f));
    var var_2 = _wgslsmith_dot_vec3_u32(func_2(global1[_wgslsmith_index_u32(var_1, 12u)], Struct_1(-1040f, func_3(), var_0, _wgslsmith_f_op_f32(f32(-1f) * -3172f)), Struct_2(Struct_1(-1199f, vec4<bool>(false, true, true, true), -21488i, -1000f), -27623i < var_0, Struct_1(-1233f, vec4<bool>(true, true, false, false), u_input.b, 432f), Struct_1(-2712f, vec4<bool>(true, false, false, true), 675i, -829f)), Struct_2(Struct_1(731f, vec4<bool>(true, true, false, false), var_0, 184f), any(vec2<bool>(true, false)), Struct_1(191f, vec4<bool>(false, true, true, false), u_input.b, -1769f), Struct_1(383f, vec4<bool>(false, false, true, false), 1i, -1240f))) ^ func_2(global1[_wgslsmith_index_u32(~(~var_1), 12u)], Struct_1(_wgslsmith_f_op_f32(min(-1000f, 147f)), vec4<bool>(true, true, false, true), max(u_input.b, u_input.b), _wgslsmith_f_op_f32(f32(-1f) * -1105f)), global1[_wgslsmith_index_u32(func_4(vec4<u32>(33140u, 4294967295u, 58025u, 4294967295u), vec4<f32>(407f, 218f, -1000f, 753f)) >> (abs(1u) % 32u), 12u)], global1[_wgslsmith_index_u32(var_1, 12u)]), u_input.c);
    let var_3 = Struct_1(1f, !vec4<bool>(true, true, select(true, false, true), true), u_input.b, _wgslsmith_f_op_f32(-1f));
    global0 = _wgslsmith_f_op_f32(-var_3.a);
    var var_4 = global1[_wgslsmith_index_u32(~func_4(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(0u, 668u, u_input.a, 51225u)), vec4<u32>(~var_1, _wgslsmith_mod_u32(3034u, u_input.a), ~var_1, 509u)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(sign(var_3.a)), var_3.a, -478f, _wgslsmith_f_op_f32(var_3.a - var_3.a))))), 12u)];
    let var_5 = select(!vec3<bool>(!(0u <= u_input.c.x), any(var_3.b.xyz) | (var_4.c.a <= -1373f), all(var_3.b.zw)), var_4.a.b.yyy, var_4.d.b.wyy);
    let var_6 = _wgslsmith_add_u32(reverseBits(var_1) >> (_wgslsmith_add_u32(func_2(Struct_2(Struct_1(787f, var_3.b, var_0, -1000f), var_4.c.b.x, var_3, Struct_1(var_4.c.d, var_4.a.b, 2147483647i, var_3.d)), var_3, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, u_input.a), 12u)], global1[_wgslsmith_index_u32(u_input.a, 12u)]).x, var_1) % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(~84420u, 0u), vec2<u32>(47997u, _wgslsmith_div_u32(~u_input.a, func_4(vec4<u32>(58503u, 26162u, var_1, var_1), vec4<f32>(var_3.d, var_3.d, var_4.c.a, var_3.a))))));
    var var_7 = Struct_2(Struct_1(323f, vec4<bool>(false, all(vec2<bool>(false, false)), all(!var_3.b.yyw), !var_3.b.x | (-1i < u_input.b)), ~var_0, 523f), (i32(-1i) * -select(-2147483647i, var_4.c.c, true)) < -(-24907i >> (u_input.c.x % 32u)), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1330f) + _wgslsmith_f_op_f32(-var_3.d)))), var_4.a.b, firstLeadingBit(2867i), -1718f), Struct_1(-2207f, !var_4.a.b, 16194i, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-460f, var_4.a.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, ~65000u, ~vec2<i32>(0i, _wgslsmith_add_i32(u_input.b, countOneBits(var_3.c))), _wgslsmith_f_op_f32(var_3.d + 997f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_3.a, 645f), vec2<f32>(1203f, -1000f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(var_7.c.d, var_4.c.a), vec2<f32>(-1141f, var_7.a.a)))))))));
}

