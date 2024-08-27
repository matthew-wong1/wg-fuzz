struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>) -> vec2<bool> {
    let var_0 = 69927u;
    let var_1 = arg_0.c.c.wzw;
    var var_2 = arg_0.c;
    var_2 = arg_0.c;
    let var_3 = vec4<i32>(1i, max(u_input.b.x, ~2147483647i), _wgslsmith_mod_i32(arg_0.c.b, countOneBits(abs(-1i))), arg_0.c.b & _wgslsmith_div_i32(arg_0.c.a | u_input.b.x, _wgslsmith_clamp_i32(arg_0.c.b, 16495i, _wgslsmith_add_i32(1i, arg_0.c.b))));
    return arg_0.b.yz;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<u32>) -> Struct_2 {
    let var_0 = 88594u;
    var var_1 = vec2<bool>(true, true);
    var_1 = vec2<bool>(!var_1.x, var_1.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-721f, -1534f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2221f, 330f)), _wgslsmith_div_vec2_f32(vec2<f32>(-1091f, -728f), vec2<f32>(2061f, -200f))) * vec2<f32>(1f, 1f))))));
    var_1 = select(vec2<bool>(any(vec3<bool>(var_1.x, false, var_1.x)), true), !(!(!vec2<bool>(var_1.x, var_1.x))), !select(vec2<bool>(true, true), func_3(Struct_3(Struct_1(vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec2<u32>(4294967295u, var_0), 0u), vec3<bool>(true, false, true), Struct_2(u_input.b.x, -2147483647i, vec4<f32>(var_2.x, -1000f, -605f, -1000f), Struct_1(vec4<bool>(var_1.x, false, var_1.x, true), u_input.a, 87543u), true), false), vec2<bool>(true, true)), true));
    return Struct_2(_wgslsmith_mod_i32(-2147483647i, ~_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.b.x, u_input.b.x))), countOneBits(_wgslsmith_add_i32(39957i, _wgslsmith_mult_i32(1i, 0i) & _wgslsmith_dot_vec2_i32(vec2<i32>(14024i, u_input.b.x), vec2<i32>(-1i, -1i)))), vec4<f32>(1f, _wgslsmith_f_op_f32(987f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + 102f) * var_2.x)), var_2.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -344f)))), Struct_1(select(select(vec4<bool>(var_1.x, true, false, var_1.x), vec4<bool>(var_1.x, var_1.x, true, false), !var_1.x), select(!vec4<bool>(var_1.x, false, false, true), vec4<bool>(var_1.x, true, var_1.x, var_1.x), any(vec4<bool>(var_1.x, true, var_1.x, var_1.x))), ~(-2147483647i) >= max(u_input.b.x, u_input.b.x)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, 20089u), ~arg_0), ~abs(u_input.e)), !((1u <= var_0) & true) || (var_1.x | !var_1.x));
}

