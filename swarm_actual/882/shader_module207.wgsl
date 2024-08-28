struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: u32,
    c: vec2<i32>,
    d: bool,
    e: vec3<f32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    let var_0 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(103f - _wgslsmith_f_op_f32(1872f + _wgslsmith_f_op_f32(f32(-1f) * -921f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-369f + 538f) - _wgslsmith_f_op_f32(select(317f, 1309f, arg_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1241f, _wgslsmith_f_op_f32(f32(-1f) * -154f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -846f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1047f))), abs(~(~_wgslsmith_sub_u32(1u, 0u))), -reverseBits(~u_input.c.xx), all(arg_0.xyw), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-214f * 653f) - _wgslsmith_div_f32(661f, -904f)) - -188f), -419f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -428f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1004f + -1483f) - _wgslsmith_f_op_f32(max(862f, 533f)))))));
    return ~(~0u);
}

fn func_2() -> bool {
    let var_0 = select(vec2<bool>(true, true), vec2<bool>(!select(true, true, true), true), any(!vec4<bool>(all(vec2<bool>(false, false)), true, any(vec3<bool>(true, true, false)), false)));
    let var_1 = Struct_5(Struct_4(vec4<f32>(444f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 986f), _wgslsmith_f_op_f32(sign(-202f)), -1000f), _wgslsmith_dot_vec4_u32(vec4<u32>(~0u, ~27899u, func_3(vec4<bool>(var_0.x, false, false, var_0.x)), 1u), _wgslsmith_mult_vec4_u32(select(vec4<u32>(4623u, 1u, 1u, 10273u), vec4<u32>(70503u, 98920u, 0u, 0u), false), vec4<u32>(0u, 14834u, 62950u, 4294967295u))), ~abs(~u_input.d.yy), any(vec4<bool>(true, true, var_0.x, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2366f, 223f, 676f) - vec3<f32>(1840f, 1726f, 1920f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1346f, 591f, -372f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(435f, 1016f, 581f) + vec3<f32>(-1678f, 445f, 201f)), vec3<f32>(650f, -240f, 1000f)))));
    let var_2 = -var_1.a.c;
    let var_3 = Struct_3(_wgslsmith_clamp_i32(var_1.a.c.x, var_2.x, select(var_2.x << (countOneBits(var_1.a.b) % 32u), firstLeadingBit(-7561i & var_2.x), true)), Struct_1(-(i32(-1i) * -18515i), -vec2<i32>(var_1.a.c.x, 2147483647i), -var_1.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1000f)))))), Struct_1(u_input.d.x ^ reverseBits(1i), ~_wgslsmith_add_vec2_i32(vec2<i32>(1i, var_1.a.c.x), _wgslsmith_div_vec2_i32(var_2, vec2<i32>(u_input.a, 7128i))), ~firstLeadingBit(var_1.a.c.x) >> (var_1.a.b % 32u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(806f, _wgslsmith_f_op_f32(f32(-1f) * -461f))), _wgslsmith_div_f32(-802f, _wgslsmith_f_op_f32(var_1.a.e.x * -638f)))), ~(~vec2<u32>(~27681u, ~4294967295u)), Struct_1(~1i, var_1.a.c, abs(10707i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-653f * -536f) + _wgslsmith_f_op_f32(ceil(var_1.a.e.x))), var_1.a.e.x)));
    var var_4 = any(vec2<bool>(true, true));
    return any(var_0);
}

