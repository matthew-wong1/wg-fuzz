struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15>;

var<private> global1: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(vec3<u32>(0u, 0u, 17751u), Struct_1(1u, true, false, vec4<i32>(i32(-2147483648), i32(-2147483648), 44830i, -30768i), vec3<bool>(false, false, false)), 114f, Struct_1(1u, false, false, vec4<i32>(2147483647i, 21199i, -7121i, -53457i), vec3<bool>(false, true, false))), Struct_2(vec3<u32>(15866u, 4294967295u, 58226u), Struct_1(71464u, false, true, vec4<i32>(i32(-2147483648), -1i, -19740i, -27349i), vec3<bool>(false, true, true)), -417f, Struct_1(1u, false, true, vec4<i32>(-1i, -1i, -2539i, 0i), vec3<bool>(false, true, false))), Struct_2(vec3<u32>(1u, 1u, 55142u), Struct_1(68983u, false, true, vec4<i32>(-8285i, 0i, 12010i, 2147483647i), vec3<bool>(true, false, true)), -1035f, Struct_1(1u, false, true, vec4<i32>(63477i, 40888i, -54429i, 1i), vec3<bool>(false, false, true))), Struct_2(vec3<u32>(1u, 4294967295u, 872u), Struct_1(108641u, false, false, vec4<i32>(-268i, -46726i, -10715i, 12682i), vec3<bool>(true, true, true)), -1171f, Struct_1(0u, true, true, vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), -1i), vec3<bool>(true, true, true))), Struct_2(vec3<u32>(4294967295u, 1u, 1u), Struct_1(4294967295u, false, false, vec4<i32>(-1i, -7376i, 1i, 929i), vec3<bool>(true, true, true)), 109f, Struct_1(22176u, true, false, vec4<i32>(-46845i, 1i, -26911i, 0i), vec3<bool>(false, false, true))), Struct_2(vec3<u32>(1u, 22745u, 1u), Struct_1(13831u, true, true, vec4<i32>(-1i, 0i, 1i, 17269i), vec3<bool>(false, false, true)), -1480f, Struct_1(49588u, true, false, vec4<i32>(-1i, -1i, -1i, -6736i), vec3<bool>(false, false, false))), Struct_2(vec3<u32>(4294967295u, 4294967295u, 4294967295u), Struct_1(1u, true, true, vec4<i32>(-1i, 2147483647i, -1i, i32(-2147483648)), vec3<bool>(true, true, false)), -1000f, Struct_1(4294967295u, true, false, vec4<i32>(13714i, i32(-2147483648), -1i, 1i), vec3<bool>(true, true, false))), Struct_2(vec3<u32>(73325u, 98159u, 6295u), Struct_1(0u, false, false, vec4<i32>(28572i, -11297i, i32(-2147483648), -10294i), vec3<bool>(true, false, false)), -554f, Struct_1(62627u, false, false, vec4<i32>(1052i, 9811i, -73296i, i32(-2147483648)), vec3<bool>(false, true, false))), Struct_2(vec3<u32>(4294967295u, 0u, 40040u), Struct_1(0u, false, false, vec4<i32>(31677i, i32(-2147483648), 2147483647i, 31422i), vec3<bool>(false, false, false)), 188f, Struct_1(30574u, true, false, vec4<i32>(37643i, i32(-2147483648), i32(-2147483648), -1i), vec3<bool>(false, false, true))), Struct_2(vec3<u32>(4128u, 1u, 1u), Struct_1(14751u, false, true, vec4<i32>(0i, -18000i, 1i, 2147483647i), vec3<bool>(false, true, true)), 1437f, Struct_1(0u, true, false, vec4<i32>(2147483647i, 3570i, 2147483647i, -50237i), vec3<bool>(true, false, true))), Struct_2(vec3<u32>(1u, 14331u, 1u), Struct_1(41216u, false, true, vec4<i32>(1i, 0i, 94663i, 0i), vec3<bool>(true, false, false)), 176f, Struct_1(2782u, true, true, vec4<i32>(1i, i32(-2147483648), 0i, 0i), vec3<bool>(false, false, false))), Struct_2(vec3<u32>(45856u, 1u, 1u), Struct_1(1u, false, true, vec4<i32>(-14102i, 77707i, -57197i, 9850i), vec3<bool>(true, true, true)), -1918f, Struct_1(1u, true, true, vec4<i32>(i32(-2147483648), -15423i, 2147483647i, 0i), vec3<bool>(true, false, true))), Struct_2(vec3<u32>(70859u, 0u, 0u), Struct_1(4294967295u, true, true, vec4<i32>(-65405i, 41061i, -5583i, -1i), vec3<bool>(false, true, true)), 196f, Struct_1(27082u, false, false, vec4<i32>(2147483647i, -35447i, 23498i, 67429i), vec3<bool>(false, false, false))), Struct_2(vec3<u32>(0u, 32821u, 4294967295u), Struct_1(56044u, false, true, vec4<i32>(-1i, -1i, -1i, 2147483647i), vec3<bool>(false, true, true)), -592f, Struct_1(6799u, false, false, vec4<i32>(-1i, -86337i, 7746i, -1i), vec3<bool>(false, false, false))), Struct_2(vec3<u32>(1u, 1u, 94700u), Struct_1(1u, true, true, vec4<i32>(0i, -1i, -47754i, i32(-2147483648)), vec3<bool>(true, false, false)), -537f, Struct_1(44138u, true, true, vec4<i32>(33431i, -45721i, -1i, 34823i), vec3<bool>(true, true, true))), Struct_2(vec3<u32>(0u, 0u, 1u), Struct_1(73017u, true, true, vec4<i32>(-46148i, 0i, 3598i, -28237i), vec3<bool>(false, true, false)), -1157f, Struct_1(0u, false, false, vec4<i32>(-29437i, 1i, -1i, 57865i), vec3<bool>(true, false, true))), Struct_2(vec3<u32>(1u, 36300u, 15143u), Struct_1(56341u, true, false, vec4<i32>(-1i, 60519i, -1i, 17897i), vec3<bool>(false, false, true)), -1272f, Struct_1(63135u, false, false, vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), -1i), vec3<bool>(false, true, true))), Struct_2(vec3<u32>(4294967295u, 1u, 4294967295u), Struct_1(29072u, false, true, vec4<i32>(-1i, 36960i, -17511i, 7642i), vec3<bool>(true, true, true)), -1000f, Struct_1(1u, true, true, vec4<i32>(0i, 36132i, 15698i, i32(-2147483648)), vec3<bool>(false, true, false))), Struct_2(vec3<u32>(17970u, 19854u, 0u), Struct_1(24657u, true, true, vec4<i32>(0i, -14836i, 0i, 25029i), vec3<bool>(true, false, true)), 1125f, Struct_1(0u, true, false, vec4<i32>(20923i, 3430i, 2147483647i, -1i), vec3<bool>(false, false, false))), Struct_2(vec3<u32>(4294967295u, 0u, 0u), Struct_1(1u, false, false, vec4<i32>(0i, -8765i, 39442i, -10809i), vec3<bool>(false, true, false)), 1885f, Struct_1(34440u, true, false, vec4<i32>(-1i, 24164i, 26114i, 44510i), vec3<bool>(true, false, true))));

