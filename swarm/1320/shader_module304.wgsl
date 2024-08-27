struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(-1i, vec3<u32>(1u, 1u, 55101u), 670f, vec3<f32>(690f, -409f, 567f)), Struct_1(0i, vec3<u32>(4294967295u, 1u, 30233u), -1116f, vec3<f32>(684f, -2314f, -680f)), Struct_1(-1i, vec3<u32>(1u, 1u, 1u), -1237f, vec3<f32>(-396f, 1289f, 1305f)), Struct_1(-4217i, vec3<u32>(37844u, 12045u, 6720u), 1591f, vec3<f32>(-136f, -939f, 1151f)), Struct_1(21490i, vec3<u32>(4294967295u, 0u, 1u), 1617f, vec3<f32>(-2702f, -517f, -597f)), Struct_1(-1i, vec3<u32>(0u, 1u, 1u), -1465f, vec3<f32>(324f, 1000f, 394f)), Struct_1(-3858i, vec3<u32>(94106u, 0u, 397u), 932f, vec3<f32>(596f, -1006f, -1716f)), Struct_1(-14984i, vec3<u32>(4294967295u, 109683u, 0u), 1717f, vec3<f32>(2401f, 666f, -1037f)), Struct_1(1i, vec3<u32>(0u, 72833u, 7222u), -475f, vec3<f32>(709f, -956f, -1422f)), Struct_1(-51925i, vec3<u32>(0u, 17161u, 4294967295u), -1980f, vec3<f32>(972f, -311f, 1773f)), Struct_1(34768i, vec3<u32>(941u, 1u, 9478u), -1368f, vec3<f32>(-1256f, 666f, 1246f)), Struct_1(2147483647i, vec3<u32>(4294967295u, 20317u, 1u), -260f, vec3<f32>(1000f, 919f, 1117f)), Struct_1(-1i, vec3<u32>(20289u, 1u, 24161u), 2309f, vec3<f32>(2441f, -189f, 1000f)), Struct_1(0i, vec3<u32>(28263u, 4294967295u, 1u), 1611f, vec3<f32>(1451f, 138f, 1115f)), Struct_1(11226i, vec3<u32>(16483u, 0u, 4294967295u), -1311f, vec3<f32>(-892f, -305f, 349f)), Struct_1(-10443i, vec3<u32>(0u, 70184u, 0u), -103f, vec3<f32>(-422f, 218f, -1555f)), Struct_1(0i, vec3<u32>(4294967295u, 1u, 50530u), 1091f, vec3<f32>(1280f, 664f, -1608f)), Struct_1(-72022i, vec3<u32>(4294967295u, 4294967295u, 4294967295u), 1726f, vec3<f32>(135f, -309f, -420f)), Struct_1(10278i, vec3<u32>(38003u, 4294967295u, 4294967295u), -1000f, vec3<f32>(1280f, 1000f, 134f)), Struct_1(-1i, vec3<u32>(0u, 2839u, 27902u), -529f, vec3<f32>(954f, 1006f, 1000f)), Struct_1(-59370i, vec3<u32>(1u, 14601u, 19674u), 113f, vec3<f32>(-480f, 382f, -996f)), Struct_1(19010i, vec3<u32>(55081u, 1u, 25954u), 1620f, vec3<f32>(-467f, -149f, -1645f)), Struct_1(-14375i, vec3<u32>(117841u, 4294967295u, 1u), -887f, vec3<f32>(-1000f, -1000f, 409f)), Struct_1(-24687i, vec3<u32>(4294967295u, 1u, 13846u), -121f, vec3<f32>(-716f, 1911f, 616f)), Struct_1(-21721i, vec3<u32>(0u, 24149u, 23372u), 760f, vec3<f32>(615f, -1786f, -1444f)), Struct_1(i32(-2147483648), vec3<u32>(1u, 4294967295u, 21964u), 569f, vec3<f32>(455f, -2052f, 959f)));

var<private> global1: vec4<f32>;

