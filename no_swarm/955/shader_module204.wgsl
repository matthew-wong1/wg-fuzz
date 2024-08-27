struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
    c: i32,
    d: u32,
}

struct Struct_5 {
    a: f32,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

var<private> global1: vec4<f32>;

var<private> global2: u32;

var<private> global3: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec4<i32>(-15648i, 2147483647i, 0i, 2147483647i), 1i, 1671f), Struct_1(vec4<i32>(1i, 0i, 1i, i32(-2147483648)), 0i, -708f), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), -7138i, 0i), i32(-2147483648), 730f), Struct_1(vec4<i32>(i32(-2147483648), -421i, 104820i, 44464i), -27456i, 518f), Struct_1(vec4<i32>(36474i, 0i, 41463i, 1i), 0i, -1487f), Struct_1(vec4<i32>(1i, -2967i, 23331i, 0i), 1i, -515f), Struct_1(vec4<i32>(1i, -1i, -1i, -1i), 38023i, -1000f), Struct_1(vec4<i32>(1i, -1183i, 20781i, 1i), 0i, 1599f), Struct_1(vec4<i32>(0i, 9881i, -45921i, i32(-2147483648)), 38143i, 650f), Struct_1(vec4<i32>(0i, -12341i, 21474i, -40775i), 0i, 190f), Struct_1(vec4<i32>(26286i, i32(-2147483648), i32(-2147483648), -22883i), -17993i, 660f), Struct_1(vec4<i32>(2147483647i, 2147483647i, -30291i, 1i), -1i, 156f), Struct_1(vec4<i32>(-30027i, -1i, -1i, -41593i), 45047i, -928f), Struct_1(vec4<i32>(10683i, i32(-2147483648), -35455i, i32(-2147483648)), -49868i, -270f), Struct_1(vec4<i32>(0i, 0i, 28300i, 1i), 33995i, 1043f), Struct_1(vec4<i32>(-1i, 23416i, -1i, -8274i), 0i, 979f), Struct_1(vec4<i32>(-17588i, 0i, i32(-2147483648), -1i), -28754i, -1282f), Struct_1(vec4<i32>(-3646i, 1i, -1i, -25810i), i32(-2147483648), -380f), Struct_1(vec4<i32>(-1i, 0i, 1i, 2147483647i), -349i, -1880f), Struct_1(vec4<i32>(-20205i, -29975i, -5143i, 2172i), -1i, 727f), Struct_1(vec4<i32>(69290i, 0i, 2147483647i, -1i), 0i, -708f), Struct_1(vec4<i32>(19463i, -16437i, 23468i, 0i), 13914i, 1019f), Struct_1(vec4<i32>(-42927i, 13046i, -55875i, -1i), -24280i, -980f));

var<private> global4: i32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool) -> i32 {
    var var_0 = _wgslsmith_mult_i32(-28108i, _wgslsmith_add_i32(-7970i, u_input.b) << (_wgslsmith_mult_u32(~u_input.d.x, 18111u) % 32u));
    var var_1 = _wgslsmith_f_op_vec3_f32(global1.xzz * vec3<f32>(-1815f, _wgslsmith_f_op_f32(f32(-1f) * -373f), global1.x));
    var_0 = max(~(~0i), reverseBits(_wgslsmith_mult_i32(~countOneBits(u_input.b), 944i)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 834f, _wgslsmith_f_op_f32(1191f - 1217f), var_1.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, global1.x, var_1.x, -1313f)) - vec4<f32>(-534f, -1000f, global1.x, var_1.x))))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(global1.x, global1.x)), _wgslsmith_f_op_f32(max(global1.x, global1.x)), _wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -775f)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1666f, -254f, 2026f, var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, -1632f, var_1.x)), select(vec4<bool>(global0.x, arg_0, true, global0.x), vec4<bool>(false, arg_0, false, true), arg_0)))))));
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_div_f32(var_2.x, -2180f))))));
    return ~1i;
}

