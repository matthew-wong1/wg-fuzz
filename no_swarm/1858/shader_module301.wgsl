struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: i32, arg_3: vec4<u32>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1550f + -1000f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -664f), -1000f)))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-338f + -276f)));
    var_0 = -155f;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 265f, 1439f, 1194f)))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1336f - -1295f), _wgslsmith_f_op_f32(-1000f * -1746f))), -547f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1418f * -452f), _wgslsmith_f_op_f32(138f * 454f), arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-156f, 230f)) - -1618f))));
    let var_2 = countOneBits(abs(u_input.d)) >> (~arg_3 % vec4<u32>(32u));
    return select(select(vec3<bool>(true, arg_1, !(!arg_1)), !select(vec3<bool>(true, arg_1, true), select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, true, false), false), var_1.x >= 175f), !(any(vec4<bool>(false, false, true, arg_1)) & arg_1)), select(select(vec3<bool>(true, false, all(vec4<bool>(arg_1, true, true, arg_1))), vec3<bool>(arg_1 & arg_1, true, arg_1), vec3<bool>(!arg_1, true, !arg_1)), !vec3<bool>(true, true && arg_1, !arg_1), arg_1), select(select(!vec3<bool>(false, arg_1, false), !(!vec3<bool>(arg_1, arg_1, false)), reverseBits(u_input.d.x) > reverseBits(-2147483647i)), vec3<bool>(true, any(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1), vec2<bool>(false, false))), true), vec3<bool>(all(vec2<bool>(false, false)), arg_1, arg_1)));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1270f)));
    let var_1 = abs(~vec2<u32>(u_input.a, u_input.a)) & ~(~vec2<u32>(33215u >> (u_input.a % 32u), firstLeadingBit(u_input.a)));
    var var_2 = Struct_1(select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(false, true, false)), true, all(vec4<bool>(false, false, true, true)))), vec3<bool>(false, true, var_0 > _wgslsmith_f_op_f32(f32(-1f) * -1000f)), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var_2 = Struct_1(func_3(u_input.d, var_1.x != (abs(var_1.x) << (_wgslsmith_clamp_u32(4294967295u, u_input.a, u_input.a) % 32u)), i32(-1i) * -u_input.c.x, ~(~vec4<u32>(0u, var_1.x, 4358u, var_1.x))));
    var_2 = Struct_1(vec3<bool>(true, true, true));
    return Struct_1(vec3<bool>(var_2.a.x, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(-var_0)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * var_0))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = 2147483647i;
    let var_1 = func_2();
    var_0 = ~(~_wgslsmith_mult_i32(-1i, -2147483647i));
    var_0 = -arg_1.x & -22995i;
    var_0 = ~1i;
    return vec2<bool>(var_1.a.x, var_1.a.x);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<i32>) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(vec3<bool>(arg_0.x, arg_0.x, true | any(arg_0.zxz))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -1172f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2002f, -294f), vec2<f32>(101f, 1000f), vec2<bool>(arg_0.x, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1909f, -1000f)), vec2<bool>(arg_0.x, arg_0.x))))));
    var var_1 = 0i;
    var_1 = 2147483647i;
    let var_2 = _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-53393i, u_input.d.x, max(arg_1.x, firstLeadingBit(arg_1.x)), 0i), _wgslsmith_clamp_vec4_i32(~vec4<i32>(-54874i, arg_1.x, u_input.c.x, -2147483647i), u_input.d, vec4<i32>(~arg_1.x, -u_input.e, arg_1.x, ~1i))), u_input.d);
    var_0 = Struct_2(func_2(), _wgslsmith_f_op_vec2_f32(-var_0.b));
    return Struct_2(var_0.a, var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    let var_1 = func_4(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true), vec4<bool>(all(func_1(vec4<f32>(-126f, -374f, -1285f, -782f), vec2<i32>(-50061i, u_input.b.x), Struct_1(vec3<bool>(true, false, false)))), all(vec4<bool>(true, false, true, false)), all(vec2<bool>(false, true)), true), !vec4<bool>(false, false, false, u_input.a > u_input.a)), u_input.d.xx);
    let x = u_input.a;
    s_output = StorageBuffer(29969i, reverseBits(_wgslsmith_clamp_u32(~3354u, ~23608u, u_input.a) ^ ~(~u_input.a)), 519f, vec4<u32>(_wgslsmith_div_u32(u_input.a, 9997u) << (u_input.a % 32u), u_input.a, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(1983u, 53921u, u_input.a)), reverseBits(vec3<u32>(u_input.a, 25735u, 1u))), ~u_input.a), countOneBits(~u_input.a) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 12060u, 4294967295u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))) % 32u)));
}

