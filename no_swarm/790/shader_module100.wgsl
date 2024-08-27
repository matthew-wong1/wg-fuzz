struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec2<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: vec3<f32>, arg_3: Struct_4) -> i32 {
    return _wgslsmith_mult_i32(arg_1, (-6463i >> (u_input.d % 32u)) & _wgslsmith_dot_vec4_i32(min(-vec4<i32>(arg_3.b.x, -1i, arg_3.b.x, u_input.b), vec4<i32>(-42317i, -69396i, arg_1, u_input.b)), ~vec4<i32>(63327i, 19570i, u_input.b, 0i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool) -> i32 {
    var var_0 = vec2<u32>(_wgslsmith_mod_u32(abs(u_input.d), 0u) << (_wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(u_input.d, u_input.c.x)) % 32u), _wgslsmith_div_u32(12458u, _wgslsmith_add_u32(~u_input.d, 4294967295u))) & vec2<u32>(select(1u, (23681u >> (u_input.d % 32u)) ^ 13607u, true), u_input.d);
    let var_1 = vec2<u32>(1u, 1u | max(20975u << (~var_0.x % 32u), 1u));
    var var_2 = Struct_2(abs(u_input.d), _wgslsmith_mult_i32(0i, min(-1i, firstTrailingBit(31312i))) ^ u_input.a, vec3<i32>(1i, u_input.a, ~30182i), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-121f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-693f, -808f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-241f, -1902f) + _wgslsmith_div_vec2_f32(vec2<f32>(837f, -440f), vec2<f32>(-1899f, -811f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1079f, 221f)), vec2<f32>(-1481f, 660f)))))));
    var var_3 = Struct_3(Struct_2(u_input.d, _wgslsmith_mult_i32(2147483647i, 1i), countOneBits(-(var_2.c << (u_input.c.zxy % vec3<u32>(32u)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d.a - 1111f)), vec2<f32>(-210f, _wgslsmith_div_f32(var_2.d.c.x, var_2.d.a)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.d.b * vec2<f32>(-168f, 1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(521f, var_2.d.c.x) * var_2.d.c)))), select(u_input.c, reverseBits(u_input.c), true), u_input.c.ww, Struct_2(_wgslsmith_dot_vec4_u32(~(~u_input.c), vec4<u32>(reverseBits(var_1.x), 4294967295u, ~4294967295u, ~u_input.d)), var_2.c.x, var_2.c, var_2.d));
    var var_4 = Struct_3(var_3.d, vec4<u32>(var_3.d.a, _wgslsmith_mod_u32(abs(firstLeadingBit(var_3.a.a)), 0u | firstTrailingBit(var_2.a)), 4294967295u, countOneBits(var_0.x)), u_input.c.xy, Struct_2(52105u, u_input.b, select(vec3<i32>(func_2(vec3<f32>(var_3.d.d.a, -952f, 271f), arg_0.x, vec3<f32>(var_3.a.d.a, var_2.d.a, -926f), Struct_4(var_2.d, arg_0.zz)), var_2.b, i32(-1i) * -8423i), vec3<i32>(arg_0.x, -50576i, 24100i) ^ (var_2.c & var_3.d.c), !vec3<bool>(true, true, arg_1)), var_3.a.d));
    return 1i;
}

