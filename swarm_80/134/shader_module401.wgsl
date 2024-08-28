struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 14>;

var<private> global1: array<f32, 26>;

var<private> global2: f32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    let var_0 = Struct_3(vec3<i32>(-2055i, _wgslsmith_sub_i32(~_wgslsmith_mod_i32(39972i, 26336i), -1i >> ((u_input.a | u_input.a) % 32u)), i32(-1i) * -2147483647i), select(select(arg_0.xzz, vec3<bool>(true, arg_0.x || arg_0.x, all(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x))), false), arg_0.yyz, vec3<bool>(true, all(vec3<bool>(arg_0.x, true, false)), arg_0.x)), 378f);
    let var_1 = reverseBits(var_0.a);
    var var_2 = ~_wgslsmith_mult_i32(1i, 2147483647i ^ _wgslsmith_clamp_i32(-var_1.x, var_0.a.x, 0i));
    global1 = array<f32, 26>();
    var_2 = ~(~var_0.a.x);
    return -174f;
}

fn func_3() -> vec4<f32> {
    let var_0 = true;
    var var_1 = Struct_2(Struct_1(select(vec2<bool>(false, true), vec2<bool>(true, var_0), select(vec2<bool>(var_0, true), !vec2<bool>(var_0, var_0), false || var_0)), _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(0u, u_input.a, 1u) & vec3<u32>(1u, u_input.a, u_input.a)), vec3<u32>(min(106026u, u_input.a), _wgslsmith_mod_u32(u_input.a, 4294967295u), countOneBits(u_input.a))), _wgslsmith_mult_u32(12702u, _wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.a, u_input.a), vec2<u32>(39358u, 40826u)), vec2<u32>(u_input.a, 5278u)))), 38298u, Struct_1(vec2<bool>(false, true), vec3<u32>(u_input.a, min(1u, 1u), u_input.a), 1u), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~(~4294967295u), 26u)]), select(true, false, var_0));
    let var_2 = Struct_3(abs(vec3<i32>(1i, 1i, 1i) << (_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a, var_1.c.c, 77009u), vec3<u32>(u_input.a, 0u, 1u), vec3<u32>(4294967295u, 15215u, 0u)) % vec3<u32>(32u))), select(select(vec3<bool>(var_1.e || true, false, true), vec3<bool>(true, false, true), !select(vec3<bool>(var_0, var_0, var_1.a.a.x), vec3<bool>(true, false, var_0), false)), !select(select(vec3<bool>(var_0, var_1.e, true), vec3<bool>(true, var_0, false), vec3<bool>(true, false, var_0)), !vec3<bool>(var_0, var_0, true), !vec3<bool>(var_1.a.a.x, true, var_1.e)), select(!select(vec3<bool>(var_1.a.a.x, var_1.e, false), vec3<bool>(var_0, true, true), vec3<bool>(true, var_1.e, var_0)), !vec3<bool>(false, true, var_1.e), select(!vec3<bool>(true, var_1.a.a.x, true), select(vec3<bool>(true, false, false), vec3<bool>(var_1.a.a.x, var_1.c.a.x, var_1.a.a.x), true), var_0))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 26u)] * _wgslsmith_f_op_f32(max(634f, global1[_wgslsmith_index_u32(var_1.a.b.x, 26u)]))), global1[_wgslsmith_index_u32(~(~u_input.a), 26u)]))));
    let var_3 = -_wgslsmith_mult_i32(var_2.a.x, var_2.a.x);
    let var_4 = Struct_1(select(var_2.b.xz, select(select(select(var_1.a.a, vec2<bool>(var_2.b.x, true), var_2.b.x), select(vec2<bool>(false, var_0), var_2.b.xx, true), var_2.a.x < 0i), vec2<bool>(var_2.a.x > var_3, true && var_0), !select(vec2<bool>(true, var_1.e), var_2.b.yy, var_1.c.a)), var_2.b.zz), ~_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, u_input.a, 1u)) ^ vec3<u32>(18235u, u_input.a, u_input.a), var_1.a.b), _wgslsmith_dot_vec4_u32(min(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_1.a.c, u_input.a, var_1.b), vec4<u32>(var_1.c.b.x, 36271u, 0u, 7303u)), firstLeadingBit(vec4<u32>(var_1.b, u_input.a, 4294967295u, var_1.c.b.x) | vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u))), ~vec4<u32>(117716u, 53119u, u_input.a, u_input.a) << ((vec4<u32>(4294967295u, u_input.a, 32746u, 39606u) & select(vec4<u32>(4294967295u, u_input.a, var_1.c.c, 99345u), vec4<u32>(4294967295u, 5178u, 4294967295u, 0u), vec4<bool>(true, false, false, var_0))) % vec4<u32>(32u))));
    return vec4<f32>(-398f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(25216u, 26u)]))), _wgslsmith_f_op_f32(var_2.c - 1f)), -1056f, 909f);
}

