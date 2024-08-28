struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec2<bool>,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(484f, vec2<i32>(-3265i, -1i), vec4<u32>(452u, 4294967295u, 8652u, 0u), false, Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec2<bool>(true, true), true, vec2<u32>(41967u, 90098u))), Struct_2(-276f, vec2<i32>(16392i, 2147483647i), vec4<u32>(0u, 31880u, 0u, 1u), true, Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec2<bool>(false, false), true, vec2<u32>(20840u, 62684u))), Struct_2(-1256f, vec2<i32>(44300i, 0i), vec4<u32>(39244u, 0u, 42838u, 1u), true, Struct_1(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec2<bool>(false, false), false, vec2<u32>(16487u, 44444u))), Struct_2(158f, vec2<i32>(-30164i, i32(-2147483648)), vec4<u32>(20032u, 31652u, 63157u, 60378u), false, Struct_1(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec2<bool>(true, false), true, vec2<u32>(35442u, 1u))), Struct_2(991f, vec2<i32>(2147483647i, 42856i), vec4<u32>(37379u, 4294967295u, 1u, 10567u), false, Struct_1(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec2<bool>(true, true), true, vec2<u32>(0u, 1u))), Struct_2(202f, vec2<i32>(-3486i, -1i), vec4<u32>(12005u, 0u, 56659u, 4294967295u), true, Struct_1(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec2<bool>(true, true), false, vec2<u32>(2729u, 2038u))), Struct_2(-322f, vec2<i32>(23978i, 0i), vec4<u32>(0u, 4294967295u, 0u, 0u), false, Struct_1(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec2<bool>(false, false), true, vec2<u32>(66112u, 1u))), Struct_2(1758f, vec2<i32>(11679i, -1i), vec4<u32>(4294967295u, 2003u, 18637u, 37902u), false, Struct_1(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec2<bool>(true, false), false, vec2<u32>(4294967295u, 6997u))), Struct_2(1426f, vec2<i32>(1i, 45026i), vec4<u32>(67013u, 36428u, 0u, 4294967295u), false, Struct_1(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec2<bool>(true, false), true, vec2<u32>(1u, 1u))), Struct_2(-1051f, vec2<i32>(13461i, 0i), vec4<u32>(4294967295u, 1u, 4294967295u, 104899u), false, Struct_1(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec2<bool>(true, false), false, vec2<u32>(51236u, 0u))), Struct_2(-1228f, vec2<i32>(-13919i, -26597i), vec4<u32>(0u, 50425u, 4294967295u, 3985u), false, Struct_1(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec2<bool>(true, true), false, vec2<u32>(50373u, 1u))), Struct_2(-1378f, vec2<i32>(0i, -1i), vec4<u32>(31367u, 27914u, 1u, 6370u), false, Struct_1(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec2<bool>(true, true), true, vec2<u32>(4294967295u, 1u))), Struct_2(-1603f, vec2<i32>(41167i, -8551i), vec4<u32>(4294967295u, 1u, 0u, 4294967295u), true, Struct_1(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec2<bool>(false, true), false, vec2<u32>(48127u, 13439u))), Struct_2(-1635f, vec2<i32>(9741i, -40210i), vec4<u32>(1u, 35696u, 4294967295u, 4294967295u), false, Struct_1(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec2<bool>(true, true), true, vec2<u32>(0u, 41340u))), Struct_2(-512f, vec2<i32>(2147483647i, 18917i), vec4<u32>(4294967295u, 0u, 4318u, 0u), false, Struct_1(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec2<bool>(false, true), true, vec2<u32>(0u, 4294967295u))), Struct_2(-822f, vec2<i32>(-1i, -13969i), vec4<u32>(0u, 37204u, 210u, 4294967295u), true, Struct_1(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec2<bool>(false, true), false, vec2<u32>(54243u, 0u))), Struct_2(-717f, vec2<i32>(-34534i, 12351i), vec4<u32>(4294967295u, 4294967295u, 59475u, 80327u), true, Struct_1(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec2<bool>(true, false), true, vec2<u32>(18118u, 30429u))), Struct_2(-517f, vec2<i32>(-1i, -98232i), vec4<u32>(0u, 47936u, 41734u, 0u), true, Struct_1(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec2<bool>(true, true), false, vec2<u32>(76681u, 4294967295u))), Struct_2(502f, vec2<i32>(-9441i, 0i), vec4<u32>(0u, 1u, 61840u, 4294967295u), false, Struct_1(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec2<bool>(false, true), true, vec2<u32>(39760u, 0u))), Struct_2(-151f, vec2<i32>(i32(-2147483648), -68711i), vec4<u32>(13798u, 1931u, 0u, 4294967295u), true, Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec2<bool>(false, true), false, vec2<u32>(0u, 6770u))), Struct_2(606f, vec2<i32>(-76712i, 1i), vec4<u32>(0u, 9311u, 61225u, 3880u), false, Struct_1(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec2<bool>(false, true), true, vec2<u32>(2893u, 4294967295u))));

var<private> global1: bool;

var<private> global2: array<bool, 15> = array<bool, 15>(false, false, true, true, true, false, true, false, false, false, true, false, false, true, false);

