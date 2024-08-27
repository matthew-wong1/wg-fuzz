struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(7095i, 2147483647i, 584i);

var<private> global1: Struct_2;

var<private> global2: array<vec2<bool>, 13>;

var<private> global3: vec4<f32> = vec4<f32>(-664f, 779f, -982f, 856f);

var<private> global4: vec3<f32> = vec3<f32>(-1000f, 2057f, 133f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<bool>) -> vec4<f32> {
    let var_0 = arg_0.c.x;
    global1 = Struct_2(~(~(~_wgslsmith_div_i32(27774i, -41584i))), global1.b, arg_0);
    var var_1 = true;
    var var_2 = all(!select(select(!vec4<bool>(true, arg_2.x, arg_2.x, false), vec4<bool>(false, false, arg_2.x, arg_2.x), !vec4<bool>(arg_2.x, false, true, false)), vec4<bool>(true, true, any(arg_2), arg_2.x), !select(vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x), vec4<bool>(true, arg_2.x, arg_2.x, true))));
    let var_3 = -global0.xy;
    return _wgslsmith_f_op_vec4_f32(arg_0.a - global1.c.a);
}

fn func_2(arg_0: vec4<f32>) -> bool {
    global1 = Struct_2(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-(~vec2<i32>(-3995i, global0.x)), global0.yx), -_wgslsmith_add_i32(u_input.a, select(2147483647i, 33217i, true))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(arg_0, 4294967295u, global1.b.d, vec4<u32>(u_input.d, 4294967295u, 0u, global1.b.b), -365f), _wgslsmith_mod_vec3_i32(vec3<i32>(-62145i, global0.x, u_input.a), vec3<i32>(u_input.a, -1i, -2747i)), vec3<bool>(true, true, true))) * vec4<f32>(_wgslsmith_f_op_f32(global1.c.e + global4.x), _wgslsmith_f_op_vec4_f32(func_3(global1.c, vec3<i32>(u_input.e, -70099i, 0i), vec3<bool>(true, true, false))).x, 184f, _wgslsmith_f_op_f32(-global4.x))), (global1.b.d.x | _wgslsmith_dot_vec3_u32(vec3<u32>(51800u, u_input.c.x, 1u), u_input.c)) | (abs(4294967295u) & u_input.c.x), vec4<u32>(min(74009u, 15473u), abs(u_input.b), global1.c.b, u_input.d), global1.c.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-399f - _wgslsmith_f_op_f32(-global1.b.a.x)))), global1.b);
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -309f), _wgslsmith_f_op_f32(exp2(arg_0.x)), -1028f);
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1923f, 1422f, global4.x, var_0.x), vec4<f32>(951f, global1.b.e, global4.x, 1000f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, global1.c.e, 301f, -300f), vec4<f32>(-600f, global4.x, arg_0.x, -639f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.b.a), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, 306f, -339f, 1031f))))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(global3.x * global3.x), _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.b.a.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global3.yxz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-517f, global3.x, var_0.x))))))));
    return !var_1;
}

