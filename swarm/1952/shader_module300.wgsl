struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<vec2<f32>, 28> = array<vec2<f32>, 28>(vec2<f32>(-274f, 1068f), vec2<f32>(147f, -1047f), vec2<f32>(558f, 646f), vec2<f32>(-1261f, -535f), vec2<f32>(-339f, -1365f), vec2<f32>(1763f, 572f), vec2<f32>(-817f, -1161f), vec2<f32>(802f, -516f), vec2<f32>(568f, 1000f), vec2<f32>(1747f, -1448f), vec2<f32>(357f, 334f), vec2<f32>(574f, 1000f), vec2<f32>(542f, 255f), vec2<f32>(-216f, -1601f), vec2<f32>(193f, 107f), vec2<f32>(2062f, 491f), vec2<f32>(560f, 503f), vec2<f32>(-1659f, -1308f), vec2<f32>(1220f, 352f), vec2<f32>(-314f, -1356f), vec2<f32>(294f, -601f), vec2<f32>(846f, -165f), vec2<f32>(-1844f, -1309f), vec2<f32>(925f, 378f), vec2<f32>(-483f, 488f), vec2<f32>(253f, 1000f), vec2<f32>(453f, 709f), vec2<f32>(485f, -508f));

var<private> global2: array<bool, 28> = array<bool, 28>(true, true, true, true, false, true, true, false, true, true, true, true, false, true, true, false, false, false, false, false, true, false, false, false, true, false, false, true);

var<private> global3: array<u32, 30> = array<u32, 30>(4294967295u, 4294967295u, 1u, 12210u, 37586u, 1u, 14841u, 44473u, 1538u, 4294967295u, 18087u, 4294967295u, 125433u, 29690u, 0u, 50345u, 47952u, 1u, 4294967295u, 44921u, 23616u, 1u, 4294967295u, 4566u, 4294967295u, 66680u, 31512u, 85756u, 0u, 4294967295u);

var<private> global4: vec3<i32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<bool>) -> vec2<bool> {
    global2 = array<bool, 28>();
    var var_0 = vec3<bool>(all(select(!arg_0, select(!arg_0, arg_0, arg_0), arg_0)), (64178u < global3[_wgslsmith_index_u32(39206u, 30u)]) && all(vec4<bool>(all(vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(48438u, 28u)])), false && global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 30u)], 28u)], true, !global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 30u)], 28u)])), !global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, global3[_wgslsmith_index_u32(4294967295u, 30u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 30u)], 30u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(36883u, 30u)], 30u)]), vec4<u32>(0u, u_input.d, u_input.c, 1u))), ~_wgslsmith_clamp_u32(u_input.d, 25097u, 0u)), 28u)]);
    var var_1 = vec3<bool>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.a.x, 50397u), vec2<u32>(1u, 0u)), u_input.a.zy), u_input.a.x >> (global3[_wgslsmith_index_u32(~u_input.a.x, 30u)] % 32u)) > abs(_wgslsmith_div_u32(u_input.d, ~0u)), !global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(150492u, 30u)], 4294967295u, 12454u), vec3<u32>(u_input.a.x, global3[_wgslsmith_index_u32(0u, 30u)], u_input.c)), u_input.a), 28u)], (true && all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, var_0.x, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 30u)], 28u)], false), vec4<bool>(true, arg_0.x, var_0.x, var_0.x)))) | true);
    let var_2 = !(!(!vec2<bool>(true, !var_1.x)));
    return vec2<bool>(var_0.x, !arg_0.x);
}