var<private> global2: i32;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>) -> bool {
    global1 = array<Struct_2, 20>();
    return true;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> bool {
    return !arg_2.d.e.x;
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    global1 = array<Struct_2, 20>();
    var var_0 = Struct_1(~(~(_wgslsmith_mod_u32(u_input.b, 6230u) | ~4294967295u)), true, func_4(_wgslsmith_f_op_f32(179f + -812f), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, ~_wgslsmith_mod_u32(u_input.b, u_input.b)), 15u)], Struct_2(max(select(vec3<u32>(40565u, 57449u, 7475u), vec3<u32>(0u, u_input.b, u_input.b), vec3<bool>(true, arg_0.x, arg_0.x)), ~vec3<u32>(u_input.b, u_input.b, 103393u)), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(1963u, 4294967295u, 4294967295u, 48719u), vec4<u32>(u_input.b, 4294967295u, u_input.b, 58467u)), arg_0.x, func_3(11255u, vec4<u32>(1u, 0u, u_input.b, u_input.b)), vec4<i32>(u_input.c, 1i, u_input.c, -30723i), vec3<bool>(arg_0.x, true, false)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1934f)), -1419f)), Struct_1(_wgslsmith_mult_u32(4294967295u, u_input.b), !arg_0.x, u_input.a.x != u_input.c, vec4<i32>(2147483647i, 1i, u_input.a.x, 2147483647i), select(vec3<bool>(arg_0.x, true, true), vec3<bool>(true, arg_0.x, true), true))), Struct_2(~max(vec3<u32>(4294967295u, 86628u, 85029u), vec3<u32>(0u, 22543u, 34868u)), Struct_1(1u, any(vec4<bool>(true, false, true, arg_0.x)), true, reverseBits(vec4<i32>(u_input.c, -2147483647i, 0i, u_input.a.x)), vec3<bool>(arg_0.x, arg_0.x, true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(951f, -672f)), _wgslsmith_div_f32(365f, 2317f))), Struct_1(~u_input.b, arg_0.x, true, vec4<i32>(u_input.c, -5812i, 52867i, -2147483647i), select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(false, false, arg_0.x), vec3<bool>(false, arg_0.x, arg_0.x))))), _wgslsmith_sub_vec4_i32(abs(~vec4<i32>(u_input.a.x, u_input.a.x, 35046i, u_input.a.x) ^ firstLeadingBit(vec4<i32>(u_input.a.x, 5533i, u_input.c, 25464i))), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, u_input.a.x, u_input.c, 2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 0i, 22971i, u_input.c), vec4<i32>(u_input.c, u_input.c, u_input.c, 77824i), vec4<i32>(u_input.a.x, -35238i, u_input.c, u_input.c)), vec4<i32>(u_input.a.x, u_input.c, u_input.a.x, 1i) >> (vec4<u32>(0u, u_input.b, 1u, 37241u) % vec4<u32>(32u))), min(vec4<i32>(-1i, 10785i, 2147483647i, u_input.c), -vec4<i32>(u_input.c, 8373i, u_input.a.x, 156i)))), !vec3<bool>(true, func_3(~56265u, vec4<u32>(4294967295u, 1u, 4294967295u, 96287u) >> (vec4<u32>(93918u, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u))), 1i <= firstTrailingBit(u_input.a.x)));
    global0 = array<Struct_2, 15>();
    let var_1 = any(!(!(!(!vec4<bool>(arg_0.x, var_0.b, arg_0.x, arg_0.x)))));
    global1 = array<Struct_2, 20>();
    return _wgslsmith_f_op_f32(1649f + _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1581f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -572f))))));
}

