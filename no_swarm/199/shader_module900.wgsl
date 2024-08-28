struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22> = array<i32, 22>(56583i, 20935i, -37926i, -30692i, 0i, 1i, 9108i, 24039i, -40548i, 12465i, -25871i, -111817i, -1i, i32(-2147483648), 2147483647i, 2147483647i, i32(-2147483648), -62716i, i32(-2147483648), 1i, 16131i, -1i);

var<private> global1: vec4<u32>;

var<private> global2: array<Struct_1, 21>;

var<private> global3: array<Struct_1, 13>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: i32, arg_3: bool) -> i32 {
    global1 = vec4<u32>(max(4294967295u, 43401u), 5276u, countOneBits(max(104988u, _wgslsmith_dot_vec2_u32(vec2<u32>(7539u, global1.x), vec2<u32>(u_input.a.x, u_input.a.x))) >> (reverseBits(~u_input.a.x) % 32u)), abs(~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(global1.wzx, vec3<u32>(28559u, 10087u, global1.x), vec3<u32>(global1.x, u_input.a.x, 1u)), max(global1.wzx, vec3<u32>(1u, u_input.a.x, 95553u)))));
    let var_0 = -(arg_2 >> ((~4294967295u & max(global1.x, u_input.a.x << (20462u % 32u))) % 32u));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b));
    global1 = u_input.a;
    var_1 = vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-661f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(arg_1)), _wgslsmith_f_op_f32(393f - 1000f)))), var_1.x)), arg_0.a);
    return 50513i;
}

