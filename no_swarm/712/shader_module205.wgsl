struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(-1000f, vec3<i32>(2147483647i, i32(-2147483648), 2147483647i), false, 7307u), Struct_2(-1024f, vec3<i32>(-27078i, 0i, 1i), false, 1u), Struct_2(1169f, vec3<i32>(i32(-2147483648), 0i, -14654i), false, 0u), Struct_2(407f, vec3<i32>(-9170i, 20550i, 15421i), false, 54386u), Struct_2(-474f, vec3<i32>(2147483647i, -20834i, 2147483647i), true, 0u), Struct_2(-889f, vec3<i32>(i32(-2147483648), 23949i, 24019i), true, 1807u), Struct_2(590f, vec3<i32>(-24227i, -48606i, 2147483647i), true, 0u), Struct_2(-207f, vec3<i32>(4846i, i32(-2147483648), 2147483647i), true, 4294967295u), Struct_2(1804f, vec3<i32>(67185i, -12069i, 4282i), false, 36271u), Struct_2(-1808f, vec3<i32>(3675i, 1i, 0i), false, 39349u), Struct_2(1233f, vec3<i32>(6090i, 39700i, 1i), false, 4641u), Struct_2(1206f, vec3<i32>(5008i, 0i, -24946i), false, 0u), Struct_2(-1027f, vec3<i32>(-15500i, 21594i, 0i), false, 20000u), Struct_2(-222f, vec3<i32>(1i, i32(-2147483648), -1895i), false, 4294967295u), Struct_2(1000f, vec3<i32>(-1579i, i32(-2147483648), 52855i), false, 4294967295u), Struct_2(323f, vec3<i32>(0i, -1i, 2147483647i), true, 0u), Struct_2(271f, vec3<i32>(0i, -1i, i32(-2147483648)), true, 0u), Struct_2(1068f, vec3<i32>(-47164i, i32(-2147483648), 1i), true, 7710u), Struct_2(-364f, vec3<i32>(0i, -7513i, -20480i), false, 64982u), Struct_2(-155f, vec3<i32>(-60175i, -3788i, 15091i), false, 0u), Struct_2(1443f, vec3<i32>(1i, -1i, 28179i), false, 1u), Struct_2(266f, vec3<i32>(27714i, i32(-2147483648), -20935i), true, 19721u), Struct_2(634f, vec3<i32>(24779i, 1i, 22119i), true, 0u), Struct_2(364f, vec3<i32>(i32(-2147483648), 4062i, -17653i), false, 18596u), Struct_2(-113f, vec3<i32>(1i, 2147483647i, 2147483647i), false, 37254u), Struct_2(174f, vec3<i32>(-1i, 0i, 1i), false, 80616u), Struct_2(-963f, vec3<i32>(-34023i, -33687i, -17033i), true, 0u), Struct_2(1550f, vec3<i32>(38927i, 2147483647i, 1i), true, 0u), Struct_2(647f, vec3<i32>(1i, 4902i, -34294i), true, 1u), Struct_2(558f, vec3<i32>(1i, 1i, 2147483647i), true, 24530u), Struct_2(1078f, vec3<i32>(37407i, 61092i, -49120i), false, 37732u));

var<private> global1: vec3<i32> = vec3<i32>(-41882i, 2147483647i, 2147483647i);

var<private> global2: array<vec2<f32>, 32>;

