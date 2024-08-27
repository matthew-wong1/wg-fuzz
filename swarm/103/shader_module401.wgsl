struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec2<i32>,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_2(false, 13734i, Struct_1(min(-vec3<i32>(1i, u_input.c.x, 2147483647i), vec3<i32>(_wgslsmith_div_i32(43379i, u_input.c.x), _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, -58870i, u_input.c.x, -1i)), countOneBits(u_input.d))), any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), false)) | true, vec2<i32>(-_wgslsmith_dot_vec3_i32(u_input.c.wwy, vec3<i32>(-2147483647i, u_input.a, -1i)), u_input.d), vec2<i32>(_wgslsmith_clamp_i32(1i, u_input.a, u_input.c.x) << (u_input.b.x % 32u), u_input.c.x), any(vec3<bool>(u_input.b.x > 4294967295u, all(vec4<bool>(true, true, false, false)), all(vec2<bool>(true, false))))));
    global0 = false;
    var_0 = Struct_2(var_0.a | (_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b, u_input.c.x), vec2<i32>(0i, var_0.b)), select(-48016i, u_input.a, var_0.c.e)) <= _wgslsmith_dot_vec2_i32(vec2<i32>(-41670i, var_0.b), max(vec2<i32>(-2147483647i, var_0.c.a.x), var_0.c.a.zy))), 0i, var_0.c);
    let var_1 = Struct_2(false, -10894i, Struct_1(vec3<i32>(u_input.a << (u_input.b.x % 32u), i32(-1i) * -var_0.c.d.x, -(~var_0.c.c.x)), true, var_0.c.c >> ((~vec2<u32>(u_input.b.x, 4294967295u) & firstTrailingBit(vec2<u32>(u_input.b.x, u_input.b.x))) % vec2<u32>(32u)), u_input.c.wz, false));
    let var_2 = u_input.c;
    return select(!vec4<bool>(false || any(vec3<bool>(var_1.a, false, var_0.a)), _wgslsmith_dot_vec2_i32(vec2<i32>(13993i, var_1.b), vec2<i32>(0i, 52722i)) >= -u_input.d, countOneBits(46239u) > abs(u_input.b.x), true), !(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, var_0.a, true, var_0.a), vec4<bool>(var_0.c.e, false, true, true)), select(vec4<bool>(true, var_1.c.e, true, var_1.c.b), vec4<bool>(true, var_1.c.e, var_0.c.e, true), vec4<bool>(true, true, var_0.c.e, var_0.c.e)), vec4<bool>(true, false, var_0.a, var_1.c.e))), !vec4<bool>(var_0.a, true, true & all(vec4<bool>(var_1.a, var_1.a, false, var_0.c.e)), false));
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.c;
    var_0 = vec4<i32>(53024i << (0u % 32u), -1i, -2147483647i, -1257i);
    let var_1 = var_0.yy << ((abs(abs(vec2<u32>(0u, 30244u) & vec2<u32>(26198u, u_input.b.x))) | min(_wgslsmith_mod_vec2_u32(u_input.b.yx, vec2<u32>(u_input.b.x, u_input.b.x)), vec2<u32>(_wgslsmith_clamp_u32(16100u, 118867u, 1u), 3100u))) % vec2<u32>(32u));
    let var_2 = Struct_2(!all(!func_3()), var_1.x, Struct_1(~(~abs(u_input.c.xxz)), true, vec2<i32>(-1i) * -vec2<i32>(var_0.x, 10581i), abs(var_1), false));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(sign(800f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1195f, 954f), vec2<f32>(-973f, -628f)))))));
    return var_2.c;
}

fn func_1() -> u32 {
    var var_0 = !vec3<bool>(true, any(vec4<bool>(true, true, true, true)) && false, true);
    let var_1 = Struct_1(u_input.c.xww, true, firstLeadingBit(-(~abs(u_input.c.yz))), _wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -abs(u_input.c.yy), u_input.c.wx), var_0.x);
    let var_2 = func_2();
    let var_3 = Struct_2(var_2.e, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(reverseBits(_wgslsmith_mult_vec3_i32(var_1.a, vec3<i32>(var_2.c.x, 2147483647i, u_input.c.x))), firstLeadingBit(-var_1.a)), vec3<i32>(~var_1.a.x, -2147483647i, u_input.d) & (var_2.a | ~var_1.a)), var_1);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1083f + -1352f)))))));
    return ~_wgslsmith_add_u32(_wgslsmith_add_u32(1u, u_input.b.x), 1042u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(135f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -707f))));
    global0 = func_1() <= 1u;
    global0 = any(!(!vec4<bool>(false, false, true, all(vec3<bool>(true, true, true)))));
    let var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.c, vec4<i32>(2147483647i, 61196i, 1i, _wgslsmith_div_i32(u_input.c.x, u_input.c.x))), abs(~u_input.c)), countOneBits(u_input.d));
    global0 = select(false, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-632f)), _wgslsmith_f_op_f32(var_0 - var_0)))) == _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-2078f * -1000f)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(171f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(699f, var_0, true)), _wgslsmith_f_op_f32(-var_0))))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -689f) + var_0);
    var var_2 = func_2();
    global0 = -1456f <= _wgslsmith_f_op_f32(sign(409f));
    var var_3 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(var_0)));
}

