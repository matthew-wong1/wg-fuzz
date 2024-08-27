struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<u32, 21> = array<u32, 21>(1u, 21172u, 1u, 1u, 1u, 0u, 1u, 107604u, 52857u, 119753u, 70557u, 76023u, 57879u, 44558u, 0u, 1u, 1u, 0u, 1u, 1u, 4294967295u);

var<private> global2: array<vec4<bool>, 11> = array<vec4<bool>, 11>(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true));

var<private> global3: u32 = 32160u;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_2, abs(reverseBits(~(81358u ^ u_input.b)))), 11u)];
    var var_1 = -7589i;
    let var_2 = abs(countOneBits(min(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 21u)], 21u)], arg_2, 1u), ~vec4<u32>(104639u, 0u, arg_2, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(21968u, 21u)], 21u)])), arg_2)));
    let var_3 = Struct_2(arg_1);
    var var_4 = min(30948u, ~var_2);
    return _wgslsmith_div_u32(~(~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, arg_2, var_2), vec4<u32>(var_2, var_2, var_2, 38200u)), vec4<u32>(var_2, 1u, 51180u, 4294967295u))), var_2);
}

fn func_2(arg_0: i32) -> vec3<bool> {
    global0 = any(vec4<bool>(u_input.d.x <= arg_0, true, any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), global2[_wgslsmith_index_u32(25422u, 11u)])), all(vec3<bool>(true, false, false)))) == !(!(!all(global2[_wgslsmith_index_u32(u_input.b, 11u)])));
    let var_0 = Struct_2(Struct_1(u_input.d.zzy, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1347f, -1000f, 2032f, 1675f) + vec4<f32>(945f, -122f, -935f, -1377f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(224f, -906f, 1858f, -133f)))))));
    global2 = array<vec4<bool>, 11>();
    let var_1 = var_0.a;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.b.x - var_0.a.b.x), var_0.a.b.x))))), ~vec2<u32>(abs(func_3(false, Struct_1(var_0.a.a, var_1.b), u_input.c.x, var_0.a.b.x)), firstLeadingBit(~1u)), 5121u, select(vec3<bool>(all(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true)), any(vec3<bool>(false, false, false)) || select(true, false, false)), select(vec3<bool>(all(vec3<bool>(false, true, false)), true, any(vec2<bool>(false, false))), vec3<bool>(all(vec2<bool>(true, false)), true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), global1[_wgslsmith_index_u32(u_input.b, 21u)] < global1[_wgslsmith_index_u32(79729u, 21u)])), true));
    return select(vec3<bool>(_wgslsmith_f_op_f32(ceil(197f)) > _wgslsmith_f_op_f32(ceil(-1000f)), var_2.d.x, true || !var_2.d.x), var_2.d, var_2.d.x);
}

