struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 6> = array<vec4<bool>, 6>(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true));

var<private> global1: f32;

var<private> global2: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec2<f32>(351f, 119f), vec3<f32>(-153f, 1804f, -1000f), vec2<f32>(591f, 279f), 8764u, vec4<f32>(228f, -671f, -1369f, 972f)), Struct_1(vec2<f32>(438f, -1672f), vec3<f32>(608f, -1808f, 959f), vec2<f32>(542f, 1382f), 868u, vec4<f32>(173f, 343f, 687f, -575f)), Struct_1(vec2<f32>(-180f, -675f), vec3<f32>(-1245f, 255f, 1000f), vec2<f32>(-107f, 438f), 4294967295u, vec4<f32>(163f, 1380f, -1189f, -423f)), Struct_1(vec2<f32>(-417f, 181f), vec3<f32>(-163f, 235f, -1000f), vec2<f32>(857f, -1414f), 4294967295u, vec4<f32>(1106f, -1236f, 799f, 229f)), Struct_1(vec2<f32>(-725f, -137f), vec3<f32>(-3105f, 761f, 1421f), vec2<f32>(-1044f, -220f), 17625u, vec4<f32>(1042f, -1054f, 485f, -1211f)), Struct_1(vec2<f32>(158f, 1147f), vec3<f32>(483f, -542f, -130f), vec2<f32>(-1165f, 910f), 1u, vec4<f32>(-604f, -331f, 326f, -771f)), Struct_1(vec2<f32>(529f, -955f), vec3<f32>(-636f, 225f, -1439f), vec2<f32>(291f, 843f), 4294967295u, vec4<f32>(235f, 735f, 1000f, -497f)), Struct_1(vec2<f32>(1038f, 1096f), vec3<f32>(-447f, -317f, 266f), vec2<f32>(544f, -1430f), 11951u, vec4<f32>(346f, 442f, -1485f, -818f)), Struct_1(vec2<f32>(460f, 262f), vec3<f32>(-219f, -385f, 2166f), vec2<f32>(1141f, -207f), 4294967295u, vec4<f32>(456f, 1046f, 777f, 1200f)), Struct_1(vec2<f32>(-663f, 247f), vec3<f32>(1000f, 1283f, -870f), vec2<f32>(2893f, 988f), 68877u, vec4<f32>(1294f, -264f, 647f, 912f)), Struct_1(vec2<f32>(-514f, 1014f), vec3<f32>(-1089f, 208f, -893f), vec2<f32>(-1093f, -1000f), 0u, vec4<f32>(1139f, 891f, -367f, -1000f)), Struct_1(vec2<f32>(1000f, -255f), vec3<f32>(-714f, -218f, 899f), vec2<f32>(703f, -1000f), 4294967295u, vec4<f32>(3223f, 1024f, -463f, -1750f)), Struct_1(vec2<f32>(-562f, 1948f), vec3<f32>(1105f, -962f, 1046f), vec2<f32>(2422f, -1000f), 21481u, vec4<f32>(2099f, 262f, -518f, 225f)), Struct_1(vec2<f32>(917f, -696f), vec3<f32>(-1000f, -1000f, 2033f), vec2<f32>(1186f, -1037f), 0u, vec4<f32>(774f, -742f, -1000f, -780f)), Struct_1(vec2<f32>(-169f, 1303f), vec3<f32>(305f, 1283f, -501f), vec2<f32>(-543f, -1072f), 0u, vec4<f32>(421f, 1444f, 263f, 944f)), Struct_1(vec2<f32>(607f, 1687f), vec3<f32>(300f, -399f, -1000f), vec2<f32>(-843f, 1477f), 0u, vec4<f32>(1288f, -830f, 1644f, -714f)), Struct_1(vec2<f32>(940f, 155f), vec3<f32>(-1195f, 291f, -268f), vec2<f32>(-276f, -319f), 0u, vec4<f32>(-620f, 983f, 795f, 1554f)));

