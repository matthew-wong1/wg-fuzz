struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(619f)))) + 339f), max(vec2<i32>(_wgslsmith_mult_i32(u_input.c.x ^ -15308i, _wgslsmith_div_i32(u_input.c.x, -4881i)), _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.c.x, u_input.c.x), u_input.c.x)), ~u_input.c), ~(~4294967295u));
    var_0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-var_0.a)), var_0.a))), vec2<i32>(2147483647i, max(var_0.b.x, -var_0.b.x) >> (~var_0.c % 32u)), firstLeadingBit(countOneBits(1u)));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(var_0.a * var_0.a), vec2<i32>(-2147483647i, firstLeadingBit(firstLeadingBit(-14696i))), reverseBits(~(~u_input.b))), var_0.b.x, -(~(~var_0.b) << (max(vec2<u32>(123182u, var_0.c) ^ vec2<u32>(1u, 74385u), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(16660u, 0u))) % vec2<u32>(32u))), Struct_1(119f, select((vec2<i32>(u_input.c.x, var_0.b.x) >> (vec2<u32>(0u, 1u) % vec2<u32>(32u))) >> (firstTrailingBit(vec2<u32>(50207u, 0u)) % vec2<u32>(32u)), ~vec2<i32>(43841i, u_input.c.x), true), 1u), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-1275f + -2111f))), max(-abs(vec2<i32>(1i, var_0.b.x)), u_input.c), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(4890u, u_input.b)), firstLeadingBit(vec2<u32>(var_0.c, var_0.c))), abs(6055u), ~_wgslsmith_mult_u32(92168u, 41473u))));
    var_0 = Struct_1(918f, vec2<i32>(-1i, max((-2147483647i << (u_input.b % 32u)) << (u_input.a % 32u), u_input.c.x)), ~min(~(32126u << (u_input.b % 32u)), ~(u_input.b << (1u % 32u))));
    let var_2 = true;
    return _wgslsmith_dot_vec4_i32(vec4<i32>(0i >> ((_wgslsmith_add_u32(u_input.b, var_1.a.c) << (~var_1.d.c % 32u)) % 32u), ~u_input.c.x & var_1.d.b.x, max(~_wgslsmith_add_i32(2147483647i, var_1.b), 17039i), reverseBits(max(2147483647i, 1i)) << (var_1.a.c % 32u)), select(_wgslsmith_add_vec4_i32(abs(vec4<i32>(var_0.b.x, var_0.b.x, -136612i, var_1.e.b.x)), vec4<i32>(2147483647i, 1i, _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(-2147483647i, -2147483647i)), _wgslsmith_mod_i32(-9937i, -4928i))), -vec4<i32>(_wgslsmith_add_i32(var_1.a.b.x, var_0.b.x), ~u_input.c.x, ~2147483647i, u_input.c.x), var_2));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec3<u32>) -> vec3<i32> {
    var var_0 = Struct_2(arg_0.a, firstLeadingBit(func_3()), arg_0.d.b, arg_0.a, Struct_1(arg_0.a.a, vec2<i32>(func_3(), abs(u_input.c.x ^ -18152i)), 4294967295u));
    var var_1 = false;
    let var_2 = vec3<i32>(_wgslsmith_dot_vec4_i32(~min(vec4<i32>(var_0.d.b.x, 24614i, -13884i, 23102i) & vec4<i32>(0i, 2147483647i, 31916i, arg_0.b), min(vec4<i32>(arg_0.c.x, -2147483647i, var_0.c.x, var_0.a.b.x), vec4<i32>(arg_0.d.b.x, u_input.c.x, 15727i, arg_0.a.b.x))), vec4<i32>(arg_0.b, -(2147483647i ^ arg_0.d.b.x), ~arg_0.d.b.x, ~arg_0.a.b.x)), min(u_input.c.x, (_wgslsmith_div_i32(u_input.c.x, -2147483647i) & 0i) & 0i), _wgslsmith_mod_i32(var_0.b ^ u_input.c.x, _wgslsmith_sub_i32(arg_0.a.b.x, 57189i)));
    var_1 = true;
    let var_3 = !vec3<bool>(false, (arg_0.e.a == var_0.e.a) & true, !(!all(vec2<bool>(true, false))));
    return var_2;
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> Struct_2 {
    let var_0 = 8256i;
    var var_1 = arg_1;
    var_1 = 0u;
    let var_2 = -(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_0, arg_0.b.x, var_0) | vec3<i32>(var_0, u_input.c.x, var_0), reverseBits(vec3<i32>(27046i, u_input.c.x, 0i))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.c.x, arg_0.b.x, 7699i), vec4<i32>(-1i, 1i, var_0, arg_0.b.x)), 1i, arg_0.b.x)) & select(~vec3<i32>(u_input.c.x, -48878i, 0i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-15308i, -2147483647i, 12590i) >> (vec3<u32>(arg_1, arg_0.c, arg_0.c) % vec3<u32>(32u)), func_2(Struct_2(arg_0, -30818i, vec2<i32>(var_0, u_input.c.x), arg_0, Struct_1(arg_0.a, arg_0.b, arg_1)), vec3<u32>(1u, arg_0.c, u_input.b), vec3<u32>(u_input.a, u_input.a, arg_1)), vec3<i32>(var_0, 31782i, -2147483647i)), vec3<bool>(true, true, true)));
    var_1 = reverseBits(_wgslsmith_add_u32(u_input.a, arg_0.c));
    return Struct_2(arg_0, select(-var_2.x | (func_2(Struct_2(Struct_1(-631f, arg_0.b, 60505u), var_0, u_input.c, Struct_1(arg_0.a, u_input.c, 4294967295u), Struct_1(-431f, var_2.zx, arg_0.c)), vec3<u32>(u_input.b, u_input.a, u_input.a), vec3<u32>(arg_0.c, u_input.a, arg_0.c)).x << (1u % 32u)), arg_0.b.x, arg_0.b.x > u_input.c.x), ~countOneBits(vec2<i32>(abs(-85425i), -var_0)), arg_0, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-328f + -306f) * _wgslsmith_f_op_f32(-1000f - -1477f)))), _wgslsmith_add_vec2_i32(u_input.c, u_input.c), 4294967295u), _wgslsmith_mult_u32(firstTrailingBit(~12389u), ~(~(~u_input.a))));
    var var_1 = ~firstTrailingBit(func_1(func_1(Struct_1(1000f, u_input.c, u_input.b), var_0.a.c).d, u_input.a).a.c);
    var_0 = Struct_2(func_1(func_1(Struct_1(_wgslsmith_f_op_f32(-356f * var_0.d.a), vec2<i32>(var_0.c.x, var_0.b), ~55040u), _wgslsmith_add_u32(u_input.b, firstLeadingBit(var_0.a.c))).a, 0u).a, 13304i, select(u_input.c, select(vec2<i32>(var_0.b, 0i), u_input.c, (30820u == u_input.b) & all(vec2<bool>(false, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), var_0.e, func_1(func_1(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -780f), -vec2<i32>(-2147483647i, -2147483647i), _wgslsmith_clamp_u32(61149u, 1u, u_input.b)), _wgslsmith_mult_u32(var_0.a.c, 4294967295u)).d, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 25281u, 4294967295u), vec3<u32>(u_input.a, u_input.b, 1137u)), var_0.e.c & 2686u) | _wgslsmith_sub_u32(var_0.d.c ^ 0u, 1u)).e);
    let var_2 = !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), ~1u < _wgslsmith_add_u32(u_input.b, u_input.a)));
    var var_3 = Struct_2(var_0.d, _wgslsmith_add_i32(-_wgslsmith_mult_i32(var_0.a.b.x, 2147483647i), _wgslsmith_sub_i32(1i, reverseBits(-9982i))) | 10676i, vec2<i32>(0i, _wgslsmith_sub_i32(u_input.c.x, _wgslsmith_mod_i32(u_input.c.x, u_input.c.x))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1304f, var_0.d.a)) + _wgslsmith_f_op_f32(-var_0.d.a)) * -164f), select(~u_input.c, vec2<i32>(28946i, func_1(var_0.a, var_0.d.c).e.b.x), false), var_0.d.c), func_1(func_1(Struct_1(-653f, vec2<i32>(var_0.d.b.x, u_input.c.x), ~u_input.b), firstLeadingBit(11956u)).e, var_0.d.c).a);
    let var_4 = true;
    let var_5 = _wgslsmith_div_vec2_f32(vec2<f32>(-563f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.e.a, 1936f)))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_3.d.a, -148f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.a.a, var_0.a.a))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a.a, 703f, var_3.e.a, -440f))) - vec4<f32>(var_0.a.a, -1017f, var_5.x, var_3.a.a))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.e.a * var_0.e.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.d.a, var_3.d.a) - 608f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.d.a))), -750f)), _wgslsmith_div_vec4_i32(abs(vec4<i32>(-1i) * -vec4<i32>(var_0.a.b.x, u_input.c.x, 0i, -10084i)), abs(~vec4<i32>(86224i, var_0.a.b.x, 2147483647i, -12255i)) << (vec4<u32>(min(var_0.d.c, var_3.d.c), 2508u, min(1u, 4294967295u), 4294967295u ^ u_input.b) % vec4<u32>(32u))));
}

