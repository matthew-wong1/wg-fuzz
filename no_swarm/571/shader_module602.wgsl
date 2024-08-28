struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> vec4<bool> {
    let var_0 = u_input.a;
    var var_1 = Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, 1u, abs(arg_0), max(arg_0, 79774u)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0, 27538u, 7632u, 26328u), vec4<u32>(arg_0, 46564u, 10251u, 1u)) | abs(vec4<u32>(arg_0, arg_0, arg_0, 0u))), ~(~vec4<u32>(0u, 0u, arg_0, 1u))), ~reverseBits(select(arg_0 >> (0u % 32u), ~arg_0, true)), select(vec4<u32>(countOneBits(~29748u), ~(~arg_0), 14698u, _wgslsmith_dot_vec3_u32(~vec3<u32>(23355u, 76421u, arg_0), vec3<u32>(arg_0, 43787u, arg_0) & vec3<u32>(0u, arg_0, arg_0))), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 37916u, 4294967295u, 4294967295u), vec4<u32>(15521u, 20629u, arg_0, 0u)) << (vec4<u32>(arg_0, arg_0, 1u, 18140u) % vec4<u32>(32u)), ~(vec4<u32>(7241u, 0u, 31806u, arg_0) << (vec4<u32>(arg_0, arg_0, 54120u, arg_0) % vec4<u32>(32u)))), vec4<bool>(true, -47393i == _wgslsmith_mod_i32(var_0, u_input.a), true, true)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-714f, _wgslsmith_f_op_f32(-2109f * -1390f), _wgslsmith_f_op_f32(f32(-1f) * -819f), 1000f), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-1842f, 1553f, 434f, 894f), vec4<f32>(-580f, 701f, -1827f, 1794f)))))))), !any(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false))));
    var var_2 = Struct_1(min(~(_wgslsmith_div_u32(17427u, 42533u) | _wgslsmith_add_u32(arg_0, arg_0)), var_1.b), 7866u, abs(_wgslsmith_clamp_vec4_u32(~var_1.c ^ abs(var_1.c), countOneBits(~var_1.c), ~(~vec4<u32>(var_1.a, var_1.c.x, arg_0, arg_0)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_1.d), var_1.d, select(vec4<bool>(false, false, var_1.e, var_1.e), vec4<bool>(true, true, var_1.e, false), true))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.d + var_1.d)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-146f, 194f, var_1.d.x, var_1.d.x))))), false);
    return vec4<bool>(!(all(vec2<bool>(var_2.e, true)) & true), !(!(!var_2.e)) && var_2.e, !any(select(!vec3<bool>(var_1.e, var_1.e, var_1.e), !vec3<bool>(true, var_1.e, var_2.e), var_2.e)), var_1.e);
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = func_3(42807u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_3.d.x * 573f))));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: u32, arg_3: vec2<u32>) -> vec4<bool> {
    let var_0 = true;
    let var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(662f)), _wgslsmith_div_f32(1277f, 1481f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1000f, -1000f)))), 1f), _wgslsmith_f_op_f32(1763f - _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(419f, 1070f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-183f, -1704f), vec2<f32>(-1487f, -814f), false)))), u_input.a, Struct_1(select(4294967295u, 0u, true), firstTrailingBit(379u), ~vec4<u32>(80888u, arg_2, 43569u, 56532u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1492f, 755f, -294f, -542f)), !arg_1.x), Struct_1(20057u, max(748u, 75583u), ~vec4<u32>(arg_3.x, arg_2, arg_2, 4294967295u), vec4<f32>(-723f, 1772f, -1123f, -234f), false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(950f)) - _wgslsmith_f_op_f32(693f * -862f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1418f - _wgslsmith_f_op_f32(f32(-1f) * -752f)))));
    let var_2 = Struct_1(_wgslsmith_dot_vec2_u32(arg_3, vec2<u32>(~30070u, arg_3.x)), ~arg_3.x, firstLeadingBit(select(~vec4<u32>(arg_3.x, 4294967295u, 1u, 1u) >> (~vec4<u32>(arg_3.x, arg_2, arg_3.x, 6003u) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(~vec4<u32>(70392u, arg_2, 0u, 0u), firstLeadingBit(vec4<u32>(arg_2, 0u, 17291u, 13894u))), select(vec4<bool>(true, true, true, arg_1.x), vec4<bool>(true, true, false, false), select(vec4<bool>(var_0, true, false, true), vec4<bool>(false, var_0, true, arg_1.x), vec4<bool>(true, arg_1.x, arg_1.x, var_0))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-775f, 794f, var_1.x, -1000f), vec4<f32>(-2992f, -1002f, var_1.x, var_1.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, -317f, -431f) - vec4<f32>(1000f, 203f, var_1.x, var_1.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-382f, 1021f, var_1.x, 1002f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 307f, var_1.x, var_1.x) - vec4<f32>(-1393f, -542f, 608f, var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 112f, var_1.x)), var_0)))), var_0);
    let var_3 = reverseBits(firstTrailingBit(min(var_2.c.xyz, ~countOneBits(vec3<u32>(arg_0, arg_2, 4294967295u)))));
    var var_4 = func_3(arg_2).xx;
    return select(!select(vec4<bool>(true, arg_1.x & var_2.e, var_0, false | var_2.e), vec4<bool>(true, !var_2.e, true, 37036u <= var_3.x), true), select(vec4<bool>(!all(vec3<bool>(true, false, true)), func_3(_wgslsmith_dot_vec4_u32(var_2.c, var_2.c)).x, any(!vec4<bool>(var_0, var_0, var_4.x, true)), all(vec4<bool>(var_4.x, false, var_2.e, var_2.e))), vec4<bool>(select(true, any(vec3<bool>(true, false, false)), arg_3.x >= var_3.x), true, !var_4.x, true), var_0), vec4<bool>(!(!any(vec2<bool>(false, var_0))), true, !var_4.x, !any(vec3<bool>(arg_1.x, true, false))));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = arg_3.d;
    let var_1 = arg_3;
    return func_3(reverseBits(abs(var_1.c.x))).xwz;
}

