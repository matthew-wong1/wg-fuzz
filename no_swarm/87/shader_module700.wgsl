struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>) -> vec2<bool> {
    var var_0 = select(vec4<bool>(false, false, true, true), !vec4<bool>(!all(vec4<bool>(true, false, false, false)), true, select(true, true, true), any(vec3<bool>(false, true, false))), select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(false, true, false, true)), vec4<bool>(true, select(true, true, true), true, false), (u_input.b ^ u_input.b) != u_input.b), all(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false)))));
    let var_1 = Struct_1(~vec2<u32>(_wgslsmith_clamp_u32(4294967295u, 4926u, 45240u) | ~12420u, u_input.c));
    var_0 = vec4<bool>(any(!var_0.zyz), all(select(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, true)), vec4<bool>(true, false, true, !var_0.x), select(!vec4<bool>(var_0.x, true, false, true), select(vec4<bool>(var_0.x, true, true, false), vec4<bool>(var_0.x, false, false, true), var_0.x), select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(true, true, true, true), true)))), all(var_0.xyx), any(vec4<bool>(all(vec4<bool>(var_0.x, var_0.x, false, var_0.x)) & true, u_input.c > 4294967295u, var_0.x, var_0.x)));
    var var_2 = Struct_5(_wgslsmith_f_op_f32(-arg_0.x), Struct_1(~firstTrailingBit(var_1.a) ^ vec2<u32>(4294967295u, var_1.a.x)));
    var_2 = Struct_5(_wgslsmith_f_op_f32(step(-625f, arg_0.x)), Struct_1(_wgslsmith_clamp_vec2_u32(var_2.b.a, var_1.a, ~var_1.a) & vec2<u32>(_wgslsmith_div_u32(var_2.b.a.x, 4294967295u), ~19360u)));
    return !select(!var_0.yy, var_0.zy, !select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, var_0.x), true));
}

fn func_2(arg_0: i32, arg_1: vec3<bool>) -> Struct_5 {
    var var_0 = vec4<bool>(all(select(!vec2<bool>(arg_1.x, false), select(vec2<bool>(arg_1.x, arg_1.x), select(vec2<bool>(arg_1.x, true), vec2<bool>(arg_1.x, arg_1.x), false), arg_1.xy), func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-245f, 325f, 386f) * vec3<f32>(404f, -846f, 518f))))), (abs(u_input.c) < ~(~4692u)) && (!arg_1.x != (firstLeadingBit(2147483647i) >= u_input.a)), !(!((u_input.c ^ 339u) == _wgslsmith_dot_vec4_u32(vec4<u32>(17667u, 4294967295u, u_input.c, u_input.c), vec4<u32>(1u, u_input.c, u_input.c, u_input.c)))), true);
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1006f, 860f), vec2<f32>(253f, 1000f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1488f, -2252f)) * vec2<f32>(1f, 1f)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(661f, _wgslsmith_f_op_f32(f32(-1f) * -919f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(856f, -242f, false))), 149f), true)));
    var var_2 = Struct_4(Struct_3(Struct_2(Struct_1(abs(vec2<u32>(u_input.c, 1u))))), u_input.c, Struct_1(abs(~(~vec2<u32>(u_input.c, u_input.c)))));
    var var_3 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~((vec4<u32>(u_input.c, var_2.a.a.a.a.x, u_input.c, var_2.b) & vec4<u32>(u_input.c, u_input.c, u_input.c, 30338u)) << (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, var_2.b, 1u, u_input.c), vec4<u32>(46156u, var_2.a.a.a.a.x, 14733u, 36724u)) % vec4<u32>(32u))), ~vec4<u32>(firstTrailingBit(1u), ~var_2.c.a.x, ~79998u, select(u_input.c, 25258u, arg_1.x))), select(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, var_2.b, 1u, u_input.c), vec4<u32>(1u, u_input.c, 0u, u_input.c)), 0u, 4294967295u << (0u % 32u), max(0u, 36959u)), ~vec4<u32>(_wgslsmith_add_u32(u_input.c, 24356u), _wgslsmith_dot_vec2_u32(vec2<u32>(41643u, 4294967295u), var_2.c.a), u_input.c, ~var_2.c.a.x), false));
    var var_4 = Struct_3(var_2.a.a);
    return Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(338f * var_1.x), _wgslsmith_f_op_f32(-471f + 451f))), _wgslsmith_f_op_f32(trunc(813f))))), var_4.a.a);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4) -> f32 {
    let var_0 = arg_1;
    var var_1 = vec2<f32>(-329f, _wgslsmith_f_op_f32(floor(arg_0.a)));
    var var_2 = arg_1.c;
    var_2 = func_2(u_input.a, vec3<bool>(select(any(func_3(vec3<f32>(arg_0.a, -1011f, 694f))), !(arg_0.a > var_1.x), !func_3(vec3<f32>(arg_0.a, -188f, 1335f)).x), !func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1812f, var_1.x, -327f))).x, 1u > u_input.c)).b;
    let var_3 = vec3<bool>(func_3(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-730f, arg_0.a, var_1.x)))))).x && true, all(vec4<bool>(true, true, func_3(vec3<f32>(arg_0.a, -1000f, 667f)).x, false)), func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1125f, var_1.x, var_1.x))) * vec3<f32>(arg_0.a, 231f, 984f))).x);
    return _wgslsmith_f_op_f32(f32(-1f) * -1899f);
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-201f, _wgslsmith_f_op_f32(ceil(-443f)), true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2(7425i, vec3<bool>(true, false, false)), Struct_4(Struct_3(Struct_2(Struct_1(vec2<u32>(4417u, u_input.c)))), u_input.c, Struct_1(vec2<u32>(6559u, 0u))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-644f + 233f))), -1000f)));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1800f);
    let var_1 = Struct_2(func_2(-((-2147483647i | u_input.a) ^ u_input.b), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, false, false))).b);
    let var_2 = ~reverseBits(_wgslsmith_clamp_vec4_u32(abs(firstLeadingBit(vec4<u32>(var_1.a.a.x, u_input.c, 46040u, 62570u))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.a.a.x, 5793u, 1u, 23685u), vec4<u32>(var_1.a.a.x, 5598u, var_1.a.a.x, var_1.a.a.x)), ~vec4<u32>(23056u, var_1.a.a.x, var_1.a.a.x, 1u)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-113f - _wgslsmith_f_op_f32(760f * -139f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(894f, 1000f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(352f * 149f)))));
    return Struct_2(Struct_1(vec2<u32>(abs(var_2.x), var_2.x)));
}

