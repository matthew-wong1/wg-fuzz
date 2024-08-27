struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: f32,
    d: Struct_3,
    e: vec4<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec3<u32>, 10> = array<vec3<u32>, 10>(vec3<u32>(4294967295u, 4034u, 0u), vec3<u32>(1u, 29583u, 1u), vec3<u32>(31391u, 1u, 21757u), vec3<u32>(98342u, 0u, 65811u), vec3<u32>(45127u, 0u, 1u), vec3<u32>(0u, 3491u, 53720u), vec3<u32>(0u, 0u, 45363u), vec3<u32>(20614u, 1u, 15345u), vec3<u32>(4527u, 4294967295u, 0u), vec3<u32>(1u, 4294967295u, 49521u));

var<private> global2: array<Struct_4, 11> = array<Struct_4, 11>(Struct_4(Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec2<u32>(0u, 0u)), vec4<i32>(-70792i, -45540i, 11018i, 0i)), 1u, 1246f, Struct_3(vec4<u32>(4294967295u, 4294967295u, 6725u, 4294967295u)), vec4<f32>(-660f, 1234f, 777f, 716f)), Struct_4(Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec2<u32>(28010u, 1u)), vec4<i32>(0i, 2147483647i, -53286i, i32(-2147483648))), 0u, 1664f, Struct_3(vec4<u32>(60399u, 1u, 49842u, 82831u)), vec4<f32>(-1000f, -848f, -266f, 1460f)), Struct_4(Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec2<u32>(4294967295u, 0u)), vec4<i32>(11776i, -1i, -18180i, 53420i)), 1u, -873f, Struct_3(vec4<u32>(0u, 16858u, 1u, 4294967295u)), vec4<f32>(931f, 344f, -630f, 560f)), Struct_4(Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec2<u32>(42795u, 1u)), vec4<i32>(-26463i, i32(-2147483648), 135i, 11284i)), 16628u, 450f, Struct_3(vec4<u32>(34825u, 0u, 1u, 81325u)), vec4<f32>(1384f, 1790f, -287f, 1123f)), Struct_4(Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec2<u32>(0u, 3728u)), vec4<i32>(i32(-2147483648), 48171i, 0i, 0i)), 42654u, 1000f, Struct_3(vec4<u32>(10110u, 11958u, 1u, 1u)), vec4<f32>(1170f, 271f, -524f, -1000f)), Struct_4(Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec2<u32>(11438u, 4294967295u)), vec4<i32>(-1i, 2147483647i, -17339i, 4704i)), 13967u, -1000f, Struct_3(vec4<u32>(4294967295u, 1u, 0u, 9769u)), vec4<f32>(1029f, -276f, -1159f, 383f)), Struct_4(Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec2<u32>(52325u, 18953u)), vec4<i32>(-13711i, i32(-2147483648), 1i, 30793i)), 52552u, -1000f, Struct_3(vec4<u32>(47724u, 48632u, 84166u, 20356u)), vec4<f32>(1808f, 1178f, 1080f, 282f)), Struct_4(Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec2<u32>(1u, 0u)), vec4<i32>(i32(-2147483648), 0i, 16669i, -9021i)), 45728u, -1131f, Struct_3(vec4<u32>(4294967295u, 4294967295u, 1u, 0u)), vec4<f32>(-1000f, 1000f, -251f, 950f)), Struct_4(Struct_2(Struct_1(vec4<bool>(true, false, false, false), vec2<u32>(69491u, 4294967295u)), vec4<i32>(0i, 8229i, 1i, -10790i)), 1u, 430f, Struct_3(vec4<u32>(4294967295u, 41427u, 39923u, 0u)), vec4<f32>(375f, -351f, -1118f, -1207f)), Struct_4(Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec2<u32>(1u, 4294967295u)), vec4<i32>(i32(-2147483648), 0i, -49754i, 1i)), 3940u, -199f, Struct_3(vec4<u32>(1u, 4294967295u, 10702u, 52534u)), vec4<f32>(292f, -660f, -936f, -568f)), Struct_4(Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec2<u32>(7234u, 43246u)), vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), -1i)), 1u, 582f, Struct_3(vec4<u32>(61607u, 63544u, 4294967295u, 4294967295u)), vec4<f32>(-1104f, 862f, 853f, 305f)));

var<private> global3: f32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_5, arg_2: Struct_5) -> u32 {
    global3 = arg_0.b;
    global3 = _wgslsmith_f_op_f32(abs(1067f));
    global0 = arg_0.a;
    var var_0 = Struct_3(vec4<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(arg_0.a.a.xy), arg_0.a.a.wz | vec2<u32>(arg_0.a.a.x, 4294967295u)), ~arg_2.a.a.x, ~7791u << (u_input.c.x % 32u), 1u) << (arg_0.a.a % vec4<u32>(32u)));
    let var_1 = 59144u;
    return firstLeadingBit(~max(~_wgslsmith_mult_u32(1u, 2812u), _wgslsmith_dot_vec2_u32(var_0.a.zz, firstLeadingBit(vec2<u32>(5272u, arg_2.a.a.x)))));
}

