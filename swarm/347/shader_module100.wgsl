struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: u32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 22> = array<vec4<u32>, 22>(vec4<u32>(12800u, 1u, 6008u, 0u), vec4<u32>(4294967295u, 21778u, 4294967295u, 27360u), vec4<u32>(4294967295u, 0u, 57651u, 1u), vec4<u32>(34363u, 46543u, 0u, 65217u), vec4<u32>(0u, 0u, 4294967295u, 1u), vec4<u32>(0u, 4294967295u, 51469u, 24751u), vec4<u32>(1u, 21408u, 0u, 4294967295u), vec4<u32>(0u, 54028u, 62295u, 4294967295u), vec4<u32>(51264u, 4294967295u, 1u, 20358u), vec4<u32>(56876u, 13919u, 28717u, 25694u), vec4<u32>(89246u, 4294967295u, 38747u, 77505u), vec4<u32>(52947u, 30893u, 0u, 4294967295u), vec4<u32>(1u, 68782u, 0u, 36257u), vec4<u32>(2107u, 40035u, 34372u, 1u), vec4<u32>(0u, 0u, 1u, 0u), vec4<u32>(4294967295u, 1u, 36551u, 3942u), vec4<u32>(1u, 37625u, 4294967295u, 13742u), vec4<u32>(70552u, 58626u, 39595u, 19034u), vec4<u32>(0u, 40340u, 15432u, 4294967295u), vec4<u32>(52496u, 49616u, 41769u, 1u), vec4<u32>(14828u, 81350u, 20268u, 52057u), vec4<u32>(16890u, 17533u, 1u, 4294967295u));

var<private> global1: array<i32, 12> = array<i32, 12>(3005i, -19430i, 1i, i32(-2147483648), -41348i, 25830i, 2147483647i, 44663i, -1i, 1i, -30317i, 44646i);

var<private> global2: array<bool, 16> = array<bool, 16>(false, false, true, false, true, true, true, true, true, false, true, false, false, true, false, true);

var<private> global3: array<vec3<f32>, 26>;

