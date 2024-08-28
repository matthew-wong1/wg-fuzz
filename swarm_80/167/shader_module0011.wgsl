struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: bool,
    e: vec3<bool>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_2,
    d: f32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 17979u;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: i32) -> u32 {
    global0 = _wgslsmith_dot_vec3_u32(min(vec3<u32>(~_wgslsmith_sub_u32(u_input.b.x, 73579u), 18527u, u_input.b.x), vec3<u32>(~arg_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 5606u), vec2<u32>(0u, 35994u)), ~arg_1.x) << ((vec3<u32>(1u, u_input.a, u_input.a) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(45984u, u_input.a, u_input.a), u_input.b.yyx) % vec3<u32>(32u))) % vec3<u32>(32u))), ~abs(u_input.b.zyw));
    global0 = 1u;
    var var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -2750f) * vec2<f32>(-657f, 809f)), vec2<f32>(601f, -412f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-314f, -1000f))) - vec2<f32>(-1011f, -734f)))), vec4<bool>(true, true, true, all(vec2<bool>(true, false)) & true));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-180f + _wgslsmith_f_op_f32(-var_0.a.x)))), _wgslsmith_f_op_f32(ceil(-1683f)))));
    var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-422f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(269f + _wgslsmith_f_op_f32(abs(690f))))));
    return ~(countOneBits(arg_1.x) | _wgslsmith_sub_u32(6749u, ~arg_1.x));
}

fn func_2() -> f32 {
    var var_0 = !vec3<bool>(true, u_input.a >= func_3(~(-24735i), vec2<u32>(u_input.a, 1u), _wgslsmith_mult_i32(0i, 11899i)), true);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(floor(1310f)));
    var var_2 = select(select(select(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, true, true), var_0.x), select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, true, true), var_0.x), select(!vec3<bool>(true, var_0.x, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), select(select(!vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, true, true)), select(vec3<bool>(var_0.x, var_0.x, var_0.x), !vec3<bool>(true, var_0.x, false), any(vec4<bool>(false, var_0.x, var_0.x, false))), vec3<bool>(!var_0.x, true, true)), var_1.a >= -1073f), select(vec3<bool>(var_0.x, var_0.x, var_0.x), select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, false, true), select(vec3<bool>(false, var_0.x, true), vec3<bool>(var_0.x, var_0.x, var_0.x), false)), !select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, false, true), false), select(select(vec3<bool>(var_0.x, true, true), vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, var_0.x, false)), vec3<bool>(true, var_0.x, var_0.x), any(vec4<bool>(false, var_0.x, var_0.x, true)))), select(!(!vec3<bool>(false, var_0.x, var_0.x)), vec3<bool>(var_0.x, true, var_0.x), true)), true);
    var var_3 = _wgslsmith_f_op_f32(-var_1.a);
    var var_4 = vec3<u32>(13346u, u_input.a, ~(~1u));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.a, -934f, false)) - _wgslsmith_f_op_f32(-205f * var_1.a))));
}

fn func_1() -> StorageBuffer {
    global0 = u_input.b.x & 0u;
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1830f, 697f, -1000f, 941f)))) - vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -418f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1223f)))), -2261f, _wgslsmith_f_op_f32(func_2()))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -844f, _wgslsmith_f_op_f32(step(-1340f, 1383f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(618f, 520f, -422f, 777f)) + vec4<f32>(-1000f, -1202f, 787f, 1197f)))));
    var var_1 = -1i;
    return StorageBuffer(~u_input.b.x ^ u_input.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, -1585f), vec2<f32>(var_0.x, var_0.x)))), vec2<u32>(~4294967295u, _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a, 1u) ^ _wgslsmith_dot_vec4_u32(u_input.b, u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 6934u, 8527u), u_input.b.yyw) & u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

