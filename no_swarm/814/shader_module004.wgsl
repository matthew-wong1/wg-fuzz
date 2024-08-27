struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<i32>,
    d: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<u32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec4<u32> = vec4<u32>(9033u, 1u, 11381u, 4294967295u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32) -> f32 {
    var var_0 = vec2<bool>(_wgslsmith_add_u32(_wgslsmith_div_u32(~u_input.c, ~171507u), _wgslsmith_div_u32(reverseBits(1u), firstLeadingBit(global0.x))) <= global1.x, !(!any(select(vec2<bool>(false, arg_0.x), arg_0, true))));
    let var_1 = abs(abs(_wgslsmith_clamp_i32(0i, arg_1, -49065i))) == _wgslsmith_mult_i32(-arg_1, -13577i);
    global0 = ~global1.xwz;
    let var_2 = Struct_3(Struct_2(~(-countOneBits(u_input.b)), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(295f, -1324f, -1206f, -510f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-277f, -163f, -2326f, -1459f)))), select(~vec4<i32>(arg_1, -42575i, -35875i, u_input.a.x), vec4<i32>(u_input.a.x, -2147483647i, -1i, 2147483647i), vec4<bool>(false, arg_0.x, true, var_1))), Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1045f, 774f, 740f, -707f))), firstTrailingBit(countOneBits(vec4<i32>(arg_1, u_input.d.x, 1i, -5442i)))), Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1629f, 2473f, -402f, 306f)), vec4<f32>(-838f, 935f, 814f, -1077f))), vec4<i32>(-1i, u_input.b, arg_1, u_input.d.x >> (0u % 32u))), 0u), Struct_2(abs(24512i), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, 1254f, 756f, 2450f), vec4<f32>(-962f, 1012f, 2116f, -1000f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-309f, -642f, -166f, -683f), vec4<f32>(467f, -611f, 966f, 175f))), select(vec4<bool>(arg_0.x, var_0.x, true, true), vec4<bool>(arg_0.x, arg_0.x, true, var_1), var_0.x))), -_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, arg_1, 2147483647i, -31369i), vec4<i32>(46194i, 2147483647i, 49640i, 654i))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-453f, 301f, -286f, 1481f))) + vec4<f32>(-631f, 341f, -240f, -1048f)), ~max(vec4<i32>(0i, -1i, 2147483647i, u_input.a.x), vec4<i32>(arg_1, -2147483647i, u_input.b, -1i))), Struct_1(vec4<f32>(-1464f, _wgslsmith_f_op_f32(f32(-1f) * -1909f), _wgslsmith_f_op_f32(f32(-1f) * -847f), 1f), vec4<i32>(~arg_1, arg_1, max(2147483647i, 1i), -1i)), 1u), -select(u_input.d.xz, vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(0i, -9353i, arg_1)), -1i), select(vec2<bool>(true, true), arg_0, false)), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(41221u, 1u, 30766u) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), global1.yyy));
    global0 = vec3<u32>(u_input.e, _wgslsmith_clamp_u32(u_input.c, ~4294967295u, min(44079u << (u_input.c % 32u), ~(u_input.c ^ global1.x))), global0.x);
    return var_2.b.d.a.x;
}

fn func_2(arg_0: u32) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<bool>(false, !all(vec4<bool>(true, true, false, true))), 44897i)));
    let var_1 = vec3<bool>(any(!select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(false, true)))), _wgslsmith_f_op_f32(max(1115f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0))))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-907f - _wgslsmith_f_op_f32(ceil(var_0)))), false);
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(469f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 942f) + _wgslsmith_f_op_f32(2177f - var_0)), var_0, 1109f)), reverseBits(countOneBits(vec4<i32>(~1i, abs(5481i), abs(-57596i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.b, u_input.b, -4975i), vec4<i32>(55225i, -27564i, u_input.a.x, -5902i))))));
    return _wgslsmith_add_vec4_u32(vec4<u32>(1u, abs((arg_0 ^ 0u) << (global1.x % 32u)), ~(64034u | _wgslsmith_dot_vec4_u32(vec4<u32>(11203u, arg_0, 4294967295u, global0.x), vec4<u32>(2845u, global0.x, 24944u, 0u))), global0.x), firstLeadingBit(firstTrailingBit(~vec4<u32>(global0.x, 48486u, global1.x, 0u) ^ firstLeadingBit(vec4<u32>(arg_0, global0.x, 0u, 7203u)))));
}

