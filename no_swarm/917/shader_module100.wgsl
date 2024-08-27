struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> f32 {
    let var_0 = true;
    let var_1 = _wgslsmith_mult_vec3_u32(min(~_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, 1u, u_input.c), reverseBits(vec3<u32>(u_input.c, 73935u, u_input.c))), (vec3<u32>(50524u, u_input.d.x, u_input.d.x) ^ vec3<u32>(0u, u_input.d.x, 19944u)) | (vec3<u32>(u_input.c, u_input.d.x, u_input.d.x) ^ min(vec3<u32>(u_input.c, u_input.c, u_input.d.x), vec3<u32>(0u, 88982u, u_input.d.x)))), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(u_input.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 2408u), vec2<u32>(u_input.d.x, u_input.d.x))), _wgslsmith_div_u32(u_input.d.x, 41995u) >> ((713u | u_input.d.x) % 32u), u_input.d.x >> (75777u % 32u)), select(~(~vec3<u32>(20877u, 31244u, u_input.d.x)), ~(vec3<u32>(u_input.d.x, 1u, 1u) | vec3<u32>(u_input.d.x, u_input.c, u_input.c)), var_0)));
    let var_2 = Struct_1(-2147483647i, !(!(~var_1.x >= u_input.d.x)), ~_wgslsmith_sub_u32(~_wgslsmith_mult_u32(var_1.x, u_input.c), var_1.x), _wgslsmith_mult_u32(var_1.x, max(~41874u, 33216u)));
    var var_3 = Struct_1(_wgslsmith_clamp_i32(59487i, _wgslsmith_div_i32(_wgslsmith_sub_i32(var_2.a, var_2.a & -2147483647i), ~var_2.a), -51218i), all(vec3<bool>(!any(vec2<bool>(var_0, false)), all(select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_2.b), var_2.b)), all(select(vec4<bool>(var_2.b, true, var_0, var_2.b), vec4<bool>(true, var_0, true, false), var_2.b)))), _wgslsmith_div_u32(4294967295u, ~_wgslsmith_mult_u32(4294967295u, ~var_1.x)), 42676u);
    let var_4 = ~var_1.yz;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1387f), _wgslsmith_f_op_f32(trunc(2202f)))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-932f, 1758f))))))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(func_3())), -615f, -796f), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1266f, 1329f))), _wgslsmith_f_op_f32(sign(1569f)), -1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(876f, -204f, -1875f)) + _wgslsmith_div_vec3_f32(vec3<f32>(670f, -1682f, -1147f), vec3<f32>(1000f, 841f, -286f)))))));
    let var_1 = arg_1.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-818f, var_0.x));
    var var_3 = Struct_1(abs(_wgslsmith_div_i32(firstLeadingBit(u_input.b.x), ~_wgslsmith_dot_vec3_i32(u_input.b.wyx, u_input.b.zzy))), true, ~(~((arg_0.x >> (0u % 32u)) << (~0u % 32u))), var_1);
    var_3 = Struct_1(-13602i, var_3.b, arg_2.x, ~_wgslsmith_add_u32(~u_input.d.x, _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.d.x, arg_1.x), reverseBits(1u))));
    return Struct_1(-(~u_input.a.x), true, 99097u, _wgslsmith_add_u32(~var_1, _wgslsmith_clamp_u32(~0u, 18361u ^ arg_1.x, 1u)) & 57469u);
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_1) -> vec4<u32> {
    return vec4<u32>(_wgslsmith_sub_u32(arg_3.c, ~_wgslsmith_add_u32(arg_1, u_input.d.x)) >> (_wgslsmith_mod_u32(79153u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(23024u, arg_3.c, 15273u, arg_3.d), vec4<u32>(arg_1, 63007u, 0u, arg_3.c)), vec4<u32>(1605u, arg_3.c, 164123u, u_input.c))) % 32u), u_input.c, arg_3.d, _wgslsmith_clamp_u32(~(0u ^ arg_3.c), arg_3.d, ~arg_1));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = select(~firstTrailingBit(firstTrailingBit(vec3<i32>(u_input.e, 2147483647i, 2147483647i)) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.e, u_input.b.x, -53968i), u_input.a.wxz)), u_input.b.yxx, vec3<bool>(all(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), -879f < arg_0.x)), any(vec3<bool>(arg_0.x > arg_0.x, true, true)), false));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0));
    var var_2 = -1i;
    var var_3 = Struct_1(i32(-1i) * -1596i, true, ~(~min(0u, ~45570u)), 19716u);
    var var_4 = Struct_1(var_3.a << (firstLeadingBit(~arg_1.x & var_3.c) % 32u), !(!(_wgslsmith_dot_vec3_u32(arg_1.wyx, arg_2.zwz) != func_4(vec2<f32>(847f, arg_0.x), var_3.c, vec2<f32>(205f, var_1.x), Struct_1(var_3.a, var_3.b, 1u, 0u)).x)), u_input.d.x, 0u);
    return func_2(_wgslsmith_mod_vec4_u32(~vec4<u32>(var_3.c, 1u, 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 68418u), arg_1.xy)), arg_2), vec3<u32>(_wgslsmith_clamp_u32(~u_input.c, 0u, ~36177u), _wgslsmith_sub_u32(~var_4.d, ~arg_2.x), func_2(select(arg_2, vec4<u32>(u_input.d.x, 74258u, 1u, arg_2.x), vec4<bool>(var_4.b, var_3.b, var_3.b, true)), arg_1.wxx, select(arg_1.xy, vec2<u32>(105101u, 52209u), vec2<bool>(var_3.b, true))).d) | arg_2.wwx, vec2<u32>(~min(~var_4.d, var_3.c), ~0u));
}

