struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: f32;

var<private> global2: array<vec4<u32>, 19>;

var<private> global3: vec2<bool>;

var<private> global4: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(647f, vec3<f32>(1000f, 2536f, -1486f), 2147483647i, vec4<bool>(true, false, false, false)), Struct_1(-837f, vec3<f32>(1050f, -2100f, 308f), -4284i, vec4<bool>(false, true, true, false)), Struct_1(2247f, vec3<f32>(-432f, -1586f, -152f), -1i, vec4<bool>(true, false, true, true)), Struct_1(159f, vec3<f32>(1592f, 148f, -498f), 0i, vec4<bool>(true, false, true, true)), Struct_1(-632f, vec3<f32>(-1325f, -461f, -1554f), 2147483647i, vec4<bool>(false, true, false, true)), Struct_1(301f, vec3<f32>(-1297f, -813f, -733f), -1581i, vec4<bool>(false, false, true, false)), Struct_1(607f, vec3<f32>(562f, 573f, 1583f), 1i, vec4<bool>(false, true, true, true)), Struct_1(677f, vec3<f32>(1000f, 265f, -1510f), 1i, vec4<bool>(false, true, true, false)), Struct_1(-476f, vec3<f32>(483f, 462f, 1000f), 2147483647i, vec4<bool>(false, false, false, true)), Struct_1(-678f, vec3<f32>(-1000f, -180f, 314f), i32(-2147483648), vec4<bool>(true, false, true, false)), Struct_1(-1000f, vec3<f32>(1000f, -237f, 355f), -1i, vec4<bool>(true, false, true, true)), Struct_1(-527f, vec3<f32>(-937f, 789f, 507f), -1i, vec4<bool>(true, true, false, true)), Struct_1(258f, vec3<f32>(-1307f, 237f, 1094f), -64658i, vec4<bool>(false, true, true, true)), Struct_1(-647f, vec3<f32>(128f, -271f, 1275f), 2147483647i, vec4<bool>(false, true, false, true)), Struct_1(1000f, vec3<f32>(1920f, 473f, -973f), 79769i, vec4<bool>(true, false, false, false)), Struct_1(-1000f, vec3<f32>(-820f, 475f, -741f), 1i, vec4<bool>(false, false, false, false)), Struct_1(-104f, vec3<f32>(564f, -804f, 2236f), i32(-2147483648), vec4<bool>(false, true, true, true)), Struct_1(1173f, vec3<f32>(184f, 1357f, 335f), 1i, vec4<bool>(true, true, true, false)), Struct_1(606f, vec3<f32>(-1001f, -1062f, -564f), 23972i, vec4<bool>(true, false, false, true)), Struct_1(1741f, vec3<f32>(-1677f, -1241f, -747f), -1i, vec4<bool>(true, false, false, true)), Struct_1(429f, vec3<f32>(-524f, -1763f, -1202f), 1i, vec4<bool>(true, false, true, false)), Struct_1(1647f, vec3<f32>(716f, -432f, 759f), 2147483647i, vec4<bool>(false, false, true, false)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2() -> vec2<i32> {
    var var_0 = ~vec4<i32>(u_input.a, 1i, ~(~(-1i)), u_input.a);
    global4 = array<Struct_1, 22>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-258f - -760f))), -554f, 195f)));
    global2 = array<vec4<u32>, 19>();
    global2 = array<vec4<u32>, 19>();
    return _wgslsmith_sub_vec2_i32(var_0.zw, select(var_0.xx, _wgslsmith_sub_vec2_i32(abs(var_0.zy), ~var_0.yy) | reverseBits(vec2<i32>(1i, u_input.a)), vec2<bool>(true, global3.x)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = global4[_wgslsmith_index_u32(136950u, 22u)];
    let var_1 = var_0.d.x;
    let var_2 = _wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(abs(arg_0.c), _wgslsmith_div_i32(10588i, -2147483647i))) << (_wgslsmith_clamp_vec2_u32(~abs(vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(61260u, 19u)], global2[_wgslsmith_index_u32(0u, 19u)]), max(1732u, 43539u)), select(vec2<u32>(12059u, 24332u), countOneBits(vec2<u32>(0u, 4294967295u)), var_0.d.x)) % vec2<u32>(32u)), vec2<i32>(7249i, min(u_input.a, _wgslsmith_sub_i32(2147483647i, ~arg_0.c))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-984f - arg_0.a), 1923f))), vec3<f32>(-1527f, _wgslsmith_f_op_f32(step(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - arg_0.a) + -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) + -1000f), -155f)), _wgslsmith_sub_i32(u_input.a, -47825i), arg_0.d);
    global3 = vec2<bool>(var_0.d.x, true);
    return _wgslsmith_mult_i32(0i, u_input.a);
}

