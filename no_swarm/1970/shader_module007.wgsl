struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, true);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec3<u32>, arg_3: vec3<u32>) -> bool {
    let var_0 = countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(min(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(24378i, -41416i), vec2<i32>(-1i, -50307i))), abs(-2147483647i)), -max(min(vec2<i32>(-406i, -1i), vec2<i32>(2147483647i, 14841i)), firstTrailingBit(vec2<i32>(-13036i, 4268i))), select(vec2<i32>(_wgslsmith_sub_i32(-70551i, 5013i), firstTrailingBit(2147483647i)), ~countOneBits(vec2<i32>(-13872i, 1167i)), _wgslsmith_f_op_f32(floor(arg_1)) != _wgslsmith_f_op_f32(2192f + -1282f))));
    var var_1 = -firstTrailingBit(vec4<i32>(var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(20029i, var_0.x, var_0.x), vec3<i32>(2147483647i, var_0.x, var_0.x)), _wgslsmith_add_i32(var_0.x, var_0.x), i32(-1i) * -1i)) >> (vec4<u32>(_wgslsmith_sub_u32(~u_input.a.x, u_input.a.x) << (~(~4294967295u) % 32u), u_input.a.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, 0u, u_input.a.x), min(vec4<u32>(44707u, 9775u, 1u, arg_3.x), vec4<u32>(4294967295u, arg_2.x, arg_0.a.x, 1u))), _wgslsmith_mod_u32(1u, u_input.a.x)) % vec4<u32>(32u));
    var var_2 = vec4<bool>(global0.x, (global0.x && all(vec2<bool>(false, false))) || global0.x, false, true | (_wgslsmith_sub_i32(_wgslsmith_mod_i32(var_1.x, var_1.x), var_0.x | var_1.x) < _wgslsmith_sub_i32(var_1.x & var_1.x, var_0.x | -21109i)));
    let var_3 = Struct_1(arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -1454f));
    global0 = select(select(vec4<bool>(global0.x, !(var_1.x <= -13236i), !global0.x, false), vec4<bool>(true, var_2.x, _wgslsmith_f_op_f32(-arg_0.b) == 1000f, _wgslsmith_f_op_f32(arg_1 - arg_0.b) == _wgslsmith_f_op_f32(min(arg_0.b, -1678f))), true), !(!select(select(vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(true, false, var_2.x, true), false), vec4<bool>(false, global0.x, var_2.x, false), select(vec4<bool>(global0.x, true, true, false), vec4<bool>(global0.x, global0.x, true, true), false))), false);
    return !(!all(vec3<bool>(var_2.x, true, false)) & false) | (max(_wgslsmith_mult_u32(min(arg_2.x, 4294967295u), 1u), 1u) <= ~0u);
}

fn func_2(arg_0: f32) -> vec4<u32> {
    var var_0 = !(49639i != _wgslsmith_dot_vec3_i32(max(~vec3<i32>(-59198i, -5407i, 0i), select(vec3<i32>(-7839i, -1i, 68453i), vec3<i32>(-2147483647i, 777i, 1i), global0.x)), (vec3<i32>(1i, -10543i, -77592i) >> (vec3<u32>(u_input.a.x, 89950u, 1u) % vec3<u32>(32u))) << (vec3<u32>(29686u, u_input.a.x, 0u) % vec3<u32>(32u))));
    let var_1 = vec2<u32>(120265u, 5905u);
    let var_2 = global0.zz;
    var_0 = select(!var_2.x, func_3(Struct_1(vec3<u32>(u_input.a.x, 20548u, 5964u) ^ (vec3<u32>(0u, var_1.x, var_1.x) | vec3<u32>(u_input.a.x, var_1.x, 35012u)), _wgslsmith_f_op_f32(round(arg_0))), -1348f, firstLeadingBit(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.x, 1u, 4294967295u), vec3<u32>(var_1.x, 3024u, var_1.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.x, 1u, var_1.x), vec3<u32>(66306u, 0u, 0u)))), ~((vec3<u32>(var_1.x, u_input.a.x, u_input.a.x) ^ vec3<u32>(u_input.a.x, 37095u, var_1.x)) | ~vec3<u32>(var_1.x, var_1.x, 48113u))), all(!select(!vec3<bool>(var_2.x, true, global0.x), select(global0.xyy, vec3<bool>(true, global0.x, global0.x), vec3<bool>(true, true, false)), !var_2.x)));
    let var_3 = 0u;
    return ~(~(~_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, var_3, var_1.x, var_1.x), vec4<u32>(4294967295u, 0u, var_1.x, u_input.a.x), vec4<u32>(47443u, var_3, var_1.x, 40409u)), ~vec4<u32>(25410u, 19868u, u_input.a.x, 23109u))));
}

