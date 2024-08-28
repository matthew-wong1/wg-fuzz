struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec3<u32>, 3>;

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(-978f, 1041f, vec2<i32>(0i, -15072i), -739f), Struct_1(430f, -736f, vec2<i32>(16206i, 2147483647i), 935f), Struct_1(-709f, 2503f, vec2<i32>(2147483647i, -29721i), 458f), Struct_1(-1304f, 1000f, vec2<i32>(-1i, 1i), 1000f), Struct_1(-1000f, -350f, vec2<i32>(18930i, 1i), -1679f), Struct_1(159f, 316f, vec2<i32>(i32(-2147483648), -8469i), -1000f), Struct_1(1063f, -602f, vec2<i32>(3816i, 2147483647i), -1388f), Struct_1(981f, -481f, vec2<i32>(i32(-2147483648), 12591i), -274f), Struct_1(240f, -1373f, vec2<i32>(15222i, 24268i), -231f), Struct_1(603f, -1000f, vec2<i32>(1i, 2147483647i), -507f), Struct_1(643f, -240f, vec2<i32>(1326i, -17906i), -1816f), Struct_1(412f, 1653f, vec2<i32>(20545i, 32931i), 491f), Struct_1(289f, 1132f, vec2<i32>(-1744i, i32(-2147483648)), -162f), Struct_1(-1910f, 669f, vec2<i32>(0i, -1i), -357f), Struct_1(209f, 1219f, vec2<i32>(-40403i, 18655i), -478f), Struct_1(1381f, 400f, vec2<i32>(i32(-2147483648), i32(-2147483648)), 614f), Struct_1(-349f, -678f, vec2<i32>(8860i, -9662i), -381f), Struct_1(1369f, 1272f, vec2<i32>(-60726i, 25218i), -152f), Struct_1(331f, -1000f, vec2<i32>(-59769i, -36620i), -211f), Struct_1(1449f, -521f, vec2<i32>(-1i, i32(-2147483648)), 897f), Struct_1(1178f, 1386f, vec2<i32>(-2167i, i32(-2147483648)), 1246f), Struct_1(-161f, 925f, vec2<i32>(-3632i, 1i), 102f), Struct_1(318f, -1653f, vec2<i32>(5331i, 0i), 993f), Struct_1(-486f, -452f, vec2<i32>(-12536i, 0i), 1449f), Struct_1(-1570f, -392f, vec2<i32>(-7375i, 1i), 1198f), Struct_1(-764f, -205f, vec2<i32>(41537i, 6592i), -552f), Struct_1(587f, -464f, vec2<i32>(i32(-2147483648), 2366i), -1089f), Struct_1(911f, -507f, vec2<i32>(-23203i, 1i), -301f), Struct_1(520f, 774f, vec2<i32>(i32(-2147483648), i32(-2147483648)), 1347f));

var<private> global3: array<u32, 15>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, -1962f, -547f, -589f) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(669f, 565f, -1658f, arg_2.d), vec4<f32>(arg_2.b, arg_0.d.d, arg_2.d, -200f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -764f, arg_2.d, -319f) + vec4<f32>(arg_2.d, arg_1.b, arg_0.b.b, 1591f)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(439f, arg_1.a, arg_2.a, arg_1.b))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(161f, arg_1.b, 1630f, 165f)) * vec4<f32>(arg_1.a, -1127f, -1050f, arg_0.d.a)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-547f, -832f, arg_1.a, arg_1.d)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, 198f, -1308f, arg_2.a) * vec4<f32>(arg_1.b, 188f, 1000f, -625f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(461f, -357f, 635f, -583f)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.a))));
    var var_2 = Struct_2(true, Struct_1(359f, arg_0.b.b, ~(~vec2<i32>(arg_1.c.x, -23088i) >> (vec2<u32>(global3[_wgslsmith_index_u32(arg_0.c.x, 15u)], arg_0.c.x) % vec2<u32>(32u))), arg_0.d.a), ~select(arg_0.c, arg_0.c, !select(vec2<bool>(true, arg_0.a), vec2<bool>(true, arg_0.a), arg_0.a)), global2[_wgslsmith_index_u32(arg_0.c.x, 29u)]);
    var_2 = arg_0;
    global1 = array<vec3<u32>, 3>();
    return -3197i;
}

