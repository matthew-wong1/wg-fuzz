struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
    c: vec4<bool>,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: Struct_5, arg_2: vec2<bool>, arg_3: Struct_5) -> vec2<f32> {
    var var_0 = vec3<bool>(select(true, true, !arg_2.x), !(!arg_3.b.x), arg_0);
    let var_1 = arg_3.a.c.b.x;
    var_0 = arg_1.a.c.a;
    let var_2 = vec4<u32>(4294967295u, u_input.c.x, 42016u, u_input.b);
    let var_3 = arg_3.a.d.b;
    return arg_3.a.d.b.xx;
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_4, arg_3: vec2<f32>) -> vec2<bool> {
    let var_0 = ~(i32(-1i) * -u_input.a.x);
    let var_1 = u_input.a;
    var var_2 = 0i;
    let var_3 = Struct_2(min(~max(arg_2.a.ywx, arg_2.a.yzz), arg_2.a.yww));
    var_2 = 34709i;
    return arg_2.c.xy;
}

fn func_2(arg_0: bool, arg_1: vec3<i32>) -> u32 {
    var var_0 = select(vec2<bool>(u_input.c.x == _wgslsmith_sub_u32(~134842u, 22922u), arg_0), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(arg_0, Struct_5(Struct_3(1838f, vec2<f32>(1407f, -1219f), Struct_1(vec3<bool>(false, true, false), vec4<f32>(263f, -446f, -1067f, -1000f), vec3<bool>(false, arg_0, arg_0), u_input.a.yy), Struct_1(vec3<bool>(arg_0, arg_0, false), vec4<f32>(-202f, 1628f, -605f, 1000f), vec3<bool>(arg_0, arg_0, false), arg_1.xz)), vec2<bool>(arg_0, arg_0)), select(vec2<bool>(false, arg_0), vec2<bool>(true, true), vec2<bool>(arg_0, true)), Struct_5(Struct_3(-932f, vec2<f32>(259f, -644f), Struct_1(vec3<bool>(arg_0, arg_0, false), vec4<f32>(586f, 331f, 162f, -1202f), vec3<bool>(arg_0, true, arg_0), vec2<i32>(u_input.a.x, 0i)), Struct_1(vec3<bool>(arg_0, true, arg_0), vec4<f32>(862f, -1554f, -1661f, -1246f), vec3<bool>(true, arg_0, true), vec2<i32>(56006i, arg_1.x))), vec2<bool>(true, true))))), true, Struct_4(countOneBits(vec4<u32>(u_input.c.x, 4294967295u, u_input.b, u_input.c.x)) & ~vec4<u32>(u_input.c.x, 61669u, 0u, 41462u), -u_input.a.x, select(select(vec4<bool>(false, false, false, false), vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, true, arg_0)), !vec4<bool>(arg_0, arg_0, false, arg_0), true), Struct_3(_wgslsmith_f_op_f32(select(-745f, -1448f, true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-320f, 1000f) + vec2<f32>(1257f, -542f)), Struct_1(vec3<bool>(arg_0, false, true), vec4<f32>(1168f, -231f, 515f, -380f), vec3<bool>(arg_0, true, arg_0), vec2<i32>(arg_1.x, 29072i)), Struct_1(vec3<bool>(false, arg_0, arg_0), vec4<f32>(-528f, 510f, -1575f, -360f), vec3<bool>(false, arg_0, false), vec2<i32>(-1i, u_input.a.x)))), vec2<f32>(_wgslsmith_f_op_vec2_f32(func_3(!arg_0, Struct_5(Struct_3(1919f, vec2<f32>(1225f, 1216f), Struct_1(vec3<bool>(true, true, false), vec4<f32>(-264f, -1428f, -272f, 325f), vec3<bool>(true, false, arg_0), vec2<i32>(arg_1.x, arg_1.x)), Struct_1(vec3<bool>(true, arg_0, false), vec4<f32>(394f, -914f, 118f, -1055f), vec3<bool>(true, arg_0, true), vec2<i32>(2147483647i, u_input.a.x))), vec2<bool>(false, true)), vec2<bool>(arg_0, true), Struct_5(Struct_3(290f, vec2<f32>(1258f, -115f), Struct_1(vec3<bool>(false, false, false), vec4<f32>(1000f, 1363f, -1913f, 999f), vec3<bool>(true, false, arg_0), vec2<i32>(0i, u_input.a.x)), Struct_1(vec3<bool>(arg_0, arg_0, arg_0), vec4<f32>(1237f, 173f, -777f, 348f), vec3<bool>(false, arg_0, arg_0), vec2<i32>(arg_1.x, 0i))), vec2<bool>(arg_0, false)))).x, 1f)), func_4(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(736f + 2376f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(856f * -854f) - _wgslsmith_f_op_f32(-1163f - 1433f))), true, Struct_4(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(5582u, u_input.b, u_input.c.x, u_input.b), vec4<u32>(0u, u_input.c.x, u_input.b, 46927u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.b, 4294967295u, 0u), vec4<u32>(u_input.c.x, u_input.b, u_input.b, u_input.b))), _wgslsmith_mod_i32(arg_1.x, arg_1.x ^ u_input.a.x), select(!vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, true, arg_0, true), all(vec4<bool>(false, arg_0, true, true))), Struct_3(_wgslsmith_f_op_f32(floor(1080f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(199f, -1271f))), Struct_1(vec3<bool>(arg_0, arg_0, arg_0), vec4<f32>(-780f, -1000f, -2104f, -791f), vec3<bool>(true, false, true), arg_1.xx), Struct_1(vec3<bool>(true, false, arg_0), vec4<f32>(-361f, -403f, 196f, 504f), vec3<bool>(true, false, false), u_input.a.wz))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(529f, 1565f), vec2<f32>(1770f, -2204f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(244f, -846f) + vec2<f32>(-715f, -1276f))))));
    var_0 = select(!(!vec2<bool>(0u < u_input.b, false)), vec2<bool>(select(!var_0.x, true, all(!vec2<bool>(false, arg_0))), true), !(!vec2<bool>(true, arg_0 & false)));
    var var_1 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1298f + 1056f)))));
    let var_2 = Struct_5(Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(945f, var_1.x) * _wgslsmith_f_op_f32(var_1.x - var_1.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) * vec2<f32>(var_1.x, 1145f)) + _wgslsmith_div_vec2_f32(vec2<f32>(-938f, var_1.x), vec2<f32>(232f, -1638f)))), Struct_1(select(!vec3<bool>(var_0.x, false, var_0.x), select(vec3<bool>(false, true, true), vec3<bool>(false, true, var_0.x), vec3<bool>(false, var_0.x, arg_0)), !vec3<bool>(true, true, var_0.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1198f, var_1.x, -1454f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, -1151f) - vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)), vec4<bool>(arg_0, var_0.x, var_0.x, true))), select(select(vec3<bool>(var_0.x, arg_0, arg_0), vec3<bool>(true, arg_0, true), vec3<bool>(var_0.x, arg_0, arg_0)), vec3<bool>(arg_0, var_0.x, false), 2024f >= var_1.x), u_input.a.zy), Struct_1(!select(vec3<bool>(arg_0, false, var_0.x), vec3<bool>(false, true, arg_0), false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 1681f, var_1.x)), !select(vec3<bool>(arg_0, true, var_0.x), vec3<bool>(false, false, true), vec3<bool>(var_0.x, arg_0, arg_0)), vec2<i32>(~u_input.a.x, _wgslsmith_mod_i32(-1i, -61039i)))), select(!vec2<bool>(arg_0, true), vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(arg_0, true), vec2<bool>(arg_0, true))), arg_0), vec2<bool>(arg_0, !(-1i > u_input.a.x))));
    var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1668f, -1000f), vec2<f32>(1052f, var_2.a.b.x)))) * vec2<f32>(var_2.a.b.x, var_2.a.d.b.x))));
    return u_input.b;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: bool, arg_3: Struct_4) -> Struct_2 {
    let var_0 = arg_2;
    let var_1 = min(u_input.a, vec4<i32>(16374i, u_input.a.x >> (_wgslsmith_add_u32(~1u, func_2(true, vec3<i32>(-25814i, 40383i, -6491i))) % 32u), arg_0.x, _wgslsmith_dot_vec2_i32(arg_0, vec2<i32>(arg_0.x, -1i))));
    let var_2 = arg_3;
    var var_3 = arg_3.c.wz;
    var_3 = var_2.d.c.a.zy;
    return Struct_2(select(~arg_3.a.wzx, _wgslsmith_mod_vec3_u32(max(firstLeadingBit(vec3<u32>(arg_3.a.x, 59485u, 1u)), arg_3.a.yzx), vec3<u32>(~4294967295u, max(arg_1.x, 0u), _wgslsmith_add_u32(u_input.c.x, 1u))), arg_3.c.x));
}

