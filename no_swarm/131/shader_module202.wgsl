struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 14>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    var var_0 = vec4<f32>(-191f, _wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-592f)), _wgslsmith_f_op_f32(-976f * 478f), true)), _wgslsmith_f_op_f32(-633f * _wgslsmith_f_op_f32(round(-1497f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(524f + _wgslsmith_div_f32(-234f, -1000f)))), 933f);
    var var_1 = _wgslsmith_f_op_vec2_f32(-var_0.xy);
    var var_2 = !any(vec4<bool>(true, (var_0.x != var_0.x) | any(vec3<bool>(false, false, true)), false, true));
    let var_3 = Struct_1(0i, ~u_input.c, false, arg_0.x ^ arg_0.x);
    let var_4 = var_3;
    return _wgslsmith_f_op_f32(-var_1.x);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: vec3<f32>, arg_3: Struct_1) -> u32 {
    global0 = array<vec4<i32>, 14>();
    var var_0 = _wgslsmith_div_vec4_u32(~(~u_input.b) >> (~u_input.b % vec4<u32>(32u)), ~(~(~u_input.b | (vec4<u32>(arg_3.d, 4294967295u, 72067u, 43082u) >> (u_input.b % vec4<u32>(32u))))));
    return 1u;
}

fn func_1() -> vec3<bool> {
    global0 = array<vec4<i32>, 14>();
    var var_0 = _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-408f + 1040f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1046f, -863f)) + _wgslsmith_f_op_f32(f32(-1f) * -1156f))))) < 1238f;
    global0 = array<vec4<i32>, 14>();
    var var_1 = vec2<u32>(~101967u, func_3(vec3<bool>(any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))), true, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(-364f, _wgslsmith_f_op_f32(1256f - -1147f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -376f) - vec4<f32>(1518f, _wgslsmith_f_op_f32(max(1196f, -1274f)), _wgslsmith_f_op_f32(step(-857f, 242f)), _wgslsmith_f_op_f32(func_2(vec3<u32>(u_input.a.x, u_input.b.x, u_input.a.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-116f, 426f, 839f), vec3<f32>(-346f, -103f, 1328f)))), Struct_1(0i, 19693i, false, 19075u)));
    var var_2 = 838f;
    return !(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(0i, -u_input.c, true, 0u);
    var_0 = Struct_1(-12580i, ~(-u_input.c), all(!(!(!vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c)))), (_wgslsmith_sub_u32(u_input.b.x, u_input.b.x | 4294967295u) ^ (_wgslsmith_mult_u32(u_input.b.x, u_input.b.x) ^ ~u_input.b.x)) ^ u_input.b.x);
    let var_1 = select(!func_1(), select(select(select(vec3<bool>(false, true, var_0.c), vec3<bool>(true, false, var_0.c), vec3<bool>(true, true, var_0.c)), vec3<bool>(true, all(vec3<bool>(var_0.c, var_0.c, var_0.c)), true & var_0.c), vec3<bool>(true, var_0.c, false)), !select(!vec3<bool>(var_0.c, true, false), vec3<bool>(true, var_0.c, var_0.c), true), !((var_0.c != var_0.c) || var_0.c)), !vec3<bool>(!var_0.c, any(func_1().zz), !var_0.c));
    var var_2 = Struct_1(_wgslsmith_add_i32(64059i, _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-31094i, 7355i)), vec2<i32>(var_0.a, 30032i)) & ~u_input.c), ~2147483647i, var_1.x, ~(~_wgslsmith_add_u32(~1u, 1u)));
    var var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(-409f)));
}

