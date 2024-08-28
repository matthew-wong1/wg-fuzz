struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> i32 {
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1221f, -207f, -877f, -1011f))), _wgslsmith_div_vec4_f32(vec4<f32>(-1055f, 1084f, -498f, 1000f), vec4<f32>(604f, -678f, -555f, -498f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1147f))), _wgslsmith_f_op_f32(-399f - -459f), -754f), 59029u), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(765f)))), u_input.d.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(953f, 1099f, -301f, 777f) + vec4<f32>(-392f, 646f, -700f, 961f)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1128f, -216f, 1275f, -252f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-639f, -492f, -1153f, -1000f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1033f, 1015f, 1803f, 1077f), vec4<f32>(-1974f, 1036f, -1000f, -455f), vec4<bool>(false, false, true, true))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-852f, -220f, -1770f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1137f, 951f, -109f)))))), ~71361u), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) - -1208f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(963f)))), ~_wgslsmith_sub_i32(reverseBits(0i), _wgslsmith_sub_i32(-37088i, 1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1483f, 657f, -1879f, -952f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(591f, -1162f, 737f)), ~(~(~4294967295u))), !(!vec4<bool>(all(vec3<bool>(false, false, false)), true, true, true)));
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-647f, var_0.c.a, 403f), _wgslsmith_f_op_vec3_f32(vec3<f32>(582f, -191f, var_0.a.d.x) * vec3<f32>(var_0.c.d.x, 1000f, var_0.c.a)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a.d * vec3<f32>(536f, var_0.b.a, 696f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(var_0.a.d)), _wgslsmith_f_op_vec3_f32(floor(var_0.c.d)))) + _wgslsmith_div_vec3_f32(var_0.a.c.wzw, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.d.x, var_0.c.a, 1125f)))))));
    var var_2 = _wgslsmith_mult_u32(countOneBits(_wgslsmith_mod_u32(37288u, ~8825u) ^ (67186u | _wgslsmith_mult_u32(4294967295u, var_0.c.e))), var_0.a.e);
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * var_0.a.a) * var_0.b.d.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(step(834f, _wgslsmith_f_op_f32(ceil(var_0.a.c.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b.d) - vec3<f32>(217f, -632f, 899f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -210f, var_1.x)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_0.b.d)) + var_0.c.c.xzx));
    let var_4 = 1681f;
    return ~max(u_input.c, abs(u_input.c));
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: vec3<i32>) -> f32 {
    let var_0 = false | ((_wgslsmith_f_op_f32(round(1547f)) < -973f) & true);
    let var_1 = Struct_1(310f, _wgslsmith_mult_i32(firstLeadingBit(~arg_0.x), -func_3()), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-179f + 605f), _wgslsmith_f_op_f32(1000f + 253f), _wgslsmith_f_op_f32(f32(-1f) * -1268f), _wgslsmith_f_op_f32(ceil(384f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(242f, -557f, -240f))))), _wgslsmith_add_u32(0u, _wgslsmith_div_u32(~u_input.a << (u_input.a % 32u), ~u_input.a)));
    var var_2 = _wgslsmith_div_i32(u_input.c, reverseBits(24143i));
    var_2 = _wgslsmith_add_i32(arg_0.x, -_wgslsmith_sub_i32(9771i, i32(-1i) * -1i) >> ((u_input.a << ((4294967295u >> (~var_1.e % 32u)) % 32u)) % 32u));
    var_2 = ~(~firstTrailingBit(select(-26795i, u_input.c, false) & (i32(-1i) * -14442i)));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_1.d.x))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_2 {
    var var_0 = Struct_3(u_input.a, Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(arg_0.d.x)))), ~(~firstTrailingBit(arg_0.b)), arg_0.c, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.a, arg_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -277f)), arg_0.c.wwy)), u_input.a), !vec3<bool>(all(vec2<bool>(true, true)), true, select(true, false, true)));
    var_0 = Struct_3(~arg_0.e, var_0.b, !select(vec3<bool>(arg_0.c.x != arg_0.a, true, !var_0.c.x), !var_0.c, var_0.c.x));
    var var_1 = ~vec3<i32>(~1i, firstTrailingBit(var_0.b.b & arg_0.b), arg_0.b);
    var var_2 = arg_1;
    var var_3 = _wgslsmith_div_f32(var_0.b.c.x, arg_0.d.x);
    return Struct_2(~vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(11574u, 0u, u_input.a) >> (vec3<u32>(var_0.b.e, 0u, arg_0.e) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.a, 79394u, arg_0.e), vec3<u32>(46634u, 1u, arg_0.e))), _wgslsmith_clamp_u32(abs(0u), u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, var_0.a), vec4<u32>(0u, arg_0.e, 15411u, var_0.a)))), ~(~(~(~vec2<u32>(arg_0.e, var_0.b.e)))), arg_0);
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = abs(~(~firstLeadingBit(vec3<u32>(29820u, 0u, u_input.a)) >> ((~vec3<u32>(u_input.a, u_input.a, 49877u) | vec3<u32>(118786u, u_input.a, 1u)) % vec3<u32>(32u))));
    var var_1 = func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<i32>(1i, 1i, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -1i, arg_0, arg_0), vec4<i32>(arg_0, 2147483647i, 0i, -2757i)), u_input.d.wyy ^ u_input.d.xxz))), arg_0 ^ _wgslsmith_div_i32(arg_0, 25638i), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(548f - 206f) + _wgslsmith_f_op_f32(trunc(-810f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-494f * -751f)), _wgslsmith_f_op_f32(f32(-1f) * -1451f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(348f)) - -1384f)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-402f, 613f, -967f), vec3<f32>(280f, 243f, -1487f), vec3<bool>(false, true, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1273f, -796f, -762f)), vec3<bool>(false, false, false))), vec3<f32>(-182f, 1853f, _wgslsmith_f_op_f32(f32(-1f) * -1379f)))), firstLeadingBit(8047u)), max(firstTrailingBit((vec3<i32>(arg_0, u_input.d.x, -30897i) << (vec3<u32>(7310u, 12367u, 2368u) % vec3<u32>(32u))) | vec3<i32>(arg_0, 0i, u_input.d.x)), vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(u_input.d.xwz, u_input.d.wzx)));
    var_1 = func_4(var_1.c, u_input.d.xxx);
    var var_2 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-290f + _wgslsmith_f_op_f32(var_1.c.a - _wgslsmith_f_op_f32(min(var_1.c.d.x, 251f)))), 31226i, _wgslsmith_f_op_vec4_f32(exp2(func_4(var_1.c, -vec3<i32>(var_1.c.b, -2147483647i, 2147483647i)).c.c)), _wgslsmith_f_op_vec3_f32(round(var_1.c.c.zzz)), _wgslsmith_mult_u32(~var_0.x, func_4(var_1.c, vec3<i32>(-22887i, arg_0, -1i)).c.e)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -898f), 26001i, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.c.c + var_1.c.c)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(326f * 2120f) - var_1.c.c.x), _wgslsmith_f_op_f32(min(var_1.c.c.x, var_1.c.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.d.x))), func_4(func_4(Struct_1(2497f, u_input.b, var_1.c.c, var_1.c.d, 0u), vec3<i32>(1i, var_1.c.b, 2147483647i) & vec3<i32>(1i, 0i, -46991i)).c, -vec3<i32>(arg_0, 1i, -38431i)).b.x), Struct_1(-157f, arg_0, var_1.c.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.c.d * var_1.c.d) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.a, var_1.c.d.x, -240f) - var_1.c.d))), _wgslsmith_div_u32(~(~0u), _wgslsmith_clamp_u32(7352u, 22445u, var_0.x) & (var_1.a.x & var_0.x))), vec4<bool>(any(select(vec2<bool>(false, false), vec2<bool>(false, true), false)) && !(var_0.x == u_input.a), !(!(var_1.c.b > var_1.c.b)), select(~1u < u_input.a, true, all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true)))), true));
    var var_3 = Struct_3(8607u, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -(func_3() ^ func_4(Struct_1(-661f, u_input.c, var_1.c.c, var_1.c.c.zyw, var_1.c.e), u_input.d.yxy).c.b), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-var_2.c.c.x), -1000f, _wgslsmith_div_f32(var_2.c.c.x, -521f), 186f))), _wgslsmith_f_op_vec3_f32(select(var_1.c.d, _wgslsmith_f_op_vec3_f32(-var_2.b.d), vec3<bool>(var_2.d.x, true, all(var_2.d.yx)))), u_input.a), !vec3<bool>(select(false, false, false) || !var_2.d.x, true, all(vec4<bool>(var_2.d.x, true, false, false)) & all(vec2<bool>(true, false))));
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~vec3<u32>(14053u, firstTrailingBit(~91954u), 44220u), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 19564u), ~(~(~vec2<u32>(4294967295u, 13132u))), ~(~vec2<u32>(u_input.a, u_input.a))), func_1(u_input.d.x));
    var_0 = Struct_2(var_0.a, var_0.a.xy, func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1737f)), _wgslsmith_mult_i32(var_0.c.b, reverseBits(u_input.d.x)), vec4<f32>(-800f, -2652f, -1000f, _wgslsmith_f_op_f32(-var_0.c.d.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.d.x, -446f, var_0.c.a)), _wgslsmith_f_op_vec3_f32(var_0.c.d + vec3<f32>(-2033f, var_0.c.d.x, var_0.c.c.x))), 1u), vec3<i32>(~func_1(u_input.c).b, var_0.c.b, 2147483647i)).c);
    var var_1 = Struct_3(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(min(~vec4<u32>(24301u, 38744u, 11261u, u_input.a), ~vec4<u32>(0u, var_0.c.e, var_0.b.x, var_0.c.e)), ~vec4<u32>(46967u, 4294967295u, 1u, 1u)), 12124u), var_0.c, vec3<bool>(!((-2147483647i >> (var_0.c.e % 32u)) == -6257i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.c.d.x + 249f))) < _wgslsmith_f_op_f32(-var_0.c.a), true));
    let var_2 = 1063f;
    let var_3 = Struct_2(~(~vec3<u32>(35142u, 814u, 37719u >> (var_0.a.x % 32u))), vec2<u32>(1u | func_1(var_1.b.b).e, max(~118309u, 0u)) ^ (countOneBits(vec2<u32>(1u, 23152u) | var_0.b) & (func_4(Struct_1(var_1.b.d.x, 9150i, vec4<f32>(var_0.c.a, 401f, -302f, var_1.b.c.x), var_1.b.c.xzw, var_0.a.x), vec3<i32>(32696i, u_input.b, 36538i)).b << (~var_0.a.xz % vec2<u32>(32u)))), Struct_1(var_0.c.a, -(~var_1.b.b << (~var_1.a % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-616f, var_1.b.d.x, 664f, -257f), var_1.b.c)) + _wgslsmith_f_op_vec4_f32(ceil(var_0.c.c))) - var_1.b.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2160f), _wgslsmith_f_op_f32(step(var_2, -466f)), var_1.b.d.x) + vec3<f32>(_wgslsmith_f_op_f32(-764f * var_0.c.d.x), _wgslsmith_f_op_f32(-1534f * 2261f), _wgslsmith_f_op_f32(-var_2))), func_1(select(0i, _wgslsmith_mult_i32(var_1.b.b, var_1.b.b), !var_1.c.x)).e));
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, -var_0.c.b);
}