fn func_5(arg_0: u32, arg_1: Struct_3) -> i32 {
    var var_0 = Struct_4(arg_1, ~19138u, arg_1.a.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 375f) * func_2(19847i, vec3<bool>(false, true, false)).a), 1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1876f - -2142f), _wgslsmith_f_op_f32(func_4(Struct_5(-1337f, Struct_1(vec2<u32>(arg_1.a.a.a.x, 53667u))), Struct_4(var_0.a, 1u, arg_1.a.a)))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(949f, -614f, -521f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-337f, -1078f, 532f) - vec3<f32>(785f, -259f, -1146f)))))));
    var var_2 = vec3<i32>(max(14708i >> (_wgslsmith_mod_u32(firstTrailingBit(126993u), arg_1.a.a.a.x) % 32u), countOneBits(-1i)), u_input.b, ~(~(-min(1i, 0i))));
    var var_3 = 0u;
    var_0 = Struct_4(Struct_3(var_0.a.a), ~21858u, func_1().a);
    return ~(-var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -326f;
    var var_1 = vec2<i32>(15007i, u_input.b) | reverseBits(~select(~vec2<i32>(13865i, -48727i), countOneBits(vec2<i32>(u_input.a, -19266i)), any(vec2<bool>(true, true))));
    let var_2 = countOneBits(func_5(u_input.c, Struct_3(func_1())));
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1029f, -848f) - vec2<f32>(1332f, -1096f)))))), vec2<f32>(_wgslsmith_f_op_f32(abs(1073f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1104f - 1793f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1390f))))));
    var var_4 = vec4<i32>(15178i, ~(~_wgslsmith_sub_i32(_wgslsmith_mod_i32(var_2, var_2), var_2)), _wgslsmith_dot_vec2_i32(-select(vec2<i32>(var_2, 51831i), vec2<i32>(34222i, -46119i), false), -vec2<i32>(10566i, var_1.x)) | (_wgslsmith_mod_i32(select(-2147483647i, var_2, false), -u_input.a) << (firstTrailingBit(min(0u, u_input.c)) % 32u)), 28393i);
    var_1 = var_4.yx;
    var_0 = _wgslsmith_f_op_f32(trunc(func_2(2147483647i, select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)))).a));
    let var_5 = min(4294967295u, ~22014u);
    let x = u_input.a;
    s_output = StorageBuffer(2398u, var_4.wwy);
}