fn func_1() -> vec4<f32> {
    let var_0 = !(!select(vec4<bool>(all(vec4<bool>(true, false, true, false)), true, all(global2[_wgslsmith_index_u32(4294967295u, 13u)]), func_2(global1.c.a)), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false)))));
    var var_1 = global1.b;
    var var_2 = vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_mod_i32(-1i, global1.a) | -23954i, abs(u_input.e), select(global1.a, u_input.a, true), -global0.x);
    let var_3 = vec2<u32>(7056u, 46346u);
    var var_4 = var_1.a;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -753f, global1.b.e, global4.x) + _wgslsmith_f_op_vec4_f32(func_3(global1.b, vec3<i32>(global0.x, global1.a, global1.a), vec3<bool>(var_0.x, true, false)))), global1.b.a, all(select(var_0.yx, vec2<bool>(var_0.x, var_0.x), var_0.x)))) * global1.b.a) * vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec4<f32>(global1.c.e, var_1.e, global3.x, 303f), u_input.c.x, var_1.d, var_1.d, 1000f), var_2.wwx, var_0.xzy)).x * global1.b.e))), global4.x, _wgslsmith_f_op_f32(f32(-1f) * -1167f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1360f)) * _wgslsmith_f_op_f32(ceil(var_4.x)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = !select(!global2[_wgslsmith_index_u32(arg_0.b, 13u)], select(global2[_wgslsmith_index_u32(0u, 13u)], vec2<bool>(36157i > global1.a, -374f > global4.x), -943f == _wgslsmith_f_op_f32(arg_0.e + 1232f)), select(select(select(global2[_wgslsmith_index_u32(arg_0.b, 13u)], vec2<bool>(false, true), global2[_wgslsmith_index_u32(u_input.c.x, 13u)]), global2[_wgslsmith_index_u32(66908u, 13u)], false), !global2[_wgslsmith_index_u32(34612u | global1.c.d.x, 13u)], global2[_wgslsmith_index_u32(arg_0.d.x, 13u)]));
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    var var_0 = !(!any(vec4<bool>(any(vec2<bool>(true, true)), true, true, 1u > u_input.c.x)));
    let var_1 = arg_1.c;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-273f, arg_0.e, any(vec3<bool>(true, true, true)))));
    global3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), var_1.e, var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_1(var_1.a, arg_1.c.d.x, arg_0.c, vec4<u32>(var_1.c.x, arg_0.d.x, arg_0.c.x, 6194u), 323f), vec3<i32>(u_input.a, global1.a, u_input.a), vec3<bool>(false, false, false))).x))));
    var_0 = true;
    return Struct_2(global1.a, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(831f, var_1.e))), 913f, global1.b.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(545f)) + global1.c.a.x)), global1.b.c.x, arg_1.c.d, firstLeadingBit(arg_1.b.c) ^ arg_0.d, global3.x), func_4(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.b.a.x), arg_0.a.x, 1519f, arg_0.e), ~(~27275u), _wgslsmith_div_vec4_u32(~vec4<u32>(global1.c.c.x, arg_1.b.b, 1708u, u_input.c.x), vec4<u32>(arg_1.b.b, u_input.c.x, 4294967295u, arg_1.b.d.x)), arg_0.d ^ var_1.c, var_1.a.x), vec3<i32>(16717i, abs(47436i), 0i) | select(~vec3<i32>(global1.a, -63170i, u_input.a), ~vec3<i32>(global1.a, global1.a, -36718i), vec3<bool>(true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(func_4(Struct_1(_wgslsmith_f_op_vec4_f32(func_1()), abs(global1.b.d.x >> (71504u % 32u)), global1.c.d, abs(vec4<u32>(u_input.d, global1.c.c.x, 1u, u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.a.x))), vec3<i32>(global1.a, min(u_input.a, 43451i), -1i) ^ reverseBits(min(vec3<i32>(-43255i, 2147483647i, global0.x), vec3<i32>(global0.x, u_input.e, u_input.e)))), Struct_2(global1.a, func_4(Struct_1(_wgslsmith_div_vec4_f32(global1.c.a, vec4<f32>(global4.x, -223f, 494f, global1.c.e)), firstLeadingBit(32457u), vec4<u32>(u_input.b, 17825u, u_input.c.x, 13154u), global1.b.c, _wgslsmith_f_op_f32(1009f + 785f)), vec3<i32>(u_input.e, 1i, firstTrailingBit(u_input.a))), func_4(func_4(global1.b, ~vec3<i32>(-2762i, global1.a, global1.a)), countOneBits(select(vec3<i32>(0i, global1.a, global0.x), vec3<i32>(global1.a, 0i, -10610i), true)))));
    let var_0 = select(_wgslsmith_dot_vec4_u32(vec4<u32>(~global1.c.b, _wgslsmith_sub_u32(u_input.d, u_input.c.x), ~65582u, 1u) | vec4<u32>(4294967295u, u_input.b, firstLeadingBit(81298u), u_input.d), ~func_5(global1.b, func_5(global1.c, Struct_2(global1.a, global1.c, Struct_1(global1.c.a, global1.b.b, global1.b.d, vec4<u32>(global1.b.d.x, global1.b.c.x, 4294967295u, global1.c.d.x), 873f)))).b.c), _wgslsmith_mod_u32(0u, func_4(Struct_1(vec4<f32>(-579f, -1846f, 262f, 428f), ~global1.c.b, global1.c.c, global1.b.d, -806f), vec3<i32>(global0.x, u_input.a, global1.a)).b), true);
    global1 = Struct_2(~_wgslsmith_mod_i32(~u_input.a, countOneBits(global0.x)), func_5(func_4(global1.c, reverseBits(reverseBits(vec3<i32>(global1.a, 30913i, 10730i)))), func_5(global1.b, func_5(global1.c, Struct_2(global1.a, Struct_1(vec4<f32>(1823f, global1.c.a.x, -1000f, 680f), 4294967295u, vec4<u32>(var_0, u_input.d, global1.c.c.x, global1.b.c.x), global1.b.c, global4.x), Struct_1(vec4<f32>(439f, global4.x, global4.x, -1000f), 0u, vec4<u32>(global1.c.c.x, 0u, 29347u, 23279u), vec4<u32>(3169u, 1u, 35818u, 8397u), 1138f))))).c, func_4(func_4(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, global1.b.e, -115f, 718f) * vec4<f32>(1000f, global4.x, global1.b.e, global3.x)), firstLeadingBit(30871u), vec4<u32>(u_input.c.x, 47271u, u_input.d, 103738u), vec4<u32>(global1.c.b, 1u, global1.b.d.x, global1.c.c.x), _wgslsmith_f_op_f32(global1.b.e * 750f)), abs(~vec3<i32>(global0.x, u_input.a, -5406i))), ~(-vec3<i32>(-25183i, 3342i, global1.a))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.c.a.wwx));
    var var_2 = abs(_wgslsmith_clamp_vec2_i32(~(-vec2<i32>(u_input.e, u_input.a)), global0.xx, vec2<i32>(global0.x & -2147483647i, 2147483647i)) & vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, u_input.e), global0.xy), _wgslsmith_dot_vec2_i32(abs(global0.zy), -global0.zy)));
    var var_3 = ~vec3<u32>(var_0, 1u, u_input.c.x);
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global1.b.a, vec4<f32>(-1610f, -731f, -1137f, 1617f), false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-454f, 985f, -1000f, global1.c.e) * _wgslsmith_f_op_vec4_f32(max(global1.c.a, global1.b.a)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, var_1.x, global1.c.a.x, 369f)), _wgslsmith_f_op_vec4_f32(floor(global1.b.a)))), global1.c.b, global1.c.d, ~_wgslsmith_sub_vec4_u32(~global1.b.c, global1.c.c), 572f);
    let var_5 = func_5(var_4, func_5(Struct_1(_wgslsmith_f_op_vec4_f32(-var_4.a), ~firstLeadingBit(var_3.x), ~(~var_4.d), ~(~vec4<u32>(var_4.d.x, 4294967295u, 4294967295u, u_input.c.x)), global3.x), Struct_2(_wgslsmith_mult_i32(u_input.e, global0.x) << (33824u % 32u), Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-461f, global4.x, var_1.x, -205f), vec4<f32>(-671f, 1114f, 741f, 316f), true)), 0u, reverseBits(global1.c.d), vec4<u32>(1u, 4294967295u, 0u, 46052u), _wgslsmith_f_op_f32(ceil(var_4.e))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1292f, -192f, -620f, global4.x) + var_4.a), ~var_0, _wgslsmith_mod_vec4_u32(vec4<u32>(0u, global1.b.d.x, global1.b.b, 32758u), vec4<u32>(0u, global1.c.c.x, var_0, u_input.d)), vec4<u32>(78918u, 44950u, u_input.d, global1.b.d.x), 506f))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, var_0, 1000f);
}

