struct Struct_1 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30> = array<f32, 30>(-1167f, 2534f, -905f, 1000f, -1379f, -348f, 696f, 1911f, -1683f, 1416f, -1562f, 477f, 233f, -212f, -626f, 228f, -114f, -174f, -2356f, -420f, 616f, -1000f, 617f, 2147f, 714f, -106f, 823f, -450f, 2305f, -1071f);

var<private> global1: vec4<u32>;

var<private> global2: array<vec2<u32>, 9>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> u32 {
    return arg_1.a;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_1 {
    global0 = array<f32, 30>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(87087u, 30u)], -1290f) - _wgslsmith_f_op_f32(max(arg_1.x, 167f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(arg_1.x, -1000f)), -1000f, true)), false)), global0[_wgslsmith_index_u32(min(30049u, ~func_3(vec3<bool>(false, arg_0.b, false), arg_0)), 30u)]) != -749f;
    global1 = ~vec4<u32>(~min(u_input.c.x, ~arg_0.a), 4294967295u, u_input.a.x, _wgslsmith_add_u32(arg_0.a, _wgslsmith_clamp_u32(~arg_0.a, countOneBits(global1.x), u_input.c.x)));
    let var_1 = Struct_1(min(~58329u, _wgslsmith_add_u32(abs(arg_0.a), min(global1.x >> (global1.x % 32u), global1.x))), true);
    global2 = array<vec2<u32>, 9>();
    return Struct_1(_wgslsmith_dot_vec3_u32(global1.wwx, max(max(global1.wyz, vec3<u32>(u_input.c.x, 2904u, 5422u)), ~vec3<u32>(16242u, global1.x, 11817u))) ^ (_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.a, 4294967295u, global1.x), vec3<u32>(global1.x, var_1.a, 4294967295u)), ~global1.yxz) ^ ~func_3(vec3<bool>(false, arg_0.b, true), var_1)), true);
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> u32 {
    global2 = array<vec2<u32>, 9>();
    var var_0 = select(!vec3<bool>(all(!vec4<bool>(arg_1.b, false, arg_1.b, arg_1.b)), arg_1.b, true), select(vec3<bool>(true, true, true), !vec3<bool>(func_2(arg_1, vec3<f32>(global0[_wgslsmith_index_u32(17922u, 30u)], 771f, -2115f)).b, all(vec3<bool>(false, false, false)), arg_1.b), arg_1.b), select(!vec3<bool>(true, any(vec4<bool>(arg_1.b, true, arg_1.b, arg_1.b)), true), !vec3<bool>(!arg_1.b, true, true), arg_1.b));
    let var_1 = min(~global1.wzy, _wgslsmith_clamp_vec3_u32(vec3<u32>(~global1.x, ~1u, ~global1.x), countOneBits(vec3<u32>(4294967295u, 920u, 1u)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 4294967295u, 66540u), min(global1.yzx, global1.wyy)))) | select(~select(vec3<u32>(arg_1.a, 1u, 34319u), ~global1.wyz, any(vec4<bool>(false, false, true, arg_1.b))), global1.xyw, var_0.x);
    var_0 = !vec3<bool>(true, true, arg_1.b != true);
    global0 = array<f32, 30>();
    return func_2(arg_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(8451u, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)], -194f) - vec3<f32>(-1839f, 919f, global0[_wgslsmith_index_u32(0u, 30u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(global1.x, 30u)], global0[_wgslsmith_index_u32(arg_1.a, 30u)], -2033f) * vec3<f32>(global0[_wgslsmith_index_u32(global1.x, 30u)], global0[_wgslsmith_index_u32(var_1.x, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)])), true)), vec3<f32>(-532f, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, arg_1.a), 30u)], _wgslsmith_f_op_f32(select(-1760f, 503f, arg_1.b)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(71356u, 30u)], global0[_wgslsmith_index_u32(var_1.x, 30u)], 425f), vec3<f32>(global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)], 1322f)))))).a;
}

