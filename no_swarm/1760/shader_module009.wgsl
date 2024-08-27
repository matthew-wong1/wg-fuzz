struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 14> = array<vec2<f32>, 14>(vec2<f32>(1275f, -797f), vec2<f32>(1230f, 1000f), vec2<f32>(-1000f, 203f), vec2<f32>(1000f, 715f), vec2<f32>(-2437f, 421f), vec2<f32>(-1000f, 496f), vec2<f32>(172f, -2036f), vec2<f32>(835f, 486f), vec2<f32>(-848f, 1895f), vec2<f32>(-431f, -774f), vec2<f32>(-1834f, -743f), vec2<f32>(1183f, 522f), vec2<f32>(-156f, -305f), vec2<f32>(1000f, 505f));

var<private> global1: f32 = -529f;

var<private> global2: array<vec3<f32>, 27> = array<vec3<f32>, 27>(vec3<f32>(727f, -192f, -1584f), vec3<f32>(-1394f, 1000f, 647f), vec3<f32>(-553f, -569f, -407f), vec3<f32>(-1284f, 1167f, -1074f), vec3<f32>(-859f, 518f, 222f), vec3<f32>(-238f, 1000f, 1686f), vec3<f32>(-1160f, 779f, -992f), vec3<f32>(-424f, -228f, -397f), vec3<f32>(-658f, -569f, 680f), vec3<f32>(-540f, 1199f, -200f), vec3<f32>(-326f, 1340f, 162f), vec3<f32>(-484f, 994f, 932f), vec3<f32>(751f, 432f, -1192f), vec3<f32>(-110f, -582f, 626f), vec3<f32>(-1470f, -430f, -871f), vec3<f32>(-626f, 198f, 297f), vec3<f32>(346f, 428f, -747f), vec3<f32>(-1290f, 1000f, 1782f), vec3<f32>(434f, -432f, -409f), vec3<f32>(-1602f, 638f, 719f), vec3<f32>(1024f, 993f, -275f), vec3<f32>(783f, 1792f, -825f), vec3<f32>(127f, 1279f, 941f), vec3<f32>(-667f, 2177f, -553f), vec3<f32>(115f, 1065f, -620f), vec3<f32>(-1684f, 865f, 175f), vec3<f32>(-532f, -646f, -999f));

var<private> global3: array<vec3<bool>, 23>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: i32, arg_3: vec2<i32>) -> bool {
    let var_0 = Struct_1(-601f, select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), all(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(1u, 27u)]))));
    let var_1 = u_input.a.xxz;
    var var_2 = any(select(vec2<bool>(var_0.b.x, !(!var_0.b.x)), vec2<bool>(true, false), vec2<bool>(var_0.b.x, var_0.b.x)));
    var var_3 = 2147483647i;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1259f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -767f), 1985f, 1u == arg_0)))));
    return all(vec4<bool>(arg_1.x == 357f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.x - arg_1.x), var_0.a)) < _wgslsmith_f_op_f32(trunc(arg_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -434f) >= _wgslsmith_f_op_f32(-var_0.c.x), var_0.b.x));
}

fn func_2(arg_0: vec2<bool>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(950f, 922f)), _wgslsmith_f_op_f32(f32(-1f) * -2281f)))), vec4<bool>(arg_0.x, all(vec2<bool>(arg_0.x, arg_0.x)), true, func_3(0u, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-825f, 206f), _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(28045u, 14u)]))), countOneBits(~(-1i)), firstLeadingBit(u_input.c))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-510f, -204f, _wgslsmith_f_op_f32(f32(-1f) * -274f))))));
    var var_1 = ~(~18215u);
    global3 = array<vec3<bool>, 23>();
    var_0 = Struct_1(312f, var_0.b, vec3<f32>(267f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(434f, _wgslsmith_f_op_f32(-var_0.c.x))), _wgslsmith_f_op_f32(-var_0.c.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.c.x)))));
    let var_2 = _wgslsmith_add_u32(abs(reverseBits(~(~72813u))), _wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 0u), vec3<u32>(1u, 1u, 1u)), _wgslsmith_clamp_u32(~0u, 0u, ~40628u)));
    return ~_wgslsmith_mult_u32(18252u, 1u);
}