fn func_5(arg_0: vec4<f32>, arg_1: u32, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = Struct_1(u_input.b, true, !select(true, select(false, false, true) != true, true), arg_2, vec3<bool>(true, 1053f < _wgslsmith_f_op_f32(-arg_0.x), false));
    var_0 = Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(select(countOneBits(vec2<u32>(50323u, u_input.b)), ~vec2<u32>(arg_1, arg_1), var_0.b | var_0.b), vec2<u32>(4294967295u, 50637u)), _wgslsmith_mod_vec2_u32(~vec2<u32>(arg_1, 74958u), firstTrailingBit(vec2<u32>(48740u, u_input.b))) | _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1, u_input.b), vec2<u32>(arg_1, 49309u)), vec2<u32>(var_0.a, 1u))), false, any(vec4<bool>(any(vec4<bool>(var_0.e.x, var_0.c, true, var_0.e.x)), var_0.e.x, true, false)) || true, vec4<i32>(var_0.d.x, arg_2.x, var_0.d.x, ~(-arg_2.x | abs(arg_2.x))), var_0.e);
    var_0 = Struct_1(max(1u, 66695u), var_0.c, true, -arg_2, select(vec3<bool>(true, func_3(var_0.a ^ 42925u, _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 189u, u_input.b), vec4<u32>(var_0.a, 0u, 0u, var_0.a))), var_0.c), select(var_0.e, select(!var_0.e, vec3<bool>(var_0.e.x, false, false), any(vec4<bool>(true, var_0.e.x, true, var_0.e.x))), vec3<bool>(true, true, true)), !var_0.e.x || (!var_0.e.x | true)));
    var var_1 = true;
    var_1 = false;
    return Struct_2(vec3<u32>(abs(countOneBits(firstLeadingBit(92259u))), 0u, _wgslsmith_dot_vec4_u32(min(max(vec4<u32>(4294967295u, arg_1, 0u, 1u), vec4<u32>(0u, u_input.b, 21315u, u_input.b)), _wgslsmith_div_vec4_u32(vec4<u32>(7495u, u_input.b, u_input.b, 1u), vec4<u32>(arg_1, arg_1, u_input.b, u_input.b))), firstTrailingBit(vec4<u32>(27692u, 25874u, var_0.a, 1u)))), Struct_1(~(~92116u), var_0.c, var_0.b, arg_2, select(var_0.e, vec3<bool>(!var_0.b, true, true), true)), _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(arg_0.x * arg_0.x)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.x - arg_0.x))))), Struct_1(_wgslsmith_mult_u32(~4294967295u, 0u & u_input.b) ^ 1u, true, !func_4(-1406f, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 1442u, var_0.a), vec3<u32>(u_input.b, var_0.a, 1u)), 20u)], global0[_wgslsmith_index_u32(1u, 15u)], Struct_2(vec3<u32>(7216u, u_input.b, arg_1), Struct_1(1u, true, false, var_0.d, var_0.e), 1152f, Struct_1(var_0.a, var_0.b, false, var_0.d, var_0.e))), _wgslsmith_clamp_vec4_i32(arg_2 & arg_2, arg_2 | _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.d.x, 16320i, arg_2.x, -17162i), vec4<i32>(u_input.a.x, arg_2.x, 39981i, -1i)), arg_2 << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, arg_1, 0u), vec4<u32>(arg_1, u_input.b, 0u, 81475u), vec4<u32>(arg_1, 4294967295u, 1u, u_input.b)) % vec4<u32>(32u))), var_0.e));
}

