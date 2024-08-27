struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: Struct_1,
    d: i32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: array<i32, 19> = array<i32, 19>(-27756i, 14459i, -10619i, 3685i, -35488i, -22443i, 16088i, -16933i, -15834i, -23110i, -1i, 2147483647i, -4159i, -14387i, i32(-2147483648), i32(-2147483648), i32(-2147483648), -32047i, 0i);

var<private> global2: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(vec4<f32>(-259f, -329f, -729f, -1214f), vec3<bool>(false, false, true), false, 11667u), Struct_2(vec4<f32>(-673f, 898f, 1000f, 236f), vec3<bool>(false, true, false), true, 0u), Struct_2(vec4<f32>(-567f, 764f, 468f, -1178f), vec3<bool>(false, false, false), true, 29227u), Struct_2(vec4<f32>(-219f, 660f, 357f, -981f), vec3<bool>(false, false, false), false, 4294967295u), Struct_2(vec4<f32>(644f, 1190f, 893f, 185f), vec3<bool>(false, false, true), true, 0u), Struct_2(vec4<f32>(931f, -330f, -725f, 670f), vec3<bool>(true, true, false), false, 70933u), Struct_2(vec4<f32>(-1277f, 215f, -414f, -274f), vec3<bool>(true, false, false), true, 36402u), Struct_2(vec4<f32>(218f, -1600f, -663f, -147f), vec3<bool>(false, false, true), false, 53801u), Struct_2(vec4<f32>(903f, 976f, 1000f, 1000f), vec3<bool>(true, false, false), true, 15346u), Struct_2(vec4<f32>(231f, -1000f, 1126f, -492f), vec3<bool>(false, true, true), true, 30879u), Struct_2(vec4<f32>(188f, -1039f, -408f, -854f), vec3<bool>(true, false, true), true, 4294967295u), Struct_2(vec4<f32>(1034f, 849f, 344f, 473f), vec3<bool>(false, true, true), true, 4294967295u), Struct_2(vec4<f32>(2508f, 606f, 980f, 145f), vec3<bool>(false, false, false), false, 4294967295u));

var<private> global3: u32 = 1u;

