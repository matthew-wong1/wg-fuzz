struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
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

var<private> global0: array<vec3<f32>, 31> = array<vec3<f32>, 31>(vec3<f32>(-1681f, 1018f, 194f), vec3<f32>(756f, -284f, 583f), vec3<f32>(-359f, 754f, -696f), vec3<f32>(-869f, -2199f, -529f), vec3<f32>(718f, 1304f, 525f), vec3<f32>(-222f, -660f, -506f), vec3<f32>(1529f, 402f, 184f), vec3<f32>(-434f, -960f, -2218f), vec3<f32>(-1000f, 725f, 1000f), vec3<f32>(335f, -1248f, 816f), vec3<f32>(-1405f, -951f, 423f), vec3<f32>(-735f, -1000f, 2418f), vec3<f32>(899f, 240f, -952f), vec3<f32>(1002f, -1628f, 1339f), vec3<f32>(1016f, 2130f, -532f), vec3<f32>(2752f, -1000f, 419f), vec3<f32>(-671f, 1000f, -217f), vec3<f32>(1593f, 1858f, -728f), vec3<f32>(271f, 746f, 1322f), vec3<f32>(-1843f, -1403f, -171f), vec3<f32>(-1428f, -1321f, -890f), vec3<f32>(-470f, 880f, 461f), vec3<f32>(217f, -2081f, -1381f), vec3<f32>(1122f, -747f, -845f), vec3<f32>(-503f, 315f, 1000f), vec3<f32>(1000f, -1000f, -272f), vec3<f32>(-666f, 1497f, -606f), vec3<f32>(2290f, 466f, -481f), vec3<f32>(-1000f, 675f, -1347f), vec3<f32>(-159f, -450f, 1635f), vec3<f32>(501f, -377f, 237f));

var<private> global1: bool;

var<private> global2: array<u32, 4>;

var<private> global3: i32 = 2147483647i;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> u32 {
    return 22259u & (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(5204u, 4u)], 4u)] | firstLeadingBit(35713u));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_mult_i32(reverseBits(~countOneBits(u_input.c)), 0i), select(vec3<i32>(abs(-2147483647i), _wgslsmith_mod_i32(u_input.c, 1i), arg_0.b.x), vec3<i32>(firstTrailingBit(abs(arg_0.a)), firstLeadingBit(arg_0.a), _wgslsmith_add_i32(abs(-1309i), 0i)), false), Struct_1(arg_0.c.a, arg_0.c.b));
    var var_1 = Struct_1(vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, 0i), vec2<i32>(-32006i, u_input.c)), _wgslsmith_dot_vec3_i32(vec3<i32>(~27462i, -14689i, var_0.c.a.x), ~select(vec3<i32>(var_0.b.x, -2147483647i, -21359i), vec3<i32>(var_0.b.x, arg_0.b.x, arg_0.a), false)), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(arg_0.c.a.x, 1i, var_0.a) >> (~0u % 32u), ~max(7265i, 2147483647i)), -22286i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.c.b)) + -1254f));
    return var_0.c;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<u32>) -> vec3<i32> {
    var var_0 = arg_0.x;
    var var_1 = func_3(Struct_2(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, 2147483647i), _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, 1i), u_input.e))), vec3<i32>(42003i, _wgslsmith_mult_i32(-u_input.c, ~u_input.c), select(~(-1i), min(u_input.e.x, 18889i), global2[_wgslsmith_index_u32(1876u, 4u)] >= 36834u)), Struct_1(~(vec4<i32>(28890i, u_input.c, -37715i, 1i) | vec4<i32>(-1i, 52561i, 60010i, u_input.e.x)), -1552f)), ~vec4<u32>(~_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(1u, global2[_wgslsmith_index_u32(u_input.b.x, 4u)], global2[_wgslsmith_index_u32(28087u, 4u)])), ~(~13984u), ~(~2886u), ~func_2(vec4<f32>(-311f, 128f, -136f, 658f), Struct_2(u_input.e.x, vec3<i32>(-32913i, -1i, 2147483647i), Struct_1(vec4<i32>(0i, 0i, u_input.e.x, u_input.c), -1123f)), Struct_2(u_input.e.x, vec3<i32>(u_input.c, u_input.c, u_input.c), Struct_1(vec4<i32>(-2147483647i, u_input.c, -2147483647i, u_input.e.x), 1588f)), true)));
    var_1 = func_3(Struct_2(_wgslsmith_dot_vec2_i32(u_input.e, ~vec2<i32>(u_input.e.x, u_input.c)), ~abs(vec3<i32>(u_input.c, -58739i, u_input.c)) ^ var_1.a.xxx, func_3(Struct_2(_wgslsmith_dot_vec2_i32(var_1.a.xw, u_input.e), vec3<i32>(u_input.e.x, 1i, -68617i), Struct_1(var_1.a, -2122f)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 1828u, 4294967295u), vec4<u32>(76827u, 140u, arg_1.x, global2[_wgslsmith_index_u32(20823u, 4u)])))), vec4<u32>(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-664f, var_1.b, -1479f, 829f))), Struct_2(~(-37753i), var_1.a.yyx ^ vec3<i32>(0i, var_1.a.x, var_1.a.x), func_3(Struct_2(2147483647i, vec3<i32>(u_input.e.x, 0i, -45051i), Struct_1(vec4<i32>(0i, -25580i, -1i, -2147483647i), 1489f)), vec4<u32>(4294967295u, 103784u, 2516u, 1u))), Struct_2(-15615i, countOneBits(vec3<i32>(2147483647i, u_input.c, 1i)), Struct_1(var_1.a, var_1.b)), !any(vec3<bool>(arg_0.x, arg_0.x, false))), ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, 17264u, 32770u), vec4<u32>(0u, u_input.a.x, global2[_wgslsmith_index_u32(35775u, 4u)], u_input.d)), vec4<u32>(4294967295u, 1308u, 31389u, 54732u) << (vec4<u32>(4294967295u, 16899u, arg_1.x, 84279u) % vec4<u32>(32u))), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(10272u, u_input.b.x), u_input.b.zx), arg_1.x), global2[_wgslsmith_index_u32(u_input.a.x, 4u)]));
    return var_1.a.wxz & -vec3<i32>(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.x, -37097i, u_input.e.x), vec3<i32>(var_1.a.x, -40890i, 53468i))), 2147483647i, -(i32(-1i) * -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 4>();
    var var_0 = true;
    global0 = array<vec3<f32>, 31>();
    var var_1 = Struct_2(u_input.c, firstLeadingBit(_wgslsmith_mod_vec3_i32(func_1(vec2<bool>(true, true), vec3<u32>(u_input.b.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 4u)], 4u)], u_input.d)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, -43566i, 2147483647i), abs(vec3<i32>(u_input.e.x, -1i, u_input.e.x))))), Struct_1(vec4<i32>(u_input.c, ~max(u_input.c, u_input.e.x), -u_input.c, _wgslsmith_add_i32(reverseBits(-1i), -1i)), -2240f));
    global2 = array<u32, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -636f));
}