var<private> global3: u32 = 56351u;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1716f + 819f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2265f * -887f))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(287f, 535f) * vec2<f32>(-1000f, -825f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-865f, 1000f) + vec2<f32>(-1619f, -1341f)), vec2<f32>(-1697f, -761f)), true))));
    var var_2 = ~(vec3<u32>(_wgslsmith_clamp_u32(u_input.c.x, ~u_input.c.x, _wgslsmith_mod_u32(4294967295u, 1u)), _wgslsmith_dot_vec4_u32(~u_input.b, u_input.c), ~u_input.b.x) | min(~u_input.b.wzy, vec3<u32>(53909u, ~41045u, u_input.b.x << (4294967295u % 32u))));
    let var_3 = -1111f;
    let var_4 = Struct_4(vec2<bool>(true, true), _wgslsmith_div_f32(var_3, 1f), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1))), _wgslsmith_f_op_vec3_f32(vec3<f32>(2129f, var_3, _wgslsmith_f_op_f32(var_3 * var_1.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1801f, -623f, 1031f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(366f, -253f, var_3) + vec3<f32>(var_1.x, -630f, var_1.x)))), _wgslsmith_f_op_vec2_f32(var_1 + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(398f, var_1.x)))), ~(~_wgslsmith_mod_u32(27273u, 126983u)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1394f, 988f, 1906f, -237f))))), global2[_wgslsmith_index_u32(1u, 17u)]);
    return firstTrailingBit(u_input.a);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<f32>) -> u32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.x))))));
    var var_1 = Struct_4(select(vec2<bool>(any(vec4<bool>(true, true, true, true)), true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), any(select(vec2<bool>(false, false), vec2<bool>(false, false), false)) || true), arg_1.x, Struct_1(arg_1.zy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_1.x * var_0.a), 860f, 670f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(171f, _wgslsmith_f_op_f32(round(arg_1.x))))), u_input.c.x & _wgslsmith_div_u32(~u_input.b.x, abs(u_input.c.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1197f, 624f, 333f, 1060f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(328f, var_0.a, 850f, 1000f), vec4<f32>(1709f, var_0.a, -1415f, var_0.a)))))), Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.a, -1373f))))), _wgslsmith_f_op_vec3_f32(arg_1 - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(arg_1, arg_1, vec3<bool>(false, true, true)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_1.zx, vec2<f32>(953f, -1182f), vec2<bool>(false, true))))), _wgslsmith_sub_u32(abs(~0u), _wgslsmith_clamp_u32(26976u, 1u, 0u) << (0u % 32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-319f, _wgslsmith_f_op_f32(ceil(632f)), _wgslsmith_f_op_f32(-arg_1.x), 1245f))));
    global0 = array<vec4<bool>, 6>();
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1003f, arg_1.x)))) * vec2<f32>(-1430f, _wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.b.x, var_0.a, var_1.b) - var_1.d.e.yzx), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, var_0.a, var_0.a)))) + var_1.d.e.zwx), var_1.d.c, u_input.c.x, _wgslsmith_f_op_vec4_f32(-var_1.c.e)), select(!select(!vec3<bool>(true, false, var_1.a.x), select(vec3<bool>(false, true, var_1.a.x), vec3<bool>(true, true, var_1.a.x), vec3<bool>(true, true, var_1.a.x)), true), select(select(!vec3<bool>(var_1.a.x, var_1.a.x, false), vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), vec3<bool>(true, true, var_1.a.x)), vec3<bool>(655f < var_1.c.b.x, any(global0[_wgslsmith_index_u32(u_input.c.x, 6u)]), var_1.a.x), any(select(global0[_wgslsmith_index_u32(u_input.b.x, 6u)], global0[_wgslsmith_index_u32(1u, 6u)], true))), var_1.a.x));
    let var_3 = !(~(-2147483647i) > _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(arg_0.x, -41538i, arg_0.x)), arg_0.wzx), arg_0.x | (-62768i >> (var_2.a.d % 32u))));
    return 1u;
}

