struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: u32,
}

struct Struct_4 {
    a: bool,
    b: vec4<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(vec3<u32>(41077u, 0u, 0u), vec4<f32>(1212f, 203f, 106f, -1083f)), Struct_2(vec3<u32>(0u, 0u, 4294967295u), vec4<f32>(-283f, -1653f, 1071f, -1002f)), Struct_2(vec3<u32>(64811u, 1u, 30683u), vec4<f32>(1477f, -689f, 417f, 122f)), Struct_2(vec3<u32>(6686u, 15980u, 27953u), vec4<f32>(-1536f, 416f, -550f, 497f)), Struct_2(vec3<u32>(55810u, 4294967295u, 24638u), vec4<f32>(-329f, 688f, 1125f, 2461f)), Struct_2(vec3<u32>(1u, 0u, 4294967295u), vec4<f32>(-2189f, -152f, -244f, -1000f)), Struct_2(vec3<u32>(10607u, 0u, 4294967295u), vec4<f32>(1611f, 397f, -925f, -1808f)), Struct_2(vec3<u32>(22961u, 78797u, 1u), vec4<f32>(-919f, -1369f, -1542f, -262f)), Struct_2(vec3<u32>(33966u, 1u, 4294967295u), vec4<f32>(-139f, 621f, -265f, 445f)), Struct_2(vec3<u32>(12484u, 19032u, 4294967295u), vec4<f32>(-986f, -937f, 489f, 1000f)), Struct_2(vec3<u32>(30328u, 31082u, 54404u), vec4<f32>(942f, 1795f, 862f, 624f)), Struct_2(vec3<u32>(1u, 4294967295u, 4294967295u), vec4<f32>(113f, 1092f, -1315f, 1127f)), Struct_2(vec3<u32>(4294967295u, 3159u, 71402u), vec4<f32>(-1645f, -1252f, -1432f, 639f)), Struct_2(vec3<u32>(37702u, 1u, 9051u), vec4<f32>(-1389f, -254f, -659f, 1155f)), Struct_2(vec3<u32>(4294967295u, 64926u, 4294967295u), vec4<f32>(407f, 1391f, 164f, 1000f)), Struct_2(vec3<u32>(8210u, 4294967295u, 26753u), vec4<f32>(-458f, -1511f, 101f, -603f)), Struct_2(vec3<u32>(4294967295u, 0u, 4294967295u), vec4<f32>(-2184f, 157f, -1000f, -429f)), Struct_2(vec3<u32>(0u, 0u, 2126u), vec4<f32>(804f, -444f, -304f, -348f)), Struct_2(vec3<u32>(4294967295u, 74105u, 1u), vec4<f32>(-259f, 407f, -575f, -1249f)), Struct_2(vec3<u32>(4294967295u, 11005u, 66235u), vec4<f32>(-795f, 2099f, -205f, -166f)), Struct_2(vec3<u32>(4294967295u, 70326u, 13622u), vec4<f32>(492f, 1436f, -228f, 536f)), Struct_2(vec3<u32>(4103u, 54130u, 2912u), vec4<f32>(1098f, 1117f, -596f, -1182f)), Struct_2(vec3<u32>(79890u, 0u, 0u), vec4<f32>(-774f, 1365f, -315f, 1015f)), Struct_2(vec3<u32>(14093u, 0u, 0u), vec4<f32>(-2538f, 112f, 1086f, -1532f)), Struct_2(vec3<u32>(11750u, 1u, 10776u), vec4<f32>(-1312f, -239f, -622f, 995f)), Struct_2(vec3<u32>(22407u, 63398u, 38562u), vec4<f32>(556f, 728f, -1000f, 230f)), Struct_2(vec3<u32>(28900u, 48486u, 7579u), vec4<f32>(821f, -1579f, -1000f, 1301f)), Struct_2(vec3<u32>(4294967295u, 23438u, 1u), vec4<f32>(-1502f, -1006f, 737f, 1788f)), Struct_2(vec3<u32>(41147u, 4294967295u, 1u), vec4<f32>(1000f, -748f, -2418f, 114f)), Struct_2(vec3<u32>(4294967295u, 4294967295u, 40509u), vec4<f32>(-1804f, 308f, 438f, -385f)));

var<private> global2: array<vec3<i32>, 20> = array<vec3<i32>, 20>(vec3<i32>(-43824i, -1i, 40239i), vec3<i32>(2147483647i, -2534i, 2147483647i), vec3<i32>(2147483647i, i32(-2147483648), -63374i), vec3<i32>(38791i, -27495i, 11024i), vec3<i32>(101621i, 1i, 40986i), vec3<i32>(31988i, 1i, 8724i), vec3<i32>(-12235i, 1i, 0i), vec3<i32>(-7897i, -33484i, 5841i), vec3<i32>(13365i, -547i, -42940i), vec3<i32>(-59781i, i32(-2147483648), 16053i), vec3<i32>(1i, -23977i, 0i), vec3<i32>(2147483647i, -40390i, 2147483647i), vec3<i32>(i32(-2147483648), 15052i, 0i), vec3<i32>(i32(-2147483648), -63183i, 1i), vec3<i32>(2147483647i, 0i, -44230i), vec3<i32>(1i, i32(-2147483648), -4212i), vec3<i32>(-54839i, 2147483647i, -13294i), vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 0i, -33397i), vec3<i32>(1i, -35189i, 18094i));

