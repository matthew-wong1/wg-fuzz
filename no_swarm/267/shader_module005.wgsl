struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> i32 {
    var var_0 = select(vec2<bool>(true, true), arg_1.a, any(vec2<bool>(any(!vec3<bool>(arg_1.a.x, true, arg_1.a.x)), all(!vec3<bool>(arg_1.a.x, false, arg_1.a.x)))));
    var_0 = arg_1.a;
    return 20174i;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = 1575f;
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(arg_0.c, -597f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c - -1103f)))));
    var var_1 = Struct_1(!vec2<bool>(arg_0.a.x, arg_0.a.x), -func_3(arg_0.b, Struct_1(!vec2<bool>(arg_0.a.x, true), ~arg_0.b, _wgslsmith_f_op_f32(arg_0.c * -174f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(arg_0.c))))));
    var var_2 = Struct_1(!select(!var_1.a, select(vec2<bool>(arg_0.a.x, var_1.a.x), !vec2<bool>(var_1.a.x, false), vec2<bool>(true, true)), firstTrailingBit(0i) < arg_0.b), -2147483647i, arg_0.c);
    var_1 = Struct_1(arg_0.a, -47549i, 944f);
    return arg_0;
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = !all(vec3<bool>(arg_0.x, true, all(vec2<bool>(arg_0.x, arg_0.x)))) | (!(61089i <= max(u_input.a.x, -10514i)) & arg_0.x);
    let var_1 = func_2(Struct_1(vec2<bool>(var_0 || (arg_0.x || arg_0.x), all(arg_0.zz)), i32(-1i) * -21663i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -604f)))))));
    var var_2 = ~(~49827i);
    var var_3 = Struct_1(vec2<bool>(true, func_2(Struct_1(select(vec2<bool>(var_1.a.x, true), vec2<bool>(var_1.a.x, true), false), 0i, -436f)).a.x), 2147483647i, -460f);
    let var_4 = Struct_1(vec2<bool>(!arg_0.x, false), _wgslsmith_mult_i32(select(-20891i, 1i, all(!arg_0.ywx)), ~u_input.a.x), var_1.c);
    return func_2(Struct_1(!arg_0.zx, u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(104f * 168f) + -414f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c, var_1.c) - 100f))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = abs(~vec4<u32>(1u, arg_1.x, ~arg_1.x, arg_1.x) & vec4<u32>(26888u, abs(~19686u), arg_1.x, (34897u >> (arg_1.x % 32u)) >> (1u % 32u)));
    let var_1 = func_1(vec4<bool>(arg_0.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.c * arg_3.c), _wgslsmith_f_op_f32(min(-267f, -1795f)))) != -640f, (~15952u < var_0.x) || true, arg_3.c != 285f));
    var_0 = _wgslsmith_div_vec4_u32(~(~select(select(vec4<u32>(1u, 3025u, 0u, 1u), vec4<u32>(1u, 1u, 4294967295u, 1u), false), min(vec4<u32>(var_0.x, var_0.x, arg_1.x, arg_1.x), vec4<u32>(var_0.x, var_0.x, 1u, arg_1.x)), true)), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 37388u, 4294967295u, var_0.x) << (vec4<u32>(78430u, var_0.x, arg_1.x, 43865u) % vec4<u32>(32u)), ~vec4<u32>(26034u, var_0.x, 4294967295u, 4294967295u)), ~(vec4<u32>(0u, arg_1.x, arg_1.x, 4294967295u) ^ vec4<u32>(50905u, 32714u, var_0.x, 1u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(11538u, arg_1.x, 4294967295u, 26096u), vec4<u32>(7102u, 58453u, 0u, var_0.x))) << (vec4<u32>(80061u, var_0.x, reverseBits(1630u), ~(~arg_1.x)) % vec4<u32>(32u)));
    var var_2 = !(!vec3<bool>(func_2(func_1(vec4<bool>(true, true, arg_2, false))).a.x, any(vec3<bool>(false, true, arg_3.a.x)), _wgslsmith_div_f32(arg_0.c, arg_0.c) < _wgslsmith_f_op_f32(f32(-1f) * -143f)));
    var_0 = min(~vec4<u32>(_wgslsmith_dot_vec3_u32(max(vec3<u32>(6229u, 97150u, var_0.x), vec3<u32>(arg_1.x, var_0.x, var_0.x)), select(var_0.wyz, var_0.wwz, vec3<bool>(false, var_1.a.x, false))), ~_wgslsmith_div_u32(0u, 60400u), _wgslsmith_mult_u32(arg_1.x | 74555u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, 25822u, 4294967295u), vec4<u32>(4294967295u, var_0.x, 0u, arg_1.x))), 4294967295u), vec4<u32>(countOneBits(1u), ~_wgslsmith_add_u32(~arg_1.x, _wgslsmith_mod_u32(7089u, arg_1.x)), 29756u, var_0.x));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(vec4<bool>(true, true, !(u_input.a.x <= -2147483647i), !select(true, true, true))), ~reverseBits(vec2<u32>(1u, 1u)), func_2(Struct_1(func_2(Struct_1(vec2<bool>(true, true), 2212i, 1831f)).a, -2147483647i, 1000f)).a.x, func_2(func_1(vec4<bool>(true, true, any(vec3<bool>(true, true, false)), func_2(Struct_1(vec2<bool>(false, false), -1i, -1040f)).a.x))));
    let var_1 = var_0.c;
    var_0 = Struct_1(vec2<bool>(var_0.a.x, all(vec2<bool>(all(vec3<bool>(var_0.a.x, var_0.a.x, true)), all(vec3<bool>(true, true, false))))), abs(var_0.b), var_0.c);
    var_0 = func_2(func_1(select(select(select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true), vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x), var_0.a.x), vec4<bool>(true, false, true, var_0.a.x), !vec4<bool>(var_0.a.x, false, false, true)), !select(vec4<bool>(false, false, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x), true), vec4<bool>(true, true, true, true))));
    let var_2 = i32(-1i) * -14180i;
    var var_3 = ~((~vec4<u32>(1u, 1u, 1u, 1u) | ~select(vec4<u32>(1u, 1u, 4294967295u, 24361u), vec4<u32>(1u, 1u, 29420u, 86139u), var_0.a.x)) & ~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 52856u, 0u, 1u), ~vec4<u32>(91954u, 0u, 1u, 725u)));
    var var_4 = func_2(func_2(Struct_1(var_0.a, var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1341f)))));
    let var_5 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-965f, var_4.c)))), var_4.c, var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_4.c, -1179f, func_1(vec4<bool>(var_4.a.x, var_0.a.x, var_0.a.x, true)).a.x))), _wgslsmith_f_op_f32(-var_4.c), _wgslsmith_mod_vec4_u32(~(countOneBits(vec4<u32>(var_3.x, 56257u, var_3.x, 27065u)) | (vec4<u32>(49490u, 20993u, 4294967295u, 9093u) & vec4<u32>(var_3.x, var_3.x, var_3.x, 98928u))), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(1u, 55543u, var_3.x, var_3.x)), vec4<u32>(var_3.x, 2385u, var_3.x, var_3.x) << (vec4<u32>(1u, var_3.x, var_3.x, 1u) % vec4<u32>(32u))), ~(~vec4<u32>(0u, 1u, var_3.x, 1u)))), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(0u, 1u), ~1u), var_3.x, var_3.x, var_3.x) << ((vec4<u32>(var_3.x, ~var_3.x, abs(var_3.x), ~4294967295u) >> (~(~vec4<u32>(7642u, 21780u, 0u, 0u)) % vec4<u32>(32u))) % vec4<u32>(32u)), ~(~(~var_3.x) >> (~var_3.x % 32u)));
}