fn func_5(arg_0: vec4<u32>, arg_1: i32) -> Struct_1 {
    var var_0 = ~((arg_0 << (vec4<u32>(global1.x, global1.x, arg_0.x, u_input.c.x) % vec4<u32>(32u))) << (~vec4<u32>(38957u, 44419u, arg_0.x, 108756u) % vec4<u32>(32u))) & _wgslsmith_sub_vec4_u32(select(vec4<u32>(_wgslsmith_add_u32(arg_0.x, arg_0.x), arg_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(60831u, 4294967295u, u_input.c.x), vec3<u32>(0u, u_input.a.x, global1.x)), 0u), min(arg_0, vec4<u32>(u_input.a.x, global1.x, u_input.c.x, global1.x)) & _wgslsmith_add_vec4_u32(vec4<u32>(0u, 27886u, 52186u, 1u), vec4<u32>(9352u, 0u, global1.x, 393u)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(59064u, 30u)] + global0[_wgslsmith_index_u32(1u, 30u)]) == _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 30u)])), ~abs(countOneBits(vec4<u32>(2728u, global1.x, 1u, 45766u))));
    var_0 = _wgslsmith_sub_vec4_u32(select(vec4<u32>(func_4(arg_1, Struct_1(58129u, false)), ~global1.x, global1.x & global1.x, global1.x), abs(arg_0 & arg_0), vec4<bool>(true, true, true, true)), arg_0) ^ countOneBits(vec4<u32>(global1.x, ~min(1u, arg_0.x), 81898u, max(func_4(0i, Struct_1(23223u, true)), _wgslsmith_sub_u32(arg_0.x, arg_0.x))));
    let var_1 = -113f;
    var_0 = firstTrailingBit(vec4<u32>(~33340u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, 0u, global1.x, global1.x), max(arg_0, arg_0)), ~(~arg_0.x), var_0.x));
    let var_2 = _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(~arg_0, ~arg_0), ~_wgslsmith_div_vec4_u32(~(~vec4<u32>(0u, 55296u, var_0.x, u_input.a.x)), ~arg_0 & _wgslsmith_mod_vec4_u32(vec4<u32>(36931u, u_input.c.x, var_0.x, global1.x), vec4<u32>(0u, arg_0.x, 1u, arg_0.x))), ~(~(~vec4<u32>(u_input.c.x, 60541u, 1u, 50052u) << (select(vec4<u32>(u_input.a.x, u_input.c.x, var_0.x, var_0.x), arg_0, false) % vec4<u32>(32u)))));
    return func_2(Struct_1(u_input.c.x, all(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), true))), vec3<f32>(-949f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-163f, 1082f)))), -164f));
}

