struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: bool,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_5 {
    a: vec2<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(463u), Struct_3(61344u), Struct_3(59626u), Struct_3(46903u), Struct_3(50485u), Struct_3(3770u), Struct_3(0u), Struct_3(1u), Struct_3(1u), Struct_3(13406u), Struct_3(29223u), Struct_3(1u), Struct_3(88278u), Struct_3(1u), Struct_3(18483u), Struct_3(36707u), Struct_3(1345u), Struct_3(7178u), Struct_3(0u), Struct_3(53421u), Struct_3(60982u), Struct_3(4294967295u), Struct_3(0u));

var<private> global1: array<i32, 8>;

var<private> global2: array<Struct_4, 20> = array<Struct_4, 20>(Struct_4(vec2<f32>(-154f, -1000f), Struct_1(17452u, true)), Struct_4(vec2<f32>(-1058f, -777f), Struct_1(30833u, true)), Struct_4(vec2<f32>(-353f, 601f), Struct_1(28802u, false)), Struct_4(vec2<f32>(-861f, -900f), Struct_1(45717u, false)), Struct_4(vec2<f32>(131f, 530f), Struct_1(34846u, false)), Struct_4(vec2<f32>(1747f, 1000f), Struct_1(41654u, true)), Struct_4(vec2<f32>(1000f, 1811f), Struct_1(1u, true)), Struct_4(vec2<f32>(803f, 106f), Struct_1(5699u, false)), Struct_4(vec2<f32>(-248f, -730f), Struct_1(0u, false)), Struct_4(vec2<f32>(1298f, 548f), Struct_1(4294967295u, false)), Struct_4(vec2<f32>(850f, -1167f), Struct_1(29321u, false)), Struct_4(vec2<f32>(-263f, -445f), Struct_1(0u, true)), Struct_4(vec2<f32>(639f, -1000f), Struct_1(52122u, false)), Struct_4(vec2<f32>(1191f, -789f), Struct_1(0u, false)), Struct_4(vec2<f32>(1151f, -150f), Struct_1(47724u, true)), Struct_4(vec2<f32>(359f, 112f), Struct_1(56394u, false)), Struct_4(vec2<f32>(381f, 519f), Struct_1(27925u, true)), Struct_4(vec2<f32>(-488f, 896f), Struct_1(44414u, false)), Struct_4(vec2<f32>(-414f, 576f), Struct_1(35749u, false)), Struct_4(vec2<f32>(705f, 1087f), Struct_1(13500u, false)));

var<private> global3: array<f32, 20>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: Struct_4) -> bool {
    let var_0 = _wgslsmith_sub_vec4_i32(max(abs(~vec4<i32>(-1i, 17378i, 3903i, u_input.a)), ~(vec4<i32>(-10628i, -25513i, -7780i, global1[_wgslsmith_index_u32(arg_2.b.a, 8u)]) >> (u_input.d % vec4<u32>(32u)))) >> (vec4<u32>(0u, arg_2.b.a, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b.a, u_input.b, 5294u, 18765u), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.b.a, u_input.d.x, arg_2.b.a, u_input.d.x), vec4<u32>(14824u, arg_2.b.a, 0u, 0u), u_input.d)), 4294967295u | u_input.b) % vec4<u32>(32u)), max(vec4<i32>(1i, countOneBits(u_input.a), _wgslsmith_div_i32(1i, global1[_wgslsmith_index_u32(u_input.b, 8u)]), u_input.e), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e, 82452i, global1[_wgslsmith_index_u32(arg_2.b.a, 8u)], global1[_wgslsmith_index_u32(arg_2.b.a, 8u)]) ^ vec4<i32>(global1[_wgslsmith_index_u32(30774u, 8u)], global1[_wgslsmith_index_u32(arg_2.b.a, 8u)], u_input.a, global1[_wgslsmith_index_u32(arg_2.b.a, 8u)]), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(4294967295u, 8u)], 2147483647i, u_input.e), vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(arg_2.b.a, 8u)], 42405i, u_input.a)))) | vec4<i32>(u_input.e, _wgslsmith_dot_vec4_i32(-vec4<i32>(-34563i, 35745i, 3057i, 1i), vec4<i32>(u_input.a, u_input.a, u_input.a, 21092i) | vec4<i32>(global1[_wgslsmith_index_u32(22126u, 8u)], u_input.a, u_input.a, global1[_wgslsmith_index_u32(14420u, 8u)])), u_input.e, ~firstTrailingBit(-21061i)));
    var var_1 = vec3<f32>(1129f, _wgslsmith_f_op_f32(f32(-1f) * -898f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(333f, 1072f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.x * _wgslsmith_f_op_f32(-arg_2.a.x)))));
    let var_2 = -8048i;
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global3[_wgslsmith_index_u32(arg_2.b.a, 20u)], arg_2.a.x, arg_2.a.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.x, var_1.x, var_1.x) - vec3<f32>(-2339f, global3[_wgslsmith_index_u32(arg_2.b.a, 20u)], arg_2.a.x)), _wgslsmith_div_vec3_f32(vec3<f32>(1456f, var_1.x, 2553f), vec3<f32>(global3[_wgslsmith_index_u32(0u, 20u)], 515f, arg_2.a.x)))))));
    global3 = array<f32, 20>();
    return !(!all(vec4<bool>(true, all(vec3<bool>(true, false, arg_1.x)), true, true)));
}

