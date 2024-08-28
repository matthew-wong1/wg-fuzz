struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec4<u32>,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
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

var<private> global0: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(392f, false, vec4<u32>(4294967295u, 0u, 52827u, 1u), vec2<f32>(-370f, -692f), vec2<i32>(0i, 18617i)), Struct_3(-880f, false, vec4<u32>(86361u, 1u, 23863u, 1u), vec2<f32>(846f, 564f), vec2<i32>(6571i, 30181i)), Struct_3(990f, true, vec4<u32>(110725u, 0u, 109753u, 1u), vec2<f32>(596f, 3636f), vec2<i32>(2147483647i, -318i)), Struct_3(280f, true, vec4<u32>(4294967295u, 0u, 6453u, 1u), vec2<f32>(-378f, 703f), vec2<i32>(i32(-2147483648), -35719i)), Struct_3(634f, true, vec4<u32>(53409u, 26012u, 4294967295u, 18429u), vec2<f32>(742f, -1453f), vec2<i32>(-18770i, -23575i)), Struct_3(1436f, false, vec4<u32>(13753u, 1u, 35139u, 1u), vec2<f32>(-1722f, -1795f), vec2<i32>(2147483647i, i32(-2147483648))), Struct_3(-961f, false, vec4<u32>(4294967295u, 0u, 12164u, 75273u), vec2<f32>(252f, 1359f), vec2<i32>(-32292i, 0i)), Struct_3(1061f, false, vec4<u32>(20344u, 40578u, 4294967295u, 4294967295u), vec2<f32>(-1238f, -883f), vec2<i32>(1i, i32(-2147483648))), Struct_3(-164f, true, vec4<u32>(4294967295u, 0u, 4294967295u, 10078u), vec2<f32>(786f, -567f), vec2<i32>(-34453i, -40506i)), Struct_3(578f, true, vec4<u32>(0u, 54791u, 4294967295u, 0u), vec2<f32>(-263f, 907f), vec2<i32>(47987i, -1i)), Struct_3(-395f, false, vec4<u32>(61653u, 36212u, 1u, 48841u), vec2<f32>(1000f, 141f), vec2<i32>(1i, 0i)), Struct_3(1000f, false, vec4<u32>(44025u, 0u, 4294967295u, 1981u), vec2<f32>(1570f, -331f), vec2<i32>(43997i, -3505i)), Struct_3(659f, false, vec4<u32>(1u, 0u, 1u, 1u), vec2<f32>(-141f, -1172f), vec2<i32>(-25252i, i32(-2147483648))), Struct_3(-760f, true, vec4<u32>(83450u, 4294967295u, 33068u, 59070u), vec2<f32>(-2947f, -2646f), vec2<i32>(i32(-2147483648), -12284i)), Struct_3(-1225f, false, vec4<u32>(43243u, 0u, 1u, 4294967295u), vec2<f32>(354f, 1000f), vec2<i32>(-11513i, 39859i)), Struct_3(947f, true, vec4<u32>(1u, 0u, 40059u, 1u), vec2<f32>(763f, -200f), vec2<i32>(41223i, 2867i)), Struct_3(1473f, true, vec4<u32>(4294967295u, 1u, 3122u, 60366u), vec2<f32>(-370f, -660f), vec2<i32>(2147483647i, -1i)), Struct_3(455f, false, vec4<u32>(48550u, 8585u, 0u, 10377u), vec2<f32>(-810f, 1321f), vec2<i32>(21748i, i32(-2147483648))), Struct_3(-277f, true, vec4<u32>(25466u, 51105u, 84034u, 33985u), vec2<f32>(1000f, -128f), vec2<i32>(6360i, 2147483647i)));

var<private> global1: bool = true;

