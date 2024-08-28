struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: f32) -> vec2<f32> {
    var var_0 = ~vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(2147483647i, -1i) << (~arg_1.x % 32u), _wgslsmith_clamp_i32(u_input.a.x, 3177i, i32(-1i) * -26527i), -u_input.a.x), 0i, abs(468i), _wgslsmith_div_i32(u_input.d.x, 1i));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_3 + 1000f))))));
    var var_2 = ~1u;
    let var_3 = arg_0;
    var var_4 = var_3;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_0.a.yw))) - vec2<f32>(_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-612f, var_3.a.x, false)), _wgslsmith_f_op_f32(-var_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a.x))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec4<f32>) -> vec3<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-894f, -1000f, -222f, -279f) + arg_0.a))))));
    let var_1 = i32(-1i) * -35744i;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(select(arg_0.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(988f))), 518f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(197f + 969f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1295f - -818f))), u_input.b > ~4294967295u)));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(502f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), -1047f, _wgslsmith_f_op_f32(min(var_2.a.x, -777f)))) * arg_1.a);
    var_0 = Struct_1(vec4<f32>(var_3.x, arg_1.a.x, var_2.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(var_2.a.x)), 1409f))));
    return _wgslsmith_div_vec3_u32(countOneBits(arg_2.yzx), vec3<u32>(_wgslsmith_clamp_u32(u_input.b, u_input.b, ~0u), _wgslsmith_sub_u32((arg_2.x >> (arg_2.x % 32u)) | ~2626u, 0u | _wgslsmith_add_u32(u_input.b, 116938u)), ~(~(~4294967295u))));
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, true), true)), u_input.b < (u_input.b & u_input.b), !all(vec4<bool>(true, true, true, true)));
    var_0 = !vec3<bool>(var_0.x, var_0.x, false);
    var_0 = vec3<bool>(true, 4294967295u != _wgslsmith_add_u32(4294967295u, u_input.b), !any(!(!vec3<bool>(true, var_0.x, false))));
    var_0 = vec3<bool>(select(29001u >= _wgslsmith_dot_vec3_u32(func_3(Struct_1(vec4<f32>(-1027f, -1037f, -2207f, 1139f)), Struct_1(vec4<f32>(275f, 777f, 2301f, 706f)), vec4<u32>(u_input.b, 8866u, 19128u, 55195u), vec4<f32>(298f, 793f, -102f, -1952f)), vec3<u32>(64129u, 4294967295u, 4294967295u)), false && var_0.x, false), var_0.x && var_0.x, any(vec3<bool>(var_0.x, true, var_0.x)));
    var_0 = vec3<bool>(any(select(!(!vec4<bool>(true, true, var_0.x, var_0.x)), select(!vec4<bool>(var_0.x, var_0.x, false, var_0.x), select(vec4<bool>(false, true, true, false), vec4<bool>(true, var_0.x, false, var_0.x), var_0.x), !var_0.x), vec4<bool>(select(false, var_0.x, true), u_input.c.x >= 22859i, var_0.x || var_0.x, var_0.x))), true, all(vec2<bool>(true, !(var_0.x || true))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-996f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-144f)) - 716f), -1257f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(203f - -860f))))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = max(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, firstTrailingBit(41255i)), _wgslsmith_add_i32(-2147483647i, abs(u_input.d.x)), 1i), vec3<i32>((u_input.c.x ^ -2147483647i) & abs(2147483647i), firstLeadingBit(u_input.c.x), u_input.d.x)), -select(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 6918i, u_input.a.x), u_input.a.www, vec3<i32>(1i, 36791i, 0i)), u_input.a.xww & u_input.a.wzx), vec3<i32>(-49509i, 59981i, u_input.c.x << (u_input.b % 32u)), !select(vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), false)));
    var var_1 = func_2();
    var var_2 = -24545i << ((~countOneBits(reverseBits(4294967295u)) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(4294967295u), min(2208u, 57099u), u_input.b), ~(vec3<u32>(u_input.b, 20308u, u_input.b) >> (vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u))))) % 32u);
    var var_3 = -u_input.c.x;
    var_2 = var_0.x;
    return Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.a + arg_2.a)))), var_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(774f, -1468f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec4<f32>(101f, -337f, -814f, -1940f)), vec4<u32>(3357u, u_input.b, 115182u, u_input.b), Struct_1(vec4<f32>(-615f, -2493f, 101f, 319f)), 451f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-389f, 1006f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -1055f), vec2<f32>(-1471f, 547f), vec2<bool>(false, true))) * vec2<f32>(-313f, 584f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1082f), _wgslsmith_f_op_f32(193f * -1007f)))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1459f, -1015f) + vec2<f32>(-755f, -1881f)))))));
    let var_1 = _wgslsmith_dot_vec3_u32(~(~vec3<u32>(32224u << (u_input.b % 32u), 1u, ~u_input.b)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 4294967295u | u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 36463u), vec3<u32>(0u, 68725u, u_input.b))) << (min(~vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(0u, u_input.b, 1u)) % vec3<u32>(32u)), ~vec3<u32>(_wgslsmith_mod_u32(u_input.b, u_input.b), 1u, 1u)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(875f, 1691f, 343f, 548f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1446f, var_0.x, var_0.x) + vec4<f32>(var_0.x, var_0.x, 1014f, var_0.x))))));
    var var_3 = func_4(vec2<bool>(true, false), func_2(), Struct_1(_wgslsmith_f_op_vec4_f32(var_2.a - vec4<f32>(569f, _wgslsmith_f_op_f32(f32(-1f) * -564f), _wgslsmith_f_op_f32(var_0.x - 1427f), -922f))));
    var_3 = func_4(!select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), false), vec2<bool>(true, true), false), func_4(!vec2<bool>(select(false, false, false), any(vec4<bool>(false, false, false, true))), func_4(vec2<bool>(true, true), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, var_0.x, var_2.a.x, var_2.a.x) * vec4<f32>(1000f, 514f, var_0.x, var_3.a.x))), func_2()), Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, var_0.x, var_3.a.x, -483f))))))), func_4(select(vec2<bool>(all(vec3<bool>(true, true, true)), true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), all(vec4<bool>(false, false, true, true))), select(vec2<bool>(false, false), vec2<bool>(true, false), any(vec2<bool>(true, true)))), Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-var_3.a)))), Struct_1(var_2.a)));
    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-func_4(select(vec2<bool>(false, false), vec2<bool>(false, true), false), Struct_1(vec4<f32>(-1000f, -1422f, 845f, 1573f)), func_2()).a) + var_3.a), _wgslsmith_f_op_vec4_f32(func_4(vec2<bool>(u_input.a.x < 57420i, true), func_2(), func_4(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), func_2(), Struct_1(vec4<f32>(-1099f, var_3.a.x, var_3.a.x, var_0.x)))).a + _wgslsmith_div_vec4_f32(vec4<f32>(345f, _wgslsmith_f_op_f32(round(-1094f)), -117f, 2313f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(390f, var_3.a.x, var_3.a.x, -367f)))));
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_2.a.x, var_3.a.x), _wgslsmith_f_op_f32(ceil(756f)), u_input.c.x > u_input.a.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(286f * 180f))) > -1557f;
    let var_6 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(1469f);
}

