struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec4<bool>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6> = array<i32, 6>(0i, 35838i, 26632i, -20511i, i32(-2147483648), 24904i);

var<private> global1: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(349f, false, vec4<bool>(true, false, false, false), vec3<bool>(true, true, false)), Struct_2(720f, true, vec4<bool>(true, false, true, false), vec3<bool>(false, true, false)), Struct_2(-915f, true, vec4<bool>(true, true, true, true), vec3<bool>(false, false, false)), Struct_2(-1046f, false, vec4<bool>(false, true, true, false), vec3<bool>(true, true, false)), Struct_2(106f, true, vec4<bool>(false, false, true, true), vec3<bool>(true, false, true)), Struct_2(-143f, false, vec4<bool>(false, false, false, true), vec3<bool>(false, true, false)), Struct_2(-257f, true, vec4<bool>(true, false, false, false), vec3<bool>(false, false, false)), Struct_2(-1801f, true, vec4<bool>(true, false, true, true), vec3<bool>(true, false, false)), Struct_2(-532f, false, vec4<bool>(true, true, false, false), vec3<bool>(true, false, true)), Struct_2(865f, false, vec4<bool>(false, false, true, false), vec3<bool>(true, true, false)), Struct_2(-133f, true, vec4<bool>(true, true, false, true), vec3<bool>(false, false, false)), Struct_2(645f, true, vec4<bool>(false, false, true, false), vec3<bool>(true, true, true)), Struct_2(-991f, true, vec4<bool>(false, true, false, false), vec3<bool>(false, true, false)), Struct_2(625f, true, vec4<bool>(true, true, false, true), vec3<bool>(true, true, false)), Struct_2(2309f, true, vec4<bool>(true, false, false, false), vec3<bool>(true, true, true)), Struct_2(483f, false, vec4<bool>(false, true, false, true), vec3<bool>(true, false, false)), Struct_2(719f, false, vec4<bool>(false, true, false, true), vec3<bool>(false, true, false)), Struct_2(1124f, false, vec4<bool>(true, false, false, true), vec3<bool>(false, true, false)), Struct_2(-554f, true, vec4<bool>(true, true, false, false), vec3<bool>(false, true, true)), Struct_2(280f, true, vec4<bool>(false, false, true, true), vec3<bool>(false, true, true)), Struct_2(-125f, true, vec4<bool>(false, false, true, true), vec3<bool>(true, false, false)), Struct_2(717f, true, vec4<bool>(true, false, false, false), vec3<bool>(true, true, false)), Struct_2(-1000f, true, vec4<bool>(true, false, false, false), vec3<bool>(false, true, true)), Struct_2(1000f, true, vec4<bool>(true, false, true, false), vec3<bool>(true, false, true)));