var<private> global2: array<i32, 26>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> vec4<f32> {
    let var_0 = vec3<bool>(any(!vec2<bool>(all(vec4<bool>(false, false, true, false)), false)), true, true);
    let var_1 = ~max(vec2<u32>(~u_input.c, 0u) >> (vec2<u32>(_wgslsmith_mod_u32(34208u, u_input.d), ~1u) % vec2<u32>(32u)), abs(~(~vec2<u32>(64642u, 4294967295u))));
    var var_2 = vec3<i32>(abs(max(global2[_wgslsmith_index_u32(u_input.c, 26u)], global2[_wgslsmith_index_u32(var_1.x, 26u)])) & 0i, min(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, 3977u ^ var_1.x), 26u)], ~1i), _wgslsmith_div_i32(global2[_wgslsmith_index_u32(u_input.c, 26u)], 0i << (_wgslsmith_dot_vec2_u32(var_1, var_1) % 32u))) | -_wgslsmith_add_vec3_i32(vec3<i32>(~45802i, _wgslsmith_add_i32(global2[_wgslsmith_index_u32(36091u, 26u)], global2[_wgslsmith_index_u32(0u, 26u)]), -2147483647i), vec3<i32>(_wgslsmith_mult_i32(u_input.b, global2[_wgslsmith_index_u32(var_1.x, 26u)]), 17498i, _wgslsmith_clamp_i32(u_input.b, -1i, global2[_wgslsmith_index_u32(u_input.c, 26u)])));
    var var_3 = Struct_1(-28620i, vec3<u32>(~countOneBits(4294967295u | var_1.x), _wgslsmith_clamp_u32(~50938u, 2888u, ~reverseBits(u_input.c)), ~5640u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.x - 1018f))))), 1289f)), _wgslsmith_f_op_vec3_f32(floor(global1.yzz)));
    var_2 = vec3<i32>(reverseBits(_wgslsmith_mult_i32(-var_2.x << (var_1.x % 32u), -_wgslsmith_div_i32(0i, var_2.x))), var_3.a, _wgslsmith_add_i32(max(_wgslsmith_mult_i32(2147483647i, -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.a, 2147483647i), var_2.xx)), abs(select(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d, u_input.d), 26u)], _wgslsmith_dot_vec2_i32(var_2.yz, vec2<i32>(-1i, global2[_wgslsmith_index_u32(4183u, 26u)])), any(var_0.yy)))));
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_3.d.x, 158f, var_3.d.x, 618f), vec4<f32>(-1169f, global1.x, -451f, -281f)))))));
}

fn func_2() -> u32 {
    global1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-434f, -268f, 1000f, global1.x), vec4<f32>(global1.x, global1.x, 1067f, 1000f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3()))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -1069f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.x)) + -1750f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(283f - global1.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1.x + -973f), _wgslsmith_div_f32(718f, -1358f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), global1.x) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(681f, global1.x, global1.x, global1.x) * vec4<f32>(global1.x, global1.x, 1132f, -187f))))))));
    global2 = array<i32, 26>();
    let var_0 = select(!vec3<bool>(!(global2[_wgslsmith_index_u32(54802u, 26u)] > u_input.a), _wgslsmith_f_op_f32(-global1.x) >= global1.x, any(vec3<bool>(true, false, false))), vec3<bool>(false, all(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true))), select(false, true, true)), false && any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), select(true, true, false))));
    let var_1 = global0[_wgslsmith_index_u32(u_input.c, 26u)];
    var var_2 = Struct_1(-1i, vec3<u32>(_wgslsmith_mod_u32(u_input.d, firstTrailingBit(35804u) ^ ~u_input.d), firstTrailingBit(var_1.b.x), firstTrailingBit(~min(40346u, 28538u))), _wgslsmith_f_op_f32(var_1.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(528f + global1.x) - _wgslsmith_f_op_f32(max(2193f, 828f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(global1.wyx)))));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(firstTrailingBit(46231u), var_2.b.x), ~min(4294967295u, 1u)), reverseBits(vec2<u32>(0u, var_2.b.x))) & _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(~u_input.d, u_input.d)), ~(~vec2<u32>(var_2.b.x, var_1.b.x)));
}

fn func_1() -> u32 {
    global2 = array<i32, 26>();
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(1u, 26u)], ~select(select(vec3<u32>(55629u, 4294967295u, u_input.c), vec3<u32>(0u, u_input.c, u_input.c), vec3<bool>(true, false, true)), ~vec3<u32>(u_input.d, u_input.d, 57485u), true) | firstTrailingBit(select(~vec3<u32>(u_input.d, u_input.c, u_input.d), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.d, u_input.d), vec3<u32>(4294967295u, 53233u, 0u)), true)));
    global2 = array<i32, 26>();
    var var_1 = Struct_2(Struct_1(-25022i, firstLeadingBit(vec3<u32>(1u, reverseBits(u_input.d), _wgslsmith_add_u32(var_0.b.x, var_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a.c)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-760f, var_0.a.d.x, -904f)))), vec3<u32>(abs(4294967295u), func_2(), 1u));
    var var_2 = _wgslsmith_div_vec2_f32(var_1.a.d.zy, global1.xx);
    return ~17845u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(-506f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -138f))), global1.x) * _wgslsmith_div_f32(-103f, -329f)), -1032f);
    global0 = array<Struct_1, 26>();
    var var_1 = _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-1173f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-529f)))));
    let var_2 = Struct_1(-(i32(-1i) * -2147483647i), max(vec3<u32>(1u, u_input.d, ~_wgslsmith_sub_u32(u_input.d, u_input.d)), vec3<u32>(~func_1(), 44783u, ~(~u_input.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x)))), _wgslsmith_f_op_vec3_f32(select(var_0, _wgslsmith_f_op_vec3_f32(round(var_0)), vec3<bool>(!(u_input.c == 27513u), true, all(vec2<bool>(true, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(-((u_input.b >> (_wgslsmith_add_u32(65137u, 1u) % 32u)) >> ((var_2.b.x >> (~38993u % 32u)) % 32u)), _wgslsmith_clamp_u32(countOneBits(~(u_input.d & 1u)), u_input.c, reverseBits(~u_input.c)), vec2<f32>(666f, -1000f), global2[_wgslsmith_index_u32(38753u, 26u)]);
}

