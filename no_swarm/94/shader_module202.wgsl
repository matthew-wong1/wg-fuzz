struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
    c: vec2<u32>,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec4<i32>,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<f32>) -> vec2<i32> {
    var var_0 = 4294967295u;
    var_0 = ~0u;
    var_0 = 4955u;
    let var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(arg_0.x)))), select(~(~36086u), ~4294967295u, true && any(vec4<bool>(true, true, false, false)))), vec2<i32>(firstLeadingBit(reverseBits(1i)), ~_wgslsmith_mod_i32(u_input.a, 2147483647i)), Struct_1(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_add_u32(1u, 0u)), Struct_2(Struct_1(1000f, ~0u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.xz)) + _wgslsmith_f_op_vec2_f32(select(arg_0.xz, _wgslsmith_f_op_vec2_f32(step(arg_0.zy, vec2<f32>(arg_0.x, 1000f))), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(245f)) - _wgslsmith_f_op_f32(trunc(254f))))));
    var var_2 = vec3<bool>((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1403f - var_1.a.a)) >= -270f) & ((_wgslsmith_f_op_f32(-var_1.a.a) == _wgslsmith_f_op_f32(1520f * arg_0.x)) & ((u_input.b ^ 2147483647i) > 37010i)), false, false);
    return vec2<i32>(-u_input.a, 0i);
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>) -> bool {
    var var_0 = func_3(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(arg_0.c)), arg_0.a.a, _wgslsmith_f_op_f32(arg_0.c - arg_0.a.a))))));
    let var_1 = u_input.b;
    var_0 = arg_1;
    let var_2 = Struct_4(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -731f), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~1u, arg_0.a.b), reverseBits(vec3<u32>(0u, 33565u, 1u)))), arg_1, arg_0.a, Struct_2(Struct_1(_wgslsmith_f_op_f32(-arg_0.b.x), arg_0.a.b), arg_0.b, _wgslsmith_f_op_f32(-606f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(-arg_0.c))))));
    let var_3 = select(-(-firstTrailingBit(vec4<i32>(var_1, -2147483647i, -18668i, -1i)) | firstTrailingBit(vec4<i32>(1i, -15154i, var_2.b.x, var_1))), select(~firstLeadingBit(firstLeadingBit(vec4<i32>(9053i, arg_1.x, arg_1.x, arg_1.x))), ~(abs(vec4<i32>(u_input.a, -15856i, 70524i, -11111i)) ^ reverseBits(vec4<i32>(-2167i, u_input.a, -2147483647i, -2147483647i))), !(select(false, false, false) & true)), select(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false)), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), var_2.d.a.b < arg_0.a.b), vec4<bool>(true, true, true, true)), vec4<bool>(false == all(vec4<bool>(true, false, false, true)), any(vec3<bool>(true, true, true)), false | any(vec3<bool>(true, false, false)), var_1 > 1i)));
    return true;
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-779f, -859f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(683f, 297f))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1251f, -982f))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(364f, 1942f) - vec2<f32>(622f, 334f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-333f, 579f), vec2<f32>(379f, -1091f), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)))))), true)) - vec2<f32>(551f, -2027f));
    let var_1 = !any(select(vec3<bool>(true, false, false), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_2(Struct_2(Struct_1(var_0.x, 5234u), var_0, 1000f), vec2<i32>(-13420i, 1i)))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x))), 1u), _wgslsmith_f_op_vec2_f32(-var_0), _wgslsmith_f_op_f32(ceil(1707f)));
    var_2 = Struct_2(var_2.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), var_0.x), var_2.c)), -996f);
    return any(vec2<bool>(true, true));
}

fn func_4(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = min(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))).x, u_input.b);
    var var_1 = select(~(vec4<i32>(~1i, _wgslsmith_dot_vec2_i32(vec2<i32>(21733i, -1i), vec2<i32>(1i, 20111i)), _wgslsmith_div_i32(-50400i, var_0), u_input.a) >> (select(vec4<u32>(1u, 0u, 17104u, 41303u), vec4<u32>(1u, 1u, 1u, 1u), arg_0) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_clamp_i32(-1i << (0u % 32u), 1i, 1i), abs(var_0), ~(~var_0), u_input.a) << (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 16530u, 4294967295u), vec4<u32>(13960u, 38601u, 7458u, 33375u)), ~(~526u), _wgslsmith_clamp_u32(reverseBits(3860u), 1u, 4294967295u), ~7726u) % vec4<u32>(32u)), !select(select(!vec4<bool>(true, arg_0.x, false, arg_0.x), !arg_0, select(arg_0, vec4<bool>(true, arg_0.x, false, true), arg_0)), select(!vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), select(arg_0, arg_0, vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)), arg_0), !select(vec4<bool>(false, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, false, true, false))));
    var_1 = abs(-vec4<i32>(var_0, -(i32(-1i) * -9038i), -34871i, var_0 ^ 1i));
    let var_2 = vec2<u32>(1u, 1u);
    var_1 = ~min(select(~vec4<i32>(5411i, u_input.a, 14454i, -44477i), select(max(vec4<i32>(var_1.x, 15499i, -2147483647i, u_input.b), vec4<i32>(0i, -54072i, -1i, var_1.x)), vec4<i32>(-41207i, var_0, -1i, var_1.x), arg_0.x & false), arg_0), min(abs(~vec4<i32>(var_0, 32236i, var_1.x, 35833i)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(var_0, var_1.x, 1i, 1i), vec4<i32>(var_0, -2147483647i, -1i, 0i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -63254i, 39942i, -12296i), vec4<i32>(22365i, -11319i, var_0, 0i), vec4<i32>(-2147483647i, 0i, var_1.x, var_0)))));
    return Struct_2(Struct_1(872f, 4294967295u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -221f)), _wgslsmith_f_op_f32(f32(-1f) * -2395f))), -1193f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(select(select(vec4<bool>(true, true, func_1(), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), false), vec4<bool>(false, false, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), u_input.a == u_input.b), vec4<bool>(all(vec4<bool>(true, true, true, false)), true, true, true)), select(vec4<bool>(true, any(vec3<bool>(true, false, true)), func_2(Struct_2(Struct_1(648f, 4294967295u), vec2<f32>(2041f, 1000f), 2549f), vec2<i32>(16025i, u_input.b)), false), vec4<bool>(func_1(), u_input.a >= 55958i, true, select(true, true, false)), false)));
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-224f, var_0.c)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(206f, -443f))), vec2<f32>(var_0.b.x, 527f)))), any(select(vec4<bool>(false, func_2(Struct_2(Struct_1(var_0.c, var_0.a.b), var_0.b, 1000f), vec2<i32>(u_input.a, u_input.a)), all(vec2<bool>(false, false)), var_0.a.a > var_0.c), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), true), true))), firstLeadingBit(vec2<u32>(var_0.a.b, 1u)), Struct_1(-1696f, 1u), _wgslsmith_mod_u32(~firstTrailingBit(40148u), ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(32737u, var_0.a.b, 4294967295u), 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-929f, _wgslsmith_f_op_f32(var_0.c * 1313f), var_1.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(var_1.a.x + var_0.b.x), !var_1.b)))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_div_f32(var_1.d.a, 118f)), var_0.b.x))), ~0u, var_0.a.b, vec4<i32>(-u_input.b, countOneBits(firstTrailingBit(abs(u_input.a))), (-2147483647i | (-19282i >> (var_1.d.b % 32u))) & firstLeadingBit(_wgslsmith_mod_i32(u_input.b, 1i)), -2147483647i | u_input.b));
}

