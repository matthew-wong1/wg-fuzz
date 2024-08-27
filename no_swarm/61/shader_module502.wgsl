struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: vec2<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_1) -> i32 {
    let var_0 = vec4<f32>(-363f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-309f, _wgslsmith_f_op_f32(f32(-1f) * -504f)))))), 1465f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2227f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-106f + 657f))) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1085f));
    let var_2 = abs(vec3<u32>(_wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_add_u32(arg_0.x, arg_0.x)), select(countOneBits(arg_0.x), arg_0.x, any(vec2<bool>(true, arg_1)))), countOneBits(arg_0.x << (34670u % 32u)), _wgslsmith_sub_u32(~0u, 41669u)));
    var var_3 = Struct_1(_wgslsmith_add_i32(1i, ~u_input.c));
    var_1 = _wgslsmith_f_op_f32(-var_0.x);
    return 19736i;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> f32 {
    let var_0 = u_input.c;
    let var_1 = arg_1.a;
    var var_2 = Struct_2(_wgslsmith_div_vec4_i32(abs(abs(vec4<i32>(var_1, arg_1.a, u_input.b.x, var_1) & vec4<i32>(var_0, var_1, 67623i, -2147483647i))), vec4<i32>(-52350i, countOneBits(arg_1.a & 0i), -10946i, arg_1.a)), 2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(728f, -1000f, true))) * -1312f), Struct_1(_wgslsmith_sub_i32(select(arg_1.a, _wgslsmith_div_i32(44228i, u_input.c), false), 22718i)), !vec2<bool>(!arg_2, all(vec4<bool>(false, true, arg_2, false)) | true));
    let var_3 = Struct_2(select(_wgslsmith_div_vec4_i32(firstLeadingBit(~vec4<i32>(-11001i, var_0, 1i, arg_0.a)), vec4<i32>(~arg_1.a, ~25662i, reverseBits(var_2.d.a), u_input.a)), var_2.a, arg_2), -1i, _wgslsmith_f_op_f32(round(var_2.c)), Struct_1(1i), var_2.e);
    var_2 = var_3;
    return var_3.c;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-310f, _wgslsmith_f_op_f32(-1000f + -226f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1330f + -1916f) * -3172f) * _wgslsmith_f_op_f32(step(609f, -803f)))));
    var_0 = -2327f;
    var var_1 = _wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_dot_vec2_i32(u_input.b.yy << (select(vec2<u32>(0u, 1u), vec2<u32>(0u, 128133u), vec2<bool>(true, true)) % vec2<u32>(32u)), ~(u_input.b.xz >> (vec2<u32>(17705u, 4294967295u) % vec2<u32>(32u))))), Struct_1(func_3(vec3<u32>(1u, 1u, 1u), true, Struct_1(firstLeadingBit(u_input.d)))), false));
    let var_2 = ~(~(1u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 24199u, 46940u), vec3<u32>(0u, 1u, 20051u))) >> (_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(29094u, 61069u), vec2<u32>(121661u, 24936u)), min(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(95764u, 7451u)), vec2<u32>(4294967295u, 4294967295u))) % 32u));
    let var_3 = _wgslsmith_mod_u32(~var_2, ~(~1u));
    return Struct_1(_wgslsmith_clamp_i32(~u_input.b.x | _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, u_input.d), u_input.b.xx), countOneBits(u_input.e)), -_wgslsmith_mult_i32(~u_input.b.x, ~u_input.e), _wgslsmith_mult_i32(51576i, _wgslsmith_dot_vec2_i32(u_input.b.xy & u_input.b.xy, _wgslsmith_clamp_vec2_i32(u_input.b.zy, u_input.b.xx, vec2<i32>(-44635i, 1i))))));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32) -> bool {
    let var_0 = reverseBits(~vec2<u32>(arg_1, ~(~arg_1)));
    let var_1 = func_2();
    var var_2 = 33706i;
    var var_3 = vec4<bool>(((var_0.x & var_0.x) <= arg_1) & true, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-389f, -503f), _wgslsmith_f_op_f32(trunc(617f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(u_input.c), var_1, true)))) >= 598f, !any(vec3<bool>(false, true, all(vec3<bool>(true, true, false)))), any(vec4<bool>(true, !all(vec3<bool>(true, true, false)), all(select(vec2<bool>(true, false), vec2<bool>(true, true), false)), true)));
    var var_4 = vec3<bool>(var_0.x > countOneBits(_wgslsmith_div_u32(1u, 4294967295u)), var_3.x, true);
    return !(false == any(vec3<bool>(false, var_3.x, all(var_3.wyz))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(!(!vec2<bool>(func_1(vec3<u32>(3067u, 24522u, 1u), 0u), any(vec4<bool>(true, false, true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1350f)), vec2<bool>(any(vec4<bool>(false, true, all(vec2<bool>(true, false)), any(vec4<bool>(true, true, true, true)))), false), Struct_2(min(vec4<i32>(min(u_input.c, 15744i), u_input.e, u_input.d, u_input.d | 2147483647i), vec4<i32>(func_2().a, u_input.d, -u_input.e, i32(-1i) * -1i)), u_input.a, 1000f, func_2(), select(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), false), true)));
    var var_1 = Struct_3(vec2<bool>(any(select(select(var_0.d.e, vec2<bool>(true, var_0.d.e.x), vec2<bool>(var_0.a.x, true)), !vec2<bool>(var_0.a.x, var_0.c.x), var_0.d.e)), all(vec3<bool>(true, !var_0.c.x, func_1(vec3<u32>(4294967295u, 4294967295u, 36164u), 4294967295u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b))), select(select(vec2<bool>(true, 1i != u_input.d), select(!var_0.a, var_0.a, var_0.c), any(!var_0.d.e)), select(select(!vec2<bool>(var_0.c.x, false), select(var_0.d.e, vec2<bool>(true, true), false), vec2<bool>(var_0.a.x, var_0.a.x)), var_0.a, true), vec2<bool>(true, var_0.d.e.x)), Struct_2(-_wgslsmith_clamp_vec4_i32(var_0.d.a, var_0.d.a, var_0.d.a), 27133i, _wgslsmith_f_op_f32(-var_0.d.c), Struct_1(u_input.c), var_0.c));
    let var_2 = 2147483647i;
    var var_3 = vec2<u32>(~(~1u), ~(1u & _wgslsmith_clamp_u32(0u, 31635u, 1u)) | ~(~select(13881u, 17686u, false)));
    let var_4 = var_1.d.d.a;
    var_3 = ~(vec2<u32>(_wgslsmith_div_u32(var_3.x, 0u) & var_3.x, ~_wgslsmith_add_u32(var_3.x, var_3.x)) & ~_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 26637u), vec2<u32>(var_3.x, 0u), vec2<u32>(var_3.x, 1u)), vec2<u32>(4294967295u, var_3.x), ~vec2<u32>(1u, var_3.x)));
    var var_5 = _wgslsmith_mult_vec3_u32(countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_3.x, ~0u, var_3.x << (var_3.x % 32u)), select(~vec3<u32>(var_3.x, var_3.x, 4294967295u), vec3<u32>(var_3.x, var_3.x, var_3.x), vec3<bool>(true, var_1.a.x, var_0.a.x)), (vec3<u32>(var_3.x, 16204u, var_3.x) & vec3<u32>(var_3.x, var_3.x, var_3.x)) << ((vec3<u32>(var_3.x, var_3.x, var_3.x) >> (vec3<u32>(var_3.x, 33615u, 106851u) % vec3<u32>(32u))) % vec3<u32>(32u)))), vec3<u32>(~_wgslsmith_add_u32(var_3.x, 7097u), 9875u, var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(select(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(var_3.x, 18267u, 0u), vec3<u32>(var_3.x, 1u, var_5.x), vec3<bool>(true, var_0.d.e.x, var_0.d.e.x)), vec3<u32>(var_3.x, 73633u, var_3.x) & vec3<u32>(17379u, 0u, var_5.x), ~vec3<u32>(12746u, var_3.x, var_5.x)), vec3<u32>(firstLeadingBit(var_5.x), abs(4294967295u), var_5.x), !var_0.c.x), ~(~vec3<u32>(4294967295u, var_3.x, 21797u))), _wgslsmith_mod_i32(~var_1.d.d.a, 1i));
}

