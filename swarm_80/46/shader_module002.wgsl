struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 689f;

var<private> global1: array<Struct_1, 27>;

var<private> global2: f32 = -1252f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: f32, arg_1: bool) -> u32 {
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(184f, arg_0)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_0)), -1796f))))));
    global1 = array<Struct_1, 27>();
    let var_0 = u_input.b.x;
    let var_1 = false;
    return 110267u;
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    var var_0 = abs(vec2<u32>(func_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x * -377f), arg_0.x)), any(vec2<bool>(false, false))), 1u));
    var var_1 = ~_wgslsmith_div_vec4_u32(vec4<u32>(~u_input.a, u_input.e, _wgslsmith_mod_u32(reverseBits(1u), u_input.e), select(reverseBits(u_input.a), ~var_0.x, true)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(18567u, 0u, u_input.a, 43871u), reverseBits(vec4<u32>(1u, var_0.x, 23576u, 1u))));
    let var_2 = global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(var_0.x, firstTrailingBit(1u ^ ~var_0.x))), 27u)];
    let var_3 = _wgslsmith_sub_vec4_i32(~vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(38486i, 23676i), _wgslsmith_sub_i32(u_input.b.x, u_input.d)), ~_wgslsmith_clamp_i32(-27676i, 2147483647i, -1i), _wgslsmith_sub_i32(1i, 0i), -1i), ~_wgslsmith_sub_vec4_i32(min(vec4<i32>(-41394i, -1702i, u_input.d, u_input.c.x), vec4<i32>(u_input.d, u_input.b.x, u_input.c.x, -2147483647i)), vec4<i32>(u_input.c.x, u_input.b.x, -1i, -9676i) << (vec4<u32>(u_input.e, var_0.x, 101106u, 1u) % vec4<u32>(32u))) | vec4<i32>(-(~u_input.d), max(_wgslsmith_mod_i32(-1i, -44525i), _wgslsmith_clamp_i32(u_input.c.x, u_input.d, 0i)), _wgslsmith_sub_i32(-58200i, _wgslsmith_mult_i32(u_input.c.x, u_input.c.x)), -1i));
    var_0 = var_1.wx;
    return _wgslsmith_sub_u32(~var_0.x, 58559u);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: f32) -> i32 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.a)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -969f), -607f));
    var var_1 = vec4<u32>(_wgslsmith_div_u32(u_input.e ^ min(u_input.a, u_input.a), 21132u), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(0u, 1u)), ~vec2<u32>(6576u, u_input.e)), reverseBits(~(~6284u)), ~u_input.a) >> (((vec4<u32>(u_input.e, ~38391u, ~u_input.e, ~u_input.e) & vec4<u32>(func_3(vec4<f32>(405f, 471f, 2127f, -2017f)), _wgslsmith_add_u32(82764u, 1u), u_input.a, ~u_input.e)) << (vec4<u32>(1u, firstTrailingBit(_wgslsmith_add_u32(u_input.a, 4294967295u)), u_input.a << (firstLeadingBit(u_input.e) % 32u), u_input.e) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_2 = reverseBits(~(~var_1.yy));
    var var_3 = ~(-(arg_2.x << (u_input.e % 32u)));
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0 - _wgslsmith_f_op_vec2_f32(arg_1.a - _wgslsmith_f_op_vec2_f32(-arg_1.a)))));
    return -1i;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    global2 = -1462f;
    var var_0 = true & arg_3;
    let var_1 = !select(vec2<bool>(true, any(select(vec3<bool>(false, false, arg_3), vec3<bool>(true, arg_3, arg_3), vec3<bool>(arg_3, false, false)))), vec2<bool>(any(vec4<bool>(arg_3, arg_3, true, true)), arg_0.x <= ~u_input.b.x), vec2<bool>(true, true));
    var var_2 = arg_2;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) + var_2.a.x);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-arg_1.xy));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = ~(~u_input.a);
    var var_1 = !(!(!all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), false))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.x, _wgslsmith_f_op_f32(max(1000f, arg_1.a.x)))));
    var var_3 = global1[_wgslsmith_index_u32(u_input.a, 27u)];
    let var_4 = Struct_1(var_2.a);
    return Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-190f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) * _wgslsmith_f_op_f32(step(185f, -1000f)))), arg_0.a)));
}

