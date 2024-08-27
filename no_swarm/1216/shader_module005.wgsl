struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<i32, 20>;

var<private> global2: array<f32, 21> = array<f32, 21>(274f, 200f, -544f, 792f, -2283f, -1061f, -946f, -970f, 1397f, 965f, 610f, 308f, 379f, -1073f, -919f, 2492f, 1408f, 876f, 130f, -459f, -122f);

var<private> global3: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(4294967295u, 1i, vec4<u32>(2027u, 72336u, 47000u, 12583u)), Struct_1(1u, 1i, vec4<u32>(4294967295u, 0u, 8790u, 60260u)), Struct_1(1u, 15436i, vec4<u32>(1u, 1u, 1u, 13201u)), Struct_1(0u, 40147i, vec4<u32>(15881u, 103876u, 14221u, 0u)), Struct_1(5739u, 1i, vec4<u32>(0u, 28668u, 28210u, 4294967295u)), Struct_1(1u, 233i, vec4<u32>(71527u, 101470u, 1u, 0u)), Struct_1(21915u, 41821i, vec4<u32>(60921u, 0u, 20375u, 0u)), Struct_1(28249u, 2147483647i, vec4<u32>(0u, 78782u, 8157u, 35392u)), Struct_1(0u, 18025i, vec4<u32>(4294967295u, 4294967295u, 19061u, 4294967295u)), Struct_1(106128u, -832i, vec4<u32>(0u, 31226u, 23948u, 4294967295u)), Struct_1(15058u, 0i, vec4<u32>(1u, 0u, 4294967295u, 0u)), Struct_1(4294967295u, -15901i, vec4<u32>(4294967295u, 4294967295u, 0u, 1u)), Struct_1(47953u, -1i, vec4<u32>(2184u, 1u, 6226u, 0u)), Struct_1(4294967295u, 14831i, vec4<u32>(12712u, 47972u, 0u, 1u)), Struct_1(32225u, 0i, vec4<u32>(22684u, 0u, 4294967295u, 1u)), Struct_1(1u, 29593i, vec4<u32>(27509u, 4294967295u, 4294967295u, 70391u)), Struct_1(0u, i32(-2147483648), vec4<u32>(11456u, 61858u, 64421u, 9009u)), Struct_1(1u, 42257i, vec4<u32>(40026u, 1u, 0u, 4294967295u)), Struct_1(549u, -1i, vec4<u32>(21746u, 1u, 54183u, 10109u)), Struct_1(1654u, -1i, vec4<u32>(73415u, 11454u, 4294967295u, 23432u)), Struct_1(43392u, 0i, vec4<u32>(28505u, 0u, 43146u, 1u)), Struct_1(10409u, -18702i, vec4<u32>(0u, 245u, 0u, 26749u)), Struct_1(40185u, 15326i, vec4<u32>(37510u, 48795u, 4294967295u, 1u)), Struct_1(24433u, i32(-2147483648), vec4<u32>(0u, 1u, 48763u, 0u)), Struct_1(0u, 0i, vec4<u32>(0u, 1u, 19911u, 0u)), Struct_1(83545u, 0i, vec4<u32>(4294967295u, 6192u, 71058u, 1u)), Struct_1(4294967295u, -1i, vec4<u32>(12541u, 1u, 4294967295u, 0u)), Struct_1(1u, -1i, vec4<u32>(1u, 4372u, 4294967295u, 0u)), Struct_1(4294967295u, 1i, vec4<u32>(1u, 4294967295u, 51785u, 16195u)), Struct_1(70363u, -8347i, vec4<u32>(14378u, 12954u, 46998u, 17294u)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: u32) -> vec2<bool> {
    let var_0 = 209f;
    global2 = array<f32, 21>();
    global2 = array<f32, 21>();
    let var_1 = !vec4<bool>(true, !any(vec2<bool>(true, true)), !select(true, false, any(vec3<bool>(true, false, false))), global2[_wgslsmith_index_u32(1u, 21u)] > _wgslsmith_f_op_f32(-3105f + _wgslsmith_f_op_f32(min(-1071f, -667f))));
    var var_2 = _wgslsmith_mult_vec3_i32(u_input.d.yxx, abs(countOneBits(u_input.d.yyz) & ~vec3<i32>(-1i, 5153i, global1[_wgslsmith_index_u32(4294967295u, 20u)])) | max(~vec3<i32>(arg_0, -1i, arg_0), u_input.a));
    return var_1.ww;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_4) -> vec3<i32> {
    global1 = array<i32, 20>();
    let var_0 = vec3<f32>(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, reverseBits(u_input.e)), 21u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(arg_1.d.x, 21u)], 990f)))) * -179f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.e, 21u)]) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(u_input.e, 21u)]))))));
    var var_1 = max(~arg_1.b.x, 1i);
    global1 = array<i32, 20>();
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~3845u, 0u), 21u)]))));
    return _wgslsmith_add_vec3_i32(arg_1.b.wwx, vec3<i32>(abs(max(global1[_wgslsmith_index_u32(arg_1.c.x, 20u)], 17866i)), ~2147483647i, ~_wgslsmith_add_i32(_wgslsmith_mult_i32(0i, 1i), 12632i)));
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: vec2<f32>) -> Struct_4 {
    var var_0 = func_4(!select(vec2<bool>(true, 2147483647i > global1[_wgslsmith_index_u32(u_input.e, 20u)]), func_3(~u_input.d.x, ~1u), vec2<bool>(1u <= arg_1.x, true)), Struct_4(false, u_input.d, arg_1, max(vec4<u32>(18032u, u_input.e, arg_1.x ^ 1u, arg_1.x), vec4<u32>(_wgslsmith_sub_u32(4294967295u, arg_1.x), u_input.e, _wgslsmith_clamp_u32(u_input.e, arg_1.x, 0u), arg_1.x))));
    global3 = array<Struct_1, 30>();
    global2 = array<f32, 21>();
    return Struct_4((0u <= _wgslsmith_clamp_u32(23872u, ~48035u, ~76852u)) | ((false && all(vec4<bool>(true, false, false, false))) & all(vec3<bool>(true, true, true))), _wgslsmith_div_vec4_i32(~(-u_input.d), _wgslsmith_clamp_vec4_i32(reverseBits(-vec4<i32>(var_0.x, -24209i, 3705i, u_input.b)), vec4<i32>(abs(-2147483647i), u_input.b, _wgslsmith_clamp_i32(-1i, -1i, global1[_wgslsmith_index_u32(4294967295u, 20u)]), _wgslsmith_dot_vec2_i32(u_input.d.yx, u_input.a.zy)), u_input.d)), vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(34679u, 4294967295u, u_input.e, arg_1.x), arg_1 & arg_1), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.e, arg_1.x, arg_1.x, u_input.e), firstLeadingBit(vec4<u32>(u_input.e, 78593u, 10250u, u_input.e)))), _wgslsmith_mod_u32(arg_1.x, u_input.e), 1u, 635u), ~(vec4<u32>(reverseBits(u_input.e), max(1u, arg_1.x), _wgslsmith_mult_u32(0u, arg_1.x), u_input.e) >> (~vec4<u32>(u_input.e, 1u, 4294967295u, arg_1.x) % vec4<u32>(32u))));
}

