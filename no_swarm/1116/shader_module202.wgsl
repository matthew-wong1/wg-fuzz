struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: bool,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<f32>(1592f, 1257f)));

var<private> global2: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(Struct_1(vec2<f32>(764f, 546f)), vec2<u32>(4294967295u, 4153u), true, Struct_2(Struct_1(vec2<f32>(1000f, 1305f))), Struct_1(vec2<f32>(1993f, 570f))), Struct_3(Struct_1(vec2<f32>(-2251f, -518f)), vec2<u32>(89244u, 61721u), true, Struct_2(Struct_1(vec2<f32>(625f, -388f))), Struct_1(vec2<f32>(-1487f, 291f))), Struct_3(Struct_1(vec2<f32>(-515f, -1000f)), vec2<u32>(6296u, 1u), false, Struct_2(Struct_1(vec2<f32>(-449f, 853f))), Struct_1(vec2<f32>(-442f, -1536f))), Struct_3(Struct_1(vec2<f32>(-413f, 392f)), vec2<u32>(5732u, 4294967295u), true, Struct_2(Struct_1(vec2<f32>(-1957f, -241f))), Struct_1(vec2<f32>(833f, -778f))), Struct_3(Struct_1(vec2<f32>(-1000f, -995f)), vec2<u32>(3075u, 1u), true, Struct_2(Struct_1(vec2<f32>(1963f, 960f))), Struct_1(vec2<f32>(445f, -297f))), Struct_3(Struct_1(vec2<f32>(-630f, 2362f)), vec2<u32>(17947u, 38498u), true, Struct_2(Struct_1(vec2<f32>(984f, -102f))), Struct_1(vec2<f32>(-454f, -231f))), Struct_3(Struct_1(vec2<f32>(-979f, 480f)), vec2<u32>(0u, 34458u), true, Struct_2(Struct_1(vec2<f32>(-1468f, -638f))), Struct_1(vec2<f32>(303f, -146f))), Struct_3(Struct_1(vec2<f32>(-2243f, -574f)), vec2<u32>(4765u, 3017u), false, Struct_2(Struct_1(vec2<f32>(1054f, 671f))), Struct_1(vec2<f32>(-1372f, 290f))), Struct_3(Struct_1(vec2<f32>(-400f, 2350f)), vec2<u32>(48082u, 1u), false, Struct_2(Struct_1(vec2<f32>(-753f, 924f))), Struct_1(vec2<f32>(1738f, 2299f))), Struct_3(Struct_1(vec2<f32>(1000f, 650f)), vec2<u32>(4294967295u, 4294967295u), true, Struct_2(Struct_1(vec2<f32>(-137f, -940f))), Struct_1(vec2<f32>(1000f, -612f))), Struct_3(Struct_1(vec2<f32>(704f, 1000f)), vec2<u32>(13933u, 19848u), true, Struct_2(Struct_1(vec2<f32>(334f, -1000f))), Struct_1(vec2<f32>(-302f, 503f))), Struct_3(Struct_1(vec2<f32>(-265f, -1000f)), vec2<u32>(4294967295u, 0u), false, Struct_2(Struct_1(vec2<f32>(502f, -579f))), Struct_1(vec2<f32>(-1161f, 1313f))), Struct_3(Struct_1(vec2<f32>(-510f, 846f)), vec2<u32>(1u, 1718u), true, Struct_2(Struct_1(vec2<f32>(-1506f, -562f))), Struct_1(vec2<f32>(804f, -1783f))), Struct_3(Struct_1(vec2<f32>(-461f, -712f)), vec2<u32>(37609u, 27598u), false, Struct_2(Struct_1(vec2<f32>(485f, -705f))), Struct_1(vec2<f32>(-307f, -671f))), Struct_3(Struct_1(vec2<f32>(-206f, 279f)), vec2<u32>(0u, 26493u), false, Struct_2(Struct_1(vec2<f32>(-227f, -915f))), Struct_1(vec2<f32>(-305f, 161f))), Struct_3(Struct_1(vec2<f32>(360f, 107f)), vec2<u32>(1u, 4294967295u), false, Struct_2(Struct_1(vec2<f32>(-445f, 2451f))), Struct_1(vec2<f32>(1000f, -161f))), Struct_3(Struct_1(vec2<f32>(-1353f, -718f)), vec2<u32>(4294967295u, 23054u), true, Struct_2(Struct_1(vec2<f32>(-372f, -1703f))), Struct_1(vec2<f32>(-861f, -322f))), Struct_3(Struct_1(vec2<f32>(1894f, 3470f)), vec2<u32>(18584u, 29409u), false, Struct_2(Struct_1(vec2<f32>(-744f, -357f))), Struct_1(vec2<f32>(-130f, -780f))), Struct_3(Struct_1(vec2<f32>(2205f, 1000f)), vec2<u32>(1u, 0u), true, Struct_2(Struct_1(vec2<f32>(-802f, 1000f))), Struct_1(vec2<f32>(1000f, -808f))), Struct_3(Struct_1(vec2<f32>(-297f, -1508f)), vec2<u32>(27300u, 0u), false, Struct_2(Struct_1(vec2<f32>(-1000f, 1398f))), Struct_1(vec2<f32>(1626f, 731f))), Struct_3(Struct_1(vec2<f32>(-740f, -1334f)), vec2<u32>(4294967295u, 7814u), true, Struct_2(Struct_1(vec2<f32>(-1752f, -621f))), Struct_1(vec2<f32>(737f, -2028f))));