fn func_2(arg_0: vec4<i32>, arg_1: bool, arg_2: u32) -> bool {
    var var_0 = false;
    var_0 = arg_1;
    var_0 = true;
    let var_1 = true;
    var_0 = arg_1;
    return all(!vec3<bool>(all(!vec3<bool>(false, true, arg_1)), all(vec4<bool>(arg_1, var_1, false, true)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -46888i), vec2<i32>(global0[_wgslsmith_index_u32(arg_2, 22u)], -1i)) == func_3(global3[_wgslsmith_index_u32(global1.x, 13u)], -2421f, 2147483647i, false)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(745f, _wgslsmith_f_op_f32(exp2(arg_1.x))), vec2<f32>(1350f, arg_0.b.x), select(global1.x >= 0u, func_2(vec4<i32>(0i, arg_0.c.x, -9483i, arg_0.c.x), true, 1u), true)))), vec2<f32>(arg_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1197f, arg_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2478f + -1072f))))));
    global1 = vec4<u32>(0u >> (u_input.a.x % 32u), _wgslsmith_div_u32((global1.x | global1.x) | reverseBits(1u), u_input.a.x), 1u, 1u) << (u_input.a % vec4<u32>(32u));
    global2 = array<Struct_1, 21>();
    let var_1 = select(!select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), true), true), !vec4<bool>(select(true, true, all(vec2<bool>(true, false))), (var_0.x <= var_0.x) | all(vec3<bool>(false, false, true)), false, true), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false)), vec4<bool>(false, true, true, true), true), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), true)));
    global2 = array<Struct_1, 21>();
    return func_2(reverseBits(vec4<i32>(arg_0.c.x, global0[_wgslsmith_index_u32(~0u, 22u)] << (firstTrailingBit(global1.x) % 32u), ~(-49860i), _wgslsmith_div_i32(~arg_0.c.x, global0[_wgslsmith_index_u32(~u_input.a.x, 22u)]))), var_1.x, ~(~u_input.a.x));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = -178f;
    global3 = array<Struct_1, 13>();
    var var_1 = _wgslsmith_div_u32(0u, 5980u);
    let var_2 = _wgslsmith_mult_i32(~1i, i32(-1i) * -(global0[_wgslsmith_index_u32(~0u, 22u)] | (1i << (u_input.a.x % 32u))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_1.b.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_1.a, arg_1.a), var_0, false))) + _wgslsmith_div_f32(-1227f, arg_1.a)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.b) + arg_1.b) + arg_1.b))), _wgslsmith_add_vec2_i32(arg_1.c << ((u_input.a.zx << (max(global1.yz, vec2<u32>(global1.x, 0u)) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(abs(arg_1.c.x), _wgslsmith_mult_i32(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(global1.x, 22u)], arg_1.c.x), firstLeadingBit(2147483647i)))));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(round(-1000f)), func_4(1941f, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1137f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, -1950f, 206f, arg_2.b.x) * _wgslsmith_f_op_vec4_f32(abs(arg_1.b))), ~(~vec2<i32>(-1i, arg_1.c.x))), !vec4<bool>(true, true, true, arg_1.c.x <= -16019i)).b.x, arg_1.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(1000f + arg_1.b.x)))))));
    var_0 = arg_1.b;
    let var_1 = false;
    var var_2 = any(vec2<bool>((~51808u == global1.x) && true, true));
    global2 = array<Struct_1, 21>();
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) + 706f)), arg_1.b, vec2<i32>(min(countOneBits(global0[_wgslsmith_index_u32(global1.x, 22u)]), abs(arg_1.c.x)) >> (~reverseBits(17380u) % 32u), -(arg_2.c.x | (i32(-1i) * -2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~4294967295u, func_4(_wgslsmith_f_op_f32(f32(-1f) * -245f), global3[_wgslsmith_index_u32(global1.x, 13u)], vec4<bool>(false, func_1(Struct_1(513f, vec4<f32>(-769f, -1229f, -416f, 268f), vec2<i32>(-2147483647i, -1i)), vec3<f32>(-1342f, 1293f, 1477f)) || (u_input.a.x <= 6733u), true, all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))))), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(523f + 2219f)), _wgslsmith_div_f32(func_4(-1000f, Struct_1(-226f, vec4<f32>(-553f, -165f, -477f, -1264f), vec2<i32>(global0[_wgslsmith_index_u32(29633u, 22u)], global0[_wgslsmith_index_u32(u_input.a.x, 22u)])), vec4<bool>(true, false, false, true)).a, 1f), 1646f, 1529f), -(~vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(34112u, 22u)]))));
    var var_1 = ~global0[_wgslsmith_index_u32(max(min(~4294967295u, u_input.a.x | max(58657u, global1.x)), min(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), _wgslsmith_div_u32(min(0u, u_input.a.x), min(46014u, u_input.a.x)))), 22u)];
    var var_2 = !(!vec3<bool>(true, func_2(vec4<i32>(-52093i, -56240i, -1i, 1i) << (u_input.a % vec4<u32>(32u)), 1u < u_input.a.x, ~global1.x), any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), false))));
    let var_3 = abs(_wgslsmith_mult_vec2_i32(var_0.c, countOneBits(-firstTrailingBit(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 22u)], 0i)))));
    let var_4 = global0[_wgslsmith_index_u32(~u_input.a.x, 22u)];
    let var_5 = ~(-_wgslsmith_sub_i32(func_3(Struct_1(var_0.b.x, vec4<f32>(-537f, 1862f, var_0.b.x, -1449f), vec2<i32>(var_0.c.x, var_0.c.x)), 1247f, global0[_wgslsmith_index_u32(0u, 22u)], var_2.x) ^ ~2147483647i, var_0.c.x));
    global3 = array<Struct_1, 13>();
    global3 = array<Struct_1, 13>();
    let var_6 = select(vec4<bool>(true, var_2.x, func_1(func_4(var_0.b.x, global2[_wgslsmith_index_u32(max(global1.x, 19882u), 21u)], vec4<bool>(false, var_2.x, false, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_0.b.x, 671f)) - var_0.b.wyz)), false), !(!select(select(vec4<bool>(false, var_2.x, true, true), vec4<bool>(var_2.x, false, var_2.x, var_2.x), true), vec4<bool>(true, false, false, var_2.x), select(vec4<bool>(true, true, var_2.x, true), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), false))), !(!vec4<bool>(var_2.x, var_2.x, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(1739i, func_4(-112f, global3[_wgslsmith_index_u32(~1u, 13u)], !(!var_6)).c.x, -1i), u_input.a.x, _wgslsmith_div_u32(21604u, firstLeadingBit(~(8507u | global1.x))), _wgslsmith_add_i32(35341i, _wgslsmith_mult_i32(-1i, 2147483647i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1015f * _wgslsmith_f_op_f32(max(var_0.a, var_0.a))), _wgslsmith_div_f32(-800f, -366f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1914f)), _wgslsmith_f_op_f32(abs(var_0.a)))) - vec3<f32>(_wgslsmith_f_op_f32(round(-1886f)), _wgslsmith_f_op_f32(var_0.b.x * -517f), _wgslsmith_f_op_f32(-773f * var_0.a))));
}