fn func_1(arg_0: vec2<bool>, arg_1: i32) -> Struct_3 {
    global2 = array<vec4<bool>, 11>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1917f, 907f, 846f, 834f)))))));
    let var_1 = -arg_1;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-609f + -818f)))) - 1552f), abs(u_input.c), global1[_wgslsmith_index_u32(15495u, 21u)], select(select(func_2(abs(-2147483647i)), vec3<bool>(true, arg_0.x, func_2(u_input.d.x).x), !vec3<bool>(true, arg_0.x, arg_0.x)), func_2(u_input.a), vec3<bool>(all(func_2(var_1)), !arg_0.x, true)));
    var var_3 = var_0.wz;
    return Struct_3(-1000f, u_input.c, 13685u, !select(vec3<bool>(true, true, false), !vec3<bool>(false, arg_0.x, true), !(true && var_2.d.x)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool, arg_3: Struct_2) -> Struct_1 {
    global1 = array<u32, 21>();
    global3 = 29711u;
    return Struct_1(max(arg_1.a, arg_3.a.a ^ arg_3.a.a), _wgslsmith_f_op_vec4_f32(-arg_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 21>();
    var var_0 = func_4(func_1(vec2<bool>(false, any(vec3<bool>(true, true, true))), -10984i), Struct_1(u_input.d.wyw ^ u_input.d.yyy, vec4<f32>(-2382f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1074f - 983f), _wgslsmith_f_op_f32(round(-1670f))), _wgslsmith_div_f32(-2608f, -869f), _wgslsmith_f_op_f32(491f * -981f))), true, Struct_2(Struct_1(~(vec3<i32>(u_input.a, u_input.d.x, u_input.a) ^ u_input.d.wxx), vec4<f32>(_wgslsmith_f_op_f32(-1000f * 469f), _wgslsmith_f_op_f32(round(-473f)), -297f, _wgslsmith_f_op_f32(189f + -900f)))));
    var var_1 = _wgslsmith_f_op_f32(max(var_0.b.x, _wgslsmith_f_op_f32(-837f * 343f)));
    var var_2 = any(func_2(_wgslsmith_clamp_i32(var_0.a.x, 2147483647i, ~(u_input.d.x >> (0u % 32u)))).yz);
    let var_3 = select(true, !any(vec3<bool>(var_0.b.x == -278f, false, any(vec2<bool>(false, true)))), false);
    var_0 = func_4(Struct_3(_wgslsmith_f_op_f32(round(var_0.b.x)), select(u_input.c, u_input.c, func_1(!vec2<bool>(var_3, var_3), -7664i).d.xx), ~u_input.b, vec3<bool>(var_3, !var_3, true)), func_4(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 513f), ~u_input.c, func_1(vec2<bool>(var_3, false), 0i).b.x, vec3<bool>(true, !var_3, false)), func_4(func_1(func_2(var_0.a.x).yy, var_0.a.x), func_4(func_1(vec2<bool>(var_3, var_3), -49059i), Struct_1(u_input.d.zwx, vec4<f32>(-324f, var_0.b.x, -424f, -684f)), all(vec4<bool>(var_3, false, var_3, false)), Struct_2(Struct_1(vec3<i32>(var_0.a.x, u_input.a, u_input.a), var_0.b))), !var_3, Struct_2(func_4(Struct_3(var_0.b.x, vec2<u32>(u_input.c.x, u_input.b), 33511u, vec3<bool>(true, true, false)), Struct_1(vec3<i32>(53438i, var_0.a.x, -2147483647i), vec4<f32>(var_0.b.x, 1019f, -809f, -148f)), var_3, Struct_2(Struct_1(vec3<i32>(-1i, 2147483647i, u_input.a), var_0.b))))), var_3, Struct_2(func_4(Struct_3(var_0.b.x, vec2<u32>(4294967295u, 27609u), 4294967295u, vec3<bool>(var_3, var_3, var_3)), func_4(Struct_3(-482f, u_input.c, 4294967295u, vec3<bool>(var_3, false, var_3)), Struct_1(vec3<i32>(var_0.a.x, u_input.a, u_input.d.x), vec4<f32>(-578f, 798f, -831f, 790f)), false, Struct_2(Struct_1(u_input.d.yxx, var_0.b))), true, Struct_2(Struct_1(vec3<i32>(26165i, var_0.a.x, -19281i), var_0.b))))), false, Struct_2(Struct_1(~var_0.a, var_0.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(firstLeadingBit(_wgslsmith_div_i32(select(-2147483647i, -31668i, false), u_input.d.x)), min(~firstLeadingBit(-1i), -1i)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -233f)), -522f)), _wgslsmith_f_op_vec2_f32(var_0.b.yz * _wgslsmith_f_op_vec2_f32(-var_0.b.ww)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - var_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(411f)) + var_0.b.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(428f)))), _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(var_0.b.x * var_0.b.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -298f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -148f))), _wgslsmith_div_f32(1259f, var_0.b.x)), -341f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(806f, _wgslsmith_div_f32(2103f, 959f)))));
}