fn func_2() -> Struct_3 {
    global1 = array<vec3<u32>, 10>();
    let var_0 = vec3<u32>(~(~1u), ~func_3(Struct_5(Struct_3(global0.a), -1281f), Struct_5(Struct_3(global0.a), 891f), Struct_5(Struct_3(global0.a), 223f)), _wgslsmith_dot_vec4_u32(~vec4<u32>(37369u, 26342u, 1u, u_input.c.x) >> (vec4<u32>(0u, 70236u, 1u, global0.a.x) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 49486u, 1u, 4294967295u), global0.a))) & max(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(global1[_wgslsmith_index_u32(4294967295u, 10u)], global0.a.xwy), ~global0.a.xxw), vec3<u32>(~16760u, ~35991u, ~16966u)), global0.a.yxy);
    return Struct_3(select(global0.a, _wgslsmith_add_vec4_u32(vec4<u32>(~1u, 42750u, min(u_input.c.x, 4294967295u), 34253u), abs(countOneBits(global0.a))), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), true), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), true), u_input.d < reverseBits(0i))));
}

fn func_1() -> vec2<bool> {
    let var_0 = Struct_5(func_2(), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-997f + _wgslsmith_f_op_f32(select(-223f, _wgslsmith_f_op_f32(-547f - 316f), true))), 1f)));
    let var_1 = ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(countOneBits(23038u), u_input.c.x, ~var_0.a.a.x, _wgslsmith_sub_u32(40092u, u_input.c.x)), abs(~vec4<u32>(var_0.a.a.x, 0u, var_0.a.a.x, 88598u))));
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, 1f), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -501f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1190f, _wgslsmith_f_op_f32(465f * _wgslsmith_f_op_f32(-var_0.b)))));
    let var_4 = ~(-firstTrailingBit(2147483647i) ^ 1i) != u_input.b.x;
    return select(!select(vec2<bool>(true, true), !select(vec2<bool>(false, var_4), vec2<bool>(false, false), vec2<bool>(true, var_2)), select(!vec2<bool>(var_2, var_2), !vec2<bool>(false, var_4), vec2<bool>(var_2, true))), vec2<bool>(max(~var_1.x, ~4294967295u) == 21763u, all(!select(vec3<bool>(true, false, false), vec3<bool>(var_4, true, var_2), var_4))), var_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(u_input.d, ~(~(36617i | u_input.b.x) ^ 1i), u_input.d);
    var_0 = abs(vec3<i32>(var_0.x, i32(-1i) * -22335i, -_wgslsmith_sub_i32(u_input.a.x >> (4294967295u % 32u), ~1i)));
    global3 = 646f;
    var var_1 = all(func_1()) && false;
    let var_2 = true;
    global3 = 1000f;
    global1 = array<vec3<u32>, 10>();
    var var_3 = select(vec2<u32>(~(~_wgslsmith_mod_u32(55525u, 40818u)), global0.a.x), vec2<u32>(abs(func_2().a.x), 4294967295u), all(vec3<bool>(u_input.d <= -var_0.x, !var_2 || !var_2, func_1().x)));
    let var_4 = Struct_1(!(!select(select(vec4<bool>(var_2, false, var_2, false), vec4<bool>(true, var_2, true, false), false), select(vec4<bool>(false, false, true, true), vec4<bool>(var_2, true, var_2, var_2), vec4<bool>(var_2, var_2, false, var_2)), vec4<bool>(true, false, true, var_2))), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 1u), u_input.c) << (firstTrailingBit(vec2<u32>(1u, 1u)) % vec2<u32>(32u)), reverseBits(vec2<u32>(var_3.x, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(351f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(234f * 232f), _wgslsmith_f_op_f32(-769f - -1114f), any(vec3<bool>(true, var_4.a.x, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1427f))), vec3<u32>(u_input.c.x, ~_wgslsmith_add_u32(~var_3.x, u_input.c.x & var_4.b.x), var_3.x), _wgslsmith_dot_vec2_u32(func_2().a.zx, _wgslsmith_mult_vec2_u32(vec2<u32>(var_4.b.x, global0.a.x), ~vec2<u32>(u_input.c.x, 15383u) | ~vec2<u32>(var_4.b.x, global0.a.x))), vec3<u32>(u_input.c.x, abs(55181u) ^ countOneBits(countOneBits(global0.a.x)), ~var_4.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2153f))));
}