var<private> global3: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec2<bool>(true, true), false, vec2<u32>(1u, 57211u)), Struct_1(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec2<bool>(true, true), false, vec2<u32>(1u, 4294967295u)), Struct_1(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec2<bool>(true, true), true, vec2<u32>(4294967295u, 1u)), Struct_1(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec2<bool>(true, true), true, vec2<u32>(63763u, 0u)), Struct_1(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec2<bool>(false, false), false, vec2<u32>(1598u, 0u)), Struct_1(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec2<bool>(true, true), false, vec2<u32>(57650u, 60155u)), Struct_1(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec2<bool>(true, false), false, vec2<u32>(58386u, 1u)), Struct_1(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec2<bool>(false, false), true, vec2<u32>(891u, 25302u)), Struct_1(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec2<bool>(true, true), true, vec2<u32>(45375u, 63417u)), Struct_1(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec2<bool>(true, false), false, vec2<u32>(35396u, 75915u)), Struct_1(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec2<bool>(false, false), true, vec2<u32>(32705u, 1u)), Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec2<bool>(false, true), true, vec2<u32>(4294967295u, 0u)), Struct_1(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec2<bool>(true, true), false, vec2<u32>(1u, 1u)), Struct_1(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec2<bool>(false, false), true, vec2<u32>(1u, 10780u)), Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec2<bool>(true, false), false, vec2<u32>(0u, 0u)), Struct_1(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec2<bool>(false, true), false, vec2<u32>(0u, 1u)), Struct_1(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec2<bool>(false, true), true, vec2<u32>(1u, 20250u)), Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec2<bool>(true, false), false, vec2<u32>(0u, 1u)), Struct_1(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec2<bool>(false, true), false, vec2<u32>(44588u, 4294967295u)), Struct_1(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec2<bool>(true, false), false, vec2<u32>(83056u, 81345u)), Struct_1(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec2<bool>(false, true), true, vec2<u32>(11942u, 22425u)), Struct_1(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec2<bool>(true, true), true, vec2<u32>(12736u, 1u)), Struct_1(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec2<bool>(false, true), true, vec2<u32>(17482u, 1u)), Struct_1(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec2<bool>(true, false), true, vec2<u32>(21092u, 18698u)), Struct_1(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec2<bool>(false, true), false, vec2<u32>(41792u, 43615u)), Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec2<bool>(true, true), true, vec2<u32>(41785u, 47433u)), Struct_1(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec2<bool>(false, false), true, vec2<u32>(0u, 2919u)), Struct_1(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec2<bool>(true, true), true, vec2<u32>(4294967295u, 1u)), Struct_1(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec2<bool>(true, false), false, vec2<u32>(3442u, 53609u)), Struct_1(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec2<bool>(true, true), true, vec2<u32>(1u, 1u)));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    var var_0 = !vec2<bool>(any(select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 15u)], global2[_wgslsmith_index_u32(15054u, 15u)], global2[_wgslsmith_index_u32(u_input.b, 15u)]), !vec3<bool>(false, global2[_wgslsmith_index_u32(arg_0.x, 15u)], true), global2[_wgslsmith_index_u32(reverseBits(arg_0.x), 15u)])), global2[_wgslsmith_index_u32(~countOneBits(_wgslsmith_mod_u32(36397u, 81974u)), 15u)]);
    global3 = array<Struct_1, 30>();
    let var_1 = arg_0.xz;
    global0 = array<Struct_2, 21>();
    global1 = false & global2[_wgslsmith_index_u32(u_input.b, 15u)];
    return _wgslsmith_f_op_f32(-1f);
}

fn func_2() -> vec2<i32> {
    global3 = array<Struct_1, 30>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(firstLeadingBit(~vec3<u32>(90801u, 1u, u_input.b))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -838f) - 917f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(sign(568f))))));
    var var_1 = false;
    var var_2 = ~max((min(vec2<u32>(u_input.b, 57435u), vec2<u32>(47376u, 0u)) & vec2<u32>(1u, 36384u)) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), vec2<u32>(u_input.b, 23499u));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-220f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(364f - _wgslsmith_f_op_f32(abs(616f))) - _wgslsmith_f_op_f32(func_3(vec3<u32>(u_input.b, 4294967295u, u_input.b)))), true)) * -1000f);
    return _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(u_input.c.yx, _wgslsmith_div_vec2_i32(~u_input.c.xy, vec2<i32>(~(-1i), -1i))), _wgslsmith_div_vec2_i32(select(u_input.c.xz, vec2<i32>(reverseBits(u_input.a), u_input.a << (u_input.b % 32u)), vec2<bool>(any(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 15u)], false)), any(vec4<bool>(global2[_wgslsmith_index_u32(1u, 15u)], global2[_wgslsmith_index_u32(18u, 15u)], global2[_wgslsmith_index_u32(u_input.b, 15u)], global2[_wgslsmith_index_u32(var_2.x, 15u)])))), vec2<i32>(_wgslsmith_sub_i32(select(2147483647i, 2763i, true), max(u_input.a, u_input.a)), countOneBits(1i))));
}

