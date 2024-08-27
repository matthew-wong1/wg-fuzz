struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> bool {
    let var_0 = 1f;
    let var_1 = Struct_1(arg_3.b, -u_input.a.x, arg_3.c);
    return !all(select(select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), select(vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x), vec4<bool>(arg_2.x, true, true, false), true), u_input.e < 4294967295u), select(select(vec4<bool>(false, true, arg_2.x, false), vec4<bool>(arg_2.x, false, true, false), vec4<bool>(true, false, false, arg_2.x)), !vec4<bool>(arg_2.x, false, true, false), select(vec4<bool>(arg_2.x, arg_2.x, false, false), vec4<bool>(arg_2.x, arg_2.x, true, true), vec4<bool>(arg_2.x, arg_2.x, true, false))), select(!vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), select(vec4<bool>(arg_2.x, arg_2.x, false, true), vec4<bool>(false, true, false, arg_2.x), arg_2.x), false)));
}

fn func_2(arg_0: bool) -> vec2<bool> {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, _wgslsmith_clamp_u32(~u_input.e, ~4294967295u, ~u_input.d), ~51670u & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, u_input.e, 4294967295u, 27898u), vec4<u32>(2168u, 23475u, u_input.e, 0u))), ~_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e, 36232u, 0u), vec3<u32>(92544u, u_input.d, u_input.e)), vec3<u32>(u_input.e, _wgslsmith_div_u32(32975u, u_input.e), ~0u)));
    var var_2 = Struct_1(max(-2147483647i, 0i), u_input.c.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(736f, 105f, 1452f, 1328f), vec4<f32>(-465f, 995f, -581f, -506f), vec4<bool>(arg_0, arg_0, arg_0, arg_0)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -752f), _wgslsmith_f_op_f32(f32(-1f) * -393f), _wgslsmith_f_op_f32(min(-705f, 1279f)), _wgslsmith_div_f32(-609f, -508f)), func_3(vec2<u32>(var_1.x, 15578u), Struct_1(-1599i, 65264i, vec4<f32>(2017f, 1000f, 586f, 178f)), select(vec3<bool>(false, true, arg_0), vec3<bool>(arg_0, true, true), vec3<bool>(arg_0, false, arg_0)), Struct_1(u_input.b, u_input.c.x, vec4<f32>(-1816f, -327f, -1000f, -1000f))))), vec4<f32>(-974f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -898f) + _wgslsmith_f_op_f32(abs(1000f))), 797f, _wgslsmith_div_f32(-203f, _wgslsmith_f_op_f32(step(-272f, 619f))))));
    var var_3 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, _wgslsmith_mod_i32(~u_input.b, _wgslsmith_add_i32(var_2.a, var_2.a))), u_input.c), reverseBits(1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_2.c, var_2.c)));
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -648f);
    return vec2<bool>(all(!(!(!vec2<bool>(arg_0, arg_0)))), false);
}

fn func_1(arg_0: i32, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_vec2_u32(select(~vec2<u32>(_wgslsmith_add_u32(u_input.d, 1u), 4294967295u), ~arg_1.wy | _wgslsmith_mod_vec2_u32(arg_1.ww, arg_1.yw), select(vec2<bool>(any(vec4<bool>(false, false, true, false)), true), func_2(false), false)), vec2<u32>(~26178u, _wgslsmith_div_u32(1u, ~(~1u))), ~select(arg_1.xx, ~_wgslsmith_mod_vec2_u32(arg_1.zz, vec2<u32>(arg_1.x, 43993u)), any(vec2<bool>(true, true))));
    var var_1 = (27589u << (_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 0u, var_0.x), vec3<u32>(max(0u, 4294967295u), var_0.x, 17435u >> (u_input.d % 32u))) % 32u)) << (~max(0u, _wgslsmith_mult_u32(35040u, u_input.e) ^ 0u) % 32u);
    let var_2 = vec4<bool>(!all(vec4<bool>(true, true, true, true)), false, true, false);
    var_1 = var_0.x;
    var var_3 = !(!any(vec2<bool>(true, var_2.x)));
    return Struct_1(arg_0, firstLeadingBit(-_wgslsmith_dot_vec3_i32(abs(u_input.a.yzx), vec3<i32>(arg_0, 0i, 2147483647i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-905f, 453f), _wgslsmith_f_op_f32(f32(-1f) * -1866f), _wgslsmith_f_op_f32(round(993f)), -635f) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-199f, -2383f, -1821f, 600f), vec4<f32>(-821f, -1061f, -1750f, -1674f))))))));
}

fn func_4(arg_0: vec4<u32>, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> u32 {
    let var_0 = func_1(max(-29757i, arg_3.b), firstLeadingBit(arg_0));
    var var_1 = Struct_1(_wgslsmith_clamp_i32(-arg_3.b, arg_3.b, -1i), -1i, _wgslsmith_f_op_vec4_f32(step(arg_3.c, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-183f, var_0.c.x, 220f, var_0.c.x)))), vec4<f32>(var_0.c.x, -507f, -954f, _wgslsmith_div_f32(arg_3.c.x, arg_3.c.x)))))));
    var_1 = func_1(_wgslsmith_mod_i32(var_0.a, u_input.b), ~_wgslsmith_sub_vec4_u32(~firstLeadingBit(arg_0), vec4<u32>(arg_0.x, min(4821u, 38723u), ~75347u, 1u)));
    var_1 = Struct_1(~(-23921i), arg_3.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_1.c)) + vec4<f32>(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-var_0.c.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(620f, var_0.c.x)))), _wgslsmith_f_op_f32(179f * 682f), 1000f)));
    var var_2 = func_1(1i, ~arg_0);
    return u_input.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_mult_i32(abs(-78394i), firstTrailingBit(_wgslsmith_add_i32(u_input.c.x, u_input.c.x) ^ -u_input.c.x)), u_input.c.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-266f, 982f, -837f, 586f)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-886f, -682f, -352f, 991f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1434f - 2143f), _wgslsmith_div_f32(684f, 122f), -327f, -287f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(u_input.d, func_4(vec4<u32>(u_input.d, ~94451u, ~39565u, ~4294967295u), any(vec3<bool>(true, true, true)), 26615u, func_1(-u_input.b, _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, u_input.e, u_input.d, u_input.e), vec4<u32>(0u, u_input.e, 21432u, 1u))))), ~max(~vec2<u32>(u_input.d, 64625u), vec2<u32>(~1u, 79947u >> (u_input.e % 32u))), (u_input.e & ~0u) << (u_input.d % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c.zz)) - var_0.c.xw)), _wgslsmith_mod_vec2_u32(~vec2<u32>(1u, u_input.d) ^ ~vec2<u32>(0u, 0u), _wgslsmith_add_vec2_u32(~(~vec2<u32>(0u, u_input.e)), ~vec2<u32>(1u, 1u))));
}

