struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: Struct_3,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_4,
    c: vec4<u32>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: u32,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = Struct_5(vec3<u32>(u_input.a, _wgslsmith_mod_u32(0u, reverseBits(u_input.a) | min(u_input.a, 1u)), ~(u_input.a ^ ~u_input.a)), Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_f32(trunc(arg_0))), select(vec2<bool>(false, false), vec2<bool>(true, true), true)), vec4<f32>(-620f, -152f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1141f) + arg_0), _wgslsmith_f_op_f32(-arg_0)), Struct_3(Struct_1(-1000f), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, false), true)), vec3<u32>((u_input.a ^ 4294967295u) ^ 0u, u_input.a, u_input.a), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - arg_0)))), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 54308u, 12794u, 4294967295u), select(vec4<u32>(16542u, 1u, 4294967295u, 0u), vec4<u32>(u_input.a, u_input.a, 98135u, u_input.a), true) ^ min(vec4<u32>(45218u, 18146u, 14589u, 0u), vec4<u32>(u_input.a, 123456u, u_input.a, 5725u))), vec4<u32>(~_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a), u_input.a ^ 81856u, u_input.a << (u_input.a % 32u), 0u)), true, _wgslsmith_mult_i32(u_input.b, u_input.b));
    var_0 = Struct_5(var_0.c.yxw, Struct_4(Struct_3(Struct_1(arg_0), !vec2<bool>(true, var_0.b.c.b.x)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-1451f, 1823f), _wgslsmith_f_op_f32(-var_0.b.b.x)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(var_0.b.c.a.a + arg_0), arg_0), var_0.b.a, min(var_0.c.wzy, _wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, u_input.a, 67496u), var_0.b.d, min(var_0.b.d, vec3<u32>(1u, var_0.b.d.x, var_0.a.x)))), var_0.b.e), select(vec4<u32>(1u, 34608u, 3972u, ~(17873u << (var_0.b.d.x % 32u))), var_0.c, !vec4<bool>(true, -240f == arg_0, !var_0.d, var_0.d)), var_0.b.c.b.x, _wgslsmith_sub_i32(-firstTrailingBit(var_0.e), -1i) & (_wgslsmith_clamp_i32(-33588i >> (0u % 32u), var_0.e, var_0.e ^ -36202i) << (_wgslsmith_clamp_u32(~var_0.a.x, _wgslsmith_add_u32(0u, var_0.b.d.x), 4294967295u) % 32u)));
    var var_1 = !select(vec4<bool>(var_0.b.c.b.x && !var_0.d, any(vec2<bool>(var_0.b.c.b.x, var_0.d)), true, !var_0.d), vec4<bool>(!var_0.b.a.b.x, all(!vec2<bool>(var_0.b.c.b.x, var_0.d)), (-1i > var_0.e) & (arg_0 > var_0.b.b.x), false), all(!vec3<bool>(true, var_0.b.a.b.x, false)));
    return var_0.b.c.b.x;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(Struct_1(-134f), !vec4<bool>(any(vec2<bool>(false, true)) || false, all(vec4<bool>(true, true, true, true)), func_3(_wgslsmith_f_op_f32(f32(-1f) * -539f)), all(vec3<bool>(true, true, true))), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -307f), _wgslsmith_f_op_f32(floor(969f)), true))))), vec3<bool>(all(vec2<bool>(true, true)) | true, false, true));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-443f)) - _wgslsmith_f_op_f32(var_0.a.a + var_0.c.a)))))) + var_0.c.a);
    var var_2 = 0u;
    let var_3 = var_0.c;
    var var_4 = Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-163f, 387f)))), vec2<bool>(!var_0.b.x, false)), vec4<f32>(var_1, var_0.c.a, _wgslsmith_f_op_f32(floor(1254f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1628f, var_3.a))))), Struct_3(var_0.c, vec2<bool>(true, var_0.d.x)), (abs(vec3<u32>(u_input.a, 38524u, u_input.a)) >> ((vec3<u32>(u_input.a, u_input.a, u_input.a) >> (vec3<u32>(4294967295u, u_input.a, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u))) ^ ~vec3<u32>(u_input.a ^ 0u, _wgslsmith_clamp_u32(0u, u_input.a, 4294967295u), 1u), var_3);
    return Struct_2(var_0.c, vec4<bool>(true, all(vec2<bool>(true, true)), select(var_4.c.b.x, func_3(_wgslsmith_f_op_f32(281f - var_4.c.a.a)), any(vec3<bool>(var_0.b.x, false, var_0.b.x))), any(select(select(vec3<bool>(false, false, false), vec3<bool>(var_0.b.x, true, var_4.a.b.x), var_0.d.x), !var_0.b.xyx, any(var_0.b)))), var_3, !select(vec3<bool>(var_0.d.x, !var_4.a.b.x, select(false, var_4.c.b.x, false)), select(vec3<bool>(true, var_0.b.x, false), !var_0.b.wxx, true), select(vec3<bool>(var_0.d.x, var_0.b.x, var_4.c.b.x), select(var_0.b.wyx, vec3<bool>(var_0.d.x, true, false), vec3<bool>(true, var_0.b.x, var_0.b.x)), vec3<bool>(true, var_0.d.x, true))));
}

