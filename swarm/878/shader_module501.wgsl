struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: i32,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: i32) -> f32 {
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -264f))));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: i32, arg_3: Struct_1) -> bool {
    var var_0 = Struct_3(true, Struct_1(vec4<bool>(false, any(arg_3.a), arg_3.a.x, arg_3.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.x, arg_3.e.x, arg_1.x)))), ~(~116i), !(!select(arg_3.d, vec3<bool>(arg_3.a.x, true, true), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_3.e * _wgslsmith_f_op_vec2_f32(-vec2<f32>(521f, arg_1.x))))), vec3<bool>(false, !(!any(arg_3.a.yyy)), arg_3.d.x), Struct_1(arg_3.a, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_3.e.x, arg_3.b.x)))), arg_2, arg_3.a.xzw, arg_3.b.zy));
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3) -> Struct_2 {
    var var_0 = Struct_2(arg_0.e.x, ~(~(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 1475u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 4294967295u, 52287u, 1u)) >> (~vec4<u32>(1u, u_input.a.x, 43813u, u_input.a.x) % vec4<u32>(32u)))), vec4<f32>(_wgslsmith_f_op_f32(func_2(arg_2.d.c)), _wgslsmith_f_op_f32(abs(-103f)), arg_0.b.x, arg_2.b.e.x), arg_1.b, Struct_1(vec4<bool>(arg_1.a, _wgslsmith_f_op_f32(-arg_1.b.e.x) > _wgslsmith_f_op_f32(f32(-1f) * -684f), arg_1.b.b.x == _wgslsmith_f_op_f32(-arg_2.d.e.x), !func_3(8465i, arg_0.e, -39475i, arg_2.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, -644f, arg_2.b.b.x)) + vec3<f32>(-182f, arg_0.b.x, arg_0.b.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.b.b) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.b.b.x, 866f, arg_0.e.x), arg_1.d.b, vec3<bool>(false, true, false))))), firstLeadingBit(max(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, arg_0.c, -66986i), vec3<i32>(2147483647i, u_input.b.x, u_input.b.x)), arg_2.b.c >> (u_input.a.x % 32u))), select(!vec3<bool>(false, false, arg_2.d.d.x), vec3<bool>(any(vec3<bool>(arg_0.a.x, true, true)), true, !arg_0.a.x), arg_1.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.e.x, -243f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, arg_2.d.e.x) - vec2<f32>(arg_0.e.x, arg_1.b.e.x))))));
    let var_1 = Struct_3(true, arg_1.b, vec3<bool>(true & (arg_0.c >= 25214i), !all(!var_0.d.a.ww), false), Struct_1(var_0.d.a, vec3<f32>(arg_2.d.b.x, 1108f, arg_0.e.x), var_0.d.c, select(arg_0.a.yxw, select(!vec3<bool>(arg_2.b.a.x, true, var_0.d.a.x), arg_0.a.zzw, !arg_2.c), -28423i > -arg_2.b.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(939f, -1196f), arg_1.d.b.yy))))));
    let var_2 = Struct_1(!vec4<bool>(true, true, (u_input.a.x & u_input.a.x) <= _wgslsmith_add_u32(34331u, var_0.b.x), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -639f, -202f)))) * _wgslsmith_f_op_vec3_f32(-arg_1.b.b)), arg_1.d.c, !(!arg_1.b.a.xzx), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-712f)), _wgslsmith_f_op_f32(-1938f - _wgslsmith_f_op_f32(select(arg_2.b.b.x, 173f, var_1.c.x)))), _wgslsmith_f_op_f32(round(1000f))));
    var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(467f - -1238f))))) - _wgslsmith_f_op_f32(round(arg_0.e.x))), min(vec4<u32>(~u_input.a.x, u_input.a.x, ~u_input.a.x, u_input.a.x), firstLeadingBit(var_0.b)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.d.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1182f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.b.x)), _wgslsmith_f_op_f32(abs(300f))))), Struct_1(!vec4<bool>(false, true || arg_2.d.d.x, all(vec2<bool>(false, arg_2.d.d.x)), any(arg_1.d.a)), arg_0.b, countOneBits(1i), vec3<bool>(var_1.d.a.x, true, _wgslsmith_f_op_f32(select(arg_2.d.b.x, arg_1.b.e.x, arg_1.b.a.x)) >= _wgslsmith_f_op_f32(-1000f - -905f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_1.d.e, vec2<f32>(arg_1.d.e.x, 358f))))), Struct_1(!vec4<bool>(arg_0.e.x <= -892f, true, var_1.b.a.x, !var_1.c.x), var_1.d.b, _wgslsmith_dot_vec3_i32(abs(min(u_input.b, vec3<i32>(-28716i, arg_1.b.c, 18105i))), vec3<i32>(~(-32788i), abs(var_0.e.c), -1i)), select(select(select(vec3<bool>(true, arg_0.d.x, var_0.e.a.x), vec3<bool>(true, false, arg_1.d.a.x), false), vec3<bool>(var_1.d.a.x, arg_2.d.a.x, arg_2.c.x), vec3<bool>(true, var_2.d.x, false)), arg_0.a.wwz, vec3<bool>(!arg_2.d.d.x, true, false)), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1139f), _wgslsmith_div_f32(arg_2.b.b.x, var_0.c.x), all(var_1.d.a.yxy))), arg_0.e.x)));
    let var_3 = 4610i | abs(~_wgslsmith_clamp_i32(var_2.c | arg_0.c, select(-2147483647i, arg_2.b.c, arg_2.d.d.x), arg_2.b.c));
    return Struct_2(-650f, var_0.b ^ var_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.c + vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.b.x), _wgslsmith_f_op_f32(ceil(-1096f)), _wgslsmith_f_op_f32(min(-347f, -1572f)), 1815f)) - vec4<f32>(1f, 1f, 1f, 1f)), Struct_1(arg_0.a, var_1.d.b, -var_3, select(vec3<bool>(arg_2.c.x, false, !var_0.d.a.x), vec3<bool>(false, var_1.d.d.x, var_2.c < 2147483647i), any(var_1.d.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.e.b.x, var_2.e.x) + arg_0.b.zz))) - vec2<f32>(_wgslsmith_f_op_f32(arg_0.e.x * -1000f), _wgslsmith_f_op_f32(floor(arg_1.d.e.x))))), Struct_1(var_2.a, arg_2.d.b, abs((50565i ^ var_3) | 1i), select(arg_1.d.d, select(arg_1.d.a.yxw, select(vec3<bool>(false, false, arg_1.a), var_1.d.d, true), 0u < var_0.b.x), arg_2.d.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1101f, 542f))) * var_1.b.b.xz)));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    let var_0 = _wgslsmith_mod_i32(arg_0, _wgslsmith_add_i32(1i, reverseBits(u_input.b.x)));
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    let var_1 = abs(u_input.b.x);
    var var_2 = ((_wgslsmith_div_f32(-1000f, -1279f) > _wgslsmith_f_op_f32(func_4(-1i, Struct_2(1472f, vec4<u32>(34385u, 0u, 51389u, 13556u), vec4<f32>(-434f, -1000f, 220f, 1342f), Struct_1(vec4<bool>(true, false, true, false), vec3<f32>(1000f, -812f, 785f), 453i, vec3<bool>(false, true, false), vec2<f32>(455f, 1314f)), Struct_1(vec4<bool>(true, true, false, false), vec3<f32>(-703f, -1671f, 456f), var_1, vec3<bool>(false, false, true), vec2<f32>(450f, 654f))), func_1(Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(132f, 404f, 906f), 2319i, vec3<bool>(false, false, false), vec2<f32>(1000f, -388f)), Struct_3(false, Struct_1(vec4<bool>(true, false, false, true), vec3<f32>(328f, -1097f, 1308f), 23530i, vec3<bool>(true, false, false), vec2<f32>(-228f, -814f)), vec3<bool>(true, true, true), Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(432f, -938f, -1333f), -2147483647i, vec3<bool>(true, true, false), vec2<f32>(-324f, -1000f))), Struct_3(false, Struct_1(vec4<bool>(true, false, false, true), vec3<f32>(1325f, 1000f, 276f), 1i, vec3<bool>(false, false, false), vec2<f32>(192f, 1000f)), vec3<bool>(false, true, true), Struct_1(vec4<bool>(true, false, false, true), vec3<f32>(-104f, -495f, 642f), u_input.b.x, vec3<bool>(false, true, true), vec2<f32>(1374f, -235f))))))) && true) & true;
    var_2 = select(!((func_1(Struct_1(vec4<bool>(true, true, true, true), vec3<f32>(-486f, -198f, 334f), -27467i, vec3<bool>(false, true, false), vec2<f32>(-519f, -238f)), Struct_3(true, Struct_1(vec4<bool>(true, false, false, false), vec3<f32>(1383f, -455f, 659f), var_1, vec3<bool>(false, true, true), vec2<f32>(-132f, -2053f)), vec3<bool>(true, false, true), Struct_1(vec4<bool>(false, true, true, false), vec3<f32>(-334f, -518f, 1000f), u_input.b.x, vec3<bool>(false, false, false), vec2<f32>(-2157f, 635f))), Struct_3(false, Struct_1(vec4<bool>(true, false, true, false), vec3<f32>(1146f, -685f, 336f), u_input.b.x, vec3<bool>(true, false, false), vec2<f32>(2798f, -1104f)), vec3<bool>(false, true, false), Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(958f, 580f, 976f), -2147483647i, vec3<bool>(true, true, true), vec2<f32>(503f, -1000f)))).e.d.x == select(false, true, true)) || (~u_input.a.x != max(11563u, 0u))), true, true || all(!func_1(Struct_1(vec4<bool>(true, true, true, false), vec3<f32>(1135f, -686f, 951f), 2147483647i, vec3<bool>(true, false, false), vec2<f32>(-232f, 316f)), Struct_3(true, Struct_1(vec4<bool>(true, false, false, false), vec3<f32>(319f, -506f, 2141f), u_input.b.x, vec3<bool>(true, false, true), vec2<f32>(302f, -1030f)), vec3<bool>(true, true, false), Struct_1(vec4<bool>(false, true, false, false), vec3<f32>(633f, 971f, 549f), -2147483647i, vec3<bool>(true, false, false), vec2<f32>(-1326f, -1733f))), Struct_3(false, Struct_1(vec4<bool>(false, true, true, false), vec3<f32>(402f, -462f, 656f), -21317i, vec3<bool>(false, true, false), vec2<f32>(1282f, -1000f)), vec3<bool>(false, false, true), Struct_1(vec4<bool>(true, true, true, true), vec3<f32>(1000f, 332f, -1000f), 0i, vec3<bool>(true, false, false), vec2<f32>(1151f, 445f)))).e.d.zz));
    let var_3 = Struct_1(select(!(!func_1(Struct_1(vec4<bool>(false, true, true, false), vec3<f32>(-579f, -523f, 148f), var_1, vec3<bool>(false, true, true), vec2<f32>(-437f, 340f)), Struct_3(true, Struct_1(vec4<bool>(true, true, false, false), vec3<f32>(227f, 209f, -817f), 30282i, vec3<bool>(true, true, true), vec2<f32>(483f, 1233f)), vec3<bool>(true, true, true), Struct_1(vec4<bool>(true, true, true, true), vec3<f32>(1729f, 791f, -215f), u_input.b.x, vec3<bool>(false, false, false), vec2<f32>(-621f, -706f))), Struct_3(true, Struct_1(vec4<bool>(true, true, false, true), vec3<f32>(577f, 2533f, -1124f), 28791i, vec3<bool>(true, false, false), vec2<f32>(-900f, 1316f)), vec3<bool>(true, true, true), Struct_1(vec4<bool>(true, false, false, true), vec3<f32>(-556f, -991f, 1488f), var_1, vec3<bool>(true, false, true), vec2<f32>(-441f, 1733f)))).d.a), vec4<bool>(false, all(vec2<bool>(true, true)), ~u_input.b.x < _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(var_1, u_input.b.x, var_1)), true), select(vec4<bool>(all(vec4<bool>(false, false, false, false)), any(vec4<bool>(false, false, false, false)), true, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(961f, 786f, -711f) * vec3<f32>(-1857f, -1000f, 524f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(581f, -117f, -805f) * vec3<f32>(1182f, 1243f, 1002f)))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(sign(-1547f)), -181f, 866f)))), var_1, !(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)), vec2<f32>(1f, 1f));
    var_2 = true;
    let var_4 = var_3;
    let var_5 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.e.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1138f, -2092f)) - _wgslsmith_f_op_f32(step(var_4.e.x, _wgslsmith_f_op_f32(select(var_4.e.x, var_3.b.x, true)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_clamp_u32(var_0, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(abs(vec4<u32>(u_input.a.x, var_0, var_0, u_input.a.x)), ~vec4<u32>(var_0, u_input.a.x, 18812u, 47520u)), ~countOneBits(vec4<u32>(6330u, 11045u, 22534u, 33832u))), 39320u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.x))) - var_5));
}

