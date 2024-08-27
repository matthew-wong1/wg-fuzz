struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<f32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: Struct_3,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24> = array<bool, 24>(true, false, true, false, true, false, true, false, true, false, true, false, false, true, true, true, false, true, false, false, true, false, false, false);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_5, arg_1: vec3<f32>, arg_2: vec4<u32>, arg_3: bool) -> vec4<f32> {
    let var_0 = vec3<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-(~(-1i)), _wgslsmith_mult_i32(-1i, 16763i), firstLeadingBit(arg_0.b >> (25525u % 32u))), vec3<i32>(_wgslsmith_add_i32(-1i, arg_0.e.a.a) ^ _wgslsmith_add_i32(-1i, 0i), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b, -2147483647i), _wgslsmith_div_vec2_i32(vec2<i32>(-5683i, arg_0.d.a), vec2<i32>(arg_0.e.a.a, arg_0.d.a))), arg_0.e.a.a)), 0i);
    let var_1 = arg_0.c;
    var var_2 = true;
    let var_3 = arg_0.e;
    global0 = array<bool, 24>();
    return vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, arg_1.x) * _wgslsmith_f_op_f32(-626f * arg_0.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3.c.x))))), -1345f, -466f);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: u32) -> u32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.x * 1723f)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_0.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -498f), _wgslsmith_f_op_f32(-276f + arg_0.c.x))))), _wgslsmith_f_op_f32(round(arg_1.x)), arg_0.c.x);
    let var_1 = Struct_3(vec3<bool>(~abs(71343u) < u_input.a.x, 1f <= var_0.x, arg_2 < 4294967295u));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1080f, 128f))))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(arg_0.c.x))))));
    var_2 = _wgslsmith_f_op_f32(max(var_0.x, var_0.x));
    var var_3 = _wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(firstTrailingBit(-18422i), -1912i)), ~vec2<i32>(~(-arg_0.a.a), -30970i), vec2<i32>(arg_0.a.a, ~_wgslsmith_mod_i32(-30199i, arg_0.a.a)));
    return 25817u;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_5) -> Struct_2 {
    var var_0 = arg_1.e;
    var var_1 = abs(_wgslsmith_sub_vec3_u32(vec3<u32>(~_wgslsmith_mod_u32(4294967295u, arg_1.d.b.x), 4458u, func_4(arg_1.e, _wgslsmith_f_op_vec4_f32(func_3(Struct_5(arg_1.a, -1i, Struct_3(arg_1.c.a), Struct_1(0i, arg_1.d.b), Struct_2(Struct_1(arg_1.e.a.a, vec3<u32>(var_0.a.b.x, 0u, u_input.b)), vec2<bool>(arg_1.c.a.x, true), var_0.c, vec2<bool>(true, true))), var_0.c.yxy, vec4<u32>(44286u, 4294967295u, 49815u, 90361u), arg_0.x)), firstTrailingBit(var_0.a.b.x))), arg_1.e.a.b));
    let var_2 = countOneBits(select(-(~vec3<i32>(19808i, arg_1.e.a.a, var_0.a.a)) << (countOneBits(var_0.a.b) % vec3<u32>(32u)), vec3<i32>(-2837i, var_0.a.a, -(~arg_1.e.a.a)), !select(vec3<bool>(arg_0.x, global0[_wgslsmith_index_u32(28072u, 24u)], var_0.b.x), arg_0.wzy, true)));
    var_1 = abs(arg_1.e.a.b & vec3<u32>(firstLeadingBit(~var_1.x), firstLeadingBit(var_1.x), ~1u));
    var var_3 = var_0.a;
    return arg_1.e;
}