var<private> global2: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(697i, 25893i, 13961u, vec3<u32>(0u, 46624u, 32292u), vec4<bool>(false, false, true, true)), Struct_3(0i, 6833i, 1u, vec3<u32>(86581u, 19399u, 1u), vec4<bool>(true, false, true, false)), Struct_3(9680i, 0i, 1u, vec3<u32>(52436u, 2464u, 8473u), vec4<bool>(true, false, false, true)), Struct_3(21823i, -14284i, 4294967295u, vec3<u32>(59777u, 11119u, 1u), vec4<bool>(true, false, false, true)), Struct_3(1i, 4995i, 14534u, vec3<u32>(811u, 1u, 33468u), vec4<bool>(false, true, true, false)), Struct_3(1i, -1i, 40409u, vec3<u32>(1u, 4294967295u, 0u), vec4<bool>(false, true, false, false)), Struct_3(1i, 0i, 53314u, vec3<u32>(29946u, 0u, 4294967295u), vec4<bool>(false, false, false, false)), Struct_3(-51966i, 0i, 0u, vec3<u32>(25942u, 102211u, 62721u), vec4<bool>(false, true, true, true)), Struct_3(0i, -16860i, 39827u, vec3<u32>(39207u, 46017u, 0u), vec4<bool>(false, false, false, false)), Struct_3(37292i, i32(-2147483648), 30598u, vec3<u32>(62353u, 1u, 81465u), vec4<bool>(true, true, false, true)), Struct_3(-20633i, 1i, 40533u, vec3<u32>(1u, 9477u, 39343u), vec4<bool>(true, false, false, true)), Struct_3(-16654i, 10437i, 4294967295u, vec3<u32>(105573u, 0u, 41272u), vec4<bool>(false, false, false, false)), Struct_3(49542i, -29425i, 7127u, vec3<u32>(86491u, 13815u, 0u), vec4<bool>(false, true, true, true)), Struct_3(15406i, 22757i, 1260u, vec3<u32>(48495u, 32246u, 4294967295u), vec4<bool>(false, false, false, true)), Struct_3(1i, -1807i, 32003u, vec3<u32>(4294967295u, 0u, 4294967295u), vec4<bool>(false, false, false, true)), Struct_3(9211i, 2147483647i, 1u, vec3<u32>(4294967295u, 4294967295u, 21399u), vec4<bool>(true, true, true, false)), Struct_3(2147483647i, 26800i, 4294967295u, vec3<u32>(9698u, 0u, 4294967295u), vec4<bool>(false, false, false, false)), Struct_3(1i, -57527i, 19356u, vec3<u32>(47102u, 31469u, 0u), vec4<bool>(false, false, true, true)), Struct_3(-23551i, 2147483647i, 62443u, vec3<u32>(51127u, 1u, 52809u), vec4<bool>(true, true, true, false)), Struct_3(-1i, 0i, 4294967295u, vec3<u32>(4558u, 4294967295u, 33747u), vec4<bool>(true, false, false, false)), Struct_3(i32(-2147483648), 0i, 9104u, vec3<u32>(1u, 1u, 0u), vec4<bool>(false, true, false, false)), Struct_3(0i, 1i, 1u, vec3<u32>(4294967295u, 15149u, 4294967295u), vec4<bool>(true, true, false, false)), Struct_3(i32(-2147483648), -1i, 0u, vec3<u32>(4294967295u, 47943u, 26478u), vec4<bool>(false, true, true, true)), Struct_3(8410i, 0i, 1u, vec3<u32>(78003u, 21490u, 4294967295u), vec4<bool>(true, false, false, true)), Struct_3(42549i, -2386i, 1u, vec3<u32>(10344u, 9134u, 13471u), vec4<bool>(false, false, true, false)), Struct_3(2147483647i, 25179i, 4294967295u, vec3<u32>(64632u, 1u, 4294967295u), vec4<bool>(false, true, true, true)), Struct_3(1i, 0i, 25500u, vec3<u32>(7377u, 4294967295u, 6604u), vec4<bool>(false, true, false, false)));

var<private> global3: array<vec3<f32>, 13>;

var<private> global4: array<i32, 2> = array<i32, 2>(2147483647i, 11947i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: vec2<f32>, arg_1: f32) -> u32 {
    return ~_wgslsmith_mod_u32(1u << (~_wgslsmith_sub_u32(u_input.c, u_input.b) % 32u), _wgslsmith_clamp_u32(min(u_input.c, u_input.b), ~51618u, 80257u) & 4294967295u);
}

