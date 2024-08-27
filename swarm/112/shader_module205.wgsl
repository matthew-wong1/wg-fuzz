struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
    e: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2;

var<private> global2: vec3<bool>;

var<private> global3: array<vec4<u32>, 22> = array<vec4<u32>, 22>(vec4<u32>(134714u, 4294967295u, 4294967295u, 26922u), vec4<u32>(58042u, 392u, 42435u, 9197u), vec4<u32>(13782u, 0u, 32278u, 52173u), vec4<u32>(13705u, 33106u, 64854u, 35359u), vec4<u32>(46082u, 3368u, 58150u, 0u), vec4<u32>(62909u, 1114u, 1u, 59183u), vec4<u32>(4294967295u, 1u, 20995u, 9743u), vec4<u32>(1u, 0u, 42156u, 1u), vec4<u32>(1u, 45427u, 13498u, 1u), vec4<u32>(0u, 0u, 4294967295u, 10782u), vec4<u32>(34269u, 19429u, 10581u, 0u), vec4<u32>(143103u, 84114u, 4294967295u, 1u), vec4<u32>(33250u, 0u, 23338u, 4294967295u), vec4<u32>(30401u, 4294967295u, 0u, 41335u), vec4<u32>(64973u, 91183u, 4294967295u, 70652u), vec4<u32>(6908u, 0u, 4294967295u, 4294967295u), vec4<u32>(89047u, 23167u, 70841u, 35136u), vec4<u32>(87973u, 4294967295u, 1u, 59406u), vec4<u32>(4294967295u, 1u, 4294967295u, 1u), vec4<u32>(4294967295u, 12557u, 1u, 0u), vec4<u32>(91654u, 1u, 0u, 0u), vec4<u32>(4294967295u, 58538u, 27797u, 44589u));

var<private> global4: vec2<f32>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool) -> vec3<u32> {
    global3 = array<vec4<u32>, 22>();
    global4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x))))), global4.x);
    let var_0 = 348f;
    global2 = !select(vec3<bool>(true, all(!vec4<bool>(global2.x, true, true, global2.x)), true), vec3<bool>(true, true, true), true == any(vec3<bool>(true, true, true)));
    global0 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(423f + 768f), global4.x)), global1.b, _wgslsmith_f_op_vec4_f32(ceil(global0.c)));
    return firstTrailingBit(~(_wgslsmith_clamp_vec3_u32(min(global1.b.b, vec3<u32>(53956u, 4294967295u, 17546u)), ~vec3<u32>(11052u, 4294967295u, global0.b.b.x), reverseBits(global0.b.b)) << (~_wgslsmith_mod_vec3_u32(global1.b.b, global0.b.b) % vec3<u32>(32u))));
}

fn func_2(arg_0: f32) -> f32 {
    global0 = Struct_2(_wgslsmith_f_op_f32(837f - global0.c.x), Struct_1(!(!(global0.b.b.x > 4294967295u)), ~_wgslsmith_sub_vec3_u32(func_3(global1.b.a), ~global1.b.b)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(global0.c, vec4<f32>(global4.x, global4.x, global0.c.x, global4.x), global1.b.a)), _wgslsmith_f_op_vec4_f32(ceil(global1.c)))))), vec4<f32>(global4.x, -1052f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(global4.x + arg_0))), _wgslsmith_f_op_f32(f32(-1f) * -430f)), vec4<bool>(global1.b.a, global2.x, global2.x, false))));
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-global1.c), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -49627i, 9017i), _wgslsmith_clamp_vec3_i32(vec3<i32>(31221i, 2147483647i, 2147483647i), vec3<i32>(2147483647i, -2147483647i, -1i), vec3<i32>(1i, -2302i, -24317i))) != -2147483647i, select(global0.b.b, max(reverseBits(vec3<u32>(u_input.a, global0.b.b.x, 43671u)), _wgslsmith_add_vec3_u32(vec3<u32>(26597u, 26118u, u_input.a), vec3<u32>(73874u, 0u, 37604u))), global0.b.a)), global1.b, vec2<u32>(1u, u_input.a), _wgslsmith_f_op_f32(-global1.a));
    global1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global4.x, 433f)))))), global0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, global0.c.x, 1000f, global1.c.x)))))));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1907f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(sign(global4.x)), true)), var_0.c.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -758f))))) * _wgslsmith_f_op_f32(var_0.e * _wgslsmith_f_op_f32(f32(-1f) * -903f)));
}

