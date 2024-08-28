struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: u32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<f32>(1121f, -957f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: i32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-global0.a);
    let var_1 = -firstTrailingBit(2147483647i);
    var var_2 = reverseBits(var_1) != ~_wgslsmith_dot_vec2_i32(firstLeadingBit(~u_input.c), vec2<i32>(select(-15281i, 0i, false), _wgslsmith_mod_i32(-2147483647i, -26600i)));
    let var_3 = Struct_1(vec2<u32>(u_input.a.x, 0u), !(!vec2<bool>(select(false, false, false), all(vec3<bool>(true, false, true)))));
    global0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-937f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x))), global0.a.x));
    return Struct_3(vec2<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), -699f));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(488f)));
    return var_0;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -800f), _wgslsmith_f_op_f32(trunc(-2312f))) - global0.a);
    var_0 = vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1483f));
    global0 = func_2(i32(-1i) * -(~_wgslsmith_clamp_i32(arg_2, u_input.b, u_input.b)));
    global0 = func_2(-arg_2);
    var var_1 = Struct_2(arg_0, Struct_1(~(~u_input.a), arg_1.b), select(true, false, true), ~(~0u), abs(abs(vec3<u32>(~arg_1.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), vec3<u32>(0u, arg_1.a.x, 6522u)), 0u))));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a.x))))), _wgslsmith_div_f32(1619f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + global0.a.x) * var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())));
}

fn func_4(arg_0: vec3<f32>) -> Struct_1 {
    global0 = func_2(i32(-1i) * -u_input.b);
    global0 = func_2((_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.c.x, 2147483647i), vec3<i32>(u_input.b, -17934i, 25679i)) << (max(u_input.a.x, ~u_input.a.x) % 32u)) & ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, 0i, 1i) & vec4<i32>(u_input.b, 4848i, u_input.b, u_input.c.x), -vec4<i32>(1i, u_input.b, 2147483647i, u_input.b)));
    var var_0 = vec4<f32>(-1176f, _wgslsmith_f_op_f32(arg_0.x + arg_0.x), global0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(select(arg_0.x, global0.a.x, false))), _wgslsmith_f_op_vec3_f32(func_1(true, Struct_1(u_input.a, vec2<bool>(false, false)), ~countOneBits(1i))).x));
    var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 732f, 691f, -434f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -411f, -416f, 1888f), vec4<f32>(arg_0.x, arg_0.x, global0.a.x, arg_0.x)))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1501f, arg_0.x, arg_0.x, -130f))))), vec4<f32>(_wgslsmith_f_op_vec3_f32(func_1(true, Struct_1(~u_input.a, select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))), u_input.c.x)).x, arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(578f)), _wgslsmith_f_op_vec3_f32(func_1(true, Struct_1(vec2<u32>(4294967295u, 14348u), vec2<bool>(false, false)), u_input.c.x)).x)), 268f)));
    global0 = Struct_3(_wgslsmith_f_op_vec3_f32(func_1(u_input.c.x > u_input.b, Struct_1(firstTrailingBit(max(u_input.a, vec2<u32>(1u, 1u))), vec2<bool>(all(vec2<bool>(true, false)), false)), i32(-1i) * -(u_input.c.x ^ u_input.b))).xx);
    return Struct_1(u_input.a, vec2<bool>(false, !((1050f > global0.a.x) | any(vec3<bool>(true, false, true)))));
}

