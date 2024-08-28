struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: vec3<bool>,
    d: i32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 14>;

var<private> global1: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(-122f), Struct_2(-300f), Struct_2(-1471f), Struct_2(1326f), Struct_2(-891f), Struct_2(1708f), Struct_2(-532f), Struct_2(1000f), Struct_2(202f), Struct_2(1283f), Struct_2(1967f), Struct_2(-709f), Struct_2(-368f), Struct_2(491f), Struct_2(-1059f), Struct_2(-146f), Struct_2(1044f), Struct_2(1026f), Struct_2(-408f), Struct_2(-568f), Struct_2(-141f), Struct_2(-665f), Struct_2(-640f), Struct_2(-1573f), Struct_2(-254f), Struct_2(891f));

var<private> global2: array<vec3<i32>, 4>;

var<private> global3: vec3<f32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    var var_0 = select(firstLeadingBit(firstTrailingBit(1i) << (17909u % 32u)), -(~_wgslsmith_dot_vec4_i32(vec4<i32>(9580i, 28274i, 2255i, 0i), -vec4<i32>(-9216i, 0i, 51027i, -5019i))), false);
    let var_1 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-899f, -609f, global3.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, 411f, -424f)))), abs(abs(abs(u_input.a)))), vec4<u32>(~_wgslsmith_div_u32(u_input.a, ~14118u), u_input.a, abs(u_input.a), 1u << ((0u ^ (u_input.a >> (1u % 32u))) % 32u)));
    global2 = array<vec3<i32>, 4>();
    var var_2 = Struct_5(u_input.a, var_1.a.b, vec3<bool>(true, false, all(vec3<bool>(any(vec3<bool>(true, true, true)), true, false))), -6825i, vec2<bool>(true, true));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1023f));
    return var_1.b.x;
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> u32 {
    return ~_wgslsmith_div_u32(56760u, _wgslsmith_dot_vec4_u32(arg_0.c, ~arg_0.c)) & 27394u;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<i32>) -> Struct_5 {
    let var_0 = Struct_5(~90533u, func_4(Struct_3(vec3<i32>(~arg_1.x, ~1i, arg_1.x << (45941u % 32u)), vec3<u32>(func_3(), u_input.a, abs(0u)), vec4<u32>(arg_0.x << (42004u % 32u), ~u_input.a, firstTrailingBit(10636u), _wgslsmith_clamp_u32(arg_0.x, arg_0.x, u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, global3.x)) + global3.x)), vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), !(_wgslsmith_dot_vec2_i32(arg_1.zz, vec2<i32>(2147483647i, arg_1.x)) <= _wgslsmith_div_i32(-4781i, arg_1.x)), true), arg_1.x, vec2<bool>(true, all(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(false, true), true))));
    global2 = array<vec3<i32>, 4>();
    var var_1 = vec2<i32>(-1i) * -select(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d, var_0.d, -27380i), vec3<i32>(arg_1.x, arg_1.x, -65558i)), arg_1.x), arg_1.yy, true);
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(sign(global3.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.x))) - _wgslsmith_f_op_f32(trunc(511f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(872f, 391f)) * _wgslsmith_f_op_f32(-global3.x))))), ~(~arg_0.x));
    var var_3 = Struct_5(6804u, _wgslsmith_clamp_u32(10575u, u_input.a, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, u_input.a, u_input.a) & vec3<u32>(4294967295u, var_2.b, 39325u), _wgslsmith_mult_vec3_u32(vec3<u32>(var_2.b, var_2.b, 65679u), vec3<u32>(var_0.b, arg_0.x, 70269u))), ~(~1u))), var_0.c, -2147483647i, select(var_0.e, vec2<bool>(true, any(!vec4<bool>(var_0.e.x, var_0.e.x, false, var_0.e.x))), !vec2<bool>(!var_0.e.x, var_0.e.x)));
    return Struct_5(~(~reverseBits(u_input.a)), select(var_2.b, ~u_input.a, false), select(select(select(var_3.c, var_3.c, true), var_0.c, all(var_3.c)), var_3.c, true), firstTrailingBit(var_3.d), var_0.e);
}

fn func_1(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: i32) -> Struct_2 {
    var var_0 = ~u_input.a;
    var var_1 = Struct_5(~(_wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.a, 75766u, 50160u, 1u), vec4<u32>(arg_0.c.x, arg_0.b.x, 4294967295u, u_input.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.c.x, u_input.a, arg_0.b.x, 22811u), arg_0.c)) << (select(~1u, arg_0.b.x & 0u, !arg_1.x) % 32u)), arg_0.b.x, arg_1, -8233i, vec2<bool>(true, !arg_1.x));
    var_1 = func_2(arg_0.c.xy, firstLeadingBit(vec3<i32>(arg_2, -7762i, var_1.d)));
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3.x)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(global3.x - 596f))))));
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: Struct_2, arg_3: f32) -> u32 {
    var var_0 = !select(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), func_2(vec2<u32>(arg_0, u_input.a), global2[_wgslsmith_index_u32(u_input.a, 4u)]).e.x), vec3<bool>(true, true, any(vec4<bool>(true, true, true, true))), !(_wgslsmith_div_f32(-423f, -583f) <= _wgslsmith_f_op_f32(step(-774f, 1400f))));
    global1 = array<Struct_2, 26>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1627f, arg_3, -728f) - vec3<f32>(arg_2.a, global3.x, arg_2.a)), vec3<f32>(arg_2.a, arg_3, global3.x))))), ~abs(_wgslsmith_div_u32(~arg_0, _wgslsmith_mod_u32(u_input.a, 1u))));
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1392f + _wgslsmith_div_f32(var_1.a.x, 1870f)), -427f, _wgslsmith_f_op_f32(global3.x + -783f))), countOneBits(_wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(var_1.b, u_input.a), countOneBits(4294967295u)), _wgslsmith_sub_u32(var_1.b, 4294967295u) << (~4294967295u % 32u))));
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(round(var_1.a)), arg_0);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 14>();
    global0 = array<vec2<f32>, 14>();
    global1 = array<Struct_2, 26>();
    global3 = vec3<f32>(-1136f, 175f, _wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(f32(-1f) * -1313f)));
    let var_0 = ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(31139u, 0u, 4806u, firstLeadingBit(u_input.a)), ~vec4<u32>(4294967295u, u_input.a, u_input.a, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(40861u, 4294967295u, 20459u, u_input.a), vec4<u32>(19863u, 30345u, 4294967295u, 0u)) ^ _wgslsmith_add_vec4_u32(vec4<u32>(27634u, 4294967295u, 4294967295u, 4312u), vec4<u32>(u_input.a, 12784u, 1u, u_input.a))) ^ vec4<u32>(~49963u, 4294967295u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, u_input.a, 52088u), vec3<u32>(u_input.a, u_input.a, 14054u), vec3<bool>(true, false, false)), ~vec3<u32>(0u, u_input.a, 0u)), 4294967295u));
    let var_1 = vec3<u32>(var_0.x, func_5(abs(76594u ^ u_input.a), -_wgslsmith_add_i32(-43190i, 28200i), func_1(Struct_3(vec3<i32>(-14943i, 1i, -11094i), var_0.zzw, var_0), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), 1i), _wgslsmith_f_op_f32(sign(519f))), abs(_wgslsmith_mult_u32(~42846u, u_input.a))) >> ((~var_0.zzw << (vec3<u32>(var_0.x, var_0.x, 55490u) % vec3<u32>(32u))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(1186f, _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, _wgslsmith_f_op_f32(global3.x - -705f), -1201f) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1668f, global3.x, 793f))))))), 13626u);
}

