struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
    b: bool,
    c: Struct_2,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7>;

var<private> global1: u32;

var<private> global2: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(vec3<bool>(true, false, true), Struct_1(-836f, 0i, 97953u, vec4<u32>(68472u, 1u, 1u, 0u)), false, Struct_1(173f, -27022i, 0u, vec4<u32>(9054u, 17765u, 12906u, 4294967295u)), Struct_1(1193f, 13648i, 17592u, vec4<u32>(4294967295u, 70020u, 6281u, 4294967295u))), Struct_2(vec3<bool>(true, true, true), Struct_1(287f, 18692i, 0u, vec4<u32>(66307u, 8166u, 2322u, 13301u)), true, Struct_1(315f, -359i, 335u, vec4<u32>(0u, 85838u, 118877u, 1u)), Struct_1(1189f, 2147483647i, 49486u, vec4<u32>(4294967295u, 0u, 7799u, 57953u))), Struct_2(vec3<bool>(true, false, false), Struct_1(582f, 2147483647i, 73296u, vec4<u32>(7932u, 25748u, 0u, 7683u)), false, Struct_1(1345f, i32(-2147483648), 0u, vec4<u32>(1u, 4294967295u, 0u, 19167u)), Struct_1(-1078f, 2147483647i, 1u, vec4<u32>(4294967295u, 4294967295u, 47361u, 1u))), Struct_2(vec3<bool>(false, true, true), Struct_1(-1836f, 2147483647i, 30665u, vec4<u32>(132252u, 4294967295u, 22051u, 1u)), true, Struct_1(1082f, -9501i, 9449u, vec4<u32>(13861u, 1u, 0u, 87688u)), Struct_1(136f, 37897i, 0u, vec4<u32>(15983u, 0u, 26510u, 0u))), Struct_2(vec3<bool>(false, true, false), Struct_1(-646f, i32(-2147483648), 39953u, vec4<u32>(1u, 1u, 0u, 1u)), false, Struct_1(2133f, -6041i, 15296u, vec4<u32>(966u, 51932u, 73269u, 15490u)), Struct_1(-828f, -52284i, 4294967295u, vec4<u32>(36581u, 22470u, 2847u, 1u))), Struct_2(vec3<bool>(true, true, false), Struct_1(645f, -1i, 4294967295u, vec4<u32>(13290u, 23371u, 68610u, 13905u)), true, Struct_1(-742f, 2147483647i, 0u, vec4<u32>(4294967295u, 31855u, 16951u, 48939u)), Struct_1(1000f, 20119i, 4294967295u, vec4<u32>(60672u, 0u, 35886u, 20930u))), Struct_2(vec3<bool>(false, false, false), Struct_1(-557f, 1i, 0u, vec4<u32>(0u, 45121u, 41936u, 4294967295u)), false, Struct_1(-357f, i32(-2147483648), 45035u, vec4<u32>(11505u, 0u, 4294967295u, 23414u)), Struct_1(-431f, 17456i, 1u, vec4<u32>(9188u, 1u, 1u, 1u))), Struct_2(vec3<bool>(false, true, true), Struct_1(-142f, -9848i, 0u, vec4<u32>(0u, 0u, 0u, 28408u)), true, Struct_1(1269f, 3953i, 1u, vec4<u32>(19178u, 18151u, 4294967295u, 18922u)), Struct_1(-1899f, 36231i, 4294967295u, vec4<u32>(0u, 78295u, 4294967295u, 45330u))), Struct_2(vec3<bool>(false, true, true), Struct_1(-1000f, 93778i, 4294967295u, vec4<u32>(73039u, 93501u, 29930u, 4294967295u)), false, Struct_1(-1867f, 0i, 0u, vec4<u32>(0u, 0u, 1u, 0u)), Struct_1(1338f, 7957i, 39302u, vec4<u32>(4294967295u, 33238u, 0u, 12745u))), Struct_2(vec3<bool>(false, false, false), Struct_1(-389f, i32(-2147483648), 25404u, vec4<u32>(3634u, 5008u, 21100u, 55442u)), true, Struct_1(1045f, -9556i, 0u, vec4<u32>(30738u, 9288u, 7090u, 1u)), Struct_1(1282f, 50215i, 5482u, vec4<u32>(726u, 59374u, 62341u, 38598u))), Struct_2(vec3<bool>(true, true, false), Struct_1(1000f, 2147483647i, 7394u, vec4<u32>(1u, 1u, 4294967295u, 38941u)), false, Struct_1(1106f, 1i, 32530u, vec4<u32>(33060u, 4294967295u, 80139u, 1u)), Struct_1(-968f, 19191i, 0u, vec4<u32>(3698u, 70609u, 0u, 1u))), Struct_2(vec3<bool>(true, false, true), Struct_1(1223f, -24127i, 673u, vec4<u32>(26962u, 26475u, 0u, 93553u)), true, Struct_1(-1000f, 0i, 1u, vec4<u32>(0u, 16700u, 18378u, 103557u)), Struct_1(-1367f, 2147483647i, 1u, vec4<u32>(1u, 1u, 9625u, 21962u))), Struct_2(vec3<bool>(true, false, true), Struct_1(898f, 2147483647i, 1u, vec4<u32>(4294967295u, 1u, 96126u, 21267u)), false, Struct_1(156f, i32(-2147483648), 0u, vec4<u32>(8686u, 13706u, 45317u, 21702u)), Struct_1(640f, 0i, 4294967295u, vec4<u32>(4294967295u, 1u, 1u, 4294967295u))));