fn func_4(arg_0: vec4<f32>, arg_1: f32) -> Struct_2 {
    let var_0 = -501f;
    global0 = array<vec4<bool>, 14>();
    var var_1 = ~(~select(max(vec4<i32>(-2771i, -1i, 2147483647i, -2590i), vec4<i32>(1i, -17918i, 2147483647i, 20674i)) | firstTrailingBit(vec4<i32>(0i, 0i, -30131i, 2147483647i)), vec4<i32>(_wgslsmith_mod_i32(-2851i, -44447i), reverseBits(32818i), ~(-1i), ~0i), false));
    global0 = array<vec4<bool>, 14>();
    global1 = array<f32, 26>();
    return Struct_2(Struct_1(select(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), -501f <= _wgslsmith_f_op_f32(arg_1 - 1789f)), min(~vec3<u32>(u_input.a, 46093u, 1u), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 4294967295u, 34011u)), vec3<u32>(u_input.a, u_input.a, 0u) << (vec3<u32>(1u, 0u, 19974u) % vec3<u32>(32u)), vec3<u32>(4294967295u, 4294967295u, 1u))), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(1u, 89679u)))), ~u_input.a, Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, ~0u, u_input.a), ~countOneBits(vec3<u32>(4294967295u, u_input.a, 0u))), _wgslsmith_mod_u32(u_input.a, select(_wgslsmith_mod_u32(8084u, u_input.a), _wgslsmith_div_u32(4294967295u, u_input.a), true))), _wgslsmith_f_op_f32(-var_0), true);
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: f32, arg_3: i32) -> Struct_2 {
    global0 = array<vec4<bool>, 14>();
    global1 = array<f32, 26>();
    let var_0 = arg_0;
    var var_1 = -528f;
    let var_2 = _wgslsmith_f_op_f32(step(var_0.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-831f * arg_1), -1699f))));
    return func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec4<bool>(false, true, arg_0.b.x, arg_0.b.x))) * 537f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-356f)) - _wgslsmith_f_op_f32(-2361f - var_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 26u)] - 395f))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(428f, -1000f, var_0.c, var_0.c), vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 26u)], -1350f, -226f, var_0.c)), vec4<f32>(var_0.c, var_0.c, var_0.c, 143f)), _wgslsmith_f_op_vec4_f32(func_3())))), 971f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(firstTrailingBit(49249u >> (1u % 32u)), 14u)];
    var var_1 = Struct_1(var_0.zz, max(vec3<u32>(0u, reverseBits(u_input.a), u_input.a), abs(~_wgslsmith_div_vec3_u32(vec3<u32>(3335u, u_input.a, u_input.a), vec3<u32>(u_input.a, 1u, 8982u)))), ~u_input.a);
    global0 = array<vec4<bool>, 14>();
    let var_2 = func_1(Struct_3(vec3<i32>(_wgslsmith_div_i32(0i, reverseBits(-42683i)), 1i, select(2147483647i, -1i, true) << (21873u % 32u)), !vec3<bool>(any(vec2<bool>(true, false)), !var_1.a.x, true), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~var_1.b.x, 26u)] * -495f)), 464f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 26u)]) - 105f), -_wgslsmith_div_i32(~0i, countOneBits(i32(-1i) * -4707i)));
    let var_3 = 2147483647i;
    var var_4 = Struct_3(~firstTrailingBit(vec3<i32>(21126i << (0u % 32u), var_3, _wgslsmith_div_i32(4580i, -18375i))), !select(vec3<bool>(true, var_0.x, any(vec4<bool>(true, var_1.a.x, var_0.x, false))), var_0.zww, _wgslsmith_clamp_u32(34586u, var_1.c, var_2.c.c) > ~39764u), func_4(vec4<f32>(984f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.d, var_2.d)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_2.d, global1[_wgslsmith_index_u32(1u, 26u)]), _wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(231u, 14u)])))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_1.c, 26u)] * _wgslsmith_f_op_f32(max(1168f, var_2.d)))), _wgslsmith_f_op_f32(469f * -1098f)).d);
    var var_5 = func_1(Struct_3(vec3<i32>(~(-var_3), var_3, _wgslsmith_mult_i32(i32(-1i) * -1i, countOneBits(var_4.a.x))), vec3<bool>(var_2.c.a.x, false, var_2.a.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_4.c, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_2.b, 26u)]))))), 720f, var_2.d, -1i).c;
    var var_6 = func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-383f + -1156f), _wgslsmith_f_op_f32(abs(360f)), _wgslsmith_f_op_f32(-var_2.d), _wgslsmith_f_op_f32(round(-299f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_4.c)), _wgslsmith_f_op_f32(2479f - var_2.d), _wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(var_2.c.c, 14u)])), _wgslsmith_f_op_f32(-var_2.d)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_4.c, 312f, 1000f, 262f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.c + 841f))), var_4.c))).c;
    var_5 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_4.c, global1[_wgslsmith_index_u32(var_1.b.x, 26u)], 441f))) + vec3<f32>(-1358f, 1405f, global1[_wgslsmith_index_u32(4294967295u, 26u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(174f, var_4.c, 166f), vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 26u)], global1[_wgslsmith_index_u32(var_1.c, 26u)], -912f), vec3<bool>(var_6.a.x, false, var_5.a.x))) - _wgslsmith_f_op_vec4_f32(func_3()).zzy)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(var_5.b.x, 14u)])), 828f, _wgslsmith_f_op_f32(-var_4.c))))));
}