fn func_5(arg_0: Struct_2) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1824f, 1073f, arg_0.c.x, arg_0.c.x)), _wgslsmith_f_op_vec4_f32(arg_0.c + arg_0.c)) * _wgslsmith_div_vec4_f32(arg_0.c, vec4<f32>(arg_0.c.x, arg_0.c.x, -1957f, arg_0.c.x)))));
    global0 = array<bool, 24>();
    return firstLeadingBit(vec3<u32>(~4294967295u, ~(~max(u_input.a.x, u_input.a.x)), 72882u));
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: Struct_3) -> bool {
    global0 = array<bool, 24>();
    let var_0 = !(!global0[_wgslsmith_index_u32(~arg_0, 24u)]);
    let var_1 = Struct_1(i32(-1i) * -2293i, firstLeadingBit(max(func_5(func_2(vec4<bool>(var_0, arg_3.a.x, global0[_wgslsmith_index_u32(11027u, 24u)], true), Struct_5(1060f, -35448i, arg_3, Struct_1(12580i, vec3<u32>(44024u, 15659u, arg_0)), Struct_2(Struct_1(-21783i, vec3<u32>(4294967295u, 4294967295u, arg_0)), arg_2.a.zz, vec4<f32>(110f, 376f, -377f, -964f), vec2<bool>(false, false))))), vec3<u32>(func_2(vec4<bool>(false, true, false, true), Struct_5(112f, arg_1.x, arg_2, Struct_1(38848i, vec3<u32>(4294967295u, 67104u, 0u)), Struct_2(Struct_1(6609i, vec3<u32>(1u, 2441u, arg_0)), arg_2.a.yy, vec4<f32>(242f, 1696f, 821f, 2023f), arg_3.a.yy))).a.b.x, arg_0 & 4294967295u, 1u))));
    global0 = array<bool, 24>();
    global0 = array<bool, 24>();
    return arg_2.a.x;
}

