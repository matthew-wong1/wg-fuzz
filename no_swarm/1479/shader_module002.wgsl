struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5>;

var<private> global1: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(true));

var<private> global2: vec2<u32> = vec2<u32>(71833u, 1u);

var<private> global3: f32;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: f32, arg_3: i32) -> f32 {
    var var_0 = max(u_input.a.x, ~4294967295u >> (~(~1u) % 32u));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(243f)))) - _wgslsmith_f_op_f32(round(-399f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2 + -219f))))));
    var var_2 = select(~vec2<i32>(u_input.b, ~(u_input.b | -2147483647i)), _wgslsmith_sub_vec2_i32(vec2<i32>(min(u_input.b ^ 2863i, -1i), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -85197i, 4265i, -1i), vec4<i32>(arg_1, arg_3, arg_3, -10038i)), 1i)), vec2<i32>(u_input.b, firstLeadingBit(26220i))), vec2<bool>(true, any(vec4<bool>(true, true, true, true)) != true));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1189f, _wgslsmith_f_op_f32(arg_2 + -901f))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, select(true, true, true)))), ~vec3<u32>(arg_0, ~u_input.a.x, 44998u) << (max(~(~vec3<u32>(59090u, arg_0, u_input.a.x)), ~vec3<u32>(arg_0, 64523u, 0u)) % vec3<u32>(32u)), abs(u_input.a), select(vec3<bool>(any(vec2<bool>(false, false)), true, true), !vec3<bool>(all(vec2<bool>(true, true)), false, true), !vec3<bool>(true, all(vec4<bool>(true, false, false, true)), true)));
    var_2 = max(vec2<i32>(_wgslsmith_mod_i32(firstLeadingBit(4996i), _wgslsmith_add_i32(-13491i, arg_3)) | (~u_input.b | u_input.b), abs(-arg_3)), firstTrailingBit(vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(63259i, arg_3), -1i, arg_3), -6210i)));
    return -806f;
}

fn func_2() -> Struct_2 {
    let var_0 = u_input.b;
    let var_1 = true;
    global3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(~(~1u), 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-984f - 1986f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(525f - -521f)))), (var_0 << (u_input.a.x % 32u)) << (~_wgslsmith_add_u32(1u, global2.x) % 32u))), 734f));
    var var_2 = ~var_0;
    var var_3 = global1[_wgslsmith_index_u32(2605u, 5u)];
    return Struct_2(~u_input.b <= 1i);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.c, 5u)];
    let var_1 = 1i;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1548f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -462f), _wgslsmith_f_op_f32(f32(-1f) * -1234f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(848f, -113f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global2.x, firstTrailingBit(var_1), _wgslsmith_f_op_f32(abs(1059f)), ~u_input.b)) + _wgslsmith_f_op_f32(ceil(-348f)))));
    var var_3 = select(vec4<bool>(false, arg_1.a, false, all(vec3<bool>(true, u_input.c <= arg_2.x, false))), vec4<bool>(true, false, true, true && (var_1 != 2147483647i)), select(select(vec4<bool>(true, arg_1.a, any(vec3<bool>(var_0.a, false, arg_1.a)), arg_1.a & arg_1.a), vec4<bool>(any(vec4<bool>(true, arg_0.a, arg_1.a, var_0.a)), true, all(vec2<bool>(arg_0.a, true)), all(vec2<bool>(arg_1.a, arg_1.a))), any(vec3<bool>(arg_1.a, var_0.a, false)) == false), vec4<bool>(select(!arg_0.a, all(vec2<bool>(true, var_0.a)), true), false, any(vec3<bool>(false, arg_0.a, false)), var_0.a), arg_0.a));
    var_3 = !select(!vec4<bool>(true, func_2().a, true, true), select(!(!vec4<bool>(var_3.x, false, false, false)), vec4<bool>(2147483647i > var_1, func_2().a, true, true), select(select(vec4<bool>(false, var_0.a, var_0.a, true), vec4<bool>(false, var_3.x, var_0.a, var_0.a), vec4<bool>(arg_1.a, false, arg_0.a, var_0.a)), !vec4<bool>(true, var_3.x, false, arg_1.a), true)), var_3.x);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -140f), -155f))), !all(var_3.ww), countOneBits(arg_2.yyw), firstLeadingBit(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(~u_input.a, vec2<u32>(0u, arg_2.x), firstLeadingBit(arg_2.wx)), ~u_input.a)), !var_3.wzw);
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: bool, arg_3: vec4<bool>) -> Struct_2 {
    global0 = array<Struct_2, 5>();
    let var_0 = func_4(func_2(), global1[_wgslsmith_index_u32(~u_input.c, 5u)], ~vec4<u32>(16196u, _wgslsmith_clamp_u32(countOneBits(u_input.c), ~global2.x, min(global2.x, u_input.a.x)), 46580u << (min(1u, u_input.a.x) % 32u), 1u));
    global3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~max(arg_1, 4294967295u), firstLeadingBit(u_input.b) >> (0u % 32u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(378f, 182f) * -1060f), firstTrailingBit(1i))))));
    var var_1 = -23674i;
    let var_2 = var_0.a.x;
    return Struct_2(all(vec2<bool>((1i != arg_0.x) && arg_3.x, true)));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<bool>) -> vec3<f32> {
    global0 = array<Struct_2, 5>();
    global0 = array<Struct_2, 5>();
    global3 = 324f;
    var var_0 = arg_2;
    let var_1 = Struct_3(~1u, arg_0.yx);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(395f + 505f) + _wgslsmith_f_op_f32(-945f + 713f)), _wgslsmith_f_op_f32(func_3(40011u, 18212i, _wgslsmith_f_op_f32(max(-688f, -2270f)), _wgslsmith_mult_i32(var_1.b.x, -36827i))), _wgslsmith_f_op_f32(min(267f, -152f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1394f, -1168f, -1229f))));
}

