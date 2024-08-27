struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 32> = array<vec3<i32>, 32>(vec3<i32>(26418i, -20637i, 13681i), vec3<i32>(i32(-2147483648), -5561i, i32(-2147483648)), vec3<i32>(-75269i, 39546i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -1i, 60839i), vec3<i32>(60958i, 53758i, -10998i), vec3<i32>(-54977i, -1i, 0i), vec3<i32>(-1i, 2147483647i, 18224i), vec3<i32>(13467i, -7725i, 17351i), vec3<i32>(1i, i32(-2147483648), 16158i), vec3<i32>(-1i, 0i, 17865i), vec3<i32>(i32(-2147483648), 19891i, 2702i), vec3<i32>(-8100i, 32348i, -67431i), vec3<i32>(0i, -15618i, -6978i), vec3<i32>(9518i, -1i, -1i), vec3<i32>(-10928i, 16930i, -1i), vec3<i32>(-1i, -10751i, 35190i), vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), vec3<i32>(1i, 481i, 19696i), vec3<i32>(-25405i, -34967i, -19171i), vec3<i32>(-2434i, -34460i, 69068i), vec3<i32>(-717i, i32(-2147483648), 1i), vec3<i32>(0i, 6521i, -810i), vec3<i32>(4979i, -28018i, -1i), vec3<i32>(12826i, 0i, -2367i), vec3<i32>(1i, 6901i, -1i), vec3<i32>(2331i, 1i, 6024i), vec3<i32>(0i, 4171i, -14885i), vec3<i32>(-39712i, -41425i, -10932i), vec3<i32>(-1i, 2147483647i, -1i), vec3<i32>(-1i, 42071i, -1i), vec3<i32>(-1i, 0i, 45882i), vec3<i32>(1i, 0i, 2147483647i));

var<private> global1: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(vec4<f32>(-1000f, -1095f, -655f, 1564f), vec3<u32>(0u, 0u, 0u)), Struct_3(vec4<f32>(-789f, -378f, -967f, -1295f), vec3<u32>(25570u, 858u, 35464u)), Struct_3(vec4<f32>(409f, 116f, -1280f, -1741f), vec3<u32>(15516u, 2291u, 38057u)), Struct_3(vec4<f32>(1298f, 1359f, -1973f, 642f), vec3<u32>(1u, 65792u, 0u)), Struct_3(vec4<f32>(1039f, 268f, -1755f, -436f), vec3<u32>(23161u, 1u, 8817u)), Struct_3(vec4<f32>(-1671f, 2209f, 590f, -282f), vec3<u32>(25665u, 41532u, 4294967295u)), Struct_3(vec4<f32>(-303f, -1173f, 333f, 1121f), vec3<u32>(5898u, 1u, 35180u)), Struct_3(vec4<f32>(336f, 2410f, -1330f, 458f), vec3<u32>(0u, 4294967295u, 1u)), Struct_3(vec4<f32>(585f, -1530f, 1647f, 776f), vec3<u32>(1u, 13255u, 4294967295u)), Struct_3(vec4<f32>(-1991f, 1150f, -911f, -1449f), vec3<u32>(0u, 41587u, 5299u)), Struct_3(vec4<f32>(-896f, 1586f, -352f, 2926f), vec3<u32>(0u, 37954u, 36700u)), Struct_3(vec4<f32>(2511f, 157f, 584f, 417f), vec3<u32>(81786u, 11998u, 21745u)), Struct_3(vec4<f32>(-964f, -897f, 348f, -2237f), vec3<u32>(34410u, 0u, 4560u)), Struct_3(vec4<f32>(516f, -186f, -790f, 2970f), vec3<u32>(39680u, 8250u, 25989u)), Struct_3(vec4<f32>(2117f, -499f, 863f, 2282f), vec3<u32>(1u, 46250u, 40569u)), Struct_3(vec4<f32>(211f, -1359f, 301f, 536f), vec3<u32>(36453u, 1u, 4294967295u)), Struct_3(vec4<f32>(385f, -579f, -1296f, 164f), vec3<u32>(1u, 0u, 24862u)), Struct_3(vec4<f32>(-942f, 677f, 920f, 103f), vec3<u32>(28066u, 1u, 4294967295u)), Struct_3(vec4<f32>(-1000f, 401f, -1000f, 297f), vec3<u32>(4294967295u, 1u, 22526u)), Struct_3(vec4<f32>(1000f, 756f, -1282f, -559f), vec3<u32>(7780u, 0u, 0u)), Struct_3(vec4<f32>(-1153f, 1000f, -129f, -176f), vec3<u32>(0u, 4294967295u, 0u)), Struct_3(vec4<f32>(219f, -770f, 536f, -670f), vec3<u32>(4294967295u, 18752u, 1u)), Struct_3(vec4<f32>(527f, 1002f, -118f, 2362f), vec3<u32>(42674u, 8154u, 7927u)), Struct_3(vec4<f32>(-921f, -2687f, 239f, -1997f), vec3<u32>(4294967295u, 57909u, 4294967295u)), Struct_3(vec4<f32>(1371f, -455f, 629f, -1085f), vec3<u32>(0u, 54893u, 74243u)), Struct_3(vec4<f32>(404f, -1000f, -977f, 1000f), vec3<u32>(4294967295u, 1u, 4294967295u)), Struct_3(vec4<f32>(-1000f, 1548f, 1278f, 616f), vec3<u32>(72831u, 29009u, 4294967295u)), Struct_3(vec4<f32>(392f, 1731f, -596f, -1000f), vec3<u32>(81442u, 1u, 20706u)), Struct_3(vec4<f32>(-264f, -729f, -292f, 913f), vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_3(vec4<f32>(788f, 338f, -810f, 970f), vec3<u32>(0u, 1u, 1u)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: f32) -> i32 {
    global0 = array<vec3<i32>, 32>();
    return ~_wgslsmith_mod_i32(u_input.d, firstTrailingBit(_wgslsmith_clamp_i32(i32(-1i) * -1476i, -1i, -25389i)));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: f32, arg_3: Struct_3) -> i32 {
    let var_0 = arg_3;
    global1 = array<Struct_3, 30>();
    var var_1 = vec3<i32>(_wgslsmith_mod_i32(-54351i, -_wgslsmith_clamp_i32(-u_input.d, func_2(-999f), abs(-27167i))), _wgslsmith_clamp_i32(u_input.d, u_input.d ^ u_input.d, 6915i), u_input.a.x);
    let var_2 = Struct_1(arg_3.b, ~var_0.b.x, -48711i, arg_0.a.x);
    let var_3 = _wgslsmith_add_vec2_u32(~vec2<u32>(var_2.a.x, ~(arg_3.b.x & arg_0.b.x)), firstLeadingBit(vec2<u32>(~u_input.c.x, _wgslsmith_add_u32(abs(4294967295u), reverseBits(arg_3.b.x)))));
    return countOneBits(_wgslsmith_add_i32(~1i, 1i));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: vec3<i32>) -> i32 {
    global0 = array<vec3<i32>, 32>();
    var var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(arg_2, ~u_input.c.x, 88235u), abs(_wgslsmith_mult_vec3_u32(arg_0.a, u_input.c) >> (vec3<u32>(arg_0.b, 71122u, 20496u) % vec3<u32>(32u))) >> (vec3<u32>(_wgslsmith_add_u32(~u_input.c.x, 1u), ~(~4294967295u), ~u_input.b | abs(arg_2)) % vec3<u32>(32u)));
    let var_1 = arg_1;
    var var_2 = ~(~arg_2);
    let var_3 = arg_0;
    return var_3.c;
}

