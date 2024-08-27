struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(Struct_1(vec2<u32>(1u, 11481u), vec4<i32>(-41349i, -26834i, -15903i, 2147483647i), vec3<f32>(1136f, -969f, -1417f), -186f), vec4<u32>(34051u, 18647u, 1u, 1u), vec2<i32>(-1i, 1i)), Struct_2(Struct_1(vec2<u32>(104154u, 0u), vec4<i32>(-44291i, -51018i, i32(-2147483648), 0i), vec3<f32>(-1000f, 108f, -155f), -326f), vec4<u32>(25137u, 24600u, 30562u, 102267u), vec2<i32>(2147483647i, -1i)), Struct_2(Struct_1(vec2<u32>(4294967295u, 1u), vec4<i32>(24643i, -48015i, -26512i, 1i), vec3<f32>(1668f, -1000f, 980f), -396f), vec4<u32>(21768u, 42427u, 44970u, 39121u), vec2<i32>(1i, 9012i)), Struct_2(Struct_1(vec2<u32>(35692u, 16092u), vec4<i32>(-17876i, 1i, -1i, 6311i), vec3<f32>(572f, 1315f, 450f), 414f), vec4<u32>(3570u, 1u, 10373u, 39144u), vec2<i32>(44262i, 2147483647i)), Struct_2(Struct_1(vec2<u32>(1u, 45194u), vec4<i32>(10515i, 1i, 1i, 1i), vec3<f32>(-1488f, -416f, -2516f), 1000f), vec4<u32>(4294967295u, 19700u, 4294967295u, 46308u), vec2<i32>(38935i, -35295i)), Struct_2(Struct_1(vec2<u32>(5629u, 38935u), vec4<i32>(716i, 2147483647i, 1i, 33939i), vec3<f32>(-800f, 166f, 189f), 1654f), vec4<u32>(4294967295u, 0u, 51452u, 4294967295u), vec2<i32>(2147483647i, 7996i)));

var<private> global1: vec4<i32>;

var<private> global2: u32 = 16110u;

