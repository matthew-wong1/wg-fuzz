struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: u32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: f32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(-1519i, 54627i, 9308i, 740i), vec4<i32>(22762i, 7133i, i32(-2147483648), -18283i), vec4<i32>(-34357i, 59972i, 32006i, i32(-2147483648)), vec4<i32>(34575i, 1i, -6622i, -1i), vec4<i32>(-4998i, -24420i, -1i, 3880i), vec4<i32>(i32(-2147483648), 97133i, 0i, -11318i), vec4<i32>(15922i, -74961i, -1i, 0i), vec4<i32>(5904i, 1i, i32(-2147483648), 14084i), vec4<i32>(-21515i, 2147483647i, 1i, -1i), vec4<i32>(2147483647i, -917i, -18684i, 30637i), vec4<i32>(-21200i, 1i, 3773i, -1i), vec4<i32>(-22937i, 2147483647i, 50438i, 2147483647i), vec4<i32>(-1i, 2147483647i, i32(-2147483648), i32(-2147483648)), vec4<i32>(29225i, -1i, 0i, 15818i), vec4<i32>(77846i, -1i, i32(-2147483648), 0i), vec4<i32>(i32(-2147483648), i32(-2147483648), 28916i, i32(-2147483648)), vec4<i32>(0i, 0i, i32(-2147483648), -1i), vec4<i32>(-1i, 8091i, i32(-2147483648), -30972i), vec4<i32>(6738i, 35894i, 14155i, 0i), vec4<i32>(2147483647i, -6418i, i32(-2147483648), 2147483647i), vec4<i32>(29688i, -78209i, -30683i, 2147483647i), vec4<i32>(27204i, -1i, 9858i, 0i), vec4<i32>(-1i, 25061i, 1i, -1i), vec4<i32>(i32(-2147483648), -6100i, 1i, 45858i), vec4<i32>(0i, 1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(45612i, -1i, i32(-2147483648), -2807i));

var<private> global1: array<vec3<f32>, 8>;

var<private> global2: array<vec3<u32>, 13> = array<vec3<u32>, 13>(vec3<u32>(1u, 0u, 27099u), vec3<u32>(1u, 9877u, 72294u), vec3<u32>(5202u, 1u, 9089u), vec3<u32>(743u, 13824u, 57759u), vec3<u32>(22454u, 1u, 81135u), vec3<u32>(16018u, 147752u, 4294967295u), vec3<u32>(41491u, 4294967295u, 166u), vec3<u32>(1u, 4294967295u, 42995u), vec3<u32>(1u, 23224u, 1u), vec3<u32>(1u, 20185u, 59341u), vec3<u32>(0u, 4294967295u, 58833u), vec3<u32>(0u, 0u, 21345u), vec3<u32>(14751u, 4294967295u, 2236u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_5, arg_1: vec3<i32>, arg_2: Struct_3) -> u32 {
    var var_0 = vec2<i32>(arg_2.a, _wgslsmith_mod_i32(arg_1.x, _wgslsmith_div_i32(_wgslsmith_sub_i32(-15829i, arg_1.x), 47922i)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.d.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-224f, arg_0.a.d.x, arg_0.a.b.d)), _wgslsmith_f_op_f32(ceil(-322f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-542f - _wgslsmith_f_op_f32(f32(-1f) * -495f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.d.x, _wgslsmith_f_op_f32(833f + 772f))), -1274f));
    return 4294967295u;
}