fn func_1(arg_0: vec2<u32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(662f)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.a), 2023f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0 - -704f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.c.zy)) + _wgslsmith_f_op_vec2_f32(-global0.c.xx)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.a, global1.a), global1.c.yy)) * global1.c.zw)) + global0.c.wy));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-651f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-938f, global1.c.x, global1.b.a))))), Struct_1(false, vec3<u32>(~1u, select(~arg_0.x, 42003u, !global0.b.a), (arg_0.x | 0u) ^ arg_0.x)), global0.c);
    var var_3 = ~global1.b.b.x;
    global2 = !(!select(vec3<bool>(!var_2.b.a, !global2.x, false), !vec3<bool>(false, global1.b.a, false), all(vec4<bool>(global0.b.a, true, global1.b.a, global0.b.a))));
    return select(vec3<bool>(global0.b.a, false, var_2.b.a), vec3<bool>(16530u == global0.b.b.x, !(1u > global1.b.b.x), all(select(select(vec3<bool>(global2.x, false, true), vec3<bool>(false, var_2.b.a, true), vec3<bool>(true, global2.x, global2.x)), vec3<bool>(true, global1.b.a, global0.b.a), select(vec3<bool>(false, true, false), vec3<bool>(global2.x, false, var_2.b.a), vec3<bool>(false, global2.x, var_2.b.a))))), select(!(!select(vec3<bool>(false, false, true), vec3<bool>(global1.b.a, false, false), false)), vec3<bool>(global2.x, true, var_2.b.b.x == 1u), select(select(vec3<bool>(global2.x, global1.b.a, var_2.b.a), !vec3<bool>(global2.x, false, var_2.b.a), !vec3<bool>(global1.b.a, false, true)), vec3<bool>(true, var_2.b.a || global0.b.a, true), select(select(vec3<bool>(var_2.b.a, global1.b.a, global0.b.a), vec3<bool>(false, var_2.b.a, false), vec3<bool>(false, true, global1.b.a)), vec3<bool>(var_2.b.a, global1.b.a, true), !vec3<bool>(global1.b.a, global1.b.a, global2.x)))));
}

fn func_4(arg_0: vec3<bool>) -> Struct_3 {
    var var_0 = vec4<i32>(min(_wgslsmith_dot_vec3_i32(vec3<i32>(min(81102i, -2147483647i), abs(-13914i), i32(-1i) * -4857i), vec3<i32>(-1i << (1u % 32u), _wgslsmith_add_i32(1i, 52539i), ~(-2147483647i))), min(~(-63198i), 1i >> (global0.b.b.x % 32u))), firstTrailingBit(_wgslsmith_mod_i32(-6464i, abs(1i))), _wgslsmith_add_i32(~reverseBits(reverseBits(36580i)), ~(-max(2147483647i, 70853i))), reverseBits(~0i));
    var var_1 = !arg_0;
    global1 = Struct_2(1281f, global1.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, -1609f, _wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(-global4.x))));
    var var_2 = ~(~global3[_wgslsmith_index_u32(u_input.a, 22u)]);
    var var_3 = _wgslsmith_dot_vec3_i32(var_0.zwx, ~vec3<i32>(-1i, var_0.x, countOneBits(var_0.x)));
    return Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.c)) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1435f, global0.c.x, 1473f, global1.a) - global1.c), vec4<f32>(global1.a, -777f, global1.c.x, global4.x))))), global1.b, Struct_1(!global1.b.a, global0.b.b), _wgslsmith_sub_vec2_u32(min(~global1.b.b.yx, ~vec2<u32>(u_input.a, 0u)), ~_wgslsmith_add_vec2_u32(max(vec2<u32>(24811u, 1u), vec2<u32>(global0.b.b.x, var_2.x)), select(vec2<u32>(var_2.x, global0.b.b.x), vec2<u32>(1u, global0.b.b.x), true))), -621f);
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_3) -> Struct_3 {
    var var_0 = Struct_4(arg_1.b, func_4(vec3<bool>(select(global0.b.b.x, 2174u, arg_2.c.a) == 4294967295u, any(vec4<bool>(false, global0.b.a, arg_2.b.a, arg_1.a)), all(vec3<bool>(global0.b.a, arg_2.b.a, false)))).c, func_4(!vec3<bool>(arg_1.a, func_1(vec2<u32>(1u, 0u)).x, arg_2.c.a | global0.b.a)).e);
    var var_1 = vec2<i32>(_wgslsmith_mult_i32(firstTrailingBit(46983i), max(12373i, abs(24457i) >> (global0.b.b.x % 32u))), countOneBits(min(1i, abs(~22663i))));
    return arg_2;
}