fn func_5(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = vec3<i32>(_wgslsmith_dot_vec2_i32(max(vec2<i32>(~u_input.b, 65588i & u_input.c.x), -vec2<i32>(u_input.c.x, u_input.c.x) & -vec2<i32>(u_input.b, u_input.c.x)), reverseBits(vec2<i32>(u_input.c.x, u_input.b) ^ vec2<i32>(18862i, u_input.b))), max(-2147483647i, _wgslsmith_div_i32(-1i, -(i32(-1i) * -59548i))), -2147483647i);
    var_0 = max(-_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, u_input.b >> (8171u % 32u)), vec3<i32>(min(var_0.x, -28824i), 1i, firstTrailingBit(var_0.x))), vec3<i32>(u_input.c.x, firstTrailingBit(u_input.b), u_input.b));
    var var_1 = global0.a.x;
    var_1 = 2520f;
    let var_2 = Struct_3(vec2<f32>(_wgslsmith_div_f32(global0.a.x, global0.a.x), -503f));
    return ~(~vec4<u32>(80201u, ~1u, _wgslsmith_div_u32(arg_1, arg_2.a.x), arg_2.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec4_u32(func_5(~reverseBits(~vec3<u32>(22409u, u_input.a.x, u_input.a.x)), max(~_wgslsmith_div_u32(4120u, 57028u), 1u), func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(true, Struct_1(u_input.a, vec2<bool>(true, true)), u_input.c.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, global0.a.x, global0.a.x))))), _wgslsmith_mult_vec4_u32(~select(vec4<u32>(u_input.a.x, 1u, 4294967295u, u_input.a.x) ^ vec4<u32>(u_input.a.x, 1u, 101214u, u_input.a.x), vec4<u32>(46591u, u_input.a.x, u_input.a.x, 21057u) ^ vec4<u32>(u_input.a.x, 0u, 15505u, u_input.a.x), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), false)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, ~u_input.a.x, 4294967295u ^ u_input.a.x, 78043u), abs(abs(vec4<u32>(76833u, u_input.a.x, u_input.a.x, 16536u))))));
    var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(17245u, _wgslsmith_clamp_u32(68603u, 43528u, u_input.a.x), func_4(vec3<f32>(_wgslsmith_f_op_f32(137f * -1000f), _wgslsmith_f_op_f32(step(global0.a.x, global0.a.x)), _wgslsmith_f_op_f32(-global0.a.x))).a.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(5128u, 1u), vec2<u32>(u_input.a.x, 4294967295u)) >> ((countOneBits(var_0.x) << (var_0.x % 32u)) % 32u)), ~(~vec4<u32>(~24866u, var_0.x, 4294967295u, 45937u)));
    var var_1 = func_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(414f + 759f))), _wgslsmith_f_op_f32(f32(-1f) * -370f), 1000f));
    let var_2 = Struct_2(var_1.b.x, Struct_1(vec2<u32>(46873u, 12201u), select(vec2<bool>(true, true), select(vec2<bool>(true, true), var_1.b, var_1.b.x), func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-192f, -410f, global0.a.x) + vec3<f32>(global0.a.x, -1908f, global0.a.x))).b.x)), global0.a.x > _wgslsmith_f_op_vec3_f32(func_1(!var_1.b.x, Struct_1(var_1.a, vec2<bool>(false, false)), -_wgslsmith_dot_vec2_i32(vec2<i32>(3651i, u_input.b), u_input.c))).x, 85256u | ~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(var_0.yxz, var_0.wyx), var_0.xwz), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, 48276u, var_1.a.x), var_0.xzw) | vec3<u32>(u_input.a.x, 25083u, 67611u), ~vec3<u32>(18324u, 0u, var_1.a.x)), ~reverseBits(vec3<u32>(2505u, u_input.a.x, var_0.x))));
    var var_3 = Struct_1(select(_wgslsmith_add_vec2_u32(var_0.yy, u_input.a), ~(~var_2.b.a), var_2.b.b), var_1.b);
    var var_4 = Struct_2(any(!select(!vec3<bool>(var_2.c, var_1.b.x, var_1.b.x), vec3<bool>(var_1.b.x, var_3.b.x, var_1.b.x), all(vec2<bool>(var_3.b.x, var_3.b.x)))), var_2.b, true, var_1.a.x, _wgslsmith_div_vec3_u32(reverseBits(select(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.a.x), vec3<u32>(5265u, u_input.a.x, 1u)), var_0.wzz, select(vec3<bool>(var_1.b.x, true, var_2.c), vec3<bool>(var_2.a, true, true), vec3<bool>(true, true, var_3.b.x)))), var_2.e));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(max(u_input.c, ~vec2<i32>(u_input.c.x, -2147483647i)), u_input.c), vec4<i32>(abs(-2147483647i), u_input.c.x, max(u_input.c.x, -1i), u_input.c.x), _wgslsmith_f_op_vec3_f32(func_1(any(vec2<bool>(var_2.b.b.x, var_4.b.b.x != true)), func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, global0.a.x, 411f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1183f, global0.a.x, global0.a.x)))), u_input.b)).xy);
}