fn func_6(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec4<u32>) -> StorageBuffer {
    var var_0 = _wgslsmith_mod_u32(~0u, max(arg_1.x, func_1(arg_2.a.x, true)));
    global0 = _wgslsmith_f_op_f32(-arg_2.a.x);
    let var_1 = Struct_1(func_5(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(min(arg_2.a.x, 1005f)), _wgslsmith_f_op_f32(1035f - -1360f))), Struct_1(vec2<f32>(2900f, _wgslsmith_f_op_f32(1000f - -251f))), abs((vec4<i32>(-78319i, 0i, u_input.c.x, u_input.d) >> (arg_1 % vec4<u32>(32u))) ^ vec4<i32>(u_input.c.x, -1i, -30632i, u_input.c.x))).a);
    let var_2 = u_input.c;
    var var_3 = func_5(func_4(select(vec4<i32>(-11838i, 34555i, 1690i, var_2.x) ^ vec4<i32>(var_2.x, -27440i, u_input.c.x, 1i), abs(vec4<i32>(3775i, var_2.x, u_input.c.x, u_input.d)), !vec4<bool>(true, false, arg_0, arg_0)) ^ ~(-vec4<i32>(-1i, var_2.x, -2147483647i, var_2.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-142f, 750f)) - _wgslsmith_f_op_f32(max(arg_2.a.x, var_1.a.x))), arg_2.a.x, _wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(-arg_2.a.x)), var_1.a.x), Struct_1(_wgslsmith_f_op_vec2_f32(max(arg_2.a, _wgslsmith_f_op_vec2_f32(-var_1.a)))), any(select(vec3<bool>(arg_0, true, arg_0), !vec3<bool>(true, arg_0, true), select(vec3<bool>(true, arg_0, false), vec3<bool>(true, arg_0, false), arg_0)))), var_1, vec4<i32>(var_2.x, ~23311i, firstTrailingBit(~(-1i)), 1i));
    return StorageBuffer(~firstTrailingBit(arg_3.x), ~(~(~arg_3.ww)), ~(vec3<u32>(arg_3.x & arg_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 28695u, arg_1.x, arg_3.x), arg_1), 26225u) & firstLeadingBit(vec3<u32>(u_input.e, 11506u, arg_3.x))), arg_2.a.x, _wgslsmith_dot_vec4_i32(select(_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(54575i, u_input.d, u_input.d, var_2.x)), vec4<i32>(-1i, 0i, u_input.b.x, var_2.x) << (vec4<u32>(4294967295u, 4294967295u, u_input.a, 1u) % vec4<u32>(32u))), firstLeadingBit(-vec4<i32>(var_2.x, u_input.b.x, 12613i, u_input.c.x)), arg_0), vec4<i32>(reverseBits(var_2.x << (79550u % 32u)), -(~0i), 33375i, abs(~u_input.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(~(~u_input.e), 27u)];
    let var_1 = vec4<u32>(_wgslsmith_mult_u32(u_input.e, countOneBits(u_input.e)), 58200u << (_wgslsmith_mult_u32(func_1(_wgslsmith_f_op_f32(abs(var_0.a.x)), any(vec3<bool>(true, true, false))), 1u) % 32u), 28011u, _wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a, _wgslsmith_mult_u32(23256u, u_input.e)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, u_input.e, u_input.a) << (vec3<u32>(u_input.a, 83312u, 4294967295u) % vec3<u32>(32u)), vec3<u32>(u_input.e, u_input.e, 7934u) & vec3<u32>(u_input.e, 4294967295u, u_input.e))), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(u_input.e, 0u)), vec2<u32>(u_input.e, 1u))));
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1223f, var_0.a.x, false)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), -1000f));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(287f + -688f), _wgslsmith_f_op_f32(-var_0.a.x)), vec2<f32>(var_2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -206f)))))));
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.x, -125f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.x, 962f) + vec2<f32>(1165f, -657f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_0.a)))))));
    global2 = _wgslsmith_f_op_f32(step(-1573f, 127f));
    let x = u_input.a;
    s_output = func_6(false, vec4<u32>(28759u, _wgslsmith_clamp_u32(~0u ^ u_input.e, var_1.x, 74457u), abs(1u), 98823u), func_5(func_4(vec4<i32>(~u_input.b.x, func_2(1143f, Struct_1(var_3.a), u_input.b, -347f), -2147483647i, u_input.b.x & 6634i), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(425f, var_3.a.x, var_2.a.x, 1830f), vec4<f32>(var_0.a.x, -1318f, -171f, 144f)) * _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.x, var_3.a.x, -1009f, var_2.a.x), vec4<f32>(-1715f, var_0.a.x, 1474f, 157f))), Struct_1(_wgslsmith_f_op_vec2_f32(-var_3.a)), false), func_4(_wgslsmith_mod_vec4_i32(vec4<i32>(-19505i, 1i, u_input.c.x, 2147483647i), vec4<i32>(-2147483647i, 1i, u_input.c.x, u_input.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(357f, 691f, var_3.a.x, 434f))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.x, var_3.a.x) - var_4.a)), true), -countOneBits(vec4<i32>(u_input.b.x, u_input.b.x, u_input.c.x, -26340i))), vec4<u32>(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, var_1.x, 47138u, 18227u), var_1), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), var_1.yx), firstTrailingBit(4294967295u)), _wgslsmith_mod_u32(4294967295u, _wgslsmith_add_u32(8953u, 52336u) << ((var_1.x & var_1.x) % 32u)), var_1.x, u_input.e));
}

