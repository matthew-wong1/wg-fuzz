struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12>;

var<private> global1: array<u32, 13> = array<u32, 13>(44076u, 1u, 37457u, 4294967295u, 4294967295u, 19817u, 4294967295u, 4294967295u, 37974u, 4294967295u, 0u, 4294967295u, 72361u);

var<private> global2: array<Struct_4, 23> = array<Struct_4, 23>(Struct_4(9720u, Struct_1(-139f, -122f, vec4<bool>(true, false, false, true), 14227i), 0i), Struct_4(41401u, Struct_1(366f, 651f, vec4<bool>(true, false, true, false), -1524i), -73382i), Struct_4(384u, Struct_1(380f, 498f, vec4<bool>(true, false, true, true), 46842i), 35032i), Struct_4(0u, Struct_1(3096f, 843f, vec4<bool>(false, false, false, false), i32(-2147483648)), 0i), Struct_4(24823u, Struct_1(-1142f, -407f, vec4<bool>(false, false, true, false), 0i), -29526i), Struct_4(0u, Struct_1(186f, 1000f, vec4<bool>(true, true, true, false), -56611i), 0i), Struct_4(1u, Struct_1(1426f, 1307f, vec4<bool>(false, true, true, true), i32(-2147483648)), 17917i), Struct_4(68344u, Struct_1(1728f, 1653f, vec4<bool>(true, false, false, false), -54284i), -8627i), Struct_4(5670u, Struct_1(-427f, 1435f, vec4<bool>(true, false, false, false), -56131i), i32(-2147483648)), Struct_4(25911u, Struct_1(-1000f, 898f, vec4<bool>(false, false, true, false), -56012i), i32(-2147483648)), Struct_4(4294967295u, Struct_1(-396f, 2179f, vec4<bool>(false, true, true, true), i32(-2147483648)), 0i), Struct_4(1u, Struct_1(-1261f, 279f, vec4<bool>(true, false, false, false), 8066i), 2147483647i), Struct_4(58124u, Struct_1(756f, 963f, vec4<bool>(false, true, false, false), 34387i), -1i), Struct_4(0u, Struct_1(184f, 1094f, vec4<bool>(false, true, false, true), 1i), i32(-2147483648)), Struct_4(26046u, Struct_1(-2029f, -715f, vec4<bool>(false, false, false, false), -1i), 15523i), Struct_4(1u, Struct_1(-1045f, -318f, vec4<bool>(false, true, true, true), 35264i), 62865i), Struct_4(45567u, Struct_1(-454f, -1082f, vec4<bool>(true, false, true, true), 2147483647i), 58921i), Struct_4(0u, Struct_1(1170f, -494f, vec4<bool>(true, false, false, true), 54354i), 32241i), Struct_4(56014u, Struct_1(-593f, -1000f, vec4<bool>(true, false, true, false), 3852i), 7267i), Struct_4(1u, Struct_1(436f, -1000f, vec4<bool>(false, true, false, false), 2147483647i), 1i), Struct_4(1u, Struct_1(-762f, 308f, vec4<bool>(false, false, true, true), -4054i), 1i), Struct_4(44192u, Struct_1(913f, -498f, vec4<bool>(true, false, false, false), 14417i), i32(-2147483648)), Struct_4(1u, Struct_1(331f, -1375f, vec4<bool>(false, false, false, false), 1i), -1i));

