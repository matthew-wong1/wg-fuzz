struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: bool,
    d: i32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<bool, 31> = array<bool, 31>(false, false, false, true, false, true, true, false, false, true, true, true, false, true, false, false, false, false, false, true, false, true, false, true, false, true, true, true, false, false, false);

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec4<u32>(31895u, 4294967295u, 33640u, 10857u), -13114i, false, i32(-2147483648), vec4<f32>(1979f, 1476f, -554f, -2151f)), Struct_1(vec4<u32>(7499u, 0u, 12077u, 7947u), 38615i, true, 7244i, vec4<f32>(586f, 990f, -1000f, 677f)), Struct_1(vec4<u32>(41810u, 4294967295u, 1u, 1u), 47761i, false, -1i, vec4<f32>(-1000f, 2075f, -596f, -744f)), Struct_1(vec4<u32>(11077u, 4294967295u, 1u, 4090u), i32(-2147483648), true, -12834i, vec4<f32>(792f, 964f, -939f, 497f)), Struct_1(vec4<u32>(55234u, 4294967295u, 53622u, 303u), -30541i, false, 2147483647i, vec4<f32>(1636f, -1070f, 1000f, 812f)), Struct_1(vec4<u32>(15187u, 32857u, 62797u, 1u), 1i, false, i32(-2147483648), vec4<f32>(360f, -1701f, -935f, -634f)), Struct_1(vec4<u32>(1949u, 4294967295u, 27220u, 14621u), 385i, true, 2147483647i, vec4<f32>(-396f, -1285f, 1000f, -496f)), Struct_1(vec4<u32>(35538u, 18721u, 4294967295u, 45831u), i32(-2147483648), false, 2147483647i, vec4<f32>(1828f, -987f, -1564f, -242f)), Struct_1(vec4<u32>(0u, 1u, 4294967295u, 40505u), -17011i, false, -1i, vec4<f32>(-1831f, 1649f, -304f, 862f)), Struct_1(vec4<u32>(0u, 15823u, 36086u, 1u), i32(-2147483648), true, 29327i, vec4<f32>(-645f, 411f, 510f, -501f)), Struct_1(vec4<u32>(4294967295u, 0u, 28174u, 104489u), -29i, true, 1i, vec4<f32>(756f, 694f, -739f, -614f)), Struct_1(vec4<u32>(0u, 1u, 36654u, 98137u), 64022i, false, 1i, vec4<f32>(-361f, 1353f, -504f, -270f)), Struct_1(vec4<u32>(4294967295u, 38105u, 0u, 122960u), 1i, true, -3882i, vec4<f32>(424f, 1809f, -2266f, -748f)), Struct_1(vec4<u32>(1u, 33097u, 71565u, 0u), -51489i, true, 1i, vec4<f32>(651f, -607f, -633f, -1423f)), Struct_1(vec4<u32>(0u, 1u, 61994u, 1u), -12449i, false, i32(-2147483648), vec4<f32>(-267f, -1603f, -406f, -1023f)), Struct_1(vec4<u32>(31346u, 1u, 0u, 4294967295u), -21894i, true, 0i, vec4<f32>(-1282f, 442f, 1419f, -690f)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 92238u, 30225u), -5791i, true, 1i, vec4<f32>(103f, 316f, -1095f, -1000f)), Struct_1(vec4<u32>(0u, 12933u, 47903u, 74762u), -29787i, false, -28570i, vec4<f32>(145f, -528f, -148f, 783f)), Struct_1(vec4<u32>(4294967295u, 0u, 0u, 4294967295u), -7680i, true, i32(-2147483648), vec4<f32>(932f, 305f, 911f, 2516f)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 11925u), -1i, false, 1i, vec4<f32>(-255f, -1898f, -693f, 188f)), Struct_1(vec4<u32>(1u, 0u, 40718u, 21961u), 0i, true, 19942i, vec4<f32>(-472f, 1314f, 679f, -911f)), Struct_1(vec4<u32>(4294967295u, 1u, 43549u, 1u), i32(-2147483648), false, -2235i, vec4<f32>(-1681f, 2219f, 813f, -1504f)), Struct_1(vec4<u32>(19788u, 4294967295u, 5908u, 41568u), -7209i, false, 0i, vec4<f32>(-775f, 355f, 1073f, 1754f)), Struct_1(vec4<u32>(50213u, 51622u, 12620u, 73828u), 0i, false, -1i, vec4<f32>(1941f, 1378f, 825f, 1125f)), Struct_1(vec4<u32>(4294967295u, 1u, 1u, 0u), 0i, true, -44062i, vec4<f32>(667f, -1340f, -908f, -390f)), Struct_1(vec4<u32>(4294967295u, 0u, 0u, 1u), i32(-2147483648), true, -22110i, vec4<f32>(-714f, -924f, 200f, -1000f)), Struct_1(vec4<u32>(12993u, 4294967295u, 1u, 4294967295u), 0i, false, 0i, vec4<f32>(1000f, 532f, 997f, 372f)), Struct_1(vec4<u32>(22610u, 0u, 44173u, 75696u), i32(-2147483648), false, 22473i, vec4<f32>(-177f, 987f, 2241f, 1072f)), Struct_1(vec4<u32>(0u, 11441u, 1u, 1u), 61639i, false, 1i, vec4<f32>(905f, -781f, -201f, 310f)), Struct_1(vec4<u32>(59221u, 0u, 32060u, 1406u), -1i, false, 1i, vec4<f32>(-309f, -1354f, -975f, -123f)));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> vec4<i32> {
    return u_input.e;
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = -2147483647i;
    global2 = array<Struct_1, 30>();
    let var_1 = _wgslsmith_f_op_f32(-arg_0.e.x);
    var var_2 = select(vec4<u32>(~firstTrailingBit(global0.x), 16553u, ~arg_0.a.x >> (25090u % 32u), abs(_wgslsmith_add_u32(global0.x, 37939u))) & abs(countOneBits(~arg_0.a)), arg_0.a, vec4<bool>(arg_0.c && true, global1[_wgslsmith_index_u32(12092u, 31u)], true, global1[_wgslsmith_index_u32(arg_0.a.x, 31u)]));
    global2 = array<Struct_1, 30>();
    return select(!(!(!select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 31u)], false), vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(arg_0.c, global1[_wgslsmith_index_u32(var_2.x, 31u)])))), !vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 31u)], _wgslsmith_div_i32(-401i, 2147483647i) <= _wgslsmith_sub_i32(-1i, u_input.e.x)), !select(vec2<bool>(all(vec3<bool>(true, arg_0.c, false)), u_input.e.x <= -71353i), select(vec2<bool>(true, true), vec2<bool>(true, global1[_wgslsmith_index_u32(global0.x, 31u)]), vec2<bool>(global1[_wgslsmith_index_u32(17505u, 31u)], true)), true));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1) -> bool {
    global1 = array<bool, 31>();
    var var_0 = u_input.c;
    let var_1 = select(arg_0, vec2<bool>(true | arg_1.c, !arg_0.x), !arg_0);
    global1 = array<bool, 31>();
    var var_2 = global2[_wgslsmith_index_u32(reverseBits(select(4294967295u, arg_1.a.x, var_1.x || true)), 30u)];
    return all(!select(!vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 31u)], arg_1.c), !vec3<bool>(true, var_1.x, false), false)) == !(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.e.x + -790f), arg_1.e.x, var_1.x & true)) == _wgslsmith_f_op_f32(f32(-1f) * -2478f));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: f32) -> vec4<i32> {
    global1 = array<bool, 31>();
    let var_0 = func_4(select(!vec2<bool>(4008u <= global0.x, arg_1.c), vec2<bool>(!(!arg_1.c), arg_0.x), select(select(vec2<bool>(true, arg_1.c), !arg_0.yx, true && arg_1.c), func_3(global2[_wgslsmith_index_u32(reverseBits(arg_1.a.x), 30u)]), vec2<bool>(false, arg_0.x))), Struct_1(arg_1.a, -(arg_1.b >> ((global0.x ^ 4294967295u) % 32u)), !arg_1.c, min(1i, -52783i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2, arg_2, arg_2, arg_2), vec4<f32>(-234f, -629f, 1000f, arg_2)))) + arg_1.e)));
    let var_1 = arg_1;
    let var_2 = vec2<i32>(~2147483647i, arg_1.b);
    global0 = vec3<u32>(_wgslsmith_add_u32(4294967295u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(26141u, 1u, global0.x), select(vec3<u32>(1u, 0u, u_input.b), vec3<u32>(33504u, 4294967295u, u_input.b), false))), ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u & global0.x, ~var_1.a.x, 3961u), arg_1.a.x), reverseBits(~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.b, global0.x)), u_input.a)));
    return -((u_input.d & abs(u_input.d)) & u_input.e) ^ vec4<i32>(2147483647i, select(func_1(~var_1.b, Struct_1(vec4<u32>(var_1.a.x, 56111u, 8328u, 11169u), u_input.e.x, arg_1.c, 8714i, vec4<f32>(1438f, -295f, -123f, 686f))).x, -(~68349i), !(arg_1.b > var_2.x)), _wgslsmith_sub_i32(-_wgslsmith_mod_i32(-9770i, var_1.d), firstTrailingBit(~(-7523i))), reverseBits(_wgslsmith_mult_i32(~arg_1.b, max(arg_1.d, var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.e.x, 0i, abs(u_input.e.x)), _wgslsmith_add_vec4_i32(func_1(u_input.d.x, global2[_wgslsmith_index_u32(global0.x, 30u)]), max(u_input.d, vec4<i32>(u_input.d.x, u_input.d.x, 1i, -48716i)))) & _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(u_input.d, func_1(u_input.e.x, global2[_wgslsmith_index_u32(73211u, 30u)])), -func_2(vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(global0.x, 31u)]), global2[_wgslsmith_index_u32(global0.x, 30u)], -834f), func_1(u_input.d.x, Struct_1(vec4<u32>(u_input.b, global0.x, 16993u, global0.x), u_input.e.x, true, -31116i, vec4<f32>(-957f, -970f, 396f, -1000f)))));
    let var_1 = global2[_wgslsmith_index_u32(global0.x, 30u)];
    var var_2 = var_1.a;
    var var_3 = !vec4<bool>(var_1.c, (!global1[_wgslsmith_index_u32(global0.x, 31u)] | global1[_wgslsmith_index_u32(min(u_input.b, var_2.x), 31u)]) & (countOneBits(global0.x) < global0.x), !(min(1u, 1u) < ~var_2.x), true);
    var var_4 = select(vec4<bool>(true, (_wgslsmith_add_i32(var_0.x, var_1.b) << (_wgslsmith_div_u32(u_input.c, 1u) % 32u)) >= 2147483647i, var_3.x || all(!vec4<bool>(var_3.x, false, false, true)), var_1.c), vec4<bool>(-func_2(vec4<bool>(var_3.x, false, true, true), Struct_1(var_1.a, -28160i, var_3.x, u_input.d.x, vec4<f32>(869f, -689f, 517f, var_1.e.x)), 1259f).x == -_wgslsmith_add_i32(var_1.d, 44158i), global1[_wgslsmith_index_u32(var_2.x, 31u)], true, true), var_3.x);
    var_3 = !select(!select(select(vec4<bool>(true, var_4.x, true, true), vec4<bool>(var_3.x, true, false, true), false), vec4<bool>(true, var_3.x, var_4.x, var_3.x), global1[_wgslsmith_index_u32(4294967295u, 31u)]), select(select(!vec4<bool>(false, false, var_4.x, false), select(vec4<bool>(var_4.x, false, false, global1[_wgslsmith_index_u32(1u, 31u)]), vec4<bool>(var_4.x, global1[_wgslsmith_index_u32(1u, 31u)], var_4.x, var_3.x), false), true), vec4<bool>(var_4.x, true, var_3.x, var_1.e.x != var_1.e.x), true), !select(!vec4<bool>(var_3.x, true, var_3.x, false), vec4<bool>(false, true, false, var_1.c), true));
    global0 = var_2.yzy;
    global0 = var_2.wyz;
    var_0 = _wgslsmith_mod_vec4_i32(-u_input.e, ~countOneBits(vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(0i, var_0.x, u_input.e.x, 40004i)), 1i, -12480i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, var_0.x, var_0.x), vec3<i32>(var_1.d, 0i, 1i)))));
    let x = u_input.a;
    s_output = StorageBuffer(599f, firstTrailingBit(var_1.a.zyx));
}

