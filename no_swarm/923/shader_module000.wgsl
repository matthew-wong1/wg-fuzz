struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: bool,
    d: vec4<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19>;

var<private> global1: array<vec3<bool>, 12> = array<vec3<bool>, 12>(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false));

var<private> global2: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(-1i, 27357i), vec2<i32>(0i, -11739i), vec2<i32>(-8095i, i32(-2147483648)), vec2<i32>(28779i, 4391i), vec2<i32>(i32(-2147483648), -37618i), vec2<i32>(5051i, 0i), vec2<i32>(-23870i, -52966i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -48940i), vec2<i32>(-3081i, -11056i), vec2<i32>(-23204i, i32(-2147483648)), vec2<i32>(-14981i, 1683i), vec2<i32>(-1i, 13921i), vec2<i32>(-24619i, -1i), vec2<i32>(-51503i, i32(-2147483648)), vec2<i32>(0i, 2147483647i));

var<private> global3: array<vec4<f32>, 16> = array<vec4<f32>, 16>(vec4<f32>(-210f, -930f, -1394f, 540f), vec4<f32>(1046f, -1000f, 716f, -401f), vec4<f32>(470f, -565f, -796f, 812f), vec4<f32>(-1295f, 1205f, -341f, -242f), vec4<f32>(141f, -1220f, 1018f, -1812f), vec4<f32>(115f, 451f, 1120f, -2500f), vec4<f32>(-666f, 534f, 2613f, 1000f), vec4<f32>(-716f, -264f, 1168f, -185f), vec4<f32>(209f, 254f, 503f, 1085f), vec4<f32>(-1001f, -1570f, 1078f, 1128f), vec4<f32>(-1073f, 726f, -187f, -1815f), vec4<f32>(-262f, -416f, -747f, -643f), vec4<f32>(-510f, 797f, -382f, -228f), vec4<f32>(-141f, 2164f, 614f, -420f), vec4<f32>(-460f, -506f, 278f, 883f), vec4<f32>(-120f, 419f, 1521f, -1130f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: u32) -> bool {
    global0 = array<f32, 19>();
    var var_0 = _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(abs(u_input.c.x), 84i, -1i, arg_1.b.b), u_input.c), vec4<i32>(arg_1.b.b, 0i, _wgslsmith_mult_i32(-22409i, i32(-1i) * -27701i), 1008i)), select(firstTrailingBit(u_input.c >> (_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2, 1u, 0u, 4294967295u), vec4<u32>(arg_2, 0u, 60108u, arg_1.b.a.e.x)) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.b.b, _wgslsmith_add_i32(-2147483647i, arg_1.b.b), ~(-2147483647i), -u_input.a), select(~vec4<i32>(u_input.c.x, 44542i, -36245i, u_input.a), u_input.c & vec4<i32>(-1i, u_input.a, u_input.c.x, u_input.a), arg_1.b.a.e.x <= arg_2), -(vec4<i32>(-32263i, 2147483647i, -1i, 2147483647i) ^ u_input.c)), false));
    global2 = array<vec2<i32>, 16>();
    var var_1 = select(arg_1.b.a.d, select(arg_1.b.a.d, arg_1.b.a.d, false), vec4<bool>(any(vec4<bool>(arg_0, arg_0, true, true)) | all(vec3<bool>(true, true, true)), arg_0, !((u_input.b.x & 96773u) < u_input.d.x), !(any(global1[_wgslsmith_index_u32(1u, 12u)]) || true)));
    let var_2 = select(!select(arg_1.b.a.d.xy, vec2<bool>(false, false), var_1.x && false), select(var_1.zx, select(vec2<bool>(var_1.x || false, var_1.x), select(!vec2<bool>(arg_1.b.a.b.x, arg_1.b.a.b.x), select(var_1.wz, vec2<bool>(arg_0, arg_1.b.a.c), vec2<bool>(false, false)), all(arg_1.b.a.d)), select(var_1.zz, select(var_1.zx, var_1.yz, false), false)), var_1.ww), !select(arg_1.b.a.b, var_1.zz, select(select(vec2<bool>(true, arg_0), arg_1.b.a.b, vec2<bool>(true, true)), select(arg_1.b.a.d.wy, vec2<bool>(true, false), var_1.yy), !arg_1.b.a.c)));
    return !(!(!(true != arg_1.b.a.c)));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_2 {
    global3 = array<vec4<f32>, 16>();
    var var_0 = arg_1.a.x;
    let var_1 = -523f;
    var var_2 = vec2<u32>(_wgslsmith_clamp_u32(arg_1.e.x << (abs(25312u & arg_1.e.x) % 32u), 70058u, 1u), 0u);
    global3 = array<vec4<f32>, 16>();
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(arg_1.a, arg_1.a)) * _wgslsmith_f_op_vec2_f32(-arg_1.a)), _wgslsmith_f_op_vec2_f32(-arg_1.a))), vec2<bool>(!arg_1.b.x, func_3(true, Struct_3(1779f, Struct_2(Struct_1(vec2<f32>(-954f, 1209f), vec2<bool>(arg_1.d.x, true), arg_1.d.x, arg_1.d, vec4<u32>(arg_1.e.x, arg_0.x, u_input.e, u_input.e)), u_input.a, arg_1.a)), abs(var_2.x))), !arg_1.d.x, !(!arg_1.d), firstTrailingBit(vec4<u32>(min(87720u, 1u), countOneBits(47897u), arg_1.e.x, 70285u))), u_input.c.x, _wgslsmith_f_op_vec2_f32(step(arg_1.a, arg_1.a)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: Struct_4) -> vec2<u32> {
    global3 = array<vec4<f32>, 16>();
    global1 = array<vec3<bool>, 12>();
    var var_0 = Struct_3(arg_2.c.x, Struct_2(arg_0.a, _wgslsmith_add_i32(func_2(select(u_input.d, vec3<u32>(0u, 1u, 4294967295u), vec3<bool>(arg_2.a.d.x, false, false)), arg_0.a).b, u_input.a), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-435f - 1495f) * -184f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.x, -216f)) * _wgslsmith_f_op_f32(abs(arg_1.x))))));
    global3 = array<vec4<f32>, 16>();
    global1 = array<vec3<bool>, 12>();
    return ~min(_wgslsmith_div_vec2_u32(countOneBits(u_input.d.zx), vec2<u32>(_wgslsmith_dot_vec2_u32(var_0.b.a.e.yz, vec2<u32>(var_0.b.a.e.x, 0u)), arg_0.a.e.x)), vec2<u32>(reverseBits(0u), _wgslsmith_sub_u32(abs(arg_0.a.e.x), var_0.b.a.e.x)));
}