fn func_1() -> Struct_1 {
    let var_0 = vec4<u32>(_wgslsmith_clamp_u32(global1.x, abs(firstLeadingBit(~global1.x)), _wgslsmith_div_u32(~(global1.x & u_input.c.x), _wgslsmith_mult_u32(countOneBits(global1.x), u_input.c.x | 4294967295u))), ~u_input.a.x, abs(~u_input.a.x), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(select(47559u, global1.x, true), global1.x), _wgslsmith_add_u32(_wgslsmith_div_u32(1u, 1u), 43035u), global1.x), _wgslsmith_add_u32(u_input.c.x, 0u)));
    global0 = array<f32, 30>();
    var var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 30u)];
    global2 = array<vec2<u32>, 9>();
    let var_2 = u_input.b;
    return func_5(select(vec4<u32>(0u, 4294967295u, func_4(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -21377i), vec2<i32>(var_2, 17269i)), func_2(Struct_1(var_0.x, false), vec3<f32>(1076f, 684f, global0[_wgslsmith_index_u32(global1.x, 30u)]))), 4294967295u), firstLeadingBit(~firstLeadingBit(vec4<u32>(4294967295u, var_0.x, u_input.c.x, 4294967295u))), (-20288i << (~var_0.x % 32u)) >= -26926i), min(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2, u_input.b, 25781i) << (global1.zwx % vec3<u32>(32u)), vec3<i32>(u_input.b, 1i, var_2)), i32(-1i) * -1i) ^ ~(_wgslsmith_dot_vec2_i32(vec2<i32>(-10156i, -47362i), vec2<i32>(-31584i, var_2)) & firstTrailingBit(u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = max(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(global1.x, 4294967295u, u_input.a.x, global1.x), vec4<u32>(var_0.a, global1.x, 4294967295u, 4294967295u))), (reverseBits(vec4<u32>(38977u, 39547u, var_0.a, global1.x)) ^ vec4<u32>(var_0.a, var_0.a, u_input.c.x, 4294967295u)) >> (countOneBits(~vec4<u32>(34105u, global1.x, var_0.a, var_0.a)) % vec4<u32>(32u))) | select(vec4<u32>(global1.x, func_5(~vec4<u32>(var_0.a, 17971u, var_0.a, u_input.c.x), u_input.b).a, var_0.a, var_0.a), ~(vec4<u32>(var_0.a, var_0.a, 24782u, 18493u) >> (vec4<u32>(global1.x, u_input.a.x, 1u, 1u) % vec4<u32>(32u))) >> ((~vec4<u32>(10090u, u_input.a.x, 32261u, 14043u) << (~vec4<u32>(global1.x, u_input.c.x, global1.x, 23218u) % vec4<u32>(32u))) % vec4<u32>(32u)), select(!select(vec4<bool>(var_0.b, true, var_0.b, false), vec4<bool>(false, true, var_0.b, var_0.b), vec4<bool>(true, false, var_0.b, var_0.b)), vec4<bool>(!var_0.b, var_0.b, var_0.b, true), select(select(vec4<bool>(false, true, true, var_0.b), vec4<bool>(true, var_0.b, var_0.b, false), false), select(vec4<bool>(true, var_0.b, false, var_0.b), vec4<bool>(true, var_0.b, var_0.b, false), vec4<bool>(false, var_0.b, var_0.b, false)), select(vec4<bool>(false, var_0.b, true, true), vec4<bool>(var_0.b, var_0.b, false, var_0.b), vec4<bool>(false, true, var_0.b, var_0.b)))));
    global0 = array<f32, 30>();
    global0 = array<f32, 30>();
    global0 = array<f32, 30>();
    var var_1 = func_2(func_2(func_1(), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(147f)))), -1475f, -315f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1106f - global0[_wgslsmith_index_u32(32381u, 30u)]) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 30u)])), 349f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.a, 30u)] - global0[_wgslsmith_index_u32(var_0.a, 30u)])))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(65285u, 30u)])), 1f, _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(var_0.a, 30u)], 1537f)))))).b;
    let var_2 = select(select(vec2<bool>(true | (var_0.b == var_0.b), (2147483647i >= u_input.b) && var_0.b), select(select(vec2<bool>(var_0.b, false), select(vec2<bool>(true, false), vec2<bool>(true, var_0.b), vec2<bool>(var_0.b, true)), all(vec4<bool>(var_0.b, true, true, true))), !(!vec2<bool>(var_0.b, var_0.b)), vec2<bool>(all(vec4<bool>(var_0.b, false, var_0.b, true)), select(var_0.b, true, var_0.b))), true && all(select(vec4<bool>(var_0.b, var_0.b, false, true), vec4<bool>(true, var_0.b, true, true), vec4<bool>(var_0.b, false, false, var_0.b)))), select(select(select(!vec2<bool>(var_0.b, false), vec2<bool>(true, var_0.b), false), select(vec2<bool>(var_0.b, var_0.b), !vec2<bool>(true, var_0.b), vec2<bool>(true, true)), !var_0.b), vec2<bool>(all(select(vec2<bool>(true, var_0.b), vec2<bool>(true, false), vec2<bool>(var_0.b, false))), global0[_wgslsmith_index_u32(0u, 30u)] <= -2725f), select(vec2<bool>(true, any(vec3<bool>(var_0.b, false, true))), !select(vec2<bool>(var_0.b, false), vec2<bool>(var_0.b, var_0.b), var_0.b), select(vec2<bool>(false, var_0.b), select(vec2<bool>(false, false), vec2<bool>(var_0.b, var_0.b), vec2<bool>(false, var_0.b)), false))), !select(!(!vec2<bool>(var_0.b, false)), !vec2<bool>(var_0.b, true), var_0.b));
    var var_3 = !select(vec3<bool>(false, var_2.x, true), !select(select(vec3<bool>(var_0.b, var_2.x, true), vec3<bool>(false, var_0.b, var_2.x), true), vec3<bool>(var_0.b, true, false), vec3<bool>(true, true, true)), u_input.c.x != 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-6350i, -min(u_input.b, _wgslsmith_clamp_i32(0i, u_input.b, u_input.b)), -1i), -1282f);
}