fn func_5(arg_0: u32, arg_1: Struct_5, arg_2: Struct_4, arg_3: Struct_2) -> bool {
    var var_0 = countOneBits(vec3<u32>(_wgslsmith_mod_u32(1u, 37900u), u_input.c.x, _wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, arg_2.a.x), ~arg_2.a.x)) ^ ~arg_2.a.xwx);
    var var_1 = _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(abs(arg_2.d.c.d), abs(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_2.b, 2147483647i), vec2<i32>(arg_2.b, arg_2.d.d.d.x)))) & vec2<i32>(2147483647i, ~0i), firstLeadingBit(reverseBits(vec2<i32>(arg_1.a.c.d.x ^ -4315i, -1i))));
    var var_2 = _wgslsmith_div_u32(arg_0, 85945u);
    let var_3 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(arg_2.a, arg_2.a >> (select(firstTrailingBit(vec4<u32>(4294967295u, 98481u, 4294967295u, u_input.b)), ~arg_2.a, arg_2.c) % vec4<u32>(32u))), ~(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.a.x, arg_2.a.x, arg_3.a.x, 0u), firstLeadingBit(vec4<u32>(1u, var_0.x, 13625u, u_input.c.x))) << (_wgslsmith_sub_vec4_u32(vec4<u32>(98685u, 4294967295u, u_input.b, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, 1u, arg_3.a.x, arg_2.a.x), arg_2.a)) % vec4<u32>(32u))));
    var var_4 = arg_2.d.d;
    return any(vec3<bool>(var_4.a.x, !(!var_4.a.x), ((true | arg_1.b.x) || var_4.c.x) && (true || (arg_0 > 1561u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_sub_vec4_u32(reverseBits(~vec4<u32>(4294967295u, u_input.b, 32867u, u_input.b)), ~(~(vec4<u32>(u_input.b, 20834u, 14822u, 4294967295u) ^ vec4<u32>(31905u, u_input.b, u_input.c.x, 40995u)))), countOneBits(u_input.a.x), select(vec4<bool>(true && any(vec3<bool>(false, false, true)), false, true && all(vec2<bool>(true, true)), func_5(28477u, Struct_5(Struct_3(-164f, vec2<f32>(327f, -754f), Struct_1(vec3<bool>(false, false, false), vec4<f32>(-909f, 1319f, 1000f, -639f), vec3<bool>(true, false, true), u_input.a.yz), Struct_1(vec3<bool>(false, true, true), vec4<f32>(1000f, 277f, -1012f, -324f), vec3<bool>(false, false, false), vec2<i32>(-2147483647i, u_input.a.x))), vec2<bool>(false, false)), Struct_4(vec4<u32>(0u, u_input.c.x, u_input.b, 1u), u_input.a.x, vec4<bool>(false, true, false, false), Struct_3(499f, vec2<f32>(1184f, 189f), Struct_1(vec3<bool>(true, true, false), vec4<f32>(1110f, 1358f, -182f, -122f), vec3<bool>(false, false, false), u_input.a.yy), Struct_1(vec3<bool>(true, false, true), vec4<f32>(1018f, -949f, 410f, 653f), vec3<bool>(false, true, true), vec2<i32>(u_input.a.x, 33826i)))), func_1(vec2<i32>(u_input.a.x, -7333i), vec4<u32>(u_input.b, u_input.c.x, 220u, u_input.c.x), false, Struct_4(vec4<u32>(u_input.b, u_input.c.x, u_input.c.x, u_input.c.x), -19245i, vec4<bool>(true, false, false, true), Struct_3(-1131f, vec2<f32>(-597f, 208f), Struct_1(vec3<bool>(true, false, true), vec4<f32>(-542f, -1400f, 481f, 842f), vec3<bool>(false, true, false), u_input.a.ww), Struct_1(vec3<bool>(true, true, false), vec4<f32>(-580f, -281f, 773f, 287f), vec3<bool>(true, true, true), u_input.a.xy)))))), vec4<bool>(true, true, true, true), true), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(true, Struct_5(Struct_3(1000f, vec2<f32>(1000f, 364f), Struct_1(vec3<bool>(true, true, false), vec4<f32>(293f, -662f, -1296f, 1087f), vec3<bool>(true, true, false), vec2<i32>(-8978i, u_input.a.x)), Struct_1(vec3<bool>(false, false, false), vec4<f32>(-333f, 272f, -589f, -1285f), vec3<bool>(true, false, false), vec2<i32>(u_input.a.x, -1i))), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), true), Struct_5(Struct_3(-579f, vec2<f32>(-879f, -656f), Struct_1(vec3<bool>(false, true, false), vec4<f32>(-1000f, -652f, 1057f, 807f), vec3<bool>(true, false, false), vec2<i32>(u_input.a.x, u_input.a.x)), Struct_1(vec3<bool>(true, true, false), vec4<f32>(-483f, 1279f, -1199f, 612f), vec3<bool>(true, false, true), vec2<i32>(2147483647i, u_input.a.x))), vec2<bool>(true, false)))).x - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-334f))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-482f, 600f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-181f, 1000f))))), Struct_1(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec4<f32>(-257f, _wgslsmith_div_f32(765f, -709f), -808f, -921f), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), u_input.c.x <= 43474u), ~firstLeadingBit(vec2<i32>(0i, u_input.a.x))), Struct_1(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), true), vec4<f32>(_wgslsmith_f_op_f32(635f + -1353f), _wgslsmith_f_op_f32(round(-562f)), -1118f, 1f), vec3<bool>(true, any(vec4<bool>(true, false, false, true)), false), vec2<i32>(u_input.a.x, u_input.a.x))));
    var var_1 = all(select(select(!var_0.c, vec4<bool>(true, false, var_0.c.x, var_0.d.d.c.x && var_0.c.x), true), select(select(!vec4<bool>(true, true, var_0.c.x, true), select(var_0.c, vec4<bool>(true, var_0.d.d.a.x, var_0.c.x, true), var_0.c), false), vec4<bool>(true, false, false, var_0.a.x == 67881u), var_0.c), var_0.d.c.a.x));
    let var_2 = vec2<i32>(u_input.a.x, ~14210i) & ((u_input.a.wz | ((var_0.d.c.d << (u_input.c % vec2<u32>(32u))) >> (~vec2<u32>(0u, 1u) % vec2<u32>(32u)))) | -max(countOneBits(var_0.d.c.d), vec2<i32>(var_0.b, -1i) | vec2<i32>(var_0.b, var_0.d.c.d.x)));
    var var_3 = all(!vec4<bool>(true, var_0.c.x & true, all(var_0.c.yy), func_5(4294967295u, Struct_5(Struct_3(-867f, var_0.d.b, Struct_1(var_0.d.c.a, vec4<f32>(1056f, var_0.d.a, var_0.d.a, 379f), var_0.c.zzw, vec2<i32>(var_0.b, 2147483647i)), var_0.d.d), vec2<bool>(false, var_0.c.x)), var_0, Struct_2(vec3<u32>(0u, 0u, 16747u))))) || var_0.d.d.c.x;
    let var_4 = var_0.d.c;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec4<u32>(~abs(u_input.b), u_input.b, 4294967295u | firstTrailingBit(var_0.a.x), u_input.c.x)), u_input.a, -_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, var_4.d.x), var_4.d), firstLeadingBit(-2147483647i)) | reverseBits(0i));
}

