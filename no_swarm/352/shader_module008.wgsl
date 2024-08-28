struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

var<private> global1: array<vec3<u32>, 10> = array<vec3<u32>, 10>(vec3<u32>(7875u, 9181u, 1u), vec3<u32>(931u, 28741u, 1u), vec3<u32>(36151u, 46511u, 4294967295u), vec3<u32>(83662u, 4294967295u, 4294967295u), vec3<u32>(20452u, 0u, 4294967295u), vec3<u32>(4591u, 1u, 0u), vec3<u32>(56182u, 69155u, 56742u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(37561u, 0u, 0u), vec3<u32>(1u, 5284u, 49966u));

var<private> global2: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec3<f32>(-675f, 397f, -1000f), 535f), Struct_1(vec3<f32>(516f, -572f, 1015f), 413f), Struct_1(vec3<f32>(-474f, -118f, -1094f), 1316f), Struct_1(vec3<f32>(-287f, 398f, -1298f), 2715f), Struct_1(vec3<f32>(825f, 983f, 1210f), -778f), Struct_1(vec3<f32>(-1000f, -187f, -1205f), -1562f), Struct_1(vec3<f32>(914f, 1168f, -150f), -912f), Struct_1(vec3<f32>(-1000f, -949f, 1000f), -702f), Struct_1(vec3<f32>(-623f, -313f, -406f), -1000f), Struct_1(vec3<f32>(-127f, 521f, 398f), -1000f), Struct_1(vec3<f32>(1000f, -250f, -241f), -692f), Struct_1(vec3<f32>(-906f, -1188f, 320f), -178f), Struct_1(vec3<f32>(291f, -1000f, -856f), -2330f), Struct_1(vec3<f32>(-1000f, -1046f, -787f), -972f), Struct_1(vec3<f32>(652f, -1525f, 512f), 125f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32) -> u32 {
    return _wgslsmith_clamp_u32(_wgslsmith_sub_u32(~_wgslsmith_clamp_u32(abs(u_input.c), 78039u ^ u_input.d, u_input.d), u_input.c & _wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(u_input.d, 10u)], global1[_wgslsmith_index_u32(66754u, 10u)] & global1[_wgslsmith_index_u32(1u, 10u)])), 1u, (1u >> (1u % 32u)) << (_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.d, 0u, u_input.d, u_input.d)) | vec4<u32>(12160u, u_input.d, 4294967295u, 10193u), vec4<u32>(u_input.c, u_input.d, u_input.c, 6232u) << (~vec4<u32>(20955u, 1131u, u_input.d, u_input.d) % vec4<u32>(32u))) % 32u));
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = func_3(u_input.a.x);
    global0 = -556f;
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x))))))));
    let var_2 = 661f;
    var_0 = countOneBits(~19212u);
    return -_wgslsmith_div_i32(~u_input.a.x, u_input.a.x);
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = abs(u_input.a);
    var var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(firstTrailingBit(-1i) << (u_input.d % 32u), var_0.x, -(abs(0i) | func_2(Struct_1(arg_2.a, 1375f)))), u_input.a.www);
    global2 = array<Struct_1, 15>();
    global1 = array<vec3<u32>, 10>();
    let var_2 = arg_2.b >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.a.x)) + _wgslsmith_f_op_f32(sign(-264f))) - _wgslsmith_div_f32(arg_2.b, 392f)) - -1000f);
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(arg_2.a)))) + vec3<f32>(_wgslsmith_f_op_f32(-1114f * _wgslsmith_div_f32(1000f, arg_2.a.x)), 749f, arg_2.b)), arg_2.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(146f, arg_1.a.x, -1218f, _wgslsmith_f_op_f32(281f * arg_1.a.x)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(step(430f, -915f)), _wgslsmith_f_op_f32(max(-1332f, -897f)), arg_0.a.x, _wgslsmith_div_f32(arg_1.b, 1639f)))))));
    var var_1 = arg_0;
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -249f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(arg_0.a.x - 1852f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.a), var_1.a), arg_0.a, !(!vec3<bool>(arg_3.x, arg_2, false)))), arg_2)), arg_1.b);
    let var_2 = reverseBits(~vec3<u32>(51595u, countOneBits(~57192u), ~_wgslsmith_div_u32(u_input.c, 43541u)));
    var_1 = Struct_1(vec3<f32>(2107f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b + -118f) * arg_0.a.x) + _wgslsmith_f_op_f32(round(-839f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(arg_1.b, 1820f)), _wgslsmith_f_op_f32(round(var_0.x)), var_0.x <= -1634f)))), var_1.a.x);
    return global2[_wgslsmith_index_u32(55921u, 15u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 10>();
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1117f, -554f, 215f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2844f, 1000f, -483f)))), _wgslsmith_f_op_f32(ceil(-481f))), func_1(firstTrailingBit((u_input.a.zyz ^ vec3<i32>(u_input.b, u_input.a.x, u_input.b)) & _wgslsmith_mult_vec3_i32(u_input.a.xyz, u_input.a.zzx)), 1i, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1019f, 1615f)), 1f)), false || (_wgslsmith_f_op_f32(trunc(263f)) > _wgslsmith_f_op_f32(1f + 1308f)), !select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(true, true)), false));
    global2 = array<Struct_1, 15>();
    var var_1 = ~vec3<i32>(i32(-1i) * -2147483647i, -u_input.a.x, _wgslsmith_add_i32(select(-14459i, u_input.a.x, true) & -28109i, -min(-2147483647i, u_input.b)));
    let var_2 = Struct_1(vec3<f32>(419f, _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(-353f - var_0.a.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.c, func_3(firstTrailingBit(u_input.b)), 1u), 34001i, _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a.x, var_1.x, var_1.x, u_input.b), vec4<i32>(-21293i, -1606i, u_input.a.x, -1i) | vec4<i32>(var_1.x, u_input.b, var_1.x, 1i)) << (~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.d, u_input.c, 4294967295u), vec4<u32>(u_input.c, 4294967295u, 4294967295u, 13709u)) % vec4<u32>(32u)), max(~(vec4<i32>(-2147483647i, u_input.a.x, var_1.x, u_input.b) >> (vec4<u32>(1u, 1u, 38339u, 35909u) % vec4<u32>(32u))), (vec4<i32>(var_1.x, var_1.x, var_1.x, -5887i) & vec4<i32>(u_input.a.x, -1i, -38343i, -2147483647i)) & vec4<i32>(var_1.x, var_1.x, u_input.a.x, var_1.x))), ~(~(~vec4<u32>(15222u, u_input.d, 46232u, 30833u))) & ~vec4<u32>(abs(u_input.c), 8066u, max(u_input.c, u_input.c), _wgslsmith_sub_u32(13082u, 1u)));
}

