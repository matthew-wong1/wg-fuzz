struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: u32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 49672i;

var<private> global1: bool;

var<private> global2: u32 = 4294967295u;

var<private> global3: array<Struct_1, 10>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<u32>) -> u32 {
    let var_0 = arg_1;
    let var_1 = arg_1;
    global2 = 1u;
    var var_2 = vec2<u32>(arg_1.d, 45836u ^ arg_2.x);
    global0 = var_0.c;
    return ~min(var_0.d, arg_1.d);
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec2<bool>) -> i32 {
    var var_0 = 83639i;
    var var_1 = select(false, 1i > -_wgslsmith_dot_vec2_i32(~vec2<i32>(arg_0, 31837i), vec2<i32>(1i, arg_0)), true);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1114f);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1)));
    let var_4 = var_2;
    return _wgslsmith_sub_i32(abs(~(-2147483647i)), ~_wgslsmith_mod_i32(_wgslsmith_clamp_i32(arg_0, -52567i >> (u_input.a % 32u), arg_0), ~reverseBits(arg_0)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> u32 {
    let var_0 = arg_1.e.wwz;
    global0 = i32(-1i) * -29i;
    return 66249u;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: Struct_1) -> i32 {
    global3 = array<Struct_1, 10>();
    var var_0 = Struct_1(~countOneBits(~_wgslsmith_clamp_i32(15225i, 19415i, arg_3.a)), arg_0.b, arg_0.a, 71611u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * -2656f)), arg_3.e.x, _wgslsmith_f_op_f32(f32(-1f) * -499f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-145f))), arg_2.x)));
    global2 = func_4(Struct_1(countOneBits(-31254i >> (arg_3.d % 32u)), arg_0.b, -31646i, func_1(abs(vec2<i32>(1i, arg_0.a) | vec2<i32>(0i, 2147483647i)), arg_0, ~vec3<u32>(14253u, 84422u, u_input.a)), arg_0.e), Struct_1(-var_0.a, false, -(~func_3(2147483647i, arg_0.e.x, vec2<bool>(false, false))), max(_wgslsmith_div_u32(19316u, arg_0.d), 1u) & ~4294967295u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-arg_3.e), _wgslsmith_f_op_vec4_f32(-arg_0.e))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.e.x, arg_1.x, arg_3.e.x, -158f) + vec4<f32>(-263f, 3180f, arg_1.x, 212f)), _wgslsmith_div_vec4_f32(var_0.e, vec4<f32>(arg_1.x, -439f, 1069f, arg_3.e.x))), vec4<bool>(true, true, false, arg_0.a <= var_0.c)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.x + arg_1.x))));
    global1 = any(vec4<bool>(true, arg_0.b, false, arg_3.b));
    var var_1 = ~_wgslsmith_sub_i32(_wgslsmith_sub_i32(countOneBits(arg_0.a), var_0.a), min(0i, countOneBits(var_0.a)));
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~(~u_input.a);
    global2 = _wgslsmith_add_u32(firstLeadingBit(~_wgslsmith_mod_u32(~u_input.a, 1u)), func_1(vec2<i32>(-1i, min(-2147483647i, countOneBits(2147483647i))), global3[_wgslsmith_index_u32(u_input.a, 10u)], ~(~vec3<u32>(u_input.a, 768u, 40029u))));
    global3 = array<Struct_1, 10>();
    global1 = false;
    var var_0 = func_1(-vec2<i32>(_wgslsmith_sub_i32(~(-3775i), ~0i), func_2(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, u_input.a), 10u)], _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-835f, 537f, 854f), vec3<f32>(1455f, 568f, -108f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1550f, 1213f, 1326f) + vec3<f32>(747f, 1102f, 401f)), Struct_1(1i, true, -1i, 23737u, vec4<f32>(-693f, -1000f, 1000f, 1331f)))), global3[_wgslsmith_index_u32(select(~_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.a, 41192u)), select(vec2<u32>(10898u, 51191u), vec2<u32>(u_input.a, u_input.a), vec2<bool>(true, true))), _wgslsmith_dot_vec3_u32(abs(~vec3<u32>(u_input.a, u_input.a, u_input.a)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 11054u, u_input.a), vec3<u32>(4294967295u, 4294967295u, u_input.a))), all(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)))), 10u)], _wgslsmith_mult_vec3_u32(vec3<u32>(28706u, 1u, ~select(u_input.a, 55665u, true)), vec3<u32>(~(~1u), select(_wgslsmith_div_u32(u_input.a, u_input.a), max(u_input.a, 22262u), true), _wgslsmith_dot_vec3_u32(min(vec3<u32>(1u, u_input.a, 4294967295u), vec3<u32>(0u, u_input.a, u_input.a)), vec3<u32>(u_input.a, 4294967295u, u_input.a) >> (vec3<u32>(35410u, 38516u, 3720u) % vec3<u32>(32u))))));
    var var_1 = vec2<i32>(-1i, 18192i);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(303f - 629f), 1987f)))) + -475f);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(982f - 1029f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-955f * -1106f))))));
}

