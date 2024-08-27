struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: f32,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_3,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 22> = array<vec4<i32>, 22>(vec4<i32>(26327i, 0i, 0i, -15870i), vec4<i32>(-1i, 0i, 0i, 0i), vec4<i32>(-5393i, 2147483647i, 1i, -1i), vec4<i32>(9724i, 46326i, 2147483647i, -52381i), vec4<i32>(14955i, i32(-2147483648), 7658i, 1i), vec4<i32>(-1i, -1i, 2147483647i, 24628i), vec4<i32>(45576i, 0i, 0i, -75144i), vec4<i32>(-1i, 2147483647i, 0i, -13470i), vec4<i32>(12552i, -1i, 18974i, 24308i), vec4<i32>(2147483647i, 2147483647i, 2147483647i, i32(-2147483648)), vec4<i32>(32169i, 2147483647i, 1i, 0i), vec4<i32>(43299i, -1i, 1i, -21673i), vec4<i32>(458i, i32(-2147483648), -13634i, 68728i), vec4<i32>(i32(-2147483648), 11855i, -4591i, 2147483647i), vec4<i32>(2147483647i, -21909i, 7428i, i32(-2147483648)), vec4<i32>(-1i, -1i, 2147483647i, i32(-2147483648)), vec4<i32>(1i, 5696i, -1i, 29510i), vec4<i32>(i32(-2147483648), 38799i, 47767i, -29661i), vec4<i32>(-14504i, -1i, -3011i, -17214i), vec4<i32>(1i, i32(-2147483648), 2147483647i, 43167i), vec4<i32>(-4967i, 0i, i32(-2147483648), 40518i), vec4<i32>(12157i, 2147483647i, -1i, i32(-2147483648)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: u32, arg_3: vec4<i32>) -> vec2<bool> {
    var var_0 = arg_0;
    global0 = array<vec4<i32>, 22>();
    let var_1 = arg_0.a;
    let var_2 = Struct_3(firstLeadingBit(u_input.a.x), arg_0.a.a.xx, Struct_1(667f), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-829f * -1000f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-802f)), _wgslsmith_f_op_f32(-var_1.d))), var_0.a.a.x))), 3867u);
    let var_3 = ~vec2<u32>(var_2.a, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~arg_0.a.b.xy, var_1.b.yx), reverseBits(0u)));
    return var_0.c.b;
}

fn func_2(arg_0: vec4<bool>) -> vec4<u32> {
    let var_0 = vec3<u32>(~23036u, ~(~u_input.a.x), u_input.a.x);
    var var_1 = Struct_3(~(~_wgslsmith_mod_u32(var_0.x, ~7548u)), select(!func_3(Struct_4(Struct_2(arg_0.wyz, vec3<u32>(u_input.a.x, 88433u, var_0.x), vec2<f32>(-864f, -1354f), -244f), Struct_1(599f), Struct_3(4294967295u, vec2<bool>(false, arg_0.x), Struct_1(1646f), Struct_1(-485f), var_0.x), vec4<i32>(-1i, u_input.c.x, u_input.b, u_input.b)), Struct_1(765f), 90338u, global0[_wgslsmith_index_u32(~u_input.a.x, 22u)]), arg_0.xw, vec2<bool>(any(select(arg_0.zyz, arg_0.yzy, vec3<bool>(false, arg_0.x, true))), all(select(vec4<bool>(false, true, true, true), arg_0, arg_0)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1013f))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1355f, _wgslsmith_f_op_f32(483f * 1434f), arg_0.x)) * _wgslsmith_div_f32(-198f, _wgslsmith_f_op_f32(min(-197f, 133f))))), abs(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~u_input.a, _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(22364u, 68226u, var_0.x, 0u))), u_input.a)));
    let var_2 = u_input.a.x;
    var var_3 = Struct_4(Struct_2(select(vec3<bool>(true, all(vec2<bool>(true, var_1.b.x)), all(vec4<bool>(arg_0.x, var_1.b.x, var_1.b.x, arg_0.x))), arg_0.zyy, vec3<bool>(true, true, true)), _wgslsmith_clamp_vec3_u32(u_input.a.yyy, vec3<u32>(reverseBits(8779u), ~var_2, u_input.a.x), select(countOneBits(var_0), u_input.a.zzx, -1443i > u_input.b)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1698f), _wgslsmith_f_op_f32(round(var_1.d.a))))), var_1.c.a), Struct_1(_wgslsmith_div_f32(var_1.d.a, var_1.c.a)), Struct_3(~35916u, arg_0.wy, var_1.c, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.a - 1000f) * _wgslsmith_f_op_f32(var_1.d.a * -638f))), 0u), global0[_wgslsmith_index_u32(~max(_wgslsmith_div_u32(0u, var_0.x), ~var_1.a) | 0u, 22u)]);
    var var_4 = -535f;
    return vec4<u32>(98119u, var_3.a.b.x, var_2, 4294967295u);
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    global0 = array<vec4<i32>, 22>();
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, ~(_wgslsmith_mod_u32(u_input.a.x, 17330u) | 0u), ~5023u, arg_0.e), countOneBits(func_2(!(!vec4<bool>(true, arg_0.b.x, arg_0.b.x, false)))));
    var var_1 = Struct_3(~(38879u ^ arg_0.a), vec2<bool>(_wgslsmith_f_op_f32(max(-341f, _wgslsmith_f_op_f32(ceil(1224f)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + arg_0.d.a)), (-2147483647i >> (arg_0.e % 32u)) <= -1i), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.a) * _wgslsmith_f_op_f32(min(1130f, arg_0.c.a))), -971f)), Struct_1(880f), _wgslsmith_mod_u32(~(~firstTrailingBit(59618u)), func_2(select(select(vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x), vec4<bool>(arg_0.b.x, true, true, true), vec4<bool>(false, false, arg_0.b.x, arg_0.b.x)), vec4<bool>(arg_0.b.x, false, arg_0.b.x, arg_0.b.x), true)).x));
    var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, func_2(!vec4<bool>(arg_0.b.x, var_1.b.x, arg_0.b.x, false)).x ^ ~(~arg_0.e), abs(arg_0.a << (abs(u_input.a.x) % 32u))), countOneBits(firstTrailingBit(u_input.a.zyw)));
    var var_2 = arg_0;
    return Struct_1(var_1.d.a);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_2) -> f32 {
    global0 = array<vec4<i32>, 22>();
    global0 = array<vec4<i32>, 22>();
    global0 = array<vec4<i32>, 22>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) * arg_0.a);
}

