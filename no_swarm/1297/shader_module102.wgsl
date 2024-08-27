struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> vec2<i32> {
    let var_0 = min(~u_input.a.x << (_wgslsmith_add_u32(arg_1.c.a, _wgslsmith_div_u32(arg_1.c.d, _wgslsmith_dot_vec3_u32(u_input.d.xyw, vec3<u32>(u_input.c.x, 0u, u_input.c.x)))) % 32u), _wgslsmith_mult_i32(max(-39872i, ~(~39239i)), -1i));
    var var_1 = firstLeadingBit(0u) >> (~_wgslsmith_sub_u32(~firstLeadingBit(49168u), u_input.c.x) % 32u);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-795f)) + -1000f));
    var_1 = firstLeadingBit(0u);
    let var_3 = firstLeadingBit(_wgslsmith_clamp_vec3_u32(~u_input.d.wzy, u_input.d.xxx, _wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(4205u, 38220u, 1u)), ~vec3<u32>(u_input.c.x, arg_1.c.a, 62889u)))) | vec3<u32>(59327u, _wgslsmith_clamp_u32(~u_input.d.x, arg_1.c.d << (1u % 32u), 1u) ^ ~arg_1.c.a, 3961u);
    return -_wgslsmith_mod_vec2_i32(-_wgslsmith_div_vec2_i32(u_input.a.zx, vec2<i32>(2147483647i, var_0)), abs(abs(~vec2<i32>(u_input.b, -1i))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.c, vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, arg_0.x, arg_0.x), min(arg_1.xwy, vec3<u32>(0u, arg_0.x, u_input.c.x))), _wgslsmith_sub_u32(~34923u, 0u))), max(arg_0, vec2<u32>(~reverseBits(u_input.d.x), abs(~4294967295u))));
    var var_1 = Struct_2(_wgslsmith_div_vec2_i32(select(min(max(u_input.a.yy, u_input.a.wx), _wgslsmith_mod_vec2_i32(u_input.e, vec2<i32>(u_input.a.x, 2147483647i))), func_3(_wgslsmith_f_op_f32(1594f * -1000f), Struct_2(u_input.a.zx, vec2<i32>(47532i, u_input.a.x), Struct_1(arg_1.x, -873f, vec4<bool>(false, true, true, true), arg_1.x))), true), vec2<i32>(reverseBits(1i), abs(~(-1i)))), -_wgslsmith_add_vec2_i32(-vec2<i32>(2391i, u_input.a.x) ^ ~u_input.e, u_input.e), Struct_1(~u_input.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -988f)), vec4<bool>(all(vec3<bool>(false, false, false)), true, true, true), _wgslsmith_mult_u32(4294967295u, ~(u_input.c.x >> (51765u % 32u)))));
    let var_2 = u_input.a.xy;
    var var_3 = true;
    let var_4 = true;
    return Struct_2(func_3(var_1.c.b, Struct_2(vec2<i32>(var_2.x, 1i), select(abs(vec2<i32>(var_1.b.x, 1i)), var_2, select(var_1.c.c.zz, var_1.c.c.ww, var_1.c.c.yz)), Struct_1(arg_0.x, _wgslsmith_f_op_f32(-var_1.c.b), vec4<bool>(var_1.c.c.x, true, var_4, var_4), 0u))), vec2<i32>(-1i) * -(min(vec2<i32>(-59915i, -2147483647i), var_2) >> (arg_1.zz % vec2<u32>(32u))), Struct_1(arg_1.x, -1000f, !select(select(var_1.c.c, var_1.c.c, vec4<bool>(var_4, false, false, false)), var_1.c.c, vec4<bool>(false, var_4, var_4, var_4)), 4294967295u));
}

