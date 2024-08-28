struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global1: i32 = 1i;

var<private> global2: array<bool, 3> = array<bool, 3>(true, false, false);

var<private> global3: array<u32, 16> = array<u32, 16>(47177u, 0u, 30448u, 14907u, 21141u, 30239u, 55956u, 70757u, 4294967295u, 0u, 1u, 36942u, 33061u, 0u, 1u, 1u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec4<u32>, arg_3: u32) -> vec2<u32> {
    global2 = array<bool, 3>();
    var var_0 = global2[_wgslsmith_index_u32(arg_3, 3u)];
    var var_1 = Struct_3(Struct_1(vec3<i32>(firstLeadingBit(arg_0.b.x), i32(-1i) * -1i, -abs(1i)), ~(~vec2<u32>(29847u, 4294967295u)), arg_0.b, arg_0.c.d, 1u), _wgslsmith_div_i32(u_input.a.x, ~_wgslsmith_dot_vec2_i32(u_input.a.wz, vec2<i32>(-2147483647i, -1i))), Struct_2(u_input.a.x << (_wgslsmith_mod_u32(select(arg_1, u_input.b, true), _wgslsmith_add_u32(1u, 37738u)) % 32u), vec2<i32>(_wgslsmith_dot_vec3_i32(reverseBits(arg_0.c.a), arg_0.c.a), abs(-1618i)), Struct_1(vec3<i32>(arg_0.d, _wgslsmith_clamp_i32(u_input.a.x, 7154i, arg_0.d), ~arg_0.c.c.x), arg_2.xy, reverseBits(-vec2<i32>(arg_0.b.x, 24536i)), vec2<f32>(_wgslsmith_f_op_f32(381f * arg_0.c.d.x), arg_0.c.d.x), 34041u), (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -22438i, u_input.a.x, arg_0.c.c.x), u_input.a) >> (_wgslsmith_sub_u32(48666u, arg_3) % 32u)) & abs(_wgslsmith_div_i32(u_input.a.x, arg_0.d))), vec2<bool>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(-1469i, -13752i), ~arg_0.b.x) > select(2147483647i >> (global3[_wgslsmith_index_u32(28524u, 16u)] % 32u), -5977i, false), false));
    var_0 = !var_1.d.x;
    var_0 = true;
    return max(vec2<u32>(arg_0.c.e, var_1.c.c.e), ~_wgslsmith_mod_vec2_u32(var_1.c.c.b, ~vec2<u32>(44286u, arg_3)));
}

fn func_2(arg_0: vec4<bool>) -> bool {
    global2 = array<bool, 3>();
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(587f + -749f), _wgslsmith_f_op_f32(max(-1104f, 518f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1747f, -1812f)))))) >= 1f;
    var var_1 = Struct_2(u_input.a.x, -(~vec2<i32>(u_input.a.x, ~16283i)), Struct_1(_wgslsmith_mod_vec3_i32(-vec3<i32>(2147483647i, u_input.a.x, -17401i) & _wgslsmith_mod_vec3_i32(u_input.a.wwz, u_input.a.yzw), countOneBits(vec3<i32>(0i, -1i, 28624i))), vec2<u32>(u_input.b >> (41855u % 32u), u_input.b) << (~func_3(Struct_2(u_input.a.x, u_input.a.yw, Struct_1(u_input.a.zyx, vec2<u32>(44508u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(17949u, 16u)], 16u)]), u_input.a.xy, vec2<f32>(2313f, -1605f), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(39128u, 16u)], 16u)], 16u)]), -4030i), 4294967295u, vec4<u32>(4294967295u, 1u, u_input.b, u_input.b), 59569u) % vec2<u32>(32u)), u_input.a.zy, vec2<f32>(485f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1227f) * 1458f)), _wgslsmith_mod_u32(13930u, ~1u)), -u_input.a.x);
    let var_2 = _wgslsmith_div_i32(-3674i, 1125i);
    let var_3 = select(select(!global0.xy, !arg_0.zx, any(!global0.yxx)), !global0.xy, select(global0.xy, vec2<bool>(true, global0.x), !arg_0.x));
    return _wgslsmith_f_op_f32(-var_1.c.d.x) >= _wgslsmith_f_op_f32(sign(312f));
}

