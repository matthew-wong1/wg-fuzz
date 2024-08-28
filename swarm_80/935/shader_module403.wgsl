struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 25>;

var<private> global1: vec3<bool> = vec3<bool>(true, true, true);

var<private> global2: array<Struct_2, 3>;

var<private> global3: vec4<bool> = vec4<bool>(false, true, false, true);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: f32) -> vec4<f32> {
    var var_0 = Struct_1(global3.xx, vec2<i32>(1i, -29435i), vec4<f32>(_wgslsmith_f_op_f32(abs(arg_1.x)), -609f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2690f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - arg_2)))), vec3<u32>(95402u, _wgslsmith_div_u32(firstLeadingBit(1u), firstLeadingBit(1u)), ~1u), !vec3<bool>(true, arg_0, global1.x));
    var var_1 = vec3<u32>(~(~var_0.d.x), firstLeadingBit(1u), ~(var_0.d.x & 31266u));
    let var_2 = vec2<bool>(arg_0, 4294967295u >= var_0.d.x);
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(var_0.c, var_0.c))))))));
}

fn func_2(arg_0: vec2<bool>, arg_1: bool, arg_2: bool) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(select(!vec2<bool>(false, arg_0.x), vec2<bool>(true, false), arg_0.x), vec2<i32>(-1i, firstLeadingBit(i32(-1i) * -1087i)), _wgslsmith_f_op_vec4_f32(func_3(arg_0.x, vec2<f32>(_wgslsmith_div_f32(-306f, -742f), -660f), -952f)), ~countOneBits(~vec3<u32>(37345u, 4294967295u, 4294967295u)), select(global3.xzz, vec3<bool>(any(vec4<bool>(true, false, arg_2, global1.x)), true, !global3.x), false)), Struct_1(global1.xy, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 3484i) ^ vec2<i32>(52812i, 2147483647i), vec2<i32>(-u_input.a, -1i >> (0u % 32u))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1017f, 590f, 581f, -447f), vec4<f32>(1028f, -468f, -1086f, -786f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1094f, 613f, 152f, 1241f))), vec4<f32>(-554f, _wgslsmith_f_op_f32(f32(-1f) * -690f), 517f, 500f)), reverseBits(vec3<u32>(1u, 1u, 1u)), vec3<bool>(true | !arg_0.x, !all(vec2<bool>(arg_1, false)), true)), -vec3<i32>(-1i, u_input.a, -5672i) >> (vec3<u32>(7565u, countOneBits(1u), _wgslsmith_add_u32(max(9817u, 1u), _wgslsmith_mod_u32(4294967295u, 1u))) % vec3<u32>(32u)), Struct_1(global1.yz, min(-reverseBits(vec2<i32>(u_input.a, 5552i)), vec2<i32>(-1i) * -vec2<i32>(1i, 41330i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-479f, 1407f, -227f, 787f))), vec4<f32>(-521f, _wgslsmith_f_op_f32(1166f + -2356f), -585f, -1572f)), ~max(~vec3<u32>(35448u, 49507u, 23350u), ~vec3<u32>(50952u, 75329u, 5638u)), global3.zwz));
    global3 = !vec4<bool>(all(!global1.xy), all(!(!arg_0)), all(global3.xyz), any(!vec4<bool>(false, arg_1, true, false)));
    global1 = !(!select(vec3<bool>(all(vec4<bool>(false, arg_0.x, arg_2, true)), true && arg_2, var_0.b.b.x == -2147483647i), !select(vec3<bool>(false, arg_2, false), var_0.a.e, arg_1), vec3<bool>(true, arg_0.x, any(vec4<bool>(var_0.a.e.x, true, true, false)))));
    var var_1 = ~vec2<u32>(var_0.d.d.x, var_0.b.d.x);
    var var_2 = vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_0.c.x), vec2<i32>(2147483647i, var_0.d.b.x)) << (_wgslsmith_mod_u32(1u, 4294967295u) % 32u), 2147483647i), u_input.a, var_0.b.b.x, -22353i) ^ max(-vec4<i32>(-u_input.a, u_input.a, i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(var_0.c, var_0.c)), vec4<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, var_0.a.b.x, 1i), vec3<i32>(u_input.a, 2147483647i, -27575i)), -1i, -26578i));
    return var_0.d;
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: f32, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = ~30414u;
    var var_1 = func_2(global1.zz, arg_3.x >= 982f, !global1.x);
    global0 = array<vec2<f32>, 25>();
    var var_2 = func_2(vec2<bool>(1084u > (27924u << (abs(var_1.d.x) % 32u)), _wgslsmith_mod_u32(~var_1.d.x, 725u) <= 0u), false, arg_2 < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)));
    var var_3 = ~4423i;
    return func_2(global1.yz, global1.x, any(select(!(!vec4<bool>(var_2.a.x, false, false, true)), vec4<bool>(arg_0 >= var_1.d.x, var_1.b.x >= 15398i, any(vec3<bool>(global1.x, global3.x, global1.x)), true && global3.x), any(vec2<bool>(false, var_2.e.x)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: vec2<bool>, arg_3: Struct_1) -> vec3<f32> {
    let var_0 = i32(-1i) * -2822i;
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(step(-1701f, -1311f)), _wgslsmith_f_op_f32(-432f * _wgslsmith_f_op_vec4_f32(func_3(true, global0[_wgslsmith_index_u32(4294967295u, 25u)], 1842f)).x))));
    var var_2 = ~1u ^ arg_3.d.x;
    var var_3 = global2[_wgslsmith_index_u32(~33434u, 3u)];
    let var_4 = func_2(select(select(!vec2<bool>(false, arg_3.a.x), func_1(4294967295u, _wgslsmith_f_op_f32(765f * 669f), _wgslsmith_f_op_f32(arg_3.c.x * var_3.b.c.x), func_1(var_3.a.d.x, -891f, -380f, vec3<f32>(-1071f, 158f, arg_3.c.x)).c.yww).e.xz, any(!arg_1.wyw)), func_2(vec2<bool>(arg_2.x, true), all(vec2<bool>(false, false)), !global3.x).e.yx, select(all(select(arg_1, vec4<bool>(var_3.a.e.x, false, true, arg_3.e.x), vec4<bool>(true, true, true, global3.x))), !any(arg_1), all(arg_3.e.zx))), true, all(arg_1));
    return vec3<f32>(_wgslsmith_f_op_f32(-func_1(var_4.d.x, 403f, 938f, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.c.x, var_4.c.x, 491f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-122f, 562f, -1502f) + arg_0))).c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x)))), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_div_f32(var_3.b.c.x, 1364f)));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec3<f32>) -> Struct_1 {
    global3 = vec4<bool>(all(func_2(!select(vec2<bool>(true, false), global1.zy, false), true, true).e.xx), any(!(!(!vec4<bool>(false, global3.x, true, global1.x)))), true, !(!(1i == firstLeadingBit(u_input.a))));
    var var_0 = vec4<i32>(31674i, -_wgslsmith_mult_i32(u_input.a | 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(69840i, u_input.a) >> (vec2<u32>(124227u, 4294967295u) % vec2<u32>(32u)))), -5448i, u_input.a);
    var var_1 = ~var_0.zw;
    let var_2 = func_1(_wgslsmith_mult_u32(abs(_wgslsmith_clamp_u32(func_1(0u, arg_0.x, -114f, vec3<f32>(arg_0.x, arg_1.x, arg_1.x)).d.x, min(55175u, 47939u), 4294967295u)), _wgslsmith_mod_u32(39878u, max(1u, 90927u))), -1360f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1623f, arg_1.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.x, arg_0.x))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(arg_1, select(!vec4<bool>(global1.x, true, global1.x, global1.x), !vec4<bool>(false, true, true, global1.x), !vec4<bool>(true, global1.x, global1.x, false)), vec2<bool>(global3.x && true, global3.x), func_1(0u, _wgslsmith_f_op_f32(abs(1966f)), _wgslsmith_f_op_f32(abs(-603f)), _wgslsmith_f_op_vec3_f32(arg_0.zzw * vec3<f32>(-385f, 742f, 2067f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -694f, 197f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, -2218f))) - vec3<f32>(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), arg_0.x, -344f))));
    var var_3 = var_2;
    return func_1(var_2.d.x, _wgslsmith_f_op_f32(exp2(var_3.c.x)), _wgslsmith_f_op_f32(exp2(arg_1.x)), var_2.c.xzz);
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_2.x * arg_2.x), arg_0) + _wgslsmith_f_op_vec2_f32(-arg_1.c.zz));
    var var_1 = arg_1;
    global1 = var_1.e;
    let var_2 = 0i;
    let var_3 = 4294967295u;
    return Struct_1(select(!func_1(var_3, -1455f, var_1.c.x, vec3<f32>(1039f, arg_1.c.x, 1394f)).a, func_5(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(arg_2, var_1.c))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(arg_1.c.zzw, arg_2.zyw), _wgslsmith_f_op_vec3_f32(step(arg_1.c.wxz, vec3<f32>(781f, var_1.c.x, arg_1.c.x)))))).e.zy, !(!(!global1.yx))), vec2<i32>(firstTrailingBit(min(-31387i, reverseBits(2147483647i))), ~(-2147483647i)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(331f, -302f, 1252f, arg_0))) + vec4<f32>(arg_1.c.x, 743f, arg_1.c.x, arg_2.x)), _wgslsmith_f_op_vec4_f32(-arg_2))), _wgslsmith_f_op_vec4_f32(-func_5(arg_2, arg_2.xxw).c), false)), var_1.d, func_5(_wgslsmith_f_op_vec4_f32(-arg_1.c), _wgslsmith_f_op_vec3_f32(arg_2.xyz + func_5(arg_1.c, _wgslsmith_f_op_vec3_f32(-var_1.c.zxz)).c.zxy)).e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -191f))), func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-734f, 566f, 545f, -1000f)), _wgslsmith_f_op_vec3_f32(func_4(vec3<f32>(1f, 1f, 1f), select(vec4<bool>(global1.x, global3.x, false, global3.x), vec4<bool>(true, false, global3.x, true), global3.x), !vec2<bool>(global1.x, global1.x), func_1(0u, 1497f, 824f, vec3<f32>(318f, 495f, -266f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1113f, func_5(vec4<f32>(-360f, 1693f, 1669f, 178f), vec3<f32>(-302f, 254f, 1524f)).c.x, _wgslsmith_f_op_f32(186f - -527f), _wgslsmith_f_op_f32(-464f - -654f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1724f, -1156f, -2166f, -1000f) - vec4<f32>(1000f, -748f, 1859f, 1000f)) - vec4<f32>(-1057f, -1779f, 408f, 146f))), false), func_1(1u, _wgslsmith_f_op_f32(-153f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(444f + -1000f) + -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -379f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(vec3<f32>(-742f, -1294f, -133f), vec4<bool>(global3.x, true, global3.x, false), vec2<bool>(global3.x, global3.x), Struct_1(vec2<bool>(true, global1.x), vec2<i32>(u_input.a, u_input.a), vec4<f32>(-179f, -1111f, 804f, 1068f), vec3<u32>(12631u, 67857u, 9730u), vec3<bool>(global1.x, false, global3.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-495f, -1000f, -1000f) + _wgslsmith_div_vec3_f32(vec3<f32>(-759f, -1430f, -1763f), vec3<f32>(-1216f, 688f, -1000f)))))), ~firstTrailingBit(-(~vec3<i32>(u_input.a, 21709i, 1i))), func_1(1u, _wgslsmith_f_op_f32(f32(-1f) * -537f), _wgslsmith_f_op_f32(1115f - -1316f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 457f, -740f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-124f, -1000f, 638f)))))));
    let var_1 = !(true == all(select(func_1(var_0.a.d.x, 1000f, -1176f, vec3<f32>(-410f, var_0.a.c.x, -427f)).a, var_0.d.a, vec2<bool>(global1.x, true))));
    var var_2 = var_0;
    var var_3 = global1.x;
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.c.x), _wgslsmith_f_op_f32(var_2.a.c.x - -384f), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -207f)))));
    var var_5 = 9829u == func_2(var_2.b.a, var_1, any(func_1(~var_0.d.d.x, _wgslsmith_f_op_f32(var_2.b.c.x - var_4.x), _wgslsmith_div_f32(var_2.b.c.x, -1015f), _wgslsmith_f_op_vec3_f32(-var_0.b.c.zyx)).a)).d.x;
    var var_6 = var_2.b;
    let var_7 = global3.x;
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_sub_vec4_i32(abs(-vec4<i32>(-21454i, u_input.a, -68177i, 1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, var_0.a.b.x, -29683i, -26308i), ~vec4<i32>(var_0.a.b.x, -31445i, 2147483647i, -1i))), ~vec4<i32>(var_0.c.x, -2147483647i, _wgslsmith_sub_i32(1i, var_6.b.x), ~(-2147483647i))), func_6(var_4.x, Struct_1(global3.wz, ~func_1(27786u, 434f, 257f, vec3<f32>(var_2.b.c.x, var_6.c.x, -185f)).b, var_0.b.c, _wgslsmith_div_vec3_u32(abs(var_2.d.d), var_6.d ^ vec3<u32>(var_2.a.d.x, 48035u, var_2.a.d.x)), select(!var_0.b.e, func_2(vec2<bool>(global3.x, var_0.a.e.x), global3.x, false).e, vec3<bool>(false, var_2.d.e.x, true))), var_0.a.c, var_1).d.x, firstTrailingBit(~(-vec4<i32>(-2147483647i, 1i, u_input.a, u_input.a)) >> (select(vec4<u32>(var_6.d.x, var_2.d.d.x, 1u, var_6.d.x) & vec4<u32>(1u, var_6.d.x, var_2.b.d.x, 33782u), vec4<u32>(var_2.b.d.x, var_2.d.d.x, 0u, var_0.d.d.x) | vec4<u32>(var_2.d.d.x, 1u, var_2.b.d.x, var_0.a.d.x), false == global1.x) % vec4<u32>(32u))));
}