fn func_2() -> i32 {
    global3 = array<u32, 15>();
    var var_0 = vec2<i32>(u_input.a, -22640i);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1615f) + -2236f), _wgslsmith_div_f32(-1152f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1117f))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(var_1.x + 2218f), var_1.x, _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-31847i, 0i), vec2<i32>(7105i, var_0.x)) >> (1u % 32u), u_input.a), abs(_wgslsmith_sub_vec2_i32(vec2<i32>(66652i, -1i), vec2<i32>(u_input.a, 10194i)))), -576f);
    var var_3 = max(~max(-vec4<i32>(var_2.c.x, var_2.c.x, -26472i, var_2.c.x), ~(vec4<i32>(var_2.c.x, var_2.c.x, u_input.a, var_0.x) ^ vec4<i32>(-1i, var_2.c.x, var_0.x, -9294i))), countOneBits(vec4<i32>(min(1i, u_input.a), ~2147483647i, func_3(Struct_2(false, Struct_1(var_1.x, var_2.b, var_2.c, var_1.x), vec2<u32>(1u, 0u), Struct_1(var_2.d, var_2.b, var_2.c, var_2.a)), Struct_1(var_1.x, var_2.a, vec2<i32>(9001i, -33546i), var_1.x), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(10063u, 15u)], 15u)], 29u)]), var_0.x) | ~countOneBits(vec4<i32>(var_2.c.x, -25146i, -1i, var_0.x))));
    return select(u_input.a, abs(_wgslsmith_mult_i32(-2147483647i, u_input.a)), false);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<f32>) -> u32 {
    var var_0 = _wgslsmith_dot_vec2_u32(~vec2<u32>(~4294967295u, global3[_wgslsmith_index_u32(24492u, 15u)]) | select(max(_wgslsmith_div_vec2_u32(vec2<u32>(33209u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 15u)], 15u)]), vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 15u)], 1u)), countOneBits(~vec2<u32>(75031u, global3[_wgslsmith_index_u32(44431u, 15u)])), !any(vec4<bool>(false, false, false, true))), ~vec2<u32>(~_wgslsmith_mult_u32(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 15u)], 15u)], 15u)]), ~(global3[_wgslsmith_index_u32(4294967295u, 15u)] & global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(49078u, 15u)], 15u)], 15u)], 15u)])));
    var var_1 = -1i;
    var var_2 = -(~arg_1.c);
    global1 = array<vec3<u32>, 3>();
    let var_3 = vec3<f32>(_wgslsmith_div_f32(-1706f, -2121f), arg_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b + -186f)))));
    return _wgslsmith_div_u32(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(~1u, 15u)], 15u)], 15u)], 15u)] << (1u % 32u), ~42396u), ~_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(0u, 15u)], ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(max(global3[_wgslsmith_index_u32(4294967295u, 15u)], global3[_wgslsmith_index_u32(1u, 15u)]), 15u)], 15u)]));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global3 = array<u32, 15>();
    var var_0 = func_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1101f) + 145f), -1111f, arg_0.d), Struct_1(-450f, _wgslsmith_f_op_f32(-arg_0.b), vec2<i32>(func_2(), u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -290f) - -285f)), vec3<f32>(1f, _wgslsmith_f_op_f32(-arg_0.a), arg_0.d)) != global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 15u)], 15u)], 15u)], 18357u, 9978u) << (vec3<u32>(54606u, 4294967295u, global3[_wgslsmith_index_u32(73484u, 15u)]) % vec3<u32>(32u))), ~reverseBits(global1[_wgslsmith_index_u32(0u, 3u)])), 4294967295u), 15u)];
    global1 = array<vec3<u32>, 3>();
    var var_1 = global2[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(1u, min(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(85079u, 15u)], 15u)], 15u)]), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)], 15u)], 59140u)), global3[_wgslsmith_index_u32(~82828u, 15u)]) & 1u), 0u), 29u)];
    var_1 = arg_0;
    return Struct_1(2068f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(729f)), 930f), _wgslsmith_div_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, arg_0.c.x), var_1.c), arg_0.c) | (vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 37394i), vec2<i32>(34945i, var_1.c.x))), _wgslsmith_f_op_f32(step(var_1.b, arg_0.a)));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    var var_0 = reverseBits(countOneBits(arg_3.c.x & -1299i) << ((arg_2.c.x << (_wgslsmith_add_u32(global3[_wgslsmith_index_u32(1u, 15u)], arg_2.c.x << (0u % 32u)) % 32u)) % 32u));
    let var_1 = arg_2;
    var var_2 = arg_3;
    var_2 = func_1(func_1(var_1.b));
    let var_3 = var_1;
    return 2218f;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_mod_u32(0u, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 15u)], 3u)] | global1[_wgslsmith_index_u32(4294967295u, 3u)], select(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(15851u, 15u)], 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)], vec3<bool>(true, false, true))), ~(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 15u)], 15u)])), 15u)] >> (_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(11640u, 15u)], global3[_wgslsmith_index_u32(8478u, 15u)], 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(47708u, 15u)], 15u)], 15u)]), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 15u)], 15u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(35801u, 15u)], 15u)], 15u)], 15u)], 15u)], global3[_wgslsmith_index_u32(1u, 15u)], global3[_wgslsmith_index_u32(4294967295u, 15u)])), ~65658u, ~global3[_wgslsmith_index_u32(3689u, 15u)], ~1u), select(vec4<u32>(4294967295u, 94035u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 15u)], 15u)], 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1166u, 15u)], 15u)], 32821u, global3[_wgslsmith_index_u32(4294967295u, 15u)], global3[_wgslsmith_index_u32(1u, 15u)]), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(47065u, 15u)], 15u)], 15u)], 15u)], 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(5142u, 15u)], 15u)], 23958u)), true)) % 32u));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-arg_1.b), 982f, arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-626f, 1585f) + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_1.a, -1046f))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1348f, arg_0.d, _wgslsmith_f_op_f32(round(1391f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1527f, 1776f, 1000f) + vec3<f32>(var_2.d, -180f, var_0.d)))))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-977f, var_0.d, arg_0.b))))));
    var var_4 = Struct_2(3593i == _wgslsmith_div_i32(func_3(Struct_2(true, Struct_1(arg_1.d, arg_1.a, var_2.c, -1506f), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 15u)], 15u)], 1u), Struct_1(arg_0.d, arg_1.a, arg_1.c, -723f)), func_1(arg_1), global2[_wgslsmith_index_u32(~43644u, 29u)]), ~0i), func_1(global2[_wgslsmith_index_u32(4294967295u, 29u)]), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(57451u, 15u)], 15u)]), _wgslsmith_sub_vec2_u32(vec2<u32>(44717u, global3[_wgslsmith_index_u32(5898u, 15u)]), countOneBits(vec2<u32>(4294967295u, 27249u)))), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(1u, 15u)], 44981u), vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 15u)], global3[_wgslsmith_index_u32(4294967295u, 15u)]), vec2<u32>(1u, global3[_wgslsmith_index_u32(0u, 15u)])), vec2<u32>(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 15u)], 15u)], 15u)])), ~vec2<u32>(global3[_wgslsmith_index_u32(1u, 15u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 15u)], 15u)], 15u)], 15u)]))), Struct_1(_wgslsmith_f_op_f32(var_3.x * arg_0.a), -1512f, _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(-1i, -16250i), var_0.c), vec2<i32>(~(-24986i), arg_1.c.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_2.a, 1000f))), _wgslsmith_f_op_f32(var_0.a * _wgslsmith_div_f32(812f, -2620f))))));
    return StorageBuffer(~vec4<u32>(1u, max(_wgslsmith_div_u32(4294967295u, global3[_wgslsmith_index_u32(var_4.c.x, 15u)]), 27866u >> (1u % 32u)), ~(~global3[_wgslsmith_index_u32(0u, 15u)]), 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -526f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2233f)))) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-798f, 148f)), _wgslsmith_f_op_f32(round(123f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -641f))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(966f - 1578f), _wgslsmith_f_op_f32(ceil(554f))), vec2<f32>(1f, 1f))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
    let var_2 = _wgslsmith_f_op_f32(min(-491f, var_0.x));
    var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2), -1818f));
    let x = u_input.a;
    s_output = func_6(Struct_1(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(u_input.a, func_1(Struct_1(var_2, var_0.x, vec2<i32>(u_input.a, u_input.a), var_2)), Struct_2(false, Struct_1(-436f, var_0.x, vec2<i32>(u_input.a, -1i), var_0.x), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 15u)], 72837u), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 15u)], 29u)]), func_1(Struct_1(130f, 417f, vec2<i32>(u_input.a, -2147483647i), 185f)))) + var_2), ~vec2<i32>(-u_input.a, u_input.a | u_input.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 + var_2)), 215f)), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, ~48056u), 15u)], 29u)]);
}