fn func_1(arg_0: f32, arg_1: f32) -> vec4<u32> {
    global3 = array<u32, 16>();
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 819f, arg_1)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1267f, arg_1, -130f) * vec3<f32>(-227f, arg_0, arg_1)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, -2582f)) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(407f, arg_0, arg_0)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(-678f, arg_1), arg_1, arg_0))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1307f, arg_1, -1000f), vec3<f32>(-1000f, arg_0, arg_0), vec3<bool>(false, false, false))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0, 599f, arg_0), vec3<f32>(-1431f, 1220f, 947f))), func_2(vec4<bool>(global0.x, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(47633u, 16u)], 3u)], global0.x, global2[_wgslsmith_index_u32(1u, 3u)]))))))), !select(select(vec3<bool>(false, false, global0.x), !vec3<bool>(global0.x, global0.x, false), vec3<bool>(true, true, true)), vec3<bool>(global0.x, global2[_wgslsmith_index_u32(u_input.b, 3u)], any(global0.zzx)), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 3u)], global2[_wgslsmith_index_u32(11686u, 3u)], global0.x))));
    var var_1 = !vec3<bool>(true, any(vec4<bool>(true, global0.x, any(vec4<bool>(false, global0.x, true, global0.x)), true)), global0.x);
    global1 = u_input.a.x;
    global1 = _wgslsmith_mod_i32(u_input.a.x, 2147483647i);
    return reverseBits(vec4<u32>(u_input.b, _wgslsmith_sub_u32(~global3[_wgslsmith_index_u32(reverseBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 16u)], 16u)]), 16u)], firstTrailingBit(firstLeadingBit(29159u))), _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(44184u, global3[_wgslsmith_index_u32(43970u, 16u)], global3[_wgslsmith_index_u32(22605u, 16u)], 4294967295u), vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(40671u, 16u)], u_input.b, u_input.b)), u_input.b), 0u), _wgslsmith_mod_u32(~_wgslsmith_mod_u32(u_input.b, global3[_wgslsmith_index_u32(u_input.b, 16u)]), 1u)));
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: bool) -> Struct_4 {
    global0 = arg_0.a;
    var var_0 = Struct_1(vec3<i32>(~u_input.a.x, u_input.a.x & _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x)), -abs(29139i)) ^ u_input.a.zyw, abs(func_3(Struct_2(-51100i, u_input.a.wx, Struct_1(u_input.a.zyz, vec2<u32>(5417u, 1u), vec2<i32>(0i, u_input.a.x), vec2<f32>(-620f, 944f), 4294967295u), u_input.a.x), 14677u, vec4<u32>(77687u, 0u, u_input.b, 115933u), arg_0.b.x) & vec2<u32>(countOneBits(u_input.b), abs(global3[_wgslsmith_index_u32(0u, 16u)]))), _wgslsmith_div_vec2_i32(-vec2<i32>(-2147483647i, u_input.a.x), abs(vec2<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a.x, u_input.a.x), vec3<i32>(52745i, -11746i, u_input.a.x))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1432f, _wgslsmith_f_op_f32(ceil(-1123f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(783f)), 785f))), min(_wgslsmith_dot_vec3_u32(reverseBits(abs(vec3<u32>(28673u, 4294967295u, global3[_wgslsmith_index_u32(u_input.b, 16u)]))), max(vec3<u32>(56213u, 38271u, 110167u) << (arg_0.b.wzz % vec3<u32>(32u)), vec3<u32>(27931u, 69647u, u_input.b))), ~u_input.b));
    let var_1 = Struct_2(var_0.c.x, ~firstTrailingBit(var_0.c), Struct_1(select(vec3<i32>(var_0.c.x, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), u_input.a.x), u_input.a.yzx, global2[_wgslsmith_index_u32(~5620u, 3u)] || any(vec2<bool>(false, false))), vec2<u32>(arg_0.b.x | abs(1u), 1u), u_input.a.yx ^ u_input.a.zx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.d - _wgslsmith_f_op_vec2_f32(var_0.d + vec2<f32>(1264f, var_0.d.x)))), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(firstLeadingBit(~78988u), 1u), 16u)]), min(-13923i, abs(1i)));
    let var_2 = _wgslsmith_sub_i32(abs(15669i), u_input.a.x);
    global3 = array<u32, 16>();
    return Struct_4(select(arg_0.a, arg_0.a, true), ~(~arg_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_4(!vec4<bool>(!global2[_wgslsmith_index_u32(67090u, 3u)], true, any(vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 3u)], global0.x, global0.x)), !global0.x), func_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-893f)))), _wgslsmith_f_op_f32(-474f - 1000f))), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 16u)], 3u)] || !(!global0.x), false);
    global0 = func_4(Struct_4(select(var_0.a, vec4<bool>(!global0.x, var_0.a.x, true, true), global2[_wgslsmith_index_u32(var_0.b.x, 3u)]), vec4<u32>(~1u, ~(global3[_wgslsmith_index_u32(9267u, 16u)] >> (u_input.b % 32u)), ~0u, 1u)), true, global0.x).a;
    var var_1 = max(var_0.b, var_0.b);
    let var_2 = Struct_3(Struct_1(vec3<i32>(1i, -u_input.a.x & u_input.a.x, u_input.a.x), ~(vec2<u32>(u_input.b, 67943u) & vec2<u32>(global3[_wgslsmith_index_u32(var_0.b.x, 16u)], 1u)) & (_wgslsmith_add_vec2_u32(vec2<u32>(30749u, 1u), var_0.b.wx) >> (vec2<u32>(u_input.b, 16542u) % vec2<u32>(32u))), u_input.a.yw, _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, -676f) + vec2<f32>(_wgslsmith_f_op_f32(trunc(-2061f)), -1000f)), ~4294967295u), _wgslsmith_dot_vec3_i32(u_input.a.wxw, _wgslsmith_clamp_vec3_i32((u_input.a.zzy & vec3<i32>(27892i, -31634i, 1i)) << (var_0.b.yxw % vec3<u32>(32u)), countOneBits(u_input.a.zxx), u_input.a.xwy)), Struct_2(2147483647i, _wgslsmith_mult_vec2_i32(u_input.a.ww, u_input.a.zw), Struct_1(~u_input.a.yww, ~min(var_0.b.yz, var_0.b.yx), u_input.a.yw, vec2<f32>(1000f, -216f), 4294967295u), _wgslsmith_dot_vec3_i32(u_input.a.yxw, vec3<i32>(countOneBits(u_input.a.x), u_input.a.x, ~(-1i)))), var_0.a.xy);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.c.c.d.x, _wgslsmith_f_op_f32(f32(-1f) * -371f))) - var_2.c.c.d.x);
    global0 = !(!select(!func_4(Struct_4(vec4<bool>(var_0.a.x, global0.x, false, global2[_wgslsmith_index_u32(36292u, 3u)]), var_0.b), true, false).a, select(select(vec4<bool>(false, global2[_wgslsmith_index_u32(78332u, 3u)], global2[_wgslsmith_index_u32(1u, 3u)], true), var_0.a, true), var_0.a, vec4<bool>(global0.x, var_0.a.x, var_0.a.x, true)), !(!vec4<bool>(global2[_wgslsmith_index_u32(15208u, 3u)], false, false, true))));
    var var_4 = Struct_1(vec3<i32>(-19552i, 15924i | (_wgslsmith_div_i32(2147483647i, u_input.a.x) ^ _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, var_2.c.b.x, -34336i, var_2.b))), u_input.a.x), vec2<u32>(~_wgslsmith_mod_u32(1u, var_2.a.b.x) << ((~var_2.c.c.b.x & _wgslsmith_div_u32(global3[_wgslsmith_index_u32(0u, 16u)], var_1.x)) % 32u), global3[_wgslsmith_index_u32(4294967295u, 16u)]), vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(-vec2<i32>(-2722i, u_input.a.x), u_input.a.xy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, var_3))))), global3[_wgslsmith_index_u32(72194u, 16u)]);
    var_4 = Struct_1(vec3<i32>(countOneBits(8757i), var_4.a.x, _wgslsmith_add_i32(var_4.c.x | 0i, 7703i)) & u_input.a.zxz, ~_wgslsmith_div_vec2_u32(~var_1.wx, vec2<u32>(max(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_1.x, 16u)], 16u)], var_0.b.x), 70579u)), u_input.a.ww, var_2.c.c.d, var_2.c.c.e);
    var var_5 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.c.x, vec3<i32>(105251i, -24108i, _wgslsmith_mult_i32(1i, 1i)), 28754u << (global3[_wgslsmith_index_u32(4294967295u, 16u)] % 32u));
}

