struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: i32 = 49550i;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> bool {
    global0 = Struct_3(global0.a);
    let var_0 = ~_wgslsmith_dot_vec4_u32(arg_0.b.b, arg_0.d.b);
    var var_1 = 1i;
    let var_2 = Struct_2(~global0.a, arg_0.b, _wgslsmith_div_u32(arg_0.c, _wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, var_0), arg_0.b.c ^ arg_0.a, 15336u << (global0.a % 32u))) & (arg_0.d.c << (_wgslsmith_add_u32(var_0, select(arg_0.c, 1u, arg_0.d.a.x)) % 32u)), Struct_1(arg_0.b.a, arg_0.d.b, abs(_wgslsmith_add_u32(global0.a, 0u))));
    global1 = countOneBits(u_input.a);
    return 1876f < _wgslsmith_f_op_f32(1211f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1884f + _wgslsmith_f_op_f32(sign(723f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -124f)))));
}

fn func_2() -> vec3<bool> {
    global1 = u_input.a ^ _wgslsmith_div_i32(1i, 1i);
    var var_0 = Struct_3(abs(global0.a));
    var_0 = Struct_3(60759u ^ (abs(~global0.a) & 0u));
    var_0 = Struct_3(~1u);
    return vec3<bool>(all(select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true), any(vec3<bool>(false, true, true))))), func_3(Struct_2(firstTrailingBit(var_0.a), Struct_1(vec3<bool>(false, true, false), ~vec4<u32>(global0.a, 103865u, var_0.a, global0.a), _wgslsmith_mod_u32(global0.a, var_0.a)), ~var_0.a, Struct_1(vec3<bool>(true, false, true), select(vec4<u32>(1u, 55749u, var_0.a, global0.a), vec4<u32>(55350u, var_0.a, 1u, 15459u), vec4<bool>(false, true, true, false)), ~0u))), !(true || all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), true))));
}

fn func_1() -> StorageBuffer {
    var var_0 = Struct_1(!func_2(), ~_wgslsmith_div_vec4_u32(min(vec4<u32>(global0.a, 4294967295u, 4294967295u, global0.a) | vec4<u32>(0u, global0.a, global0.a, global0.a), ~vec4<u32>(28775u, 0u, global0.a, global0.a)), min(max(vec4<u32>(global0.a, global0.a, 13226u, global0.a), vec4<u32>(80276u, global0.a, global0.a, 18279u)), countOneBits(vec4<u32>(global0.a, global0.a, 0u, 1u)))), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, _wgslsmith_div_u32(global0.a, _wgslsmith_mult_u32(global0.a, global0.a)), global0.a), vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, 33674u), vec2<u32>(4294967295u, 0u)), 1u), global0.a, 1u)));
    global1 = _wgslsmith_sub_i32(-u_input.a, _wgslsmith_clamp_i32(~u_input.a, ~firstTrailingBit(max(u_input.a, u_input.a)), -1i));
    global0 = Struct_3(~1u);
    global0 = Struct_3(select(4294967295u ^ _wgslsmith_mod_u32(global0.a, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(~1u, ~4892u, min(var_0.c, 4294967295u)), vec3<u32>(4650u, var_0.c, ~1u)), true));
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(floor(-1182f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(618f))), 1035f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1136f, 132f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(trunc(-949f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 861f) + _wgslsmith_f_op_f32(f32(-1f) * -234f)), -113f, -1000f) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(188f, -927f, -509f, 561f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1190f, -1121f, -329f, -342f)))), vec4<f32>(_wgslsmith_f_op_f32(step(-2494f, 517f)), -159f, _wgslsmith_f_op_f32(abs(163f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_0.a.x)))));
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(-902f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.x)) - _wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_mod_vec2_i32(vec2<i32>(-14668i & ~u_input.a, ~max(15944i, u_input.a)), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.a, -4120i), firstTrailingBit(-vec2<i32>(19887i, u_input.a)))), ~(-1i), _wgslsmith_mult_u32(max(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, var_0.c, 84131u), max(var_0.b.zyz, vec3<u32>(var_0.c, 0u, 16639u))), ~1u), global0.a), 1347f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (true | (_wgslsmith_sub_i32(~(-6278i), u_input.a) == -2147483647i)) && (7751i > u_input.a);
    let x = u_input.a;
    s_output = func_1();
}