var<private> global4: array<Struct_2, 7>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: bool, arg_1: vec3<u32>, arg_2: i32, arg_3: i32) -> bool {
    global0 = -(-2147483647i & ((global1[_wgslsmith_index_u32(select(arg_1.x, 0u, arg_0), 19u)] << (~146690u % 32u)) ^ u_input.a));
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -121f), -1000f)) * 1000f)));
    return false;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> vec3<u32> {
    global3 = 1u;
    var var_0 = u_input.a;
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1266u, u_input.b, select(95252u, arg_1.d, false)), vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 20828u), vec2<u32>(u_input.b, 55080u)), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.b, 67935u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.d, 4294967295u, arg_1.d), vec3<u32>(4294967295u, 0u, u_input.b)), arg_1.d), ~abs(u_input.b))), max(abs(54099u), 49620u)), 13u)];
    global2 = array<Struct_2, 13>();
    return select(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.d, var_1.d, 0u), vec3<u32>(70117u, u_input.b, var_1.d)) << (abs(vec3<u32>(u_input.b, 134638u, u_input.b)) % vec3<u32>(32u)), ~(vec3<u32>(71426u, 15737u, 20786u) & vec3<u32>(var_1.d, 4294967295u, var_1.d))), ~(vec3<u32>(arg_1.d, u_input.b, 29248u) | ~vec3<u32>(112035u, var_1.d, u_input.b)), true) >> (vec3<u32>(14043u, u_input.b, abs(var_1.d)) % vec3<u32>(32u));
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: Struct_4, arg_3: bool) -> u32 {
    let var_0 = Struct_4(firstLeadingBit(~(~arg_1.a)), arg_2.b, Struct_1(_wgslsmith_mult_u32(u_input.b, max(~1u, ~arg_1.a.x)), arg_1.c.b, max(_wgslsmith_sub_u32(firstTrailingBit(arg_2.a.x), select(4294967295u, 27213u, false)), func_3(Struct_3(vec4<bool>(true, arg_3, true, arg_0)), global2[_wgslsmith_index_u32(arg_1.c.c, 13u)]).x << (u_input.b % 32u)), -arg_2.e), -select(firstLeadingBit(arg_1.d), _wgslsmith_dot_vec3_i32(arg_1.e.wxw, arg_2.c.d.xyy) >> (arg_1.b.x % 32u), false), _wgslsmith_clamp_vec4_i32(~(~arg_2.e), abs(~firstTrailingBit(arg_2.c.d)), arg_2.e));
    global4 = array<Struct_2, 7>();
    let var_1 = !select(vec2<bool>(arg_0, any(vec4<bool>(arg_0, arg_0, true, arg_0))), select(vec2<bool>(arg_3, arg_3), select(vec2<bool>(arg_0, true), !vec2<bool>(true, arg_3), func_1(false, vec3<u32>(var_0.a.x, u_input.b, 1u), var_0.e.x, -1i)), !(arg_1.a.x != 0u)), !vec2<bool>(all(vec2<bool>(true, false)), select(false, false, false)));
    let var_2 = reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a.x, arg_2.b.x), vec2<u32>(var_0.b.x, ~(0u ^ arg_1.a.x))));
    let var_3 = Struct_3(vec4<bool>(!((var_0.c.b < -1000f) && arg_3), true, all(select(vec4<bool>(true, false, arg_3, arg_0), select(vec4<bool>(true, true, true, false), vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(false, arg_0, arg_3, arg_0)), select(vec4<bool>(arg_0, false, true, var_1.x), vec4<bool>(true, true, false, arg_0), vec4<bool>(arg_0, false, var_1.x, true)))), all(!select(vec4<bool>(true, var_1.x, arg_0, true), vec4<bool>(false, arg_0, arg_3, false), arg_3))));
    return arg_2.b.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<i32>) -> Struct_3 {
    let var_0 = u_input.b << (func_4(!arg_0.x, Struct_4(select(~vec4<u32>(u_input.b, 4419u, u_input.b, 53484u), vec4<u32>(u_input.b, 6865u, u_input.b, u_input.b), false), firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 34591u, u_input.b), vec3<u32>(u_input.b, 53492u, u_input.b))), Struct_1(reverseBits(62673u), _wgslsmith_f_op_f32(-1323f * -1708f), u_input.b, vec4<i32>(58616i, 1i, 48565i, 1i)), _wgslsmith_mod_i32(0i, 1i), vec4<i32>(firstTrailingBit(arg_1.x), ~25818i, max(arg_1.x, u_input.a), ~1i)), Struct_4(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), ~vec4<u32>(u_input.b, 0u, u_input.b, 61398u), vec4<u32>(u_input.b, 45578u, 4294967295u, 0u) >> (vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u))), func_3(Struct_3(vec4<bool>(true, true, arg_0.x, arg_0.x)), Struct_2(vec4<f32>(-854f, 1330f, 1000f, -219f), vec3<bool>(false, arg_0.x, arg_0.x), true, 4294967295u)), Struct_1(~87467u, -983f, 25370u, _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -2147483647i, 1i, 22091i), vec4<i32>(-7910i, global1[_wgslsmith_index_u32(u_input.b, 19u)], 2147483647i, global1[_wgslsmith_index_u32(u_input.b, 19u)]), vec4<i32>(2147483647i, 15604i, arg_1.x, arg_1.x))), arg_1.x, firstLeadingBit(-vec4<i32>(arg_1.x, -1i, 5668i, arg_1.x))), !(!all(arg_0))) % 32u);
    global1 = array<i32, 19>();
    global1 = array<i32, 19>();
    var var_1 = vec4<u32>(~(u_input.b ^ _wgslsmith_add_u32(1u, 1u)), ~abs(_wgslsmith_mult_u32(~u_input.b, 65679u)), countOneBits(u_input.b), 0u);
    global3 = reverseBits(reverseBits(var_0 << (~(~0u) % 32u)));
    return Struct_3(vec4<bool>(any(select(arg_0, vec2<bool>(false, arg_0.x), true)), arg_0.x, all(vec2<bool>(true, true)), true));
}

fn func_5(arg_0: Struct_3, arg_1: f32) -> bool {
    var var_0 = _wgslsmith_sub_i32(2147483647i, _wgslsmith_sub_i32(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(u_input.b, 19u)], 1i), -20285i));
    global1 = array<i32, 19>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-115f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_1, -680f)), 1547f)));
    let var_2 = 1i;
    let var_3 = !(!(468f != arg_1));
    return func_2(vec2<bool>(true, !(4294967295u >= u_input.b)), vec2<i32>(-5966i, select(0i, var_2, true)) ^ max(select(vec2<i32>(global1[_wgslsmith_index_u32(75480u, 19u)], global1[_wgslsmith_index_u32(u_input.b, 19u)]), vec2<i32>(-7156i, u_input.a), arg_0.a.zz), ~vec2<i32>(u_input.a, var_2))).a.x | var_3;
}

