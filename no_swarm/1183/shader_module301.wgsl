struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: bool,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<i32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<i32>) -> u32 {
    var var_0 = -2147483647i & u_input.b.x;
    let var_1 = Struct_5(vec4<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)), !any(vec2<bool>(true, true)), true, true), vec3<u32>(34545u, reverseBits(0u), 4294967295u), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1375f, 410f), vec2<f32>(265f, -2778f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1024f, 891f), vec2<f32>(574f, -2135f), vec2<bool>(true, false)))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 293f))))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1231f, -930f))))))));
    var_0 = ~arg_1.x;
    let var_2 = countOneBits(var_1.b.xz);
    let var_3 = vec3<bool>(true, (_wgslsmith_f_op_f32(-var_1.d.x) > -362f) | (reverseBits(-3401i) >= select(arg_1.x, -66932i, true)), all(var_1.a.zyw));
    return ~_wgslsmith_sub_u32(select(13888u, select(_wgslsmith_mult_u32(var_2.x, var_2.x), 0u, true), all(select(vec3<bool>(var_3.x, var_1.c, var_3.x), var_3, var_1.a.yyz))), ~(~(u_input.c << (u_input.c % 32u))));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_4(Struct_3(Struct_1(vec4<u32>(~u_input.c, func_3(vec2<u32>(u_input.c, 0u), vec3<i32>(u_input.b.x, 0i, u_input.a)), 1u, u_input.c)), false, Struct_2(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), true), Struct_1(~vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)), Struct_1(~vec4<u32>(u_input.c, 1u, 7357u, 1u)))));
    let var_1 = select(!select(!vec3<bool>(var_0.a.b, true, false), vec3<bool>(false, !var_0.a.b, false), var_0.a.b), !vec3<bool>(select(false, true, any(vec4<bool>(true, true, var_0.a.c.a.x, false))), var_0.a.b, false), all(!select(vec4<bool>(var_0.a.c.a.x, var_0.a.b, var_0.a.c.a.x, true), vec4<bool>(true, var_0.a.b, var_0.a.b, var_0.a.c.a.x), var_0.a.c.a.x)) || !select(false, var_0.a.c.a.x, true));
    var_0 = Struct_4(var_0.a);
    var_0 = Struct_4(Struct_3(var_0.a.a, false, Struct_2(select(var_0.a.c.a, select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(false, false), true), var_0.a.c.a), var_0.a.c.c, Struct_1(vec4<u32>(9120u, var_0.a.c.b.a.x, 1u, u_input.c)))));
    var_0 = Struct_4(Struct_3(var_0.a.c.c, !var_1.x, var_0.a.c));
    return Struct_3(Struct_1(abs(~var_0.a.a.a << (min(var_0.a.a.a, vec4<u32>(u_input.c, var_0.a.c.b.a.x, 13562u, u_input.c)) % vec4<u32>(32u)))), select(false, true, var_1.x), var_0.a.c);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec3<f32>) -> vec4<u32> {
    let var_0 = ~arg_2.a.yzx;
    var var_1 = func_2();
    var_1 = Struct_3(func_2().a, var_1.b, var_1.c);
    let var_2 = -u_input.b;
    var var_3 = 4294967295u;
    return reverseBits(reverseBits(var_1.a.a));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: i32) -> Struct_5 {
    var var_0 = Struct_4(func_2());
    var var_1 = ~41219u;
    var var_2 = vec3<i32>(_wgslsmith_dot_vec4_i32(-(~vec4<i32>(1i, 2147483647i, -26631i, 1i)), vec4<i32>(_wgslsmith_dot_vec2_i32(-arg_1, _wgslsmith_clamp_vec2_i32(u_input.b.xy, u_input.b.zx, arg_1)), -27640i, max(-arg_1.x, i32(-1i) * -55342i), _wgslsmith_sub_i32(u_input.a, firstLeadingBit(arg_3)))), -1i << (_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_0.a.c.c.a.x, arg_2.a.x, var_0.a.a.a.x), arg_2.a) ^ _wgslsmith_clamp_vec4_u32(arg_2.a, vec4<u32>(var_0.a.a.a.x, 15406u, u_input.c, 0u), arg_2.a), ~vec4<u32>(u_input.c, 0u, var_0.a.c.c.a.x, 859u)) % 32u), _wgslsmith_dot_vec2_i32(arg_1, vec2<i32>(~(-1i), u_input.a)));
    var_1 = _wgslsmith_mod_u32(0u, _wgslsmith_mod_u32(arg_2.a.x, 1u));
    var_0 = Struct_4(var_0.a);
    return Struct_5(select(vec4<bool>(var_0.a.c.a.x, true, var_0.a.c.a.x, var_0.a.c.a.x), !vec4<bool>(!var_0.a.b, var_0.a.a.a.x >= 4294967295u, true, func_2().c.a.x), any(vec2<bool>(arg_0.x, any(vec2<bool>(var_0.a.b, arg_0.x))))), vec3<u32>(4294967295u, _wgslsmith_mod_u32(0u, arg_2.a.x), ~_wgslsmith_div_u32(var_0.a.a.a.x, 88739u)), false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(348f, 2064f) * vec2<f32>(-1125f, -158f)) * _wgslsmith_div_vec2_f32(vec2<f32>(-710f, -509f), vec2<f32>(-270f, -1481f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1481f, 933f) - vec2<f32>(177f, 365f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(977f, 1026f) - vec2<f32>(-1101f, 1451f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(!vec2<bool>(true, !all(vec4<bool>(true, true, true, true))), -vec2<i32>(u_input.a, -2147483647i), Struct_1(_wgslsmith_div_vec4_u32(func_1(vec4<bool>(false, true, false, false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(362f, 1116f, -1169f)), Struct_1(vec4<u32>(u_input.c, 54677u, u_input.c, u_input.c)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-251f, 1729f, 1725f)))), ~func_1(vec4<bool>(false, false, false, false), vec3<f32>(917f, -1067f, 1000f), Struct_1(vec4<u32>(0u, u_input.c, u_input.c, 4294967295u)), vec3<f32>(198f, 953f, 798f)))), firstTrailingBit(2147483647i));
    let var_1 = var_0.b.yz;
    var var_2 = Struct_3(func_2().a, false, func_2().c);
    var_2 = func_2();
    var var_3 = Struct_4(Struct_3(Struct_1(vec4<u32>(~61758u, var_1.x, min(var_1.x, 51026u), var_1.x & var_1.x)), true, func_2().c));
    let var_4 = var_0.c;
    var var_5 = 2147483647i;
    let var_6 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(var_0.d - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_0.d + var_0.d))))), _wgslsmith_f_op_f32(-var_0.d.x), -(~vec4<i32>(u_input.b.x, ~32654i, _wgslsmith_dot_vec4_i32(vec4<i32>(11439i, u_input.b.x, 0i, u_input.b.x), vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, 0i)), 1i)), _wgslsmith_add_u32(87341u, _wgslsmith_mult_u32(firstLeadingBit(9423u), 6599u)), vec4<i32>(-1i) * -(vec4<i32>(u_input.a, 0i, 1i, u_input.a) & -vec4<i32>(-26997i, 13874i, -2147483647i, u_input.a)));
}

