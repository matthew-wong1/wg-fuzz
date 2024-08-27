struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: f32,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: u32,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2) -> bool {
    let var_0 = vec3<bool>(select(arg_1.e, true, any(vec3<bool>(arg_1.e, arg_1.e, all(vec4<bool>(arg_1.e, arg_1.e, arg_1.e, arg_1.e))))), any(select(vec4<bool>(true, false, arg_1.e, arg_1.e), select(vec4<bool>(arg_1.e, true, false, arg_1.e), vec4<bool>(true, false, arg_1.e, true), vec4<bool>(true, arg_1.e, true, arg_1.e)), true)) & all(!select(vec2<bool>(arg_1.e, arg_1.e), vec2<bool>(false, arg_1.e), vec2<bool>(arg_1.e, true))), arg_1.e);
    var var_1 = Struct_1(select(!select(!var_0.yz, vec2<bool>(var_0.x, false), select(var_0.zy, var_0.zx, vec2<bool>(var_0.x, true))), !select(select(var_0.zy, vec2<bool>(true, true), var_0.xx), vec2<bool>(var_0.x, arg_1.e), !arg_1.e), !var_0.yy), vec4<i32>(u_input.c, 1i, -u_input.c >> (_wgslsmith_mult_u32(7024u, 104704u) % 32u), -_wgslsmith_mod_i32(-2147483647i, u_input.c)) ^ arg_1.d, 1328f, u_input.c, select(_wgslsmith_mod_vec2_i32(arg_1.a.xy, arg_1.a.zx), arg_1.a.wy, vec2<bool>(var_0.x, true)));
    var var_2 = arg_1.e;
    var_2 = false;
    let var_3 = true;
    return var_0.x;
}