fn func_1(arg_0: vec2<bool>) -> Struct_3 {
    var var_0 = u_input.b;
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(func_2(vec3<f32>(567f, -1143f, 1000f), u_input.b, vec3<f32>(-181f, -1896f, -426f), Struct_4(Struct_1(877f, vec2<f32>(380f, -431f), vec2<f32>(546f, 435f)), vec2<i32>(u_input.a, -13062i))) | func_3(vec4<i32>(u_input.b, -11428i, 20461i, u_input.a), arg_0.x), -2147483647i), reverseBits(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 27671i, 37882i, 1i), vec4<i32>(24093i, -2147483647i, u_input.b, 2853i)), _wgslsmith_clamp_i32(u_input.b, 0i, u_input.b)))), func_3(-(~vec4<i32>(1689i, u_input.b, 49574i, 14369i)), any(vec2<bool>(arg_0.x, true))), 2147483647i);
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2061f)) * _wgslsmith_f_op_f32(-755f * 633f)))), -460f));
    var var_3 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.d, 4294967295u), select(~u_input.d, select(u_input.c.x, ~u_input.d, false), true));
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1074f, 928f) + vec2<f32>(321f, -685f)), _wgslsmith_div_vec2_f32(vec2<f32>(-1524f, -801f), vec2<f32>(809f, -540f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-417f, 547f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(537f, 262f)), vec2<f32>(171f, -393f)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -294f)), vec2<f32>(-399f, -601f))))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-107f, 294f), vec2<f32>(473f, -1000f))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(884f, 1407f), vec2<f32>(-320f, -1000f))))))));
    return Struct_3(Struct_2(~1u, -u_input.b, -select(vec3<i32>(-2147483647i, -1i, -1i), vec3<i32>(-34784i, -1i, var_1), arg_0.x) ^ (-vec3<i32>(u_input.a, var_1, var_1) | max(vec3<i32>(u_input.b, u_input.a, var_1), vec3<i32>(-33141i, 1i, var_1))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -298f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_4.x, var_4.x), vec2<f32>(-791f, var_4.x))) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_4.x, -360f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1168f, 1296f), vec2<f32>(var_4.x, var_4.x))))))), abs(u_input.c), ~reverseBits(firstLeadingBit(u_input.c.wz)) ^ u_input.c.xz, Struct_2(u_input.d, 23090i, min(reverseBits(firstLeadingBit(vec3<i32>(5546i, var_1, var_1))), abs(vec3<i32>(var_1, u_input.a, 1i))), Struct_1(var_4.x, vec2<f32>(_wgslsmith_f_op_f32(1897f - var_4.x), _wgslsmith_f_op_f32(select(694f, var_4.x, arg_0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.x, var_4.x))))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: u32, arg_3: Struct_3) -> Struct_2 {
    var var_0 = arg_3.a.d;
    var var_1 = select(func_1(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), all(vec4<bool>(true, false, true, true)))).b, arg_3.b, true);
    var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -679f), arg_1.d.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-188f)) - _wgslsmith_f_op_f32(select(arg_1.d.a, var_0.a, true))), -163f)));
    var var_2 = -_wgslsmith_clamp_i32(~arg_3.d.b, 2147483647i, arg_3.d.b);
    var_1 = _wgslsmith_clamp_vec4_u32(arg_3.b, _wgslsmith_add_vec4_u32(countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, 0u, 20358u, 83092u), vec4<u32>(arg_0.a.a, 93026u, 55392u, 4294967295u))), _wgslsmith_add_vec4_u32(max(firstLeadingBit(u_input.c), arg_3.b), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.d, u_input.c.x, 30152u, arg_3.b.x), firstLeadingBit(vec4<u32>(u_input.d, 0u, arg_0.a.a, u_input.d))))), vec4<u32>(arg_3.a.a << (~u_input.d % 32u), u_input.c.x, arg_0.b.x, arg_1.a));
    return arg_0.a;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4, arg_2: u32) -> Struct_2 {
    let var_0 = arg_1;
    var var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.a.d.a)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(570f - 678f), _wgslsmith_f_op_f32(1409f * 1000f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1236f)) + arg_1.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1649f))), vec2<f32>(912f, _wgslsmith_f_op_f32(arg_0.a.d.a * -533f))), arg_1.b);
    var var_2 = func_1(!vec2<bool>(any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), false)), !all(vec2<bool>(true, true))));
    let var_3 = Struct_4(Struct_1(var_1.a.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_0.d.d.b, vec2<f32>(-106f, -1091f)))) * arg_0.a.d.c), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(var_2.a.d.b)), var_1.a.b, true))), _wgslsmith_clamp_vec2_i32(select(vec2<i32>(reverseBits(2147483647i), _wgslsmith_div_i32(-9240i, arg_0.d.c.x)), -select(vec2<i32>(27788i, 27054i), var_2.a.c.xx, vec2<bool>(false, true)), false), vec2<i32>(-1i) * -(~vec2<i32>(arg_1.b.x, -2147483647i)), arg_0.a.c.xy));
    let var_4 = arg_1;
    return func_1(!vec2<bool>(!any(vec3<bool>(false, false, false)), true)).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_3(func_4(func_1(vec2<bool>(true, false)), Struct_2(4294967295u, 0i, vec3<i32>(2147483647i, -2147483647i, -12994i), func_1(vec2<bool>(false, true)).d.d), min(_wgslsmith_mod_u32(54199u, 12677u), 4294967295u >> (u_input.c.x % 32u)), Struct_3(Struct_2(u_input.c.x, 0i, vec3<i32>(u_input.a, u_input.b, 12519i), Struct_1(887f, vec2<f32>(-648f, -1437f), vec2<f32>(-1623f, 592f))), ~u_input.c, abs(u_input.c.yy), func_1(vec2<bool>(true, false)).a)), u_input.c, ~u_input.c.yz, Struct_2(32295u, 1i, ~(-vec3<i32>(u_input.a, u_input.a, u_input.b)), func_1(vec2<bool>(false, false)).a.d)), Struct_4(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-463f * 364f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(687f, -1181f) - vec2<f32>(-1858f, -1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(518f, -196f), vec2<f32>(-212f, 1000f))))), vec2<i32>(1i, reverseBits(0i)) >> (~abs(u_input.c.yy) % vec2<u32>(32u))), u_input.c.x);
    var_0 = func_4(Struct_3(Struct_2(~137338u, 0i, _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -2147483647i, 1i), var_0.c), Struct_1(-480f, _wgslsmith_f_op_vec2_f32(vec2<f32>(-645f, -1000f) * var_0.d.c), _wgslsmith_div_vec2_f32(var_0.d.c, var_0.d.b))), ~u_input.c, ~reverseBits(u_input.c.zx), func_1(vec2<bool>(false, true)).d), Struct_2(func_1(vec2<bool>(true, true)).c.x, -(~(~u_input.b)), var_0.c, Struct_1(_wgslsmith_f_op_f32(min(-234f, _wgslsmith_f_op_f32(-var_0.d.c.x))), var_0.d.c, var_0.d.c)), var_0.a, Struct_3(func_1(vec2<bool>(true, true)).d, u_input.c, ~u_input.c.yy, Struct_2(var_0.a, ~(-2147483647i) | _wgslsmith_mod_i32(var_0.b, -1i), select(~var_0.c, -var_0.c, select(false, true, false)), func_5(func_1(vec2<bool>(true, false)), Struct_4(Struct_1(-518f, vec2<f32>(var_0.d.c.x, 426f), var_0.d.c), vec2<i32>(var_0.b, 2147483647i)), func_5(Struct_3(Struct_2(93169u, -31254i, vec3<i32>(var_0.b, var_0.c.x, var_0.c.x), var_0.d), vec4<u32>(0u, 0u, var_0.a, 13992u), vec2<u32>(u_input.d, var_0.a), Struct_2(54957u, var_0.b, vec3<i32>(u_input.a, var_0.c.x, var_0.c.x), var_0.d)), Struct_4(var_0.d, var_0.c.zz), var_0.a).a).d)));
    let var_1 = ~u_input.c.wxx;
    var_0 = func_5(func_1(vec2<bool>(!any(vec2<bool>(true, false)), _wgslsmith_dot_vec2_u32(u_input.c.yx, vec2<u32>(4294967295u, u_input.c.x)) != 41863u)), Struct_4(func_4(Struct_3(Struct_2(58161u, u_input.b, vec3<i32>(var_0.b, u_input.b, -2147483647i), var_0.d), vec4<u32>(0u, var_0.a, u_input.d, var_0.a), reverseBits(var_1.yy), func_5(Struct_3(Struct_2(u_input.c.x, -9574i, vec3<i32>(u_input.a, -1i, var_0.c.x), var_0.d), u_input.c, u_input.c.zw, Struct_2(var_1.x, 2147483647i, var_0.c, Struct_1(1123f, var_0.d.c, vec2<f32>(282f, var_0.d.b.x)))), Struct_4(var_0.d, vec2<i32>(-1i, 2147483647i)), u_input.d)), Struct_2(37015u, _wgslsmith_mod_i32(var_0.c.x, u_input.a), countOneBits(var_0.c), Struct_1(-1000f, var_0.d.b, vec2<f32>(892f, -574f))), 22549u, func_1(select(vec2<bool>(true, false), vec2<bool>(false, true), true))).d, ~(~vec2<i32>(u_input.a, var_0.b))), u_input.d);
    var var_2 = func_5(func_1(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), Struct_4(var_0.d, func_5(Struct_3(Struct_2(u_input.c.x, -1i, vec3<i32>(0i, 51012i, 0i), var_0.d), _wgslsmith_sub_vec4_u32(u_input.c, u_input.c), vec2<u32>(var_1.x, 35932u) | vec2<u32>(1u, var_1.x), func_4(Struct_3(Struct_2(var_0.a, 2147483647i, vec3<i32>(var_0.c.x, u_input.b, u_input.b), var_0.d), vec4<u32>(124696u, 4294967295u, 50377u, var_1.x), var_1.zy, Struct_2(531u, var_0.b, vec3<i32>(var_0.c.x, 57070i, u_input.a), var_0.d)), Struct_2(var_1.x, 35485i, vec3<i32>(var_0.b, -2147483647i, -2147483647i), Struct_1(-1498f, var_0.d.b, var_0.d.c)), u_input.c.x, Struct_3(Struct_2(u_input.c.x, -1141i, vec3<i32>(u_input.b, u_input.a, 9720i), Struct_1(-382f, vec2<f32>(-389f, -426f), vec2<f32>(var_0.d.b.x, -686f))), vec4<u32>(36127u, u_input.d, u_input.c.x, var_0.a), vec2<u32>(u_input.c.x, var_0.a), Struct_2(43266u, -22561i, var_0.c, Struct_1(var_0.d.c.x, var_0.d.c, var_0.d.b))))), Struct_4(Struct_1(202f, vec2<f32>(var_0.d.b.x, var_0.d.b.x), vec2<f32>(var_0.d.b.x, var_0.d.a)), _wgslsmith_sub_vec2_i32(var_0.c.yy, vec2<i32>(-2147483647i, u_input.b))), ~13674u).c.zy), ~(~8684u));
    var var_3 = countOneBits(~(max(firstLeadingBit(vec3<i32>(var_2.c.x, 2147483647i, 0i)), _wgslsmith_mult_vec3_i32(var_2.c, vec3<i32>(u_input.b, u_input.a, 22618i))) & _wgslsmith_mod_vec3_i32(-vec3<i32>(0i, var_2.b, 0i), min(var_0.c, var_2.c))));
    let var_4 = Struct_4(var_2.d, select(vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(var_3.zz, vec2<i32>(1i, -30777i)), vec2<i32>(u_input.b, -var_0.c.x) ^ reverseBits(_wgslsmith_add_vec2_i32(var_0.c.yx, var_3.xy)), all(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))));
    let var_5 = any(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(false, false, false)), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), false), vec4<bool>(true, false, false, false), false)), select(vec4<bool>(true, false, any(vec2<bool>(false, true)), 60713u <= var_0.a), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true), all(vec2<bool>(true, true))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(350f, 750f);
}

