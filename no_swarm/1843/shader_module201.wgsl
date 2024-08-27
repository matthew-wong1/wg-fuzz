struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17>;

var<private> global1: vec4<bool> = vec4<bool>(true, false, true, false);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -807f)));
    let var_1 = vec4<u32>(~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35236u, 17u)], 17u)])), ~vec2<u32>(0u, 1u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(62793u, 17u)], 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)]), vec3<u32>(1u, 4294967295u, global0[_wgslsmith_index_u32(6588u, 17u)])), ~global0[_wgslsmith_index_u32(1u, 17u)])), 1u, _wgslsmith_sub_u32(~(~(~4294967295u)), firstTrailingBit(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(66874u, 17u)], 17u)]))), min(max(~(~u_input.a), u_input.a), ~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 19831u), vec2<u32>(u_input.a, u_input.a)), 17u)], 17u)])));
    global1 = vec4<bool>(global1.x, true, any(vec2<bool>(false, select(any(global1.wyx), var_0 != var_0, true))), all(global1.yw) || all(vec3<bool>(false && arg_0, any(global1.wxw), global1.x)));
    let var_2 = vec2<bool>(true, select(true, true, all(!(!vec4<bool>(arg_0, global1.x, arg_0, global1.x)))));
    let var_3 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0, 1116f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0, var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * var_0) - _wgslsmith_f_op_f32(f32(-1f) * -253f)))), _wgslsmith_f_op_f32(-679f + _wgslsmith_div_f32(-1000f, -441f)), _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1550f)))), _wgslsmith_f_op_f32(floor(1657f)));
    return !select(select(select(!vec4<bool>(var_2.x, arg_0, var_2.x, true), !vec4<bool>(global1.x, true, var_2.x, false), true), vec4<bool>(select(false, global1.x, global1.x), true, any(global1.xzx), true), !vec4<bool>(true, global1.x, arg_0, false)), vec4<bool>(any(select(global1.yw, global1.wx, var_2.x)), var_2.x | (global1.x || global1.x), false, true), !global1.x);
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    global1 = func_3(true);
    let var_0 = arg_0;
    let var_1 = arg_0.x;
    var var_2 = _wgslsmith_div_u32(_wgslsmith_mult_u32(~31307u, ~(_wgslsmith_clamp_u32(43311u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], u_input.a) >> (1u % 32u))), 114855u);
    global0 = array<u32, 17>();
    return Struct_2(false, Struct_1(firstLeadingBit(vec3<i32>(arg_0.x, var_0.x, -2147483647i) ^ vec3<i32>(var_1, 30939i, -47940i))), -804f, Struct_1(var_0.xww), Struct_1(-vec3<i32>(_wgslsmith_mod_i32(2147483647i, var_0.x), countOneBits(52253i), 0i)));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    var var_0 = true;
    let var_1 = func_3(true).yy;
    global1 = vec4<bool>(!((-1i > arg_2.a.x) && false), arg_0.a, !any(vec2<bool>(false, !global1.x)), !(arg_2.a.x > ~(-arg_0.e.a.x)));
    var var_2 = func_2(vec4<i32>(reverseBits(~arg_2.a.x), -45676i, ~_wgslsmith_sub_i32(arg_2.a.x, _wgslsmith_mult_i32(arg_2.a.x, 27431i)), firstTrailingBit(arg_2.a.x) ^ (arg_0.e.a.x & arg_2.a.x))).e;
    return arg_0;
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    var var_0 = true;
    let var_1 = !(!(!select(vec4<bool>(true, global1.x, false, global1.x), vec4<bool>(false, global1.x, true, global1.x), all(vec4<bool>(global1.x, true, false, global1.x)))));
    var var_2 = arg_0.a.x;
    global0 = array<u32, 17>();
    var var_3 = -arg_0.a;
    return func_4(func_2(vec4<i32>(var_3.x, select(_wgslsmith_dot_vec3_i32(arg_0.a, vec3<i32>(0i, var_3.x, -16335i)), arg_0.a.x, !global1.x), -arg_0.a.x, i32(-1i) * -4005i)), true & global1.x, func_2(-(~firstTrailingBit(vec4<i32>(var_3.x, var_3.x, 0i, 1i)))).d);
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    let var_0 = ~min(33383i, _wgslsmith_mod_i32(abs(-23864i), select(arg_0.d.a.x, 2147483647i, false))) ^ func_1(Struct_1(vec3<i32>(~(-1i), -arg_0.e.a.x, -55023i))).d.a.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))));
    var var_2 = Struct_1(-arg_0.b.a & -arg_0.b.a);
    var var_3 = Struct_1(arg_0.d.a);
    var_3 = arg_0.e;
    return Struct_1(vec3<i32>(_wgslsmith_clamp_i32(arg_0.b.a.x, max(11505i, 1i), 1i >> (_wgslsmith_clamp_u32(1u, u_input.a, 26524u) % 32u)), _wgslsmith_sub_i32(1i, ~_wgslsmith_mod_i32(12903i, -2147483647i)), func_1(Struct_1(var_2.a)).e.a.x << (4294967295u % 32u)));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<i32>) -> bool {
    var var_0 = arg_2.b;
    let var_1 = Struct_1(-vec3<i32>(arg_1.d.a.x, select(var_0.a.x, arg_0.d.a.x, -1305f < arg_0.c), arg_2.d.a.x));
    var var_2 = abs(u_input.a << (0u % 32u));
    var var_3 = arg_1.e;
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1498f, -996f, -254f, arg_2.c) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(490f, 1492f, 143f, -2059f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(691f, _wgslsmith_f_op_f32(137f - arg_1.c), arg_2.c, -1161f)), all(vec2<bool>(true, true)) != !global1.x)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(func_4(arg_0, global1.x, Struct_1(vec3<i32>(-36507i, -1i, -11132i))).c, -1507f, _wgslsmith_f_op_f32(f32(-1f) * -634f), _wgslsmith_f_op_f32(-arg_1.c))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(select(-541f, arg_2.c, true)), _wgslsmith_f_op_f32(arg_2.c * arg_0.c), arg_0.c, -1165f)))));
    return all(vec4<bool>(arg_2.a, !(var_4.x != -2182f), true, (true && arg_1.a) && all(global1.xx))) & true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_dot_vec3_i32(reverseBits(-vec3<i32>(1i, 1i, 1i)), max(countOneBits(firstLeadingBit(vec3<i32>(2147483647i, -36268i, -15342i))), vec3<i32>(1i, 1i, 1i)));
    global1 = vec4<bool>(select(global1.x, global1.x, global1.x), func_6(Struct_2(true, Struct_1(-vec3<i32>(-18885i, 21548i, -12041i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1839f)) * -2205f), Struct_1(vec3<i32>(-31122i, -5699i, 64384i)), func_5(func_1(Struct_1(vec3<i32>(-14803i, -28230i, 1i))))), Struct_2(global1.x, Struct_1(vec3<i32>(0i, -2147483647i, -25987i)), 1066f, Struct_1(vec3<i32>(-20318i, -72559i, 0i)), Struct_1(vec3<i32>(-14342i, 24807i, 60571i))), Struct_2(true, Struct_1(vec3<i32>(-2147483647i, 12860i, -58164i)), 1319f, Struct_1(vec3<i32>(0i, -1i, -2147483647i)), Struct_1(vec3<i32>(1i, 1i, 1i))), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), reverseBits(vec4<i32>(0i, 2147483647i, 6131i, -16913i))) << (_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(u_input.a, u_input.a, global0[_wgslsmith_index_u32(16640u, 17u)], 0u)), vec4<u32>(u_input.a, u_input.a, 0u, 1u) | vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 17u)], 17042u, 0u, 0u), ~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u))), global1.x, !(!global1.x));
    let var_1 = Struct_1(select(-vec3<i32>(-21792i, 35352i, countOneBits(2147483647i)), ~(-_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 2147483647i, 9348i), vec3<i32>(-17068i, 1i, 17971i))), any(vec3<bool>(false, global1.x, false)) && !global1.x));
    var var_2 = u_input.a;
    let var_3 = global1.x;
    let var_4 = ~_wgslsmith_div_vec2_i32(var_1.a.yz & _wgslsmith_mod_vec2_i32(var_1.a.xx | vec2<i32>(var_1.a.x, var_1.a.x), var_1.a.yy), _wgslsmith_add_vec2_i32(var_1.a.zx, ~vec2<i32>(-2147483647i, var_1.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(Struct_2(false, Struct_1(vec3<i32>(var_4.x, 0i, var_4.x)), _wgslsmith_f_op_f32(select(280f, _wgslsmith_f_op_f32(step(-759f, -1170f)), global1.x)), func_1(var_1).d, Struct_1(min(vec3<i32>(-2147483647i, var_4.x, 1i), var_1.a))), func_6(Struct_2(true, func_5(Struct_2(false, var_1, 263f, var_1, var_1)), 821f, func_4(Struct_2(global1.x, var_1, 1240f, var_1, var_1), global1.x, Struct_1(var_1.a)).e, func_1(Struct_1(vec3<i32>(-2147483647i, -65942i, -46991i))).b), Struct_2(func_1(var_1).a, Struct_1(vec3<i32>(var_4.x, var_1.a.x, var_4.x)), _wgslsmith_f_op_f32(f32(-1f) * -237f), var_1, Struct_1(vec3<i32>(var_1.a.x, 28119i, 57181i))), Struct_2(true, func_5(Struct_2(false, var_1, -1283f, Struct_1(var_1.a), Struct_1(var_1.a))), 293f, Struct_1(var_1.a), Struct_1(var_1.a)), firstLeadingBit(countOneBits(vec4<i32>(var_4.x, var_1.a.x, var_4.x, var_4.x)))), func_1(func_1(var_1).d).e).c, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1001f, -1000f, -1055f, 1763f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1226f, -150f, 1491f, -1454f)))))), 0u, func_2(-vec4<i32>(var_1.a.x, 0i, var_4.x, 1i) & vec4<i32>(var_4.x, -15508i, ~var_1.a.x, var_1.a.x)).b.a, 280f);
}