fn func_2(arg_0: f32) -> i32 {
    let var_0 = !select(select(vec2<bool>(true, true), func_3(select(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 28u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(15897u, 30u)], 28u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.d, 28u)], true), false)), false), select(select(!vec2<bool>(true, global2[_wgslsmith_index_u32(13618u, 28u)]), !vec2<bool>(true, global2[_wgslsmith_index_u32(28195u, 28u)]), func_3(vec3<bool>(false, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 30u)], 28u)], global2[_wgslsmith_index_u32(4294967295u, 28u)]))), vec2<bool>(true, true), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.c, u_input.c), ~16574u, _wgslsmith_mult_u32(1u, 4294967295u)), 28u)]), select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 28u)], global2[_wgslsmith_index_u32(~8877u, 28u)]), !select(vec2<bool>(true, global2[_wgslsmith_index_u32(51998u, 28u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(45368u, 30u)], 28u)]), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d, 30u)], 30u)], 28u)]), func_3(select(vec3<bool>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 30u)], 28u)], global2[_wgslsmith_index_u32(20124u, 28u)], true), vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 28u)], global2[_wgslsmith_index_u32(u_input.d, 28u)]), vec3<bool>(false, false, true)))));
    return 1i;
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: u32, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = vec4<i32>(2147483647i, max(firstTrailingBit(_wgslsmith_div_i32(u_input.b, 7830i)), func_2(326f) >> ((arg_2 & global3[_wgslsmith_index_u32(48859u, 30u)]) % 32u)) >> (~_wgslsmith_mod_u32(36685u, _wgslsmith_mod_u32(u_input.c, arg_2)) % 32u), 0i >> (arg_3.x % 32u), -32556i);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_1)), _wgslsmith_f_op_f32(arg_1 * -537f)), arg_1) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1850f, arg_1, arg_1), vec3<f32>(464f, 350f, -637f), vec3<bool>(false, global2[_wgslsmith_index_u32(arg_3.x, 28u)], false))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1432f, -1671f, arg_1)))))));
    let var_2 = _wgslsmith_f_op_f32(sign(var_1.x));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_4 = func_3(!vec3<bool>(_wgslsmith_add_i32(u_input.b, global4.x) < 1i, false, !select(true, false, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d, 30u)], 28u)]))).x;
    return Struct_1(_wgslsmith_f_op_f32(-227f + _wgslsmith_f_op_f32(round(-564f))), -1i, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(992f, -651f, -886f, _wgslsmith_f_op_f32(step(var_2, 559f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2030f, -1000f, 1003f, -999f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1, arg_1, var_3, arg_1), vec4<f32>(471f, var_2, arg_1, -429f))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-1785f, var_1.x, 470f, 212f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1, arg_1, arg_1, 840f), vec4<f32>(-794f, arg_1, var_2, -1000f)))))), all(vec3<bool>(any(vec4<bool>(var_4, global2[_wgslsmith_index_u32(0u, 28u)], global2[_wgslsmith_index_u32(43660u, 28u)], false)), any(vec2<bool>(false, true)), false)))), _wgslsmith_add_u32(arg_2 >> (31854u % 32u), 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_1(Struct_3(~(1u | global3[_wgslsmith_index_u32(4294967295u, 30u)])), -447f, 0u, _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(max(vec4<u32>(0u, 6005u, u_input.c, 76127u), vec4<u32>(global3[_wgslsmith_index_u32(0u, 30u)], global3[_wgslsmith_index_u32(u_input.a.x, 30u)], u_input.a.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(48953u, 30u)], 30u)])), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 17689u, u_input.a.x), vec4<u32>(62235u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(12323u, 30u)], 30u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(5504u, 30u)], 30u)], 4260u))), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 44823u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 30u)], 30u)], u_input.d), ~vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 30u)], 30u)], global3[_wgslsmith_index_u32(4294967295u, 30u)], 1u, 75526u)))), Struct_2(_wgslsmith_f_op_f32(sign(func_1(Struct_3(global3[_wgslsmith_index_u32(41689u, 30u)]), _wgslsmith_f_op_f32(-279f * 1618f), ~4294967295u, vec4<u32>(0u, u_input.d, 39027u, u_input.c) >> (vec4<u32>(10480u, 4294967295u, 0u, u_input.d) % vec4<u32>(32u))).a)), vec3<u32>(u_input.c, ~(~30132u), reverseBits(_wgslsmith_mult_u32(u_input.d, u_input.c))), vec3<i32>(-1i, _wgslsmith_mod_i32(global0.x << (global3[_wgslsmith_index_u32(4294967295u, 30u)] % 32u), global0.x ^ 1i), _wgslsmith_add_i32(min(global0.x, u_input.b), 1i)), abs(_wgslsmith_mult_vec3_u32(u_input.a, u_input.a)) ^ u_input.a, func_1(Struct_3(_wgslsmith_sub_u32(20761u, 0u)), 1017f, _wgslsmith_mod_u32(firstLeadingBit(1u), reverseBits(global3[_wgslsmith_index_u32(u_input.d, 30u)])), vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(4294967295u, u_input.a.x, global3[_wgslsmith_index_u32(0u, 30u)])), ~10265u, _wgslsmith_mod_u32(0u, u_input.a.x), 0u))), vec4<i32>(-1i, -2147483647i, -1i, u_input.b), _wgslsmith_div_i32(-12470i, 35920i) ^ min(global4.x, -1i));
    global3 = array<u32, 30>();
    var var_1 = Struct_3(~global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(58606u, 30u)], 30u)], ~u_input.d), 30u)]);
    var var_2 = var_0.b;
    var_1 = Struct_3(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(var_2.d.x, 0u) & select(u_input.a.zy, vec2<u32>(var_1.a, 1u), vec2<bool>(false, global2[_wgslsmith_index_u32(23446u, 28u)])), vec2<u32>(~var_2.e.d, ~23232u), ~vec2<u32>(u_input.a.x, var_0.b.d.x) >> (u_input.a.yy % vec2<u32>(32u))), ~(~reverseBits(vec2<u32>(var_2.e.d, 4294967295u)))));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.b.e.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e.c.x))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.e.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.e.c.x))))));
    var var_4 = Struct_4(func_1(Struct_3(~abs(global3[_wgslsmith_index_u32(var_0.a.d, 30u)])), -183f, var_1.a, vec4<u32>(1u, ~var_2.e.d ^ _wgslsmith_dot_vec2_u32(var_0.b.d.xy, vec2<u32>(u_input.a.x, 76064u)), var_0.a.d, _wgslsmith_div_u32(abs(u_input.a.x), var_0.b.b.x))), var_0.b, var_0.c, global4.x >> (var_0.b.d.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-567f * _wgslsmith_f_op_f32(-var_0.a.c.x))) - var_3), func_1(Struct_3(max(_wgslsmith_div_u32(40824u, 85795u), ~1u)), var_4.b.a, global3[_wgslsmith_index_u32(1438u, 30u)], reverseBits(vec4<u32>(var_0.b.b.x, var_0.a.d, var_1.a, var_0.b.e.d)) >> (abs(vec4<u32>(u_input.d, var_4.b.d.x, var_0.b.e.d, global3[_wgslsmith_index_u32(var_1.a, 30u)]) & vec4<u32>(var_1.a, var_1.a, var_1.a, 0u)) % vec4<u32>(32u))).b);
}