fn func_5(arg_0: vec3<f32>, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = 1u;
    let var_1 = Struct_1(1u, 66750u, vec4<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, 10255u, 4294967295u, 1u)), vec4<u32>(1u, 1u, 1u, 1u)), 1u, 0u, 129022u), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1381f))), _wgslsmith_f_op_f32(-arg_0.x), arg_0.x))), arg_1.x);
    let var_2 = firstLeadingBit(~u_input.a);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1404f;
    let var_1 = 843f;
    let var_2 = func_5(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, -944f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-327f, -654f, -1109f) + vec3<f32>(var_1, 951f, -314f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1070f, var_1, var_1) + vec3<f32>(192f, var_1, 1782f)) - vec3<f32>(var_1, var_1, var_1))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1, var_1, 1000f), vec3<f32>(var_1, 1557f, var_1), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true))))))), select(func_4(all(func_1(34975u, vec2<bool>(true, true), 4294967295u, vec2<u32>(36481u, 21702u))), false, Struct_1(_wgslsmith_sub_u32(39653u, 20124u), 1u, ~vec4<u32>(21999u, 1u, 10892u, 1u), vec4<f32>(421f, -414f, 1039f, var_1), true), Struct_1(1u, _wgslsmith_div_u32(4294967295u, 9107u), vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1545f, var_1, var_1, 254f)), func_1(1570u, vec2<bool>(true, true), 56071u, vec2<u32>(1u, 5741u)).x)), select(func_1(reverseBits(4294967295u), vec2<bool>(false, true), abs(0u), abs(vec2<u32>(56811u, 0u))).yzw, vec3<bool>(true, true, true), false), func_1(1u, select(func_1(60129u, vec2<bool>(true, true), 18741u, vec2<u32>(1u, 114803u)).ww, vec2<bool>(true, true), func_3(6170u).zy), 1u, vec2<u32>(~4294967295u, ~1u)).yyx));
    var var_3 = 65943u;
    var_0 = -1000f;
    var var_4 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(var_2.d.xwx, var_2.d.wxz), vec3<f32>(_wgslsmith_f_op_f32(var_1 + -905f), _wgslsmith_f_op_f32(2542f * 1000f), _wgslsmith_f_op_f32(-var_1)), !(!vec3<bool>(false, true, var_2.e))))))));
    var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_4.x)), _wgslsmith_f_op_f32(-var_4.x))))), var_2.d.x, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(-var_2.d.wy), -(~min(-23229i, 1i)), var_2, Struct_1(~var_2.b, var_2.c.x, abs(_wgslsmith_div_vec4_u32(var_2.c, var_2.c)), _wgslsmith_div_vec4_f32(var_2.d, func_5(vec3<f32>(-724f, 1659f, var_4.x), vec3<bool>(var_2.e, true, var_2.e)).d), true))));
    let var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-var_2.d.x), -595f, var_2.d.x))));
    var var_6 = reverseBits(-countOneBits(~vec4<i32>(48150i, u_input.a, u_input.a, 7970i)));
    let x = u_input.a;
    s_output = StorageBuffer(42332u, _wgslsmith_mod_u32(~var_2.c.x, ~_wgslsmith_mult_u32(1u, max(var_2.b, 0u))), reverseBits(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, var_6.x, var_6.x, u_input.a), vec4<i32>(-19657i, 13435i, 10789i, 86098i)) << (~var_2.c % vec4<u32>(32u)))), i32(-1i) * -26486i, 296f);
}