fn func_2(arg_0: Struct_2) -> vec4<u32> {
    var var_0 = ~(~arg_0.a.c.ywx << (vec3<u32>(0u, abs(abs(u_input.d)), firstLeadingBit(~27754u)) % vec3<u32>(32u)));
    var var_1 = Struct_3(~var_0.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(182f, _wgslsmith_f_op_f32(floor(714f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x)))), _wgslsmith_f_op_vec3_f32(min(global1[_wgslsmith_index_u32(48577u, 8u)], vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.d.x, 775f)) + _wgslsmith_f_op_f32(889f + 115f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_0.d.x)))), 130f))), ~(~arg_0.b.b ^ u_input.e), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.d.x, 863f, 1851f, arg_0.d.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(2274f, -1220f, 298f, arg_0.d.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.x, 872f, arg_0.d.x, 567f) + vec4<f32>(arg_0.d.x, -575f, 1079f, 2010f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(392f, 751f, arg_0.d.x, arg_0.d.x) * vec4<f32>(arg_0.d.x, -516f, arg_0.d.x, arg_0.d.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(987f, arg_0.d.x, arg_0.d.x, 1527f)))))));
    var_1 = Struct_3(i32(-1i) * -abs(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a.c.x, -1i, var_1.a), vec3<i32>(arg_0.b.c.x, u_input.b.x, -2905i))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.x, var_1.b.x, -1079f))), _wgslsmith_f_op_vec3_f32(exp2(var_1.b)), true)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1627f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-665f + arg_0.d.x), var_1.e.x))), _wgslsmith_f_op_f32(ceil(-523f))), firstTrailingBit(var_1.d), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, 261f, _wgslsmith_f_op_f32(var_1.b.x * 658f), -540f))));
    let var_2 = firstLeadingBit(abs(_wgslsmith_add_u32(func_3(Struct_5(arg_0, arg_0.c.c, vec2<u32>(46989u, var_1.d), vec3<i32>(-87966i, -2147483647i, var_1.a)), arg_0.c.c.yxz, Struct_3(1i, vec3<f32>(var_1.e.x, -392f, 1312f), global1[_wgslsmith_index_u32(4294967295u, 8u)], u_input.d, vec4<f32>(-422f, var_1.e.x, -622f, 1311f))), firstTrailingBit(28245u)))) | firstLeadingBit(_wgslsmith_mult_u32(~1u, _wgslsmith_dot_vec3_u32(firstLeadingBit(global2[_wgslsmith_index_u32(5387u, 13u)]), global2[_wgslsmith_index_u32(u_input.d, 13u)])));
    var var_3 = arg_0.d.x;
    return (~vec4<u32>(u_input.d, ~30765u, var_1.d, u_input.e) | ~vec4<u32>(~1u, var_1.d, ~1u, _wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(0u, 13u)], global2[_wgslsmith_index_u32(arg_0.a.b, 13u)]))) >> (select(~(select(vec4<u32>(0u, var_2, 1u, 44922u), vec4<u32>(28900u, u_input.e, 7903u, 0u), vec4<bool>(arg_0.c.d, arg_0.b.d, arg_0.c.d, arg_0.c.d)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(68306u, 4294967295u, var_1.d, 0u), vec4<u32>(4294967295u, 0u, 4294967295u, 16980u)) % vec4<u32>(32u))), ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(83703u, 110364u, 61882u, 28538u), vec4<u32>(var_1.d, 3707u, 92925u, var_2), vec4<u32>(4294967295u, var_2, 1u, 82613u)) & vec4<u32>(arg_0.c.b, 0u, u_input.d, arg_0.b.b)), vec4<bool>(arg_0.c.d, max(arg_0.b.a, u_input.c.x) >= 14084i, true, all(select(vec3<bool>(false, false, false), vec3<bool>(false, arg_0.a.d, arg_0.c.d), vec3<bool>(false, false, arg_0.c.d))))) % vec4<u32>(32u));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: f32, arg_3: Struct_4) -> f32 {
    global2 = array<vec3<u32>, 13>();
    global2 = array<vec3<u32>, 13>();
    global2 = array<vec3<u32>, 13>();
    var var_0 = (~arg_1.b ^ _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d, arg_0.d, ~47228u, 34662u), func_2(Struct_2(arg_1, Struct_1(-1i, 2552u, vec4<i32>(arg_3.a.x, -25836i, arg_3.a.x, u_input.b.x), arg_1.d), arg_1, arg_0.e.zx)))) == func_3(Struct_5(Struct_2(arg_1, arg_1, arg_1, _wgslsmith_f_op_vec2_f32(-arg_0.c.zz)), max(-vec4<i32>(arg_0.a, arg_3.a.x, 0i, 22957i), _wgslsmith_add_vec4_i32(global0[_wgslsmith_index_u32(2925u, 26u)], vec4<i32>(-11372i, u_input.b.x, arg_0.a, arg_3.a.x))), select(vec2<u32>(u_input.e, 1u), vec2<u32>(u_input.d, 1u), vec2<bool>(arg_1.d, true)) | vec2<u32>(79773u, 15588u), select(arg_1.c.yxy, vec3<i32>(-1i, 0i, u_input.a), arg_1.d) & (arg_1.c.zww >> (global2[_wgslsmith_index_u32(arg_1.b, 13u)] % vec3<u32>(32u)))), ~(~vec3<i32>(arg_0.a, arg_0.a, 22494i)), arg_0);
    var var_1 = vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)) * arg_0.c.x) != arg_0.c.x, !(arg_1.d == arg_1.d), !arg_1.d);
    return _wgslsmith_f_op_f32(step(-298f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-319f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(770f + arg_2)))))));
}