fn func_1() -> f32 {
    global0 = abs(~1i);
    var var_0 = global4[_wgslsmith_index_u32(82634u, 22u)];
    var var_1 = global4[_wgslsmith_index_u32((min(0u, 1u) >> ((~_wgslsmith_dot_vec2_u32(vec2<u32>(9414u, 4294967295u), vec2<u32>(4294967295u, 1u)) & 3105u) % 32u)) << (1u % 32u), 22u)];
    let var_2 = _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(-(~(vec2<i32>(-2147483647i, var_0.c) >> (vec2<u32>(0u, 9108u) % vec2<u32>(32u)))), func_2()), vec2<i32>(func_3(Struct_1(-799f, _wgslsmith_f_op_vec3_f32(exp2(var_1.b)), ~(-1i), !vec4<bool>(var_1.d.x, false, var_0.d.x, global3.x))), var_1.c));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(351f, -507f, global3.x)) * -750f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-510f * _wgslsmith_f_op_f32(f32(-1f) * -908f)), 900f))));
    global1 = -2165f;
    let var_0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), 1f)), vec3<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(select(-376f, -296f, any(vec3<bool>(true, global3.x, false))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1108f)) * _wgslsmith_f_op_f32(486f - -543f)), -1374f), -263f), 3111i, !select(vec4<bool>(true, true, false, !global3.x), vec4<bool>(!global3.x, global3.x, false, global3.x), select(vec4<bool>(false, global3.x, false, global3.x), !vec4<bool>(false, global3.x, global3.x, true), select(vec4<bool>(global3.x, global3.x, global3.x, false), vec4<bool>(global3.x, false, global3.x, true), global3.x))));
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.b.x, var_0.b.x, 494f), var_0.b)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b.x, -695f, var_0.a), vec3<f32>(var_0.a, -1082f, var_0.a), true))) * vec3<f32>(-349f, _wgslsmith_f_op_f32(max(var_0.a, -1000f)), _wgslsmith_f_op_f32(-var_0.a))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x), vec3<f32>(-655f, var_0.a, 2407f), vec3<bool>(false, false, var_0.d.x))))))));
    var var_2 = vec3<i32>(~_wgslsmith_mod_i32(~u_input.a, -1i), ~(-var_0.c), _wgslsmith_dot_vec4_i32(countOneBits(-vec4<i32>(u_input.a, 2147483647i, 0i, u_input.a)), vec4<i32>(var_0.c, var_0.c, ~4184i, var_0.c))) ^ (_wgslsmith_div_vec3_i32(vec3<i32>(max(1i, -5370i), func_2().x, _wgslsmith_clamp_i32(-2912i, var_0.c, u_input.a)), abs(vec3<i32>(-18451i, 0i, 1i))) | (reverseBits(-vec3<i32>(u_input.a, var_0.c, 45556i)) ^ -select(vec3<i32>(0i, 1i, var_0.c), vec3<i32>(2147483647i, -2147483647i, u_input.a), var_0.d.xxx)));
    let var_3 = var_2.xx;
    var var_4 = _wgslsmith_div_i32(var_2.x, _wgslsmith_clamp_i32(u_input.a, var_0.c, select(var_2.x, min(var_2.x, u_input.a), var_0.d.x))) <= _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32((vec3<i32>(-2147483647i, var_2.x, var_0.c) << (vec3<u32>(1u, 35716u, 0u) % vec3<u32>(32u))) ^ ~vec3<i32>(-1i, var_3.x, u_input.a), reverseBits(vec3<i32>(2147483647i, -7949i, var_0.c))), -vec3<i32>(-1i, 28596i, ~var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_2.x, 2147483647i) << (vec2<u32>(1u, _wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(13800u, 19u)], vec4<u32>(8804u, 20679u, 32731u, 32234u)) >> (_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(9718u, 19u)], vec4<u32>(1u, 1u, 0u, 78942u)) % 32u)) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_vec3_f32(var_0.b - _wgslsmith_f_op_vec3_f32(-var_0.b)), 33701i, _wgslsmith_f_op_f32(-1423f - _wgslsmith_f_op_f32(min(var_0.a, var_0.b.x))));
}