var<private> global2: vec3<i32> = vec3<i32>(i32(-2147483648), -10159i, 0i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> i32 {
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(217f + -660f), _wgslsmith_f_op_f32(floor(-971f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1329f, 839f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(458f, -3117f) + vec2<f32>(1815f, -1353f))))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-1407f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x)))));
    let var_2 = Struct_1(arg_0.a.a, any(select(vec2<bool>(true, true), vec2<bool>(global2.x <= -1i, arg_0.a.b), all(vec3<bool>(true, true, true)))), _wgslsmith_add_vec3_i32(arg_0.a.c, arg_0.a.c), u_input.a);
    let var_3 = _wgslsmith_dot_vec2_u32(vec2<u32>(87292u, 0u), vec2<u32>(~(~1u), 1u));
    return 58462i & ~abs(firstLeadingBit(u_input.b.x));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: vec4<i32>) -> f32 {
    global0 = array<Struct_3, 19>();
    global2 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-u_input.b.x, _wgslsmith_clamp_i32(func_3(Struct_2(arg_2), _wgslsmith_dot_vec4_u32(vec4<u32>(54624u, 0u, arg_2.a.x, arg_1), vec4<u32>(u_input.a.x, u_input.a.x, 1u, arg_1))), u_input.b.x, arg_3.x), countOneBits(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(arg_2.c.x, -35195i, arg_3.x), _wgslsmith_sub_i32(u_input.b.x, 0i)))), -vec3<i32>(global2.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(7580i, -3025i, -2147483647i, arg_3.x), arg_3), _wgslsmith_clamp_i32(arg_2.c.x, 2147483647i, global2.x)), 48853i), ~arg_2.c);
    global0 = array<Struct_3, 19>();
    let var_0 = arg_3;
    let var_1 = arg_1;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1586f, 1987f) - 1f) + -1000f) * _wgslsmith_f_op_f32(f32(-1f) * -957f))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~countOneBits(arg_1.a.x >> (21424u % 32u)), u_input.a.x) & u_input.a.x, 19u)];
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-481f))), _wgslsmith_f_op_f32(777f - var_0.d.x), 15162i > _wgslsmith_add_i32(firstTrailingBit(39759i) & 2147483647i, 0i)));
    var_1 = _wgslsmith_f_op_f32(func_2(!(!arg_2), ~var_0.c.x | ((~1u << (0u % 32u)) << (_wgslsmith_div_u32(19965u, ~8937u) % 32u)), arg_1, vec4<i32>(0i, 51696i, u_input.b.x, -1i) ^ max(-(~vec4<i32>(u_input.b.x, var_0.e.x, -22122i, u_input.b.x)), vec4<i32>(var_0.e.x, arg_1.c.x, -2147483647i, 13213i))));
    let var_2 = select(true, !(!(!any(vec4<bool>(false, arg_2, var_0.b, arg_0.b)))), arg_1.b);
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-134f, var_0.a, 1631f, var_0.d.x), vec4<f32>(var_0.d.x, -1000f, var_0.d.x, var_0.a)))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-974f - var_0.d.x), _wgslsmith_f_op_f32(step(818f, var_0.a)))), -2162f, 846f, -443f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, -159f, -207f, -1376f) * vec4<f32>(var_0.a, var_0.d.x, 1249f, var_0.a)), vec4<f32>(672f, var_0.d.x, 699f, var_0.a), false | var_0.b))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1465f), var_0.a, _wgslsmith_f_op_f32(-var_0.a), var_0.d.x) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1110f, var_0.a, 1099f, 1455f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.d.x, 387f, 906f, var_0.a)))))), vec4<bool>(all(vec4<bool>(true, any(vec2<bool>(arg_2, true)), var_0.e.x >= 78484i, var_0.d.x <= var_0.a)), arg_1.b, ~_wgslsmith_add_u32(0u, arg_0.d.x) != 0u, var_0.b)));
    return ~min(u_input.a.x, 1u);
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec4<u32>) -> f32 {
    let var_0 = global2.x;
    var var_1 = arg_1.e.x;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2783f - arg_1.a), -1098f)))), _wgslsmith_f_op_f32(-arg_0));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * -171f), _wgslsmith_f_op_f32(min(833f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) + -718f)))));
    let var_4 = Struct_2(Struct_1(~arg_2.wx, arg_1.b, (-vec3<i32>(u_input.b.x, arg_1.e.x, arg_1.e.x) | (vec3<i32>(global2.x, u_input.b.x, u_input.b.x) >> (vec3<u32>(arg_1.c.x, arg_1.c.x, 0u) % vec3<u32>(32u)))) << (~vec3<u32>(74507u, arg_1.c.x, arg_1.c.x) % vec3<u32>(32u)), ~arg_1.c.wzw));
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(852f, -947f)) * _wgslsmith_f_op_f32(757f + 149f)))), global0[_wgslsmith_index_u32(u_input.a.x, 19u)], _wgslsmith_clamp_vec4_u32(~(vec4<u32>(1u, 41074u, 4294967295u, 1u) << (~vec4<u32>(1u, u_input.a.x, u_input.a.x, 1u) % vec4<u32>(32u))), vec4<u32>(~max(u_input.a.x, 4102u), 7689u, _wgslsmith_mod_u32(~43275u, ~1u), reverseBits(u_input.a.x)), vec4<u32>(0u, firstTrailingBit(func_1(Struct_1(u_input.a.yz, true, vec3<i32>(-1i, u_input.b.x, global2.x), vec3<u32>(u_input.a.x, 0u, 123793u)), Struct_1(u_input.a.yz, false, vec3<i32>(global2.x, 1i, u_input.b.x), vec3<u32>(u_input.a.x, 1u, 36199u)), false)), ~u_input.a.x, func_1(Struct_1(u_input.a.xy, true, vec3<i32>(-55938i, 37591i, u_input.b.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), Struct_1(vec2<u32>(u_input.a.x, 1u), false, vec3<i32>(-2147483647i, u_input.b.x, global2.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), true)))));
    global2 = ~(~(~firstTrailingBit(countOneBits(vec3<i32>(global2.x, u_input.b.x, u_input.b.x)))));
    var var_1 = 1018f;
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1258f, 2099f, 844f)) - vec3<f32>(1220f, _wgslsmith_f_op_f32(2456f - -366f), _wgslsmith_div_f32(-552f, 174f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-832f, -1568f, 150f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-800f, 1296f, -177f) - vec3<f32>(1036f, 787f, -321f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1030f, 712f) - vec3<f32>(669f, 356f, 597f)))))));
    var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * var_2.x) + _wgslsmith_f_op_f32(func_2(true, 390u, Struct_1(u_input.a.yx, true, vec3<i32>(u_input.b.x, global2.x, global2.x), u_input.a), ~vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, global2.x))))));
    var_0 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