fn func_4(arg_0: bool, arg_1: bool) -> bool {
    let var_0 = Struct_1(~vec3<u32>(abs(~u_input.e), 0u, 15695u), u_input.e, -u_input.a.x & u_input.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(890f + -638f))), _wgslsmith_f_op_f32(f32(-1f) * -1946f))));
    var var_1 = _wgslsmith_div_f32(var_0.d, _wgslsmith_f_op_f32(max(var_0.d, _wgslsmith_f_op_f32(f32(-1f) * -484f))));
    var var_2 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(711f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d, -538f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.d, _wgslsmith_f_op_f32(472f - -2050f), var_0.b <= var_0.b))), -1000f, var_0.d), abs(_wgslsmith_add_vec3_u32(u_input.c, ~(vec3<u32>(var_0.b, u_input.e, 24613u) << (vec3<u32>(u_input.e, var_0.b, var_0.b) % vec3<u32>(32u))))));
    let var_3 = true;
    var var_4 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(8884u, 0u, var_2.b.x), 30u)];
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, !(!(!(1i >= u_input.d))));
    var var_1 = -_wgslsmith_add_vec4_i32(firstTrailingBit(u_input.a), vec4<i32>(u_input.a.x, u_input.a.x, u_input.d, _wgslsmith_mult_i32(-1i, u_input.d)));
    var var_2 = ~_wgslsmith_div_u32(28454u >> (countOneBits(abs(u_input.e)) % 32u), u_input.b);
    let var_3 = true;
    let var_4 = ~_wgslsmith_dot_vec4_u32(~vec4<u32>(~u_input.e, ~u_input.b, u_input.b, _wgslsmith_add_u32(u_input.b, 1u)), ~vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(67184u, 0u, 6770u)), ~u_input.b, _wgslsmith_sub_u32(15491u, 1u), u_input.b));
    var var_5 = vec2<u32>(_wgslsmith_add_u32(0u ^ var_4, u_input.e & 1u), 4294967295u);
    var var_6 = reverseBits(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(u_input.b, 14406u) << (~min(u_input.c.x, var_5.x) % 32u)), 32u)]);
    var_5 = u_input.c.yx;
    var var_7 = !select(29752u < u_input.b, func_4(true == !var_0.x, func_1(global1[_wgslsmith_index_u32(var_5.x, 30u)], vec2<bool>(var_3, false), -984f, global1[_wgslsmith_index_u32(var_5.x, 30u)]) < func_3(Struct_1(u_input.c, 4294967295u, -48928i, 363f), -2051f, var_4, vec3<i32>(1i, -2147483647i, var_6.x))), !var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2145f * _wgslsmith_f_op_f32(abs(1492f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-813f * 872f)))) + -452f), -15368i, firstTrailingBit(-53708i) | var_6.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(808f, -1800f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1180f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(398f)), 588f) * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1000f, 1000f), _wgslsmith_div_f32(467f, 311f))))));
}

