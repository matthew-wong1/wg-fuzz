struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<f32>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_2 = Struct_2(vec2<bool>(true, false), vec3<bool>(false, true, false), vec2<bool>(true, true));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    var var_0 = 22233u;
    var_0 = ~max(4294967295u, u_input.a.x);
    global1 = Struct_2(global1.a, !(!select(!global1.b, arg_0, false)), !select(global1.a, vec2<bool>(true, any(vec2<bool>(global1.b.x, arg_0.x))), global1.a));
    var var_1 = Struct_2(select(select(vec2<bool>(all(vec2<bool>(true, arg_0.x)), all(arg_0)), select(select(vec2<bool>(true, global1.c.x), global1.a, vec2<bool>(global1.a.x, arg_0.x)), vec2<bool>(false, false), !arg_0.zz), vec2<bool>(false, global1.c.x)), global1.c, !global1.a), vec3<bool>(select(arg_0.x | true, global1.b.x, arg_0.x) & any(vec4<bool>(true, true, true, arg_0.x)), false | !(u_input.d < -2147483647i), global1.c.x), vec2<bool>(!arg_0.x, false));
    var var_2 = Struct_2(select(global1.c, select(select(var_1.c, select(arg_0.yx, global1.c, vec2<bool>(false, true)), arg_0.x), !select(vec2<bool>(true, global1.b.x), vec2<bool>(true, var_1.a.x), global1.c.x), !(!arg_0.yz)), false | var_1.b.x), vec3<bool>(true, var_1.b.x, any(var_1.b.yy)), select(select(select(var_1.a, global1.b.xy, any(vec3<bool>(false, true, arg_0.x))), select(vec2<bool>(var_1.a.x, arg_0.x), select(vec2<bool>(arg_0.x, global1.a.x), arg_0.yx, vec2<bool>(global1.a.x, false)), global1.b.x), all(!arg_0)), !select(vec2<bool>(var_1.a.x, true), vec2<bool>(var_1.a.x, false), global0.x < u_input.a.x), var_1.a));
    return reverseBits(~42287u);
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    var var_0 = ~vec2<u32>(global0.x, ~global0.x);
    var_0 = ~(~(~u_input.b) << (((vec2<u32>(u_input.b.x, 361u) & (vec2<u32>(53338u, 31625u) >> (u_input.b % vec2<u32>(32u)))) >> (vec2<u32>(38735u, ~var_0.x) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_1 = vec4<u32>(min(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 32069u, ~0u), vec3<u32>(global0.x, ~0u, 45261u)), _wgslsmith_mod_u32(select(_wgslsmith_mod_u32(global0.x, 5124u), _wgslsmith_dot_vec3_u32(vec3<u32>(53235u, u_input.a.x, 9308u), vec3<u32>(var_0.x, 0u, u_input.e)), any(vec2<bool>(false, global1.b.x))), ~71984u << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, u_input.e, global0.x, 1u), vec4<u32>(0u, global0.x, u_input.a.x, 1u)) % 32u))), ~15193u, ~((func_3(global1.b) ^ max(0u, u_input.a.x)) << ((_wgslsmith_add_u32(31423u, global0.x) ^ 69710u) % 32u)), 70144u);
    let var_2 = Struct_1(global1.a.x, !all(select(vec2<bool>(true, global1.b.x), !vec2<bool>(global1.b.x, false), global1.b.yz)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(542f, -443f, -189f) - vec3<f32>(1023f, -501f, -952f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1425f, 128f, 1419f))), true)) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-343f, -150f, 1322f), vec3<f32>(686f, -374f, -499f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(479f, 240f, -1216f)))))), vec4<f32>(1025f, _wgslsmith_f_op_f32(f32(-1f) * -1379f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(112f, -265f))), 1483f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1017f))))), all(vec2<bool>(_wgslsmith_f_op_f32(floor(1543f)) >= _wgslsmith_f_op_f32(f32(-1f) * -1000f), !global1.b.x && true)));
    let var_3 = Struct_2(vec2<bool>(!(var_2.c.x > var_2.d.x) != !(var_2.c.x > -540f), var_2.a), !global1.b, global1.b.yz);
    return arg_0.x;
}