fn func_4(arg_0: vec4<u32>, arg_1: bool, arg_2: vec4<u32>, arg_3: f32) -> Struct_1 {
    global0 = array<vec2<f32>, 14>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(arg_3)), vec4<bool>(arg_1, ((arg_1 & arg_1) == true) | (arg_1 && any(vec2<bool>(false, true))), false, false), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -107f), arg_3, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1672f)))))));
    var var_1 = var_0.b.xwx;
    global3 = array<vec3<bool>, 23>();
    var var_2 = Struct_1(var_0.a, var_0.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.c, global2[_wgslsmith_index_u32(34646u, 27u)], true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(529f, var_0.a, -498f)))))));
    return var_0;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> bool {
    let var_0 = func_4(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(12929u, 11262u), _wgslsmith_mod_u32(16399u, 1u), ~20982u, 1u), vec4<u32>(~13251u, _wgslsmith_add_u32(0u, 91040u), abs(4294967295u), abs(25018u))), ~func_2(vec2<bool>(true, true)), 1u, ~_wgslsmith_sub_u32(~1u, 21476u)), !select(arg_1.b.x, _wgslsmith_f_op_f32(-arg_1.c.x) < 955f, true), vec4<u32>(0u, countOneBits(~0u) & _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 139120u, 99570u), vec3<u32>(0u, 4294967295u, 4294967295u)), abs(4294967295u)), ~_wgslsmith_mult_u32(48637u, 0u), _wgslsmith_mult_u32(1u, reverseBits(4294967295u) >> (1u % 32u))), arg_1.c.x);
    return var_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<f32>, 27>();
    var var_0 = global3[_wgslsmith_index_u32(min(1u, ~((_wgslsmith_dot_vec2_u32(vec2<u32>(35643u, 4294967295u), vec2<u32>(1u, 0u)) ^ _wgslsmith_mult_u32(1u, 45466u)) ^ 1u)), 23u)];
    var_0 = select(select(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 1u) << (_wgslsmith_div_vec2_u32(vec2<u32>(33210u, 8764u), vec2<u32>(4294967295u, 19504u)) % vec2<u32>(32u))), 23u)], !global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(8277u, ~1u), 23u)], var_0.x), !vec3<bool>(false, !var_0.x, func_1(vec4<i32>(1i, u_input.b.x, -2147483647i, u_input.b.x), Struct_1(371f, vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec3<f32>(1000f, -883f, -630f)))), vec3<bool>(false, all(global3[_wgslsmith_index_u32(11131u, 23u)]), true));
    let var_1 = func_4(select(~select(vec4<u32>(1u, 1u, 1u, 1u), abs(vec4<u32>(48653u, 24986u, 24212u, 12901u)), true), ~vec4<u32>(1u, 1u, 1u, 1u), vec4<bool>(var_0.x, true, true, !(u_input.b.x == -11100i))), false, select(~vec4<u32>(4294967295u, abs(25906u), _wgslsmith_add_u32(87602u, 0u), 15487u), vec4<u32>(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 0u), vec3<u32>(26060u, 4294967295u, 16491u))), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 30013u, 652u, 27222u), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 34023u, 0u, 32458u), vec4<u32>(1u, 0u, 1u, 0u))), 1u, 1u), vec4<bool>(var_0.x, func_4(vec4<u32>(1u, 23371u, 4294967295u, 1953u), var_0.x, vec4<u32>(3849u, 1u, 1u, 4294967295u), func_4(vec4<u32>(0u, 53438u, 0u, 18581u), var_0.x, vec4<u32>(0u, 4294967295u, 4294967295u, 58927u), 1576f).c.x).b.x, var_0.x, !all(vec4<bool>(true, false, true, var_0.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_4(~vec4<u32>(36701u, 4294967295u, 4294967295u, 1u), func_3(1u, vec2<f32>(-1934f, -1143f), -28010i, vec2<i32>(6028i, u_input.c.x)), vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_f_op_f32(1000f + 1906f)).a + _wgslsmith_f_op_f32(sign(1431f)))))).c.x;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1572f);
    let var_3 = func_4(vec4<u32>(0u, ~(~4294967295u), select(firstTrailingBit(~0u), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(33155u, 13859u, 4294967295u, 18357u)), vec4<u32>(16427u, 12195u, 4294967295u, 0u)), true), ~firstTrailingBit(1u)), false, vec4<u32>(1u, 1u, 1u, 1u) & (abs(max(vec4<u32>(8633u, 4294967295u, 32837u, 100012u), vec4<u32>(0u, 0u, 4294967295u, 4294967295u))) | firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(428f))));
    let var_4 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(-max(-(~u_input.a.x), 1i));
}