var<private> global4: array<u32, 16>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_3) -> Struct_1 {
    let var_0 = arg_3.a;
    var var_1 = ~vec3<u32>(var_0.a.c, arg_3.c, 61391u);
    let var_2 = var_0.b.e;
    let var_3 = arg_1.c;
    global3 = array<vec3<f32>, 26>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.a.a.a + arg_3.a.a.a), var_0.a.a)), arg_3.b, arg_3.a.b.c, _wgslsmith_f_op_f32(-var_0.a.d), !var_0.a.e);
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: f32) -> Struct_2 {
    var var_0 = ~(arg_1.c | arg_1.c);
    global0 = array<vec4<u32>, 22>();
    let var_1 = -1000f;
    var var_2 = arg_1.a;
    var_2 = arg_1.a;
    return arg_1.a;
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_3) -> Struct_1 {
    global3 = array<vec3<f32>, 26>();
    global0 = array<vec4<u32>, 22>();
    global4 = array<u32, 16>();
    var var_0 = arg_0.a.d;
    global4 = array<u32, 16>();
    return func_2(global3[_wgslsmith_index_u32(arg_0.a.c, 26u)], arg_2, Struct_3(arg_2.a, vec3<i32>(1i, firstLeadingBit(arg_2.a.b.b.x), max(arg_2.a.b.b.x, _wgslsmith_clamp_i32(46716i, u_input.d.x, 49005i))), ~0u, !(!arg_2.a.a.e)), Struct_3(func_3(~global1[_wgslsmith_index_u32(48099u, 12u)], Struct_3(func_3(1i, Struct_3(arg_0, vec3<i32>(36298i, -20952i, arg_2.b.x), 1u, arg_0.a.e), arg_2.a.a.a, arg_2.a.b.a.x), -vec3<i32>(global1[_wgslsmith_index_u32(51571u, 12u)], 0i, arg_1), 83441u << (global4[_wgslsmith_index_u32(30060u, 16u)] % 32u), true && arg_0.a.e), _wgslsmith_f_op_vec4_f32(-arg_2.a.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1206f + -131f))), countOneBits(_wgslsmith_mult_vec3_i32(-arg_2.a.a.b, vec3<i32>(u_input.c, global1[_wgslsmith_index_u32(4839u, 12u)], 1i))), arg_0.b.c, true));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: vec4<i32>, arg_3: vec2<bool>) -> vec4<f32> {
    var var_0 = ~_wgslsmith_mod_vec3_u32(select(min(~arg_0, max(vec3<u32>(13000u, 22391u, 0u), vec3<u32>(92978u, global4[_wgslsmith_index_u32(35094u, 16u)], 4294967295u))), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(44132u, 54204u)), 0u, _wgslsmith_add_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_0.x, 16u)], 16u)], global4[_wgslsmith_index_u32(u_input.a, 16u)])), vec3<bool>(true, true, true)), ~firstLeadingBit(firstTrailingBit(arg_0)));
    var var_1 = 16619i;
    let var_2 = func_4(func_3(-select(arg_2.x, -55670i, !arg_3.x), Struct_3(Struct_2(func_2(global3[_wgslsmith_index_u32(4294967295u, 26u)], Struct_3(Struct_2(Struct_1(vec4<f32>(-1000f, 361f, -722f, -1000f), vec3<i32>(-2147483647i, 23622i, -66359i), var_0.x, -693f, false), Struct_1(vec4<f32>(-416f, -505f, 1447f, -753f), vec3<i32>(2147483647i, arg_2.x, -63034i), 43699u, 542f, true)), arg_1.yxx, 1u, false), Struct_3(Struct_2(Struct_1(vec4<f32>(-938f, -1038f, -1042f, -855f), arg_2.zzw, 26845u, 693f, arg_3.x), Struct_1(vec4<f32>(840f, -354f, -480f, 372f), vec3<i32>(global1[_wgslsmith_index_u32(var_0.x, 12u)], 0i, -10985i), 1u, -243f, true)), arg_1.yxy, 1u, arg_3.x), Struct_3(Struct_2(Struct_1(vec4<f32>(404f, -1476f, -1095f, 1086f), arg_2.ywz, 1u, 211f, global2[_wgslsmith_index_u32(u_input.a, 16u)]), Struct_1(vec4<f32>(418f, -449f, -930f, -542f), arg_1.ywz, arg_0.x, -623f, global2[_wgslsmith_index_u32(arg_0.x, 16u)])), vec3<i32>(1i, arg_2.x, arg_1.x), global4[_wgslsmith_index_u32(1454u, 16u)], arg_3.x)), Struct_1(vec4<f32>(469f, 477f, 992f, -260f), arg_2.zzz, arg_0.x, -939f, arg_3.x)), _wgslsmith_add_vec3_i32(arg_2.zww, arg_1.xyz << (vec3<u32>(var_0.x, u_input.a, 4294967295u) % vec3<u32>(32u))), reverseBits(u_input.a), arg_3.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-396f, -555f, 784f, 633f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(506f)), _wgslsmith_f_op_f32(1147f * -143f), true))))), abs(-33599i), Struct_3(func_3(arg_1.x, Struct_3(func_3(arg_2.x, Struct_3(Struct_2(Struct_1(vec4<f32>(-1776f, 946f, 1000f, 1000f), vec3<i32>(arg_1.x, 1i, -20765i), 19451u, -283f, false), Struct_1(vec4<f32>(450f, -179f, -678f, -735f), u_input.d.yxy, 1u, 767f, false)), vec3<i32>(u_input.c, 17926i, 2147483647i), 28711u, true), vec4<f32>(-636f, 1000f, 821f, -127f), -893f), ~vec3<i32>(-27884i, u_input.b, -1i), ~global4[_wgslsmith_index_u32(1u, 16u)], global2[_wgslsmith_index_u32(~arg_0.x, 16u)]), vec4<f32>(_wgslsmith_f_op_f32(ceil(-2593f)), _wgslsmith_div_f32(-288f, 2349f), _wgslsmith_f_op_f32(1000f + -1634f), -1631f), -1334f), arg_2.yzy, reverseBits(~arg_0.x), all(!select(vec4<bool>(arg_3.x, true, global2[_wgslsmith_index_u32(var_0.x, 16u)], arg_3.x), vec4<bool>(arg_3.x, false, false, false), vec4<bool>(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 16u)], 16u)], arg_3.x, global2[_wgslsmith_index_u32(4294967295u, 16u)], arg_3.x)))));
    let var_3 = ~firstLeadingBit(~(~var_2.b.yy)) << (~(~arg_0.xx) % vec2<u32>(32u));
    let var_4 = Struct_3(func_3(32352i << (var_2.c % 32u), Struct_3(func_3(-24600i, Struct_3(Struct_2(Struct_1(var_2.a, vec3<i32>(-2147483647i, 2147483647i, -2147483647i), 56634u, var_2.a.x, false), var_2), vec3<i32>(0i, arg_2.x, arg_2.x), arg_0.x, true), var_2.a, _wgslsmith_f_op_f32(-896f - var_2.d)), vec3<i32>(_wgslsmith_mult_i32(var_2.b.x, -1i), -22369i & arg_1.x, ~13735i), _wgslsmith_div_u32(u_input.a, u_input.a) ^ reverseBits(global4[_wgslsmith_index_u32(u_input.a, 16u)]), all(!arg_3)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(var_2.a, vec4<f32>(380f, -1753f, var_2.d, var_2.a.x), !vec4<bool>(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 16u)], 16u)], var_2.e, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_0.x, 16u)], 16u)], var_2.e))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.a * vec4<f32>(var_2.d, 861f, var_2.a.x, 1000f))), false)), _wgslsmith_f_op_f32(-var_2.a.x)), u_input.d.zwx, var_0.x, true);
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(807f * var_2.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.a.a.d + 1000f)), _wgslsmith_f_op_f32(select(1226f, 1000f, any(vec3<bool>(var_4.d, arg_3.x, var_2.e)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.a.b.d * var_2.a.x) - 1116f)) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_4.a.b.d)) - _wgslsmith_f_op_f32(-var_2.d)), _wgslsmith_f_op_f32(-469f - _wgslsmith_f_op_f32(select(var_4.a.b.a.x, var_2.d, true))), -221f, var_2.d))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(vec3<u32>(27036u, global4[_wgslsmith_index_u32(u_input.a, 16u)], 4294967295u) | vec3<u32>(4294967295u, 37840u, 4294967295u), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.b, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 16u)], 12u)], -13828i), vec4<i32>(u_input.b, 5660i, 2147483647i, u_input.c), u_input.d), u_input.d, select(vec2<bool>(false, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 16u)], 16u)]), vec2<bool>(global2[_wgslsmith_index_u32(0u, 16u)], true), true)))))), vec3<i32>(1i, global1[_wgslsmith_index_u32(~1u, 12u)], ((-18741i ^ u_input.b) ^ 18300i) & ~(~0i)), (_wgslsmith_mod_u32(0u, _wgslsmith_clamp_u32(u_input.a, global4[_wgslsmith_index_u32(u_input.a, 16u)], u_input.a)) & 0u) ^ select(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(11207u, 22u)], vec4<u32>(global4[_wgslsmith_index_u32(0u, 16u)], global4[_wgslsmith_index_u32(23438u, 16u)], 62273u, 0u)), func_3(-1i, Struct_3(Struct_2(Struct_1(vec4<f32>(-1903f, 298f, 998f, 102f), vec3<i32>(-1i, -17105i, 12376i), 0u, -1000f, true), Struct_1(vec4<f32>(324f, -840f, -233f, -786f), u_input.d.yxz, u_input.a, -1000f, global2[_wgslsmith_index_u32(4294967295u, 16u)])), vec3<i32>(u_input.d.x, u_input.c, 0i), global4[_wgslsmith_index_u32(u_input.a, 16u)], global2[_wgslsmith_index_u32(0u, 16u)]), vec4<f32>(-1000f, -1637f, -1652f, -310f), -853f).b.c), max(u_input.a | global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 16u)], 16u)], abs(43919u)), (global2[_wgslsmith_index_u32(1u, 16u)] != global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(15057u, 16u)], 16u)]) | true), 1f, any(select(select(vec4<bool>(global2[_wgslsmith_index_u32(1u, 16u)], global2[_wgslsmith_index_u32(u_input.a, 16u)], global2[_wgslsmith_index_u32(4294967295u, 16u)], global2[_wgslsmith_index_u32(u_input.a, 16u)]), !vec4<bool>(true, false, false, global2[_wgslsmith_index_u32(48740u, 16u)]), vec4<bool>(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(41897u, 16u)], 16u)], false, global2[_wgslsmith_index_u32(0u, 16u)], true)), vec4<bool>(true, true, select(false, global2[_wgslsmith_index_u32(u_input.a, 16u)], global2[_wgslsmith_index_u32(27067u, 16u)]), all(vec2<bool>(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4493u, 16u)], 16u)], true))), func_3(min(-1i, u_input.d.x), Struct_3(Struct_2(Struct_1(vec4<f32>(325f, 862f, 1539f, -903f), u_input.d.wxx, 92173u, -1237f, true), Struct_1(vec4<f32>(1038f, -1419f, 661f, 265f), vec3<i32>(global1[_wgslsmith_index_u32(42390u, 12u)], 0i, -1i), global4[_wgslsmith_index_u32(37892u, 16u)], 528f, global2[_wgslsmith_index_u32(1u, 16u)])), vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(40025u, 12u)], -1133i), global4[_wgslsmith_index_u32(u_input.a, 16u)], true), vec4<f32>(702f, 523f, 218f, -246f), _wgslsmith_div_f32(-1359f, -361f)).b.e)));
    global0 = array<vec4<u32>, 22>();
    var var_1 = Struct_2(Struct_1(var_0.a, vec3<i32>(_wgslsmith_dot_vec4_i32(abs(u_input.d), vec4<i32>(u_input.d.x, u_input.b, -1i, 5134i)), firstLeadingBit(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(1u, 12u)], -2147483647i)), u_input.b), 1u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x) - _wgslsmith_f_op_f32(-var_0.d)), all(vec4<bool>(all(vec3<bool>(true, global2[_wgslsmith_index_u32(var_0.c, 16u)], global2[_wgslsmith_index_u32(2912u, 16u)])), true, true, global2[_wgslsmith_index_u32(max(23276u, 1u), 16u)]))), func_3(~var_0.b.x, Struct_3(func_3(-2147483647i, Struct_3(Struct_2(Struct_1(vec4<f32>(1000f, var_0.a.x, 1000f, -1263f), var_0.b, var_0.c, -1143f, true), Struct_1(vec4<f32>(1124f, var_0.a.x, var_0.a.x, -239f), u_input.d.yyz, 1u, -788f, var_0.e)), vec3<i32>(2824i, 1i, -11405i), 46604u, true), var_0.a, 817f), u_input.d.yyz, _wgslsmith_mod_u32(~var_0.c, ~46566u), !all(vec3<bool>(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(21971u, 16u)], 16u)], var_0.e, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1221f, _wgslsmith_f_op_f32(f32(-1f) * -1436f), _wgslsmith_f_op_f32(ceil(var_0.d)), var_0.a.x)), var_0.d).a);
    let var_2 = var_1.b;
    var_1 = func_3(u_input.c, Struct_3(Struct_2(func_4(func_3(-14921i, Struct_3(Struct_2(var_1.a, var_1.b), vec3<i32>(15374i, u_input.c, var_2.b.x), var_2.c, true), var_1.a.a, var_2.d), _wgslsmith_dot_vec2_i32(var_2.b.xz, var_2.b.yy), Struct_3(Struct_2(var_1.b, var_1.a), var_1.b.b, var_2.c, false)), var_1.a), func_2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(265f, var_0.d, var_2.d))), Struct_3(func_3(var_2.b.x, Struct_3(Struct_2(var_1.b, var_1.b), vec3<i32>(global1[_wgslsmith_index_u32(1u, 12u)], 0i, 75152i), var_1.b.c, global2[_wgslsmith_index_u32(var_0.c, 16u)]), var_1.a.a, var_2.a.x), _wgslsmith_sub_vec3_i32(vec3<i32>(var_2.b.x, global1[_wgslsmith_index_u32(var_0.c, 12u)], var_1.b.b.x), vec3<i32>(2147483647i, var_0.b.x, 1i)), 90715u, false), Struct_3(Struct_2(Struct_1(var_0.a, vec3<i32>(u_input.c, 26257i, 1i), var_1.b.c, var_1.a.a.x, var_0.e), var_1.b), _wgslsmith_div_vec3_i32(vec3<i32>(var_0.b.x, -22853i, u_input.d.x), vec3<i32>(global1[_wgslsmith_index_u32(34832u, 12u)], 0i, -1i)), ~u_input.a, false), Struct_3(func_3(31249i, Struct_3(Struct_2(Struct_1(vec4<f32>(-100f, -1000f, 552f, var_1.a.a.x), u_input.d.yzx, 1u, var_0.a.x, global2[_wgslsmith_index_u32(27270u, 16u)]), var_1.a), vec3<i32>(u_input.c, -2147483647i, 0i), 0u, global2[_wgslsmith_index_u32(u_input.a, 16u)]), vec4<f32>(-450f, 180f, var_1.a.a.x, var_2.d), var_2.d), reverseBits(vec3<i32>(-4553i, -6230i, var_0.b.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(var_0.c, 16u)], var_0.c, 1u), vec3<u32>(12316u, 5186u, var_0.c)), false)).b, _wgslsmith_mod_u32(_wgslsmith_mult_u32(56233u, 1u), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_vec3_f32(var_0.a.wyx - var_1.a.a.yxx), Struct_3(Struct_2(Struct_1(vec4<f32>(933f, -224f, var_0.d, 465f), var_1.a.b, 23236u, var_2.a.x, var_2.e), var_1.a), var_1.b.b, 46401u, false), Struct_3(Struct_2(var_1.a, Struct_1(vec4<f32>(var_1.b.a.x, var_1.b.d, var_2.d, 794f), var_0.b, var_0.c, -500f, false)), var_2.b, 46941u, global2[_wgslsmith_index_u32(var_0.c, 16u)]), Struct_3(Struct_2(var_1.b, Struct_1(vec4<f32>(-214f, 195f, var_1.a.d, var_2.a.x), var_1.a.b, u_input.a, var_1.a.d, false)), vec3<i32>(-2147483647i, -62343i, var_2.b.x), 32278u, var_1.a.e)).c, 16u)], 16u)]), global2[_wgslsmith_index_u32(0u, 16u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(149f - -1000f), 323f, var_1.b.d, 1053f)) - vec4<f32>(2560f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)), 903f, _wgslsmith_f_op_f32(f32(-1f) * -168f))), var_0.d);
    let var_3 = _wgslsmith_f_op_f32(func_3(firstTrailingBit(var_1.b.b.x), Struct_3(Struct_2(var_1.b, Struct_1(var_2.a, u_input.d.yzy, 1u, var_0.a.x, var_0.e)), _wgslsmith_add_vec3_i32(~vec3<i32>(-23971i, global1[_wgslsmith_index_u32(62884u, 12u)], -23114i), select(vec3<i32>(357i, 21844i, 13119i), var_0.b, vec3<bool>(var_1.b.e, true, true))), ~countOneBits(26832u), global2[_wgslsmith_index_u32(~69020u >> (0u % 32u), 16u)]), _wgslsmith_f_op_vec4_f32(trunc(var_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d))).b.a.x * var_0.d);
    global2 = array<bool, 16>();
    var var_4 = global4[_wgslsmith_index_u32(4294967295u >> (u_input.a % 32u), 16u)];
    let x = u_input.a;
    s_output = StorageBuffer(func_3(_wgslsmith_div_i32(_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 16u)], 12u)] & global1[_wgslsmith_index_u32(0u, 12u)], 1i, -var_0.b.x), -(~var_1.b.b.x)), Struct_3(func_3(func_4(Struct_2(Struct_1(vec4<f32>(376f, var_2.a.x, -167f, 372f), var_1.a.b, var_2.c, -599f, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_1.b.c, 16u)], 16u)]), var_1.b), u_input.d.x, Struct_3(Struct_2(Struct_1(var_1.b.a, vec3<i32>(1i, global1[_wgslsmith_index_u32(1u, 12u)], var_1.b.b.x), global4[_wgslsmith_index_u32(var_0.c, 16u)], 1331f, false), var_1.b), var_2.b, var_0.c, var_1.a.e)).b.x, Struct_3(Struct_2(var_1.a, var_1.b), var_1.a.b, 1u, global2[_wgslsmith_index_u32(0u, 16u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(251f, -1370f, var_2.a.x, var_0.a.x)), var_2.d), var_0.b, 0u, func_3(~(-1290i), Struct_3(Struct_2(Struct_1(var_0.a, vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 12u)], var_2.b.x, 25324i), var_1.b.c, var_2.a.x, var_2.e), Struct_1(vec4<f32>(var_1.b.d, 980f, -355f, -415f), u_input.d.zyz, global4[_wgslsmith_index_u32(4294967295u, 16u)], var_2.a.x, var_0.e)), vec3<i32>(-1i, var_0.b.x, -11603i), 1u, var_2.e), _wgslsmith_f_op_vec4_f32(-var_1.a.a), var_0.a.x).a.e), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, 643f, -482f, 1251f) + vec4<f32>(var_1.a.d, var_1.a.d, var_3, var_3)) * var_2.a))), 389f).b.a.zww, vec4<u32>(u_input.a << (var_2.c % 32u), reverseBits(~(~u_input.a)), func_3(_wgslsmith_add_i32(-u_input.c, 52328i), Struct_3(func_3(-26603i, Struct_3(Struct_2(var_1.b, Struct_1(vec4<f32>(912f, var_1.a.a.x, var_2.a.x, var_2.d), var_2.b, 4294967295u, var_2.d, var_0.e)), vec3<i32>(var_0.b.x, 2147483647i, global1[_wgslsmith_index_u32(119130u, 12u)]), u_input.a, var_0.e), vec4<f32>(-140f, var_0.a.x, var_1.b.a.x, var_0.d), var_1.a.d), countOneBits(vec3<i32>(1i, 0i, 5256i)), ~var_2.c, -603f < var_1.a.d), vec4<f32>(_wgslsmith_f_op_f32(trunc(839f)), var_2.d, var_2.a.x, _wgslsmith_f_op_vec4_f32(func_1(vec3<u32>(u_input.a, 0u, 74406u), u_input.d, u_input.d, vec2<bool>(global2[_wgslsmith_index_u32(59372u, 16u)], var_1.a.e))).x), _wgslsmith_f_op_f32(f32(-1f) * -276f)).b.c, 1u), func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.b.x, -37202i, -2147483647i, func_4(Struct_2(Struct_1(vec4<f32>(-1228f, var_1.b.a.x, var_0.d, var_2.d), var_1.a.b, 52226u, 1637f, var_1.a.e), var_1.a), 2147483647i, Struct_3(Struct_2(Struct_1(vec4<f32>(var_0.a.x, -690f, var_1.a.a.x, -138f), vec3<i32>(47482i, 35250i, 0i), 73971u, 913f, global2[_wgslsmith_index_u32(var_0.c, 16u)]), var_1.a), var_2.b, 1u, false)).b.x), vec4<i32>(1i, firstLeadingBit(global1[_wgslsmith_index_u32(76706u, 12u)]), 0i, 26383i)), Struct_3(Struct_2(func_3(74504i, Struct_3(Struct_2(Struct_1(vec4<f32>(var_3, var_3, 375f, 747f), var_1.a.b, 26657u, 365f, var_1.b.e), Struct_1(vec4<f32>(-951f, 1275f, -1000f, -106f), var_1.a.b, 71939u, var_2.a.x, false)), vec3<i32>(u_input.c, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_2.c, 16u)], 12u)], var_0.b.x), 0u, true), vec4<f32>(937f, var_1.a.d, 1194f, var_0.d), 412f).a, Struct_1(vec4<f32>(323f, var_3, 786f, var_2.a.x), var_0.b, var_2.c, var_0.d, var_1.b.e)), u_input.d.xwz, var_2.c, true), var_0.a, var_0.a.x).b.a.wx, ~vec3<u32>(0u >> (~global4[_wgslsmith_index_u32(31915u, 16u)] % 32u), 90476u, u_input.a));
}

