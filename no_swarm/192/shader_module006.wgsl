struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: Struct_1,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(2147483647i, 1i, vec3<f32>(547f, -1281f, 139f), vec2<f32>(199f, -1362f), 906f), Struct_1(-1i, -44765i, vec3<f32>(-1070f, -1385f, -1000f), vec2<f32>(-213f, 1578f), 223f), Struct_1(-5691i, 1i, vec3<f32>(1367f, -1516f, 184f), vec2<f32>(1371f, -256f), 405f), Struct_1(18896i, 1i, vec3<f32>(-2023f, -316f, -923f), vec2<f32>(414f, -1072f), 1044f), Struct_1(-6884i, -25333i, vec3<f32>(-521f, -872f, 564f), vec2<f32>(481f, 1113f), 148f), Struct_1(13838i, 83994i, vec3<f32>(278f, 319f, -1238f), vec2<f32>(872f, 1231f), -1344f), Struct_1(-8242i, 27428i, vec3<f32>(-1027f, 1895f, 108f), vec2<f32>(-933f, 442f), -316f), Struct_1(0i, -1i, vec3<f32>(513f, -1818f, 682f), vec2<f32>(363f, -987f), -494f), Struct_1(23733i, -1018i, vec3<f32>(-1410f, 711f, -420f), vec2<f32>(-479f, 1000f), -661f), Struct_1(2147483647i, 0i, vec3<f32>(1005f, -972f, 1317f), vec2<f32>(352f, -429f), -2408f), Struct_1(0i, -20659i, vec3<f32>(-1538f, 500f, -216f), vec2<f32>(1062f, 858f), -1407f), Struct_1(1i, 14099i, vec3<f32>(1000f, -886f, -361f), vec2<f32>(921f, -1134f), 1167f), Struct_1(i32(-2147483648), i32(-2147483648), vec3<f32>(-592f, -1344f, 250f), vec2<f32>(1177f, -1159f), 1334f), Struct_1(-72622i, -32457i, vec3<f32>(-774f, 1465f, 1248f), vec2<f32>(692f, 1844f), -455f), Struct_1(-1i, 1i, vec3<f32>(-1260f, 1208f, -412f), vec2<f32>(381f, -1832f), 160f), Struct_1(i32(-2147483648), -16496i, vec3<f32>(-297f, -588f, 269f), vec2<f32>(186f, -616f), 1499f), Struct_1(i32(-2147483648), -1i, vec3<f32>(356f, 855f, -261f), vec2<f32>(977f, -665f), 741f), Struct_1(40459i, -70638i, vec3<f32>(1000f, -1657f, -1316f), vec2<f32>(-2322f, 374f), 1487f), Struct_1(1i, 0i, vec3<f32>(1307f, -102f, -397f), vec2<f32>(1000f, 2180f), 1083f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32) -> i32 {
    let var_0 = Struct_2(vec2<u32>(4294967295u, ~1u), -24578i, global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4294967295u, 6722u, u_input.a.x) | vec4<u32>(u_input.a.x, 0u, 36213u, u_input.a.x), select(~vec4<u32>(u_input.a.x, 0u, 17845u, 4294967295u), ~vec4<u32>(25694u, u_input.a.x, u_input.a.x, 1u), false))), 19u)], ~abs(_wgslsmith_sub_vec4_u32(vec4<u32>(4520u, 1u, 30799u, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, 2345u, 10994u)) ^ abs(vec4<u32>(u_input.a.x, 63269u, u_input.b, 16629u))), -1614f);
    var var_1 = Struct_2(~var_0.d.xy & ~_wgslsmith_add_vec2_u32(vec2<u32>(0u, 20709u), vec2<u32>(4294967295u, u_input.a.x)), _wgslsmith_sub_i32(u_input.c.x, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-13971i, u_input.c.x, 57632i, var_0.c.a)), max(~vec4<i32>(1i, 2147483647i, 59041i, var_0.c.a), ~vec4<i32>(-1i, -1i, -3680i, u_input.c.x)))), Struct_1(0i, firstLeadingBit(-1i), vec3<f32>(_wgslsmith_f_op_f32(var_0.c.e + -513f), _wgslsmith_f_op_f32(round(var_0.c.d.x)), _wgslsmith_f_op_f32(-var_0.c.c.x)), _wgslsmith_f_op_vec2_f32(-var_0.c.d), _wgslsmith_f_op_f32(-var_0.c.c.x)), _wgslsmith_add_vec4_u32(var_0.d, vec4<u32>(13839u, u_input.b, _wgslsmith_dot_vec2_u32(u_input.a, var_0.a), ~(var_0.a.x | 4294967295u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-133f))));
    let var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -(i32(-1i) * -3663i), -1i), select(firstLeadingBit(~reverseBits(vec3<i32>(-1i, var_1.b, u_input.c.x))), abs(~vec3<i32>(var_1.c.b, 0i, 20367i)), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var_1 = var_0;
    var var_3 = countOneBits(~vec4<u32>(var_1.d.x, 1u, u_input.a.x, max(var_0.a.x, ~var_0.d.x)));
    return -1958i;
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    global0 = array<Struct_1, 19>();
    var var_0 = arg_0.x;
    global0 = array<Struct_1, 19>();
    let var_1 = countOneBits(_wgslsmith_mod_vec3_i32(reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(-52607i, u_input.c.x, u_input.c.x), vec3<i32>(u_input.c.x, -48109i, u_input.c.x))), _wgslsmith_mod_vec3_i32(select(vec3<i32>(-47824i, u_input.c.x, u_input.c.x), vec3<i32>(2147483647i, u_input.c.x, 2147483647i), arg_0.zww), vec3<i32>(1i, 3878i, 0i)))) & max(vec3<i32>(_wgslsmith_clamp_i32(2147483647i, i32(-1i) * -2147483647i, func_3(1998f)), -1i, ~(u_input.c.x >> (4294967295u % 32u))), firstTrailingBit(vec3<i32>(-35798i, 1i, -18443i & u_input.c.x)));
    let var_2 = -(~(-countOneBits(min(var_1.yz, var_1.zy))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -666f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-180f, 1894f)) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-798f, 1153f) * _wgslsmith_div_f32(1181f, 279f))))), true));
}

