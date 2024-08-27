struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(12821i, vec3<f32>(914f, -1000f, 1036f), vec2<u32>(16299u, 1u), vec3<i32>(0i, i32(-2147483648), 2147483647i)), Struct_1(-25370i, vec3<f32>(276f, 239f, -873f), vec2<u32>(4294967295u, 111742u), vec3<i32>(-34706i, 0i, -35722i)), Struct_1(-1i, vec3<f32>(468f, -1069f, -1584f), vec2<u32>(1u, 37590u), vec3<i32>(-30032i, -1i, -17413i)), Struct_1(1i, vec3<f32>(-1439f, -1300f, -1283f), vec2<u32>(10922u, 31556u), vec3<i32>(-12367i, 39025i, -11998i)), Struct_1(i32(-2147483648), vec3<f32>(413f, -525f, 694f), vec2<u32>(36336u, 4294967295u), vec3<i32>(54387i, 0i, -15011i)), Struct_1(-38882i, vec3<f32>(-421f, 448f, 500f), vec2<u32>(51472u, 4294967295u), vec3<i32>(0i, -20460i, -30398i)), Struct_1(2147483647i, vec3<f32>(1000f, 661f, 1502f), vec2<u32>(480u, 4294967295u), vec3<i32>(-32526i, 2147483647i, 0i)), Struct_1(0i, vec3<f32>(-246f, 372f, -485f), vec2<u32>(10806u, 76103u), vec3<i32>(22124i, -15716i, -26085i)), Struct_1(49444i, vec3<f32>(1407f, -324f, -161f), vec2<u32>(30710u, 36914u), vec3<i32>(34697i, 0i, -19014i)), Struct_1(1i, vec3<f32>(-409f, -1554f, 1019f), vec2<u32>(4294967295u, 1u), vec3<i32>(-53957i, 1i, -2651i)), Struct_1(-1i, vec3<f32>(-762f, -603f, 170f), vec2<u32>(22648u, 0u), vec3<i32>(-24234i, 1i, -42331i)), Struct_1(0i, vec3<f32>(1544f, 653f, 111f), vec2<u32>(5957u, 20877u), vec3<i32>(2147483647i, 62124i, 0i)), Struct_1(7965i, vec3<f32>(1400f, -753f, 2433f), vec2<u32>(4294967295u, 5135u), vec3<i32>(i32(-2147483648), 28353i, 26570i)), Struct_1(-29951i, vec3<f32>(157f, -842f, -713f), vec2<u32>(24751u, 2454u), vec3<i32>(28714i, -43667i, i32(-2147483648))), Struct_1(-1i, vec3<f32>(-976f, 971f, 378f), vec2<u32>(1u, 1u), vec3<i32>(2147483647i, -1211i, 0i)), Struct_1(-1i, vec3<f32>(2164f, 439f, -863f), vec2<u32>(4294967295u, 43062u), vec3<i32>(0i, 20694i, -1i)), Struct_1(-6918i, vec3<f32>(751f, -1004f, -101f), vec2<u32>(39506u, 29154u), vec3<i32>(i32(-2147483648), -56164i, -32398i)), Struct_1(48160i, vec3<f32>(435f, -262f, 435f), vec2<u32>(58039u, 25341u), vec3<i32>(71035i, i32(-2147483648), -1i)), Struct_1(-52694i, vec3<f32>(409f, 344f, -1000f), vec2<u32>(30954u, 0u), vec3<i32>(2147483647i, 11642i, -1i)), Struct_1(-27736i, vec3<f32>(-536f, -1421f, 658f), vec2<u32>(0u, 47753u), vec3<i32>(i32(-2147483648), i32(-2147483648), 22737i)), Struct_1(-12733i, vec3<f32>(-841f, -502f, -246f), vec2<u32>(7615u, 6378u), vec3<i32>(2147483647i, -19304i, 32851i)), Struct_1(41235i, vec3<f32>(-944f, 799f, -1975f), vec2<u32>(0u, 13305u), vec3<i32>(29174i, i32(-2147483648), -23319i)), Struct_1(-3317i, vec3<f32>(-2183f, 1264f, 505f), vec2<u32>(1u, 1126u), vec3<i32>(-1i, -683i, 1433i)), Struct_1(0i, vec3<f32>(-450f, -1138f, -271f), vec2<u32>(1u, 4294967295u), vec3<i32>(2507i, -38053i, 2147483647i)), Struct_1(30310i, vec3<f32>(1000f, 2113f, 1164f), vec2<u32>(4294967295u, 0u), vec3<i32>(18990i, -15604i, -8744i)), Struct_1(-75756i, vec3<f32>(1249f, -2228f, -678f), vec2<u32>(78039u, 26188u), vec3<i32>(-1i, 0i, 67303i)), Struct_1(-45355i, vec3<f32>(162f, 1000f, -1256f), vec2<u32>(76627u, 4294967295u), vec3<i32>(2147483647i, 16313i, 0i)), Struct_1(2147483647i, vec3<f32>(303f, -712f, 570f), vec2<u32>(4294967295u, 4294967295u), vec3<i32>(i32(-2147483648), 0i, -35009i)), Struct_1(-1i, vec3<f32>(403f, 1000f, -1959f), vec2<u32>(19179u, 52764u), vec3<i32>(58485i, i32(-2147483648), -18894i)), Struct_1(-1i, vec3<f32>(1270f, 815f, 128f), vec2<u32>(88446u, 0u), vec3<i32>(9839i, 114i, 35307i)), Struct_1(1i, vec3<f32>(266f, -1000f, 1383f), vec2<u32>(0u, 4294967295u), vec3<i32>(44899i, 0i, 0i)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<bool>) -> i32 {
    let var_0 = Struct_1(arg_0.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(927f + 1f), _wgslsmith_f_op_f32(-195f + _wgslsmith_f_op_f32(-1329f * 671f)), 766f)), u_input.a, _wgslsmith_add_vec3_i32(arg_0, _wgslsmith_div_vec3_i32(vec3<i32>(countOneBits(arg_0.x), u_input.b, -29575i), -_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, u_input.b, 2147483647i), vec3<i32>(-1i, -17528i, u_input.b)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(118f * 989f))))));
    global0 = array<Struct_1, 31>();
    var var_2 = ~(~vec3<u32>(u_input.a.x & var_0.c.x, u_input.a.x, var_0.c.x));
    var var_3 = Struct_1(var_0.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(var_0.b))))), select(vec2<u32>(var_0.c.x, var_2.x), var_0.c, arg_1.zw), ~firstLeadingBit(-_wgslsmith_add_vec3_i32(var_0.d, vec3<i32>(2147483647i, arg_0.x, -31103i))));
    return u_input.b;
}

