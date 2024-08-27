struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 1>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<u32>) -> Struct_2 {
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 3844u, 1u, arg_1.x), countOneBits(vec4<u32>(22420u, u_input.d.x, 4294967295u, arg_1.x)) & min(vec4<u32>(arg_1.x, 0u, 49651u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.c, 51967u))), arg_1.x) >> (~(~_wgslsmith_sub_u32(~arg_1.x, ~arg_1.x)) % 32u), 1u)];
    global1 = array<Struct_1, 1>();
    let var_0 = -30618i;
    global1 = array<Struct_1, 1>();
    return Struct_2(Struct_1(var_0), Struct_1(global0.a));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> bool {
    var var_0 = !(!select(vec4<bool>(false, any(vec3<bool>(true, false, true)), true, all(vec2<bool>(true, arg_0))), vec4<bool>(arg_0 | true, arg_0 & false, all(vec2<bool>(true, arg_0)), !arg_0), (u_input.b > arg_1.a) | all(vec3<bool>(true, true, arg_0))));
    let var_1 = u_input.c >= _wgslsmith_mod_u32(u_input.a, u_input.a | u_input.d.x);
    var var_2 = Struct_2(arg_1, Struct_1(-550i));
    let var_3 = global0.a;
    global1 = array<Struct_1, 1>();
    return var_1;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec4<bool>) -> vec3<bool> {
    let var_0 = ~0u;
    let var_1 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2127f, 388f) + vec2<f32>(126f, 1024f)), vec2<f32>(-1000f, -2846f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-612f, 816f), vec2<f32>(-190f, 2184f))))))), vec3<u32>(arg_0.x, ~(var_0 >> (~1u % 32u)), _wgslsmith_add_u32(0u, ~2321u) ^ var_0));
    let var_2 = Struct_2(Struct_1(var_1.b.a), Struct_1(~20438i));
    var var_3 = func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1373f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(222f)) + 263f))), countOneBits(~(u_input.d >> (vec3<u32>(u_input.c, u_input.a, u_input.d.x) % vec3<u32>(32u))) & u_input.d)).b;
    let var_4 = select(vec3<i32>(func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-620f, -851f)), vec2<f32>(-1202f, -321f), arg_3.xw)), vec3<u32>(u_input.d.x, u_input.c, 1u)).a.a, var_1.a.a, firstLeadingBit(-(~(-2254i)))), _wgslsmith_clamp_vec3_i32(-(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, 2147483647i, u_input.b), vec3<i32>(var_2.b.a, -4087i, global0.a))), -vec3<i32>(-51196i, 1362i, reverseBits(1i)), -select(vec3<i32>(-1i, global0.a, 277i), vec3<i32>(var_1.b.a, var_1.a.a, -5101i) | vec3<i32>(arg_2.a, -37794i, var_3.a), vec3<bool>(arg_3.x, arg_3.x, false))), false);
    return !select(!(!(!vec3<bool>(arg_1.x, arg_1.x, false))), !select(arg_1, arg_3.xxz, arg_1), true);
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = arg_0;
    var_0 = func_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -266f), 430f), firstLeadingBit(countOneBits(abs(vec3<u32>(4294967295u, 73544u, u_input.c)))));
    var var_1 = !select(arg_2, func_4(_wgslsmith_clamp_vec2_u32(u_input.d.yy, min(u_input.d.yz, u_input.d.yx), u_input.d.yx | u_input.d.xz), select(arg_2, !vec3<bool>(true, false, arg_2.x), func_3(false, arg_0.a)), Struct_1(_wgslsmith_sub_i32(u_input.b, var_0.a.a)), !select(vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, true, true), arg_2.x)), false || arg_2.x);
    var var_2 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-805f, -454f)))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1012f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(762f - -272f) * -1055f))), vec3<u32>(42864u, ~_wgslsmith_clamp_u32(1u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, u_input.c, u_input.a), vec4<u32>(18397u, 63672u, u_input.c, 24761u))), _wgslsmith_mod_u32(0u, u_input.c))).b;
    let var_3 = Struct_1(u_input.b);
    return func_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1518f))))))), ~reverseBits(u_input.d));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: f32, arg_3: Struct_1) -> Struct_2 {
    global1 = array<Struct_1, 1>();
    var var_0 = func_1(arg_0, abs(~firstTrailingBit(1i)), func_4(_wgslsmith_mod_vec2_u32(abs(vec2<u32>(u_input.c, 43635u)), vec2<u32>(u_input.c, 1u)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_4(u_input.d.xz, vec3<bool>(true, true, true), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(19614u, u_input.d.x, 85u, 58169u), vec4<u32>(22766u, u_input.c, u_input.a, 1u)), 1u)], select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true))).x), global1[_wgslsmith_index_u32(~(67675u << (~u_input.d.x % 32u)), 1u)], select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(false, false, false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), true)), any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), false))))).a;
    global1 = array<Struct_1, 1>();
    var var_1 = vec3<u32>(~32225u, _wgslsmith_sub_u32(44414u, 1u & (_wgslsmith_clamp_u32(4294967295u, 4294967295u, u_input.c) ^ max(u_input.d.x, 94841u))), min(u_input.a, 20872u));
    return Struct_2(Struct_1(-(u_input.b >> (~u_input.d.x % 32u))), Struct_1(~42763i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.x;
    let var_1 = func_5(func_1(Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, _wgslsmith_mod_u32(u_input.a, 4294967295u)), 1u)], global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.d.x, 4294967295u >> (u_input.c % 32u)), 1u)]), 0i << (~min(u_input.d.x, 0u) % 32u), select(vec3<bool>(all(vec4<bool>(false, true, false, false)), true, true), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), ~4294967295u >= (var_0 & var_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1125f, 2545f)))))) + vec2<f32>(_wgslsmith_div_f32(-612f, _wgslsmith_f_op_f32(f32(-1f) * -457f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-608f, -518f))))), -847f, Struct_1(global0.a >> ((_wgslsmith_clamp_u32(4294967295u, u_input.d.x, var_0) & var_0) % 32u)));
    var var_2 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(723f, _wgslsmith_f_op_f32(trunc(175f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-254f, 265f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-140f, -1000f) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(259f, 1823f)))), vec2<f32>(814f, _wgslsmith_f_op_f32(f32(-1f) * -338f)))), vec3<u32>(35839u & u_input.a, _wgslsmith_mod_u32(1u, _wgslsmith_div_u32(4294967295u, u_input.c)) ^ var_0, countOneBits(2947u)));
    var_2 = Struct_2(Struct_1(-2147483647i), func_2(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-221f, -692f), _wgslsmith_f_op_f32(min(-448f, -1000f)))), _wgslsmith_f_op_f32(ceil(215f))), ~u_input.d).a);
    let var_3 = func_5(func_1(Struct_2(func_5(Struct_2(var_1.b, Struct_1(1i)), vec2<f32>(1392f, -286f), _wgslsmith_f_op_f32(f32(-1f) * -568f), Struct_1(u_input.b)).a, Struct_1(_wgslsmith_add_i32(56116i, global0.a))), ~var_2.a.a, vec3<bool>(true, true, true)), vec2<f32>(_wgslsmith_f_op_f32(floor(-1730f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1713f + -843f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(930f, 1102f)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -942f)), _wgslsmith_f_op_f32(floor(-1000f)), true)), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(419f)) - _wgslsmith_f_op_f32(ceil(188f))))), var_3.a.a);
}

