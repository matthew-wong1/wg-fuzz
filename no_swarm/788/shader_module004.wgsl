struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: vec2<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 2> = array<vec2<f32>, 2>(vec2<f32>(967f, -100f), vec2<f32>(753f, -1438f));

var<private> global1: Struct_1 = Struct_1(1u, 4294967295u, 2147483647i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_mod_u32(firstLeadingBit(u_input.b.x & 4294967295u), ~u_input.a.x), reverseBits(~_wgslsmith_dot_vec4_u32(u_input.a, u_input.a))), 79605u, ~0i);
    global1 = Struct_1(_wgslsmith_mult_u32(global1.a, ~12263u), 0u, 1i);
    global1 = Struct_1(countOneBits(~min(~u_input.b.x, 67472u)), ~4294967295u, 7956i);
    let var_1 = !select(!select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), false), vec4<bool>(true, false, true, true)), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true)), vec4<bool>(true, all(vec4<bool>(true, true, false, true)), all(vec2<bool>(false, true)), true)), vec4<bool>(all(vec2<bool>(true, true)), false, all(vec2<bool>(true, true)), ~var_0.c >= _wgslsmith_dot_vec3_i32(vec3<i32>(-35111i, global1.c, 25272i), vec3<i32>(-21757i, 2147483647i, -2147483647i))));
    var var_2 = Struct_1(~(~0u) >> (firstLeadingBit(u_input.a.x) % 32u), var_0.a, min(-2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-791i, var_0.c), vec2<i32>(63571i, 1i)), -vec2<i32>(0i, global1.c))) ^ 29836i);
    return 69724u;
}

fn func_2() -> Struct_1 {
    let var_0 = global1.b;
    let var_1 = select(vec4<i32>(-65334i, 2147483647i, global1.c, -19919i ^ ~(~global1.c)), vec4<i32>(firstTrailingBit(_wgslsmith_add_i32(global1.c, _wgslsmith_add_i32(global1.c, global1.c))), ~_wgslsmith_add_i32(-2147483647i << (global1.a % 32u), _wgslsmith_mult_i32(global1.c, global1.c)), -2147483647i, _wgslsmith_mod_i32(-5410i, -45632i)), vec4<bool>(true, true, true && !any(vec2<bool>(true, true)), all(vec3<bool>(true, true, true))));
    var var_2 = Struct_3(Struct_1(_wgslsmith_div_u32(global1.a, 5856u & func_3()), countOneBits(88582u), 30036i), Struct_1(_wgslsmith_add_u32(1147u, ~u_input.b.x), 4294967295u, min(-var_1.x, ~1i)));
    let var_3 = select(vec3<bool>(true, true, all(!select(vec2<bool>(false, false), vec2<bool>(false, true), true))), vec3<bool>(any(vec3<bool>(true, true, true)), false, _wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_div_u32(global1.a, u_input.a.x), var_2.a.b) <= _wgslsmith_mult_u32(func_3(), ~7565u)), false);
    global0 = array<vec2<f32>, 2>();
    return var_2.a;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<bool>) -> Struct_1 {
    global1 = func_2();
    global1 = func_2();
    let var_0 = Struct_2(func_2(), global1.c);
    var var_1 = var_0.a;
    global0 = array<vec2<f32>, 2>();
    return func_2();
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_3(func_4(Struct_3(func_2(), func_2()), Struct_3(func_2(), func_2()), select(vec3<bool>(all(vec4<bool>(true, true, true, false)), false, true), vec3<bool>(all(vec3<bool>(true, true, true)), true, 559f > arg_0), any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true))))), func_4(Struct_3(func_4(Struct_3(Struct_1(4294967295u, u_input.a.x, -23192i), Struct_1(global1.b, 4294967295u, global1.c)), Struct_3(Struct_1(global1.b, 56913u, global1.c), Struct_1(global1.b, u_input.a.x, global1.c)), vec3<bool>(false, false, true)), func_2()), Struct_3(func_4(Struct_3(Struct_1(u_input.a.x, 26896u, global1.c), Struct_1(4294967295u, u_input.b.x, 19293i)), Struct_3(Struct_1(global1.b, u_input.b.x, -22885i), Struct_1(14921u, 25505u, global1.c)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true))), func_2()), vec3<bool>(true, select(true, all(vec3<bool>(true, true, false)), true), true)));
    var var_1 = vec2<i32>(1i, (i32(-1i) * -27461i) | -var_0.b.c);
    global1 = Struct_1(firstLeadingBit(u_input.a.x), 4294967295u, -2147483647i);
    var var_2 = Struct_3(func_4(Struct_3(var_0.a, var_0.b), Struct_3(var_0.a, Struct_1(~4294967295u, global1.b | 6302u, 0i)), select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), vec3<bool>(false, true, true), true), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), vec3<bool>(any(vec3<bool>(false, false, true)), true, false))), Struct_1(~(~_wgslsmith_sub_u32(1u, global1.b)), _wgslsmith_mod_u32(~(~u_input.a.x), _wgslsmith_div_u32(9793u, var_0.a.a)), ~(~_wgslsmith_mult_i32(-8650i, 0i))));
    var var_3 = _wgslsmith_f_op_f32(ceil(arg_0));
    return Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 4293u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2.a.b, u_input.a.x, global1.b), u_input.a)), vec3<u32>(~2318u, 38959u & var_2.a.a, 1u)), vec3<u32>(u_input.b.x, u_input.a.x & func_2().a, global1.b)), 2581u & ~firstTrailingBit(~var_2.b.b), ((firstLeadingBit(global1.c) & 1i) >> ((~u_input.a.x >> (~64893u % 32u)) % 32u)) | 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(-1000f), global1.c);
    var var_1 = _wgslsmith_add_u32(firstLeadingBit(firstLeadingBit(_wgslsmith_mult_u32(72668u, global1.a))) ^ 2943u, ~142843u);
    global0 = array<vec2<f32>, 2>();
    let var_2 = !(!(~(-global1.c) >= (~global1.c >> (global1.a % 32u))));
    let var_3 = global0[_wgslsmith_index_u32(firstLeadingBit(~(~23036u)), 2u)];
    let var_4 = select(true || select(true, true, var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x))) <= _wgslsmith_f_op_f32(max(var_3.x, _wgslsmith_f_op_f32(min(var_3.x, 1030f)))), all(vec4<bool>(!any(vec3<bool>(false, true, false)), select(false, all(vec4<bool>(true, true, true, var_2)), -657f < var_3.x), false || var_2, all(vec3<bool>(false, var_2, false)))));
    var_1 = ~(~func_2().b);
    global0 = array<vec2<f32>, 2>();
    var var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(251f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(174f, 646f, -167f, var_3.x), vec4<f32>(var_3.x, var_3.x, var_3.x, var_3.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1355f, 259f, var_3.x)) + _wgslsmith_div_vec4_f32(vec4<f32>(-127f, var_3.x, -1299f, -1000f), vec4<f32>(-1510f, -1000f, 816f, -118f)))) * vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_3.x - 449f), _wgslsmith_f_op_f32(-var_3.x))), -124f, var_3.x, 1f)), global1.b, vec2<u32>(~(~u_input.a.x), u_input.b.x), vec3<u32>(1u, ~0u, ~_wgslsmith_dot_vec3_u32(u_input.a.yzw, u_input.b)));
}