fn func_2(arg_0: Struct_5) -> i32 {
    global3 = array<Struct_1, 23>();
    global4 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(arg_0.c.a, vec4<i32>(_wgslsmith_sub_i32(u_input.b, u_input.b), u_input.b, arg_0.c.a.x >> (24793u % 32u), -21683i)), -(~countOneBits(arg_0.d.a))) ^ u_input.b;
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1000f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1293f, -1860f), vec2<f32>(global1.x, global1.x))), _wgslsmith_f_op_vec2_f32(global1.ww * global1.zw), false)) * global1.xy) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(312f, _wgslsmith_f_op_f32(global1.x + 405f))))));
    let var_1 = ~_wgslsmith_dot_vec4_i32(-arg_0.d.a, _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, firstLeadingBit(21275i), u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 2147483647i, -58421i), vec3<i32>(-1i, -35524i, arg_0.c.b))), vec4<i32>(1i, 1i, 1i, 1i)));
    let var_2 = 7877i == (~firstTrailingBit(func_3(true)) << (21662u % 32u));
    return var_1;
}

fn func_4(arg_0: Struct_4, arg_1: u32) -> Struct_5 {
    var var_0 = Struct_4(!(!(_wgslsmith_f_op_f32(f32(-1f) * -892f) >= _wgslsmith_div_f32(global1.x, global1.x))), arg_0.b, arg_0.c, ~_wgslsmith_dot_vec4_u32(vec4<u32>(44666u, min(arg_0.d, u_input.c), _wgslsmith_sub_u32(1u, arg_0.d), _wgslsmith_dot_vec3_u32(vec3<u32>(110016u, 62836u, 0u), vec3<u32>(1u, 0u, arg_1))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.d, u_input.c, arg_0.d, 1u), vec4<u32>(1u, arg_1, 2028u, 44108u))));
    let var_1 = false;
    let var_2 = select(!arg_0.b, select(select(select(vec4<bool>(false, arg_0.a, true, arg_0.b.x), !var_0.b, any(vec4<bool>(true, true, var_1, false))), !vec4<bool>(true, arg_0.b.x, global0.x, false), all(vec3<bool>(true, false, false))), arg_0.b, !(!(!var_1))), global0.x);
    global0 = select(select(var_0.b.yzx, arg_0.b.zyx, !global0.x), vec3<bool>(all(!var_2.wz), all(!select(vec4<bool>(var_1, false, false, true), vec4<bool>(false, true, false, var_0.a), global0.x)), true), !(!(!var_1)));
    let var_3 = vec4<u32>(~4294967295u, countOneBits(1u), ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.d, 22900u), u_input.d), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 43843u), vec3<u32>(0u, 1u, 0u)), u_input.c), _wgslsmith_sub_u32(min(55103u, 18740u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, 4294967295u), vec3<u32>(14749u, 0u, arg_1)))), _wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(36661u, arg_1, u_input.d.x, 53871u), vec4<u32>(9469u, arg_1, arg_1, 1u))) | _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 3012u, 20966u, 15018u), abs(vec4<u32>(u_input.c, arg_0.d, 22963u, arg_1))), reverseBits(reverseBits(vec4<u32>(0u, u_input.d.x, 28752u, 39918u)))));
    return Struct_5(-1088f, select(vec4<bool>(true, true, ~var_0.d < _wgslsmith_clamp_u32(63416u, 1u, var_3.x), true), vec4<bool>(true, !all(vec3<bool>(global0.x, global0.x, var_1)), all(vec2<bool>(true, true)), var_1), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x))) >= global1.x), global3[_wgslsmith_index_u32(var_0.d, 23u)], Struct_1(~vec4<i32>(~var_0.c, i32(-1i) * -4285i, _wgslsmith_add_i32(var_0.c, -1i), arg_0.c << (24381u % 32u)), 6840i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global1.x)), global1.x)));
}