fn func_1() -> f32 {
    var var_0 = Struct_2(func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1559f * 1106f)))))), max(~abs(_wgslsmith_mod_vec3_i32(vec3<i32>(-2140i, -1i, -2147483647i), vec3<i32>(2147483647i, 45834i, 18262i))), -(~_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 0i, 2147483647i), vec3<i32>(16819i, 36142i, -2147483647i), vec3<i32>(18706i, 55508i, 25476i)))), true, vec3<bool>(any(!(!vec4<bool>(global0.x, global0.x, global0.x, global0.x))), !all(!vec4<bool>(global0.x, true, global0.x, global0.x)), !(!global0.x | global0.x)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(689f, 738f)) * -913f)))) * 1000f);
    var_0 = Struct_2(~select(~reverseBits(vec4<u32>(36798u, var_0.a.x, u_input.a.x, var_0.a.x)), vec4<u32>(1u, _wgslsmith_add_u32(1108u, u_input.a.x), 4294967295u, 27065u), select(vec4<bool>(var_0.d.x, global0.x, var_0.c, true), vec4<bool>(true, true, global0.x, var_0.d.x), all(vec4<bool>(false, var_0.d.x, true, false)))), vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(var_0.b, vec3<i32>(var_0.b.x, -2147483647i, 2147483647i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -28435i, var_0.b.x), var_0.b)), ~1i, i32(-1i) * -var_0.b.x) << (~vec3<u32>(~var_0.a.x, var_0.a.x, _wgslsmith_sub_u32(var_0.a.x, u_input.a.x)) % vec3<u32>(32u)), !any(select(global0.zx, vec2<bool>(global0.x, var_0.c), false)) | global0.x, var_0.d);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-666f, 229f)), _wgslsmith_f_op_f32(f32(-1f) * -2666f))));
    var_0 = Struct_2(vec4<u32>(~(~(u_input.a.x >> (34207u % 32u))), 0u, ~(u_input.a.x >> (4294967295u % 32u)), 4294967295u), vec3<i32>(_wgslsmith_div_i32(1i, var_0.b.x) >> (var_0.a.x % 32u), var_0.b.x, var_0.b.x), !((_wgslsmith_dot_vec2_u32(u_input.a, u_input.a) <= u_input.a.x) && all(global0.wxx)), select(!select(var_0.d, select(var_0.d, vec3<bool>(true, global0.x, var_0.d.x), global0.x), false), vec3<bool>(true, true, var_0.d.x), !select(vec3<bool>(false, var_0.c, true), select(var_0.d, vec3<bool>(true, var_0.d.x, var_0.d.x), global0.x), !global0.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-182f, -236f, var_0.c))))), 618f)) + _wgslsmith_f_op_f32(f32(-1f) * -553f));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_3) -> bool {
    global0 = !(!select(!(!vec4<bool>(arg_2.a.d.x, false, arg_2.a.c, arg_2.a.d.x)), vec4<bool>(arg_2.a.c, true, true, true), select(vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(true, global0.x, arg_2.a.d.x, false), select(vec4<bool>(arg_2.a.d.x, arg_2.a.c, false, true), vec4<bool>(true, false, global0.x, true), arg_2.a.c))));
    var var_0 = vec2<i32>(~16271i, arg_2.b);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1f + arg_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-950f, -256f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, -1891f, true)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-515f * arg_1.b) * 181f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.b)))));
    let var_2 = arg_2.a;
    var var_3 = arg_1;
    return select(select(global0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a.a.x, 1u), vec2<u32>(0u, arg_2.a.a.x)) > firstTrailingBit(~u_input.a.x), abs(-1i) > _wgslsmith_sub_i32(_wgslsmith_mult_i32(var_2.b.x, 0i), -9520i)), false, ~(-21484i) == -arg_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<bool>(!all(!(!vec3<bool>(global0.x, global0.x, global0.x))), global0.x, !global0.x, func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1195f, 1418f))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-791f, -599f) * vec2<f32>(-471f, -1558f))))), Struct_1(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.a.x, 20009u), vec3<u32>(2447u, 20335u, 8763u)), vec3<u32>(47209u, 102167u, 21450u)), _wgslsmith_f_op_f32(func_1())), Struct_3(Struct_2(func_2(-364f), select(vec3<i32>(6064i, 45356i, -10727i), vec3<i32>(2147483647i, -24822i, -2147483647i), global0.yyz), global0.x && true, select(vec3<bool>(true, global0.x, false), global0.yyz, global0.zwx)), _wgslsmith_add_i32(abs(-41802i), 2799i))));
    let var_0 = _wgslsmith_div_vec3_i32(abs(vec3<i32>(~1i, ~_wgslsmith_div_i32(2147483647i, -1i), reverseBits(-2147483647i) & select(1i, -380i, global0.x))), -vec3<i32>(select(_wgslsmith_sub_i32(-5369i, 0i), -2147483647i, true), 13398i, countOneBits(24925i) | firstTrailingBit(19236i)));
    let var_1 = countOneBits(74895u);
    global0 = vec4<bool>(func_4(vec2<f32>(1f, 1f), Struct_1(vec3<u32>(u_input.a.x, var_1, u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -200f)), Struct_3(Struct_2(vec4<u32>(var_1, 0u, 12515u, var_1), var_0, global0.x, global0.xwx), -1431i)) || true, true, all(global0.xy) || true, global0.x);
    var var_2 = Struct_2(select(~func_2(_wgslsmith_f_op_f32(f32(-1f) * -328f)), reverseBits(vec4<u32>(31356u, 97661u, 27876u | u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1, 23923u, 0u, 1u), vec4<u32>(0u, 19102u, 1u, 38429u)))), !select(select(vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(false, true, true, false), false), vec4<bool>(global0.x, true, false, false), select(vec4<bool>(false, global0.x, true, false), vec4<bool>(global0.x, true, global0.x, global0.x), false))), firstTrailingBit(~(vec3<i32>(var_0.x, var_0.x, var_0.x) | vec3<i32>(var_0.x, -2147483647i, 27278i))), func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, -1505f), vec2<f32>(-143f, 280f))) + vec2<f32>(1386f, 372f)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(809f, 973f), vec2<f32>(1237f, -1000f), vec2<bool>(true, global0.x))), vec2<f32>(370f, 415f), any(vec4<bool>(global0.x, global0.x, global0.x, true))))), Struct_1(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(38627u, 30011u, u_input.a.x), vec3<u32>(u_input.a.x, 60333u, u_input.a.x)), reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<u32>(65437u, 1u, 0u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-562f, 109f)), -660f)), Struct_3(Struct_2(vec4<u32>(2383u, 4294967295u, var_1, 4294967295u) | vec4<u32>(u_input.a.x, u_input.a.x, 95291u, var_1), -var_0, all(vec3<bool>(global0.x, false, false)), global0.wyz), 1i)), vec3<bool>(true, true, !global0.x));
    let var_3 = !(!select(!vec4<bool>(var_2.d.x, false, false, true), !(!vec4<bool>(global0.x, false, false, var_2.d.x)), func_3(Struct_1(vec3<u32>(var_2.a.x, 31787u, 55829u), -178f), _wgslsmith_f_op_f32(1214f + 845f), select(var_2.a.wxz, var_2.a.yxz, false), var_2.a.wxy)));
    var var_4 = ~min(min(var_0, -firstTrailingBit(var_0)), var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(1u, countOneBits(var_2.a.x)), var_4.x);
}

