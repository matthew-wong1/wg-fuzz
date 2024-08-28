struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec4<bool>,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
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

var<private> global0: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(false, 0i, vec4<bool>(true, true, true, true), vec4<i32>(-23078i, -31572i, 32157i, -12166i), Struct_1(vec3<i32>(92433i, -1i, 0i), vec2<f32>(873f, -1000f), true, -625f)), Struct_3(false, 32i, vec4<bool>(true, true, true, true), vec4<i32>(-11537i, -1i, 35515i, i32(-2147483648)), Struct_1(vec3<i32>(47023i, -1i, 0i), vec2<f32>(-1000f, -794f), true, 656f)), Struct_3(false, -21705i, vec4<bool>(false, true, false, true), vec4<i32>(42968i, 27696i, 0i, 5155i), Struct_1(vec3<i32>(2147483647i, 1i, 10212i), vec2<f32>(-631f, 910f), true, 1567f)), Struct_3(false, 2147483647i, vec4<bool>(false, true, false, false), vec4<i32>(2147483647i, 13766i, 0i, 1i), Struct_1(vec3<i32>(2147483647i, 0i, 11606i), vec2<f32>(-1528f, 1065f), true, 903f)), Struct_3(true, -29598i, vec4<bool>(false, true, true, false), vec4<i32>(-1i, 1i, 38067i, 0i), Struct_1(vec3<i32>(-19185i, -53361i, 4221i), vec2<f32>(1316f, -623f), true, -403f)), Struct_3(true, 2147483647i, vec4<bool>(false, false, false, false), vec4<i32>(-1i, -26348i, -13453i, 0i), Struct_1(vec3<i32>(1i, 9298i, 2147483647i), vec2<f32>(-271f, -910f), false, -1752f)), Struct_3(false, 1i, vec4<bool>(true, false, false, false), vec4<i32>(18300i, i32(-2147483648), 24814i, -1i), Struct_1(vec3<i32>(2147483647i, -20888i, i32(-2147483648)), vec2<f32>(1418f, 842f), false, 379f)), Struct_3(true, -26808i, vec4<bool>(false, false, true, true), vec4<i32>(-28122i, 0i, -1i, i32(-2147483648)), Struct_1(vec3<i32>(37746i, 33976i, 9930i), vec2<f32>(1764f, 266f), true, -451f)), Struct_3(true, -1i, vec4<bool>(true, true, true, false), vec4<i32>(-1i, -47232i, -616i, 0i), Struct_1(vec3<i32>(27275i, 1i, 8507i), vec2<f32>(-233f, -623f), true, -1652f)), Struct_3(true, i32(-2147483648), vec4<bool>(false, true, true, true), vec4<i32>(-1i, -56589i, 18746i, 16094i), Struct_1(vec3<i32>(0i, -51596i, 19316i), vec2<f32>(-849f, 1007f), true, -258f)), Struct_3(true, -58i, vec4<bool>(false, false, true, true), vec4<i32>(i32(-2147483648), 0i, -21755i, -21170i), Struct_1(vec3<i32>(-1i, 0i, -56209i), vec2<f32>(232f, -662f), false, -716f)), Struct_3(true, -1i, vec4<bool>(false, false, false, true), vec4<i32>(59809i, -7674i, -4171i, 0i), Struct_1(vec3<i32>(1i, 34950i, 0i), vec2<f32>(816f, -1972f), false, 781f)));

var<private> global1: array<u32, 25>;

var<private> global2: Struct_1 = Struct_1(vec3<i32>(-23545i, 12993i, 2147483647i), vec2<f32>(-504f, -229f), false, 767f);

var<private> global3: vec2<u32>;

var<private> global4: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_4) -> vec4<i32> {
    let var_0 = global0[_wgslsmith_index_u32(1u, 12u)];
    let var_1 = var_0.e;
    var var_2 = var_0.c.zyz;
    var var_3 = arg_1;
    var var_4 = arg_2.a;
    return arg_2.c;
}

