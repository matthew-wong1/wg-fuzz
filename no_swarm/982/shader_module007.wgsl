struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32, arg_1: vec2<bool>, arg_2: i32) -> f32 {
    var var_0 = abs(1i);
    var var_1 = Struct_1(select(select(arg_1, !select(vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(true, true), arg_1), true), !select(select(arg_1, arg_1, arg_1), select(vec2<bool>(true, arg_1.x), arg_1, arg_1), false), !(!select(vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(arg_1.x, true), arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(717f * _wgslsmith_div_f32(-1614f, -136f))) - -1000f), _wgslsmith_div_i32(28676i, reverseBits(-reverseBits(1i))));
    var_1 = Struct_1(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.b))), _wgslsmith_f_op_f32(select(158f, _wgslsmith_f_op_f32(-var_1.b), all(vec3<bool>(arg_1.x, var_1.a.x, true))))))), reverseBits(2147483647i));
    let var_2 = arg_1.x;
    let var_3 = vec2<i32>(0i, var_1.c);
    return _wgslsmith_f_op_f32(min(var_1.b, _wgslsmith_f_op_f32(473f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2229f))))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: bool, arg_3: vec3<f32>) -> vec2<bool> {
    let var_0 = arg_0;
    let var_1 = vec4<bool>(var_0.a.x, true, !all(select(vec2<bool>(false, true), !vec2<bool>(false, arg_2), true)), all(!(!(!vec3<bool>(true, var_0.a.x, arg_0.a.x)))));
    let var_2 = Struct_1(!arg_0.a, arg_3.x, u_input.b);
    var var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, var_2.b)), -600f, _wgslsmith_f_op_f32(func_3(~16205u, vec2<bool>(true, true), -36045i))), _wgslsmith_f_op_vec3_f32(arg_3 * vec3<f32>(arg_3.x, _wgslsmith_f_op_f32(-var_2.b), -269f)))));
    var var_4 = false;
    return vec2<bool>(false, true);
}

fn func_1(arg_0: bool) -> vec3<bool> {
    let var_0 = Struct_1(select(!select(!vec2<bool>(arg_0, false), func_2(Struct_1(vec2<bool>(arg_0, arg_0), 446f, 2147483647i), vec4<u32>(47888u, 0u, 5308u, 77293u), arg_0, vec3<f32>(674f, 1121f, -910f)), false), vec2<bool>(arg_0, all(select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, true), arg_0))), vec2<bool>(any(vec3<bool>(arg_0, arg_0, true)) || arg_0, true)), _wgslsmith_f_op_f32(-1300f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(214f))) + _wgslsmith_f_op_f32(f32(-1f) * -289f))), 3707i);
    var var_1 = var_0;
    var_1 = Struct_1(vec2<bool>(any(vec2<bool>(any(vec2<bool>(var_0.a.x, arg_0)), any(vec3<bool>(var_1.a.x, true, false)))), !any(select(vec3<bool>(var_0.a.x, arg_0, true), vec3<bool>(arg_0, false, var_1.a.x), var_0.a.x))), _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-(vec3<i32>(var_1.c, -35791i, -2147483647i) << (vec3<u32>(4294967295u, 0u, 18664u) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_mult_i32(0i, u_input.a), 61569i, ~(-2147483647i))), vec3<i32>(u_input.a, var_0.c, 20720i)));
    var_1 = Struct_1(var_0.a, -2165f, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -(~vec2<i32>(28179i, u_input.b)), _wgslsmith_add_vec2_i32(vec2<i32>(var_1.c, -var_1.c), ~vec2<i32>(47100i, 2147483647i))));
    let var_2 = var_0;
    return !(!vec3<bool>(true, true, all(!vec3<bool>(arg_0, false, arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<bool>(true, true), _wgslsmith_div_f32(743f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-209f + -351f)))), firstTrailingBit(_wgslsmith_mult_i32(0i, ~2147483647i ^ abs(u_input.b))));
    let var_1 = var_0;
    var var_2 = var_1;
    let var_3 = 0u;
    let var_4 = all(vec3<bool>(false, all(vec2<bool>(!var_1.a.x, true)), all(func_1(var_1.a.x))));
    var_2 = var_0;
    let var_5 = var_0.c;
    var var_6 = var_0;
    var var_7 = Struct_1(vec2<bool>(false, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -260f))))), ~_wgslsmith_div_i32(var_0.c, (var_0.c | u_input.a) | (1i >> (var_3 % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~abs(vec2<u32>(var_3, 1u))), _wgslsmith_clamp_u32(var_3, var_3, _wgslsmith_mult_u32(var_3, _wgslsmith_add_u32(var_3, var_3)) >> (_wgslsmith_dot_vec4_u32(abs(vec4<u32>(57360u, 91461u, var_3, var_3)), ~vec4<u32>(4294967295u, 4294967295u, 580u, var_3)) % 32u)), max(i32(-1i) * -7661i, -74313i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(7659i, 0i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 35452i), vec2<i32>(u_input.a, var_2.c), vec2<i32>(-1i, u_input.b)))), 578f, abs(23949u));
}