var<private> global3: array<vec3<u32>, 14>;

var<private> global4: i32 = -41353i;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: i32, arg_1: vec2<bool>) -> f32 {
    let var_0 = 104753i;
    var var_1 = !arg_1;
    global2 = array<vec3<i32>, 20>();
    global2 = array<vec3<i32>, 20>();
    return _wgslsmith_f_op_f32(abs(1292f));
}

fn func_3() -> f32 {
    global2 = array<vec3<i32>, 20>();
    global3 = array<vec3<u32>, 14>();
    let var_0 = Struct_3(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(-2147483647i, vec2<bool>(true, false))), _wgslsmith_f_op_f32(min(global0.b, global0.a))), global0.a), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(firstTrailingBit(_wgslsmith_clamp_u32(1u, 1u, abs(4969u))), 18374u >> (_wgslsmith_div_u32(43751u, firstTrailingBit(1u)) % 32u)), 30u)], ~9749u, ~(~_wgslsmith_mod_u32(7347u, ~28654u)));
    global4 = reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-2803i, _wgslsmith_sub_i32(u_input.b.x, _wgslsmith_clamp_i32(u_input.b.x, -2147483647i, -11304i))), vec2<i32>(13982i, 2147483647i)));
    global4 = 3304i;
    return var_0.a.a;
}

fn func_2(arg_0: i32) -> vec4<bool> {
    var var_0 = true;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-424f)))))))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1143f * _wgslsmith_f_op_f32(exp2(global0.b))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.b, 1092f)) - _wgslsmith_f_op_f32(var_1.a - var_1.b)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-4070i, 0i, arg_0, -22387i) | vec4<i32>(559i, u_input.b.x, arg_0, u_input.a), vec4<i32>(u_input.c, u_input.c, arg_0, -2147483647i)), vec2<bool>(true, true))))));
    var var_3 = true;
    let var_4 = vec3<i32>(i32(-1i) * -(~arg_0), _wgslsmith_add_i32(_wgslsmith_mult_i32(abs(u_input.d.x), select(u_input.b.x << (1u % 32u), reverseBits(arg_0), true)), reverseBits(reverseBits(_wgslsmith_clamp_i32(-16659i, 35898i, 0i)))), select(arg_0, arg_0, false));
    return select(!vec4<bool>(false, true, _wgslsmith_f_op_f32(sign(887f)) > 1778f, all(vec2<bool>(false, false))), select(select(vec4<bool>(select(false, false, false), true, any(vec4<bool>(false, true, true, true)), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec2<bool>(false, true)), true, all(vec3<bool>(false, true, true)), true)), !vec4<bool>(all(vec4<bool>(true, true, true, true)), false, true, false), !(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), false))), !any(vec3<bool>(true, false, true)));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: vec4<bool>, arg_3: Struct_1) -> f32 {
    global2 = array<vec3<i32>, 20>();
    var var_0 = _wgslsmith_f_op_vec3_f32(arg_0 * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1644f, _wgslsmith_f_op_f32(1084f + global0.b), _wgslsmith_f_op_f32(arg_0.x - -2066f)) + vec3<f32>(_wgslsmith_f_op_f32(step(-229f, arg_0.x)), _wgslsmith_div_f32(-287f, arg_3.b), arg_0.x)))));
    let var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, arg_1.x), vec2<u32>(max(_wgslsmith_sub_u32(_wgslsmith_mult_u32(28481u, arg_1.x), arg_1.x), arg_1.x), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(16169u, arg_1.x, arg_1.x)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(27727u, arg_1.x, arg_1.x), ~vec3<u32>(4598u, arg_1.x, arg_1.x), global3[_wgslsmith_index_u32(arg_1.x, 14u)] | global3[_wgslsmith_index_u32(arg_1.x, 14u)]))));
    let var_2 = arg_3;
    let var_3 = vec2<bool>(false, arg_2.x);
    return 142f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(-global0.b)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f)))) + _wgslsmith_f_op_f32(func_1(-u_input.d.x, vec2<bool>(true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.b, global0.b, 2146f), vec3<f32>(1227f, global0.a, global0.b))), vec2<u32>(18923u, 108522u), func_2(u_input.a), Struct_1(global0.b, 1000f)))) * _wgslsmith_div_f32(global0.a, global0.a))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-126f + _wgslsmith_f_op_f32(round(569f))), _wgslsmith_f_op_f32(-715f - global0.a)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, 954f) * vec2<f32>(global0.a, global0.b)))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1677f, 1000f) - vec2<f32>(1220f, 641f)), _wgslsmith_div_vec2_f32(vec2<f32>(global0.b, global0.b), vec2<f32>(-1000f, global0.a)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, global0.a))))))));
    var_0 = -254f;
    var var_2 = countOneBits(i32(-1i) * -14319i);
    global1 = array<Struct_2, 30>();
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(func_3()))) * -496f), _wgslsmith_div_f32(549f, _wgslsmith_f_op_f32(global0.b + 933f)));
    var var_3 = global1[_wgslsmith_index_u32(~select(1u, ~(~_wgslsmith_sub_u32(66484u, 3271u)), false), 30u)];
    var_3 = global1[_wgslsmith_index_u32(var_3.a.x, 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(-(~u_input.a));
}