fn func_1(arg_0: Struct_3) -> bool {
    let var_0 = func_2();
    global3 = array<Struct_1, 30>();
    global1 = true;
    let var_1 = Struct_1(vec4<bool>(true, all(arg_0.a.a.zy), true, true | any(!vec4<bool>(false, false, false, global2[_wgslsmith_index_u32(10356u, 15u)]))), vec4<bool>(all(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 15u)], global2[_wgslsmith_index_u32(21440u, 15u)], arg_0.a.d, arg_0.d), arg_0.a.a, -3069f <= arg_0.c.a)), true, select(global2[_wgslsmith_index_u32(max(_wgslsmith_clamp_u32(76248u, arg_0.c.c.x, arg_0.a.e.x), 0u >> (u_input.b % 32u)), 15u)], any(select(arg_0.c.e.b, vec4<bool>(arg_0.c.d, true, false, global2[_wgslsmith_index_u32(u_input.b, 15u)]), vec4<bool>(arg_0.c.e.c.x, true, global2[_wgslsmith_index_u32(arg_0.c.e.e.x, 15u)], global2[_wgslsmith_index_u32(arg_0.c.c.x, 15u)]))), _wgslsmith_f_op_f32(-arg_0.b.x) >= _wgslsmith_f_op_f32(abs(arg_0.b.x))), arg_0.a.c.x), vec2<bool>(all(select(arg_0.c.e.a, arg_0.c.e.a, any(arg_0.c.e.a))), any(arg_0.a.a.xx)), false, abs(~(~abs(vec2<u32>(u_input.b, arg_0.c.e.e.x)))));
    let var_2 = Struct_4(vec2<u32>(_wgslsmith_dot_vec3_u32(arg_0.c.c.zwx, max(max(arg_0.c.c.zzx, arg_0.c.c.zyy), vec3<u32>(4294967295u, var_1.e.x, 28446u) | arg_0.c.c.wzz)), _wgslsmith_add_u32(arg_0.a.e.x, 1u)), Struct_3(Struct_1(!arg_0.c.e.b, var_1.a, arg_0.a.c, abs(u_input.b) > ~var_1.e.x, arg_0.a.e), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(368f - arg_0.b.x) - arg_0.b.x)), Struct_2(arg_0.b.x, firstTrailingBit(countOneBits(var_0)), ~max(vec4<u32>(18273u, 52526u, 33329u, arg_0.c.c.x), vec4<u32>(57915u, u_input.b, 0u, 12851u)), any(var_1.a), Struct_1(arg_0.c.e.b, arg_0.a.b, vec2<bool>(arg_0.a.c.x, false), false, arg_0.c.e.e)), arg_0.a.a.x));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -103f) * _wgslsmith_f_op_f32(-195f * _wgslsmith_f_op_f32(max(512f, 272f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -541f), _wgslsmith_f_op_f32(f32(-1f) * -885f))))), -826f));
    var var_1 = ~reverseBits(vec4<u32>(~u_input.b, 56027u, 1u, ~0u)) >> (~vec4<u32>(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(69315u, 87351u, 47779u, 4294967295u), vec4<u32>(u_input.b, u_input.b, 13748u, u_input.b) ^ vec4<u32>(u_input.b, 1u, 48u, u_input.b)), 4294967295u, u_input.b) % vec4<u32>(32u));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1463f, var_0.x, var_0.x))))));
    global1 = any(select(!(!(!vec4<bool>(false, true, global2[_wgslsmith_index_u32(116088u, 15u)], false))), vec4<bool>(true, func_1(Struct_3(Struct_1(vec4<bool>(false, false, global2[_wgslsmith_index_u32(u_input.b, 15u)], true), vec4<bool>(global2[_wgslsmith_index_u32(45894u, 15u)], global2[_wgslsmith_index_u32(u_input.b, 15u)], true, true), vec2<bool>(global2[_wgslsmith_index_u32(42365u, 15u)], true), global2[_wgslsmith_index_u32(0u, 15u)], vec2<u32>(4294967295u, 162122u)), vec2<f32>(var_0.x, var_2.x), global0[_wgslsmith_index_u32(1u, 21u)], global2[_wgslsmith_index_u32(4294967295u, 15u)])), all(vec3<bool>(global2[_wgslsmith_index_u32(47506u, 15u)], global2[_wgslsmith_index_u32(u_input.b, 15u)], global2[_wgslsmith_index_u32(1u, 15u)])), global2[_wgslsmith_index_u32(var_1.x, 15u)]), global2[_wgslsmith_index_u32(20992u, 15u)]));
    var_0 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(var_0.zz * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_0.zy))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(661f * var_0.x) + -349f) - var_0.x), _wgslsmith_f_op_f32(trunc(202f))), reverseBits(min(u_input.a, u_input.a)), abs(74571u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 963f, var_0.x, var_0.x))))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 836f, var_2.x, var_0.x) * vec4<f32>(847f, 962f, var_0.x, -1049f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(362f, var_0.x, -582f, 1874f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1264f, -323f, var_0.x, var_2.x) - vec4<f32>(var_0.x, 635f, -1000f, var_0.x)))))));
}