fn func_1(arg_0: i32) -> Struct_3 {
    var var_0 = func_2(~1u);
    global1 = ~vec4<u32>(reverseBits(20033u), 28878u, ~(~4294967295u) & _wgslsmith_mod_u32(~3173u, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, global1.x), global1.wz)), 1u);
    global0 = var_0.zww;
    var var_1 = -47775i;
    let var_2 = ~reverseBits(countOneBits(~1u));
    return Struct_3(Struct_2(_wgslsmith_clamp_i32(-u_input.a.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, u_input.d.x), vec3<i32>(-2280i, u_input.b, u_input.b)), ~min(-24279i, arg_0)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(152f, -1597f, 227f, -1000f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-609f, 367f, -185f, 1000f) + vec4<f32>(435f, -262f, -1000f, 488f))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-13649i, 14041i, 1i, arg_0), vec4<i32>(u_input.a.x, arg_0, -28510i, -1i) << (vec4<u32>(var_2, var_0.x, u_input.e, var_0.x) % vec4<u32>(32u)), -vec4<i32>(u_input.b, 5680i, arg_0, 12670i))), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-926f, -733f, -658f, 776f)))), vec4<i32>(min(-13248i, arg_0), arg_0, 40093i, _wgslsmith_dot_vec4_i32(vec4<i32>(-15468i, -35322i, arg_0, arg_0), vec4<i32>(arg_0, -91827i, u_input.b, -2147483647i)))), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1905f, 237f, 1947f, -2109f)), _wgslsmith_div_vec4_f32(vec4<f32>(201f, -460f, 1305f, 1094f), vec4<f32>(-692f, 754f, -1000f, -180f))), -(vec4<i32>(1i, 2147483647i, 18853i, u_input.d.x) ^ vec4<i32>(u_input.b, 32666i, u_input.d.x, 35681i))), ~u_input.e), Struct_2(1i, Struct_1(vec4<f32>(355f, -1049f, _wgslsmith_f_op_f32(150f * -277f), _wgslsmith_f_op_f32(-786f + -1420f)), ~select(vec4<i32>(0i, arg_0, 1i, arg_0), vec4<i32>(arg_0, u_input.b, u_input.a.x, 24061i), vec4<bool>(false, true, true, false))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2463f, 1689f, -2716f, -218f))), abs(vec4<i32>(-1736i, arg_0, arg_0, arg_0) >> (vec4<u32>(global0.x, var_0.x, global0.x, var_2) % vec4<u32>(32u)))), Struct_1(vec4<f32>(1f, 1f, 1f, 1f), select(abs(vec4<i32>(u_input.d.x, arg_0, u_input.b, arg_0)), firstLeadingBit(vec4<i32>(u_input.d.x, u_input.d.x, arg_0, -2147483647i)), true)), _wgslsmith_clamp_u32(u_input.e, u_input.e, ~1u)), abs(vec2<i32>(firstTrailingBit(reverseBits(arg_0)), min(firstTrailingBit(arg_0), arg_0 ^ u_input.a.x))), global1.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: u32) -> f32 {
    var var_0 = 28932i;
    var var_1 = 25903u >> (_wgslsmith_div_u32(36006u, _wgslsmith_add_u32(select(~global0.x, global1.x ^ 4294967295u, false && arg_0.x), func_2(1u).x)) % 32u);
    var var_2 = -u_input.d.x & arg_2.a.d.b.x;
    var_2 = (arg_2.c.x | -1i) << (global1.x % 32u);
    let var_3 = select(reverseBits(4294967295u), _wgslsmith_add_u32(func_1(9141i).a.e, func_2(~arg_2.b.e & u_input.e).x), u_input.a.x < ~countOneBits(_wgslsmith_mult_i32(9328i, arg_2.c.x)));
    return -664f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))) + 117f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec2<bool>(true, true), _wgslsmith_div_vec3_f32(vec3<f32>(553f, -549f, -691f), vec3<f32>(341f, 1053f, 443f)), func_1(u_input.b), 9057u)))), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-933f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(725f)) + _wgslsmith_f_op_f32(floor(969f)))), true)));
    global1 = ~min(vec4<u32>(27231u, abs(global1.x), firstTrailingBit(1u), global1.x), select(~vec4<u32>(u_input.e, 9443u, 0u, 1u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, global0.x, global1.x, u_input.e), vec4<u32>(4294967295u, 87668u, global0.x, 0u)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))));
    var var_1 = _wgslsmith_sub_i32(~(-15500i), -u_input.a.x >> (firstTrailingBit(u_input.e) % 32u));
    var var_2 = ~(~(~u_input.d)) ^ -_wgslsmith_div_vec3_i32(u_input.d, vec3<i32>(i32(-1i) * -1i, _wgslsmith_mult_i32(u_input.d.x, u_input.b), func_1(u_input.b).c.x));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-260f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -265f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1560f) - 352f)))) + -230f);
    var var_3 = func_1(_wgslsmith_add_i32(u_input.d.x, max(21271i, u_input.b))).b;
    global0 = ~_wgslsmith_div_vec3_u32(global1.xzy, global1.yxz);
    var var_4 = func_1(_wgslsmith_mult_i32(~0i, 0i)).b.b.b & var_3.d.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(var_3.c.a.zyx, vec3<f32>(171f, var_3.b.a.x, var_3.b.a.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1347f)))))), _wgslsmith_mult_vec2_u32(vec2<u32>(var_3.e, 1u), vec2<u32>(~max(global0.x, global0.x), ~0u)), _wgslsmith_f_op_f32(-var_3.c.a.x), vec4<i32>(_wgslsmith_div_i32(~min(u_input.b, var_4.x), var_4.x), -(-5748i | var_2.x), ~var_3.a, u_input.a.x | ~(i32(-1i) * -1i)));
}

