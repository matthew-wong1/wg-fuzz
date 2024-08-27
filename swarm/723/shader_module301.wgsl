struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 32>;

var<private> global1: Struct_1 = Struct_1(-950f, 0u, vec3<i32>(2147483647i, -3909i, 67200i));

var<private> global2: vec2<f32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2360f + _wgslsmith_f_op_f32(-global1.a)) - 1050f), -497f));
    return _wgslsmith_add_u32(1u, ~u_input.c.x);
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: bool) -> f32 {
    global0 = array<vec2<u32>, 32>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1068f, arg_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a))))));
    let var_1 = _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(0u, 1u) >> (~vec2<u32>(global1.b, 76754u) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.b, u_input.c.yzw), vec3<u32>(arg_2.b, u_input.c.x, global1.b) | vec3<u32>(arg_2.b, global1.b, 0u)), _wgslsmith_clamp_u32(func_2(996f, vec4<f32>(var_0, arg_2.a, -1054f, global1.a)), arg_2.b, 4294967295u))), ~vec2<u32>(u_input.c.x, ~u_input.a << (1767u % 32u)));
    global1 = arg_2;
    let var_2 = _wgslsmith_f_op_f32(-713f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1629f), _wgslsmith_f_op_f32(-global1.a)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(round(var_2)))) - -375f), _wgslsmith_f_op_f32(-var_0));
}

fn func_3() -> f32 {
    var var_0 = select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), all(vec3<bool>(false, false, true))), any(vec4<bool>(true, true, true, true))), !(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)))), select(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), 131f <= global1.a), !vec3<bool>(true, any(vec2<bool>(false, false)), any(vec2<bool>(true, false))), false), false);
    var var_1 = select(!select(select(select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, true, true), vec3<bool>(true, false, true)), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, true, false)), vec3<bool>(false, true, all(vec3<bool>(true, true, false))), true), !select(select(vec3<bool>(var_0.x, var_0.x, false), !vec3<bool>(false, false, var_0.x), var_0.x), select(select(vec3<bool>(var_0.x, false, false), vec3<bool>(false, var_0.x, true), vec3<bool>(var_0.x, false, var_0.x)), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, false), true), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, var_0.x), true)), !(!vec3<bool>(true, var_0.x, var_0.x))), vec3<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.a))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a * 704f)), ~_wgslsmith_clamp_i32(42645i, global1.c.x, global1.c.x) != 0i));
    global0 = array<vec2<u32>, 32>();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_add_u32(func_2(-677f, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, -735f, global2.x))))), u_input.c.x), abs(global1.c));
    let var_3 = var_2;
    return -523f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1((i32(-1i) * -15351i) >> (_wgslsmith_mult_u32(u_input.c.x, global1.b) % 32u), -vec2<i32>(global1.c.x, global1.c.x), Struct_1(-1760f, global1.b, global1.c | global1.c), true)))) + 184f);
    var var_1 = vec3<i32>(global1.c.x | _wgslsmith_div_i32(_wgslsmith_div_i32(5881i, _wgslsmith_mult_i32(global1.c.x, u_input.d)), 13991i), global1.c.x, ~(-2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1316f, var_0) * _wgslsmith_f_op_f32(-1000f + 451f)), global1.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-16423i, -1i), vec2<i32>(-22355i, global1.c.x)) < (i32(-1i) * -2147483647i))), _wgslsmith_div_f32(global2.x, global1.a), _wgslsmith_f_op_f32(func_3()), global1.a), _wgslsmith_dot_vec2_i32(vec2<i32>(-var_1.x, -countOneBits(0i)), vec2<i32>(1i, global1.c.x >> (~global1.b % 32u))), u_input.b.zz);
}

