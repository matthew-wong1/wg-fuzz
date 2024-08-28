struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3>;

var<private> global1: vec2<u32>;

var<private> global2: array<vec4<f32>, 15> = array<vec4<f32>, 15>(vec4<f32>(-906f, 1111f, -941f, -964f), vec4<f32>(-138f, 603f, -1354f, -737f), vec4<f32>(-2053f, 1000f, 1691f, -997f), vec4<f32>(1457f, 196f, 586f, 759f), vec4<f32>(280f, 656f, -1018f, 519f), vec4<f32>(1000f, 737f, -280f, 1197f), vec4<f32>(1719f, 896f, 675f, -906f), vec4<f32>(751f, 1000f, 1000f, 1602f), vec4<f32>(752f, 340f, -186f, -1471f), vec4<f32>(148f, -865f, 2254f, 1445f), vec4<f32>(415f, 578f, -1567f, -226f), vec4<f32>(2722f, 789f, 1584f, 110f), vec4<f32>(-1019f, 435f, 145f, -886f), vec4<f32>(1850f, 1000f, -1236f, -391f), vec4<f32>(-357f, -465f, 1388f, 292f));

var<private> global3: i32;

var<private> global4: array<vec4<i32>, 31>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    let var_0 = arg_3;
    global0 = array<Struct_2, 3>();
    var var_1 = arg_3.e;
    global4 = array<vec4<i32>, 31>();
    global1 = _wgslsmith_div_vec2_u32(select(u_input.d, ~countOneBits(u_input.d ^ u_input.d), arg_2.a.x), var_0.d.yy);
    return 11879u;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec2<f32>, arg_3: vec4<i32>) -> vec3<u32> {
    global3 = max(countOneBits(u_input.c), 2147483647i);
    var var_0 = Struct_3(u_input.b ^ ~0u);
    let var_1 = Struct_1(100f, 1301f, ~countOneBits(~global1.x) ^ 13293u, vec4<u32>(~_wgslsmith_sub_u32(var_0.a, global1.x), 1u, global1.x, ~_wgslsmith_mult_u32(global1.x ^ global1.x, reverseBits(u_input.b))), ~_wgslsmith_sub_u32(var_0.a, _wgslsmith_add_u32(27564u & global1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 4294967295u, var_0.a, 56993u), vec4<u32>(var_0.a, global1.x, u_input.a, global1.x)))));
    let var_2 = Struct_3(_wgslsmith_sub_u32(_wgslsmith_mult_u32(abs(u_input.a), ~4294967295u), ~1077u ^ ~abs(var_1.d.x)));
    global2 = array<vec4<f32>, 15>();
    return vec3<u32>(~_wgslsmith_sub_u32(func_3(select(arg_1.x, u_input.c, false), var_2, global0[_wgslsmith_index_u32(abs(var_1.e), 3u)], Struct_1(144f, arg_2.x, var_2.a, vec4<u32>(0u, 6144u, u_input.d.x, u_input.a), 1u)), u_input.d.x), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.e, max(u_input.b, 87184u)), _wgslsmith_sub_vec2_u32(vec2<u32>(47264u, global1.x), select(~vec2<u32>(21815u, global1.x), var_1.d.xy, !arg_0.b))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<bool>) -> i32 {
    let var_0 = true;
    let var_1 = arg_0;
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~(func_2(Struct_2(vec4<bool>(arg_1.x, arg_1.x, false, false), arg_1.x), vec4<i32>(12529i, 2147483647i, arg_0.x, -2147483647i), vec2<f32>(-788f, -252f), vec4<i32>(-454i, u_input.c, 2147483647i, -1i)) ^ _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, global1.x, 1u), vec3<u32>(u_input.d.x, u_input.a, u_input.d.x))), _wgslsmith_div_vec3_u32(vec3<u32>(abs(1u), u_input.a, 4294967295u), ~vec3<u32>(1u, u_input.a, 16794u))), select(110161u, 4294967295u, all(select(vec4<bool>(arg_1.x, true, true, true), vec4<bool>(false, var_0, arg_1.x, arg_1.x), vec4<bool>(false, false, var_0, var_0))) & true)), 3u)];
    global2 = array<vec4<f32>, 15>();
    global0 = array<Struct_2, 3>();
    return var_1.x;
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_2, arg_3: vec4<i32>) -> vec4<i32> {
    let var_0 = Struct_3(0u);
    global2 = array<vec4<f32>, 15>();
    global4 = array<vec4<i32>, 31>();
    global2 = array<vec4<f32>, 15>();
    let var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(reverseBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(93318u, var_0.a, global1.x), vec3<u32>(1u, 22602u, 0u))), min(0u, global1.x & var_0.a), abs(32211u << (~u_input.d.x % 32u)), _wgslsmith_div_u32(~(~global1.x), _wgslsmith_div_u32(_wgslsmith_sub_u32(0u, u_input.a), 1u))), vec4<u32>(countOneBits(func_3(2147483647i, var_0, arg_2, Struct_1(-699f, -260f, u_input.a, vec4<u32>(1u, 4295u, var_0.a, 4294967295u), global1.x))), 1u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(119238u, select(37326u, 29003u, arg_1)), 41831u), ~firstTrailingBit(global1.x) << (abs(u_input.d.x) % 32u)));
    return _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(arg_3, _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -1i, u_input.c, arg_0.x), vec4<i32>(2147483647i, u_input.c, 2147483647i, arg_3.x), vec4<i32>(-2147483647i, -59074i, u_input.c, -10824i))), arg_0), vec4<i32>(1i, firstTrailingBit(2367i), arg_3.x, u_input.c), vec4<i32>(31012i, firstLeadingBit(-u_input.c), ~(-23039i << (0u % 32u)), arg_3.x)), vec4<i32>(arg_0.x, -59364i, -(1i & (u_input.c | -1i)), func_1(arg_3, vec3<bool>(arg_0.x == 2147483647i, false, arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec4<i32>(func_1(vec4<i32>(u_input.c, u_input.c << (global1.x % 32u), u_input.c, 16870i), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)), abs(_wgslsmith_sub_i32(min(-42227i, u_input.c), countOneBits(u_input.c))), _wgslsmith_add_i32(_wgslsmith_mult_i32(~(-45712i), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, 27171i), vec3<i32>(u_input.c, u_input.c, -2147483647i))), 23887i), _wgslsmith_add_i32(_wgslsmith_div_i32(-13715i, u_input.c), u_input.c)), all(vec4<bool>(true, true, any(vec3<bool>(true, true, true)), false)), Struct_2(select(vec4<bool>(true, true, all(vec2<bool>(false, false)), true), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true))), !(!any(vec4<bool>(true, false, false, false)))), ~(-vec4<i32>(~(-83346i), 2147483647i & u_input.c, u_input.c, -1i)));
    global4 = array<vec4<i32>, 31>();
    global3 = 0i;
    let var_1 = Struct_3(73501u);
    var var_2 = Struct_2(!vec4<bool>(true, any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false))), any(vec4<bool>(false, false, false, true)) & true, true), all(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), false), vec4<bool>(true, false, false, true))));
    let var_3 = _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(min(select(u_input.c, -2147483647i, true), var_0.x), 1i, -13050i, max(~var_0.x, var_0.x)), ~(-(vec4<i32>(var_0.x, -10473i, -2147483647i, var_0.x) & var_0))), countOneBits(_wgslsmith_clamp_vec4_i32(abs(reverseBits(var_0)), func_4(func_4(vec4<i32>(-1i, u_input.c, u_input.c, var_0.x), true, Struct_2(vec4<bool>(true, false, true, var_2.a.x), var_2.a.x), vec4<i32>(2147483647i, 0i, 0i, u_input.c)), !var_2.a.x, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_1.a, global1.x, var_1.a), 3u)], global4[_wgslsmith_index_u32(~u_input.d.x, 31u)]), ~var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(1358f);
}