fn func_6(arg_0: Struct_4, arg_1: i32) -> StorageBuffer {
    global0 = array<bool, 24>();
    var var_0 = Struct_5(-967f, min(-(~arg_1), _wgslsmith_mod_i32(_wgslsmith_div_i32(-arg_1, ~arg_1), -26708i)), Struct_3(arg_0.a.a), Struct_1(-62961i, func_5(Struct_2(func_2(vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(u_input.b, 24u)]), Struct_5(992f, -25820i, Struct_3(arg_0.a.a), Struct_1(arg_1, vec3<u32>(22960u, 1u, u_input.a.x)), Struct_2(Struct_1(arg_1, vec3<u32>(u_input.b, u_input.b, u_input.a.x)), arg_0.a.a.yx, vec4<f32>(-523f, 227f, -1241f, -1640f), arg_0.a.a.yy))).a, vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(610f, -1041f, 850f, 274f)), arg_0.a.a.zz))), Struct_2(func_2(!(!vec4<bool>(true, true, global0[_wgslsmith_index_u32(17326u, 24u)], false)), Struct_5(-922f, arg_1, arg_0.a, Struct_1(arg_1, vec3<u32>(u_input.a.x, 15017u, u_input.b)), Struct_2(Struct_1(0i, vec3<u32>(u_input.a.x, 1u, 48155u)), vec2<bool>(global0[_wgslsmith_index_u32(24714u, 24u)], false), vec4<f32>(-294f, 1024f, -1000f, 436f), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 24u)])))).a, func_2(vec4<bool>(true, false, true, arg_0.a.a.x), Struct_5(-967f, -461i, arg_0.a, Struct_1(arg_1, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), func_2(vec4<bool>(false, arg_0.a.a.x, arg_0.b, true), Struct_5(-318f, 2147483647i, Struct_3(arg_0.a.a), Struct_1(-40414i, vec3<u32>(7347u, u_input.a.x, 31405u)), Struct_2(Struct_1(arg_1, vec3<u32>(69438u, u_input.b, 4294967295u)), vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 24u)]), vec4<f32>(1666f, -422f, 1310f, 349f), vec2<bool>(true, true)))))).b, _wgslsmith_f_op_vec4_f32(func_3(Struct_5(_wgslsmith_f_op_f32(min(833f, -1000f)), ~arg_1, Struct_3(vec3<bool>(global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(18783u, 24u)], arg_0.a.a.x)), Struct_1(-1i, vec3<u32>(39644u, 71185u, u_input.b)), Struct_2(Struct_1(arg_1, vec3<u32>(u_input.a.x, u_input.a.x, u_input.b)), arg_0.a.a.xy, vec4<f32>(-659f, -171f, 467f, -167f), arg_0.a.a.yz)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1000f, -2064f) + _wgslsmith_div_vec3_f32(vec3<f32>(-1404f, -395f, 548f), vec3<f32>(595f, 514f, 671f))), max(vec4<u32>(u_input.b, 0u, u_input.a.x, u_input.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 1u, 4294967295u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(37001u, 4294967295u, u_input.a.x, u_input.b))), any(select(vec4<bool>(false, arg_0.a.a.x, false, true), vec4<bool>(true, true, arg_0.a.a.x, false), vec4<bool>(true, false, global0[_wgslsmith_index_u32(1u, 24u)], false))))), arg_0.a.a.zz));
    var_0 = Struct_5(_wgslsmith_f_op_f32(-1092f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.e.c.x))) + _wgslsmith_f_op_f32(trunc(func_2(vec4<bool>(global0[_wgslsmith_index_u32(var_0.e.a.b.x, 24u)], arg_0.b, var_0.e.b.x, arg_0.a.a.x), Struct_5(var_0.e.c.x, 2147483647i, arg_0.a, var_0.d, var_0.e)).c.x)))), select(var_0.d.a, i32(-1i) * -2147483647i, var_0.b >= _wgslsmith_mult_i32(arg_1 >> (0u % 32u), i32(-1i) * -1i)), Struct_3(select(select(var_0.c.a, vec3<bool>(var_0.e.d.x, arg_0.a.a.x, true), select(arg_0.a.a, arg_0.a.a, arg_0.a.a.x)), !arg_0.a.a, all(!var_0.e.b))), var_0.e.a, func_2(!(!select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.d.b.x, 24u)], var_0.e.d.x, global0[_wgslsmith_index_u32(106220u, 24u)], arg_0.a.a.x), vec4<bool>(var_0.e.d.x, false, var_0.c.a.x, true), true)), Struct_5(555f, firstTrailingBit(~(-2147483647i)), Struct_3(vec3<bool>(var_0.e.b.x, global0[_wgslsmith_index_u32(var_0.d.b.x, 24u)], false)), Struct_1(abs(0i), ~vec3<u32>(14247u, var_0.e.a.b.x, 4294967295u)), var_0.e)));
    global0 = array<bool, 24>();
    let var_1 = func_2(!vec4<bool>(func_2(!vec4<bool>(false, false, var_0.e.b.x, var_0.e.d.x), Struct_5(904f, -1i, var_0.c, Struct_1(var_0.d.a, vec3<u32>(var_0.e.a.b.x, u_input.b, u_input.a.x)), Struct_2(Struct_1(arg_1, vec3<u32>(0u, 1u, var_0.d.b.x)), arg_0.a.a.zx, var_0.e.c, var_0.e.b))).b.x, arg_0.a.a.x, global0[_wgslsmith_index_u32(17760u, 24u)], true), Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1093f), 1303f)), ~_wgslsmith_clamp_i32(-var_0.e.a.a, 1i, firstTrailingBit(-2147483647i)), Struct_3(vec3<bool>(!var_0.c.a.x, var_0.e.b.x, var_0.e.d.x)), var_0.d, var_0.e));
    return StorageBuffer(firstTrailingBit(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(var_1.a.b, vec3<u32>(27524u, 1u, 53152u)) | ~var_1.a.b, var_1.a.b)), ~52128i, vec4<i32>(0i, _wgslsmith_add_i32(~max(-2719i, arg_1), 23824i), select(var_0.d.a, _wgslsmith_div_i32(-4394i | arg_1, -5824i), !(u_input.b == 27459u)), func_2(select(!vec4<bool>(true, var_0.e.b.x, var_0.c.a.x, false), !vec4<bool>(true, arg_0.b, false, var_1.d.x), vec4<bool>(true, true, true, false)), Struct_5(_wgslsmith_div_f32(849f, var_0.a), arg_1, Struct_3(vec3<bool>(true, true, false)), var_1.a, func_2(vec4<bool>(var_0.e.b.x, true, var_0.e.d.x, arg_0.a.a.x), Struct_5(var_0.e.c.x, var_0.d.a, Struct_3(vec3<bool>(true, false, arg_0.a.a.x)), Struct_1(-43201i, vec3<u32>(50105u, 86263u, u_input.a.x)), var_1)))).a.a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(Struct_4(Struct_3(!vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 24u)], false, false)), all(vec3<bool>(func_1(u_input.b, vec4<i32>(32357i, 30528i, 0i, 56185i), Struct_3(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 24u)], global0[_wgslsmith_index_u32(u_input.b, 24u)], global0[_wgslsmith_index_u32(1u, 24u)])), Struct_3(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(112149u, 24u)]))), func_1(1u, vec4<i32>(-1i, -1i, 13294i, 1i), Struct_3(vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a.x, 24u)])), Struct_3(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 24u)], global0[_wgslsmith_index_u32(0u, 24u)]))), global0[_wgslsmith_index_u32(7030u, 24u)]))), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, countOneBits(1i)), -vec2<i32>(_wgslsmith_div_i32(-2147483647i, -1i), -65285i)));
}