fn func_2(arg_0: vec2<u32>) -> u32 {
    global1 = array<i32, 8>();
    var var_0 = !select(!vec2<bool>(false, select(true, true, true)), select(vec2<bool>(true, true), vec2<bool>(true, func_3(vec3<bool>(true, true, false), vec2<bool>(true, false), global2[_wgslsmith_index_u32(u_input.b, 20u)])), false), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), true), vec2<bool>(global3[_wgslsmith_index_u32(arg_0.x, 20u)] <= global3[_wgslsmith_index_u32(arg_0.x, 20u)], select(false, true, true)), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), any(vec3<bool>(false, true, true)))));
    var_0 = vec2<bool>(!var_0.x, false);
    var_0 = vec2<bool>(!var_0.x, var_0.x);
    var_0 = !(!vec2<bool>(!(!var_0.x), !all(vec2<bool>(false, false))));
    return u_input.c.x;
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec4_u32(~select(countOneBits(max(u_input.d, vec4<u32>(u_input.c.x, arg_0.a, arg_0.a, 0u))), _wgslsmith_add_vec4_u32(u_input.d, u_input.d), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), false)), min(vec4<u32>(4294967295u, func_2(u_input.d.yy >> (vec2<u32>(arg_0.a, 0u) % vec2<u32>(32u))), _wgslsmith_clamp_u32(9514u, 4294967295u, u_input.c.x), arg_0.a), ~vec4<u32>(~82048u, 0u, ~4294967295u, min(u_input.b, arg_0.a))));
    var var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, var_0.x, 1u), u_input.d.zxz), 20u)], _wgslsmith_f_op_f32(-328f - _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(76431u, 20u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-448f, -568f), vec2<f32>(global3[_wgslsmith_index_u32(43307u, 20u)], 1167f)))))))), 400f);
    global1 = array<i32, 8>();
    let var_2 = true;
    var var_3 = min(~1i, 1i);
    return Struct_1(abs(var_0.x), !(!(all(vec2<bool>(var_2, var_2)) && (var_0.x < 34777u))));
}