fn func_6(arg_0: Struct_3, arg_1: f32) -> Struct_2 {
    let var_0 = _wgslsmith_add_u32(~(~(~15953u) | u_input.a), u_input.a);
    var var_1 = global1.b;
    var_1 = Struct_1(select(~(~global0.b.b.x) == (~arg_0.c.b.x | 41786u), any(!vec3<bool>(global2.x, true, false)), true), ~var_1.b);
    var var_2 = !select(!select(vec4<bool>(true, arg_0.c.a, arg_0.b.a, global0.b.a), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, var_1.a, false), vec4<bool>(true, true, false, global0.b.a)), !vec4<bool>(global0.b.a, global0.b.a, arg_0.c.a, arg_0.b.a)), vec4<bool>(func_4(!vec3<bool>(global1.b.a, true, arg_0.c.a)).b.a, 1i > _wgslsmith_dot_vec3_i32(vec3<i32>(22539i, 15258i, 31009i), vec3<i32>(-2147483647i, 59463i, -70008i)), true, true), arg_0.b.a);
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a + 220f), _wgslsmith_f_op_f32(-global1.c.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(global1.a, arg_1, false)))), _wgslsmith_f_op_f32(-global4.x), arg_1)), func_5(global4.x, arg_0.c, func_4(func_1(global1.b.b.zy))).b, global1.b, max(global0.b.b.zy, vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(global1.b.b.x, 5154u), 59905u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.x, 0u, u_input.a), vec3<u32>(1u, 0u, 9225u)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(537f)))));
    return Struct_2(global1.a, global1.b, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-716f * global0.c.x), arg_1))), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-554f - var_3.a.x) - global0.a))), _wgslsmith_f_op_f32(round(arg_0.e)), _wgslsmith_f_op_f32(-global1.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_6(func_5(_wgslsmith_f_op_f32(floor(1203f)), Struct_1(false, vec3<u32>(18203u, ~1u, ~global0.b.b.x)), func_4(func_1(min(global0.b.b.yz, vec2<u32>(global0.b.b.x, global0.b.b.x))))), 931f);
    let var_0 = ~abs(0i);
    global3 = array<vec4<u32>, 22>();
    var var_1 = !(!(!vec3<bool>(!global1.b.a, global2.x, !global1.b.a)));
    global3 = array<vec4<u32>, 22>();
    var var_2 = func_4(select(vec3<bool>(global1.b.a, false, global0.b.a), select(vec3<bool>(global2.x, var_0 <= 0i, global2.x), !select(vec3<bool>(var_1.x, global0.b.a, global2.x), vec3<bool>(global1.b.a, true, true), false), global2.x), vec3<bool>(false, all(!vec3<bool>(false, global2.x, false)), all(!vec3<bool>(false, global1.b.a, global2.x))))).b;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(1u, global1.b.b.x << (1u % 32u)) | ((global1.b.b.x & _wgslsmith_sub_u32(var_2.b.x, global1.b.b.x)) & _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.b.b.x, u_input.a), vec2<u32>(global1.b.b.x, 2144u)), ~4294967295u, ~var_2.b.x)), var_2.b, vec2<u32>(_wgslsmith_mod_u32(func_4(func_1(global0.b.b.xz)).c.b.x, ~93301u), global1.b.b.x), 0u, _wgslsmith_sub_vec4_u32(global3[_wgslsmith_index_u32(11722u, 22u)], vec4<u32>(~global1.b.b.x, 44481u, min(var_2.b.x, global1.b.b.x), 4294967295u)) >> (max(~(~vec4<u32>(59653u, global1.b.b.x, 53818u, u_input.a)), global3[_wgslsmith_index_u32(1u, 22u)]) % vec4<u32>(32u)));
}