fn func_5(arg_0: f32, arg_1: Struct_3) -> Struct_2 {
    let var_0 = Struct_2(vec3<bool>(false, !any(!arg_1.b), false), firstLeadingBit(u_input.a.yyx), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(arg_0 + -319f), _wgslsmith_f_op_f32(abs(410f))))), -1185f);
    global0 = array<vec4<i32>, 22>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c * vec2<f32>(-399f, arg_0)) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(945f, arg_1.c.a)))) - _wgslsmith_f_op_vec2_f32(-var_0.c))));
    global0 = array<vec4<i32>, 22>();
    var var_2 = (u_input.d >> (var_0.b.x % 32u)) >= select(u_input.d, u_input.d, 42116u != (~arg_1.e << (~37161u % 32u)));
    return Struct_2(vec3<bool>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-2816f)), _wgslsmith_f_op_f32(select(var_1.x, 224f, true)))) != _wgslsmith_f_op_f32(select(818f, var_0.d, false)), true, !all(var_0.a.zz) && true), var_0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.c, vec2<f32>(_wgslsmith_f_op_f32(trunc(171f)), var_1.x))), arg_1.d.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<i32>(firstTrailingBit(-10139i), ~(-_wgslsmith_div_i32(u_input.c.x, u_input.d)), -1i, -53868i);
    var var_1 = ~vec4<u32>(u_input.a.x, firstTrailingBit(u_input.a.x) & u_input.a.x, 33441u ^ u_input.a.x, 0u);
    let var_2 = ~countOneBits(~(~_wgslsmith_div_u32(var_1.x, var_1.x)));
    let var_3 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2272f)) - 481f) + -719f) - _wgslsmith_f_op_f32(func_4(func_1(Struct_3(var_1.x, vec2<bool>(false, true), Struct_1(973f), Struct_1(1110f), 1u)), firstLeadingBit(~vec3<i32>(u_input.c.x, var_0.x, -34329i)), Struct_2(vec3<bool>(false, true, true), max(var_1.xzx, var_1.zxz), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(637f, -719f))), _wgslsmith_f_op_f32(round(510f)))))), Struct_3(~((19949u ^ var_2) & var_1.x), select(vec2<bool>(true, true), vec2<bool>(true, func_3(Struct_4(Struct_2(vec3<bool>(true, true, false), vec3<u32>(var_2, var_2, 4294967295u), vec2<f32>(2196f, -160f), 1329f), Struct_1(1000f), Struct_3(1u, vec2<bool>(false, false), Struct_1(225f), Struct_1(-1000f), u_input.a.x), vec4<i32>(u_input.e, 21332i, 22288i, u_input.b)), Struct_1(-442f), var_2, var_0).x), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))), Struct_1(250f), Struct_1(_wgslsmith_f_op_f32(abs(-1254f))), 125490u));
    global0 = array<vec4<i32>, 22>();
    var var_4 = true;
    var_4 = any(vec2<bool>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.c, var_0.xy), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, -27978i), vec2<i32>(-32461i, 21251i))) >= (-var_0.x | u_input.c.x), !all(vec2<bool>(true, true))));
    let var_5 = vec3<bool>(true, !any(var_3.a), all(select(!func_5(-195f, Struct_3(18970u, var_3.a.xx, Struct_1(var_3.d), Struct_1(1227f), var_1.x)).a.zx, vec2<bool>(true, var_3.a.x), var_3.a.x)));
    var_1 = vec4<u32>(var_1.x, _wgslsmith_mult_u32(var_2, abs((23326u | var_2) & min(var_1.x, var_1.x))), var_3.b.x, var_3.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_1(Struct_3(func_2(vec4<bool>(true, false, true, var_5.x)).x, var_5.xy, Struct_1(-1777f), Struct_1(1445f), var_3.b.x)).a + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3.c.x)))))), vec2<u32>(func_2(!select(vec4<bool>(true, false, var_5.x, var_5.x), vec4<bool>(var_5.x, var_3.a.x, false, var_5.x), vec4<bool>(true, var_3.a.x, true, var_5.x))).x, 59739u));
}

