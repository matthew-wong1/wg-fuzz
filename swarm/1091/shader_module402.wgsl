struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = Struct_2(global0.a, global0.b);
    var var_1 = ~(~vec2<u32>(4294967295u, ~_wgslsmith_mod_u32(u_input.a, u_input.b.x)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))), arg_0, _wgslsmith_f_op_f32(246f + global0.b.c))));
    return ~11374u ^ u_input.b.x;
}

fn func_3() -> f32 {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(~global0.b.a, 1i, 55379i), vec3<i32>(-1i, global0.b.a, select(global0.b.a, global0.b.a, !global0.b.b.x))), global0.b.a, global0.b.a);
    var var_1 = vec3<bool>(global0.b.b.x, all(!global0.b.b), true);
    global0 = Struct_2(global0.a, global0.b);
    var_1 = vec3<bool>(!(!global0.b.b.x), false, true);
    global0 = Struct_2(_wgslsmith_f_op_f32(trunc(global0.a)), global0.b);
    return _wgslsmith_f_op_f32(select(107f, -270f, var_1.x));
}

fn func_2(arg_0: vec2<u32>) -> Struct_2 {
    global0 = Struct_2(_wgslsmith_f_op_f32(252f + -1442f), Struct_1(_wgslsmith_mod_i32(global0.b.a, 1i & global0.b.a), select(vec3<bool>(!global0.b.b.x, !global0.b.b.x, true), select(!vec3<bool>(global0.b.b.x, global0.b.b.x, global0.b.b.x), vec3<bool>(true, true, false), select(global0.b.b, vec3<bool>(true, false, global0.b.b.x), global0.b.b)), true), -614f));
    var var_0 = Struct_1(2147483647i >> ((37302u << (~(8350u ^ u_input.b.x) % 32u)) % 32u), global0.b.b, _wgslsmith_div_f32(760f, _wgslsmith_f_op_f32(func_3())));
    let var_1 = global0.b.b;
    var var_2 = ~(~(~_wgslsmith_div_vec3_u32(~vec3<u32>(arg_0.x, 0u, 0u), ~vec3<u32>(3402u, u_input.b.x, u_input.b.x))));
    let var_3 = ~firstTrailingBit(global0.b.a) | var_0.a;
    return Struct_2(_wgslsmith_f_op_f32(-global0.a), global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_2(~vec2<u32>(func_1(_wgslsmith_div_f32(global0.b.c, -577f)), 1u));
    global0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(150f, _wgslsmith_f_op_f32(global0.a - global0.b.c)))) * global0.a), func_2(firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(3586u, 17517u), abs(u_input.b)))).b);
    global0 = Struct_2(_wgslsmith_f_op_f32(trunc(global0.a)), global0.b);
    global0 = func_2(u_input.b);
    let var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(global0.b.a, vec3<bool>(false, !func_2(u_input.b).b.b.x, false), global0.a));
    global0 = var_0;
    let var_1 = Struct_3(_wgslsmith_sub_i32(_wgslsmith_add_i32(~select(-1i, global0.b.a, var_0.b.b.x), -2147483647i), _wgslsmith_add_i32(countOneBits(0i), 50684i)), ~(~(_wgslsmith_div_u32(25971u, u_input.a) | 4294967295u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, var_0.b.c, -1015f, -340f) + vec4<f32>(108f, var_0.a, -521f, global0.a))), vec4<f32>(var_0.b.c, global0.b.c, _wgslsmith_f_op_f32(-2453f + var_0.b.c), _wgslsmith_f_op_f32(abs(var_0.b.c)))) * vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a))), 1354f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1668f)) - -716f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1672f + global0.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(max(global0.b.a, _wgslsmith_div_i32(-2147483647i, ~global0.b.a)) << (_wgslsmith_add_u32(~var_1.b, _wgslsmith_clamp_u32(~var_1.b, u_input.a, var_1.b ^ var_1.b)) % 32u), ~(~11242u), _wgslsmith_f_op_f32(var_1.c.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1120f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c.x + -563f), _wgslsmith_f_op_f32(-var_1.c.x)))));
}