var<private> global3: bool = false;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: bool) -> vec4<bool> {
    var var_0 = Struct_4(_wgslsmith_dot_vec2_u32(vec2<u32>(~(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(73784u, 13u)], 13u)] >> (1u % 32u)), _wgslsmith_add_u32(global1[_wgslsmith_index_u32(0u, 13u)], ~global1[_wgslsmith_index_u32(1u, 13u)])), vec2<u32>(27408u, _wgslsmith_div_u32(global1[_wgslsmith_index_u32(countOneBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 13u)], 13u)], 13u)], 13u)], 13u)]), 13u)], ~global1[_wgslsmith_index_u32(99299u, 13u)]))), arg_1.c, i32(-1i) * -27906i);
    global0 = array<f32, 12>();
    var var_1 = select(-1i, i32(-1i) * -arg_1.b.e.d, firstTrailingBit(~0u) < _wgslsmith_dot_vec3_u32(vec3<u32>(5323u, var_0.a, ~global1[_wgslsmith_index_u32(41005u, 13u)]), select(min(vec3<u32>(var_0.a, 103104u, global1[_wgslsmith_index_u32(1u, 13u)]), vec3<u32>(24526u, 0u, 4294967295u)), vec3<u32>(global1[_wgslsmith_index_u32(var_0.a, 13u)], var_0.a, var_0.a) & vec3<u32>(4366u, global1[_wgslsmith_index_u32(var_0.a, 13u)], 46328u), vec3<bool>(arg_1.a.c.x, true, false))));
    let var_2 = abs(firstLeadingBit(select(min(vec3<i32>(1i, -2147483647i, -2147483647i), vec3<i32>(-1i, var_0.c, u_input.a)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.d, arg_0.d, var_0.c), vec3<i32>(33287i, 71289i, -5539i)), global0[_wgslsmith_index_u32(34474u, 12u)] >= 332f))) & (vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(arg_0.d, var_0.b.d), firstTrailingBit(u_input.a)), firstLeadingBit(1i), _wgslsmith_dot_vec4_i32(vec4<i32>(3901i, -6150i, arg_0.d, -1i), vec4<i32>(u_input.a, var_0.b.d, arg_0.d, -36361i)) ^ u_input.a) << ((vec3<u32>(1u, ~var_0.a, min(72867u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(35458u, 13u)], 13u)])) | vec3<u32>(abs(var_0.a), global1[_wgslsmith_index_u32(var_0.a, 13u)] >> (32930u % 32u), 0u)) % vec3<u32>(32u)));
    var_1 = 0i;
    return arg_0.c;
}

