struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: bool,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: bool,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3) -> i32 {
    var var_0 = select(vec3<bool>(arg_0.c, !(215f >= arg_0.a.a.x), true & all(!vec3<bool>(arg_0.c, arg_0.c, false))), vec3<bool>(!(!arg_0.c) || select(any(vec4<bool>(arg_0.c, false, arg_0.c, false)), all(vec4<bool>(arg_0.c, arg_0.c, true, true)), false), false, any(select(!vec2<bool>(arg_0.c, false), !vec2<bool>(arg_0.c, arg_0.c), !vec2<bool>(arg_0.c, false)))), all(select(vec2<bool>(arg_0.c, arg_0.c && false), select(vec2<bool>(false, false), select(vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(true, arg_0.c), vec2<bool>(arg_0.c, arg_0.c)), all(vec2<bool>(true, false))), vec2<bool>(true, true))));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1218f + 1058f))) >= _wgslsmith_f_op_f32(764f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-519f, arg_0.a.b.x))), _wgslsmith_sub_vec4_u32(min(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mod_vec4_u32(max(vec4<u32>(1u, 4294967295u, 65615u, 1u), vec4<u32>(0u, 4294967295u, 4294967295u, 84553u)), vec4<u32>(1u, 1u, 1u, 1u))), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, reverseBits(44054u), _wgslsmith_add_u32(1u, 28426u), 1u), vec4<u32>(~0u, ~4294967295u, ~7143u, _wgslsmith_clamp_u32(1u, 4294967295u, 4294967295u)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2409f * _wgslsmith_f_op_f32(arg_0.a.b.x + arg_0.a.a.x)) - _wgslsmith_f_op_f32(arg_0.a.a.x - _wgslsmith_f_op_f32(1523f - 1068f))), arg_0.a.b.x) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.b.x, arg_0.a.b.x) + arg_0.a.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.a.x, arg_0.a.a.x))))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(236f, _wgslsmith_f_op_f32(-644f + arg_0.a.b.x))))));
    let var_3 = !(!vec3<bool>(any(vec3<bool>(false, var_1.a, var_1.a)), all(vec2<bool>(true, true)), true));
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.b.x), _wgslsmith_f_op_f32(select(-826f, _wgslsmith_f_op_f32(-var_2.x), false))), _wgslsmith_f_op_vec2_f32(-arg_0.a.b)));
    return 58961i;
}

fn func_2() -> Struct_1 {
    var var_0 = true;
    var_0 = true;
    let var_1 = Struct_2(-vec2<i32>(func_3(Struct_3(Struct_1(vec2<f32>(-322f, -901f), vec2<f32>(861f, -103f), -1i), u_input.a, false)), u_input.a), false, 1i < (-50962i ^ u_input.a), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-944f, 603f), vec2<f32>(-363f, -889f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1040f, 520f)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1357f, _wgslsmith_f_op_f32(1692f * -1765f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-535f, 1434f))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1434f, 590f), vec2<f32>(1107f, 330f), vec2<bool>(false, false)))), true)))), max(vec2<i32>(u_input.a, firstTrailingBit(u_input.a | u_input.a)), _wgslsmith_sub_vec2_i32(-select(vec2<i32>(2147483647i, u_input.a), vec2<i32>(0i, -1i), false), max(vec2<i32>(0i, u_input.a), vec2<i32>(u_input.a, 0i)))));
    let var_2 = Struct_3(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1.d.x, 931f), -968f, !var_1.b)), _wgslsmith_f_op_f32(-451f - _wgslsmith_f_op_f32(-1652f - -1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.d.x, var_1.d.x), var_1.d)) - vec2<f32>(845f, var_1.d.x))), 63264i), 2147483647i, false);
    var_0 = !var_2.c | !(!(!(!var_1.b)));
    return var_2.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_3) -> Struct_4 {
    let var_0 = Struct_4(!(!all(vec2<bool>(arg_1.c, false))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 0u, 0u, 41934u)) << ((vec4<u32>(31196u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, 1u), vec4<u32>(1u, 4294967295u, 5112u, 4294967295u)), 86002u, ~0u) & vec4<u32>(0u, 14815u, ~13963u, _wgslsmith_mult_u32(2708u, 1u))) % vec4<u32>(32u)));
    let var_1 = ~var_0.b.xzz;
    let var_2 = func_2();
    var var_3 = !vec4<bool>(false, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_2.a.b.x)), _wgslsmith_div_f32(arg_1.d.x, -392f))) >= arg_0.a.x, var_2.a.x != -1926f, false);
    var var_4 = !any(vec2<bool>(false, true));
    return var_0;
}