fn func_2() -> f32 {
    var var_0 = 408f;
    var var_1 = global2[_wgslsmith_index_u32(u_input.c, 27u)];
    global2 = array<Struct_3, 27>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1043f, -858f, -671f, -248f), vec4<f32>(-126f, -416f, -593f, 498f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-359f, 1367f, -1457f, -188f) - vec4<f32>(-1682f, -114f, 998f, 750f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -1110f, -1601f, -1076f), vec4<f32>(-770f, -1000f, -967f, 1197f), var_1.e)), select(vec4<bool>(true, false, var_1.e.x, var_1.e.x), vec4<bool>(false, true, var_1.e.x, true), var_1.e)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-382f))), -255f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-646f - 1078f)), _wgslsmith_f_op_f32(f32(-1f) * -354f))), firstLeadingBit(_wgslsmith_add_vec4_i32(~(-vec4<i32>(global4[_wgslsmith_index_u32(u_input.c, 2u)], var_1.b, global4[_wgslsmith_index_u32(36447u, 2u)], -1i)), max(vec4<i32>(var_1.a, u_input.d, global4[_wgslsmith_index_u32(var_1.d.x, 2u)], var_1.a) ^ vec4<i32>(var_1.b, global0[_wgslsmith_index_u32(u_input.b, 6u)], -26818i, 17210i), -vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 6u)], var_1.b, global0[_wgslsmith_index_u32(u_input.c, 6u)], var_1.b)))), vec3<bool>(u_input.c < ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c, 13666u, var_1.d.x), var_1.d), ~var_1.c < u_input.b, true));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(var_1.d.x, 13u)] + var_2.a.zxz));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(919f - _wgslsmith_f_op_f32(abs(var_2.a.x))));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: u32) -> bool {
    let var_0 = Struct_3(min(~max(i32(-1i) * -19127i, global0[_wgslsmith_index_u32(78558u, 6u)]), -2147483647i), _wgslsmith_add_i32(~_wgslsmith_clamp_i32(-1i, firstLeadingBit(-1i), reverseBits(27405i)), -_wgslsmith_mult_i32(-global4[_wgslsmith_index_u32(arg_2, 2u)], -21322i)), abs(47287u), select(vec3<u32>(arg_2, u_input.b, 24624u), vec3<u32>(~arg_2, 1u, u_input.b), !arg_1), select(vec4<bool>(false, arg_1, arg_1, -global0[_wgslsmith_index_u32(26095u, 6u)] <= max(global0[_wgslsmith_index_u32(arg_2, 6u)], -22440i)), !vec4<bool>(true, true | arg_1, any(vec3<bool>(false, true, arg_0)), true), select(!vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(all(vec4<bool>(false, arg_1, arg_0, arg_1)), !arg_0, true, true), vec4<bool>(false, true, true, any(vec4<bool>(arg_1, arg_1, arg_0, true))))));
    global4 = array<i32, 2>();
    global1 = array<Struct_2, 24>();
    var var_1 = _wgslsmith_f_op_f32(-309f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-999f)))))));
    global4 = array<i32, 2>();
    return !all(select(vec2<bool>(any(var_0.e.yz), !var_0.e.x), select(vec2<bool>(true, true), !vec2<bool>(true, arg_0), all(vec3<bool>(var_0.e.x, true, true))), true));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 27>();
    global4 = array<i32, 2>();
    global1 = array<Struct_2, 24>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-271f, -234f, -703f)), global3[_wgslsmith_index_u32(~func_1(vec2<f32>(1093f, 305f), 491f), 13u)]))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(487f, -538f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(u_input.c, 13u)] * vec3<f32>(-1219f, 251f, 400f))) - _wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(max(u_input.b, u_input.c), 13u)])))));
    var var_1 = var_0.x;
    let var_2 = Struct_2(var_0.x, func_3(!(!any(vec2<bool>(false, true))), ((u_input.c | u_input.b) < _wgslsmith_mod_u32(u_input.b, u_input.c)) | !all(vec4<bool>(false, true, false, true)), u_input.b), vec4<bool>(true & all(vec4<bool>(true, true, true, true)), true, all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true))) & (true & any(vec3<bool>(true, true, false))), !(u_input.c >= u_input.b)), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(true, true, false))), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(false, false, false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false)), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), select(vec3<bool>(any(vec3<bool>(false, true, true)), true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    global2 = array<Struct_3, 27>();
    let var_3 = ~(-22162i);
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~(~vec4<u32>(27737u, u_input.b, u_input.c, 4294967295u))), reverseBits(abs(~vec4<u32>(u_input.b, u_input.b, 0u, 4294967295u))), vec4<bool>(false, any(vec4<bool>(var_2.b, var_2.c.x, var_2.c.x, var_2.d.x)) || !var_2.d.x, false, true)), countOneBits(firstLeadingBit(-13949i >> (~u_input.c % 32u))), abs(_wgslsmith_mod_vec4_u32(select(vec4<u32>(0u, 1u, u_input.c, 5424u), vec4<u32>(u_input.c, 4294967295u, u_input.b, 53387u), var_2.c.x), vec4<u32>(42162u, 1u, 0u, u_input.b)) << (min(vec4<u32>(38659u, u_input.c, u_input.b, u_input.b) | vec4<u32>(u_input.c, 1u, 4294967295u, 62957u), firstTrailingBit(vec4<u32>(4294967295u, u_input.b, u_input.c, 31280u))) % vec4<u32>(32u))), _wgslsmith_dot_vec3_i32(-vec3<i32>(_wgslsmith_mult_i32(-29600i, -1i), 1i, 1i), firstLeadingBit(vec3<i32>(0i, global4[_wgslsmith_index_u32(u_input.c | u_input.c, 2u)], -1i))));
}