fn func_1() -> vec2<bool> {
    var var_0 = Struct_2(global2.b, Struct_1(reverseBits(global4.a), vec2<f32>(361f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-738f, global4.d))), true, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1643f)))))), ~0u);
    global1 = array<u32, 25>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global4.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -235f) + global2.b.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global4.d))), global4.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.d, global2.b.x, 870f, global4.b.x))))));
    let var_2 = ~vec3<i32>(~(-1i & min(u_input.a.x, global2.a.x)), min(global2.a.x ^ -u_input.a.x, -1i), var_0.b.a.x);
    let var_3 = Struct_3(!(!(-23884i == -global2.a.x)), ~abs(~u_input.a.x), !select(vec4<bool>(true, !var_0.b.c, false, global4.c), vec4<bool>(1u < global1[_wgslsmith_index_u32(global3.x, 25u)], false, true, select(var_0.b.c, global2.c, global2.c)), vec4<bool>(all(vec4<bool>(global4.c, global4.c, false, false)), global2.c, !global4.c, any(vec2<bool>(false, global2.c)))), vec4<i32>(2147483647i, _wgslsmith_dot_vec4_i32(func_2(_wgslsmith_mult_vec2_u32(u_input.b.yz, u_input.d.yw), -u_input.a.x, Struct_4(Struct_2(vec2<f32>(-209f, 1099f), Struct_1(var_2, global4.b, global2.c, 112f), 0u), var_0.c, vec4<i32>(0i, -19570i, global2.a.x, 0i), u_input.d)), vec4<i32>(~(-1i), -u_input.a.x, _wgslsmith_clamp_i32(var_0.b.a.x, var_2.x, u_input.a.x), ~(-48435i))), 0i, u_input.a.x), var_0.b);
    return !var_3.c.xy;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: i32, arg_3: vec3<i32>) -> u32 {
    var var_0 = vec4<bool>(true, all(select(func_1(), vec2<bool>(arg_1.x, true), true)), !global4.c | !all(select(vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), vec4<bool>(global2.c, true, true, arg_1.x), global2.c)), false);
    var var_1 = -575f;
    let var_2 = Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(select(global4.b, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(903f, global2.d), vec2<f32>(global2.b.x, global4.d), !vec2<bool>(true, global2.c))), !vec2<bool>(true, var_0.x))), Struct_1(-vec3<i32>(u_input.a.x, -1i, 1i), vec2<f32>(_wgslsmith_f_op_f32(select(global4.d, global4.b.x, global2.c)), -173f), any(var_0.ywy), 287f), ~global1[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(~0u, 25u)]), 25u)]), _wgslsmith_dot_vec4_u32(((vec4<u32>(4294967295u, 14492u, 1u, arg_0.x) & u_input.d) | ~vec4<u32>(38512u, global1[_wgslsmith_index_u32(global3.x, 25u)], 21871u, global3.x)) ^ ~(~u_input.d), firstLeadingBit(~vec4<u32>(global3.x, 33798u, global3.x, 5748u))), ~select(-(vec4<i32>(arg_2, -2147483647i, arg_3.x, 23839i) | vec4<i32>(u_input.a.x, 1i, u_input.a.x, 7451i)), ~vec4<i32>(u_input.a.x, arg_2, 0i, global2.a.x), all(vec2<bool>(global2.c, true))), u_input.d & u_input.d);
    var var_3 = vec3<bool>(!all(vec3<bool>(true, true, false)) && !(!all(vec4<bool>(false, arg_1.x, arg_1.x, global4.c))), var_0.x, true);
    var var_4 = ~(~4294967295u);
    return 4294967295u;
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: vec2<f32>) -> vec2<u32> {
    global1 = array<u32, 25>();
    let var_0 = vec4<bool>(false, all(select(select(vec3<bool>(global4.c, global4.c, false), !vec3<bool>(true, false, global4.c), 0i <= global4.a.x), select(!vec3<bool>(global2.c, true, global4.c), vec3<bool>(true, true, true), select(vec3<bool>(global4.c, false, false), vec3<bool>(false, false, false), false)), false)), true, global2.c);
    global1 = array<u32, 25>();
    let var_1 = Struct_2(arg_2, Struct_1(global4.a, global4.b, any(var_0.xzw), _wgslsmith_f_op_f32(floor(global4.d))), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(max(52751u, reverseBits(21549u)), 31193u, ~1u), abs(~arg_1)));
    var var_2 = vec2<bool>(global4.c, func_1().x);
    return vec2<u32>(_wgslsmith_clamp_u32(~_wgslsmith_mult_u32(4294967295u, u_input.c), ~(~var_1.c), 4294967295u), _wgslsmith_div_u32(~(~78300u), global3.x));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_div_vec2_u32(func_4(~_wgslsmith_mod_vec2_i32(vec2<i32>(global2.a.x, 0i) ^ vec2<i32>(global2.a.x, u_input.a.x), _wgslsmith_mod_vec2_i32(vec2<i32>(20112i, -47743i), vec2<i32>(1i, -27334i))), func_3(u_input.d, !func_1(), u_input.a.x, countOneBits(global4.a)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.d))), 1371f)), vec2<u32>(u_input.c, 1u & global1[_wgslsmith_index_u32(abs(1u), 25u)]));
    var var_0 = _wgslsmith_clamp_u32(reverseBits(_wgslsmith_div_u32(func_3(vec4<u32>(0u, u_input.c, 0u, u_input.b.x), vec2<bool>(false, global2.c), global2.a.x, global2.a), global3.x) & min(global1[_wgslsmith_index_u32(13068u, 25u)], 0u)), min(95971u, ~(~global1[_wgslsmith_index_u32(35263u, 25u)])), _wgslsmith_div_u32(global3.x, max(func_3(_wgslsmith_div_vec4_u32(u_input.d, vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 25u)], 8302u, 3894u, 0u)), !vec2<bool>(false, global4.c), select(84048i, 2147483647i, global4.c), global2.a), max(4294967295u, global1[_wgslsmith_index_u32(u_input.b.x, 25u)] & global1[_wgslsmith_index_u32(4294967295u, 25u)]))));
    global1 = array<u32, 25>();
    global2 = Struct_1(global2.a, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global4.d))), 1756f))), (all(!vec3<bool>(true, global2.c, true)) || global2.c) | !(!func_1().x), _wgslsmith_f_op_f32(-382f + _wgslsmith_f_op_f32(floor(1000f))));
    let var_1 = ~max(~firstLeadingBit(u_input.a.x & u_input.a.x), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(var_1);
}

