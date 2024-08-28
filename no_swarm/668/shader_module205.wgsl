struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: i32,
    d: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: Struct_4,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_4, 31> = array<Struct_4, 31>(Struct_4(Struct_3(vec4<bool>(true, false, true, true), Struct_1(true, vec3<i32>(2147483647i, 2147483647i, -1i), true)), Struct_2(Struct_1(true, vec3<i32>(22689i, i32(-2147483648), 0i), false), true, 18631i), -8633i, -427f), Struct_4(Struct_3(vec4<bool>(true, false, false, true), Struct_1(false, vec3<i32>(2147483647i, i32(-2147483648), 2147483647i), false)), Struct_2(Struct_1(true, vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), false), false, -54621i), 0i, 1223f), Struct_4(Struct_3(vec4<bool>(true, false, false, true), Struct_1(true, vec3<i32>(i32(-2147483648), 2147483647i, -8794i), true)), Struct_2(Struct_1(true, vec3<i32>(-34854i, 2147483647i, -22974i), false), false, 16954i), -20401i, 135f), Struct_4(Struct_3(vec4<bool>(false, false, false, false), Struct_1(true, vec3<i32>(10739i, 1i, 0i), false)), Struct_2(Struct_1(false, vec3<i32>(-1i, 0i, -1i), false), false, -1062i), 2147483647i, -420f), Struct_4(Struct_3(vec4<bool>(false, true, false, true), Struct_1(true, vec3<i32>(-28845i, -1i, 2147483647i), false)), Struct_2(Struct_1(false, vec3<i32>(18619i, 0i, i32(-2147483648)), false), true, -1i), 36139i, -2523f), Struct_4(Struct_3(vec4<bool>(true, false, false, false), Struct_1(false, vec3<i32>(58957i, 51148i, i32(-2147483648)), true)), Struct_2(Struct_1(false, vec3<i32>(50653i, i32(-2147483648), -5322i), false), false, 8584i), 24341i, -1334f), Struct_4(Struct_3(vec4<bool>(false, true, true, false), Struct_1(true, vec3<i32>(0i, -31287i, -71960i), true)), Struct_2(Struct_1(false, vec3<i32>(2147483647i, 1i, 2147483647i), true), false, -1i), 4076i, 293f), Struct_4(Struct_3(vec4<bool>(false, false, true, true), Struct_1(true, vec3<i32>(52744i, 2147483647i, 1i), true)), Struct_2(Struct_1(true, vec3<i32>(-46920i, 0i, 67904i), false), true, 1i), i32(-2147483648), -296f), Struct_4(Struct_3(vec4<bool>(true, true, true, false), Struct_1(true, vec3<i32>(67125i, 1i, -28265i), false)), Struct_2(Struct_1(false, vec3<i32>(1i, i32(-2147483648), -27007i), true), true, -21715i), -1i, 876f), Struct_4(Struct_3(vec4<bool>(false, false, false, true), Struct_1(false, vec3<i32>(-5723i, i32(-2147483648), -1i), false)), Struct_2(Struct_1(false, vec3<i32>(-1i, -1i, 1i), true), true, i32(-2147483648)), 1i, 762f), Struct_4(Struct_3(vec4<bool>(false, false, false, false), Struct_1(true, vec3<i32>(53573i, 2147483647i, 1i), true)), Struct_2(Struct_1(true, vec3<i32>(2147483647i, 1i, -26110i), true), false, 0i), 1i, 312f), Struct_4(Struct_3(vec4<bool>(true, true, false, false), Struct_1(true, vec3<i32>(55465i, -1984i, 36610i), false)), Struct_2(Struct_1(true, vec3<i32>(-2339i, -71422i, 0i), true), true, -7533i), 2147483647i, -553f), Struct_4(Struct_3(vec4<bool>(false, true, true, true), Struct_1(false, vec3<i32>(i32(-2147483648), 29352i, i32(-2147483648)), true)), Struct_2(Struct_1(false, vec3<i32>(2147483647i, 2147483647i, 5196i), true), false, 5584i), -55960i, -459f), Struct_4(Struct_3(vec4<bool>(false, true, true, false), Struct_1(false, vec3<i32>(-1i, i32(-2147483648), 0i), false)), Struct_2(Struct_1(true, vec3<i32>(-1i, -3203i, i32(-2147483648)), false), true, 26462i), 56283i, 1950f), Struct_4(Struct_3(vec4<bool>(true, true, true, true), Struct_1(true, vec3<i32>(-46353i, -68471i, 2147483647i), true)), Struct_2(Struct_1(true, vec3<i32>(18450i, -30478i, -56498i), false), false, 0i), 2147483647i, -1982f), Struct_4(Struct_3(vec4<bool>(false, true, false, false), Struct_1(false, vec3<i32>(27561i, 2147483647i, -1i), false)), Struct_2(Struct_1(true, vec3<i32>(5111i, 2147483647i, i32(-2147483648)), true), false, 2147483647i), 0i, -920f), Struct_4(Struct_3(vec4<bool>(true, true, true, false), Struct_1(true, vec3<i32>(2147483647i, 0i, -39651i), true)), Struct_2(Struct_1(false, vec3<i32>(1i, 6128i, 0i), true), false, 2147483647i), -29826i, -1000f), Struct_4(Struct_3(vec4<bool>(false, false, true, true), Struct_1(true, vec3<i32>(2147483647i, 2147483647i, 1i), true)), Struct_2(Struct_1(true, vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), true), false, -1i), -1i, -446f), Struct_4(Struct_3(vec4<bool>(false, true, true, true), Struct_1(false, vec3<i32>(-1i, -61300i, 1i), true)), Struct_2(Struct_1(false, vec3<i32>(-18389i, i32(-2147483648), -1i), false), false, 27796i), 48701i, -2546f), Struct_4(Struct_3(vec4<bool>(true, false, false, false), Struct_1(false, vec3<i32>(-14224i, -41609i, 2970i), false)), Struct_2(Struct_1(false, vec3<i32>(-10093i, -9008i, 32612i), false), false, 1i), 0i, 173f), Struct_4(Struct_3(vec4<bool>(false, false, true, true), Struct_1(false, vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), false)), Struct_2(Struct_1(false, vec3<i32>(23799i, -32268i, 0i), false), true, -1i), 1i, 293f), Struct_4(Struct_3(vec4<bool>(true, false, true, true), Struct_1(true, vec3<i32>(2147483647i, 0i, 35955i), true)), Struct_2(Struct_1(false, vec3<i32>(2147483647i, -31164i, 14469i), false), false, -1i), 38643i, 708f), Struct_4(Struct_3(vec4<bool>(true, false, false, true), Struct_1(false, vec3<i32>(-23019i, 76489i, 0i), true)), Struct_2(Struct_1(false, vec3<i32>(-18002i, -1i, -1i), true), true, -28717i), 59999i, 1982f), Struct_4(Struct_3(vec4<bool>(true, false, true, false), Struct_1(true, vec3<i32>(0i, 32112i, 49445i), false)), Struct_2(Struct_1(true, vec3<i32>(67191i, 29613i, 1i), true), true, 76869i), 2147483647i, -671f), Struct_4(Struct_3(vec4<bool>(false, false, true, true), Struct_1(false, vec3<i32>(2147483647i, 11972i, 0i), true)), Struct_2(Struct_1(false, vec3<i32>(0i, -32496i, i32(-2147483648)), false), true, 1i), 32406i, 1113f), Struct_4(Struct_3(vec4<bool>(false, false, true, true), Struct_1(false, vec3<i32>(-17822i, 37697i, 22885i), false)), Struct_2(Struct_1(true, vec3<i32>(-17172i, -25690i, 45208i), false), false, i32(-2147483648)), -39220i, -444f), Struct_4(Struct_3(vec4<bool>(false, false, false, false), Struct_1(true, vec3<i32>(i32(-2147483648), 84965i, -28754i), false)), Struct_2(Struct_1(true, vec3<i32>(0i, 25698i, i32(-2147483648)), true), true, -63752i), 2147483647i, 3250f), Struct_4(Struct_3(vec4<bool>(true, true, false, false), Struct_1(false, vec3<i32>(36690i, -27932i, 36974i), true)), Struct_2(Struct_1(true, vec3<i32>(2147483647i, 2147483647i, 0i), true), false, i32(-2147483648)), -10452i, 131f), Struct_4(Struct_3(vec4<bool>(false, true, false, false), Struct_1(true, vec3<i32>(1i, 43991i, i32(-2147483648)), true)), Struct_2(Struct_1(true, vec3<i32>(i32(-2147483648), 20207i, 17638i), false), false, 0i), -1i, -343f), Struct_4(Struct_3(vec4<bool>(true, true, false, true), Struct_1(false, vec3<i32>(-17872i, 22365i, i32(-2147483648)), false)), Struct_2(Struct_1(false, vec3<i32>(-82055i, -30482i, 2147483647i), false), true, 2147483647i), -37376i, 1000f), Struct_4(Struct_3(vec4<bool>(false, false, false, false), Struct_1(true, vec3<i32>(19445i, 2147483647i, 2147483647i), true)), Struct_2(Struct_1(true, vec3<i32>(i32(-2147483648), -56443i, i32(-2147483648)), false), false, -45517i), 0i, 280f));