fn func_1(arg_0: u32) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(500f, 627f, any(vec4<bool>(true, false, false, true)))), -1568f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-757f, 278f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1330f)))), _wgslsmith_f_op_f32(sign(-893f))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, 1f, 1f, 1f))));
    var var_1 = func_2();
    var var_2 = func_2().b.yxy;
    var_1 = func_2();
    var var_3 = countOneBits(vec3<u32>(~u_input.a, arg_0, ~(~(~arg_0))));
    return vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.a), _wgslsmith_f_op_f32(758f + _wgslsmith_f_op_f32(var_0.x - var_1.c.a)), var_1.c.a, -139f);
}

fn func_4(arg_0: vec4<f32>, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(932f * _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1415f - arg_0.x))))));
    var_0 = func_2().c;
    let var_1 = Struct_5(vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, 51730u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 99150u, u_input.a), vec3<u32>(4294967295u, 14688u, 1u)), ~vec3<u32>(u_input.a, 66838u, 63698u)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 41089u, 70583u)), 4294967295u, abs(55901u))), u_input.a, _wgslsmith_add_u32(0u, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.a, u_input.a), firstLeadingBit(0u), u_input.a))), Struct_4(Struct_3(func_2().c, vec2<bool>(false, true)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(arg_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.a, 427f, 714f) - vec4<f32>(-348f, 1000f, 131f, var_0.a))), _wgslsmith_f_op_vec4_f32(-arg_0)), Struct_3(func_2().a, vec2<bool>(true, true)), ~max(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(1u, 32106u, 29039u) & vec3<u32>(u_input.a, 7051u, 54774u)), func_2().c), select(vec4<u32>(_wgslsmith_div_u32(1u, 1u), u_input.a, _wgslsmith_mult_u32(u_input.a, u_input.a), 77703u), ~vec4<u32>(1u, 1455u, 13420u, 65354u) << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 110212u, 1u), vec4<u32>(17727u, u_input.a, 0u, u_input.a)) % vec4<u32>(32u)), vec4<bool>(true, true, false, 4294967295u >= u_input.a)) | abs(firstTrailingBit(max(vec4<u32>(23017u, u_input.a, 2144u, u_input.a), vec4<u32>(u_input.a, 14169u, u_input.a, 4294967295u)))), true, u_input.b);
    var_0 = Struct_1(-702f);
    var var_2 = var_1.b.b.x;
    return func_2().a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_1(1u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(616f, 138f, 740f, -418f) - vec4<f32>(985f, -647f, 1086f, -2205f)))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -1657f, -700f, 1575f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-227f, -233f, 2072f, -1759f))), vec4<bool>(true, false, false, true)))), _wgslsmith_sub_i32(i32(-1i) * -u_input.b, 2147483647i)), func_2().b.zz);
    var var_1 = func_2();
    let var_2 = var_0.b.x;
    var_1 = func_2();
    var_1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(~56353u, _wgslsmith_f_op_vec4_f32(func_1(4294967295u)).x, func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(314f, var_1.c.a, var_0.a.a, var_1.c.a), vec4<f32>(var_0.a.a, 1900f, var_1.a.a, 479f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1025f, var_1.c.a, var_1.c.a, var_0.a.a), vec4<f32>(var_1.c.a, 1306f, var_0.a.a, 389f), var_1.b)))), -2783i).a, 1u);
}