var<private> global3: vec3<i32> = vec3<i32>(4319i, 1i, 18299i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> vec4<u32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, -584f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(2095f, arg_0, false)), arg_0), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0)) * -705f), 1124f, arg_0);
    global3 = global1.yyy;
    var var_1 = false;
    let var_2 = true;
    let var_3 = global0[_wgslsmith_index_u32(22345u, 6u)];
    return select(select(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(var_3.b.xzy, var_3.b.zwy), u_input.a, 22113u, reverseBits(var_3.b.x)), ~firstLeadingBit(var_3.b)), var_3.b, _wgslsmith_f_op_f32(f32(-1f) * -640f) == _wgslsmith_f_op_f32(max(101f, var_0.x))), abs(var_3.b) ^ var_3.b, any(!vec4<bool>(false, true, all(vec3<bool>(var_2, false, var_2)), any(vec3<bool>(false, var_2, var_2)))));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(arg_2.d * 1316f), -1470f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.c.x, _wgslsmith_f_op_f32(ceil(393f))) - -1000f)), -212f);
    global1 = (-(arg_2.b << (func_3(var_0.x) % vec4<u32>(32u))) ^ _wgslsmith_add_vec4_i32(vec4<i32>(global3.x, -global3.x, global1.x, global1.x), vec4<i32>(-9568i, _wgslsmith_add_i32(4727i, -2147483647i), _wgslsmith_mod_i32(1027i, global1.x), -32179i))) | vec4<i32>(global1.x, (_wgslsmith_add_i32(arg_2.b.x, 22074i) ^ global3.x) << (~(arg_3.x | u_input.a) % 32u), ~(_wgslsmith_add_i32(2147483647i, arg_1.a.b.x) | (-1i << (arg_1.b.x % 32u))), arg_1.c.x);
    var var_1 = Struct_1(abs(vec2<u32>(~(arg_1.b.x & u_input.a), ~_wgslsmith_dot_vec4_u32(vec4<u32>(24759u, u_input.a, u_input.a, u_input.a), arg_1.b))), arg_2.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(767f, -631f, -1384f), vec3<f32>(arg_1.a.c.x, arg_2.d, 1900f), vec3<bool>(arg_0.x, false, arg_0.x)))) + arg_2.c) + var_0.xwy), var_0.x);
    global3 = vec3<i32>(global1.x, 2147483647i << (_wgslsmith_add_u32(~(~var_1.a.x), _wgslsmith_sub_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.x, arg_2.a.x), vec2<u32>(u_input.a, u_input.a)))) % 32u), ~((_wgslsmith_dot_vec3_i32(arg_1.a.b.wzx, global1.zwz) | -1i) << (select(51461u ^ u_input.a, 1u, var_1.d != -1323f) % 32u)));
    var var_2 = arg_1.a;
    return arg_1.a;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<bool>) -> Struct_2 {
    global0 = array<Struct_2, 6>();
    var var_0 = Struct_2(func_2(!select(!vec2<bool>(arg_1.x, false), arg_1, !arg_1), global0[_wgslsmith_index_u32(u_input.a, 6u)], Struct_1(~(vec2<u32>(0u, 18969u) & vec2<u32>(u_input.a, 0u)), min(vec4<i32>(-7666i, global1.x, global1.x, -2147483647i), vec4<i32>(-49117i, 2147483647i, global1.x, 0i)) << (~vec4<u32>(69932u, 49917u, u_input.a, u_input.a) % vec4<u32>(32u)), _wgslsmith_div_vec3_f32(vec3<f32>(405f, 859f, arg_0.x), _wgslsmith_f_op_vec3_f32(-arg_0.xxy)), _wgslsmith_f_op_f32(1193f + -565f)), vec2<u32>(_wgslsmith_mult_u32(~5006u, _wgslsmith_clamp_u32(4294967295u, u_input.a, u_input.a)), 1u)), vec4<u32>(u_input.a, ~(~func_3(arg_0.x).x), ~(~u_input.a), u_input.a), global1.wx);
    global3 = vec3<i32>(global1.x, firstTrailingBit(global3.x), -(var_0.a.b.x << (130628u % 32u)));
    let var_1 = global0[_wgslsmith_index_u32(var_0.a.a.x, 6u)];
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(func_2(!vec2<bool>(true, arg_1.x), global0[_wgslsmith_index_u32(func_3(var_1.a.d).x, 6u)], Struct_1(var_1.b.yw, vec4<i32>(var_1.c.x, global1.x, var_1.a.b.x, var_0.c.x), vec3<f32>(-1255f, -444f, arg_0.x), var_0.a.d), vec2<u32>(var_0.a.a.x, 0u)).c.x, var_0.a.c.x), var_0.a.d));
    return Struct_2(var_1.a, vec4<u32>((u_input.a | u_input.a) ^ var_1.a.a.x, _wgslsmith_mod_u32(1u, ~(~u_input.a)), var_0.b.x, firstTrailingBit(var_0.a.a.x)), ~global1.xz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), !vec2<bool>(true, all(vec2<bool>(true, true))));
    var var_1 = ~(-1i);
    var var_2 = vec2<u32>(firstLeadingBit(var_0.a.a.x), 13712u);
    let var_3 = Struct_1(var_0.a.a, ~(~var_0.a.b), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.a.c.x - 849f)))), _wgslsmith_f_op_f32(func_2(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), func_1(vec4<f32>(-1000f, 231f, var_0.a.d, -1043f), vec2<bool>(false, true)), func_1(vec4<f32>(var_0.a.c.x, -1351f, var_0.a.c.x, 985f), vec2<bool>(false, true)).a, vec2<u32>(26068u, 0u)).d * 1000f), 203f), 1258f);
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-291f, 402f, var_3.d, -1000f)), select(vec2<bool>(false, true), vec2<bool>(false, false), false)).a.c.zy))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_3.c.x, var_3.d)))), var_0.a.c.xz)));
    let var_5 = _wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec2_u32(max(var_3.a, var_0.b.wy), vec2<u32>(select(4294967295u, _wgslsmith_sub_u32(4294967295u, var_3.a.x), any(vec2<bool>(true, true))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.a.x, var_0.b.x), var_3.a))), ~16312u);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.x, var_0.a.b.x);
}

