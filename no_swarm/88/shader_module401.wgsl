struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = u_input.e;
    let var_1 = ~select(~vec2<i32>(-20101i, u_input.d) ^ _wgslsmith_mod_vec2_i32(~vec2<i32>(-7516i, u_input.d), ~vec2<i32>(-2147483647i, u_input.c)), -(~(vec2<i32>(u_input.d, -22074i) | vec2<i32>(u_input.d, u_input.c))), vec2<bool>(true, true));
    let var_2 = countOneBits(var_1);
    let var_3 = u_input.e;
    var_0 = vec2<u32>(4294967295u, u_input.b);
    return -500f;
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_2 {
    let var_0 = any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true));
    let var_1 = u_input.d;
    var var_2 = var_0;
    let var_3 = arg_1.zy;
    let var_4 = Struct_1(4294967295u);
    return Struct_2(arg_0.a);
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = func_3(Struct_2(0u), vec3<f32>(_wgslsmith_f_op_f32(func_2(50177u)), _wgslsmith_f_op_f32(f32(-1f) * -1177f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-512f, 1063f) - -2796f) * 352f)));
    var var_1 = -6449i;
    let var_2 = var_0.a;
    var var_3 = vec4<i32>(46507i, u_input.d, -1i, _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.c, 2147483647i), -(1i << (1u % 32u))));
    let var_4 = ~_wgslsmith_div_u32(_wgslsmith_add_u32(~u_input.b ^ _wgslsmith_dot_vec4_u32(vec4<u32>(84504u, 32811u, 49111u, var_0.a), vec4<u32>(u_input.b, 25665u, 0u, var_0.a)), var_0.a), ~max(abs(4294967295u), u_input.e.x));
    return func_3(func_3(Struct_2(_wgslsmith_mod_u32(17965u, reverseBits(4294967295u))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -608f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1297f, -189f) + _wgslsmith_f_op_f32(ceil(1505f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-313f + 590f), 1f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(1085f, -1212f, -458f), vec3<f32>(-211f, -1000f, 847f))))), vec3<f32>(1f, 1f, 1f), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.e.x, 37938u), vec2<u32>(4289u, 13391u)), vec2<u32>(u_input.b, 44753u)), u_input.e.x, _wgslsmith_sub_u32(4294967295u, 0u << (u_input.e.x % 32u))));
    let var_1 = u_input.e.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-418f, -1000f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(151f, -1000f)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1970f, 511f))))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(405f, 363f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1019f, -508f) + vec2<f32>(780f, 331f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1869f, 886f)))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-782f, -984f), _wgslsmith_f_op_f32(f32(-1f) * -349f)))));
    let var_3 = 1u;
    var_0 = func_1(u_input.a);
    var_0 = Struct_2(~_wgslsmith_sub_u32(var_0.a, 33917u));
    let var_4 = Struct_1(_wgslsmith_div_u32(var_3, 0u));
    let var_5 = Struct_2(~_wgslsmith_div_u32(_wgslsmith_add_u32(firstLeadingBit(var_0.a), var_1), var_0.a | (0u << (0u % 32u))));
    var_0 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_2.x, var_2.x) * vec3<f32>(-393f, var_2.x, var_2.x)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.x, -919f, var_2.x))))) + vec3<f32>(var_2.x, -921f, -475f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, var_2.x)) + _wgslsmith_div_vec3_f32(vec3<f32>(1338f, var_2.x, -1059f), vec3<f32>(883f, 474f, 100f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, -375f)) - vec3<f32>(var_2.x, 941f, 586f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, 1940f, 536f, -546f), vec4<f32>(-1413f, -998f, var_2.x, var_2.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -2278f, var_2.x, 112f) + vec4<f32>(138f, var_2.x, var_2.x, var_2.x)))))), vec2<u32>(_wgslsmith_mod_u32(var_5.a, abs(var_5.a)), var_5.a >> (func_3(Struct_2(97991u), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1715f, var_2.x, var_2.x) * vec3<f32>(var_2.x, var_2.x, 1000f))).a % 32u)));
}