var<private> global3: vec3<u32> = vec3<u32>(23021u, 2480u, 95016u);

var<private> global4: array<u32, 29> = array<u32, 29>(1u, 0u, 194u, 49439u, 0u, 4294967295u, 25292u, 1u, 29041u, 0u, 4294967295u, 49307u, 4294967295u, 29965u, 0u, 34623u, 21692u, 35276u, 37501u, 4294967295u, 38601u, 4294967295u, 60672u, 1u, 4294967295u, 4717u, 31269u, 22674u, 0u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_3, arg_3: bool) -> vec4<f32> {
    let var_0 = _wgslsmith_div_i32(~(~min(abs(-20233i), -2987i)), -29638i);
    let var_1 = -(~(~max(select(vec2<i32>(-12018i, var_0), vec2<i32>(54248i, 0i), true), -vec2<i32>(17821i, var_0))));
    let var_2 = _wgslsmith_f_op_f32(abs(global0.a.x));
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(firstTrailingBit(min(global4[_wgslsmith_index_u32(13904u, 29u)], global4[_wgslsmith_index_u32(global3.x, 29u)])), countOneBits(global3.x >> (0u % 32u)), ~(~global4[_wgslsmith_index_u32(41306u, 29u)]), 9660u), vec4<u32>(global3.x ^ ~global4[_wgslsmith_index_u32(arg_2.b.x, 29u)], countOneBits(firstTrailingBit(global3.x)), 7926u, 38135u)), max(~select(select(vec4<u32>(4294967295u, global3.x, arg_2.b.x, 26204u), vec4<u32>(1u, 1u, arg_2.b.x, 96911u), false), ~vec4<u32>(global3.x, 11406u, 4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global3.x, 29u)], 29u)]), !vec4<bool>(true, arg_3, false, true)), vec4<u32>(1u, arg_2.b.x, ~0u, global3.x))), 21u)];
    var var_4 = var_3.d.a.a;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_2.d.a.a.x - arg_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -160f), -718f, _wgslsmith_f_op_f32(1227f * 1504f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.a.x, -331f, _wgslsmith_f_op_f32(round(927f)), _wgslsmith_f_op_f32(max(global0.a.x, arg_0.a.a.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(202f, -1121f, arg_0.a.a.x, global0.a.x)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.a.x, global0.a.x, global1.a.a.x, 1168f) - vec4<f32>(597f, global1.a.a.x, global0.a.x, 139f)))))));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: bool) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global0.a.x, -1000f, 1000f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_2(global1.a), arg_0, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(41309u ^ global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global3.x, 29u)], 29u)], 29u)], 21u)], true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(floor(global1.a.a.x)), global0.a.x, _wgslsmith_f_op_f32(-arg_0.a.x)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-215f, global0.a.x, -1085f, -424f), vec4<f32>(312f, -190f, global1.a.a.x, 792f), false)), vec4<f32>(global0.a.x, -405f, global1.a.a.x, global1.a.a.x), -1000f != global1.a.a.x)))));
    global3 = vec3<u32>(17460u, ~global3.x, 38309u);
    let var_1 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(arg_0), Struct_1(arg_0.a), global2[_wgslsmith_index_u32(global3.x, 21u)], true)).xw + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, -500f) * var_0.zy))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(521f, 1000f) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.a.a.x, 1327f), arg_0.a))))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(sign(global0.a))));
    let var_3 = vec2<bool>(true, !arg_2);
    return Struct_2(global1.a);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec3<bool>) -> i32 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1586f, -650f, 259f, 1000f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.a.x, arg_0.a.a.x)), -331f, _wgslsmith_f_op_f32(-525f - _wgslsmith_f_op_f32(global0.a.x + global1.a.a.x)), func_2(func_2(Struct_1(vec2<f32>(global0.a.x, arg_0.a.a.x)), arg_2.x, false).a, all(arg_2.xy), all(arg_2)).a.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.a.x, global0.a.x, -600f, global1.a.a.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.a.x, -321f, global1.a.a.x, 1000f))))))));
    var var_1 = ~12209i;
    global3 = vec3<u32>(_wgslsmith_sub_u32(global4[_wgslsmith_index_u32(global3.x, 29u)], ~1u), ~12808u, ~(1u & firstTrailingBit(17646u))) >> (vec3<u32>(1u, 4294967295u, 1u) % vec3<u32>(32u));
    var var_2 = Struct_2(Struct_1(global1.a.a));
    global4 = array<u32, 29>();
    return 2147483647i;
}