fn func_4(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_2) -> bool {
    var var_0 = u_input.e;
    let var_1 = func_2(arg_2.d.b, vec3<u32>(max(_wgslsmith_sub_u32(u_input.e, 1u), 4294967295u), _wgslsmith_add_u32(~(~arg_2.d.c), arg_2.d.b.x | 4294967295u), abs(18486u & arg_2.d.b.x))).d;
    var_0 = _wgslsmith_add_u32(abs(reverseBits(arg_2.d.b.x)), _wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(1u, select(arg_1.x, var_1.c, !arg_0), 26725u)));
    var var_2 = -firstTrailingBit(-select(reverseBits(u_input.b.x), -2147483647i << (u_input.e % 32u), arg_2.c.x < -240f));
    let var_3 = !func_2(arg_2.d.b, vec3<u32>(abs(1u), u_input.c, select(~arg_1.x, ~4294967295u, true))).d.a.zxz;
    return true;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    var var_0 = arg_1.d.a.xyx;
    var var_1 = any(arg_0.d.a.xyz);
    var_1 = !(713f < arg_1.c.x);
    let var_2 = func_2(arg_1.d.b, firstTrailingBit(reverseBits(vec3<u32>(arg_0.d.b.x, 43917u, 0u)) & ~reverseBits(vec3<u32>(arg_0.d.c, 47409u, arg_1.d.c))));
    let var_3 = countOneBits(vec4<i32>(min(_wgslsmith_div_i32(var_2.a, var_2.a ^ 1i), (u_input.b.x & 2147483647i) << (firstLeadingBit(4294967295u) % 32u)), arg_1.a, arg_1.a, var_2.b));
    return true;
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -118f)));
    var var_1 = Struct_2(max(max(1659i, _wgslsmith_div_i32(u_input.b.x, u_input.b.x)), 1i), u_input.b.x, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), -1183f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0))), var_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2094f, _wgslsmith_f_op_f32(2042f - -114f), _wgslsmith_f_op_f32(step(466f, var_0)), _wgslsmith_f_op_f32(arg_0 + arg_0))))), Struct_1(!(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), true)), vec2<u32>(u_input.e, ~_wgslsmith_sub_u32(u_input.c, u_input.d)), _wgslsmith_mod_u32(1u << ((u_input.d << (u_input.c % 32u)) % 32u), ~(u_input.a.x | 0u))), func_5(Struct_2(u_input.b.x, u_input.b.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(508f, 346f, var_0, 1948f) * vec4<f32>(var_0, -616f, arg_0, 1471f)), Struct_1(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), true), vec2<u32>(34196u, 0u), _wgslsmith_mod_u32(u_input.c, 22472u)), func_4(true, vec3<u32>(u_input.e, 40400u, 4294967295u), func_2(vec2<u32>(97746u, u_input.d), vec3<u32>(12028u, u_input.a.x, 60939u)))), Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 1i), vec3<i32>(-3574i, u_input.b.x, u_input.b.x)) << (u_input.a.x % 32u), u_input.b.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1050f, var_0, var_0, arg_0)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 705f, var_0, -490f))), Struct_1(vec4<bool>(true, false, true, false), vec2<u32>(4294967295u, 0u), ~0u), true)));
    let var_2 = ~firstLeadingBit(-2147483647i);
    var_1 = func_2(_wgslsmith_mod_vec2_u32(var_1.d.b, ~u_input.a) << (~(~var_1.d.b ^ (u_input.a << (u_input.a % vec2<u32>(32u)))) % vec2<u32>(32u)), ~_wgslsmith_add_vec3_u32(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.d.c, 65089u, var_1.d.b.x), vec3<u32>(9375u, 0u, u_input.c))), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.d.b.x, 41562u, 32504u), vec3<u32>(var_1.d.c, 1u, u_input.d)) ^ ~vec3<u32>(4294967295u, u_input.d, 4294967295u)));
    var var_3 = var_1.d;
    return 10732u;
}