fn func_1() -> i32 {
    var var_0 = func_5(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-816f, 119f, -2392f, 519f) + vec4<f32>(264f, 842f, 1018f, -586f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -438f, 868f, -1710f) * vec4<f32>(524f, 1359f, -1000f, 1486f))) * vec4<f32>(_wgslsmith_f_op_f32(ceil(-261f)), _wgslsmith_f_op_f32(-841f - 287f), _wgslsmith_f_op_f32(func_2(vec2<bool>(true, true))), _wgslsmith_f_op_f32(-3542f * 1020f))))), abs(u_input.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), u_input.a.x, -_wgslsmith_clamp_i32(-51821i, -27565i, u_input.a.x), u_input.a.x), vec4<i32>(select(_wgslsmith_mod_i32(1i, u_input.a.x), u_input.a.x, true), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, 18929i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, u_input.a.x, u_input.a.x), vec3<i32>(1i, u_input.a.x, 2147483647i))), ~0i >> (1u % 32u), u_input.c), vec4<i32>(i32(-1i) * -u_input.c, _wgslsmith_dot_vec2_i32(abs(u_input.a.xx), _wgslsmith_mod_vec2_i32(u_input.a.zy, vec2<i32>(49500i, 81728i))), reverseBits(u_input.a.x), reverseBits(max(-14444i, -2147483647i)))));
    var var_1 = select(abs(vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.c), vec2<i32>(u_input.c, u_input.c))), ~vec2<i32>(_wgslsmith_sub_i32(50487i, -u_input.c), 2147483647i), all(select(vec4<bool>(false, true, all(vec3<bool>(false, false, true)), true), vec4<bool>(true, true, true, var_0.d.e.x), !(var_0.d.a < 55831u))));
    let var_2 = !var_0.d.c;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))) - _wgslsmith_f_op_f32(f32(-1f) * -791f)));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(223f, 2111f, -908f, -772f), vec4<f32>(1018f, var_0.c, var_0.c, var_0.c), vec4<bool>(var_0.b.e.x, false, false, true))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, 778f, var_0.c, 1000f) - vec4<f32>(-407f, -588f, var_0.c, -1143f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, var_0.c, -1040f, -1880f) * vec4<f32>(var_0.c, 355f, var_0.c, var_0.c)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(442f, var_0.c, -1243f, -195f) - vec4<f32>(var_0.c, 1000f, var_0.c, -764f)))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-673f, var_0.c, -882f, var_0.c) * vec4<f32>(189f, var_0.c, var_0.c, var_0.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(686f, -874f, -105f, 1256f) * vec4<f32>(var_0.c, var_0.c, -562f, var_0.c)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, -996f, var_0.c, 364f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(658f, -728f, var_0.c, var_0.c) * vec4<f32>(203f, var_0.c, 609f, var_0.c)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1515f, -1524f, -1553f, 1473f), vec4<f32>(var_0.c, var_0.c, var_0.c, -687f), vec4<bool>(true, false, false, var_2))))))));
    return var_0.d.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(0i) >= _wgslsmith_mult_i32(~_wgslsmith_sub_i32(u_input.c, func_1()), 9132i);
    var var_1 = vec2<u32>(1u, select(u_input.b, _wgslsmith_add_u32(u_input.b >> (u_input.b % 32u), u_input.b), false)) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(823f, -2991f, 1000f) * vec3<f32>(-1000f, 490f, -1285f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(158f, 1000f, -728f)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, -436f, 106f))))));
    var_1 = vec2<u32>(59488u, var_1.x) << (_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 34190u), abs(~vec2<u32>(u_input.b, 54994u))), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b, 0u), vec3<u32>(var_1.x, var_1.x, 1u)), ~u_input.b) | _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.x, var_1.x), vec2<u32>(var_1.x, 15801u), vec2<u32>(var_1.x, u_input.b)), vec2<u32>(47231u, 8568u))) % vec2<u32>(32u));
    var_1 = vec2<u32>(_wgslsmith_add_u32(reverseBits(23590u), func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(202f, var_2.x, -370f, 1520f) + vec4<f32>(var_2.x, 1472f, var_2.x, 787f))), ~(~19352u), func_5(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2566f, var_2.x, var_2.x, -389f), vec4<f32>(var_2.x, var_2.x, -792f, -912f), true)), u_input.b, vec4<i32>(-2147483647i, u_input.a.x, u_input.c, u_input.c)).d.d).a.x), ~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(-25579i >> (0u % 32u), vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x + var_2.x), _wgslsmith_f_op_f32(-472f - -712f)) - -127f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, var_2.x) * 433f))), _wgslsmith_f_op_f32(round(1f))));
}

