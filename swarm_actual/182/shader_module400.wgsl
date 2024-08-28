struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: u32,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: f32,
    d: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_2, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = vec3<f32>(arg_3.e, 167f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -427f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_3.d.x)) - arg_0.d.e)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.d.a.x)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_3.a))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_0.d.d), _wgslsmith_f_op_vec3_f32(arg_1.d.d - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.d.e, arg_1.d.a.x, -743f)))))), arg_1.d.c < arg_3.c))));
    var var_2 = Struct_4(~(-2147483647i), select(!arg_0.b, vec2<bool>(all(!arg_2.a.zzz), any(arg_2.a)), select(arg_1.b, select(vec2<bool>(false, arg_0.b.x), !vec2<bool>(arg_1.b.x, false), u_input.a.x <= 1u), true)), ~arg_1.c, arg_0.d);
    var_0 = vec3<f32>(arg_0.d.d.x, 403f, 724f);
    let var_3 = var_2.d.e;
    return select(!vec4<bool>(u_input.a.x >= _wgslsmith_add_u32(21639u, 0u), true || all(vec4<bool>(false, false, arg_0.d.b, var_2.d.b)), countOneBits(arg_3.c) > ~54522u, any(vec2<bool>(arg_1.b.x, arg_1.b.x))), !vec4<bool>(all(!arg_2.a), false, arg_2.a.x, !arg_1.d.b || (var_2.d.c == u_input.a.x)), true);
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_3 {
    let var_0 = !vec4<bool>(_wgslsmith_add_u32(max(41204u, u_input.a.x), ~4294967295u) < 542u, all(!select(vec2<bool>(true, false), vec2<bool>(true, true), false)), any(func_3(Struct_4(u_input.b, vec2<bool>(false, true), -16086i, Struct_1(vec3<f32>(arg_1, 459f, -1890f), true, u_input.a.x, vec3<f32>(-2132f, 1542f, arg_0), arg_1)), Struct_4(u_input.b, vec2<bool>(false, false), -10261i, Struct_1(vec3<f32>(arg_0, arg_0, -1163f), true, 0u, vec3<f32>(-388f, arg_0, arg_0), arg_1)), Struct_2(vec4<bool>(false, true, true, false)), Struct_1(vec3<f32>(-1334f, 346f, arg_0), true, u_input.a.x, vec3<f32>(arg_0, 368f, -1094f), 379f))), min(u_input.b, u_input.b) != -3448i);
    let var_1 = countOneBits(_wgslsmith_mult_vec2_u32(~u_input.a, u_input.a));
    let var_2 = !func_3(Struct_4((u_input.b << (4294967295u % 32u)) << ((var_1.x & 39849u) % 32u), var_0.ww, -2147483647i, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1959f, arg_0)), true, countOneBits(0u), vec3<f32>(arg_1, arg_0, arg_1), arg_0)), Struct_4(-14909i, !func_3(Struct_4(18968i, vec2<bool>(var_0.x, false), 1i, Struct_1(vec3<f32>(-1789f, arg_0, arg_0), var_0.x, 81480u, vec3<f32>(-1284f, 474f, arg_1), arg_0)), Struct_4(u_input.b, vec2<bool>(false, var_0.x), u_input.b, Struct_1(vec3<f32>(1000f, -875f, arg_0), var_0.x, u_input.a.x, vec3<f32>(arg_0, -963f, arg_0), arg_1)), Struct_2(var_0), Struct_1(vec3<f32>(arg_1, arg_1, -385f), var_0.x, 4294967295u, vec3<f32>(arg_0, arg_1, arg_0), 927f)).ww, u_input.b, Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(793f, arg_0, arg_0))), !var_0.x, 9451u, vec3<f32>(-188f, -147f, arg_0), 1116f)), Struct_2(vec4<bool>(var_0.x, true, true, all(vec3<bool>(false, var_0.x, var_0.x)))), Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1458f, arg_0, 641f), vec3<f32>(arg_1, 585f, -1504f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0, arg_1, -1956f))))), !all(var_0.xw), _wgslsmith_add_u32(~4294967295u, 1u >> (0u % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1, arg_1, arg_1), vec3<f32>(arg_1, 438f, arg_1))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1225f, arg_1, arg_1)))), arg_1)).wwx;
    let var_3 = _wgslsmith_dot_vec2_u32(abs(var_1), vec2<u32>(var_1.x, ~u_input.a.x));
    var var_4 = var_3;
    return Struct_3(Struct_2(vec4<bool>(true, !any(var_2.zz), any(select(var_2, var_0.yxz, vec3<bool>(true, var_2.x, var_0.x))), var_0.x || var_0.x)), abs(_wgslsmith_dot_vec4_u32(~max(vec4<u32>(25190u, 1u, 4294967295u, 1u), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, var_3)), _wgslsmith_div_vec4_u32(min(vec4<u32>(var_1.x, u_input.a.x, var_3, var_3), vec4<u32>(0u, var_3, 4294967295u, var_1.x)), vec4<u32>(var_1.x, var_3, var_1.x, var_3)))), arg_0, _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(62434u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 13775u, u_input.a.x, 1u), vec4<u32>(3491u, 1u, 0u, u_input.a.x))), _wgslsmith_mod_vec2_u32(var_1, vec2<u32>(19524u, var_3)) ^ vec2<u32>(1u, u_input.a.x), ~(~var_1)), vec2<u32>(u_input.a.x, 4945u)));
}

