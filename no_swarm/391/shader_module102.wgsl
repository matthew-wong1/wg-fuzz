struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec3<f32>,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> f32 {
    var var_0 = any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))) & true;
    let var_1 = select(vec3<bool>(any(vec3<bool>(false, any(vec2<bool>(true, true)), true)), firstTrailingBit(firstLeadingBit(-21116i)) > _wgslsmith_div_i32(firstTrailingBit(u_input.a.x), ~(-13461i)), true), !vec3<bool>(false, !(u_input.a.x > u_input.a.x), true), vec3<bool>(true, true, true));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -316f);
    var var_3 = Struct_2(Struct_1(vec3<f32>(801f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1002f, -804f)), _wgslsmith_f_op_f32(trunc(-791f))), false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 247f, -911f), vec3<f32>(885f, 483f, 722f), var_1))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -172f), _wgslsmith_f_op_f32(f32(-1f) * -682f), -325f)), ~(firstTrailingBit(vec3<u32>(u_input.b, u_input.b, u_input.b)) >> (max(vec3<u32>(3136u, 0u, u_input.b), vec3<u32>(0u, u_input.b, u_input.b)) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(414f, -1000f) - vec2<f32>(-869f, -682f))))));
    var var_4 = var_3.a.c;
    return var_3.a.c.x;
}

fn func_2() -> vec3<f32> {
    var var_0 = u_input.a.x;
    var var_1 = !select(vec2<bool>(all(vec2<bool>(true, true)), !any(vec4<bool>(false, false, true, false))), vec2<bool>(true, select(true, true, true)), true);
    let var_2 = 84129u;
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -143f, 392f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(626f, -980f, 1801f))) - vec3<f32>(-1160f, _wgslsmith_f_op_f32(-312f - -1286f), _wgslsmith_f_op_f32(func_3()))), true, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-123f, 612f, -1123f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-274f, -1647f, -170f))))))), _wgslsmith_add_vec3_u32(~vec3<u32>(0u, var_2, u_input.b), vec3<u32>(37953u, var_2, 26872u)) >> (((vec3<u32>(var_2, 2953u, 0u) & vec3<u32>(var_2, 0u, u_input.b)) << ((vec3<u32>(u_input.b, 0u, u_input.b) ^ vec3<u32>(u_input.b, 0u, u_input.b)) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1f, 1f)))));
    var var_4 = var_3.a;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(-552f, _wgslsmith_f_op_f32(-var_3.a.a.x), -1136f) - var_3.a.c);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(575f, -238f, 1000f) * vec3<f32>(1238f, -1018f, -998f))) + vec3<f32>(-883f, 2252f, -657f))), all(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), false)), _wgslsmith_f_op_vec3_f32(func_2()), ~(~vec3<u32>(~19486u, _wgslsmith_dot_vec2_u32(vec2<u32>(9660u, 1u), vec2<u32>(u_input.b, u_input.b)), 1u)), vec2<f32>(_wgslsmith_f_op_vec3_f32(func_2()).x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2094f * -836f), _wgslsmith_f_op_f32(f32(-1f) * -1586f)) - _wgslsmith_f_op_f32(min(-706f, _wgslsmith_f_op_f32(150f - -235f))))));
    var var_1 = Struct_1(var_0.c, any(vec3<bool>(var_0.b, var_0.b, !select(var_0.b, var_0.b, true))), var_0.a, vec3<u32>(~u_input.b, 1u, u_input.b), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.a.x)), _wgslsmith_f_op_f32(-var_0.c.x)) * var_0.e), vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1751f, -495f))))));
    var var_2 = ~(-126i);
    var_2 = -23754i;
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(var_1.e.x, 212f), _wgslsmith_f_op_f32(var_1.c.x - 497f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(581f + -156f))))), !var_0.b, vec3<f32>(var_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.c.x, var_1.c.x)))), _wgslsmith_f_op_f32(-622f + 899f)), ~vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(var_0.d.x, var_0.d.x), _wgslsmith_clamp_u32(var_0.d.x, 32459u, 16843u)), ~(~var_1.d.x), 44477u >> (u_input.b % 32u)), var_0.e);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~29344u;
    let var_1 = -(vec4<i32>(_wgslsmith_sub_i32(-1i, select(0i, 1i, false)), u_input.a.x, min(-u_input.a.x, ~u_input.a.x), -u_input.a.x ^ _wgslsmith_mod_i32(u_input.a.x, 1i)) >> (vec4<u32>(u_input.b, 1u ^ ~u_input.b, ~(~var_0), 18248u) % vec4<u32>(32u)));
    var var_2 = func_1();
    var_2 = Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.e.x, var_2.a.x), -258f), 718f), -1994f, _wgslsmith_div_f32(var_2.e.x, _wgslsmith_f_op_f32(var_2.c.x + _wgslsmith_f_op_f32(f32(-1f) * -1254f)))), var_2.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-715f, 1108f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.e.x))))), select(~(~(vec3<u32>(u_input.b, 4294967295u, var_2.d.x) >> (var_2.d % vec3<u32>(32u)))), _wgslsmith_add_vec3_u32(min(vec3<u32>(u_input.b, var_2.d.x, u_input.b), vec3<u32>(var_2.d.x, 1u, var_2.d.x)), _wgslsmith_mod_vec3_u32(~vec3<u32>(var_2.d.x, 10444u, u_input.b), var_2.d)), true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-174f, _wgslsmith_f_op_f32(-455f - _wgslsmith_f_op_f32(func_3())))));
    var var_3 = all(vec2<bool>(false, false));
    var var_4 = ~60098u;
    let var_5 = vec3<bool>(var_2.b, true, true);
    var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(abs(38657u) | var_0) << (var_0 % 32u), 1u, _wgslsmith_f_op_vec2_f32(-var_2.c.yz));
}

