struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: bool,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(vec4<u32>(1u, 50993u, 1u, 85052u), Struct_1(vec2<bool>(true, true), -1986f, vec3<u32>(9670u, 1u, 0u), i32(-2147483648), 2147483647i), false, Struct_2(Struct_1(vec2<bool>(true, true), 1074f, vec3<u32>(0u, 54913u, 1u), 5787i, -53560i), Struct_1(vec2<bool>(true, false), 1173f, vec3<u32>(60352u, 0u, 63356u), -7395i, 1i), vec4<f32>(-108f, -570f, -1352f, -1061f)), Struct_1(vec2<bool>(true, true), -1048f, vec3<u32>(0u, 4294967295u, 55320u), -45587i, i32(-2147483648))), Struct_3(vec4<u32>(0u, 0u, 11045u, 4382u), Struct_1(vec2<bool>(true, true), 868f, vec3<u32>(7699u, 45395u, 0u), 31921i, 26290i), true, Struct_2(Struct_1(vec2<bool>(true, true), -330f, vec3<u32>(0u, 16211u, 4294967295u), -64800i, 1i), Struct_1(vec2<bool>(false, false), 1000f, vec3<u32>(18689u, 0u, 4294967295u), 2147483647i, -11986i), vec4<f32>(622f, 634f, 1000f, -730f)), Struct_1(vec2<bool>(false, false), 1000f, vec3<u32>(4294967295u, 52331u, 1u), 9716i, 2147483647i)), Struct_3(vec4<u32>(29375u, 1u, 0u, 85651u), Struct_1(vec2<bool>(false, false), -2456f, vec3<u32>(83716u, 4294967295u, 1u), i32(-2147483648), -1i), false, Struct_2(Struct_1(vec2<bool>(true, false), -1082f, vec3<u32>(4294967295u, 37533u, 4423u), i32(-2147483648), 55267i), Struct_1(vec2<bool>(false, false), -799f, vec3<u32>(78549u, 1u, 1u), -1i, 3672i), vec4<f32>(-166f, 794f, 1000f, 255f)), Struct_1(vec2<bool>(false, true), 859f, vec3<u32>(661u, 4294967295u, 1u), 0i, -1i)), Struct_3(vec4<u32>(1u, 58377u, 1u, 4530u), Struct_1(vec2<bool>(false, true), -1000f, vec3<u32>(4294967295u, 0u, 1u), -3945i, 1i), false, Struct_2(Struct_1(vec2<bool>(false, true), 341f, vec3<u32>(19618u, 4294967295u, 0u), 27733i, -16011i), Struct_1(vec2<bool>(true, true), 448f, vec3<u32>(1u, 41239u, 44405u), 4206i, 12496i), vec4<f32>(902f, 229f, 781f, -621f)), Struct_1(vec2<bool>(false, false), -1176f, vec3<u32>(1u, 31131u, 0u), 0i, 0i)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<i32> {
    global1 = array<Struct_3, 4>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1396f));
    global1 = array<Struct_3, 4>();
    global1 = array<Struct_3, 4>();
    var_0 = 1168f;
    return _wgslsmith_sub_vec2_i32(reverseBits(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-34476i, 11363i), vec2<i32>(-2147483647i, 14328i)), vec2<i32>(22960i, 2147483647i))), select(vec2<i32>(i32(-1i) * -21535i, 1i), vec2<i32>(-2147483647i, _wgslsmith_sub_i32(-3497i, 40391i)), vec2<bool>(true, true))) >> (u_input.c % vec2<u32>(32u));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    global0 = false;
    let var_0 = _wgslsmith_clamp_vec2_i32(-vec2<i32>(arg_2.a.d, _wgslsmith_mod_i32(0i, firstTrailingBit(18774i))), func_3(), vec2<i32>(func_3().x, arg_2.b.d));
    var var_1 = Struct_4(vec4<i32>(1i, firstTrailingBit(max(-14245i, firstLeadingBit(var_0.x))), -firstTrailingBit(-var_0.x), ~1i));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1090f), arg_2.b.b)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(arg_2.c.xx)))))) - arg_2.c.wz);
    let var_3 = arg_2;
    return var_1.a.x;
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_4(abs(vec4<i32>(_wgslsmith_div_i32(-1i, -12538i), _wgslsmith_dot_vec2_i32(vec2<i32>(31689i, 19958i), vec2<i32>(41367i, -25122i)), 1i, func_2(vec3<bool>(false, true, false), Struct_1(vec2<bool>(false, false), arg_2.x, vec3<u32>(u_input.b, 0u, u_input.b), -1i, 0i), Struct_2(Struct_1(vec2<bool>(false, false), arg_0.x, vec3<u32>(44663u, u_input.a, 0u), -1i, -1i), Struct_1(vec2<bool>(true, false), -1000f, vec3<u32>(1u, 0u, u_input.a), 222i, 94636i), vec4<f32>(-741f, -1624f, arg_1, 987f))))) ^ vec4<i32>(_wgslsmith_mod_i32(1i, firstTrailingBit(2147483647i)), firstTrailingBit(-1i), -_wgslsmith_add_i32(2147483647i, -2147483647i), ~(-2147483647i)));
    global1 = array<Struct_3, 4>();
    var var_1 = ~(~var_0.a.wy);
    var var_2 = !vec4<bool>(select(true, true, true | select(false, true, true)), !(_wgslsmith_f_op_f32(-1167f + arg_1) != _wgslsmith_f_op_f32(select(arg_1, arg_2.x, false))), any(vec2<bool>(true, true)), all(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), any(vec2<bool>(false, false)))));
    var var_3 = -(~vec4<i32>(_wgslsmith_mult_i32(var_0.a.x, var_1.x), _wgslsmith_mult_i32(var_0.a.x, var_0.a.x), firstLeadingBit(var_0.a.x), -57736i) | min(vec4<i32>(1i, var_1.x, ~var_1.x, 54392i), reverseBits(var_0.a)));
    return Struct_1(select(select(var_2.yw, vec2<bool>(true, var_2.x), false), var_2.xz, var_2.x), -304f, ~select(~(~vec3<u32>(48817u, 1u, u_input.a)), vec3<u32>(0u >> (u_input.a % 32u), ~4294967295u, u_input.b >> (1u % 32u)), select(!var_2.x, true, any(var_2.yy))), _wgslsmith_dot_vec2_i32(-(var_0.a.ww << (~u_input.c % vec2<u32>(32u))), var_0.a.xz >> (abs(~vec2<u32>(u_input.c.x, 1u)) % vec2<u32>(32u))), _wgslsmith_mod_i32(~(-(83086i >> (u_input.b % 32u))), var_3.x | -1i));
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    var var_0 = 0i;
    var_0 = -arg_0.e;
    var var_1 = vec2<f32>(1497f, arg_0.b);
    var var_2 = arg_0.e;
    let var_3 = arg_0.d;
    return Struct_2(arg_0, arg_0, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1109f))) * 1000f), arg_0.b, _wgslsmith_f_op_f32(-arg_0.b), -933f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -342f), -1046f, -569f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -1506f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(616f, 826f, -450f) + vec3<f32>(-734f, 1937f, -162f)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(529f, -729f, 361f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -414f), _wgslsmith_div_f32(1558f, 1301f), _wgslsmith_f_op_f32(-706f + -1409f)))));
    var var_1 = var_0;
    let var_2 = Struct_4(select(vec4<i32>(1i, _wgslsmith_sub_i32(~1i, var_0.b.d), func_2(select(vec3<bool>(var_1.a.a.x, true, var_1.b.a.x), vec3<bool>(true, false, true), true), func_4(var_0.b).a, var_0), 42118i), ~(~vec4<i32>(var_0.b.e, -30693i, 1985i, var_1.b.e)), ((var_0.a.a.x == var_1.b.a.x) && all(vec3<bool>(false, var_0.b.a.x, var_1.b.a.x))) | true));
    global1 = array<Struct_3, 4>();
    var var_3 = var_0.b.b;
    var var_4 = (var_1.a.c.yx << (var_0.b.c.xy % vec2<u32>(32u))) & vec2<u32>(~(~4294967295u), var_0.a.c.x << (u_input.a % 32u));
    var var_5 = Struct_1(vec2<bool>(var_1.b.a.x & !all(vec3<bool>(var_1.b.a.x, var_1.b.a.x, false)), false), func_4(var_0.b).b.b, var_1.a.c, func_4(func_1(_wgslsmith_f_op_vec3_f32(-var_1.c.zxx), _wgslsmith_f_op_f32(select(851f, var_1.b.b, false)), var_1.c.xyy)).b.e ^ 20011i, var_1.a.e);
    let var_6 = vec4<u32>(~var_1.a.c.x, _wgslsmith_mult_u32(var_0.a.c.x, 4294967295u), ~var_0.a.c.x, ~var_4.x);
    var var_7 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(48281u, var_1.b.d);
}

