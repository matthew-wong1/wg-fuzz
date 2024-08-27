struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: f32 = 958f;

var<private> global2: u32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: i32, arg_3: Struct_2) -> vec2<i32> {
    let var_0 = 4747u;
    var var_1 = -2256f;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1442f, 1090f, _wgslsmith_f_op_f32(-arg_3.d.c.x) <= -609f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -100f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -390f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_3.d.c.x + _wgslsmith_f_op_f32(-arg_3.d.c.x))))));
    let var_2 = 22052i ^ -(~(-1i) & arg_3.b.b.x);
    var var_3 = !(!vec3<bool>(arg_3.e.x, false, true != any(vec4<bool>(false, arg_3.e.x, global0.x, global0.x))));
    return vec2<i32>(_wgslsmith_add_i32(45578i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(abs(arg_3.a.x), ~2147483647i), _wgslsmith_mult_i32(var_2, arg_3.a.x) >> (arg_3.b.a.x % 32u), arg_3.a.x)), -2147483647i);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(firstLeadingBit(~u_input.d.x), vec3<u32>(0u, 1u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(3654u, 1u), 10653u)), ~_wgslsmith_sub_i32(abs(_wgslsmith_add_i32(-9151i, 19985i)), 1i), 0i & (_wgslsmith_dot_vec2_i32(vec2<i32>(29989i, 0i), ~vec2<i32>(-15479i, 0i)) & _wgslsmith_mod_i32(2147483647i >> (u_input.a.x % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(2147483647i, 30314i)))));
    var var_1 = Struct_4(-1912f, Struct_1(var_0.b.xx, abs(func_3(vec4<u32>(var_0.b.x, 1u, var_0.a, 4294967295u), u_input.b.x, -2147483647i, Struct_2(vec3<i32>(var_0.c, 2147483647i, 2797i), Struct_1(var_0.b.zx, vec2<i32>(var_0.c, 15366i), vec2<f32>(609f, 2611f), var_0.b.x, 7643i), var_0.d, Struct_1(u_input.d, vec2<i32>(var_0.c, 0i), vec2<f32>(-2419f, 535f), 250u, -1i), vec2<bool>(global0.x, global0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1f, 1f)))), 0u, ~firstLeadingBit(var_0.d)), Struct_3(_wgslsmith_mod_u32(u_input.d.x, ~1u), var_0.b, _wgslsmith_sub_i32(-73748i, select(var_0.d, 50558i, false)) & var_0.d, -1i));
    var var_2 = var_1.b;
    let var_3 = Struct_2(-(~reverseBits(vec3<i32>(var_0.d, var_2.b.x, -42329i)) ^ abs(vec3<i32>(var_0.d, -1i, var_1.c.c) << (var_0.b % vec3<u32>(32u)))), Struct_1(vec2<u32>(4294967295u, min(var_2.d, ~39210u)), _wgslsmith_div_vec2_i32(max(var_1.b.b << (vec2<u32>(4698u, 63142u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.c, -9907i), vec2<i32>(var_2.b.x, 0i), var_1.b.b)), _wgslsmith_mod_vec2_i32(~var_2.b, reverseBits(var_2.b))), vec2<f32>(288f, var_1.a), ((54807u | var_2.d) & 1u) ^ (u_input.b.x & ~var_0.b.x), ~max(-1i, reverseBits(38954i))), select(1i, _wgslsmith_dot_vec4_i32(min(vec4<i32>(var_1.c.c, var_2.e, var_1.b.b.x, -2147483647i), vec4<i32>(var_0.d, 0i, var_2.e, -1i) | vec4<i32>(var_1.b.b.x, -2147483647i, 28387i, var_1.b.b.x)), vec4<i32>(-var_1.c.d, var_0.c ^ -7666i, 0i ^ var_1.b.e, 0i)), true), Struct_1(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(var_1.c.a, 0u)), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, var_0.b.x), var_0.b.zz) << (~var_1.b.a % vec2<u32>(32u))), firstTrailingBit(firstLeadingBit(-var_1.b.b)), vec2<f32>(-718f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2200f * var_2.c.x) + -1023f)), ~reverseBits(select(var_0.b.x, 40527u, global0.x)), 2147483647i), vec2<bool>(false, global0.x));
    let var_4 = -221f;
    return var_1.b;
}

