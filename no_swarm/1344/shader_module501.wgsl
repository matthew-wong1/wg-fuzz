struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_1(-2147483647i);
    let var_1 = ~_wgslsmith_mult_u32(~u_input.b.x, ~70777u);
    var var_2 = Struct_1(_wgslsmith_mult_i32(max(-34151i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a, -2147483647i, -69820i, 10280i), vec4<i32>(u_input.a.x, arg_0, u_input.a.x, var_0.a)), -vec4<i32>(u_input.a.x, 1i, 26633i, var_0.a))), ~(~9394i)));
    var var_3 = vec4<i32>(0i, arg_0 << ((((4294967295u >> (var_1 % 32u)) & ~0u) ^ 1u) % 32u), _wgslsmith_add_i32(select(~(-18937i), arg_0, !(arg_0 != 36726i)), var_2.a), var_2.a);
    let var_4 = Struct_1(1i);
    return var_4;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> i32 {
    var var_0 = 95429u;
    var_0 = u_input.b.x;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(min(-1000f, -1551f)), 113f);
    var var_2 = !(any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true), var_1.x == var_1.x)) && !(!all(vec2<bool>(true, true))));
    var_2 = true;
    return ~_wgslsmith_dot_vec3_i32(~u_input.a, vec3<i32>(~_wgslsmith_div_i32(44435i, u_input.c.x), _wgslsmith_dot_vec3_i32(u_input.a, -u_input.a), ~(-1i)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: vec3<i32>) -> f32 {
    var var_0 = Struct_1(u_input.a.x);
    var var_1 = vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(u_input.c, u_input.a.yz);
    var_0 = Struct_1(~(-2147483647i));
    var_0 = Struct_1(_wgslsmith_mod_i32(~func_3(func_1(u_input.c.x), arg_0.xw), 18995i));
    var_1 = arg_2.zy | vec2<i32>(-var_0.a, var_1.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(2147483647i);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1084f - _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-315f, -1511f, -1479f, 1445f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(431f, 295f) * vec2<f32>(253f, -709f)), ~u_input.a)))) * -1327f);
    var_0 = Struct_1(func_1(~(-32211i)).a);
    var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1088f)))));
    let var_2 = func_1(countOneBits(36661i));
    let var_3 = any(vec2<bool>(any(vec2<bool>(true, true)), select(0i != var_2.a, true, true)));
    var var_4 = Struct_1(u_input.c.x);
    let var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1317f, -658f, 727f, -2432f)), _wgslsmith_div_vec4_f32(vec4<f32>(174f, -378f, 1113f, 1105f), vec4<f32>(-1621f, -1206f, 930f, -204f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1062f, 1502f, -1510f, -1473f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(409f, 408f, 1223f, -733f), vec4<f32>(-1307f, 103f, -1363f, 747f), var_3)))))) + vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1677f, 2197f))), 916f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1998f - -1667f), 653f)), 552f, _wgslsmith_f_op_f32(f32(-1f) * -813f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-758f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-489f + var_5.x)))), var_5, -func_3(Struct_1(i32(-1i) * -2147483647i), vec2<f32>(var_5.x, 154f)), 432f, abs(firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, var_4.a, var_4.a, -1i), abs(vec4<i32>(0i, u_input.c.x, u_input.c.x, var_2.a))))));
}