fn func_1() -> Struct_2 {
    let var_0 = -1313f;
    var var_1 = func_4(func_2(), Struct_2(-vec2<i32>(-49717i >> (0u % 32u), abs(-1i)), false, any(vec2<bool>(any(vec4<bool>(false, true, false, false)), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0, -1000f), _wgslsmith_div_vec2_f32(vec2<f32>(var_0, var_0), vec2<f32>(-2498f, -500f)))) - vec2<f32>(var_0, _wgslsmith_f_op_f32(-2215f - var_0))), select(vec2<i32>(_wgslsmith_mod_i32(u_input.a, u_input.a), reverseBits(u_input.a)), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(-5573i, u_input.a)) << (vec2<u32>(839u, 1u) % vec2<u32>(32u)), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, false)))), Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1019f, var_0))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-708f, -1000f) - func_2().b), func_3(Struct_3(Struct_1(vec2<f32>(-100f, 312f), vec2<f32>(549f, 336f), u_input.a), u_input.a, true))), -2801i ^ _wgslsmith_sub_i32(-33677i, -u_input.a), !any(vec3<bool>(false, false, true))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1219f, -577f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-416f, var_0)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, _wgslsmith_f_op_f32(-var_0)) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0, -3030f)))))), _wgslsmith_mult_i32(u_input.a, abs(select(34975i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -29777i), vec2<i32>(u_input.a, -53122i)), true))));
    let var_3 = func_4(var_2, Struct_2(abs(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, var_2.c), select(vec2<i32>(-68272i, var_2.c), vec2<i32>(67510i, -2147483647i), true))), _wgslsmith_f_op_f32(ceil(var_2.a.x)) == _wgslsmith_f_op_f32(-var_0), true, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, var_2.a.x))), ~(-(vec2<i32>(29133i, 21510i) ^ vec2<i32>(var_2.c, 8511i)))), Struct_3(var_2, -(~(-2147483647i)) << (~(~var_1.b.x) % 32u), var_1.a && true));
    let var_4 = _wgslsmith_mult_i32(-2147483647i, u_input.a);
    return Struct_2(select(_wgslsmith_sub_vec2_i32(vec2<i32>(-67181i, ~var_2.c), abs(-vec2<i32>(u_input.a, 38483i))), firstLeadingBit(~(-vec2<i32>(0i, var_2.c))), vec2<bool>((var_2.c == var_4) | true, all(select(vec2<bool>(var_1.a, var_3.a), vec2<bool>(true, true), vec2<bool>(var_3.a, true))))), var_3.a, var_3.a, _wgslsmith_f_op_vec2_f32(-func_2().a), vec2<i32>(_wgslsmith_div_i32(abs(23490i), firstTrailingBit(0i)), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, false);
    let var_1 = func_1();
    let var_2 = Struct_4(true, ~(~firstTrailingBit(~vec4<u32>(0u, 21615u, 0u, 73333u))));
    var var_3 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(var_1.d - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-774f, 1562f)))), var_1.d, -(40110i | var_1.e.x)), func_1(), Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-872f, 1804f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(274f, 346f)), true)), var_1.d, func_3(Struct_3(Struct_1(vec2<f32>(-314f, 981f), vec2<f32>(var_1.d.x, -1522f), u_input.a), u_input.a, false)) ^ abs(u_input.a)), _wgslsmith_mult_i32(-29610i, u_input.a), true));
    var_3 = Struct_4(false, vec4<u32>(var_2.b.x & var_2.b.x, var_2.b.x, ~_wgslsmith_add_u32(1u, _wgslsmith_mod_u32(var_3.b.x, 19357u)), var_3.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, vec3<f32>(_wgslsmith_f_op_f32(-1395f * 323f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.d.x + var_1.d.x), _wgslsmith_f_op_f32(step(-451f, 456f))))), _wgslsmith_f_op_f32(var_1.d.x - -1423f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.d.x)))), _wgslsmith_div_f32(var_1.d.x, _wgslsmith_f_op_f32(floor(-624f)))));
}

