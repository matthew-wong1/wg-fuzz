struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec4<i32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: bool, arg_1: bool) -> f32 {
    return 312f;
}

fn func_3(arg_0: f32) -> bool {
    global0 = array<bool, 27>();
    var var_0 = -1842f;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, 819f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - 508f)), _wgslsmith_f_op_f32(-1227f + 1144f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-603f)) - 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))));
    let var_2 = vec4<bool>(!(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-511f)), _wgslsmith_f_op_f32(570f - arg_0)) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-463f, 1000f))))), true | (reverseBits(u_input.c) != 43674u), global0[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(1u, ~4294967295u)), 27u)], true);
    var var_3 = Struct_2(~(~vec4<u32>(u_input.e, u_input.e, countOneBits(1767u), u_input.a >> (u_input.a % 32u))), vec3<u32>(~24801u, 68406u, u_input.e));
    return u_input.d > select(-2147483647i, -(i32(-1i) * -2147483647i), true);
}

fn func_2() -> vec3<bool> {
    global0 = array<bool, 27>();
    global0 = array<bool, 27>();
    let var_0 = !select(!vec4<bool>(u_input.b == u_input.d, func_3(1536f), global0[_wgslsmith_index_u32(~u_input.a, 27u)], func_3(-193f)), vec4<bool>(any(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 27u)], true)), !global0[_wgslsmith_index_u32(u_input.c, 27u)] || (true || global0[_wgslsmith_index_u32(0u, 27u)]), u_input.d >= u_input.b, _wgslsmith_add_i32(u_input.b, u_input.d) >= min(u_input.d, u_input.d)), !select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.e, 27u)], false, global0[_wgslsmith_index_u32(u_input.c, 27u)], global0[_wgslsmith_index_u32(u_input.e, 27u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.e, 27u)], false, global0[_wgslsmith_index_u32(u_input.a, 27u)], true), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.e, 27u)], false, true), vec4<bool>(true, false, global0[_wgslsmith_index_u32(64619u, 27u)], false)), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 27u)], global0[_wgslsmith_index_u32(u_input.a, 27u)], true, global0[_wgslsmith_index_u32(u_input.a, 27u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 27u)], false, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.e, 27u)], global0[_wgslsmith_index_u32(u_input.a, 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)], true))));
    global0 = array<bool, 27>();
    var var_1 = any(select(!select(var_0, var_0, false), vec4<bool>(!global0[_wgslsmith_index_u32(u_input.c, 27u)], false, all(vec2<bool>(var_0.x, var_0.x)), true), vec4<bool>(var_0.x, any(var_0.xx), all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 27u)], var_0.x)), false))) || var_0.x;
    return !(!var_0.xzz);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 27>();
    global0 = array<bool, 27>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1764f, -246f, -293f, -664f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-176f, 2243f, 161f, 837f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1234f, -1130f, -1563f, 1934f), vec4<f32>(935f, -196f, -1093f, -613f))), all(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 27u)]))))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(574f, -582f, -963f, -336f)))))));
    global0 = array<bool, 27>();
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -127f, var_0.x, 559f))) - vec4<f32>(_wgslsmith_f_op_f32(func_1(true, global0[_wgslsmith_index_u32(0u, 27u)])), _wgslsmith_div_f32(-342f, var_0.x), _wgslsmith_f_op_f32(123f * 111f), 1424f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(792f, var_0.x, -600f, var_0.x) * vec4<f32>(var_0.x, -1263f, -663f, var_0.x))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-389f, _wgslsmith_f_op_f32(select(-1000f, 540f, global0[_wgslsmith_index_u32(u_input.a, 27u)])))), vec2<f32>(_wgslsmith_f_op_f32(-680f * _wgslsmith_f_op_f32(func_1(true, true))), _wgslsmith_f_op_f32(-665f + _wgslsmith_f_op_f32(var_0.x * var_0.x)))))));
    var var_2 = func_2();
    let var_3 = vec2<u32>(~(~u_input.a), ~u_input.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(min(~vec4<i32>(u_input.d, 1i, u_input.d, 0i), max(~vec4<i32>(-56154i, -1i, 53330i, 1i), abs(vec4<i32>(u_input.d, u_input.b, u_input.b, u_input.d)))), vec4<i32>(24882i, 1i, -u_input.d, _wgslsmith_mod_i32(u_input.d, u_input.d)) >> (~_wgslsmith_clamp_vec4_u32(vec4<u32>(29173u, 1u, u_input.e, u_input.a), vec4<u32>(4294967295u, var_3.x, u_input.a, 1u), vec4<u32>(88766u, u_input.e, 1u, 14350u)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-42684i, u_input.d, 10354i ^ u_input.d, 1i), select(vec4<i32>(3717i, -3058i, u_input.b, -2147483647i), vec4<i32>(-2147483647i, u_input.d, -26991i, u_input.b), vec4<bool>(global0[_wgslsmith_index_u32(var_3.x, 27u)], true, true, global0[_wgslsmith_index_u32(var_3.x, 27u)])) & _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, u_input.b, u_input.d, 9877i), vec4<i32>(u_input.d, 6448i, -2147483647i, u_input.d), vec4<i32>(u_input.b, 2147483647i, -20950i, u_input.d)), -vec4<i32>(-22079i, -2147483647i, 53855i, 53386i) ^ select(vec4<i32>(u_input.d, u_input.d, -2147483647i, 3817i), vec4<i32>(-1i, 1i, u_input.d, u_input.d), true))), var_0.ywx);
}