var<private> global3: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(-1340f, vec4<i32>(1i, 13544i, 20699i, 2147483647i), vec2<i32>(i32(-2147483648), -1i)), Struct_1(1361f, vec4<i32>(0i, -53765i, -55662i, -37210i), vec2<i32>(-67213i, -1i)), Struct_1(440f, vec4<i32>(-1i, 32917i, i32(-2147483648), 2147483647i), vec2<i32>(-1i, 2147483647i)), Struct_1(-427f, vec4<i32>(-1i, 16521i, -4838i, -23521i), vec2<i32>(1i, i32(-2147483648))), Struct_1(1486f, vec4<i32>(i32(-2147483648), 22754i, 27239i, -1i), vec2<i32>(9888i, -16107i)), Struct_1(-649f, vec4<i32>(2147483647i, 0i, 25465i, -1i), vec2<i32>(6471i, -1i)), Struct_1(334f, vec4<i32>(11503i, 1i, 0i, 1i), vec2<i32>(-26189i, -1i)), Struct_1(555f, vec4<i32>(1i, -21610i, i32(-2147483648), 24794i), vec2<i32>(0i, 0i)), Struct_1(935f, vec4<i32>(-34158i, i32(-2147483648), 12926i, 2147483647i), vec2<i32>(-1i, 4541i)), Struct_1(522f, vec4<i32>(i32(-2147483648), 2779i, i32(-2147483648), 2147483647i), vec2<i32>(1i, 1662i)), Struct_1(174f, vec4<i32>(i32(-2147483648), 18874i, 31528i, -37560i), vec2<i32>(i32(-2147483648), 25198i)), Struct_1(-970f, vec4<i32>(-1i, 0i, 0i, 0i), vec2<i32>(1i, -36397i)), Struct_1(-175f, vec4<i32>(-1i, -1i, -12333i, -33692i), vec2<i32>(2147483647i, -14613i)), Struct_1(-390f, vec4<i32>(-14319i, -1i, -1i, 0i), vec2<i32>(0i, -17627i)), Struct_1(-480f, vec4<i32>(0i, -9030i, -1i, -20416i), vec2<i32>(1i, 12050i)), Struct_1(-794f, vec4<i32>(0i, -12556i, 1i, 38745i), vec2<i32>(0i, 0i)), Struct_1(115f, vec4<i32>(-7223i, 3067i, 2147483647i, -987i), vec2<i32>(26223i, 3202i)), Struct_1(-1639f, vec4<i32>(42411i, -30499i, -1i, -16773i), vec2<i32>(-36940i, 16171i)), Struct_1(-2443f, vec4<i32>(-19629i, 2147483647i, -1i, i32(-2147483648)), vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(1157f, vec4<i32>(2147483647i, i32(-2147483648), -25286i, -3166i), vec2<i32>(1i, -1i)), Struct_1(-502f, vec4<i32>(-41179i, -1i, 10945i, -4941i), vec2<i32>(32840i, 25846i)), Struct_1(1130f, vec4<i32>(-12038i, 1i, 2147483647i, 22627i), vec2<i32>(11326i, 0i)), Struct_1(964f, vec4<i32>(0i, i32(-2147483648), 30461i, i32(-2147483648)), vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(459f, vec4<i32>(i32(-2147483648), -38538i, 31063i, 10119i), vec2<i32>(-1815i, 13808i)));

var<private> global4: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(-980f, vec3<i32>(0i, -1i, 2147483647i), false, 0u), Struct_2(-1551f, vec3<i32>(-1i, 17826i, 2147483647i), true, 69473u), Struct_2(-1157f, vec3<i32>(-37364i, 31185i, -43519i), true, 0u), Struct_2(-190f, vec3<i32>(78219i, i32(-2147483648), 5182i), true, 4294967295u), Struct_2(-674f, vec3<i32>(39718i, i32(-2147483648), -39587i), false, 22542u), Struct_2(-2007f, vec3<i32>(-1i, -74119i, 0i), true, 48265u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    return -492f;
}

fn func_2(arg_0: i32) -> vec3<f32> {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, _wgslsmith_div_u32(4294967295u, abs(~u_input.b))), 24u)];
    global2 = array<vec2<f32>, 32>();
    global1 = var_0.b.zzx;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(func_3()), (abs(_wgslsmith_div_vec3_i32(u_input.a.zyz, vec3<i32>(arg_0, arg_0, 1307i))) >> (vec3<u32>(~u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 0u, u_input.b), vec4<u32>(u_input.b, 4294967295u, 28964u, u_input.b)), abs(u_input.b)) % vec3<u32>(32u))) << (vec3<u32>(abs(4294967295u), u_input.b, ~reverseBits(4294967295u)) % vec3<u32>(32u)), all(!vec2<bool>(var_0.a > -172f, false)), u_input.b);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -381f), -_wgslsmith_div_vec4_i32(abs(vec4<i32>(var_1.b.x, arg_0, arg_0, -8905i)) & var_0.b, vec4<i32>(1i, ~43307i, reverseBits(var_1.b.x), -var_1.b.x)), vec2<i32>(~global1.x, -1i) & firstLeadingBit(var_0.b.yw));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(var_0.a - 138f), var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(115f, -773f, false)) * var_2.a)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(346f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), -133f)));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_2(1i));
    var var_1 = vec2<bool>(true, false);
    let var_2 = global4[_wgslsmith_index_u32(1u, 6u)];
    var var_3 = _wgslsmith_f_op_vec2_f32(-var_0.zx);
    var var_4 = var_2.d ^ firstTrailingBit(0u);
    return _wgslsmith_f_op_f32(-var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-firstTrailingBit(40529i));
    global0 = array<Struct_2, 31>();
    global4 = array<Struct_2, 6>();
    global3 = array<Struct_1, 24>();
    var var_1 = _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -475f) - _wgslsmith_f_op_f32(trunc(1141f))))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_f_op_f32(898f - 1012f))), 842f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-(~_wgslsmith_div_i32(var_0, u_input.a.x)), ~select(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), -8754i, true)), ~select(vec4<u32>(84836u, firstLeadingBit(u_input.b), 30270u, u_input.b), select(vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b), vec4<u32>(u_input.b, u_input.b, 4294967295u, 4294967295u), vec4<bool>(true, false, false, false)) | ~vec4<u32>(11857u, 98189u, u_input.b, u_input.b), all(vec3<bool>(true, true, true))), 28488u);
}