var<private> global3: i32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: Struct_5) -> i32 {
    var var_0 = arg_1.xy;
    var_0 = !(!arg_2.c.a.yy);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-297f, -432f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1037f - 220f), arg_2.c.b.a) - arg_2.d.b.d.a)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.c.d.a, 366f, arg_2.d.b.e.a), vec3<f32>(222f, 1330f, 632f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-696f, -1046f, 784f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(705f, arg_2.c.b.a, 478f) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-676f, arg_2.c.b.a, -1247f)))))));
    global1 = 4294967295u;
    global2 = array<Struct_2, 13>();
    return _wgslsmith_mod_i32(-arg_2.c.d.b, ~(-55259i));
}

fn func_2(arg_0: Struct_4) -> Struct_4 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_0.b.e.a))))))), 2026f);
    let var_1 = _wgslsmith_add_u32(u_input.b.x, arg_0.b.d.c);
    let var_2 = vec3<i32>(~_wgslsmith_mult_i32(~(-2147483647i), 1i) & ~_wgslsmith_div_i32(-22842i, arg_0.a.x ^ 0i), _wgslsmith_sub_i32(func_3(~vec4<u32>(arg_0.b.e.c, u_input.b.x, arg_0.b.b.d.x, 26898u), arg_0.b.a, Struct_5(vec4<u32>(u_input.b.x, 1u, 76339u, u_input.b.x), arg_0.b.c, Struct_2(arg_0.b.a, Struct_1(2120f, -2147483647i, 1u, arg_0.b.b.d), arg_0.b.c, arg_0.b.b, Struct_1(730f, 6164i, 1u, arg_0.b.b.d)), arg_0)), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, arg_0.b.e.b), ~arg_0.a.xx)) | 1i, global0[_wgslsmith_index_u32(~var_1, 7u)]);
    global2 = array<Struct_2, 13>();
    var var_3 = _wgslsmith_div_f32(-948f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(962f * 2273f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1056f)))))));
    return arg_0;
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: vec4<u32>, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = -503f;
    let var_1 = func_2(Struct_4(vec3<i32>(u_input.a, 1i, 1i) ^ _wgslsmith_mod_vec3_i32(select(vec3<i32>(-25157i, global0[_wgslsmith_index_u32(u_input.b.x, 7u)], global0[_wgslsmith_index_u32(1u, 7u)]), vec3<i32>(global0[_wgslsmith_index_u32(50201u, 7u)], global0[_wgslsmith_index_u32(1u, 7u)], arg_1.x), vec3<bool>(false, false, arg_3.x)), vec3<i32>(arg_1.x, -36765i, -17906i)), global2[_wgslsmith_index_u32(4294967295u, 13u)]));
    global1 = 1u;
    var var_2 = vec2<bool>(false, u_input.b.x != _wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(var_1.b.b.d.x, arg_2.x, 35142u, 32085u)), var_1.b.b.d));
    let var_3 = func_2(func_2(Struct_4(-vec3<i32>(u_input.a, u_input.a, global0[_wgslsmith_index_u32(0u, 7u)]), Struct_2(select(vec3<bool>(false, false, true), var_1.b.a, var_1.b.a), func_2(var_1).b.e, var_2.x, Struct_1(834f, arg_1.x, u_input.b.x, vec4<u32>(arg_2.x, u_input.b.x, 0u, 1u)), func_2(Struct_4(vec3<i32>(2147483647i, 2147483647i, u_input.a), Struct_2(vec3<bool>(false, false, arg_3.x), var_1.b.e, false, Struct_1(-850f, global0[_wgslsmith_index_u32(21660u, 7u)], var_1.b.d.d.x, arg_2), var_1.b.e))).b.d)))).b;
    return func_2(func_2(var_1)).b.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(select(-985f, _wgslsmith_f_op_f32(abs(-405f)), !select(true, any(vec2<bool>(true, true)), any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false)))));
    let var_1 = _wgslsmith_f_op_f32(trunc(-155f));
    let var_2 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))), firstTrailingBit(vec2<i32>(-1i) * -(~vec2<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 7u)], -1i))), vec4<u32>(abs(20598u), 36063u, u_input.b.x, min(26709u, ~_wgslsmith_clamp_u32(u_input.b.x, 40325u, u_input.b.x))), !select(vec2<bool>(false, true), vec2<bool>(all(vec3<bool>(true, false, false)), true), select(true, true, true)));
    global3 = firstTrailingBit(_wgslsmith_clamp_i32(~var_2.b, _wgslsmith_dot_vec4_i32(max(-vec4<i32>(9544i, 17764i, 3557i, u_input.a), firstLeadingBit(vec4<i32>(3340i, 0i, 2147483647i, 0i))), firstLeadingBit(vec4<i32>(var_2.b, 0i, 0i, var_2.b) << (var_2.d % vec4<u32>(32u)))), -u_input.a));
    let var_3 = vec2<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(-60573i, -1i), vec2<i32>(2147483647i, -1i)), _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(var_2.c, 0u), 7u)], func_1(_wgslsmith_f_op_f32(var_0 * var_1), func_2(Struct_4(vec3<i32>(-1i, u_input.a, u_input.a), Struct_2(vec3<bool>(false, false, false), Struct_1(-361f, -80761i, var_2.c, var_2.d), true, Struct_1(1000f, var_2.b, 1u, var_2.d), var_2))).a.yy & select(vec2<i32>(global0[_wgslsmith_index_u32(var_2.d.x, 7u)], global0[_wgslsmith_index_u32(u_input.b.x, 7u)]), vec2<i32>(1i, 36095i), true), vec4<u32>(10777u, _wgslsmith_add_u32(var_2.c, 4294967295u), 1u, 5990u), func_2(func_2(Struct_4(vec3<i32>(u_input.a, var_2.b, global0[_wgslsmith_index_u32(0u, 7u)]), global2[_wgslsmith_index_u32(1471u, 13u)]))).b.a.xz).b, 45575i));
    let var_4 = 0i;
    global3 = ~(-global0[_wgslsmith_index_u32(var_2.c, 7u)] << (1u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(func_2(Struct_4(vec3<i32>(-34992i, var_3.x, var_3.x), func_2(Struct_4(vec3<i32>(var_3.x, var_3.x, var_4), Struct_2(vec3<bool>(true, true, false), var_2, true, var_2, var_2))).b)).b.e.b), _wgslsmith_add_i32(var_4, -var_2.b & (var_3.x >> (var_2.c % 32u))) & 0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(426f, _wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(max(var_1, var_2.a))))) * var_0), func_2(Struct_4(vec3<i32>(u_input.a & global0[_wgslsmith_index_u32(u_input.b.x, 7u)], -u_input.a, -16804i), global2[_wgslsmith_index_u32(func_1(-171f, -vec2<i32>(-1i, var_4), min(vec4<u32>(u_input.b.x, var_2.d.x, 0u, u_input.b.x), var_2.d), vec2<bool>(true, true)).c, 13u)])).a.yy);
}