fn func_1() -> Struct_3 {
    let var_0 = select(select(vec4<bool>(func_2(), false, true, -12598i >= u_input.d.x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, all(vec2<bool>(true, true)))), vec4<bool>(true, true, true, true)), select(!vec4<bool>(any(vec2<bool>(true, true)), true, all(vec4<bool>(false, false, false, false)), true), vec4<bool>(true, select(false, false, true), true && all(vec3<bool>(true, false, true)), !any(vec3<bool>(false, true, false))), true), select(vec4<bool>(true, true, true, true), vec4<bool>((u_input.b >> (4294967295u % 32u)) == ~u_input.a, true, !all(vec4<bool>(false, true, false, false)), all(vec3<bool>(false, false, false))), !(true || any(vec4<bool>(true, true, true, true)))));
    let var_1 = Struct_3(u_input.a, Struct_1(-_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-1i, u_input.b, 15204i), ~u_input.b), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(-vec2<i32>(-61849i, u_input.c.x), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, -3060i), vec2<i32>(u_input.b, 20655i))), select(u_input.c.xx, vec2<i32>(u_input.a, -73691i), vec2<bool>(var_0.x, false)) << (vec2<u32>(9964u, 7683u) % vec2<u32>(32u))), -17356i, _wgslsmith_f_op_f32(1511f - _wgslsmith_f_op_f32(f32(-1f) * -1893f))), Struct_1(u_input.a, vec2<i32>(-u_input.c.x, countOneBits(-31456i)), ~_wgslsmith_mod_i32(-u_input.d.x, max(u_input.a, u_input.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(245f + -305f)))), ~_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(68169u, 0u), vec2<u32>(1u, 4294967295u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(22288u, 0u), vec2<u32>(14221u, 20685u), vec2<u32>(4294967295u, 29625u)), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(73776u, 84769u))), ~(~vec2<u32>(23573u, 4294967295u))), Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.d.x, u_input.a, u_input.a), vec4<i32>(35863i, -30636i, u_input.d.x, u_input.c.x)), ~u_input.d.x) ^ 52000i, -firstTrailingBit(reverseBits(u_input.c.xz)), -u_input.a, -746f));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.e.d, -535f, _wgslsmith_f_op_f32(1292f * -951f), var_1.c.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.e.d, 1059f, var_1.c.d, 491f)))))), Struct_1(_wgslsmith_div_i32(_wgslsmith_mult_i32(-u_input.c.x, 1i), _wgslsmith_dot_vec2_i32(-vec2<i32>(6979i, var_1.b.b.x), -vec2<i32>(u_input.b, 2147483647i))), var_1.c.b, u_input.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.b.d), _wgslsmith_f_op_f32(min(var_1.e.d, var_1.b.d)), false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-526f)), _wgslsmith_f_op_f32(f32(-1f) * -1222f))))), Struct_1(-1i, vec2<i32>(u_input.c.x, var_1.e.b.x), 1i, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.c.d), _wgslsmith_f_op_f32(ceil(var_1.e.d)))), _wgslsmith_f_op_f32(f32(-1f) * -1682f)))), var_1.d.x);
    var var_3 = countOneBits(_wgslsmith_clamp_u32(~var_2.d, abs(select(_wgslsmith_add_u32(127778u, 1u), firstTrailingBit(14874u), all(var_0.xx))), _wgslsmith_dot_vec3_u32(max(min(vec3<u32>(0u, 26128u, var_2.d), vec3<u32>(var_1.d.x, 15788u, 1u)), vec3<u32>(var_1.d.x, 22581u, var_1.d.x)), ~vec3<u32>(4294967295u, var_1.d.x, 4294967295u))));
    var var_4 = Struct_5(Struct_4(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(var_1.c.d, 471f), _wgslsmith_div_f32(var_2.c.d, -393f), var_1.e.d, 732f))), ~4294967295u, vec2<i32>(max(var_1.c.a, var_1.c.b.x), var_1.a) & reverseBits(var_2.c.b), all(vec3<bool>(true, true, true)), var_2.a.wyy));
    return var_1;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: Struct_4) -> vec4<u32> {
    let var_0 = arg_2;
    let var_1 = !(!arg_3.d);
    var var_2 = arg_1.c;
    let var_3 = !any(vec2<bool>((i32(-1i) * -2147483647i) != firstTrailingBit(0i), true));
    var var_4 = Struct_1(u_input.c.x, min(vec2<i32>(-_wgslsmith_dot_vec2_i32(arg_1.e.b, vec2<i32>(arg_1.a, arg_1.c.c)), ~2147483647i), var_2.b), _wgslsmith_clamp_i32(max(u_input.d.x, i32(-1i) * -19319i), -1i, arg_3.c.x), var_2.d);
    return (vec4<u32>(firstLeadingBit(arg_2.x), abs(arg_3.b & arg_1.d.x), ~1u, ~var_0.x >> ((var_0.x | 11282u) % 32u)) >> (~(~abs(vec4<u32>(0u, 1u, 27388u, arg_2.x))) % vec4<u32>(32u))) | _wgslsmith_add_vec4_u32(vec4<u32>(~_wgslsmith_add_u32(arg_2.x, var_0.x), var_0.x, ~4151u << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 1u), vec2<u32>(0u, arg_2.x)) % 32u), arg_3.b), reverseBits(select(vec4<u32>(var_0.x, 1u, arg_3.b, arg_2.x), firstTrailingBit(vec4<u32>(6910u, 47227u, 1u, var_0.x)), !vec4<bool>(var_3, true, var_3, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(1u);
    var var_1 = func_4(vec2<f32>(_wgslsmith_div_f32(-652f, _wgslsmith_f_op_f32(-1f)), -1438f), func_1(), func_1().d, Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-427f, 565f, -528f, 1241f))), 57966u, min(_wgslsmith_mult_vec2_i32(-u_input.d.zz, _wgslsmith_sub_vec2_i32(u_input.c.yz, u_input.c.yx)), vec2<i32>(u_input.d.x, u_input.d.x)), true, _wgslsmith_f_op_vec3_f32(vec3<f32>(837f, _wgslsmith_f_op_f32(-490f + 309f), 252f) * vec3<f32>(_wgslsmith_f_op_f32(-944f - 641f), -794f, _wgslsmith_f_op_f32(step(-1000f, 102f))))));
    let var_2 = select(vec4<bool>(any(vec3<bool>(any(vec4<bool>(false, false, true, true)), var_1.x > var_1.x, true)), any(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false), vec3<bool>(true, false, false), any(vec2<bool>(false, true)))), any(select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), true)), true), vec4<bool>(true, ~_wgslsmith_add_i32(14333i, 51341i) > ~(-u_input.a), true, true), -1015f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1807f)))) * _wgslsmith_f_op_f32(1f * -1602f)));
    let var_3 = select(select(var_2.xzx, vec3<bool>(true, true, true), true), select(select(vec3<bool>(1u != var_1.x, any(vec3<bool>(var_2.x, var_2.x, true)), false), vec3<bool>(u_input.b >= -1i, false, any(vec4<bool>(var_2.x, false, var_2.x, false))), vec3<bool>(true, true, true)), vec3<bool>(true, ~var_1.x > 1u, all(select(vec2<bool>(var_2.x, true), var_2.zy, vec2<bool>(false, false)))), true), vec3<bool>(all(var_2.zxx), any(vec3<bool>(var_2.x, true, u_input.a <= -28361i)), true));
    var_0 = abs(var_1.x);
    let var_4 = func_1().c;
    var_0 = 24415u;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec2<u32>(1u, ~(~var_1.x))), select(abs(firstTrailingBit(select(vec4<i32>(22719i, -7226i, -2147483647i, u_input.b), vec4<i32>(u_input.d.x, u_input.c.x, 1i, -2147483647i), var_3.x))), abs(~vec4<i32>(-38213i, 0i, -1i, var_4.b.x)) | (~vec4<i32>(var_4.b.x, var_4.c, 2147483647i, 8076i) & vec4<i32>(-2147483647i, var_4.c, u_input.a, var_4.c)), false), var_1.zw, 1u);
}

