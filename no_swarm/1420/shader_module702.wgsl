struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: Struct_1,
    d: bool,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_4,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    var var_0 = 323f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(424f + 820f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2443f, 158f, true))))) + -454f);
    var var_1 = !(!(any(vec2<bool>(false, false)) != (any(vec2<bool>(false, true)) && all(vec4<bool>(false, true, false, true)))));
    return 0i;
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> u32 {
    var var_0 = -arg_0.a.x;
    let var_1 = vec4<i32>(u_input.b << (~(~arg_1 ^ 29563u) % 32u), _wgslsmith_add_i32(0i, u_input.b), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(~_wgslsmith_div_i32(arg_0.c.b, -33302i), arg_0.c.b, _wgslsmith_div_i32(func_3(), u_input.b & -15050i)), arg_0.a.x | u_input.b), arg_0.c.b);
    let var_2 = arg_1;
    var var_3 = !vec2<bool>(false, arg_0.b.x || true);
    var_0 = var_1.x;
    return _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(1u, arg_0.c.d >> (reverseBits(arg_1) % 32u)), 0u), firstTrailingBit(1u));
}

fn func_1() -> Struct_3 {
    let var_0 = !any(vec2<bool>(all(vec3<bool>(false, false, true)), true));
    var var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(293f, 1000f)) - vec2<f32>(194f, 227f)))), Struct_4(728f, vec2<u32>(firstLeadingBit(0u << (u_input.a.x % 32u)), ~func_2(Struct_2(u_input.c, vec4<bool>(true, false, true, false), Struct_1(vec2<f32>(1281f, -398f), u_input.c.x, vec4<bool>(true, var_0, var_0, false), u_input.a.x), var_0, vec2<f32>(599f, -1144f)), u_input.d.x)), firstLeadingBit(-(vec3<i32>(-4033i, u_input.c.x, u_input.c.x) >> (u_input.a.zwy % vec3<u32>(32u)))), -_wgslsmith_dot_vec2_i32(abs(u_input.c), _wgslsmith_mod_vec2_i32(u_input.c, u_input.c))), Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1187f, -1000f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(551f, 1572f))), _wgslsmith_dot_vec3_i32(vec3<i32>(-20617i, 2905i, -44610i), vec3<i32>(1i, u_input.c.x, -2147483647i)), vec4<bool>(true, true, true, true), firstTrailingBit(_wgslsmith_mod_u32(u_input.d.x, u_input.a.x))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-591f, 710f), vec2<f32>(628f, -1094f)))), -u_input.c.x, !select(vec4<bool>(var_0, var_0, var_0, false), vec4<bool>(true, var_0, true, var_0), var_0), u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-398f)))), 22248u));
    var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(-144f)), _wgslsmith_div_f32(var_1.a.x, -893f)))), var_1.b, Struct_3(var_1.c.b, var_1.c.a, var_1.c.b.a.x, ~_wgslsmith_dot_vec2_u32(u_input.a.ww, vec2<u32>(49408u, u_input.d.x)) << (_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.d.x, u_input.d.x), var_1.c.d) % 32u)));
    let var_2 = i32(-1i) * -_wgslsmith_clamp_i32(u_input.b, firstTrailingBit(u_input.c.x), select(func_3(), u_input.c.x, var_1.c.a.d == var_1.b.b.x));
    var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(var_1.a, vec2<f32>(-1233f, -673f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(var_1.a))))), var_1.c.b.a, var_0)), Struct_4(544f, vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(var_1.b.b, var_1.b.b), u_input.d.x | 0u), countOneBits(~var_1.c.d)), countOneBits(select(vec3<i32>(var_2, u_input.b, 0i), vec3<i32>(0i, u_input.c.x, -2147483647i), var_1.c.a.c.x) << (_wgslsmith_mult_vec3_u32(u_input.a.xzw, u_input.a.yyy) % vec3<u32>(32u))), var_1.c.a.b), var_1.c);
    return var_1.c;
}

fn func_4(arg_0: Struct_3) -> i32 {
    let var_0 = !(!((arg_0.b.d > _wgslsmith_add_u32(u_input.a.x, arg_0.a.d)) || (_wgslsmith_f_op_f32(f32(-1f) * -1944f) >= _wgslsmith_f_op_f32(-arg_0.a.a.x))));
    var var_1 = !(~8498u <= _wgslsmith_clamp_u32(0u, arg_0.b.d, _wgslsmith_dot_vec4_u32(vec4<u32>(129927u, u_input.d.x, 7194u, arg_0.b.d), vec4<u32>(1u, u_input.a.x, 62982u, 18791u))));
    var_1 = arg_0.a.c.x;
    var_1 = any(func_1().a.c.zxy) | arg_0.b.c.x;
    var var_2 = vec4<i32>(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.b, arg_0.a.b, 2147483647i, 2147483647i), vec4<i32>(1i, arg_0.a.b, -1i, u_input.c.x))), _wgslsmith_add_i32(arg_0.a.b, select(28203i, ~arg_0.a.b, arg_0.b.c.x)), u_input.c.x, firstLeadingBit(max(arg_0.b.b, arg_0.a.b))) & vec4<i32>(arg_0.a.b, _wgslsmith_div_i32(reverseBits(~u_input.b), countOneBits(min(2147483647i, 14929i))), u_input.c.x, _wgslsmith_div_i32(func_3(), ~u_input.c.x << ((51778u & u_input.a.x) % 32u)));
    return abs(_wgslsmith_add_i32(var_2.x, _wgslsmith_add_i32(~func_3(), abs(-1i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = 0u;
    var_1 = ~u_input.a.x;
    var var_2 = ~(~_wgslsmith_mult_u32(u_input.d.x, u_input.a.x)) << (~_wgslsmith_sub_u32(1u, u_input.a.x >> (~u_input.d.x % 32u)) % 32u);
    var_2 = 40992u;
    var var_3 = var_0;
    var var_4 = Struct_4(-483f, vec2<u32>(12594u, 59837u), vec3<i32>(select(_wgslsmith_mult_i32(-24580i, 34327i), _wgslsmith_dot_vec2_i32(u_input.c, u_input.c) & ~u_input.c.x, true), -_wgslsmith_mod_i32(u_input.c.x, min(-40262i, 0i)), 0i), _wgslsmith_mult_i32(2147483647i, ~_wgslsmith_add_i32(u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 2147483647i, u_input.c.x), vec3<i32>(u_input.b, u_input.c.x, -2147483647i)))));
    var var_5 = vec4<i32>(max(-func_4(func_1()), var_4.c.x), _wgslsmith_sub_i32(func_3() ^ _wgslsmith_mult_i32(-var_4.c.x, ~(-2147483647i)), -1i), ~(~13886i), -abs(-34865i));
    let x = u_input.a;
    s_output = StorageBuffer(118f, u_input.a, ~var_4.c.x);
}