fn func_4(arg_0: vec4<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(max(global0.x, 0u), 4294967295u, u_input.a.x), select(~reverseBits(vec3<u32>(56692u, 29495u, global0.x)), _wgslsmith_add_vec3_u32(~vec3<u32>(33186u, u_input.e, 12876u), vec3<u32>(u_input.e, u_input.e, 30622u) << (vec3<u32>(4294967295u, 72453u, 0u) % vec3<u32>(32u))), global1.b)), abs(_wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(u_input.a.x, 18143u, 98330u)), select(vec3<u32>(0u, u_input.b.x, global0.x) | vec3<u32>(4294967295u, 0u, u_input.a.x), vec3<u32>(69065u, u_input.b.x, 1u) << (vec3<u32>(35271u, 6283u, global0.x) % vec3<u32>(32u)), global1.c.x))), select(countOneBits(~(vec3<u32>(4294967295u, global0.x, 4294967295u) << (vec3<u32>(global0.x, u_input.b.x, 50452u) % vec3<u32>(32u)))), ~(~(vec3<u32>(u_input.b.x, global0.x, u_input.e) ^ vec3<u32>(9869u, 53582u, u_input.a.x))), global1.a.x));
    var var_1 = min(firstTrailingBit(abs(firstLeadingBit(var_0.xx))), _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_add_u32(30590u, _wgslsmith_dot_vec2_u32(vec2<u32>(4221u, var_0.x), u_input.a)), ~1u), _wgslsmith_add_vec2_u32(~u_input.a & firstTrailingBit(vec2<u32>(1u, 1u)), vec2<u32>(1u, 4294967295u))));
    var var_2 = 67865i & _wgslsmith_add_i32(1i, _wgslsmith_sub_i32(countOneBits(arg_0.x), -2147483647i));
    var var_3 = firstLeadingBit(global0.yx);
    let var_4 = _wgslsmith_div_f32(-1326f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-376f * 927f))), _wgslsmith_f_op_f32(791f + _wgslsmith_f_op_f32(round(-268f)))));
    return Struct_2(vec2<bool>(global1.a.x, global1.a.x), global1.b, !select(select(select(global1.c, global1.c, global1.a.x), vec2<bool>(false, global1.c.x), global1.a.x), global1.b.zy, var_4 <= _wgslsmith_div_f32(var_4, var_4)));
}