fn func_2() -> Struct_1 {
    return Struct_1(vec2<bool>(true, !func_3(~vec3<u32>(u_input.d, u_input.a.x, u_input.b.x), Struct_2(vec4<i32>(u_input.c, -27660i, 0i, 2147483647i), 1557i, 42587u, vec4<i32>(28508i, u_input.c, u_input.c, 24778i), true))), ~(-(~vec4<i32>(u_input.c, -2147483647i, u_input.c, u_input.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(923f)))) + -2678f), reverseBits(~max(1i, -15844i) | _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c, u_input.c, 0i), vec3<i32>(u_input.c, 31601i, 2147483647i))), countOneBits(vec2<i32>(_wgslsmith_div_i32(-27313i, u_input.c), u_input.c << (u_input.a.x % 32u)) ^ (vec2<i32>(1i, u_input.c) | vec2<i32>(u_input.c, u_input.c))));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: u32, arg_3: vec2<u32>) -> i32 {
    let var_0 = vec2<bool>(arg_1.e, any(!select(!vec4<bool>(arg_1.e, arg_1.e, false, false), vec4<bool>(arg_1.e, true, arg_1.e, true), select(vec4<bool>(false, arg_1.e, arg_1.e, true), vec4<bool>(arg_1.e, true, false, true), arg_1.e))));
    var var_1 = Struct_3(func_2(), ~(~_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(84789u, arg_1.c), arg_3, arg_0.yx), ~arg_3)), ~(~reverseBits(20979u)));
    let var_2 = Struct_3(Struct_1(!(!var_1.a.a), vec4<i32>(-2403i, 1i, firstLeadingBit(-1i), ~(~var_1.a.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_1.a.c))))), _wgslsmith_sub_i32(0i, u_input.c), arg_1.a.wz), vec2<u32>(0u, reverseBits(~10111u) >> ((0u << (_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(63047u, u_input.d)) % 32u)) % 32u)), abs(1u));
    let var_3 = var_2.b & vec2<u32>(57525u & (u_input.d & 0u), u_input.b.x);
    var var_4 = ~u_input.c;
    return ~(-199i);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec4<i32>) -> vec2<bool> {
    let var_0 = arg_0;
    let var_1 = vec2<bool>(all(select(!(!vec4<bool>(false, false, var_0.e, arg_0.e)), select(vec4<bool>(false, var_0.e, var_0.e, arg_0.e), select(vec4<bool>(arg_0.e, arg_0.e, arg_0.e, arg_0.e), vec4<bool>(var_0.e, var_0.e, true, var_0.e), vec4<bool>(arg_0.e, true, true, arg_0.e)), func_3(vec3<u32>(arg_0.c, u_input.b.x, 51105u), var_0)), !vec4<bool>(false, true, arg_0.e, false))), !(~(-2147483647i) < func_1(vec4<u32>(4294967295u, 4294967295u, arg_0.c, var_0.c), Struct_2(vec4<i32>(arg_0.a.x, -2147483647i, u_input.c, -6554i), -2147483647i, u_input.b.x, var_0.d, true), 1u, vec2<u32>(u_input.b.x, 60889u))));
    var var_2 = vec4<u32>(_wgslsmith_clamp_u32(((u_input.d >> (arg_0.c % 32u)) ^ var_0.c) >> (_wgslsmith_clamp_u32(~4294967295u, ~1u, 1u) % 32u), ~_wgslsmith_clamp_u32(abs(arg_0.c), _wgslsmith_mult_u32(0u, 64175u), u_input.d), abs(0u << (_wgslsmith_clamp_u32(u_input.b.x, 4294967295u, var_0.c) % 32u))), arg_0.c, reverseBits(arg_0.c), arg_0.c);
    var var_3 = arg_0.a.wyw;
    var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(firstLeadingBit(~arg_0.c), 0u, arg_0.c | 10115u, ~55245u) & firstLeadingBit(abs(~vec4<u32>(1u, 4294967295u, 38029u, var_2.x))), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(var_0.c, 7666u, arg_0.c, u_input.a.x) ^ vec4<u32>(var_2.x, var_2.x, u_input.d, var_0.c)), max(_wgslsmith_div_vec4_u32(~vec4<u32>(arg_0.c, 67040u, 47810u, 1u), ~vec4<u32>(u_input.b.x, 1u, arg_0.c, arg_0.c)), ~vec4<u32>(var_2.x, 1u, 17368u, 2416u) >> (vec4<u32>(var_0.c, u_input.a.x, 1u, var_2.x) % vec4<u32>(32u))), ~vec4<u32>(abs(arg_0.c), _wgslsmith_mod_u32(u_input.b.x, 4332u), var_2.x, max(0u, var_0.c))), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.c, var_2.x, var_2.x, 0u), ~vec4<u32>(var_2.x, 4294967295u, var_2.x, var_0.c), min(vec4<u32>(68592u, 912u, var_0.c, 1u), vec4<u32>(u_input.b.x, 73876u, 32081u, u_input.d))), abs(~vec4<u32>(var_0.c, var_0.c, 4294967295u, 0u))) >> (_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0.c, var_2.x, arg_0.c, 0u) & (vec4<u32>(u_input.b.x, 1u, var_2.x, u_input.d) << (vec4<u32>(u_input.a.x, u_input.d, 35228u, var_2.x) % vec4<u32>(32u))), firstTrailingBit(abs(vec4<u32>(var_2.x, 1u, var_2.x, var_0.c)))) % vec4<u32>(32u)));
    return !vec2<bool>(arg_0.e, func_2().a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(countOneBits(select(firstLeadingBit(vec2<u32>(u_input.d, u_input.d)) << (max(vec2<u32>(44697u, u_input.d), u_input.b.xz) % vec2<u32>(32u)), u_input.a, func_4(Struct_2(vec4<i32>(-2147483647i, u_input.c, 4939i, 0i), -20432i, u_input.b.x, vec4<i32>(u_input.c, 7265i, 2147483647i, u_input.c), true), func_1(vec4<u32>(u_input.d, 269u, 34319u, u_input.b.x), Struct_2(vec4<i32>(27091i, -1i, 10373i, u_input.c), u_input.c, 0u, vec4<i32>(u_input.c, 2147483647i, u_input.c, -16334i), true), u_input.a.x, u_input.a), ~vec4<i32>(u_input.c, u_input.c, u_input.c, 72419i)))));
    var var_1 = _wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.b.x, var_0.a.x, u_input.b.x), vec4<u32>(1u, 1u, u_input.b.x, 13123u)), vec4<u32>(max(var_0.a.x, 94493u), select(1u, 0u, false), _wgslsmith_clamp_u32(0u, 70300u, var_0.a.x), u_input.b.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a.x, u_input.b.x, 4294967295u, ~countOneBits(var_0.a.x)), vec4<u32>(var_0.a.x, 1u, reverseBits(u_input.a.x), firstTrailingBit(u_input.a.x)) >> (vec4<u32>(countOneBits(u_input.b.x), ~u_input.a.x, countOneBits(var_0.a.x), _wgslsmith_mod_u32(var_0.a.x, 1u)) % vec4<u32>(32u))));
    var var_2 = Struct_1(vec2<bool>(func_4(Struct_2(vec4<i32>(-1i, -67368i, u_input.c, u_input.c) >> (vec4<u32>(var_0.a.x, var_1.x, var_1.x, 1u) % vec4<u32>(32u)), abs(-2147483647i), select(4294967295u, var_1.x, true), vec4<i32>(-1904i, 38895i, -8176i, -2147483647i), false), u_input.c, ~(vec4<i32>(u_input.c, u_input.c, u_input.c, 2147483647i) ^ vec4<i32>(-13972i, u_input.c, u_input.c, 2147483647i))).x, func_3(var_1.wyx, Struct_2(select(vec4<i32>(1i, 27979i, u_input.c, u_input.c), vec4<i32>(0i, 39367i, u_input.c, u_input.c), false), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.c, -1i, 0i), vec4<i32>(u_input.c, -17024i, u_input.c, -20825i)), ~66646u, _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<i32>(-1i, u_input.c, u_input.c, 2147483647i)), true))), ~vec4<i32>(func_1(vec4<u32>(u_input.d, 4294967295u, u_input.b.x, var_0.a.x), Struct_2(vec4<i32>(2147483647i, u_input.c, u_input.c, u_input.c), -8496i, var_0.a.x, vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), false), _wgslsmith_sub_u32(var_1.x, 59840u), u_input.b.zx), 1i, -21274i, max(u_input.c & u_input.c, u_input.c)), _wgslsmith_f_op_f32(-450f - 1091f), _wgslsmith_sub_i32(-(i32(-1i) * -16115i), 27750i), _wgslsmith_sub_vec2_i32(select(vec2<i32>(1i, u_input.c), abs(~vec2<i32>(18353i, u_input.c)), vec2<bool>(func_4(Struct_2(vec4<i32>(u_input.c, u_input.c, -1i, -6627i), 3223i, 1u, vec4<i32>(2147483647i, -1i, u_input.c, u_input.c), true), u_input.c, vec4<i32>(-2147483647i, 2147483647i, u_input.c, -29092i)).x, true)), reverseBits(-vec2<i32>(5657i, u_input.c))));
    var var_3 = var_1.zxw;
    var var_4 = Struct_1(!var_2.a, vec4<i32>(-25906i, u_input.c, ~_wgslsmith_mod_i32(0i, -2147483647i), ~_wgslsmith_add_i32(u_input.c, 24043i)) & var_2.b, _wgslsmith_f_op_f32(-615f * var_2.c), 1i ^ (~(var_2.e.x & var_2.d) ^ u_input.c), vec2<i32>(2147483647i, ~func_2().d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.c, -1997f)), _wgslsmith_mult_vec4_u32(firstTrailingBit(min(~vec4<u32>(0u, 4294967295u, 71766u, 0u), reverseBits(vec4<u32>(u_input.d, 45444u, 26940u, 35384u)))), _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(59662u, u_input.b.x, var_1.x, 38160u)), firstTrailingBit(~vec4<u32>(0u, 1u, 1u, 4294967295u)), vec4<u32>(4294967295u, 4294967295u, 53222u, var_3.x))));
}