fn func_1(arg_0: bool) -> vec3<i32> {
    let var_0 = Struct_1(min(16816i, 41382i), _wgslsmith_mod_i32(~1i, -u_input.c.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1178f - 1203f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<bool>(arg_0, false, false, arg_0))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1027f - 870f))), _wgslsmith_div_f32(128f, _wgslsmith_f_op_f32(326f - 509f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(select(vec4<bool>(false, arg_0, arg_0, false), vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(true, arg_0, false, true)))))), vec2<f32>(752f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -582f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-248f + 2362f) + _wgslsmith_f_op_f32(f32(-1f) * -608f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-250f, 298f, true))))));
    let var_1 = Struct_2(vec2<u32>(firstLeadingBit(_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b, u_input.a.x), max(2523u, u_input.a.x))), _wgslsmith_sub_u32(abs(69843u), 0u)), min(select(max(~(-2147483647i), u_input.c.x), max(~u_input.c.x, 0i), true), _wgslsmith_sub_i32(~(-var_0.a), -_wgslsmith_mod_i32(2147483647i, 24939i))), Struct_1(_wgslsmith_clamp_i32(var_0.b, -2147483647i, func_3(347f)), ~2147483647i & -u_input.c.x, var_0.c, var_0.c.xz, var_0.c.x), ~(vec4<u32>(reverseBits(0u), _wgslsmith_mod_u32(u_input.b, 21040u), max(u_input.a.x, 18434u), u_input.b) << (~(vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x) << (vec4<u32>(u_input.a.x, 2217u, 38776u, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e + _wgslsmith_f_op_f32(-var_0.e)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e) + _wgslsmith_f_op_f32(var_1.c.c.x * -527f));
    let var_3 = _wgslsmith_dot_vec2_u32(((vec2<u32>(43767u, var_1.d.x) << (~vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u))) | ~vec2<u32>(0u, var_1.a.x)) >> (vec2<u32>(select(var_1.d.x, _wgslsmith_clamp_u32(var_1.d.x, u_input.b, 0u), true), ~var_1.a.x) % vec2<u32>(32u)), min(_wgslsmith_clamp_vec2_u32(var_1.d.xw, vec2<u32>(4947u, 8391u) ^ vec2<u32>(6750u, var_1.a.x), vec2<u32>(~var_1.d.x, _wgslsmith_dot_vec2_u32(var_1.a, u_input.a))), vec2<u32>(abs(16215u), var_1.a.x)));
    var var_4 = ~var_1.d.zzx;
    return -select(-abs(vec3<i32>(var_0.b, u_input.c.x, var_0.a) | vec3<i32>(24243i, u_input.c.x, 3747i)), vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_1.b, u_input.c.x, u_input.c.x, 72347i), firstTrailingBit(vec4<i32>(var_1.b, 2147483647i, var_1.b, var_1.b))), select(_wgslsmith_sub_i32(var_0.a, 0i), 33640i ^ var_1.c.b, any(vec4<bool>(true, arg_0, arg_0, false))), 4954i), true);
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_2, arg_3: vec3<f32>) -> Struct_2 {
    var var_0 = -66245i;
    return Struct_2(~(~(~_wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(u_input.b, 55880u)))), arg_0.x, Struct_1(func_1(false).x, -1i, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(arg_2.e * arg_1), _wgslsmith_f_op_f32(-arg_2.c.c.x), _wgslsmith_f_op_f32(round(-1352f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_3.x * 1029f), 1316f) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_2.c.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-706f + arg_3.x) + _wgslsmith_f_op_f32(-698f * arg_3.x)))), vec4<u32>(u_input.a.x, ~(~(~arg_2.d.x)), countOneBits(arg_2.d.x), 1u), arg_2.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1984f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-202f - 118f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(950f)) + _wgslsmith_f_op_f32(-1276f - 1000f))) + -890f));
    global0 = array<Struct_1, 19>();
    let var_1 = u_input.a;
    let var_2 = func_4(~_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(u_input.c.x, -2147483647i, u_input.c.x)), vec3<i32>(u_input.c.x, 1i, u_input.c.x)) | (func_1(true) & firstLeadingBit(vec3<i32>(u_input.c.x, 36752i, -29269i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-969f, 1202f, (0u != u_input.b) | all(vec4<bool>(true, true, true, true)))) + var_0), Struct_2(vec2<u32>(u_input.b, ~(~1u)), 0i, Struct_1(u_input.c.x, u_input.c.x | u_input.c.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1281f, var_0, var_0), vec3<f32>(var_0, -205f, 445f), false)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -501f, -147f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0, 268f), vec2<f32>(var_0, var_0)))), _wgslsmith_f_op_f32(max(742f, 284f))), firstLeadingBit(~vec4<u32>(0u, 45431u, u_input.a.x, var_1.x)), 136f), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1005f, -886f, var_0)))) * vec3<f32>(-747f, _wgslsmith_f_op_f32(abs(-1000f)), -1090f)))));
    var var_3 = Struct_2(vec2<u32>(22397u, _wgslsmith_dot_vec4_u32(var_2.d, ~(~vec4<u32>(var_2.d.x, 0u, 0u, var_1.x)))), var_2.b, var_2.c, var_2.d, _wgslsmith_f_op_f32(f32(-1f) * -241f));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-833f, 1050f, -562f, var_0)))))));
}