fn func_1(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~4294967295u, ~u_input.d.x), 20u)]), arg_0.x), func_4(global0[_wgslsmith_index_u32(abs(func_2(~u_input.c)), 23u)], 1i));
    var var_1 = Struct_2(vec4<i32>(-select(global1[_wgslsmith_index_u32(u_input.b, 8u)], -5764i, true), abs(-2147483647i), 1i, 41230i) << (~reverseBits(u_input.d) % vec4<u32>(32u)), vec3<f32>(-1354f, _wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.b, 20u)], _wgslsmith_f_op_f32(abs(-391f))), arg_0.x), false);
    var var_2 = select(!select(select(vec3<bool>(true, false, true), vec3<bool>(var_0.b.b, false, true), all(vec4<bool>(var_0.b.b, true, true, false))), !vec3<bool>(var_0.b.b, var_0.b.b, var_0.b.b), true), select(vec3<bool>(any(select(vec2<bool>(false, var_1.c), vec2<bool>(false, false), var_0.b.b)), true, false), !vec3<bool>(true, func_4(Struct_3(u_input.b), u_input.a).b, true), !select(true, var_1.c, select(var_0.b.b, true, true))), !(!(!select(vec3<bool>(var_0.b.b, var_1.c, var_1.c), vec3<bool>(var_1.c, false, var_0.b.b), false))));
    let var_3 = var_0.b.b;
    let var_4 = true;
    return Struct_2(_wgslsmith_sub_vec4_i32(max(-var_1.a, abs(vec4<i32>(-26291i, global1[_wgslsmith_index_u32(u_input.b, 8u)], global1[_wgslsmith_index_u32(63273u, 8u)], u_input.a))), select(vec4<i32>(91719i, global1[_wgslsmith_index_u32(~1u, 8u)], -2147483647i, 2147483647i), var_1.a, vec4<bool>(global1[_wgslsmith_index_u32(var_0.b.a, 8u)] > -2147483647i, 28185i != var_1.a.x, var_1.c, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.wyw)), var_2.x);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_5, arg_2: vec4<i32>, arg_3: vec4<i32>) -> bool {
    global3 = array<f32, 20>();
    var var_0 = vec4<bool>(2147483647i != _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_0.a.x, -1i, arg_3.x, u_input.e), vec4<i32>(u_input.a, 43650i, 1i, arg_2.x)), arg_3.x >> (78227u % 32u)), ~reverseBits(~20758u) < _wgslsmith_mod_u32(u_input.d.x, _wgslsmith_mult_u32(u_input.b, 4294967295u & u_input.c.x)), ~29223u < countOneBits(u_input.b), arg_0.c);
    var_0 = !(!(!vec4<bool>(var_0.x, true, true, arg_0.c)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-331f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-997f * _wgslsmith_f_op_f32(-arg_1.b))), -390f, var_0.x)));
    var var_2 = ~vec3<u32>(~(~4294967295u), min(13625u, ~(~0u)), 1u);
    return all(select(vec2<bool>(false, any(vec2<bool>(false, true))), vec2<bool>(true, func_3(select(var_0.zzw, var_0.xzz, var_0.xzy), !vec2<bool>(false, arg_0.c), Struct_4(arg_1.a, Struct_1(var_2.x, var_0.x)))), true));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_4, 20>();
    global1 = array<i32, 8>();
    var var_0 = !vec3<bool>(func_5(func_1(vec4<f32>(-1236f, 739f, 1951f, global3[_wgslsmith_index_u32(u_input.d.x, 20u)])), Struct_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 20u)], -1176f) * vec2<f32>(global3[_wgslsmith_index_u32(u_input.b, 20u)], 575f)), global3[_wgslsmith_index_u32(84141u >> (0u % 32u), 20u)]), -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a), vec4<i32>(u_input.a, -2405i, 38427i, global1[_wgslsmith_index_u32(u_input.c.x, 8u)])), -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.e, global1[_wgslsmith_index_u32(4294967295u, 8u)], u_input.e, global1[_wgslsmith_index_u32(u_input.b, 8u)]), vec4<i32>(global1[_wgslsmith_index_u32(u_input.b, 8u)], -20912i, 0i, u_input.a))), !((u_input.a > u_input.e) | false), !all(vec4<bool>(true, true, true, true)));
    var_0 = vec3<bool>(!var_0.x, true, !var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(~55171u, 20u)], _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(1u, 20u)]))), _wgslsmith_f_op_f32(round(-1768f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(0u, 20u)], global3[_wgslsmith_index_u32(1u, 20u)]) - vec2<f32>(-264f, 1544f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 20u)], global3[_wgslsmith_index_u32(0u, 20u)]))))), ~(~u_input.d));
}