fn func_2() -> Struct_1 {
    var var_0 = vec2<u32>(~(~u_input.a.x), _wgslsmith_div_u32(u_input.a.x, ~abs(~u_input.a.x)));
    var var_1 = max(u_input.b, ~_wgslsmith_sub_i32(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(9163i, u_input.b, u_input.b), vec3<i32>(u_input.b, -2147483647i, u_input.b))) << (var_0.x % 32u));
    let var_2 = global0[_wgslsmith_index_u32(67179u, 31u)];
    var_1 = _wgslsmith_div_i32(var_2.d.x & u_input.b, _wgslsmith_clamp_i32(-(firstTrailingBit(-68186i) | ~(-2147483647i)), -func_3(vec3<i32>(-17850i, -2147483647i, -2147483647i) << (vec3<u32>(var_2.c.x, var_0.x, 0u) % vec3<u32>(32u)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), false)), max(2026i, firstTrailingBit(-2147483647i))));
    let var_3 = var_2.a;
    return global0[_wgslsmith_index_u32(~(~u_input.a.x), 31u)];
}

fn func_1() -> vec2<i32> {
    let var_0 = func_2();
    global0 = array<Struct_1, 31>();
    let var_1 = vec2<u32>(min(1u, u_input.a.x), var_0.c.x);
    let var_2 = func_2();
    global0 = array<Struct_1, 31>();
    return max(vec2<i32>(-1i, _wgslsmith_add_i32(_wgslsmith_mod_i32(0i, u_input.b), 1810i) << (_wgslsmith_clamp_u32(_wgslsmith_add_u32(var_2.c.x, 0u), 33916u, ~var_2.c.x) % 32u)), ~vec2<i32>(2147483647i, -2989i ^ u_input.b) >> (u_input.a % vec2<u32>(32u)));
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: vec2<i32>, arg_3: bool) -> i32 {
    global0 = array<Struct_1, 31>();
    var var_0 = ((((vec4<u32>(arg_0, arg_0, arg_1.x, arg_0) | vec4<u32>(u_input.a.x, 0u, u_input.a.x, arg_1.x)) << ((vec4<u32>(3999u, 29370u, 0u, arg_1.x) ^ vec4<u32>(48584u, arg_0, arg_1.x, 1u)) % vec4<u32>(32u))) << (vec4<u32>(u_input.a.x, ~64719u, 1u, _wgslsmith_div_u32(46260u, u_input.a.x)) % vec4<u32>(32u))) & min(~reverseBits(vec4<u32>(56134u, 0u, 26692u, 0u)), countOneBits(~vec4<u32>(arg_0, 0u, u_input.a.x, arg_0)))) & ~(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0, u_input.a.x, u_input.a.x, 4294967295u) | vec4<u32>(32948u, u_input.a.x, arg_0, arg_1.x), ~vec4<u32>(20633u, 4294967295u, arg_1.x, arg_0)) & _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, arg_1.x, 4294967295u, 101550u) & vec4<u32>(4021u, 4294967295u, 57909u, u_input.a.x), ~vec4<u32>(32817u, 0u, 1u, 27423u)));
    let var_1 = vec3<bool>(true, all(!vec2<bool>(true, arg_3 || arg_3)), select(false, true, false));
    var var_2 = Struct_1(-1i, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1539f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1411f, 162f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -798f) - _wgslsmith_f_op_f32(f32(-1f) * -781f))))), _wgslsmith_mult_vec2_u32(reverseBits(var_0.xx), arg_1 >> ((~vec2<u32>(7953u, u_input.a.x) ^ vec2<u32>(18158u, var_0.x)) % vec2<u32>(32u))), _wgslsmith_div_vec3_i32(-vec3<i32>(func_1().x, firstLeadingBit(u_input.b), _wgslsmith_div_i32(u_input.b, -17406i)), ~select(vec3<i32>(-3553i, u_input.b, 59890i), vec3<i32>(1026i, -1i, u_input.b), var_1.x) >> (abs(var_0.xzz) % vec3<u32>(32u))));
    return ~var_2.a | (2147483647i ^ _wgslsmith_add_i32(12104i, var_2.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(u_input.a.x, vec2<u32>(u_input.a.x, 1u), func_1(), any(select(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true)))));
    var var_1 = vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(u_input.b, ~u_input.b), ~countOneBits(26159i), func_2().d.x), ~(-vec3<i32>(u_input.b, u_input.b, u_input.b) >> (select(vec3<u32>(4294967295u, 1u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), true) % vec3<u32>(32u)))), func_4(1u, vec2<u32>(u_input.a.x, firstTrailingBit(~u_input.a.x)), -max(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, -1i), vec2<i32>(u_input.b, 0i)), vec2<i32>(u_input.b, 36632i) & vec2<i32>(u_input.b, 19120i)), any(vec3<bool>(true, true, true)) || true), func_2().d.x, ~_wgslsmith_dot_vec2_i32(~vec2<i32>(0i, 1i) & (vec2<i32>(u_input.b, u_input.b) ^ vec2<i32>(u_input.b, u_input.b)), vec2<i32>(2147483647i >> (u_input.a.x % 32u), -1i)));
    var var_2 = !vec4<bool>(true, all(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), true)), true || any(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), true);
    global0 = array<Struct_1, 31>();
    var var_3 = all(!select(vec4<bool>(true, true, true, true), vec4<bool>(!var_2.x, !var_2.x, true || var_2.x, false), var_2.x | any(vec2<bool>(var_2.x, var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(986f, 1f, 0i);
}