fn func_6(arg_0: f32, arg_1: i32, arg_2: vec3<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(arg_0 * _wgslsmith_div_f32(arg_2.x, arg_0));
    global1 = array<Struct_2, 5>();
    let var_1 = Struct_3(0u, vec2<i32>(u_input.b, _wgslsmith_mult_i32(-73905i, i32(-1i) * -u_input.b)));
    global0 = array<Struct_2, 5>();
    let var_2 = !(!vec3<bool>(true || func_4(Struct_2(true), global1[_wgslsmith_index_u32(global2.x, 5u)], vec4<u32>(u_input.c, u_input.a.x, u_input.c, 31137u)).b, true, true));
    return Struct_3(u_input.c, _wgslsmith_div_vec2_i32(vec2<i32>(32642i, _wgslsmith_div_i32(_wgslsmith_mult_i32(-30492i, u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b, 119i), vec3<i32>(49315i, u_input.b, u_input.b)))), -var_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(!(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(global2.x, 0u, u_input.a.x)), vec3<u32>(28411u, 6040u, u_input.a.x)) != 0u), any(select(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), all(vec2<bool>(true, true)))), !((_wgslsmith_add_i32(u_input.b, 45907i) == _wgslsmith_div_i32(12693i, -2147483647i)) && true));
    var var_1 = Struct_3(~_wgslsmith_sub_u32(62651u, ~u_input.c), -(~min(~vec2<i32>(-17099i, u_input.b), vec2<i32>(u_input.b, 1190i))));
    let var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, ~0u), vec2<u32>(u_input.a.x, var_1.a));
    global3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(913f, -1751f))) * _wgslsmith_f_op_f32(347f + -345f))));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1082f);
    var_1 = func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3 - 518f) - var_3)))), -2147483647i << ((global2.x ^ _wgslsmith_mod_u32(67781u, var_2)) % 32u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_clamp_vec3_i32(~vec3<i32>(4137i, 17186i, u_input.b), select(vec3<i32>(0i, 29889i, -1i), vec3<i32>(-20946i, -12134i, 1i), true), vec3<i32>(2147483647i, -2147483647i, var_1.b.x)), func_1(var_1.b, 1u, var_0.x, select(vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, true, false))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(40209u, global2.x, 4294967295u, global2.x), vec4<u32>(68530u, var_2, 0u, var_2)), 5u)], !vec4<bool>(false, var_0.x, var_0.x, var_0.x))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_5(~vec3<i32>(24975i, var_1.b.x, -1i), func_2(), func_1(vec2<i32>(u_input.b, var_1.b.x), 1u, var_0.x, vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), !vec4<bool>(var_0.x, var_0.x, false, true)))))));
    var_0 = vec3<bool>(var_0.x, false, !func_2().a);
    let var_4 = -1348f;
    var var_5 = _wgslsmith_f_op_f32(min(-420f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(414f + var_3))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(893f, -802f, 411f, var_3))))), vec4<i32>(var_1.b.x, _wgslsmith_add_i32(_wgslsmith_mod_i32(3106i, func_6(-1291f, u_input.b, vec3<f32>(var_4, 433f, var_3)).b.x), ~abs(-1i)), u_input.b, _wgslsmith_mult_i32(reverseBits(select(0i, -2147483647i, var_0.x)), 8547i)), vec4<u32>(4294967295u, ~reverseBits(~var_2), ~func_6(_wgslsmith_f_op_f32(-250f + -1366f), -2147483647i, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_4, -515f, 998f)))).a, var_2));
}