fn func_1() -> f32 {
    global3 = array<vec4<f32>, 16>();
    var var_0 = u_input.c.x >= u_input.c.x;
    var var_1 = vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b, func_4(func_2(_wgslsmith_sub_vec3_u32(u_input.d, vec3<u32>(u_input.e, 1u, 0u)), Struct_1(vec2<f32>(-1195f, 1705f), vec2<bool>(false, false), true, vec4<bool>(true, true, false, true), vec4<u32>(u_input.b.x, u_input.d.x, u_input.e, 1u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1620f, global0[_wgslsmith_index_u32(u_input.b.x, 19u)]))) * vec2<f32>(-1131f, global0[_wgslsmith_index_u32(u_input.d.x, 19u)])), Struct_2(func_2(vec3<u32>(u_input.b.x, 25940u, u_input.e), Struct_1(vec2<f32>(-548f, 652f), vec2<bool>(true, false), true, vec4<bool>(true, false, true, false), vec4<u32>(0u, u_input.e, 26725u, 16772u))).a, i32(-1i) * -11130i, _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], 459f) * vec2<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 19u)], global0[_wgslsmith_index_u32(34398u, 19u)]))), Struct_4(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1014f, global0[_wgslsmith_index_u32(12819u, 19u)]))), 806f))), ~firstLeadingBit(func_4(func_2(vec3<u32>(15951u, 11785u, 70922u), Struct_1(vec2<f32>(-654f, global0[_wgslsmith_index_u32(u_input.b.x, 19u)]), vec2<bool>(false, false), true, vec4<bool>(false, true, true, true), vec4<u32>(u_input.d.x, 9949u, u_input.b.x, 4294967295u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-195f, global0[_wgslsmith_index_u32(26826u, 19u)])), func_2(vec3<u32>(0u, 4294967295u, 14724u), Struct_1(vec2<f32>(global0[_wgslsmith_index_u32(20424u, 19u)], global0[_wgslsmith_index_u32(15169u, 19u)]), vec2<bool>(false, true), false, vec4<bool>(true, false, false, true), vec4<u32>(4294967295u, 4294967295u, 4294967295u, u_input.b.x))), Struct_4(vec2<f32>(global0[_wgslsmith_index_u32(0u, 19u)], -1352f), -1000f)).x));
    var var_2 = u_input.a;
    let var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 19u)] * -179f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d.x, 19u)])), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(565f + global0[_wgslsmith_index_u32(0u, 19u)]), -1459f))))), -239f);
    return _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(70724u, 19u)] + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(u_input.d.x), 19u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.e, u_input.d.x), u_input.d.yy), vec2<u32>(4294967295u, 0u) << (vec2<u32>(31232u, u_input.d.x) % vec2<u32>(32u))), 16u)] ^ (abs(~u_input.c.yy) & firstLeadingBit(-vec2<i32>(u_input.c.x, 2147483647i))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * -295f), -155f, -1000f, global0[_wgslsmith_index_u32(~(u_input.d.x & 39330u), 19u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 19u)], global0[_wgslsmith_index_u32(u_input.b.x, 19u)], -1000f, global0[_wgslsmith_index_u32(u_input.e, 19u)]) - vec4<f32>(global0[_wgslsmith_index_u32(1u, 19u)], -1316f, 1893f, global0[_wgslsmith_index_u32(4294967295u, 19u)]))))), vec4<bool>(true, true, true, true))));
    global2 = array<vec2<i32>, 16>();
    global1 = array<vec3<bool>, 12>();
    let var_2 = ~59071u;
    let var_3 = vec4<i32>(1i, 0i, -_wgslsmith_div_i32(~var_0.x, u_input.a), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(vec4<u32>(var_2, var_2, 0u, ~u_input.d.x)), min(firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, var_0.x, -1i), var_3.xzw)), firstTrailingBit(~(vec3<i32>(5221i, -9829i, u_input.a) & vec3<i32>(u_input.c.x, u_input.c.x, var_3.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(36667u << (var_2 % 32u), 19u)]) - global0[_wgslsmith_index_u32(u_input.b.x, 19u)]), var_1);
}