fn func_5(arg_0: Struct_4) -> vec2<bool> {
    let var_0 = global3[_wgslsmith_index_u32(~3272u, 30u)];
    global2 = array<f32, 21>();
    let var_1 = Struct_2(global3[_wgslsmith_index_u32(u_input.e << (arg_0.d.x % 32u), 30u)], ~arg_0.d.x);
    global1 = array<i32, 20>();
    var var_2 = vec3<i32>(-2147483647i, var_0.b, var_0.b);
    return !vec2<bool>(_wgslsmith_mod_u32(37999u, 4294967295u) < u_input.e, !any(select(vec4<bool>(arg_0.a, arg_0.a, true, false), vec4<bool>(false, true, false, arg_0.a), arg_0.a)));
}

fn func_1(arg_0: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 21u)], -467f), vec2<f32>(global2[_wgslsmith_index_u32(33189u, 21u)], 1574f)))))));
    global2 = array<f32, 21>();
    var var_1 = vec3<i32>(u_input.d.x, global1[_wgslsmith_index_u32(u_input.e, 20u)], u_input.c.x);
    var var_2 = Struct_3(!select(vec2<bool>(all(vec2<bool>(false, true)), true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), func_5(func_2(-232f, vec4<u32>(u_input.e, u_input.e, 47423u, u_input.e), vec4<f32>(global2[_wgslsmith_index_u32(u_input.e, 21u)], -1000f, 282f, 1390f), vec2<f32>(-2304f, -390f)))), Struct_2(Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 67492u, u_input.e, 0u), vec4<u32>(0u, u_input.e, 4294967295u, 21314u)), _wgslsmith_dot_vec2_i32(func_4(vec2<bool>(true, true), Struct_4(true, u_input.d, vec4<u32>(u_input.e, 6658u, u_input.e, u_input.e), vec4<u32>(4294967295u, 12772u, 619u, 0u))).xx, abs(vec2<i32>(218i, u_input.d.x))), firstLeadingBit(~vec4<u32>(u_input.e, 0u, u_input.e, u_input.e))), func_2(-406f, abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, u_input.e, u_input.e, 1u), vec4<u32>(19359u, 24277u, 1u, u_input.e))), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(trunc(216f)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.e, 21u)]), global2[_wgslsmith_index_u32(~1u, 21u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0))).d.x), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2[_wgslsmith_index_u32(1u, 21u)], -1880f, var_0.x, global2[_wgslsmith_index_u32(u_input.e, 21u)]), vec4<f32>(-1227f, -205f, -198f, -536f)))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -390f) - vec4<f32>(global2[_wgslsmith_index_u32(2913u, 21u)], var_0.x, 1543f, 1461f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, 541f, var_0.x, var_0.x), vec4<f32>(1241f, global2[_wgslsmith_index_u32(u_input.e, 21u)], global2[_wgslsmith_index_u32(7094u, 21u)], 206f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(1028f, var_0.x, 1521f, var_0.x), vec4<f32>(global2[_wgslsmith_index_u32(20782u, 21u)], var_0.x, 552f, global2[_wgslsmith_index_u32(0u, 21u)])), vec4<f32>(-111f, -658f, 1060f, var_0.x))), false)))), vec4<bool>(false, arg_0 > global1[_wgslsmith_index_u32(~reverseBits(7371u), 20u)], true, func_5(Struct_4(false, vec4<i32>(global1[_wgslsmith_index_u32(0u, 20u)], u_input.c.x, -2147483647i, u_input.b), vec4<u32>(u_input.e, u_input.e, u_input.e, u_input.e), vec4<u32>(u_input.e, 4294967295u, u_input.e, 4294967295u))).x & false));
    global0 = true;
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 21>();
    let var_0 = !(!(!(all(vec4<bool>(true, false, false, true)) || any(vec2<bool>(false, true)))));
    let var_1 = select(vec4<bool>(!(!(!var_0)), !(func_1(u_input.b) < ~(-8256i)), var_0, func_5(func_2(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.e, 21u)]), ~vec4<u32>(7461u, 21696u, u_input.e, u_input.e), _wgslsmith_f_op_vec4_f32(vec4<f32>(-618f, global2[_wgslsmith_index_u32(u_input.e, 21u)], global2[_wgslsmith_index_u32(u_input.e, 21u)], global2[_wgslsmith_index_u32(4294967295u, 21u)]) * vec4<f32>(1913f, global2[_wgslsmith_index_u32(u_input.e, 21u)], global2[_wgslsmith_index_u32(u_input.e, 21u)], global2[_wgslsmith_index_u32(0u, 21u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(1052f, -2077f) * vec2<f32>(260f, global2[_wgslsmith_index_u32(u_input.e, 21u)])))).x), !vec4<bool>(var_0, all(!vec3<bool>(var_0, true, false)), var_0, true), !(!select(select(vec4<bool>(var_0, true, var_0, true), vec4<bool>(var_0, false, false, var_0), vec4<bool>(var_0, false, false, false)), !vec4<bool>(true, true, var_0, var_0), select(vec4<bool>(var_0, true, true, true), vec4<bool>(true, true, false, false), false))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(564f)))));
    global3 = array<Struct_1, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.zy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.e, 21u)]), -527f))));
}