fn func_6(arg_0: Struct_3, arg_1: u32, arg_2: Struct_4) -> Struct_3 {
    var var_0 = global4[_wgslsmith_index_u32(~(~arg_1), 7u)];
    global4 = array<Struct_2, 7>();
    let var_1 = ~(~(i32(-1i) * -(~(-1i))));
    let var_2 = u_input.a;
    var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~arg_1 >> (arg_2.b.x % 32u), 970u, _wgslsmith_dot_vec3_u32(min(arg_2.b, arg_2.b), arg_2.b ^ vec3<u32>(arg_1, 69467u, u_input.b))) << (abs(_wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec3_u32(select(arg_2.b, arg_2.a.ywy, vec3<bool>(arg_0.a.x, true, true)), ~vec3<u32>(1u, arg_1, 63267u)))) % 32u), 13u)];
    return func_2(vec2<bool>(false, !func_5(arg_0, var_0.a.x)), select(select(vec2<i32>(24282i, -1i), vec2<i32>(-1799i, 15538i), arg_0.a.zy), vec2<i32>(_wgslsmith_sub_i32(arg_2.e.x, -1i), var_2), var_0.b.zx) ^ ~arg_2.e.wz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_3(select(vec4<bool>(true, true, true, func_1(true, vec3<u32>(6949u, 6391u, 27269u), 10422i, global1[_wgslsmith_index_u32(42378u, 19u)])), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), false), func_5(func_2(vec2<bool>(true, false), vec2<i32>(u_input.a, u_input.a)), -938f))), 6090u, Struct_4(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(11657u, u_input.b, 26414u, 22106u), vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u)) >> (vec4<u32>(u_input.b, 2756u, 1u, u_input.b) % vec4<u32>(32u)), vec4<u32>(func_3(Struct_3(vec4<bool>(true, false, true, true)), global4[_wgslsmith_index_u32(4294967295u, 7u)]).x, 1u, 50539u, func_4(false, Struct_4(vec4<u32>(1u, 4294967295u, 38839u, 85074u), vec3<u32>(u_input.b, 120886u, 4294967295u), Struct_1(10594u, -426f, 68247u, vec4<i32>(-13833i, global1[_wgslsmith_index_u32(4294967295u, 19u)], 0i, 25036i)), 6382i, vec4<i32>(global1[_wgslsmith_index_u32(14969u, 19u)], -2147483647i, 30955i, u_input.a)), Struct_4(vec4<u32>(u_input.b, 1u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, 83505u), Struct_1(u_input.b, -136f, u_input.b, vec4<i32>(u_input.a, u_input.a, 1435i, u_input.a)), 0i, vec4<i32>(u_input.a, 2147483647i, global1[_wgslsmith_index_u32(0u, 19u)], 1887i)), false))), ~(~select(vec3<u32>(1u, 18569u, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<bool>(false, true, false))), Struct_1(_wgslsmith_mod_u32(4173u >> (u_input.b % 32u), abs(0u)), 1010f, _wgslsmith_sub_u32(4294967295u, reverseBits(u_input.b)), firstTrailingBit(-vec4<i32>(0i, u_input.a, 75221i, -8132i))), 0i, (_wgslsmith_add_vec4_i32(vec4<i32>(14247i, u_input.a, global1[_wgslsmith_index_u32(1u, 19u)], 16245i), vec4<i32>(-78385i, u_input.a, -2147483647i, global1[_wgslsmith_index_u32(12723u, 19u)])) >> (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 40453u), vec4<u32>(u_input.b, 66209u, u_input.b, u_input.b)) % vec4<u32>(32u))) & vec4<i32>(global1[_wgslsmith_index_u32(~u_input.b, 19u)], ~global1[_wgslsmith_index_u32(6634u, 19u)], firstTrailingBit(global1[_wgslsmith_index_u32(4294967295u, 19u)]), -u_input.a)));
    global2 = array<Struct_2, 13>();
    let var_1 = vec4<u32>(4294967295u, 22184u, 6808u, u_input.b);
    var var_2 = 27484u;
    global2 = array<Struct_2, 13>();
    global0 = u_input.a;
    let var_3 = var_1.zzx;
    let var_4 = vec3<u32>(var_3.x, u_input.b, max(abs(_wgslsmith_mod_u32(4294967295u, 4294967295u)), min(max(_wgslsmith_div_u32(29703u, u_input.b), var_1.x), u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(-global1[_wgslsmith_index_u32(~(~u_input.b), 19u)], ~var_4.x, ~firstLeadingBit(max(_wgslsmith_div_u32(0u, var_1.x), var_4.x)), vec3<i32>(20201i >> (firstTrailingBit(0u) % 32u), ~1i, _wgslsmith_div_i32(907i, _wgslsmith_add_i32(global1[_wgslsmith_index_u32(var_4.x, 19u)], 1i))));
}