fn func_6(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> Struct_3 {
    var var_0 = arg_2.a.ww;
    let var_1 = arg_1;
    var var_2 = vec2<bool>(func_3(Struct_3(arg_2, arg_3.d.a.zxx, arg_3, var_0.x), vec2<bool>(!arg_3.d.a.x, arg_2.a.x)).x, true);
    let var_3 = arg_3.d;
    let var_4 = !var_2.x;
    return Struct_3(Struct_1(vec4<bool>(false, any(!var_3.a.xzz), var_2.x, var_0.x), select(_wgslsmith_div_vec2_u32(var_3.b, _wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(1u, 4073u), vec2<u32>(0u, arg_1))), ~(~var_3.b), arg_2.a.yy), min(firstTrailingBit(2770u), 1u ^ arg_3.d.c)), arg_3.d.a.ywy, func_2(~vec2<u32>(69223u, var_1 << (32077u % 32u)), vec3<u32>(~1u, firstLeadingBit(1u), abs(~19323u))), (arg_3.d.a.x & !func_2(u_input.a, arg_0).d.a.x) || arg_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(vec4<bool>(true, false, true, false), vec4<bool>(true, any(vec2<bool>(true, false)), (u_input.a.x ^ 1u) >= u_input.d, all(vec2<bool>(false, true))), select(false, true, false)), countOneBits(u_input.a), ~4747u);
    var var_1 = func_6(reverseBits(~(~firstTrailingBit(vec3<u32>(u_input.e, var_0.c, var_0.c)))), ~(var_0.b.x >> ((func_1(-565f) ^ ~u_input.a.x) % 32u)), func_2(~min(var_0.b, ~var_0.b), vec3<u32>(_wgslsmith_add_u32(~u_input.a.x, ~u_input.d), min(51771u, 0u) ^ ~u_input.e, 0u)).d, func_2(vec2<u32>(~u_input.a.x, ~30970u), firstTrailingBit(vec3<u32>(u_input.a.x, 63521u, u_input.a.x) ^ vec3<u32>(4294967295u, 4294967295u, var_0.c)) << ((reverseBits(vec3<u32>(25486u, u_input.e, var_0.c)) ^ ~vec3<u32>(u_input.e, u_input.a.x, 17268u)) % vec3<u32>(32u))));
    var_1 = Struct_3(func_2(vec2<u32>(~var_0.b.x, var_0.b.x) & ~max(var_0.b, var_0.b), reverseBits(reverseBits(vec3<u32>(u_input.d, u_input.a.x, 4294967295u) ^ vec3<u32>(var_1.c.d.c, var_0.b.x, 1u)))).d, var_0.a.wzy, var_1.c, min(~0u, var_0.c) >= _wgslsmith_div_u32(abs(abs(1u)), ~firstLeadingBit(var_0.b.x)));
    var_1 = Struct_3(var_0, vec3<bool>(true, any(var_1.c.d.a), !(var_0.b.x != ~var_1.c.d.b.x)), func_6((~vec3<u32>(1u, var_1.a.b.x, u_input.c) ^ ~vec3<u32>(var_1.c.d.b.x, var_0.b.x, u_input.c)) ^ select(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.c, 122978u, var_0.b.x), vec3<u32>(4294967295u, 4294967295u, 34687u)), ~vec3<u32>(1u, var_1.a.b.x, 102387u), var_1.a.a.xyx), select(var_0.b.x, _wgslsmith_mod_u32(7191u, 4294967295u) & (48961u >> (var_1.c.d.b.x % 32u)), select(all(vec4<bool>(var_1.d, false, false, true)), var_0.a.x, true)), Struct_1(!vec4<bool>(var_1.c.d.a.x, var_0.a.x, false, var_1.b.x), ~(vec2<u32>(u_input.e, 4294967295u) << (vec2<u32>(40155u, 4294967295u) % vec2<u32>(32u))), 1u), Struct_2(~var_1.c.a, 27800i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.c.c) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.c.x, -1249f, var_1.c.c.x, 384f))), func_6(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_0.c, 10692u), vec3<u32>(11068u, var_0.c, 50186u)), 4294967295u ^ var_1.a.c, Struct_1(var_0.a, vec2<u32>(30929u, 4294967295u), 4294967295u), func_2(vec2<u32>(var_0.c, 4294967295u), vec3<u32>(var_0.c, u_input.c, u_input.a.x))).c.d, var_1.c.e)).c, !(_wgslsmith_f_op_f32(-var_1.c.c.x) == _wgslsmith_div_f32(var_1.c.c.x, -751f)) | (_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.e, 30719u), var_1.c.d.b.x >> (u_input.e % 32u)) <= u_input.e));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1415f))));
    var_1 = Struct_3(Struct_1(select(var_1.a.a, !var_0.a, vec4<bool>(var_1.c.e, func_2(u_input.a, vec3<u32>(var_1.a.c, u_input.e, 40041u)).e, var_1.c.c.x == 406f, !var_0.a.x)), select(~func_2(u_input.a, vec3<u32>(u_input.c, u_input.a.x, var_0.b.x)).d.b, _wgslsmith_mod_vec2_u32(var_1.a.b, u_input.a | u_input.a), var_0.a.xy), _wgslsmith_dot_vec2_u32(u_input.a, func_6(firstLeadingBit(vec3<u32>(4294967295u, 98304u, 4294967295u)), 0u, Struct_1(var_0.a, vec2<u32>(17783u, var_1.c.d.c), 104370u), var_1.c).a.b)), vec3<bool>(var_1.c.d.a.x, true, reverseBits(_wgslsmith_div_u32(16562u, 4294967295u)) < _wgslsmith_mod_u32(~27066u, var_1.c.d.b.x)), Struct_2(var_1.c.a, -2147483647i, var_1.c.c, Struct_1(vec4<bool>(true, !var_0.a.x, any(vec3<bool>(var_1.b.x, var_1.d, var_0.a.x)), true), vec2<u32>(~var_1.a.c, _wgslsmith_dot_vec4_u32(vec4<u32>(37287u, u_input.a.x, 2362u, 1u), vec4<u32>(u_input.d, u_input.e, 1u, 51211u))), ~var_0.c), true), false);
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_add_vec4_i32(vec4<i32>(-15388i, _wgslsmith_clamp_i32(50689i, var_1.c.b, -64353i), -u_input.b.x, u_input.b.x), -(u_input.b & u_input.b)), firstLeadingBit(~(~vec4<i32>(1i, 1i, var_1.c.a, 6674i))), func_2(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.a.c, 38008u), ~vec2<u32>(0u, var_1.a.b.x)), ~(~vec3<u32>(38517u, u_input.e, 0u))).e), ~vec4<u32>(func_2(vec2<u32>(4294967295u, 0u), vec3<u32>(var_1.a.c, 0u, 34433u)).d.b.x, func_1(var_1.c.c.x), 86645u, var_1.a.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.c.x)), _wgslsmith_mult_vec4_u32(~vec4<u32>(_wgslsmith_add_u32(var_0.b.x, var_1.a.c), var_1.a.c, 1u, 67226u), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(35699u, 19147u, var_1.a.c, var_0.c), vec4<u32>(1u, 1u, 1u, var_1.a.c)))));
}

