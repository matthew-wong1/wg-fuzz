struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<u32> {
    var var_0 = vec2<u32>(1u, 1u);
    let var_1 = Struct_2(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, 76330u), vec2<u32>(0u, var_0.x), vec2<u32>(4294967295u, var_0.x)), vec2<u32>(_wgslsmith_mod_u32(1u, 456u), reverseBits(var_0.x))), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, ~var_0.x), ~firstLeadingBit(vec2<u32>(66336u, 0u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-674f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-888f * 470f), 1421f, true))))), Struct_1(0i, firstLeadingBit(2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2129f, -187f, -147f) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(499f, -947f, 1233f), vec3<f32>(449f, 433f, -637f))))), _wgslsmith_mod_u32(~var_0.x, 37744u) & 4294967295u), _wgslsmith_sub_i32(global0.x, u_input.a.x), all(select(vec2<bool>(true, false), vec2<bool>(true, all(vec4<bool>(true, true, false, true))), true)));
    var_0 = firstLeadingBit(vec2<u32>(0u | ~var_1.c.d, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 15720u), vec3<u32>(40567u, 29867u, 4294967295u)))) << (vec2<u32>(_wgslsmith_add_u32(~0u ^ var_1.a, 10409u), var_1.c.d) % vec2<u32>(32u));
    let var_2 = Struct_2(0u, var_1.b, Struct_1(-1i, -14877i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_1.c.c)))), countOneBits(~1u)), select(var_1.c.b, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~u_input.b, u_input.b), ~(~u_input.b)), false), any(select(!(!vec4<bool>(var_1.e, var_1.e, var_1.e, var_1.e)), vec4<bool>(var_1.e | var_1.e, true, true, true), select(select(vec4<bool>(var_1.e, var_1.e, var_1.e, false), vec4<bool>(var_1.e, var_1.e, var_1.e, var_1.e), var_1.e), vec4<bool>(false, true, false, true), true))));
    let var_3 = countOneBits(-vec4<i32>(_wgslsmith_mod_i32(u_input.a.x >> (var_2.a % 32u), 1i), var_2.d, select(global0.x, -var_1.d, true), _wgslsmith_div_i32(-global0.x, var_1.d)));
    return ~reverseBits(~(~min(vec4<u32>(var_2.a, 0u, 90986u, 1u), vec4<u32>(33856u, var_2.c.d, var_0.x, 1u))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: i32, arg_3: vec2<f32>) -> vec2<i32> {
    var var_0 = ~_wgslsmith_dot_vec4_i32(min((vec4<i32>(-1i, arg_2, 2147483647i, u_input.b.x) | u_input.b) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2, 1i, u_input.a.x, global0.x), vec4<i32>(u_input.b.x, global0.x, -2147483647i, -5429i), u_input.b), -vec4<i32>(6794i, u_input.a.x, -35189i, u_input.a.x)), _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(global0.x, arg_2, u_input.a.x, 1i)), _wgslsmith_clamp_vec4_i32(u_input.b, vec4<i32>(arg_2, 1i, u_input.a.x, u_input.b.x), u_input.b)) << (arg_1 % vec4<u32>(32u)));
    var var_1 = Struct_1(global0.x, u_input.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.x, -1577f, arg_3.x) + vec3<f32>(arg_3.x, arg_3.x, -360f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.x, arg_3.x, 830f) - vec3<f32>(265f, 1370f, -749f)))), vec3<f32>(_wgslsmith_f_op_f32(sign(-1641f)), -334f, _wgslsmith_f_op_f32(arg_3.x + arg_3.x)), vec3<bool>(arg_0.x, true, true)))), 54451u);
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_3.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1339f))));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(var_1.c.x * _wgslsmith_f_op_f32(min(-755f, arg_3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_3.x, arg_3.x)) * 974f))));
    let var_4 = !(!all(!vec2<bool>(true, arg_0.x)));
    return _wgslsmith_mod_vec2_i32((vec2<i32>(-1i, arg_2 << (var_1.d % 32u)) << (vec2<u32>(func_3().x, arg_1.x) % vec2<u32>(32u))) ^ select(u_input.b.xz, vec2<i32>(u_input.a.x, ~global0.x), !select(vec2<bool>(true, var_4), arg_0, vec2<bool>(true, true))), u_input.a.zz);
}

