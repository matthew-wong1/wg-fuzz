struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_1,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<bool>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = Struct_3(!(!select(vec2<bool>(false, arg_0.a), select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, true), arg_0.a), true)), Struct_2(arg_0), Struct_2(Struct_1(true, _wgslsmith_clamp_i32(1i, -47562i, -1i), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.b, 1u, 21735u), vec4<u32>(1u, 65015u, 1u, 1u)))), reverseBits(_wgslsmith_dot_vec2_i32(abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(9078i, 0i), vec2<i32>(arg_0.b, arg_0.b), vec2<i32>(arg_0.b, -26119i))), -vec2<i32>(arg_0.b, -6009i) ^ select(vec2<i32>(arg_0.b, 1i), vec2<i32>(arg_0.b, 10999i), arg_0.a))));
    var var_1 = var_0;
    var_1 = Struct_3(select(select(select(!var_1.a, var_1.a, var_1.b.a.a), select(!vec2<bool>(var_0.b.a.a, false), !vec2<bool>(true, var_0.b.a.a), u_input.b <= arg_0.c), all(select(vec4<bool>(true, false, false, arg_0.a), vec4<bool>(var_0.c.a.a, true, false, arg_0.a), vec4<bool>(arg_0.a, false, false, arg_0.a)))), !vec2<bool>(all(vec2<bool>(var_1.a.x, var_1.c.a.a)), var_1.c.a.a), var_1.a), Struct_2(Struct_1(all(var_0.a), ~(arg_0.b ^ -38227i), var_1.b.a.c)), Struct_2(Struct_1(true, ~(~var_1.d), arg_0.c)), var_0.d ^ arg_0.b);
    return any(vec4<bool>(false, any(vec2<bool>(true, true)), arg_0.a, all(!var_1.a))) & (true | all(var_0.a));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: vec3<bool>) -> vec4<i32> {
    var var_0 = abs(arg_0.wy);
    var var_1 = 56739i;
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-1439f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(687f + -420f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(602f + -1126f), -548f))), 1f));
    var var_3 = ~_wgslsmith_clamp_vec2_u32(vec2<u32>(reverseBits(~1u), _wgslsmith_div_u32(~26116u, firstTrailingBit(70832u))), vec2<u32>(~firstTrailingBit(79281u), _wgslsmith_dot_vec3_u32(~vec3<u32>(7099u, u_input.a, 21101u), arg_1.e)), min(arg_1.e.zx, countOneBits(~arg_1.e.xx)));
    var_0 = select(arg_0.xw | _wgslsmith_add_vec2_i32(~(-vec2<i32>(var_0.x, -15220i)), ~firstLeadingBit(arg_1.d.zz)), _wgslsmith_div_vec2_i32(arg_0.yw, ~arg_0.xx), arg_2.x);
    return vec4<i32>(abs(~arg_1.b.b.a.b), ~var_0.x, -4448i << (~select(u_input.b, var_3.x ^ 1u, !arg_2.x) % 32u), var_0.x);
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(~0u, u_input.b)), vec2<u32>(~u_input.a, countOneBits(66178u))), ~vec2<u32>(~(~6028u), u_input.b));
    var var_1 = _wgslsmith_add_vec4_i32(func_4(-vec4<i32>(_wgslsmith_clamp_i32(0i, 12919i, -16310i), -40423i, i32(-1i) * -1i, 1i), Struct_4(~(~82546u), Struct_3(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), Struct_2(Struct_1(true, 2147483647i, 0u)), Struct_2(Struct_1(false, 2147483647i, var_0.x)), -25093i), Struct_1(true, _wgslsmith_mult_i32(38281i, 11119i), var_0.x), vec3<i32>(-28329i, i32(-1i) * -38529i, 31249i), _wgslsmith_sub_vec3_u32(~vec3<u32>(21158u, var_0.x, var_0.x), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, var_0.x, 4294967295u), vec3<u32>(u_input.b, var_0.x, 32054u)))), vec3<bool>(!func_3(Struct_1(false, 91278i, u_input.a)), !(var_0.x < 1u), all(vec3<bool>(false, true, false)))), vec4<i32>(0i, -21794i, abs(-1i), -1i));
    let var_2 = Struct_4(_wgslsmith_dot_vec4_u32(~(~_wgslsmith_add_vec4_u32(vec4<u32>(63424u, 4294967295u, u_input.b, u_input.b), vec4<u32>(4294967295u, u_input.a, 75158u, 4294967295u))), ~(~vec4<u32>(55029u, u_input.b, var_0.x, 43513u))), Struct_3(select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), _wgslsmith_dot_vec3_i32(var_1.zzz, var_1.yzx) >= 1i), Struct_2(Struct_1(true, var_1.x, u_input.a | 37151u)), Struct_2(Struct_1(true, _wgslsmith_dot_vec2_i32(var_1.yw, var_1.zx), _wgslsmith_sub_u32(29973u, var_0.x))), _wgslsmith_clamp_i32(firstTrailingBit(~9595i), var_1.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -2155i), vec2<i32>(var_1.x, var_1.x)))), Struct_1(func_3(Struct_1(true, ~var_1.x, _wgslsmith_add_u32(1651u, 38510u))), var_1.x, ~u_input.b), var_1.yyw, vec3<u32>(1u, ~firstLeadingBit(u_input.a), 4294967295u));
    var_1 = countOneBits(~vec4<i32>(1i, _wgslsmith_mod_i32(var_1.x, -var_1.x), var_1.x, -33983i));
    let var_3 = ~_wgslsmith_dot_vec2_u32(select(var_0, _wgslsmith_add_vec2_u32(~var_2.e.yx, ~var_2.e.zy), true), min(~vec2<u32>(4294967295u, var_0.x), ~abs(vec2<u32>(u_input.a, u_input.b))));
    return true;
}

fn func_1() -> f32 {
    let var_0 = func_2() != all(vec3<bool>(true, true, false));
    var var_1 = !(!select(vec2<bool>(true, false), vec2<bool>(var_0, all(vec2<bool>(true, true))), any(vec2<bool>(var_0, true))));
    var var_2 = var_0;
    return _wgslsmith_f_op_f32(step(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(456f, 521f) - _wgslsmith_div_f32(476f, -1307f)))), -794f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2059f - 881f))))))));
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(-var_0) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_f32(1043f - -1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1901f, -312f)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, var_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(354f, -1000f)), var_2)))));
}

