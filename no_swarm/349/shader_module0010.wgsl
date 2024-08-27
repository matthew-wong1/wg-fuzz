struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: f32,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: i32) -> Struct_2 {
    return Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -433f)))), -886f, 131f), -vec2<i32>(select(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, 0i, arg_0), vec4<i32>(arg_0, arg_0, 45431i, 20461i)), arg_0 ^ arg_0, true), _wgslsmith_div_i32(arg_0, arg_0)));
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(215f - 228f), _wgslsmith_f_op_f32(f32(-1f) * -1835f))), -2723f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-597f)), _wgslsmith_f_op_f32(623f * -2449f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-321f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1103f, -914f))))))));
    var var_1 = true & select(all(select(!vec3<bool>(arg_0.a, arg_0.a, arg_0.a), select(vec3<bool>(true, arg_0.a, true), vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, arg_0.a)), !vec3<bool>(arg_0.a, arg_0.a, arg_0.a))), !((-1i ^ arg_0.b) >= -25532i), true | arg_0.a);
    let var_2 = func_2(arg_0.b);
    var var_3 = arg_0;
    var_1 = true;
    return var_0.x;
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: Struct_2) -> bool {
    var var_0 = ~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(9422u, u_input.b, arg_1.x) << (vec3<u32>(u_input.b, 67497u, arg_1.x) % vec3<u32>(32u))), ~countOneBits(vec3<u32>(arg_1.x, u_input.b, arg_1.x))) | 4294967295u;
    var_0 = abs(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.a, arg_1.x), vec3<u32>(18171u, u_input.a, u_input.b)), abs(vec3<u32>(u_input.b, 5774u, u_input.a)), true), vec3<u32>(abs(44184u), arg_1.x, u_input.b)), u_input.a, _wgslsmith_dot_vec2_u32(select(~vec2<u32>(4294967295u, u_input.b), arg_1, vec2<bool>(true, false)), _wgslsmith_mult_vec2_u32(abs(arg_1), vec2<u32>(u_input.a, arg_1.x)))));
    let var_1 = select(select(vec3<bool>(true, all(vec4<bool>(true, true, true, true)), any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), false))), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), !(2147483647i > arg_0.b.x) || (_wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x) <= -338f)), vec3<bool>(true, true, true), vec3<bool>(true & (true | all(vec4<bool>(true, false, true, false))), true, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(arg_0.b.x, arg_2.x, -51978i)), vec3<i32>(-31362i, arg_0.b.x, arg_2.x)) != _wgslsmith_add_i32(arg_2.x, arg_0.b.x)));
    let var_2 = arg_0.a.yz;
    let var_3 = Struct_1(true || (-min(-2147483647i, arg_3.b.x) >= (-3641i & arg_3.b.x)), _wgslsmith_add_i32(-_wgslsmith_dot_vec2_i32(abs(arg_2.xz), arg_0.b), ~abs(52519i)));
    return any(select(var_1.zy, !(!var_1.xz), _wgslsmith_dot_vec2_u32(~arg_1, vec2<u32>(4294967295u, 12035u)) <= 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(all(vec3<bool>(true, true, true)) == true);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-664f - -594f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -836f) * _wgslsmith_f_op_f32(step(-699f, -802f)))) * 1000f) >= _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(400f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(true, 0i))) + _wgslsmith_f_op_f32(f32(-1f) * -1692f)))));
    var_0 = !func_3(func_2(1i), vec2<u32>(~(~u_input.a), _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a, 27166u), 59781u)), vec4<i32>(-1i, _wgslsmith_mod_i32(28849i, 1i), 0i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-38460i, -2147483647i), vec2<i32>(2147483647i, 0i)), vec2<i32>(16171i, -16224i))), func_2(1i));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_div_f32(-991f, 818f), _wgslsmith_f_op_f32(floor(-1596f))))) != 978f, -firstLeadingBit(-1i));
    var_0 = all(vec2<bool>(!var_1.a, !(!all(vec3<bool>(true, true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(67313u, u_input.a), 64146u), 23148u) << (~(~min(1u, 0u)) % 32u), _wgslsmith_mult_u32(countOneBits(u_input.b), countOneBits(_wgslsmith_add_u32(1u, _wgslsmith_div_u32(u_input.b, 23848u)))), vec4<u32>(~4294967295u, u_input.a, ~u_input.b, u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -816f), -464f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_1(var_1.a, -1i))), _wgslsmith_f_op_f32(select(-440f, -125f, var_1.a))))));
}

