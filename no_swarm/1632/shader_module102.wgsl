struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 18> = array<vec2<f32>, 18>(vec2<f32>(1493f, 144f), vec2<f32>(-2836f, 1265f), vec2<f32>(1438f, -109f), vec2<f32>(-391f, -651f), vec2<f32>(136f, -1084f), vec2<f32>(671f, -291f), vec2<f32>(101f, -373f), vec2<f32>(-1694f, 2079f), vec2<f32>(-1548f, -441f), vec2<f32>(-111f, -715f), vec2<f32>(-2191f, 1437f), vec2<f32>(595f, -534f), vec2<f32>(-441f, -697f), vec2<f32>(-516f, -796f), vec2<f32>(-671f, 1624f), vec2<f32>(-1084f, -757f), vec2<f32>(1462f, -684f), vec2<f32>(524f, -127f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(944f + -1435f)), 1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -1346f))))), 1f));
    global0 = array<vec2<f32>, 18>();
    return select(select(!vec3<bool>(arg_0.a.x, true, true), select(vec3<bool>(true, true, !arg_0.a.x), select(select(vec3<bool>(arg_0.a.x, false, false), vec3<bool>(arg_0.a.x, true, true), vec3<bool>(true, arg_0.a.x, true)), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), !vec3<bool>(arg_0.a.x, false, true)), false), select(vec3<bool>(true && !arg_0.a.x, true, arg_0.a.x), select(select(!vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x), vec3<bool>(false, false, true), vec3<bool>(true, true, arg_0.a.x)), !(!vec3<bool>(false, arg_0.a.x, arg_0.a.x)), vec3<bool>(arg_0.a.x, !arg_0.a.x, arg_0.a.x)), !vec3<bool>(arg_0.d.x != -18281i, arg_0.a.x, var_0.x < -697f)), !arg_0.a.x);
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_1(vec2<bool>(true, all(func_3(Struct_1(vec2<bool>(false, false), 4294967295u, vec2<i32>(-1i, 15579i), vec2<i32>(u_input.d, 20680i)))) | true), ~65818u, vec2<i32>(-1i, countOneBits(_wgslsmith_mod_i32(~u_input.d, -u_input.d))), vec2<i32>(~2147483647i, u_input.d));
    global0 = array<vec2<f32>, 18>();
    let var_1 = select(select(!select(vec4<bool>(true, var_0.a.x, var_0.a.x, false), !vec4<bool>(var_0.a.x, false, var_0.a.x, var_0.a.x), !vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x)), select(vec4<bool>(any(var_0.a), var_0.d.x > 2147483647i, false, var_0.a.x | false), vec4<bool>(u_input.b < u_input.c, false, any(vec4<bool>(var_0.a.x, var_0.a.x, true, false)), true), !vec4<bool>(var_0.a.x, true, true, false)), vec4<bool>(false, -31002i >= ~u_input.d, (4294967295u << (0u % 32u)) <= _wgslsmith_sub_u32(0u, var_0.b), true)), select(vec4<bool>(true, var_0.a.x, all(!vec4<bool>(false, var_0.a.x, var_0.a.x, true)), any(func_3(var_0))), select(select(select(vec4<bool>(false, false, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true), true), select(vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(false, var_0.a.x, var_0.a.x, false), vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x)), select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x), vec4<bool>(var_0.a.x, true, var_0.a.x, false))), vec4<bool>(true | var_0.a.x, false, select(var_0.a.x, true, false), false), any(!vec3<bool>(var_0.a.x, false, false))), select(vec4<bool>(select(true, false, true), true, var_0.a.x, all(vec2<bool>(false, var_0.a.x))), vec4<bool>(var_0.a.x, true, var_0.a.x, any(vec2<bool>(var_0.a.x, false))), select(!vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x), !vec4<bool>(true, false, false, var_0.a.x), !vec4<bool>(true, true, false, var_0.a.x)))), select(select(select(!vec4<bool>(var_0.a.x, var_0.a.x, false, true), select(vec4<bool>(false, true, false, var_0.a.x), vec4<bool>(false, true, var_0.a.x, false), var_0.a.x), true), !select(vec4<bool>(var_0.a.x, var_0.a.x, true, true), vec4<bool>(true, false, false, false), vec4<bool>(var_0.a.x, var_0.a.x, true, false)), select(select(vec4<bool>(var_0.a.x, false, false, false), vec4<bool>(var_0.a.x, false, var_0.a.x, true), vec4<bool>(var_0.a.x, true, false, false)), !vec4<bool>(false, false, var_0.a.x, false), false)), vec4<bool>(~1u >= (var_0.b << (var_0.b % 32u)), var_0.a.x, var_0.a.x, true), all(!select(vec4<bool>(true, var_0.a.x, true, var_0.a.x), vec4<bool>(true, true, true, false), vec4<bool>(var_0.a.x, true, true, false)))));
    global0 = array<vec2<f32>, 18>();
    global0 = array<vec2<f32>, 18>();
    return func_3(var_0);
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: u32, arg_3: u32) -> Struct_1 {
    global0 = array<vec2<f32>, 18>();
    global0 = array<vec2<f32>, 18>();
    global0 = array<vec2<f32>, 18>();
    var var_0 = !select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), !func_2()), !vec3<bool>(1i >= arg_0, false, true));
    let var_1 = Struct_1(!func_3(Struct_1(vec2<bool>(true, true), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, arg_3, 4294967295u), vec4<u32>(arg_1, arg_2, arg_2, 3832u)), vec2<i32>(u_input.d, 0i), _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, arg_0), vec2<i32>(u_input.d, arg_0)))).xx, _wgslsmith_div_u32(1u, arg_1) << ((~4294967295u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(6944u, 35672u, 44648u), min(vec3<u32>(32310u, 1u, arg_2), vec3<u32>(1u, 4294967295u, arg_2)))) % 32u), countOneBits(-countOneBits(vec2<i32>(u_input.d, arg_0))) >> (vec2<u32>(72714u, 30039u) % vec2<u32>(32u)), vec2<i32>(~reverseBits(38434i), countOneBits(i32(-1i) * -1i)));
    return Struct_1(vec2<bool>(_wgslsmith_add_i32(select(-1i, -3382i, var_0.x), 80943i) > ~49708i, true), ~(~43907u), vec2<i32>(max(-_wgslsmith_sub_i32(-1i, var_1.d.x), -1i), -_wgslsmith_div_i32(countOneBits(u_input.d), u_input.d)), ~var_1.d);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<bool>) -> vec4<bool> {
    let var_0 = min(1u, u_input.b);
    let var_1 = func_1(reverseBits(~1i >> (arg_2.b % 32u)), 5220u, _wgslsmith_add_u32(~32814u, u_input.b), 46889u);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-910f)));
    global0 = array<vec2<f32>, 18>();
    global0 = array<vec2<f32>, 18>();
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 18>();
    let var_0 = firstTrailingBit(u_input.d);
    let var_1 = Struct_1(vec2<bool>(any(func_4(Struct_1(vec2<bool>(true, true), u_input.c, vec2<i32>(var_0, u_input.d), vec2<i32>(-10642i, -1i)), Struct_2(vec3<i32>(u_input.d, 1i, -10617i), vec4<bool>(true, true, true, true)), func_1(u_input.d, u_input.c, u_input.a.x, u_input.a.x), vec2<bool>(false, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1204f)) + -1520f) != 1000f), min(23282u, _wgslsmith_mod_u32(1u >> (firstTrailingBit(u_input.a.x) % 32u), _wgslsmith_mod_u32(u_input.b, reverseBits(4294967295u)))), countOneBits(min(-vec2<i32>(48407i, -24117i), vec2<i32>(var_0, -9964i))) ^ reverseBits(select(~vec2<i32>(-12731i, var_0), -vec2<i32>(1i, u_input.d), vec2<bool>(true, true))), vec2<i32>(1i, -(u_input.d & -5283i)));
    let var_2 = countOneBits(u_input.a);
    let var_3 = Struct_1(var_1.a, var_1.b & ~1u, firstLeadingBit(_wgslsmith_clamp_vec2_i32(~abs(vec2<i32>(var_1.c.x, -46755i)), min(var_1.c, select(vec2<i32>(var_1.d.x, var_0), var_1.d, var_1.a)), vec2<i32>(u_input.d, countOneBits(var_1.c.x)))), _wgslsmith_sub_vec2_i32(var_1.d, var_1.c));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1510f, 334f))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(~var_3.b, 18u)])))));
}

