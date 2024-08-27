struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: bool,
    d: vec2<u32>,
    e: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 2>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<u32> {
    global0 = array<vec3<f32>, 2>();
    var var_0 = vec4<u32>(0u, 1u, 16789u, ~1u);
    var var_1 = Struct_2(_wgslsmith_sub_i32(i32(-1i) * -u_input.c.x, u_input.c.x), _wgslsmith_dot_vec3_i32(-countOneBits(u_input.c.wyy >> (u_input.a % vec3<u32>(32u))), select(_wgslsmith_mult_vec3_i32(vec3<i32>(-20199i, 2147483647i, -44114i), select(vec3<i32>(u_input.c.x, 1i, 0i), u_input.c.xww, vec3<bool>(false, true, false))), ~_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, -2330i), u_input.c.xzx), any(vec3<bool>(true, true, true)))), true, vec2<u32>(~u_input.a.x, 13675u ^ select(u_input.a.x, u_input.d.x, false)) >> (_wgslsmith_sub_vec2_u32(max(_wgslsmith_add_vec2_u32(vec2<u32>(23023u, var_0.x), u_input.a.xx), vec2<u32>(1u, 101098u)), var_0.wz) % vec2<u32>(32u)), u_input.c.x);
    let var_2 = -610f;
    let var_3 = 2147483647i;
    return ~var_0.wz;
}

fn func_2(arg_0: i32, arg_1: vec3<i32>) -> f32 {
    let var_0 = ~u_input.a.x & ~(~0u);
    var var_1 = i32(-1i) * -(_wgslsmith_mod_i32(-1i | arg_0, 2147483647i) & max(firstLeadingBit(u_input.c.x), _wgslsmith_dot_vec4_i32(u_input.c, u_input.c)));
    global0 = array<vec3<f32>, 2>();
    var var_2 = Struct_3(~min(105238u, 18517u), Struct_2(abs(4195i), abs(arg_1.x) >> (0u % 32u), true, u_input.b, 15196i), true);
    let var_3 = vec4<u32>(reverseBits(_wgslsmith_add_u32(~abs(var_0), _wgslsmith_mult_u32(var_2.a, var_2.a))), ~_wgslsmith_dot_vec2_u32(~func_3(), vec2<u32>(var_2.b.d.x, 5850u) & ~vec2<u32>(0u, u_input.d.x)), 3662u, ~u_input.a.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-229f, _wgslsmith_f_op_f32(f32(-1f) * -547f), true)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(588f, -339f)) * -1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(616f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -258f)) - 1820f));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: i32) -> vec2<u32> {
    let var_0 = Struct_1(u_input.c.zw, !vec4<bool>(true, true, any(vec4<bool>(true, true, false, false)), select(true, any(vec4<bool>(false, true, false, true)), true)), vec4<f32>(905f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1))))), _wgslsmith_f_op_f32(sign(-954f)), -441f));
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, 37571u, 1u) << (firstLeadingBit(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(u_input.d.x, u_input.a.x, u_input.b.x, u_input.a.x)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 30426u, 48497u, 3911u), vec4<u32>(u_input.d.x, 77161u, 20694u, 7128u)))) % vec4<u32>(32u)), select(vec4<u32>(max(1u, 45828u), firstTrailingBit(~u_input.d.x), 1u, 6970u), _wgslsmith_div_vec4_u32(abs(vec4<u32>(47473u, u_input.b.x, u_input.a.x, 52860u) & vec4<u32>(u_input.b.x, 25025u, u_input.a.x, u_input.d.x)), abs(vec4<u32>(4177u, u_input.b.x, u_input.a.x, 0u))), var_0.b));
    let var_2 = vec3<f32>(541f, -115f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * 893f)) * -337f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -684f) + arg_1)))));
    var var_3 = Struct_1(vec2<i32>(_wgslsmith_mod_i32(firstTrailingBit(-1i), i32(-1i) * -2147483647i), abs(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-1i, var_0.a.x, 2147483647i, var_0.a.x)), u_input.c))), var_0.b, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-726f, 504f, var_0.c.x, arg_0))) - _wgslsmith_f_op_vec4_f32(exp2(var_0.c)))), vec4<f32>(_wgslsmith_div_f32(670f, _wgslsmith_f_op_f32(f32(-1f) * -1075f)), -592f, arg_1, 2047f))));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * -1453f)))) * var_2.x), _wgslsmith_f_op_f32(func_2(~12416i, u_input.c.ywz)), arg_1);
    return abs(select(~u_input.b, vec2<u32>(u_input.b.x, _wgslsmith_mult_u32(1u ^ u_input.b.x, u_input.d.x)), var_0.b.yy));
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    global0 = array<vec3<f32>, 2>();
    var var_0 = max(vec2<u32>(u_input.a.x, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_add_u32(~u_input.a.x, _wgslsmith_mult_u32(arg_0.x, arg_0.x)), 4294967295u), _wgslsmith_sub_vec2_u32(func_4(_wgslsmith_div_f32(-1259f, 1027f), _wgslsmith_f_op_f32(func_2(31145i, vec3<i32>(u_input.c.x, u_input.c.x, 15583i))), u_input.c.x), ~max(vec2<u32>(u_input.b.x, u_input.d.x), u_input.b))));
    var_0 = u_input.a.yx;
    global0 = array<vec3<f32>, 2>();
    var_0 = select(abs(~(~vec2<u32>(arg_0.x, 1u))), _wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(arg_0.x, u_input.a.x)), vec2<u32>(min(_wgslsmith_mult_u32(var_0.x, 23222u), u_input.d.x), ~abs(60071u))), select(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), any(vec2<bool>(false, false))), !vec2<bool>(all(vec2<bool>(true, false)), true), vec2<bool>(any(vec3<bool>(true, true, true)), true)));
    return Struct_2(reverseBits(~(~u_input.c.x) ^ u_input.c.x), u_input.c.x, false, _wgslsmith_div_vec2_u32(~u_input.b << ((u_input.d.zz & vec2<u32>(u_input.b.x, arg_0.x)) % vec2<u32>(32u)), firstLeadingBit(vec2<u32>(~71334u, ~u_input.d.x))), firstLeadingBit(abs(~u_input.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.a);
    var var_1 = Struct_3(u_input.d.x, var_0, any(!select(vec3<bool>(var_0.c, true, true), select(vec3<bool>(var_0.c, var_0.c, var_0.c), vec3<bool>(true, var_0.c, true), false), select(vec3<bool>(var_0.c, false, var_0.c), vec3<bool>(var_0.c, false, var_0.c), false))));
    global0 = array<vec3<f32>, 2>();
    var_1 = Struct_3(var_0.d.x, func_1(vec3<u32>(0u, var_1.a >> (var_0.d.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, var_1.a, var_1.b.d.x, u_input.a.x), vec4<u32>(u_input.a.x, 4294967295u, 1u, 29074u))) << (((u_input.a | u_input.a) >> (vec3<u32>(24654u, var_0.d.x, 1242u) % vec3<u32>(32u))) % vec3<u32>(32u))), var_1.c);
    let var_2 = Struct_3(~(~u_input.a.x), var_1.b, var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.xzz, u_input.d, -u_input.c);
}

