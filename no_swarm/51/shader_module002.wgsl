struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(arg_0.a, _wgslsmith_f_op_f32(max(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a - arg_0.a) - _wgslsmith_f_op_f32(-arg_0.a)))), arg_0.a == arg_0.a))));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1000f, 929f))));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(arg_1));
    return u_input.b;
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_2(firstLeadingBit(select(vec3<i32>(u_input.b, 65349i, i32(-1i) * -13797i), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 0i, -45342i), vec3<i32>(2147483647i, 27510i, 12678i)), vec3<i32>(u_input.b, u_input.b, u_input.b)), _wgslsmith_f_op_f32(f32(-1f) * -293f) >= _wgslsmith_f_op_f32(func_2(Struct_1(1813f, vec4<u32>(12166u, u_input.a.x, 86688u, u_input.a.x), vec2<i32>(1i, 2147483647i)))))));
    var_0 = Struct_2(_wgslsmith_add_vec3_i32(var_0.a, vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, -1i, 51030i, -1i), vec4<i32>(-29011i, var_0.a.x, u_input.b, u_input.b)), _wgslsmith_div_i32(~var_0.a.x, -2147483647i), 17439i)));
    var_0 = Struct_2(_wgslsmith_sub_vec3_i32(firstTrailingBit(var_0.a), _wgslsmith_div_vec3_i32(vec3<i32>(i32(-1i) * -45627i, ~var_0.a.x, func_3(Struct_1(630f, vec4<u32>(u_input.a.x, 9291u, 19455u, 41940u), var_0.a.zy), -761f)), vec3<i32>(~(-40775i), ~0i, -u_input.b))));
    var var_1 = _wgslsmith_clamp_u32(19985u, max(16129u, _wgslsmith_mult_u32(u_input.a.x, ~u_input.a.x)) & _wgslsmith_sub_u32(abs(max(u_input.a.x, u_input.a.x)), select(59494u, abs(53699u), true)), _wgslsmith_dot_vec4_u32(~reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(7647u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(121050u, 0u, u_input.a.x, u_input.a.x))), firstLeadingBit(vec4<u32>(max(u_input.a.x, u_input.a.x), abs(u_input.a.x), 35852u, ~u_input.a.x))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1548f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1294f * 367f), _wgslsmith_f_op_f32(ceil(1501f)))))));
    return Struct_2(firstLeadingBit(var_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i;
    var var_1 = func_1();
    var var_2 = ~1u;
    var_2 = u_input.a.x;
    var var_3 = Struct_2(vec3<i32>(_wgslsmith_dot_vec4_i32(countOneBits(firstTrailingBit(vec4<i32>(u_input.b, -1i, -1i, -31430i))), vec4<i32>(-1i) * -vec4<i32>(30168i, 52352i, 7376i, -1i)), abs(_wgslsmith_mod_i32(-u_input.b, ~2147483647i)), -_wgslsmith_mod_i32(countOneBits(1i), ~u_input.b)));
    var_2 = u_input.a.x >> (~countOneBits(1u & firstTrailingBit(0u)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(-11893i, abs(1u));
}

