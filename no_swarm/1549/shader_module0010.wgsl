struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: vec3<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(30749u, 21593u, 30864u, 1u, 27671u, 0u, 4294967295u, 39u, 1u, 1u, 15019u, 101465u, 4294967295u, 19682u, 72363u, 4294967295u, 9983u, 31730u, 1u, 4294967295u, 3285u);

var<private> global1: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(vec4<i32>(-1i, 53678i, 0i, 2147483647i), 63086u, 389f), Struct_2(vec4<i32>(0i, 2147483647i, -1i, 32784i), 57325u, 604f), Struct_2(vec4<i32>(0i, -1i, 37062i, 0i), 110899u, -1022f), Struct_2(vec4<i32>(-1i, 15457i, -33546i, i32(-2147483648)), 57642u, -1281f), Struct_2(vec4<i32>(5806i, -1i, 3748i, 16130i), 1u, 1147f), Struct_2(vec4<i32>(2147483647i, i32(-2147483648), -23674i, -15819i), 4294967295u, 1817f), Struct_2(vec4<i32>(4267i, -36997i, 20176i, 0i), 0u, -1389f), Struct_2(vec4<i32>(2147483647i, -60228i, 0i, 64458i), 1u, 982f), Struct_2(vec4<i32>(0i, -82955i, -42739i, 2147483647i), 28268u, -785f), Struct_2(vec4<i32>(1i, 5009i, -38552i, -19983i), 4294967295u, 917f), Struct_2(vec4<i32>(-1i, -14258i, -4152i, -1902i), 8904u, -2863f), Struct_2(vec4<i32>(64785i, -1i, 31450i, 9737i), 4294967295u, -443f), Struct_2(vec4<i32>(-14749i, 6016i, -3486i, -1i), 1u, 627f), Struct_2(vec4<i32>(-7189i, 17998i, 2147483647i, -1i), 1u, -1861f), Struct_2(vec4<i32>(11551i, -1i, 0i, 19410i), 59684u, -469f), Struct_2(vec4<i32>(-1i, 29453i, 0i, -74603i), 4294967295u, 860f), Struct_2(vec4<i32>(i32(-2147483648), -1i, -1i, -1i), 0u, 1000f), Struct_2(vec4<i32>(-4174i, 0i, 618i, 32602i), 38325u, -386f), Struct_2(vec4<i32>(2147483647i, 32034i, -22972i, 1i), 2136u, 1042f), Struct_2(vec4<i32>(921i, i32(-2147483648), -8662i, 2147483647i), 0u, -572f), Struct_2(vec4<i32>(1i, -31787i, 0i, 29764i), 1u, 956f), Struct_2(vec4<i32>(1i, 0i, i32(-2147483648), i32(-2147483648)), 10307u, 1079f), Struct_2(vec4<i32>(-1i, -48617i, i32(-2147483648), 19027i), 43909u, -320f), Struct_2(vec4<i32>(-1i, 1i, 1i, 1i), 4294967295u, -1723f), Struct_2(vec4<i32>(-1i, 2147483647i, 1i, 1i), 0u, 506f), Struct_2(vec4<i32>(961i, 0i, -35489i, -8677i), 22954u, 1540f), Struct_2(vec4<i32>(-13687i, -7394i, 4495i, 35160i), 0u, -496f), Struct_2(vec4<i32>(2147483647i, -15457i, -14003i, -28361i), 0u, 437f), Struct_2(vec4<i32>(0i, 0i, -25576i, 9433i), 1u, -229f));

var<private> global2: vec4<f32>;

var<private> global3: Struct_3;

var<private> global4: vec2<bool>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec2<f32>) -> vec4<i32> {
    global1 = array<Struct_2, 29>();
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, 1469f, -1000f, -395f) - vec4<f32>(global2.x, -424f, global2.x, arg_1)) * vec4<f32>(180f, -846f, 108f, arg_0.b)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -248f, -1000f, -313f) * vec4<f32>(global3.a.c, global3.c.c, 946f, -1000f)))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1565f, arg_2.x, arg_0.d, arg_1))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1000f, global3.a.c, global2.x)))))));
    global1 = array<Struct_2, 29>();
    var var_0 = global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~33040u, 21u)], 29u)];
    var var_1 = u_input.a;
    return min(select(reverseBits(vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.a.wx, vec2<i32>(0i, global3.c.a.x)), -77567i, global3.c.a.x, abs(43505i))), global3.c.a, select(!vec4<bool>(global4.x, true, true, global4.x), !vec4<bool>(true, true, global4.x, global4.x), all(vec2<bool>(true, true)))), ~(-vec4<i32>(-global3.c.a.x, ~0i, 1i, var_0.a.x)));
}

