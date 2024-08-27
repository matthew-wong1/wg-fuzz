struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: i32,
    d: vec3<f32>,
    e: u32,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: u32,
    d: vec3<bool>,
    e: vec3<f32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: u32) -> u32 {
    var var_0 = vec2<i32>(abs(0i & _wgslsmith_div_i32(_wgslsmith_mult_i32(1i, -4122i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -77001i), vec2<i32>(-2147483647i, -2147483647i)))), _wgslsmith_mod_i32(-max(-58243i, -34890i) >> (1u % 32u), -9154i));
    var var_1 = _wgslsmith_clamp_u32(arg_0.x, u_input.a, 1u);
    var var_2 = Struct_5(16411u);
    var_1 = (firstTrailingBit(1u | ~arg_2) & arg_2) ^ _wgslsmith_add_u32(arg_2, 27355u);
    let var_3 = Struct_1(vec4<u32>(_wgslsmith_div_u32(4294967295u, 61444u), 8688u, ~_wgslsmith_dot_vec2_u32(~arg_0.xy, vec2<u32>(arg_2, u_input.a)), u_input.a));
    return 102787u << (arg_2 % 32u);
}

fn func_3(arg_0: f32) -> vec3<u32> {
    var var_0 = ~20829u;
    var var_1 = vec3<u32>(u_input.a, 4294967295u, ~(~u_input.a << (~(u_input.a >> (4294967295u % 32u)) % 32u)));
    let var_2 = Struct_4(1057f, _wgslsmith_dot_vec3_i32(vec3<i32>(989i, max(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(33885i, -2147483647i, -63373i, 0i), vec4<i32>(11025i, -32050i, 3699i, -2147483647i))), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(11091i, 2147483647i, -1i, -16958i), vec4<i32>(2147483647i, 15271i, 10812i, 1i), vec4<i32>(52255i, 0i, -42894i, -1i)), ~vec4<i32>(47655i, 28881i, 2147483647i, 0i))), vec3<i32>(max(-1i >> (1u % 32u), reverseBits(-18648i)), -22242i, -_wgslsmith_add_i32(-6016i, 0i))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 77278u, u_input.a), vec3<u32>(11258u, var_1.x, 4294967295u)), ~u_input.a), _wgslsmith_div_vec3_u32(vec3<u32>(80765u, 63691u, 28001u), vec3<u32>(40895u, u_input.a, u_input.a)) | reverseBits(vec3<u32>(var_1.x, 33806u, u_input.a))), select(!vec3<bool>(true, true, all(vec3<bool>(false, false, true))), select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false))), vec3<bool>(4294967295u <= var_1.x, false, true), true), select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), any(vec2<bool>(true, true))), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), vec3<f32>(-821f, _wgslsmith_f_op_f32(step(222f, 602f)), 239f));
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.e), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1608f - var_2.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0)) - 1126f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a), arg_0)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))))));
    var var_4 = Struct_1(vec4<u32>(~var_2.c, var_1.x, ~var_1.x, 62845u << (1u % 32u)) ^ ~((vec4<u32>(16526u, 6453u, 12158u, u_input.a) & vec4<u32>(1u, 36934u, 16483u, 0u)) >> ((vec4<u32>(var_2.c, 24850u, u_input.a, 54028u) << (vec4<u32>(1u, 4294967295u, 4972u, var_1.x) % vec4<u32>(32u))) % vec4<u32>(32u))));
    return var_4.a.xxx;
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec3<i32>) -> f32 {
    let var_0 = select(_wgslsmith_div_u32(abs(func_1(vec3<u32>(4294967295u, 77663u, arg_1), false, 1u)), firstLeadingBit(abs(34898u))), 1u, false) & arg_1;
    let var_1 = abs(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(1u, u_input.a, 57774u)), ~(func_3(1000f) & _wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.a, 0u), vec3<u32>(arg_1, 4294967295u, arg_1)))));
    let var_2 = Struct_3(!select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(true, true, false, arg_0), arg_0), vec2<u32>(~arg_1, var_1), -arg_2.x | firstLeadingBit(arg_2.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-378f + -597f), _wgslsmith_f_op_f32(f32(-1f) * -266f), _wgslsmith_f_op_f32(f32(-1f) * -599f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-730f, 1032f, 233f) * vec3<f32>(-1000f, 1000f, -582f)))), vec3<f32>(960f, _wgslsmith_f_op_f32(744f - _wgslsmith_f_op_f32(abs(-698f))), _wgslsmith_f_op_f32(741f * -143f)), vec3<bool>(all(!vec3<bool>(arg_0, arg_0, arg_0)), !arg_0 & true, arg_0))), arg_1);
    var var_3 = Struct_5(_wgslsmith_clamp_u32(var_2.b.x, u_input.a, _wgslsmith_dot_vec4_u32(select(~vec4<u32>(24413u, 49977u, u_input.a, 1u), vec4<u32>(114116u, 4294967295u, var_2.e, 50182u), vec4<bool>(arg_0, true, false, true)), ~vec4<u32>(4294967295u, var_1, var_2.e, var_2.e))));
    let var_4 = max(~_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(arg_1, 0u)), ~vec2<u32>(arg_1, var_2.e), select(vec2<u32>(9417u, u_input.a), var_2.b, var_2.a.wy)), vec2<u32>(var_3.a, ~1u)), ~_wgslsmith_add_vec2_u32(var_2.b, var_2.b));
    return -1538f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(min(~func_1(vec3<u32>(u_input.a, u_input.a, 34488u) ^ vec3<u32>(79276u, u_input.a, u_input.a), true, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(0u, 4072u, 45632u, 4294967295u))), u_input.a), u_input.a);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -366f)) - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1526f, 976f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_2 = -233f;
    var_0 = u_input.a;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(func_2(any(vec4<bool>(true, true, true, true)), _wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(82494u, u_input.a), ~u_input.a), u_input.a << ((u_input.a ^ 36071u) % 32u)), abs(vec3<i32>(~(-39531i), 0i, 1i)))), Struct_1(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, u_input.a) | vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), firstLeadingBit(vec4<u32>(4294967295u, 2164u, 0u, u_input.a)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-109f, var_2))));
    var var_4 = Struct_1(vec4<u32>(55903u, _wgslsmith_mult_u32(var_3.b.a.x, ~_wgslsmith_div_u32(var_3.b.a.x, var_3.b.a.x)), _wgslsmith_dot_vec2_u32(select(_wgslsmith_div_vec2_u32(var_3.b.a.xz, var_3.b.a.yw), vec2<u32>(1u, 4294967295u) & var_3.b.a.xx, vec2<bool>(true, true)), reverseBits(var_3.b.a.ww >> (vec2<u32>(0u, 1u) % vec2<u32>(32u)))), func_1(~vec3<u32>(u_input.a, u_input.a, var_3.b.a.x), all(vec4<bool>(false, true, false, true)), 16003u)));
    var var_5 = true;
    let var_6 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(267f)), _wgslsmith_f_op_f32(f32(-1f) * -440f))) + var_3.c.x)));
    var var_7 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1206f)) - _wgslsmith_div_f32(401f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_6)), _wgslsmith_f_op_f32(var_6 * 1080f))))), _wgslsmith_f_op_f32(908f * 1186f), -1643f, _wgslsmith_f_op_f32(-var_3.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-1373f, 353f, _wgslsmith_f_op_f32(f32(-1f) * -987f)), var_7.yzy), _wgslsmith_f_op_vec3_f32(floor(var_7.xwy)), false)));
}

