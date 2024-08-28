struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: bool, arg_3: i32) -> vec4<bool> {
    let var_0 = ~select(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_div_u32(16279u, arg_1.a.a), ~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(61689u, 12379u), u_input.c.xy)), ~vec3<u32>(21167u, arg_1.c, 0u)), u_input.c, select(vec3<bool>(!arg_1.a.d, false, false), select(vec3<bool>(false, arg_1.a.d, arg_2), vec3<bool>(arg_1.b.d, true, true), select(vec3<bool>(false, true, arg_2), vec3<bool>(false, true, arg_2), false)), arg_1.a.d && arg_1.b.d));
    let var_1 = arg_1.a;
    var var_2 = var_0.zx & vec2<u32>(~0u, u_input.b);
    var var_3 = var_1;
    return !(!(!select(vec4<bool>(true, true, arg_1.a.d, true), select(vec4<bool>(true, var_1.d, false, arg_1.b.d), vec4<bool>(true, true, true, var_3.d), vec4<bool>(arg_1.a.d, arg_1.a.d, false, false)), select(vec4<bool>(true, false, true, var_3.d), vec4<bool>(var_3.d, false, false, arg_2), true))));
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> vec4<bool> {
    let var_0 = ~u_input.a.yz;
    let var_1 = Struct_1(19082u, 29788u, _wgslsmith_f_op_vec3_f32(-arg_0.a.a.c), all(select(!(!vec4<bool>(arg_0.a.b.d, arg_0.a.b.d, arg_0.a.a.d, true)), select(!vec4<bool>(arg_0.a.a.d, arg_0.a.a.d, arg_0.a.a.d, arg_0.a.a.d), func_2(609f, Struct_2(arg_0.a.b, arg_0.a.b, 26090u, 1i), true, 2147483647i), select(vec4<bool>(arg_0.a.a.d, false, false, arg_0.a.a.d), vec4<bool>(false, false, arg_0.a.b.d, arg_0.a.a.d), arg_0.a.a.d)), arg_0.a.a.d)));
    let var_2 = select(!(!(!vec4<bool>(true, arg_0.a.b.d, arg_0.a.a.d, arg_0.a.b.d))), select(!(!vec4<bool>(true, var_1.d, arg_0.a.b.d, false)), !vec4<bool>(arg_0.a.a.d, 1u < arg_1, true, true), vec4<bool>(true, all(select(vec2<bool>(false, arg_0.a.a.d), vec2<bool>(false, arg_0.a.a.d), vec2<bool>(true, var_1.d))), var_1.d, all(select(vec3<bool>(true, true, arg_0.a.b.d), vec3<bool>(true, false, false), vec3<bool>(false, false, var_1.d))))), vec4<bool>(false, true, true | var_1.d, var_1.d));
    var var_3 = Struct_3(Struct_2(var_1, arg_0.a.a, ~u_input.c.x, var_0.x));
    let var_4 = -u_input.a;
    return var_2;
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec3<u32>) -> Struct_3 {
    var var_0 = select(!select(vec4<bool>(select(arg_0.a.d, true, arg_0.b.d), false, arg_0.b.d, arg_0.a.d), select(!vec4<bool>(arg_0.b.d, true, arg_0.a.d, true), select(vec4<bool>(arg_0.a.d, arg_0.a.d, true, true), vec4<bool>(arg_0.a.d, arg_0.b.d, false, arg_0.a.d), arg_0.a.d), !vec4<bool>(arg_0.a.d, arg_0.a.d, false, arg_0.b.d)), all(!vec4<bool>(true, arg_0.b.d, arg_0.a.d, true))), select(!select(!vec4<bool>(true, true, arg_0.a.d, arg_0.b.d), select(vec4<bool>(true, arg_0.b.d, false, arg_0.a.d), vec4<bool>(arg_0.a.d, arg_0.a.d, arg_0.b.d, arg_0.b.d), true), vec4<bool>(false, arg_0.a.d, false, arg_0.b.d)), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(820f)) * _wgslsmith_f_op_f32(sign(-1068f))), arg_0, true, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x) ^ u_input.a.zz, vec2<i32>(-14355i, 1i))), true), select(!(!vec4<bool>(false, arg_0.b.d, false, arg_0.b.d)), !(!vec4<bool>(arg_0.a.d, arg_0.b.d, false, true)), !select(vec4<bool>(false, arg_0.b.d, true, arg_0.a.d), func_3(Struct_3(Struct_2(arg_0.b, Struct_1(0u, arg_0.a.b, vec3<f32>(arg_0.a.c.x, arg_1, 524f), arg_0.a.d), u_input.c.x, 1i)), arg_0.b.a), true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-533f))), _wgslsmith_div_f32(arg_1, arg_0.b.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-885f + -599f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1308f, 1031f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1), arg_0.b.c.x) - arg_0.a.c.yx)));
    var var_2 = Struct_2(Struct_1(u_input.b, ~(~firstTrailingBit(16349u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1028f, 396f, 521f))) + _wgslsmith_f_op_vec3_f32(-arg_0.a.c)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1370f, 130f, arg_1), arg_0.b.c) * vec3<f32>(-1010f, arg_1, -2358f))), func_2(arg_0.a.c.x, arg_0, func_2(var_1.x, arg_0, func_3(Struct_3(arg_0), arg_0.c).x, u_input.a.x).x, select(-u_input.d, u_input.d, arg_0.a.d)).x), Struct_1(arg_0.b.a & arg_0.c, ~max(arg_2.x, arg_0.b.a), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.a.c.x, _wgslsmith_f_op_f32(exp2(arg_0.a.c.x)), _wgslsmith_f_op_f32(trunc(arg_1))))), true), arg_2.x, -2147483647i);
    let var_3 = !all(vec4<bool>(~arg_0.d <= _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.d, u_input.d), u_input.a.yw), var_0.x, false, var_2.b.d | (var_2.a.d && var_0.x)));
    let var_4 = Struct_3(Struct_2(Struct_1(~(~arg_0.c), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_2.x, var_2.b.a), arg_2.yx), abs(arg_2.xx)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2027f, 834f, -989f) + arg_0.b.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.c.x, var_2.a.c.x, 274f)))), true), arg_0.b, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.b, arg_0.a.a)), reverseBits(vec2<u32>(arg_2.x, 22385u))), _wgslsmith_clamp_i32(4242i, var_2.d, i32(-1i) * -u_input.a.x)));
    return Struct_3(Struct_2(Struct_1(arg_2.x, abs(arg_2.x), var_2.b.c, var_2.b.d), Struct_1(8491u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, u_input.c.x), u_input.c.xx) & var_4.a.b.b, var_2.a.c, all(!var_0.yx)), max(reverseBits(32328u | arg_0.c), _wgslsmith_dot_vec4_u32(vec4<u32>(10360u, 1u, u_input.c.x, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(41822u, 52299u, 53978u, arg_0.b.a), vec4<u32>(0u, u_input.c.x, u_input.b, 1u)))), ~(~var_2.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(3051u, _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.b, u_input.b, 15522u)), 4294967295u), 1u), ~abs(~u_input.c.x));
    let var_1 = func_1(Struct_2(Struct_1(~var_0 & ~u_input.b, ~var_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-155f, 167f, -420f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(321f, 1094f, 173f))), (var_0 == 1u) & (-6037i < u_input.a.x)), Struct_1(var_0, u_input.c.x, vec3<f32>(_wgslsmith_f_op_f32(min(402f, 598f)), 191f, -1479f), any(vec4<bool>(true, true, true, true))), var_0, i32(-1i) * -2147483647i), 1099f, u_input.c);
    var var_2 = func_1(Struct_2(Struct_1(var_0, var_1.a.a.a, func_1(Struct_2(var_1.a.a, Struct_1(29007u, var_0, vec3<f32>(var_1.a.b.c.x, -364f, -318f), var_1.a.a.d), 44222u, var_1.a.d), _wgslsmith_f_op_f32(1817f * 404f), u_input.c).a.a.c, all(vec2<bool>(true, false))), Struct_1(~(~var_0), 52968u, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.a.c.x, var_1.a.a.c.x, -1170f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.a.c.x, var_1.a.a.c.x, -403f))), true), 47590u, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a << (vec4<u32>(var_1.a.b.b, 38642u, var_0, u_input.c.x) % vec4<u32>(32u))) >> ((select(4294967295u, var_0, true) << (_wgslsmith_dot_vec2_u32(u_input.c.yy, vec2<u32>(u_input.c.x, 20265u)) % 32u)) % 32u)), -922f, vec3<u32>(~(~68261u), 506u, 35107u)).a.b;
    var var_3 = func_1(var_1.a, var_2.c.x, reverseBits(u_input.c));
    var var_4 = var_3.a;
    var var_5 = !select(func_3(func_1(Struct_2(Struct_1(var_2.a, var_0, var_1.a.b.c, var_3.a.a.d), var_1.a.a, var_0, 1i), _wgslsmith_f_op_f32(-var_1.a.a.c.x), vec3<u32>(var_0, var_0, var_1.a.b.b)), abs(1u)).xww, !func_3(func_1(var_3.a, 1022f, vec3<u32>(var_2.b, 4294967295u, 0u)), ~var_1.a.c).xzx, vec3<bool>(true, var_3.a.b.d, !(!var_2.d)));
    var var_6 = func_1(func_1(var_3.a, 1f, vec3<u32>(~(~3276u), ~(var_4.a.a ^ var_1.a.b.a), _wgslsmith_div_u32(abs(4294967295u), _wgslsmith_mod_u32(1u, var_2.a)))).a, _wgslsmith_f_op_f32(min(var_1.a.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1017f - -710f))))), countOneBits(select(select(vec3<u32>(var_4.b.a, var_4.a.b, var_4.c), vec3<u32>(var_3.a.b.b, var_4.a.a, var_3.a.c), false), select(vec3<u32>(var_4.c, var_1.a.c, 4294967295u), ~u_input.c, select(var_4.a.d, true, false)), any(vec4<bool>(var_1.a.b.d, true, false, true))))).a.a;
    var var_7 = ~u_input.a.wxz;
    let x = u_input.a;
    s_output = StorageBuffer(1u, var_1.a.d, var_7.x);
}