fn func_4(arg_0: f32, arg_1: f32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1111f) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1021f - _wgslsmith_f_op_f32(ceil(arg_0))))));
    global2 = array<vec3<u32>, 13>();
    var var_1 = _wgslsmith_add_u32(~(~firstLeadingBit(1u)), u_input.d);
    let var_2 = Struct_3(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(~(-vec3<i32>(u_input.b.x, 11652i, 23615i)), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, 1i, -1i), vec3<i32>(-16296i, -2147483647i, -1i)), firstLeadingBit(vec3<i32>(2147483647i, -34204i, u_input.c.x)))), 15072i), global1[_wgslsmith_index_u32(~(~(~1u)), 8u)], _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global1[_wgslsmith_index_u32(u_input.d, 8u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(1u, 8u)]))))), u_input.e, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(Struct_3(-40777i, global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(1u, 8u)], 1u, vec4<f32>(arg_0, 2132f, arg_0, arg_0)), Struct_1(u_input.a, u_input.d, vec4<i32>(u_input.b.x, -18321i, 0i, 344i), true), -2473f, Struct_4(u_input.c))), arg_1, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))));
    global1 = array<vec3<f32>, 8>();
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(countOneBits(2147483647i), abs(u_input.d) >> (min(countOneBits(abs(1523u)), u_input.e) % 32u), global0[_wgslsmith_index_u32(4408u ^ _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.d, 45349u)), ~(~vec2<u32>(u_input.e, u_input.e))), 26u)], true);
    let var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_3(var_0.a, global1[_wgslsmith_index_u32(4294967295u, 8u)], vec3<f32>(-1025f, 972f, 760f), 0u, vec4<f32>(580f, -1000f, -1742f, -1000f)), Struct_1(27959i, 4294967295u, vec4<i32>(var_0.c.x, var_0.a, 53928i, 69631i), false), 1146f, Struct_4(u_input.b)))), -1096f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-202f - 140f)) * -1333f)), _wgslsmith_f_op_f32(f32(-1f) * -2237f));
    var var_2 = any(!vec4<bool>(!(var_0.d || var_0.d), var_0.d, false, true != !var_0.d));
    var var_3 = var_0.d;
    var var_4 = firstTrailingBit(vec2<u32>(u_input.d, ~(~1u)));
    let var_5 = Struct_4(select(-abs(vec2<i32>(var_0.a, -1i) ^ u_input.b), vec2<i32>(43445i, ~0i), !(any(vec4<bool>(true, var_0.d, var_0.d, true)) == !var_0.d)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_5.a.x, i32(-1i) * -1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(global1[_wgslsmith_index_u32(var_0.b, 8u)], var_1.e.xwy)))))), _wgslsmith_f_op_f32(step(661f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(379f * 664f))))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e.x - -658f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-193f)) + _wgslsmith_f_op_f32(step(var_1.b.x, var_1.b.x)))), -1439f);
}