fn func_1(arg_0: vec3<u32>) -> bool {
    let var_0 = func_5(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), 705f), ~func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -726f) - vec2<f32>(313f, 608f)), u_input.d.x, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-177f, -600f))), func_2(vec4<u32>(31159u, arg_0.x, 1u, 0u), arg_0, u_input.d)) | vec4<u32>(~11551u, arg_0.x, ~(~39331u), _wgslsmith_mult_u32(1u, 0u) | _wgslsmith_mod_u32(arg_0.x, u_input.c)), _wgslsmith_mod_vec4_u32(abs(_wgslsmith_div_vec4_u32(~vec4<u32>(1u, arg_0.x, arg_0.x, arg_0.x), abs(vec4<u32>(1u, u_input.c, u_input.c, u_input.d.x)))), ~(~vec4<u32>(13195u, 9878u, arg_0.x, arg_0.x)) ^ vec4<u32>(u_input.c, 30563u, ~4146u, ~u_input.d.x)));
    var var_1 = vec4<bool>(var_0.b, !var_0.b, var_0.b, var_0.b);
    let var_2 = ~var_0.a;
    let var_3 = -1000f;
    var var_4 = _wgslsmith_div_i32(var_2, _wgslsmith_clamp_i32(func_2(~vec4<u32>(4294967295u, arg_0.x, 1u, var_0.c), ~vec3<u32>(arg_0.x, var_0.d, var_0.c), _wgslsmith_clamp_vec2_u32(arg_0.zy, arg_0.yz, u_input.d) | _wgslsmith_add_vec2_u32(vec2<u32>(19357u, var_0.c), vec2<u32>(1u, u_input.d.x))).a, var_2, var_0.a ^ ~var_0.a));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(!(!(!(u_input.a.x <= -2147483647i))), !func_1(vec3<u32>(u_input.d.x | 8758u, ~u_input.c, 21276u)), !func_5(vec2<f32>(-211f, 202f), ~vec4<u32>(u_input.c, u_input.d.x, 0u, u_input.d.x), ~vec4<u32>(u_input.d.x, 4294967295u, u_input.c, 8518u)).b, !(_wgslsmith_f_op_f32(-123f - _wgslsmith_f_op_f32(-408f * 1622f)) > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(2223f)), 1000f))));
    var var_1 = ~(~countOneBits(~(vec4<i32>(-21082i, u_input.e, u_input.e, u_input.b.x) >> (vec4<u32>(4294967295u, u_input.d.x, u_input.c, 1u) % vec4<u32>(32u)))));
    let var_2 = select(select(!select(vec3<bool>(var_0.x, false, var_0.x), !var_0.yww, !var_0.xyy), vec3<bool>(var_0.x, var_0.x && (var_0.x & var_0.x), func_1(_wgslsmith_add_vec3_u32(vec3<u32>(12470u, u_input.c, 0u), vec3<u32>(u_input.c, u_input.d.x, 1u)))), true), vec3<bool>((reverseBits(u_input.d.x) >= 1u) == true, _wgslsmith_mod_u32(0u, u_input.c) < _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 18575u, 0u, 16722u), vec4<u32>(83294u, 19293u, 2255u, u_input.c) | vec4<u32>(u_input.d.x, 56584u, 9030u, 4294967295u)), false), !(!func_1(vec3<u32>(29491u, u_input.c, 1u))));
    let var_3 = 4294967295u;
    var var_4 = var_2.x;
    var_0 = vec4<bool>(var_2.x, func_2(~vec4<u32>(4294967295u, var_3 << (94443u % 32u), ~51445u, ~u_input.d.x), ~reverseBits(select(vec3<u32>(u_input.d.x, var_3, var_3), vec3<u32>(u_input.d.x, var_3, 93462u), var_0.x)), u_input.d ^ ~u_input.d).b, var_2.x, true);
    var var_5 = Struct_1(-firstLeadingBit(_wgslsmith_sub_i32(~var_1.x, ~u_input.e)), true, var_3 | 5488u, firstTrailingBit(21402u));
    var_4 = any(vec4<bool>(func_2(vec4<u32>(func_2(vec4<u32>(var_3, u_input.c, u_input.d.x, u_input.d.x), vec3<u32>(u_input.d.x, 23701u, u_input.d.x), u_input.d).d, 1u, ~u_input.c, ~42760u), ~vec3<u32>(77290u, var_3, var_5.c), u_input.d).b, false, func_1(vec3<u32>(69011u, _wgslsmith_dot_vec4_u32(vec4<u32>(82845u, var_3, 13351u, var_3), vec4<u32>(var_5.c, 1u, 0u, 19743u)), ~4294967295u)), !var_5.b));
    let x = u_input.a;
    s_output = StorageBuffer(~1u);
}

