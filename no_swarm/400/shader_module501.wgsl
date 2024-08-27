struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<bool>, 9> = array<vec4<bool>, 9>(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<f32>) -> bool {
    global1 = array<vec4<bool>, 9>();
    global0 = Struct_1(countOneBits(global0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(abs(-732f)), -961f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x + arg_0.x) + _wgslsmith_f_op_f32(f32(-1f) * -607f)))), global0.c, global1[_wgslsmith_index_u32(0u >> (u_input.c.x % 32u), 9u)]);
    let var_0 = !(!any(global0.d.wy));
    var var_1 = select(u_input.b.yxw, u_input.b.zwz, all(vec2<bool>(true, global0.d.x)) == true);
    global1 = array<vec4<bool>, 9>();
    return all(select(global0.d.xwx, select(select(global0.d.ywz, vec3<bool>(global0.d.x, false, false), vec3<bool>(false, true, false)), global0.d.wzy, true), select(all(!vec3<bool>(false, false, global0.d.x)), !var_0 && true, !global0.d.x)));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1046f, _wgslsmith_f_op_f32(round(-501f)), 1004f, global0.b.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1677f, 1526f, 270f) + _wgslsmith_f_op_vec4_f32(trunc(global0.b))))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.x), global0.b.x);
    var var_2 = Struct_1(~_wgslsmith_dot_vec4_i32(countOneBits(u_input.b), vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.b, u_input.d), -14094i << (1u % 32u), firstLeadingBit(u_input.d.x), i32(-1i) * -44233i)), global0.b, vec2<u32>(global0.c.x, 4294967295u), !vec4<bool>(global0.d.x, reverseBits(global0.c.x) == ~u_input.c.x, false, func_3(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_1), vec2<f32>(var_1, global0.b.x)))));
    var var_3 = !vec3<bool>(select(!(global0.b.x < var_0.x), !(var_2.d.x | true), all(var_2.d) & any(vec2<bool>(global0.d.x, false))), select(any(vec2<bool>(global0.d.x, true)), global0.d.x, any(var_2.d.wxw)) & ((7739i ^ global0.a) <= 1i), global0.d.x);
    var_3 = !vec3<bool>(!var_3.x, any(select(var_2.d.xy, global0.d.xw, !var_2.d.wx)), any(global0.d));
    return Struct_2(~select(~(vec3<i32>(-11918i, 1i, var_2.a) << (u_input.c % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(~u_input.d.xxz, u_input.b.yzw), any(select(vec2<bool>(var_3.x, false), vec2<bool>(global0.d.x, true), vec2<bool>(false, true)))), Struct_1(-(-u_input.d.x >> (reverseBits(global0.c.x) % 32u)), vec4<f32>(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-var_1), var_2.d.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, -824f) - _wgslsmith_f_op_f32(step(730f, var_1))), _wgslsmith_f_op_f32(f32(-1f) * -357f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(f32(-1f) * -141f), var_2.d.x))), ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 14912u), _wgslsmith_mult_vec2_u32(var_2.c, vec2<u32>(56295u, global0.c.x))), vec4<bool>(false, true, true, _wgslsmith_div_u32(var_2.c.x, 68244u) != 1u)), Struct_1(reverseBits(1i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(947f, 701f, 1446f, var_1), var_2.b), vec4<f32>(678f, var_1, -219f, global0.b.x), global0.c.x > 54114u)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(250f, 754f, global0.b.x, var_1))), ~global0.c, var_2.d));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec2<i32>, arg_3: i32) -> u32 {
    let var_0 = func_2();
    global1 = array<vec4<bool>, 9>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -473f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.b.x)) - 1190f), _wgslsmith_f_op_f32(func_2().b.b.x + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.b.x), _wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(select(1427f, _wgslsmith_f_op_f32(-1273f - 1611f), !var_0.b.d.x))))));
    global1 = array<vec4<bool>, 9>();
    let var_2 = 92939u;
    return ~4294967295u | var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec3<i32>(abs(24898i ^ u_input.d.x) >> ((func_1(global0.d.wz, vec4<u32>(4368u, 1u, u_input.a.x, 4294967295u), vec2<i32>(global0.a, 0i), global0.a) & (62849u | u_input.c.x)) % 32u), -33600i, 0i), Struct_1(reverseBits(586i), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(func_2().c.b, global0.b)))), vec2<u32>(min(5447u, ~global0.c.x), global0.c.x ^ 4294967295u), !global1[_wgslsmith_index_u32(4294967295u, 9u)]), func_2().b);
    let var_1 = _wgslsmith_f_op_f32(abs(global0.b.x));
    var_0 = func_2();
    var var_2 = vec2<bool>(global0.d.x, !(!func_2().c.d.x));
    var var_3 = func_2().c;
    var_0 = Struct_2(-vec3<i32>(~var_0.a.x | ~u_input.b.x, ~(~1i), -21644i), func_2().c, Struct_1(var_0.b.a, _wgslsmith_f_op_vec4_f32(global0.b - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-603f, global0.b.x, 784f, 1279f)) + global0.b)), ~(~vec2<u32>(11869u, 0u)), !global0.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 1u, global0.c.x, 4294967295u), ~(vec4<u32>(var_3.c.x, global0.c.x, var_0.b.c.x, var_0.b.c.x) ^ vec4<u32>(var_0.c.c.x, 1u, 0u, global0.c.x)), abs(vec4<u32>(17871u, 0u, 83049u, 4294967295u))), ~countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 8080u, u_input.a.x, u_input.c.x), vec4<u32>(var_3.c.x, 126447u, u_input.a.x, 4294967295u), vec4<u32>(33462u, 3646u, u_input.a.x, 1u)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x + -2042f) - var_1), -1298f, global0.b.x));
}