fn func_2() -> u32 {
    global3 = Struct_3(Struct_2(~func_3(Struct_1(6215u, global3.c.c, global2.yxx, global2.x), global3.c.c, vec2<f32>(global3.c.c, 1117f)) ^ (vec4<i32>(2147483647i, global3.c.a.x, global3.c.a.x, global3.a.a.x) | ~vec4<i32>(0i, 21437i, 0i, 14923i)), ~global3.a.b, global3.c.c), global3.a.a.x, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(u_input.a.x, ~u_input.a.x) ^ (64922u << (global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global3.c.b, 4294967295u), 21u)] % 32u))), 29u)]);
    return ~(~(u_input.a.x & _wgslsmith_div_u32(u_input.a.x ^ 56361u, 94268u)));
}

fn func_1() -> Struct_1 {
    global3 = Struct_3(global3.c, ~global3.c.a.x, Struct_2(reverseBits(max(min(global3.c.a, vec4<i32>(global3.c.a.x, -6087i, global3.a.a.x, 1i)), select(global3.a.a, global3.a.a, global4.x))), 71254u, _wgslsmith_f_op_f32(-301f + _wgslsmith_div_f32(2315f, _wgslsmith_f_op_f32(global3.c.c - 493f)))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.c.c + _wgslsmith_f_op_f32(-global2.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.c + global3.a.c) + _wgslsmith_f_op_f32(step(-1133f, -146f))))));
    var var_1 = func_2();
    global0 = array<u32, 21>();
    let var_2 = Struct_4(global3.c, global3.a);
    return Struct_1(_wgslsmith_mult_u32(8859u, min(~var_2.a.b, firstLeadingBit(abs(u_input.a.x)))), -1411f, _wgslsmith_f_op_vec3_f32(-global2.yww), 118f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, 387f, _wgslsmith_div_f32(-429f, _wgslsmith_f_op_f32(trunc(217f))), 937f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b, global3.c.c, var_0.d, 1679f), vec4<f32>(1338f, -978f, 329f, global3.c.c)))))));
    let var_1 = Struct_4(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.a.b, 21u)], 21u)], var_0.a, global0[_wgslsmith_index_u32(var_0.a, 21u)]) & ~global0[_wgslsmith_index_u32(3387u, 21u)], 5220u) >> (1u % 32u), 29u)], global3.a);
    global1 = array<Struct_2, 29>();
    var var_2 = ~_wgslsmith_mod_u32(reverseBits(1u), func_1().a << ((0u >> (~var_1.b.b % 32u)) % 32u));
    global0 = array<u32, 21>();
    global4 = !vec2<bool>(true, !global4.x);
    global2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.d * var_0.c.x)))) * var_0.c.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(754f)) * 767f), _wgslsmith_div_f32(func_1().b, _wgslsmith_f_op_f32(f32(-1f) * -293f)))))), var_1.a.c, _wgslsmith_f_op_f32(-global3.c.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(var_1.a.b, _wgslsmith_div_u32(global3.c.b, var_1.b.b)), var_1.b.a.xxw, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.c, global3.c.c, var_0.c.x, var_1.b.c) + vec4<f32>(587f, global2.x, -1172f, global3.a.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1077f, var_0.b, 123f, 1583f) - vec4<f32>(var_1.a.c, global3.a.c, 996f, -1612f))), vec4<f32>(_wgslsmith_f_op_f32(-750f * -546f), var_0.b, _wgslsmith_f_op_f32(trunc(global3.c.c)), global3.a.c))), min(u_input.a, ~min(~u_input.a, ~vec2<u32>(64131u, 10856u))), select(firstLeadingBit(vec4<u32>(4294967295u, u_input.a.x, var_0.a, global0[_wgslsmith_index_u32(3885u, 21u)]) ^ vec4<u32>(87566u, var_0.a, global3.a.b, 36027u)) ^ vec4<u32>(u_input.a.x, 1u, var_1.b.b & 1u, countOneBits(u_input.a.x)), vec4<u32>(24757u, 1u, 4294967295u, 110503u), !vec4<bool>(global4.x, global4.x, global4.x, global3.b > global3.b)));
}