fn func_1() -> i32 {
    let var_0 = func_2();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(1063f + var_0.c.x), -722f, var_0.c.x);
    let var_2 = Struct_2(_wgslsmith_sub_vec3_i32(vec3<i32>(abs(-2147483647i), var_0.b.x, func_3(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 5681u, 1169u, u_input.e), vec4<u32>(5759u, var_0.a.x, var_0.d, 15233u)), 69700u, abs(var_0.e), Struct_2(vec3<i32>(21607i, var_0.e, var_0.b.x), Struct_1(u_input.d, vec2<i32>(-59784i, -13806i), vec2<f32>(-987f, var_1.x), 1u, var_0.b.x), var_0.e, var_0, global0.xx)).x), ~select(vec3<i32>(var_0.e, var_0.e, -2147483647i), _wgslsmith_add_vec3_i32(vec3<i32>(42658i, -1i, var_0.e), vec3<i32>(0i, var_0.e, var_0.b.x)), false)), var_0, abs(abs((var_0.e >> (u_input.b.x % 32u)) & (var_0.b.x & -35351i))), Struct_1(firstLeadingBit(~min(var_0.a, u_input.a.yy)), firstTrailingBit(vec2<i32>(1i, firstTrailingBit(-2147483647i))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_0.c))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.x, var_0.c.x), vec2<f32>(var_1.x, var_1.x))))), ~u_input.b.x, func_3(select(vec4<u32>(var_0.d, 1u, u_input.b.x, 1u), vec4<u32>(var_0.d, 1u, 74727u, u_input.b.x), global0.x) ^ vec4<u32>(var_0.a.x, 21521u, 0u, var_0.a.x), 1u << ((var_0.d | 0u) % 32u), ~var_0.b.x & ~16331i, Struct_2(vec3<i32>(-2024i, -10725i, var_0.b.x), func_2(), 2147483647i, Struct_1(vec2<u32>(u_input.e, 33880u), var_0.b, vec2<f32>(-1683f, 1678f), 68261u, 0i), !global0.zz)).x), vec2<bool>(select(all(!vec4<bool>(false, false, false, global0.x)), global0.x, global0.x), true));
    var var_3 = vec4<bool>(true, var_2.e.x && false, true, !((_wgslsmith_dot_vec4_i32(vec4<i32>(29940i, 0i, var_0.e, var_0.b.x), vec4<i32>(var_0.b.x, 4178i, var_0.e, -44017i)) != -1i) | !any(vec3<bool>(true, global0.x, var_2.e.x))));
    var var_4 = vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.c, var_0.e), reverseBits(vec2<i32>(var_0.e, -2147483647i)))), var_0.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.d.b.x, 13524i, countOneBits(13159i), 13477i), ~(-vec4<i32>(2147483647i, var_2.d.e, var_2.b.b.x, 5802i)))) >> (_wgslsmith_mult_vec3_u32(~(~(u_input.a ^ u_input.a)), ~abs(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 4294967295u, 1u), u_input.a))) % vec3<u32>(32u));
    return var_4.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -abs(max(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), select(vec4<i32>(-29054i, 37009i, 0i, 17154i), vec4<i32>(2147483647i, -2786i, -1785i, -26535i), global0.x)), firstTrailingBit(-vec4<i32>(22718i, 2147483647i, -16365i, 0i))));
    var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(func_1(), func_1() << (max(u_input.c, 1u) % 32u), _wgslsmith_mod_i32(36217i >> (1u % 32u), var_0.x | -2147483647i), ~var_0.x) | ~(~vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x) & (vec4<i32>(var_0.x, 0i, var_0.x, var_0.x) & vec4<i32>(1i, -30610i, var_0.x, var_0.x))), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, 1i, var_0.x, var_0.x) & -vec4<i32>(-9691i, var_0.x, 53714i, 2147483647i), vec4<i32>(0i, 1809i, 9551i, -40196i) | -vec4<i32>(-2147483647i, var_0.x, -32304i, var_0.x)) | vec4<i32>(_wgslsmith_add_i32(var_0.x, -var_0.x), ~var_0.x ^ var_0.x, func_1() >> (113714u % 32u), -34428i << (u_input.c % 32u)));
    let var_1 = func_2();
    var var_2 = _wgslsmith_dot_vec4_u32(~abs(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.d, 3033u, 15542u, 33617u), vec4<u32>(u_input.c, 18124u, u_input.c, 10969u)), _wgslsmith_sub_vec4_u32(vec4<u32>(20076u, u_input.a.x, 61938u, 0u), vec4<u32>(1u, 0u, 21854u, 46873u)))), vec4<u32>((var_1.d | var_1.d) << (u_input.d.x % 32u), select(_wgslsmith_clamp_u32(~45443u, var_1.d, u_input.a.x), min(~4294967295u, ~u_input.a.x), !(!global0.x)), reverseBits(_wgslsmith_clamp_u32(func_2().a.x, u_input.e | 0u, reverseBits(u_input.c))), ~reverseBits(~u_input.c)));
    var var_3 = -1636f;
    var var_4 = Struct_3(38394u, max(u_input.a, vec3<u32>(~u_input.e, _wgslsmith_mod_u32(~16819u, 9789u), ~var_1.a.x)), select(firstLeadingBit(var_0.x), -_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, var_0.x, var_1.b.x, -43880i), -vec4<i32>(var_0.x, var_1.b.x, 2147483647i, var_0.x)), global0.x), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(~u_input.b.x >> (4294967295u % 32u), 0u, _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(5866u, u_input.d.x), _wgslsmith_dot_vec2_u32(u_input.d, var_4.b.yx)), 39537u)), ~(var_4.d << ((u_input.e >> (var_1.d % 32u)) % 32u)), ~min(func_3(min(vec4<u32>(0u, 34558u, var_1.a.x, 0u), vec4<u32>(1u, 4294967295u, 117735u, 31801u)), var_4.b.x, _wgslsmith_div_i32(var_0.x, -62452i), Struct_2(var_0.xwy, var_1, -65i, var_1, global0.xy)).x, ~(-3189i)), ~var_1.b);
}

