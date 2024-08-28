struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 13> = array<vec3<bool>, 13>(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true));

var<private> global1: array<bool, 12> = array<bool, 12>(true, false, true, true, false, true, false, false, false, true, false, true);

var<private> global2: array<vec4<f32>, 10> = array<vec4<f32>, 10>(vec4<f32>(-1342f, 621f, 919f, -1181f), vec4<f32>(257f, -1349f, -994f, 1636f), vec4<f32>(-1665f, 1000f, -184f, -922f), vec4<f32>(-1997f, 1362f, -1154f, 858f), vec4<f32>(1000f, 1413f, -358f, 303f), vec4<f32>(-1015f, 219f, 141f, 767f), vec4<f32>(154f, 554f, -1868f, -682f), vec4<f32>(1832f, -1608f, -917f, -2915f), vec4<f32>(-789f, 388f, -1152f, 1197f), vec4<f32>(-373f, 891f, 991f, -430f));

var<private> global3: f32 = 333f;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<u32>) -> f32 {
    global3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-640f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1242f, -1936f)))))));
    let var_0 = arg_0;
    var var_1 = Struct_2(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(trunc(-1065f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1280f)) - 1648f))));
    let var_2 = Struct_3(Struct_1(firstTrailingBit(_wgslsmith_add_u32(arg_1.x, arg_1.x)), -vec4<i32>(u_input.b.x, u_input.d, u_input.d, 1i) | vec4<i32>(2147483647i, -33194i, u_input.b.x, _wgslsmith_mult_i32(0i, u_input.b.x)), _wgslsmith_f_op_f32(trunc(-1986f))), Struct_2(false, -382f), Struct_2(true, 1f));
    var var_3 = Struct_3(var_2.a, var_2.c, Struct_2(any(vec4<bool>(var_2.a.a < var_2.a.a, true, false, all(vec3<bool>(true, true, true)))), var_2.c.b));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2181f - 237f))))), -2018f);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_3) -> vec2<bool> {
    var var_0 = Struct_1(~arg_2.a.a, arg_2.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(arg_1.c)))))));
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.b + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.c)))) * 753f) - _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(var_0.a, 13u)], vec2<u32>(~0u, ~(~13712u)))));
    global0 = array<vec3<bool>, 13>();
    let var_1 = abs(_wgslsmith_dot_vec4_i32(var_0.b, arg_2.a.b));
    var var_2 = arg_2.b;
    return arg_0;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: u32) -> u32 {
    global0 = array<vec3<bool>, 13>();
    global3 = arg_1.a.c;
    var var_0 = Struct_1(78831u, arg_1.a.b, -1547f);
    global2 = array<vec4<f32>, 10>();
    var var_1 = arg_1.a;
    return u_input.a.x;
}

fn func_1(arg_0: u32) -> Struct_3 {
    global1 = array<bool, 12>();
    var var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(~firstTrailingBit(_wgslsmith_mod_u32(63479u, u_input.a.x)), func_4(select(!vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 12u)]), func_2(vec2<bool>(false, false), Struct_1(u_input.c, vec4<i32>(1i, u_input.b.x, 2147483647i, -1i), -160f), Struct_3(Struct_1(0u, vec4<i32>(24422i, -37389i, -54240i, u_input.b.x), -567f), Struct_2(global1[_wgslsmith_index_u32(arg_0, 12u)], -1194f), Struct_2(false, -301f))), !global1[_wgslsmith_index_u32(u_input.c, 12u)]), Struct_3(Struct_1(arg_0, vec4<i32>(1i, -1i, 38401i, 16086i), 1117f), Struct_2(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], 297f), Struct_2(global1[_wgslsmith_index_u32(arg_0, 12u)], 735f)), u_input.a.x & 0u), ~4294967295u, _wgslsmith_div_u32(u_input.c, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a) << (~u_input.a.x % 32u))), ~(~vec4<u32>(arg_0, 100110u, 0u, 73888u)) >> (~vec4<u32>(arg_0, abs(u_input.c), ~arg_0, ~1u) % vec4<u32>(32u)));
    let var_1 = Struct_2(func_2(!vec2<bool>(true, -2147483647i > u_input.b.x), Struct_1(~0u, abs(-vec4<i32>(28940i, 51098i, -2147483647i, 1i)), 454f), Struct_3(Struct_1(~var_0.x, vec4<i32>(u_input.d, u_input.b.x, u_input.b.x, -44226i), _wgslsmith_f_op_f32(f32(-1f) * -748f)), Struct_2(any(vec2<bool>(global1[_wgslsmith_index_u32(var_0.x, 12u)], global1[_wgslsmith_index_u32(858u, 12u)])), _wgslsmith_f_op_f32(f32(-1f) * -1882f)), Struct_2(all(global0[_wgslsmith_index_u32(u_input.a.x, 13u)]), 2156f))).x, 1109f);
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-13800i, u_input.d, ~(-u_input.b.x)), u_input.b.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.b, _wgslsmith_f_op_f32(trunc(-1618f)), _wgslsmith_f_op_f32(sign(-1292f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    return Struct_3(Struct_1(var_0.x << (var_0.x % 32u), vec4<i32>(2147483647i, ~var_2 << (arg_0 % 32u), var_2 >> (_wgslsmith_mult_u32(u_input.c, var_0.x) % 32u), -firstLeadingBit(-1i)), _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(-773f - _wgslsmith_div_f32(var_1.b, -1211f)))), Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~22770u), select(func_4(vec2<bool>(var_1.a, var_1.a), Struct_3(Struct_1(1u, vec4<i32>(-1i, -2147483647i, var_2, -1i), var_3.x), Struct_2(global1[_wgslsmith_index_u32(arg_0, 12u)], -1000f), var_1), 0u), var_0.x, true)), 12u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(-1000f + var_1.b)))), var_1);
}

fn func_5(arg_0: Struct_3) -> f32 {
    var var_0 = true;
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-260f, arg_0.a.c, 166f))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.c.b, arg_0.b.b, 207f)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.c, arg_0.a.c, arg_0.a.c)))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(abs(arg_0.c.b)), _wgslsmith_f_op_f32(step(227f, arg_0.a.c)), _wgslsmith_div_f32(arg_0.b.b, arg_0.a.c)))))));
    let var_2 = arg_0;
    global2 = array<vec4<f32>, 10>();
    var var_3 = arg_0;
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<f32>, 10>();
    global0 = array<vec3<bool>, 13>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_5(func_1(min(u_input.a.x, u_input.a.x)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -132f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))))));
    global1 = array<bool, 12>();
    global3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(1278f + var_0)), -2053f))), ~u_input.b.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-100f, 893f, 1162f, var_0)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(418f, 1334f, 882f, 2347f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], global2[_wgslsmith_index_u32(14866u, 10u)])) + _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(1u, 10u)]))) * global2[_wgslsmith_index_u32(1u, 10u)]), _wgslsmith_sub_vec4_u32(~max(~vec4<u32>(u_input.a.x, 0u, 1u, u_input.a.x), countOneBits(vec4<u32>(u_input.c, 83934u, 0u, 1u))), ~select(vec4<u32>(0u, u_input.a.x, 50216u, 11873u), vec4<u32>(u_input.a.x, u_input.c, 112857u, 42656u), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 12u)], false, false, true)) ^ vec4<u32>(firstLeadingBit(0u), u_input.c >> (58425u % 32u), 1u, u_input.c | u_input.a.x)));
}