fn func_2(arg_0: Struct_2) -> u32 {
    global0 = func_4(select(vec2<bool>(any(vec2<bool>(true, false)), arg_0.a > 1u), vec2<bool>(arg_0.e, false), arg_0.e), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(27080u, arg_0.c.d, 4294967295u, arg_0.c.d)), firstLeadingBit(func_3())), select(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.b.x, global0.x), ~global0.x, _wgslsmith_clamp_i32(2147483647i, u_input.b.x, arg_0.c.b)), global0.x, u_input.b.x >= (arg_0.d >> (84933u % 32u))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-1000f * arg_0.c.c.x), arg_0.b)))) | reverseBits(u_input.a.yx);
    let var_0 = _wgslsmith_mult_vec3_i32(max(vec3<i32>(-1i) * -u_input.a, u_input.a ^ vec3<i32>(1i, -2147483647i, i32(-1i) * -26998i)), max(max(vec3<i32>(2147483647i, 22098i, arg_0.c.a), ~vec3<i32>(1i, -24795i, 0i)), _wgslsmith_clamp_vec3_i32(-vec3<i32>(-1i, u_input.b.x, -13973i), u_input.a, u_input.a)) ^ vec3<i32>(~(arg_0.d | global0.x), 25679i, ~(arg_0.d | u_input.a.x)));
    let var_1 = -vec2<i32>(-34033i | -_wgslsmith_mult_i32(-16065i, u_input.a.x), -arg_0.c.b);
    global0 = ~u_input.b.wz;
    global0 = firstTrailingBit(~(~_wgslsmith_mult_vec2_i32(var_0.zy, var_1)));
    return ~(~_wgslsmith_add_u32(23216u, 24422u));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_2) -> i32 {
    let var_0 = _wgslsmith_div_u32(arg_2.c.d, ~(~func_2(Struct_2(arg_0.a, -958f, Struct_1(-39160i, arg_0.c.b, arg_2.c.c, 4264u), arg_0.d, arg_2.e))));
    let var_1 = select(vec2<u32>(~1u, 32460u), vec2<u32>(func_3().x, func_3().x), select(select(arg_1.xy, vec2<bool>(false, arg_2.e), vec2<bool>(true, arg_2.e)), vec2<bool>(arg_1.x, any(vec4<bool>(true, false, arg_0.e, false))), vec2<bool>(true & all(vec4<bool>(true, arg_1.x, false, arg_2.e)), !arg_0.e)));
    let var_2 = vec4<bool>(select(select(false, select(true, !arg_1.x, true), !all(arg_1.yz)), !any(!vec3<bool>(arg_1.x, arg_1.x, arg_2.e)), any(!vec4<bool>(true, arg_0.e, arg_0.e, arg_1.x)) || all(vec4<bool>(false, arg_1.x, false, true))), true, false, all(arg_1.xx));
    var var_3 = reverseBits(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(u_input.b, _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, 1i, -2147483647i, -176i), u_input.b), ~u_input.b, _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.d, global0.x, -39881i, global0.x), u_input.b))), -(_wgslsmith_sub_i32(arg_2.d, -9352i) >> ((0u ^ arg_2.a) % 32u))));
    let var_4 = arg_0;
    return -1i >> (var_1.x % 32u);
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: vec4<i32>, arg_3: vec4<f32>) -> vec2<i32> {
    let var_0 = Struct_1(arg_1.x, 26682i, arg_3.ywx, 4294967295u);
    var var_1 = Struct_2(~arg_0.x, _wgslsmith_f_op_f32(max(-1001f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1103f))) - var_0.c.x))), Struct_1(u_input.a.x, i32(-1i) * -27181i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c - vec3<f32>(1371f, var_0.c.x, arg_3.x)) - var_0.c), arg_3.ywy), 43347u), _wgslsmith_mod_i32(var_0.b, ~func_4(vec2<bool>(true, true), vec4<u32>(arg_0.x, 117422u, 11228u, var_0.d) << (vec4<u32>(arg_0.x, var_0.d, arg_0.x, arg_0.x) % vec4<u32>(32u)), var_0.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1216f, -1000f))).x), !(all(vec4<bool>(true, true, false, false)) | any(vec3<bool>(false, false, true))));
    let var_2 = !select(vec4<bool>(true, var_1.e, -286f >= _wgslsmith_f_op_f32(step(arg_3.x, -163f)), var_1.e), select(vec4<bool>(select(var_1.e, true, false), var_1.e, true, var_1.e), vec4<bool>(var_1.e, !var_1.e, !var_1.e, !var_1.e), any(select(vec4<bool>(false, var_1.e, false, var_1.e), vec4<bool>(false, var_1.e, true, false), false))), !(-u_input.b.x == -2147483647i));
    var var_3 = vec4<i32>(-1i) * -arg_2;
    var var_4 = _wgslsmith_f_op_f32(776f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(455f))))));
    return vec2<i32>(i32(-1i) * -1i, func_1(Struct_2(~_wgslsmith_mult_u32(var_1.c.d, 4294967295u), arg_3.x, var_1.c, u_input.b.x, !all(vec2<bool>(var_1.e, false))), vec3<bool>(var_1.e, (var_0.c.x < var_1.c.c.x) || !var_2.x, any(!vec4<bool>(var_1.e, true, var_2.x, var_1.e))), Struct_2(arg_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.c.x, var_0.c.x), 327f, true)), var_1.c, max(func_1(Struct_2(var_1.c.d, var_1.b, var_1.c, 39948i, false), vec3<bool>(var_1.e, var_2.x, false), Struct_2(0u, -210f, var_1.c, -13009i, var_2.x)), 0i), var_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1080f, 178f, -946f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-596f, 1375f, -313f, 313f))))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-299f, _wgslsmith_f_op_f32(round(-404f)), _wgslsmith_f_op_f32(abs(1167f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    global0 = vec2<i32>(max(~(-_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, u_input.a.x, 50205i, global0.x), u_input.b)), _wgslsmith_mod_i32(reverseBits(26974i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a.x), u_input.a.yx)) & u_input.b.x), global0.x ^ ~2147483647i);
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 890f, var_0.x, var_0.x), vec4<f32>(720f, 517f, var_0.x, 347f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<f32>(317f, -665f, var_0.x, -246f), vec4<bool>(true, false, true, false)))) * vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(select(-1156f, var_0.x, false)), _wgslsmith_f_op_f32(round(var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 544f, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(324f, var_0.x, 256f, var_0.x))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-558f + -156f), _wgslsmith_f_op_f32(-var_0.x))));
    global0 = func_5(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 7071u, 0u), vec3<u32>(1u, 4294967295u, 27133u)), _wgslsmith_add_u32(33400u, 27785u)), vec2<u32>(min(108487u, 4294967295u), ~1u))), vec3<i32>(global0.x, func_1(Struct_2(31497u, -514f, Struct_1(12338i, global0.x, vec3<f32>(var_0.x, 843f, var_1), 0u), u_input.a.x, false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), Struct_2(0u, var_1, Struct_1(u_input.b.x, u_input.a.x, var_0.zww, 1u), global0.x, true)), u_input.a.x) ^ vec3<i32>(-31643i, reverseBits(min(global0.x, global0.x)), u_input.b.x), vec4<i32>(_wgslsmith_sub_i32(min(select(u_input.a.x, global0.x, false), select(u_input.b.x, 38226i, false)), 1i), u_input.a.x, func_1(Struct_2(~4294967295u, _wgslsmith_f_op_f32(-var_1), Struct_1(2147483647i, 11776i, var_0.xxw, 13332u), _wgslsmith_add_i32(14670i, 20692i), true), vec3<bool>(true, true, true), Struct_2(min(0u, 1u), _wgslsmith_f_op_f32(f32(-1f) * -361f), Struct_1(2147483647i, -51351i, var_0.zwx, 4294967295u), u_input.a.x, true)), global0.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_1, 1029f, var_0.x))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-412f, -561f, var_0.x, var_1)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1, 700f, -599f, var_0.x)))), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true)))));
    global0 = _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, _wgslsmith_sub_i32(~(~(-1i)), _wgslsmith_mult_i32(u_input.b.x, 0i) << (1u % 32u))), -vec2<i32>(firstTrailingBit(-15191i), 1i) | _wgslsmith_sub_vec2_i32(~u_input.a.xx, u_input.b.xy));
    let var_2 = Struct_2(10649u, var_0.x, Struct_1(global0.x, func_1(Struct_2(14027u, -1648f, Struct_1(18358i, 49761i, var_0.xxx, 28847u), global0.x, false), vec3<bool>(false, false, true), Struct_2(1u, var_1, Struct_1(global0.x, -13708i, var_0.wxw, 20486u), 1i, false)) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 24213u, 47083u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, 4294967295u, 1u), vec4<u32>(32895u, 4294967295u, 1u, 55359u), vec4<u32>(31859u, 1u, 1u, 1u))) % 32u), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1, _wgslsmith_f_op_f32(f32(-1f) * -1168f), -852f))), ~_wgslsmith_add_u32(28644u, 1u)), 61133i, !all(vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(86771u >> (var_2.a % 32u), vec4<f32>(var_1, _wgslsmith_f_op_f32(237f - _wgslsmith_f_op_f32(f32(-1f) * -219f)), _wgslsmith_f_op_f32(ceil(var_2.c.c.x)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.x, -2391f), var_0.x))));
}