fn func_1() -> Struct_2 {
    let var_0 = firstLeadingBit(1i);
    var var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(280f + _wgslsmith_f_op_f32(min(380f, 313f))) - -986f)), 679f);
    var_1 = Struct_3(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-517f + var_1.c) + _wgslsmith_f_op_f32(abs(var_1.c))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1465f)))).a, 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.c + var_1.c))))), vec2<u32>(var_1.d.x, var_1.b));
    let var_2 = 4294967295u;
    var_1 = func_2(-593f, _wgslsmith_f_op_f32(sign(var_1.c)));
    return func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -345f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(474f - -628f), -936f)) - 331f))).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)))), ~(_wgslsmith_sub_u32(u_input.a.x, 37620u) | u_input.a.x) >> (_wgslsmith_mod_u32(u_input.a.x ^ u_input.a.x, _wgslsmith_div_u32(1u, 19837u)) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-3053f, _wgslsmith_f_op_f32(f32(-1f) * -102f))), vec2<u32>(~(~1u), _wgslsmith_mod_u32(countOneBits(abs(u_input.a.x)), 4763u >> ((u_input.a.x >> (0u % 32u)) % 32u))));
    let var_1 = !vec2<bool>(var_0.a.a.x, true);
    var_0 = Struct_3(func_1(), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.b, 4294967295u, var_0.d.x), vec3<u32>(u_input.a.x, u_input.a.x, 13547u)), _wgslsmith_mod_u32(4294967295u, u_input.a.x) & 1u) >> (~_wgslsmith_clamp_u32(~var_0.b, 6157u, ~5127u) % 32u), var_0.c, _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(var_0.b, 4294967295u), var_0.b), _wgslsmith_add_vec2_u32(abs(vec2<u32>(var_0.d.x, u_input.a.x)), select(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(1u, var_0.b), var_1))) >> (vec2<u32>(firstTrailingBit(abs(var_0.d.x)), 0u) % vec2<u32>(32u)));
    var var_2 = func_1();
    var_0 = Struct_3(Struct_2(!var_0.a.a), 74221u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_0.c, var_0.c, all(var_2.a.zwx))), var_0.c)), _wgslsmith_f_op_f32(f32(-1f) * -1273f))), abs(_wgslsmith_mult_vec2_u32(func_2(var_0.c, 1008f).d ^ abs(vec2<u32>(var_0.b, u_input.a.x)), vec2<u32>(4294967295u, _wgslsmith_mult_u32(u_input.a.x, var_0.b)))));
    let var_3 = vec2<bool>(false, !(!(any(vec2<bool>(true, true)) | var_2.a.x)));
    var var_4 = u_input.a.x;
    let var_5 = func_2(var_0.c, _wgslsmith_f_op_f32(-var_0.c)).a;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, -941f, 13963u);
}