fn func_1(arg_0: f32) -> Struct_5 {
    var var_0 = -570f;
    let var_1 = global3[_wgslsmith_index_u32(2834u, 23u)];
    global4 = u_input.b;
    global0 = vec3<bool>(any(!select(!global0.xy, !vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x))), global0.x, false);
    global3 = array<Struct_1, 23>();
    return func_4(Struct_4(global0.x && (all(vec3<bool>(global0.x, true, true)) || false), vec4<bool>(true, (global0.x | false) | any(vec2<bool>(global0.x, global0.x)), ~43946i < func_2(Struct_5(396f, vec4<bool>(global0.x, global0.x, true, global0.x), Struct_1(vec4<i32>(u_input.b, var_1.a.x, var_1.a.x, var_1.a.x), -21466i, -2378f), global3[_wgslsmith_index_u32(u_input.a.x, 23u)])), global0.x), _wgslsmith_clamp_i32(1i, -1i, _wgslsmith_mod_i32(var_1.b, 1i >> (0u % 32u))), 0u), u_input.d.x ^ ~countOneBits(4294967295u));
}

fn func_5(arg_0: Struct_5) -> f32 {
    var var_0 = arg_0.d.c;
    var_0 = global1.x;
    global2 = 1u;
    var var_1 = _wgslsmith_f_op_f32(818f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.x)))));
    var var_2 = Struct_4(global0.x, !select(!(!vec4<bool>(arg_0.b.x, global0.x, arg_0.b.x, arg_0.b.x)), arg_0.b, true), arg_0.c.a.x, u_input.c);
    return _wgslsmith_f_op_f32(-global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec3<bool>(any(vec4<bool>(false, global0.x, global0.x, false)), true, global0.x));
    global1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global1.x * global1.x), -601f, global1.x, 1000f))));
    global1 = vec4<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_1(-643f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + 143f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.x + _wgslsmith_div_f32(global1.x, 487f)))) - _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - -638f))));
    var var_1 = Struct_4(global0.x, !(!(!vec4<bool>(true, global0.x, false, var_0.x))), 1i, ~u_input.c);
    var_1 = Struct_4(false, !(!vec4<bool>(!var_0.x, global0.x, false, false)), ~(~_wgslsmith_clamp_i32(-13443i, u_input.b, u_input.b >> (u_input.c % 32u))), u_input.c);
    let var_2 = Struct_4(func_4(Struct_4(!(global1.x <= 164f), func_4(Struct_4(false, var_1.b, var_1.c, u_input.a.x), var_1.d).b, select(~var_1.c, 0i, all(vec3<bool>(var_1.a, var_1.b.x, true))), 20909u), ~(~4294967295u)).b.x, var_1.b, min(0i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(-30393i, u_input.b), vec2<i32>(var_1.c, 2147483647i)), 1i)), (_wgslsmith_dot_vec4_u32(min(vec4<u32>(var_1.d, var_1.d, var_1.d, var_1.d), vec4<u32>(1332u, 1u, 41226u, u_input.a.x)), vec4<u32>(var_1.d, 4294967295u, var_1.d, 12635u)) | u_input.c) & _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 63349u, u_input.a.x) << (~vec3<u32>(61594u, 1122u, 1u) % vec3<u32>(32u)), ~vec3<u32>(u_input.a.x, u_input.c, var_1.d)));
    let var_3 = Struct_3(vec2<bool>(func_4(Struct_4(false, vec4<bool>(global0.x, var_1.b.x, global0.x, true), var_1.c ^ var_2.c, 1u), u_input.c).b.x, select(!global0.x, true, var_1.a) & (!var_2.b.x & any(global0.xx))), 257f);
    let var_4 = global1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(abs(~(var_2.d & var_1.d)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, abs(var_1.d), var_1.d), ~vec3<u32>(27047u, u_input.d.x, u_input.d.x))), ~min(countOneBits(u_input.a | u_input.d), u_input.a), vec3<i32>(-1i) * -vec3<i32>(abs(-24542i), u_input.b, func_3(var_2.b.x)));
}