fn func_1() -> vec3<u32> {
    global0 = _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_add_u32(u_input.b.x, u_input.e), 10197u, u_input.e), vec3<u32>(~u_input.b.x, min(57331u, u_input.b.x), global0.x)), vec3<u32>(~1u, global0.x, countOneBits(83101u))), firstLeadingBit(select(vec3<u32>(147u, 1u, 4294967295u), max(vec3<u32>(u_input.b.x, global0.x, global0.x), vec3<u32>(global0.x, 72527u, 15053u)), true)) << ((~reverseBits(vec3<u32>(u_input.e, 1u, global0.x)) | vec3<u32>(~global0.x, 17715u, ~global0.x)) % vec3<u32>(32u)));
    global1 = func_4(abs(vec4<i32>(35023i, func_2(firstTrailingBit(vec3<i32>(u_input.c.x, 20122i, u_input.c.x))), u_input.c.x, _wgslsmith_mult_i32(u_input.d, -u_input.d))));
    global0 = min(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(global0.x, u_input.a.x), func_3(!global1.b), global0.x), ~(~(vec3<u32>(28597u, 0u, 4294967295u) ^ vec3<u32>(global0.x, 58965u, global0.x)))), _wgslsmith_div_vec3_u32(select(abs(vec3<u32>(20919u, u_input.a.x, global0.x)), vec3<u32>(global0.x, 1u, 35159u), !vec3<bool>(global1.c.x, global1.a.x, false)), ~(vec3<u32>(20881u, u_input.e, 4294967295u) ^ vec3<u32>(global0.x, 3305u, 0u))) ^ (_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a.x, global0.x, global0.x), vec3<u32>(59471u, 1420u, global0.x)) >> (vec3<u32>(_wgslsmith_mult_u32(u_input.b.x, global0.x), min(38088u, 11010u), ~u_input.e) % vec3<u32>(32u))));
    var var_0 = Struct_2(select(select(vec2<bool>(!global1.b.x, true), vec2<bool>(global1.c.x, true), u_input.d >= -1i), global1.b.yy, false), vec3<bool>(global1.c.x, global1.b.x, true), !func_4((vec4<i32>(-1i, u_input.c.x, u_input.c.x, u_input.c.x) | vec4<i32>(-1i, -26983i, u_input.c.x, -26174i)) | select(vec4<i32>(-25131i, u_input.c.x, u_input.c.x, 0i), vec4<i32>(-37857i, u_input.c.x, 44638i, -2147483647i), vec4<bool>(global1.c.x, global1.c.x, true, global1.a.x))).a);
    var var_1 = Struct_1(all(!(!vec3<bool>(true, global1.a.x, true))), true, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-460f, _wgslsmith_f_op_f32(trunc(1021f)), _wgslsmith_f_op_f32(279f - 1835f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 195f, -1613f, 519f))), vec4<f32>(_wgslsmith_f_op_f32(floor(-134f)), -1347f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1353f))), 574f)), any(vec2<bool>(any(vec2<bool>(true, global1.b.x)), any(!global1.c))));
    return vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(43264u, 1u, 22426u) | vec3<u32>(1u, global0.x, 62822u), vec3<u32>(global0.x, global0.x, 0u)), ~u_input.e, func_3(!(!vec3<bool>(var_1.b, false, false)))) >> (select(vec3<u32>(_wgslsmith_div_u32(max(u_input.e, global0.x), max(global0.x, 1u)), ~1u, ~1u), _wgslsmith_mult_vec3_u32(~(~vec3<u32>(u_input.b.x, 0u, u_input.a.x)), vec3<u32>(global0.x, min(global0.x, u_input.b.x), abs(u_input.e))), !(!select(vec3<bool>(true, var_0.c.x, false), global1.b, var_0.b.x))) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = func_4(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-77180i, u_input.c.x, 2147483647i, -8153i) | ~vec4<i32>(u_input.c.x, u_input.d, u_input.d, -22389i), max(max(vec4<i32>(u_input.d, u_input.d, -1i, 1i), vec4<i32>(2147483647i, u_input.d, -1i, -8344i)), vec4<i32>(1i, 1747i, u_input.d, u_input.c.x) & vec4<i32>(u_input.c.x, u_input.d, u_input.d, u_input.d))), reverseBits(_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(u_input.d, 1i, -22176i, 1i)), vec4<i32>(u_input.d, u_input.d, -3878i, 1i)))));
    var var_1 = Struct_1(true, -853f > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -860f), _wgslsmith_f_op_f32(f32(-1f) * -135f))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-987f, 1329f, -775f))), vec3<f32>(_wgslsmith_f_op_f32(-413f * -1296f), 1f, 1323f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1510f + 312f), _wgslsmith_div_f32(-293f, -976f), -770f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(736f)) * _wgslsmith_f_op_f32(-1000f - 1345f)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1185f)), _wgslsmith_f_op_f32(f32(-1f) * -189f)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1326f, -222f, 993f, -130f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-427f, -561f, -1556f, -133f))), func_4(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.c.x, u_input.c.x, u_input.d), vec4<i32>(28607i, u_input.d, -2147483647i, 14731i))).c.x))), _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(25943u, global0.x, 1u, global0.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, global0.x), vec4<u32>(u_input.e, global0.x, 21006u, global0.x), vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, global0.x)))) >= _wgslsmith_dot_vec2_u32(global0.xx, vec2<u32>(global0.x, 1u)));
    var var_2 = Struct_1(!var_0.c.x, select(global1.a.x, !var_0.b.x, global1.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-696f, -819f, _wgslsmith_f_op_f32(1776f * var_1.c.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-250f, var_1.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_1.c.x)), _wgslsmith_f_op_f32(-var_1.c.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1836f) + _wgslsmith_f_op_f32(-var_1.c.x)))), var_0.a.x);
    var var_3 = _wgslsmith_sub_u32(~(~_wgslsmith_sub_u32(u_input.e, _wgslsmith_add_u32(1u, global0.x))), ~u_input.a.x);
    var var_4 = ~vec4<u32>(global0.x, _wgslsmith_mod_u32(global0.x, 1u), ~(~global0.x | _wgslsmith_div_u32(global0.x, 4294967295u)), global0.x);
    let var_5 = Struct_1(var_2.a & false, true, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(var_1.c * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.c))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_2.c)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.d.x, var_1.d.x, var_2.c.x)))), vec3<f32>(1000f, var_2.d.x, -257f)))), vec4<f32>(-1676f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d.x - 1000f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x))), -495f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) + _wgslsmith_f_op_f32(f32(-1f) * -483f)))), global1.c.x || var_2.e);
    var var_6 = _wgslsmith_mod_vec3_u32(~abs(var_4.wxy) >> (reverseBits(min(firstLeadingBit(var_4.wxy), var_4.yyz)) % vec3<u32>(32u)), vec3<u32>(1u, 43148u, func_1().x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i) * -abs(~vec3<i32>(u_input.d, -7886i, 0i)), vec3<i32>(u_input.c.x >> (34665u % 32u), -44958i, ~reverseBits(func_2(vec3<i32>(2147483647i, u_input.d, 2147483647i)))), _wgslsmith_f_op_vec3_f32(trunc(var_5.c)));
}