fn func_1() -> vec4<u32> {
    let var_0 = -func_4(func_2(global1.a, false, false), ~global3.x, select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), all(vec4<bool>(true, true, true, true))));
    global3 = vec3<u32>(_wgslsmith_mod_u32(16398u, 36162u), ~1u, 1u);
    let var_1 = abs(vec3<u32>(global4[_wgslsmith_index_u32(firstTrailingBit(26588u), 29u)], abs(global3.x) | global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(62992u, global4[_wgslsmith_index_u32(9397u, 29u)], global3.x), vec3<u32>(global3.x, global4[_wgslsmith_index_u32(10759u, 29u)], 4294967295u)) | _wgslsmith_mult_u32(global4[_wgslsmith_index_u32(1u, 29u)], global3.x), 29u)], global3.x));
    var var_2 = _wgslsmith_sub_vec2_i32(countOneBits(~vec2<i32>(-56083i, 0i)), countOneBits(vec2<i32>(u_input.a, -2147483647i))) ^ vec2<i32>(0i, i32(-1i) * -var_0);
    var var_3 = func_2(func_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-1714f + 521f), global1.a.a.x)), all(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))), true | (u_input.a != _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(var_2.x, var_2.x)))).a, !(!any(vec4<bool>(false, false, false, false))), all(vec2<bool>(all(vec3<bool>(false, false, false)), select(false, true, false))));
    return firstTrailingBit(vec4<u32>(~(var_1.x ^ 10755u), _wgslsmith_dot_vec4_u32(select(vec4<u32>(18254u, global4[_wgslsmith_index_u32(var_1.x, 29u)], global3.x, var_1.x), vec4<u32>(0u, 1u, var_1.x, var_1.x), true), vec4<u32>(56098u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], 11581u, global4[_wgslsmith_index_u32(4997u, 29u)]) ^ (vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], 1u, 0u, 5549u) & vec4<u32>(var_1.x, 3463u, 38516u, global3.x))), ~global3.x, ~4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_sub_vec4_u32(~vec4<u32>(global3.x, global4[_wgslsmith_index_u32(37446u, 29u)], 4294967295u, 4294967295u) | ~func_1(), vec4<u32>(global3.x, 0u, _wgslsmith_mult_u32(39371u, global3.x), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~global3.x, 29u)], 29u)] ^ func_1().x)));
    let var_1 = global1.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, -firstLeadingBit(countOneBits(-2147483647i & u_input.a)), func_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, -1156f)) - vec2<f32>(2558f, global1.a.a.x))), true, _wgslsmith_add_i32(1i, firstLeadingBit(u_input.a)) <= u_input.a).a.a.x);
}

