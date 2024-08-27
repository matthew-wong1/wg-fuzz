struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<bool>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -837f, arg_1, arg_1)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -277f, 456f, arg_1)))), vec4<f32>(_wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(floor(arg_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(arg_1))))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_1, arg_1))), 161f)));
    return vec3<i32>(0i, _wgslsmith_mult_i32(_wgslsmith_add_i32(~arg_3.a, firstTrailingBit(_wgslsmith_sub_i32(35152i, arg_2.a))), -(26434i >> (1u % 32u))), ~(-49850i));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(~u_input.b);
    let var_1 = !vec2<bool>(false, any(!select(vec2<bool>(true, true), vec2<bool>(false, true), true)));
    var var_2 = ~func_3(Struct_2(u_input.b), 348f, Struct_1(firstLeadingBit(u_input.b) ^ (i32(-1i) * -2420i), false, vec2<bool>(true, var_1.x && true), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 17181i), vec2<i32>(var_0.a, -2147483647i)), var_1.x), Struct_2(var_0.a));
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1422f * -393f) + _wgslsmith_f_op_f32(f32(-1f) * -338f)))), 1460f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -905f) * _wgslsmith_f_op_f32(sign(721f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1454f))))) - vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-429f)))), _wgslsmith_f_op_f32(f32(-1f) * -357f), false)), 769f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1482f)), _wgslsmith_f_op_f32(abs(-664f))))), -303f));
    var var_4 = !vec2<bool>(var_1.x | ((var_1.x && false) & all(vec4<bool>(false, true, true, var_1.x))), any(vec2<bool>(true, true)));
    return Struct_2(var_0.a << (~min(u_input.a, ~u_input.a) % 32u));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(-firstTrailingBit(-1i ^ max(29120i, arg_0.a)), any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), !(1u >= u_input.a))), vec2<bool>(true, true), -arg_0.a, !(!any(vec3<bool>(true, true, true))));
    var_0 = Struct_1(-9222i, 1u == (~(u_input.a << (u_input.a % 32u)) << (~abs(34728u) % 32u)), var_0.c, u_input.b, false);
    var_0 = Struct_1(arg_0.a, var_0.b | false, select(select(vec2<bool>(all(vec4<bool>(true, true, var_0.c.x, true)), var_0.c.x), var_0.c, all(vec4<bool>(true, false, var_0.b, false))), !var_0.c, vec2<bool>(!all(var_0.c), true)), -2147483647i, select(var_0.c.x, any(vec3<bool>(true, false && var_0.c.x, false)), any(select(select(vec3<bool>(false, true, var_0.e), vec3<bool>(var_0.b, var_0.e, var_0.b), false), vec3<bool>(true, true, true), var_0.a >= -1i))));
    let var_1 = arg_0;
    var_0 = Struct_1(var_0.a >> (~_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(30608u, 0u, u_input.a, 10045u)), vec4<u32>(u_input.a, 52966u, 29701u, u_input.a)) % 32u), all(!vec2<bool>(!var_0.e, false && var_0.c.x)), var_0.c, _wgslsmith_sub_i32(1i, -5418i), true);
    return var_1;
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = func_4(func_2());
    let var_1 = Struct_1(51426i, false, select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, false)), true), !(~2147483647i < _wgslsmith_add_i32(1i, u_input.b))), -_wgslsmith_dot_vec2_i32(countOneBits(-vec2<i32>(u_input.b, 14498i)), abs(reverseBits(vec2<i32>(-1i, var_0.a)))), true);
    let var_2 = var_0;
    var var_3 = Struct_2(~(-38906i));
    let var_4 = vec2<u32>(_wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 2406u), vec4<u32>(u_input.a, 4294967295u, u_input.a, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, 7934u), vec4<u32>(u_input.a, 1u, 114803u, u_input.a))), ~_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 74989u, 0u, 2441u), vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.a))), _wgslsmith_mult_u32(~u_input.a, ~min(35802u, 18224u)));
    return -838f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_i32(~min(_wgslsmith_add_vec2_i32(-vec2<i32>(u_input.b, -2147483647i), vec2<i32>(u_input.b, u_input.b)), -(vec2<i32>(u_input.b, -9245i) ^ vec2<i32>(u_input.b, u_input.b))), ~_wgslsmith_add_vec2_i32(-vec2<i32>(-2147483647i, -2075i), vec2<i32>(reverseBits(u_input.b), max(-2147483647i, -18248i))));
    var_0 = -vec2<i32>(1i, 28479i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-1099f * _wgslsmith_f_op_f32(sign(-494f))), -1264f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1140f * -598f))))) + 967f), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, var_0.x, 9428i, -min(1i, 2147483647i)), vec4<i32>(-1i) * -(vec4<i32>(u_input.b, -50203i, u_input.b, -1i) | vec4<i32>(var_0.x, var_0.x, -1i, u_input.b))));
}