fn func_1() -> Struct_2 {
    let var_0 = ~abs(vec4<u32>(_wgslsmith_clamp_u32(1u, u_input.d.x, ~1u), u_input.c.x, 4294967295u, u_input.c.x));
    let var_1 = func_2(u_input.c, vec4<u32>(u_input.c.x, ~0u, u_input.d.x, min(~4294967295u, 1u)));
    var var_2 = var_1.c;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.b, var_2.b, any(!var_1.c.c.yw)))) - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1521f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1476f * var_2.b), _wgslsmith_f_op_f32(var_2.b * -1000f)))), _wgslsmith_f_op_f32(floor(-312f)))));
    let var_4 = var_2.b;
    return var_1;
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    let var_0 = vec2<i32>(-1i, ~(~0i));
    let var_1 = max(firstLeadingBit(select(_wgslsmith_sub_vec3_i32(u_input.a.xwy, _wgslsmith_sub_vec3_i32(vec3<i32>(-34073i, var_0.x, arg_0.b.x), vec3<i32>(u_input.b, -25613i, arg_0.a.x))), vec3<i32>(-arg_0.a.x, -1i, ~u_input.e.x), arg_0.c.c.x)), -(~(~vec3<i32>(30646i, 34390i, arg_1))));
    let var_2 = ~u_input.d;
    let var_3 = var_2.x;
    let var_4 = u_input.c << ((~(~var_2.yx) | (_wgslsmith_div_vec2_u32(u_input.d.zx, u_input.c) >> (vec2<u32>(_wgslsmith_mod_u32(86438u, 7551u), ~14724u) % vec2<u32>(32u)))) % vec2<u32>(32u));
    return Struct_1(~var_3 ^ abs(66252u), _wgslsmith_f_op_f32(957f * arg_0.c.b), !arg_0.c.c, 10394u);
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> Struct_2 {
    var var_0 = ~(~18508u);
    var_0 = reverseBits(func_1().c.d);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(773f + _wgslsmith_f_op_f32(f32(-1f) * -325f)) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(143f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1 - arg_1), _wgslsmith_f_op_f32(f32(-1f) * -407f)))))));
    var_0 = ~33488u;
    var_0 = u_input.c.x;
    return Struct_2(firstLeadingBit(vec2<i32>(i32(-1i) * -42898i, -1i)), u_input.e, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.x;
    let var_1 = 2147483647i;
    let var_2 = abs(66326u);
    let var_3 = func_5(func_4(func_1(), _wgslsmith_sub_i32(~2147483647i, u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-561f))));
    let var_4 = true;
    let var_5 = func_5(func_1().c, var_3.c.b);
    var var_6 = vec3<u32>(abs(_wgslsmith_sub_u32(~12816u, 6164u)), ~var_3.c.d, var_2 << (func_5(Struct_1(select(0u, 11868u, true), _wgslsmith_div_f32(var_5.c.b, -1659f), select(vec4<bool>(false, false, var_4, false), vec4<bool>(var_4, var_5.c.c.x, false, var_4), var_3.c.c.x), var_3.c.a), 1000f).c.d % 32u));
    var var_7 = _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a.xzw, _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(3496i, var_5.a.x, -29578i) & u_input.a.xzz, _wgslsmith_mult_vec3_i32(u_input.a.xwy, vec3<i32>(var_1, u_input.e.x, var_5.a.x))), -vec3<i32>(var_1, u_input.b, var_5.b.x))), abs(vec3<i32>(var_3.a.x, -u_input.e.x, max(-1i, _wgslsmith_add_i32(1i, 9659i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_5.c.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_5.c.b), _wgslsmith_f_op_f32(-var_5.c.b)), 1175f, var_5.c.b) + vec4<f32>(-293f, var_3.c.b, -293f, var_3.c.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c.b, var_3.c.b, -1289f, 225f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(886f, -966f, 198f, var_3.c.b) - vec4<f32>(1000f, var_5.c.b, var_3.c.b, -1491f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_5.c.b, -1914f, -1000f, var_5.c.b)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-410f, var_3.c.b), vec2<f32>(731f, var_5.c.b), var_3.c.c.xx)) * vec2<f32>(var_3.c.b, var_3.c.b))))), vec3<u32>(~var_2, ~(~_wgslsmith_div_u32(var_2, 38913u)), var_2), -firstTrailingBit(u_input.a.xzx));
}