fn func_2() -> bool {
    global0 = array<vec4<bool>, 6>();
    global3 = ~u_input.c.x;
    var var_0 = Struct_4(select(!select(vec2<bool>(false, false), vec2<bool>(true, true), any(vec3<bool>(true, true, true))), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), false), all(vec2<bool>(true, true))), vec2<bool>(false, true)), -376f, global2[_wgslsmith_index_u32(func_4(vec4<i32>(u_input.a, 933i, -2984i, func_3()), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-133f, -1000f), 1155f, _wgslsmith_div_f32(1244f, -603f)))), 17u)], Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(719f, 1143f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1000f)), 119f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-527f, -122f, 467f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(117f, 1101f, 669f) - vec3<f32>(422f, -931f, 1535f))))), vec2<f32>(_wgslsmith_f_op_f32(trunc(-1159f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-638f - -970f) * 1f)), _wgslsmith_mod_u32(~u_input.b.x << (select(u_input.b.x, 34972u, false) % 32u), ~0u & u_input.c.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(-1165f, 209f)), -245f, _wgslsmith_f_op_f32(f32(-1f) * -209f), 453f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1710f, -1485f, 1012f, 499f), vec4<f32>(-1395f, -982f, 204f, 1238f)))))));
    var var_1 = firstLeadingBit(_wgslsmith_mod_vec2_i32(-select(vec2<i32>(u_input.a, 1i), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(-24192i, 0i)), all(vec2<bool>(var_0.a.x, true))), min(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(11818i, 11947i)) ^ vec2<i32>(u_input.a, -39520i), _wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.a, -1i), select(vec2<i32>(7437i, -23404i), vec2<i32>(8881i, 5874i), vec2<bool>(var_0.a.x, var_0.a.x))))));
    let var_2 = 1f != _wgslsmith_f_op_f32(var_0.c.a.x * var_0.b);
    return var_0.a.x;
}

fn func_1(arg_0: i32) -> Struct_2 {
    global2 = array<Struct_1, 17>();
    var var_0 = ~_wgslsmith_mod_vec2_i32(countOneBits(-vec2<i32>(u_input.a, -1i)) >> ((u_input.c.xy >> (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, 4294967295u), vec2<u32>(u_input.c.x, 24738u)) % vec2<u32>(32u))) % vec2<u32>(32u)), ~(vec2<i32>(-1i, -1i) | vec2<i32>(29536i, u_input.a)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f));
    return Struct_2(global2[_wgslsmith_index_u32(1u, 17u)], select(!vec3<bool>(true, select(true, false, false), -805f != var_1.x), !vec3<bool>(true, func_2(), true), any(vec4<bool>(true, true, true, true))));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: vec2<u32>) -> vec3<f32> {
    global2 = array<Struct_1, 17>();
    let var_0 = func_1(u_input.a).b.x;
    global0 = array<vec4<bool>, 6>();
    global3 = countOneBits(~min(47456u, arg_0.a.d ^ max(26949u, 4294967295u)));
    global1 = -298f;
    return arg_0.a.e.yyw;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(382f)))) < -862f));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-296f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-350f)), _wgslsmith_f_op_f32(step(613f, -535f))), _wgslsmith_f_op_f32(min(-1157f, _wgslsmith_f_op_f32(trunc(-196f))))))) * 1000f);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(func_1(u_input.a), false, _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(17309u, u_input.b.x), abs(u_input.c.zy)), ~u_input.b.zx))) + _wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1055f, 1592f), -227f, _wgslsmith_f_op_f32(f32(-1f) * -170f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-395f, 1189f, -287f), vec3<f32>(1f, 1f, 1f), u_input.b.x != 43785u)))));
    global2 = array<Struct_1, 17>();
    var var_2 = select(u_input.a << (firstTrailingBit(~u_input.b.x) % 32u), -(i32(-1i) * -min(u_input.a, u_input.a)), false);
    let var_3 = Struct_3(var_1.x);
    let var_4 = firstLeadingBit(reverseBits(vec2<i32>(1i, -3211i | u_input.a))) & (_wgslsmith_sub_vec2_i32(~(vec2<i32>(-17775i, u_input.a) & vec2<i32>(31642i, u_input.a)), ~(~vec2<i32>(u_input.a, u_input.a))) & ~_wgslsmith_mod_vec2_i32(~vec2<i32>(1i, 54646i), min(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 22685i))));
    var var_5 = Struct_3(634f);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.xz, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a, 174f, var_1.x, var_1.x)) * vec4<f32>(var_1.x, 633f, var_3.a, var_5.a)), vec4<f32>(138f, 553f, _wgslsmith_f_op_f32(select(var_1.x, var_5.a, var_0)), _wgslsmith_f_op_f32(var_5.a - -619f)))))));
}

