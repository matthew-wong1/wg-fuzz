struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec4<bool>,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<f32>) -> i32 {
    var var_0 = _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32((vec3<u32>(u_input.a, arg_0.b.x, u_input.a) | ~vec3<u32>(arg_0.b.x, arg_0.b.x, u_input.a)) | arg_0.b, arg_0.b), ~(arg_0.b.x | ~_wgslsmith_mod_u32(30232u, 4294967295u)));
    var_0 = reverseBits(countOneBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.b.x, 1u, arg_0.b.x), arg_0.b & vec3<u32>(arg_0.b.x, 31059u, arg_0.b.x)))) & arg_0.b.x;
    return firstLeadingBit(select(1i, -4737i, all(vec3<bool>(true, arg_1.c.x, true))) << (39962u % 32u));
}

fn func_2() -> Struct_2 {
    let var_0 = 17667u;
    let var_1 = true;
    let var_2 = !var_1;
    var var_3 = Struct_3(Struct_1(select(vec4<bool>(true, true, true, false), !vec4<bool>(false, var_1, var_1, var_2), all(vec3<bool>(var_2, var_2, var_2))), !vec2<bool>(u_input.a == 48871u, !var_1), select(select(select(vec4<bool>(false, var_2, false, var_2), vec4<bool>(true, var_1, var_2, true), var_2), !vec4<bool>(var_2, var_1, false, false), true), select(!vec4<bool>(false, false, var_2, true), vec4<bool>(var_1, true, var_2, var_1), var_1), var_2), -u_input.b.x, vec2<bool>(true, var_1)), !select(!select(vec2<bool>(false, var_1), vec2<bool>(var_1, false), vec2<bool>(true, true)), vec2<bool>(any(vec3<bool>(false, true, false)), any(vec4<bool>(var_2, false, var_2, true))), select(vec2<bool>(true, var_1), !vec2<bool>(false, var_1), vec2<bool>(true, true))), Struct_1(vec4<bool>(false, any(vec2<bool>(true, true)), !var_1, !(true != var_1)), vec2<bool>(_wgslsmith_add_i32(-390i, 1696i) <= -u_input.b.x, false), vec4<bool>(true, true, true, true), _wgslsmith_clamp_i32(firstTrailingBit(-u_input.b.x), u_input.b.x, select(~u_input.b.x, -66992i, true)), vec2<bool>(~var_0 != _wgslsmith_add_u32(var_0, 47401u), var_2)), Struct_1(vec4<bool>(!(var_2 && var_1), var_1, !var_1 && true, true), select(select(select(vec2<bool>(var_2, var_2), vec2<bool>(false, false), vec2<bool>(var_2, true)), vec2<bool>(false, var_1), !vec2<bool>(true, var_2)), vec2<bool>(var_2, false), !all(vec2<bool>(var_2, var_2))), !select(!vec4<bool>(var_2, var_1, false, var_1), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, var_1, false), vec4<bool>(var_2, var_1, false, false), var_2)), abs(-countOneBits(2147483647i)), !(!vec2<bool>(var_2, var_2))), ~(~(func_3(Struct_2(vec3<bool>(true, var_2, true), vec3<u32>(var_0, 1u, 4294967295u), vec2<i32>(u_input.b.x, -10206i), true, Struct_1(vec4<bool>(false, false, var_2, false), vec2<bool>(false, false), vec4<bool>(var_1, true, var_1, false), u_input.b.x, vec2<bool>(true, var_1))), Struct_1(vec4<bool>(var_2, false, var_1, var_1), vec2<bool>(var_1, false), vec4<bool>(false, var_1, var_2, false), 1i, vec2<bool>(true, true)), vec4<f32>(-155f, -1266f, -517f, 1900f)) & func_3(Struct_2(vec3<bool>(false, true, false), vec3<u32>(var_0, u_input.a, var_0), vec2<i32>(-2147483647i, -41757i), true, Struct_1(vec4<bool>(false, var_1, var_1, false), vec2<bool>(var_1, var_2), vec4<bool>(var_1, false, var_1, true), 17812i, vec2<bool>(var_2, var_1))), Struct_1(vec4<bool>(false, var_1, false, var_2), vec2<bool>(false, var_1), vec4<bool>(var_2, true, false, var_2), u_input.b.x, vec2<bool>(var_1, var_1)), vec4<f32>(357f, 379f, -802f, 631f)))));
    var_3 = Struct_3(var_3.a, vec2<bool>(!(!all(vec4<bool>(true, var_2, true, var_2))), false), Struct_1(var_3.d.a, var_3.b, !(!var_3.a.c), 3685i, !vec2<bool>(true, var_1)), Struct_1(var_3.a.c, !select(!var_3.d.c.xy, select(vec2<bool>(true, true), var_3.d.a.yx, true), true), select(select(select(var_3.a.c, vec4<bool>(var_2, var_1, false, true), true), vec4<bool>(false, false, true, false), var_1), select(select(vec4<bool>(true, var_2, false, var_2), var_3.a.a, var_3.a.a.x), !vec4<bool>(var_3.c.e.x, true, var_2, false), vec4<bool>(true, var_3.c.e.x, false, false)), vec4<bool>(var_3.a.d >= -12999i, !var_2, any(vec4<bool>(var_1, true, true, false)), false)), -(~abs(-2147483647i)), select(!var_3.d.a.zy, !vec2<bool>(var_1, var_1), vec2<bool>(var_3.b.x, var_2))), countOneBits(_wgslsmith_add_i32(var_3.d.d, var_3.c.d) & u_input.b.x));
    return Struct_2(!vec3<bool>(true, !all(var_3.d.a.xzx), true), ~max(reverseBits(firstLeadingBit(vec3<u32>(u_input.a, u_input.a, var_0))), vec3<u32>(var_0, var_0, 51789u) << (vec3<u32>(u_input.a, u_input.a, var_0) % vec3<u32>(32u))), firstTrailingBit(~(vec2<i32>(-1i, var_3.a.d) & vec2<i32>(1i, 2147483647i)) << (_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0, 0u), vec2<u32>(u_input.a, var_0)), _wgslsmith_add_vec2_u32(vec2<u32>(49573u, var_0), vec2<u32>(u_input.a, u_input.a))) % vec2<u32>(32u))), !var_3.d.c.x, Struct_1(var_3.c.c, !select(var_3.a.b, vec2<bool>(true, false), select(var_1, true, var_1)), select(!(!vec4<bool>(false, var_2, var_2, var_1)), var_3.c.c, vec4<bool>(var_1, any(vec3<bool>(var_1, var_3.b.x, false)), var_1, var_2 && true)), _wgslsmith_sub_i32(-11957i, _wgslsmith_add_i32(u_input.b.x, 25141i)), var_3.d.a.ww));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_clamp_u32(0u, max(u_input.a, 0u), ~(~(~1u)));
    var_0 = 1062u;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1470f, -785f, -1822f, 282f), vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1040f, -224f, -1000f, 284f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-512f, -1108f, 2167f, 1209f))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1018f, 972f, 452f, 792f)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(605f, -1617f, 283f, -1022f)))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(318f, 1417f, var_1.x) - var_1.xyz))))))));
    var_0 = 75810u;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = func_2().e;
    let var_2 = _wgslsmith_mult_vec2_i32(var_0.c, u_input.b);
    var_0 = func_2();
    var var_3 = var_0.d;
    var var_4 = Struct_3(var_0.e, vec2<bool>(any(!vec3<bool>(var_1.b.x, var_1.a.x, false)), all(!var_0.a)), Struct_1(func_1().e.c, !var_0.e.b, vec4<bool>(var_1.b.x, !all(var_0.a.zz), false, any(!var_1.c)), var_1.d, var_1.b), func_2().e, ~1550i);
    var var_5 = vec2<f32>(1f, 1f);
    var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(var_5.x, 394f)), _wgslsmith_f_op_f32(sign(var_5.x))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-827f, var_5.x), vec2<f32>(-2177f, var_5.x), vec2<bool>(true, var_0.d))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.x, 241f))))));
    let var_6 = _wgslsmith_div_i32(~var_2.x, ~(~_wgslsmith_mod_i32(var_1.d, _wgslsmith_clamp_i32(var_0.c.x, var_4.a.d, -2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_2.x, -56167i), min(vec3<i32>(u_input.b.x, var_1.d, var_0.c.x), vec3<i32>(var_4.c.d, -39583i, var_6))), 5576i, -_wgslsmith_sub_i32(7631i, -var_2.x)));
}