var<private> global2: Struct_3;

var<private> global3: array<vec3<bool>, 10>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(327f, arg_0.x, -282f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, 1000f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.xzz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.zyx * vec3<f32>(137f, arg_0.x, arg_0.x)))))));
    let var_1 = ~arg_1.x;
    global0 = _wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(598f + _wgslsmith_div_f32(-798f, 635f)) - var_0.x), 516f));
    let var_2 = 4294967295u;
    let var_3 = 0u;
    return firstLeadingBit(global2.b.b.x);
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: i32) -> Struct_1 {
    var var_0 = u_input.a;
    var var_1 = abs(countOneBits(~abs(vec3<u32>(1u, var_0.x, u_input.a.x) >> (vec3<u32>(u_input.a.x, 96405u, var_0.x) % vec3<u32>(32u)))));
    var_0 = ~firstLeadingBit(u_input.a);
    var var_2 = _wgslsmith_f_op_f32(-1233f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1763f))));
    var var_3 = Struct_4(Struct_3(global2.a, global2.b), Struct_2(Struct_1(select(var_0.x, var_0.x, global2.a.x) != ~4294967295u, vec3<i32>(countOneBits(arg_2), -30896i, 5943i), true), !global2.b.c, global2.b.b.x & func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -2406f, arg_1)), vec4<u32>(51590u, var_0.x, 1u, var_0.x))), 6541i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(494f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(2084f * 1558f)), _wgslsmith_f_op_f32(-424f * 1000f)))));
    return Struct_1(any(!global3[_wgslsmith_index_u32(var_0.x, 10u)]) || var_3.b.a.c, global2.b.b << (_wgslsmith_add_vec3_u32(~(vec3<u32>(41939u, 33823u, var_0.x) >> (vec3<u32>(u_input.a.x, u_input.a.x, 36000u) % vec3<u32>(32u))), ~(~vec3<u32>(49099u, 0u, 24591u))) % vec3<u32>(32u)), select(!((false | global2.b.a) & global2.b.c), any(vec2<bool>(var_3.b.b, global2.b.b.x <= arg_2)), all(select(vec3<bool>(false, global2.b.a, global2.b.a), var_3.a.a.yyy, global2.a.x != var_3.b.b))));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec3<f32>) -> i32 {
    let var_0 = !(!global3[_wgslsmith_index_u32(abs(u_input.a.x), 10u)]);
    global2 = Struct_3(global2.a, func_2(256f, arg_2.x, abs(arg_1)));
    var var_1 = vec3<bool>(!((-1i <= arg_1) || true), true, true);
    let var_2 = global2.a.xy;
    let var_3 = select(var_0, select(global3[_wgslsmith_index_u32(~abs(_wgslsmith_add_u32(4294967295u, u_input.a.x)), 10u)], select(select(select(global3[_wgslsmith_index_u32(4677u, 10u)], var_0, vec3<bool>(var_0.x, var_2.x, var_1.x)), var_0, false), select(global2.a.zzz, !vec3<bool>(true, var_1.x, true), vec3<bool>(false, false, global2.b.c)), var_0), false), var_2.x);
    return ~global2.b.b.x | 38046i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -vec4<i32>(min(25330i, -global2.b.b.x) | -1i, _wgslsmith_div_i32(~(-global2.b.b.x), global2.b.b.x), func_1(_wgslsmith_add_i32(global2.b.b.x | 24056i, 26352i), ~global2.b.b.x, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-129f, 1061f, -119f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 837f, 272f)), true))), reverseBits(global2.b.b.x) << (~(~34501u) % 32u));
    let var_1 = global2.a.x;
    let var_2 = global2.b;
    global0 = _wgslsmith_div_f32(241f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1289f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-394f, _wgslsmith_f_op_f32(trunc(1706f)))))));
    global2 = Struct_3(global2.a, global2.b);
    var var_3 = 38159i;
    global3 = array<vec3<bool>, 10>();
    let var_4 = Struct_5(Struct_4(Struct_3(vec4<bool>(global2.a.x, global2.b.c != global2.b.a, !global2.a.x, all(vec2<bool>(global2.b.c, false))), func_2(683f, _wgslsmith_f_op_f32(-105f + -883f), 11108i)), Struct_2(global2.b, !any(global2.a.xy), ~(19721i >> (1u % 32u))), ~_wgslsmith_mod_i32(global2.b.b.x, 2147483647i << (u_input.a.x % 32u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(228f))))), Struct_2(Struct_1(var_2.a, ~firstTrailingBit(vec3<i32>(0i, global2.b.b.x, 0i)), false), var_2.a, -(~(2147483647i >> (u_input.a.x % 32u)))), Struct_4(Struct_3(select(select(global2.a, vec4<bool>(false, true, true, true), vec4<bool>(true, var_2.a, var_2.a, true)), global2.a, false), Struct_1(var_2.c, global2.b.b, !global2.a.x)), Struct_2(func_2(_wgslsmith_div_f32(288f, -1244f), _wgslsmith_f_op_f32(-1381f - -284f), var_2.b.x ^ -3941i), _wgslsmith_f_op_f32(max(1201f, 826f)) > _wgslsmith_f_op_f32(select(1173f, -162f, false)), _wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, var_0.x, 34351i), _wgslsmith_add_vec3_i32(vec3<i32>(var_2.b.x, 31310i, global2.b.b.x), vec3<i32>(0i, 21476i, global2.b.b.x)))), ~3494i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(366f + 1078f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1097f), -1906f))), global2.b, ~_wgslsmith_mult_i32(_wgslsmith_div_i32(func_1(global2.b.b.x, 0i, vec3<f32>(-465f, 507f, 1485f)), _wgslsmith_dot_vec2_i32(global2.b.b.yy, vec2<i32>(var_2.b.x, 19461i))), i32(-1i) * -var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(-2065f, var_0.x, 21679i);
}