fn func_2() -> u32 {
    global1 = array<u32, 13>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 12u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(90213u, 13u)], 13u)], 13u)], global1[_wgslsmith_index_u32(11816u, 13u)]), 13u)], 12u)]), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true))), 3897i << (global1[_wgslsmith_index_u32(0u, 13u)] % 32u)), _wgslsmith_dot_vec2_i32(abs(-(vec2<i32>(2448i, 22684i) << (vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10570u, 13u)], 13u)], global1[_wgslsmith_index_u32(0u, 13u)]) % vec2<u32>(32u)))), -_wgslsmith_div_vec2_i32(~vec2<i32>(u_input.a, -2147483647i), vec2<i32>(1i, 1i))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(161f - 1168f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 12u)]))))), select(func_3(Struct_1(-924f, global0[_wgslsmith_index_u32(23885u, 12u)], vec4<bool>(false, true, false, false), 2147483647i), Struct_3(Struct_1(global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 13u)], 12u)], vec4<bool>(true, true, true, false), u_input.a), Struct_2(Struct_1(-2805f, global0[_wgslsmith_index_u32(106353u, 12u)], vec4<bool>(false, true, false, true), u_input.a), 0i, Struct_1(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 13u)], 12u)], global0[_wgslsmith_index_u32(0u, 12u)], vec4<bool>(true, false, false, true), -1i), u_input.a, Struct_1(1000f, -579f, vec4<bool>(false, true, true, false), u_input.a)), Struct_1(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17030u, 13u)], 12u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 13u)], 12u)], vec4<bool>(true, true, true, true), u_input.a), Struct_2(Struct_1(-680f, -792f, vec4<bool>(true, false, false, false), u_input.a), u_input.a, Struct_1(1370f, 1668f, vec4<bool>(false, true, true, true), u_input.a), -1i, Struct_1(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(86237u, 13u)], 13u)], 12u)], global0[_wgslsmith_index_u32(50521u, 12u)], vec4<bool>(false, true, true, false), u_input.a)), Struct_1(-1531f, -230f, vec4<bool>(false, false, false, false), u_input.a)), true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(true, true, true))), true), ~(-22509i)), 0i, Struct_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(30592u, 13u)], 13u)], 12u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 12u)] + _wgslsmith_div_f32(965f, global0[_wgslsmith_index_u32(2931u, 12u)])) - 1124f), select(!func_3(Struct_1(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(24351u, 13u)], 13u)], 13u)], 13u)], 13u)], 12u)], -806f, vec4<bool>(true, false, false, true), u_input.a), Struct_3(Struct_1(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(37341u, 13u)], 12u)], global0[_wgslsmith_index_u32(17126u, 12u)], vec4<bool>(true, true, true, false), u_input.a), Struct_2(Struct_1(global0[_wgslsmith_index_u32(4294967295u, 12u)], -174f, vec4<bool>(true, true, true, false), u_input.a), -27975i, Struct_1(854f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(90193u, 13u)], 13u)], 13u)], 13u)], 13u)], 12u)], vec4<bool>(false, true, true, true), 2147483647i), u_input.a, Struct_1(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3810u, 13u)], 12u)], 906f, vec4<bool>(true, false, false, false), -2147483647i)), Struct_1(-476f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 13u)], 12u)], vec4<bool>(true, true, false, true), u_input.a), Struct_2(Struct_1(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 13u)], 12u)], -1381f, vec4<bool>(true, false, true, true), -1i), 5516i, Struct_1(724f, 1000f, vec4<bool>(true, false, true, false), u_input.a), 74638i, Struct_1(1482f, -1178f, vec4<bool>(true, false, true, false), u_input.a)), Struct_1(-278f, global0[_wgslsmith_index_u32(24465u, 12u)], vec4<bool>(false, true, true, false), -17658i)), false), vec4<bool>(true, select(false, true, true), true, true), any(vec4<bool>(false, true, false, true))), reverseBits(-1i)));
    var var_1 = global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 13u)], 12u)];
    var var_2 = !(!select(!var_0.e.c, select(vec4<bool>(false, false, var_0.e.c.x, true), !vec4<bool>(false, false, true, var_0.a.c.x), true), true));
    let var_3 = var_0.c;
    return global1[_wgslsmith_index_u32(max(~global1[_wgslsmith_index_u32(countOneBits(global1[_wgslsmith_index_u32(0u, 13u)]), 13u)], global1[_wgslsmith_index_u32(56582u, 13u)]), 13u)] & global1[_wgslsmith_index_u32(countOneBits(min(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 13u)], 13u)], _wgslsmith_dot_vec2_u32(~vec2<u32>(global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)]), ~vec2<u32>(global1[_wgslsmith_index_u32(20028u, 13u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 13u)], 13u)], 13u)], 13u)])))), 13u)];
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(select(abs(4294967295u), _wgslsmith_add_u32(41849u, 58353u), arg_2.c.x), func_2()), 0u, global1[_wgslsmith_index_u32(~max(15564u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(14579u, 13u)], 13u)], 13u)], 13u)] & 1u, 13u)]), 13u)], ~78416u), vec4<u32>(1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 13u)], 1u, global1[_wgslsmith_index_u32(0u, 13u)]), vec3<u32>(53812u, global1[_wgslsmith_index_u32(1u, 13u)], 2684u)), ~_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15214u, 13u)], 13u)], 13u)], 13u)]), _wgslsmith_sub_u32(27694u, global1[_wgslsmith_index_u32(27382u, 13u)]) & _wgslsmith_add_u32(11556u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(37456u, 13u)], 13u)])) | _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 0u, global1[_wgslsmith_index_u32(1541u, 13u)], 4294967295u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(45735u, 13u)], 13u)], 13u)], 13u)], 8865u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 13u)], 13u)], 13u)], 13u)], 13u)], 13u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 13u)], 13u)]), vec4<u32>(global1[_wgslsmith_index_u32(1u, 13u)], 0u, global1[_wgslsmith_index_u32(71369u, 13u)], 3179u)), vec4<u32>(global1[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8063u, 13u)], 13u)]), 13u)], _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)], 1u), _wgslsmith_add_u32(32458u, global1[_wgslsmith_index_u32(14294u, 13u)]), ~0u), vec4<u32>(global1[_wgslsmith_index_u32(0u, 13u)], 37678u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(26354u, 13u)], 13u)], 13u)], 13u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 13u)], 13u)]) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(11915u, 13u)], 25069u), vec4<u32>(global1[_wgslsmith_index_u32(1u, 13u)], 90097u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 13u)], 13u)], 13u)], 13u)], 13u)], 13u)]), vec4<u32>(49444u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22108u, 13u)], 13u)], 13u)], 0u, 80186u)) % vec4<u32>(32u))));
    var var_1 = arg_0.d;
    global2 = array<Struct_4, 23>();
    global0 = array<f32, 12>();
    let var_2 = 0i;
    return _wgslsmith_sub_vec4_u32(firstTrailingBit((var_0 << (~vec4<u32>(var_0.x, var_0.x, 51835u, var_0.x) % vec4<u32>(32u))) << ((~vec4<u32>(32051u, 49508u, global1[_wgslsmith_index_u32(80018u, 13u)], 11110u) >> (min(vec4<u32>(global1[_wgslsmith_index_u32(88560u, 13u)], 0u, 74713u, 0u), var_0) % vec4<u32>(32u))) % vec4<u32>(32u))), var_0);
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec3<f32>) -> f32 {
    var var_0 = _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(arg_0, 16950u)), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 20291u), vec2<u32>(33295u, arg_0)) << ((vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 13u)], arg_0) | vec2<u32>(global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(0u, 13u)])) % vec2<u32>(32u))), ~vec2<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(22796u, arg_0, 1u, global1[_wgslsmith_index_u32(arg_0, 13u)]), vec4<u32>(global1[_wgslsmith_index_u32(21420u, 13u)], 70650u, 23456u, arg_0)))) | ~vec2<u32>(global1[_wgslsmith_index_u32(~4294967295u, 13u)], global1[_wgslsmith_index_u32(arg_0, 13u)]);
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-288f, _wgslsmith_f_op_f32(min(-762f, -2201f)), false))), _wgslsmith_f_op_f32(-arg_2.x), arg_1.e.c, 1i), arg_1, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 13u)], 12u)]), _wgslsmith_f_op_f32(select(arg_1.a.a, 2128f, arg_1.c.c.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.e.a))), vec4<bool>(true, !(u_input.a != -1i), arg_1.c.c.x, arg_1.c.c.x), i32(-1i) * -1689i), arg_1, Struct_1(arg_1.c.a, -112f, select(select(select(vec4<bool>(arg_1.a.c.x, false, arg_1.e.c.x, true), arg_1.a.c, arg_1.a.c.x), !vec4<bool>(arg_1.c.c.x, true, arg_1.a.c.x, arg_1.a.c.x), arg_1.a.c.x), !func_3(arg_1.e, Struct_3(Struct_1(global0[_wgslsmith_index_u32(var_0.x, 12u)], -445f, vec4<bool>(arg_1.e.c.x, arg_1.a.c.x, arg_1.c.c.x, arg_1.e.c.x), 1i), Struct_2(arg_1.c, u_input.a, Struct_1(global0[_wgslsmith_index_u32(var_0.x, 12u)], 557f, vec4<bool>(false, arg_1.c.c.x, arg_1.a.c.x, true), 16265i), u_input.a, Struct_1(global0[_wgslsmith_index_u32(arg_0, 12u)], 663f, vec4<bool>(arg_1.e.c.x, arg_1.c.c.x, arg_1.e.c.x, arg_1.e.c.x), u_input.a)), arg_1.e, arg_1, Struct_1(arg_1.a.b, arg_2.x, vec4<bool>(arg_1.a.c.x, arg_1.e.c.x, true, false), u_input.a)), arg_1.e.c.x), arg_1.e.c), -32960i));
    var var_2 = vec3<bool>(!arg_1.a.c.x, !var_1.e.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.b) - -836f), -866f) != -320f);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.e.a)))))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(abs(655f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.x, arg_0), 12u)]) + -483f)));
    var var_4 = _wgslsmith_add_vec4_u32(vec4<u32>(min(~0u, ~(~arg_0)), (~global1[_wgslsmith_index_u32(1u, 13u)] | 45835u) >> (39603u % 32u), ~func_1(Struct_3(var_1.e, Struct_2(arg_1.a, u_input.a, Struct_1(-527f, 941f, var_1.d.c.c, var_1.d.d), var_1.b.b, Struct_1(826f, arg_2.x, var_1.d.a.c, -7279i)), arg_1.c, var_1.d, Struct_1(arg_1.a.b, var_1.a.b, arg_1.a.c, u_input.a)), arg_1.c.b, Struct_1(arg_1.a.b, global0[_wgslsmith_index_u32(17244u, 12u)], vec4<bool>(arg_1.a.c.x, true, arg_1.c.c.x, true), var_1.e.d)).x, 29878u), _wgslsmith_div_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, var_0.x, 4294967295u), 13u)], ~global1[_wgslsmith_index_u32(46139u, 13u)], _wgslsmith_add_u32(arg_0, arg_0), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0, global1[_wgslsmith_index_u32(9051u, 13u)]), vec3<u32>(global1[_wgslsmith_index_u32(4128u, 13u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(43562u, 13u)], 13u)], 1u))), _wgslsmith_mod_vec4_u32(func_1(var_1, arg_1.c.b, var_1.b.e), select(select(vec4<u32>(global1[_wgslsmith_index_u32(62914u, 13u)], 4294967295u, 32104u, arg_0), vec4<u32>(4294967295u, 6106u, global1[_wgslsmith_index_u32(10929u, 13u)], 0u), true), vec4<u32>(30265u, 4294967295u, var_0.x, 20356u), var_1.c.c))));
    return _wgslsmith_div_f32(-835f, _wgslsmith_f_op_f32(-526f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.d.a.b + 882f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = any(!(!vec2<bool>(true, all(vec2<bool>(false, true)))));
    let var_0 = _wgslsmith_f_op_f32(func_4(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(1u, 13u)], 13u)], ~5249u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 13u)], 13u)]), max(func_1(Struct_3(Struct_1(-446f, -554f, vec4<bool>(false, true, false, false), -38047i), Struct_2(Struct_1(global0[_wgslsmith_index_u32(71594u, 12u)], 1346f, vec4<bool>(true, false, true, true), u_input.a), u_input.a, Struct_1(-572f, 988f, vec4<bool>(true, false, false, false), 21081i), u_input.a, Struct_1(-743f, 1935f, vec4<bool>(true, true, true, false), 0i)), Struct_1(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(41149u, 13u)], 12u)], global0[_wgslsmith_index_u32(8396u, 12u)], vec4<bool>(false, false, true, false), u_input.a), Struct_2(Struct_1(1734f, 1101f, vec4<bool>(true, false, false, true), 42719i), u_input.a, Struct_1(global0[_wgslsmith_index_u32(1u, 12u)], 719f, vec4<bool>(false, false, true, false), u_input.a), -2147483647i, Struct_1(-103f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 13u)], 12u)], vec4<bool>(false, false, false, false), u_input.a)), Struct_1(1753f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 13u)], 12u)], vec4<bool>(false, false, true, true), 2147483647i)), global0[_wgslsmith_index_u32(37501u, 12u)], Struct_1(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 13u)], 12u)], 1893f, vec4<bool>(true, true, true, false), -1215i)), _wgslsmith_mult_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(0u, 13u)], 23127u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(34588u, 13u)], 13u)]), vec4<u32>(global1[_wgslsmith_index_u32(51719u, 13u)], 4294967295u, 12678u, 0u)))), Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(145f + -537f))), -161f, vec4<bool>(true, true, true, true), -43280i << (global1[_wgslsmith_index_u32(~1u, 13u)] % 32u)), -1i, Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1417f - 167f))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 12u)] - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], 12u)])), vec4<bool>(true, false, true, true), countOneBits(71i | u_input.a)), -1i, Struct_1(_wgslsmith_f_op_f32(-966f * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 12u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1163f)), global0[_wgslsmith_index_u32(0u, 12u)]), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true), abs(u_input.a) & select(18516i, -2147483647i, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(25822u, 13u)], 12u)], 1270f), vec3<f32>(442f, global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(28327u, 12u)]), vec3<bool>(true, true, true)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(4294967295u & global1[_wgslsmith_index_u32(~72843u, 13u)], ~1u) | 7248u, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(44888u, 12u)] + -555f) + _wgslsmith_f_op_f32(max(var_0, var_0))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(14684u, 12u)]))))))), 9527u >> (1u % 32u));
}

