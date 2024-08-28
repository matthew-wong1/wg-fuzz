struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: u32,
    d: vec3<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: bool) -> vec3<i32> {
    let var_0 = vec3<i32>(-((7900i >> (arg_1.c % 32u)) >> (~arg_2.x % 32u)), i32(-1i) * -u_input.d.x, _wgslsmith_mod_i32(min(1i, ~u_input.c), ~_wgslsmith_clamp_i32(-44649i, -1i, u_input.c))) ^ (abs(abs(~vec3<i32>(global1.a.x, -58008i, 30655i))) & ~(vec3<i32>(-1i) * -u_input.d));
    global0 = vec2<bool>(false, all(select(!select(vec3<bool>(global0.x, false, arg_3), vec3<bool>(arg_3, false, false), vec3<bool>(true, true, true)), !vec3<bool>(true, arg_3, false), global0.x)));
    global0 = select(vec2<bool>((arg_3 & global0.x) | global0.x, select(1u, arg_1.a.x, true) <= 31030u), vec2<bool>(global0.x, -_wgslsmith_sub_i32(var_0.x, -2147483647i) < select(global1.a.x, ~2147483647i, true)), !vec2<bool>(arg_3, !(5182u >= u_input.a.x)));
    global1 = Struct_1(~(-_wgslsmith_div_vec3_i32(global1.a, global1.a) << (abs(select(vec3<u32>(arg_1.d.x, u_input.e, u_input.b), vec3<u32>(u_input.e, 27468u, 1u), false)) % vec3<u32>(32u))), arg_0.a);
    global0 = vec2<bool>(true, select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2600f * arg_1.b.x) * 957f) >= arg_1.b.x, true, arg_3));
    return _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_div_i32(15334i, var_0.x) | global1.a.x, firstTrailingBit(_wgslsmith_sub_i32(u_input.d.x, u_input.d.x)), ~1i), _wgslsmith_sub_vec3_i32(abs(u_input.d), vec3<i32>(i32(-1i) * -79641i, global1.a.x, abs(-23840i)))) | _wgslsmith_add_vec3_i32(vec3<i32>(global1.a.x, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, -46619i, u_input.c), vec4<i32>(global1.a.x, var_0.x, -28025i, -19374i))), 2825i), vec3<i32>(var_0.x | -var_0.x, abs(global1.a.x), abs(-u_input.c)));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(~func_3(Struct_2(global1.b), Struct_3(u_input.a.yx, _wgslsmith_div_vec4_f32(vec4<f32>(-1987f, global1.b.x, -247f, -1253f), vec4<f32>(-163f, global1.b.x, global1.b.x, -151f)), u_input.e, ~vec3<u32>(u_input.b, u_input.a.x, u_input.a.x), Struct_2(global1.b)), vec3<u32>(70640u, reverseBits(u_input.e), 1u), !select(global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(round(global1.b)));
    var var_1 = Struct_2(vec3<f32>(-165f, 1871f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1330f - 1443f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.b.x, 163f), _wgslsmith_div_f32(global1.b.x, -321f), select(false, false, false))), var_0.a.x != var_0.a.x))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-290f, -105f, _wgslsmith_f_op_f32(ceil(global1.b.x)))))));
    var var_3 = Struct_1(vec3<i32>(firstLeadingBit(-41534i), -(u_input.d.x >> (~4294967295u % 32u)), 29860i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_1.a))));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1023f, var_0.b.x, 512f, var_2.a.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1152f, global1.b.x, -242f, var_0.b.x))))))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(434f, -2168f, -315f, global1.b.x))));
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a)));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_3, arg_3: Struct_2) -> Struct_1 {
    let var_0 = Struct_3(~vec2<u32>(_wgslsmith_mod_u32(1u, u_input.b), ~0u), _wgslsmith_f_op_vec4_f32(-arg_2.b), arg_2.d.x, ~((arg_2.d & vec3<u32>(u_input.e, arg_2.a.x, arg_2.c)) ^ countOneBits(vec3<u32>(arg_2.a.x, 4294967295u, u_input.a.x))), arg_3);
    var var_1 = abs(_wgslsmith_mod_u32(4294967295u, 6317u));
    let var_2 = u_input.a;
    let var_3 = func_2();
    var var_4 = var_0.b.zzz;
    return Struct_1(global1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_3.a * vec3<f32>(-100f, var_0.b.x, var_0.b.x))))));
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = ~(~_wgslsmith_mod_vec4_i32(vec4<i32>(21783i, arg_0, 29338i, global1.a.x) ^ vec4<i32>(-19892i, u_input.c, -2147483647i, arg_0), -vec4<i32>(u_input.d.x, 0i, arg_0, 1i)) & -(-vec4<i32>(-7642i, 47549i, 13406i, -35694i) ^ (vec4<i32>(u_input.c, 2147483647i, u_input.d.x, 57163i) ^ vec4<i32>(2147483647i, arg_2.a.x, 13660i, 1159i))));
    var var_1 = Struct_3(u_input.a.yz, vec4<f32>(_wgslsmith_f_op_f32(sign(-625f)), arg_2.b.x, global1.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1208f, _wgslsmith_f_op_f32(-2146f * 1244f), false)), 875f)), _wgslsmith_dot_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.b, 42610u, u_input.b), vec4<u32>(u_input.e, u_input.b, 29273u, u_input.b) >> (vec4<u32>(u_input.b, u_input.e, 0u, 4294967295u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.e, u_input.a.x, 70218u, u_input.e), firstLeadingBit(vec4<u32>(15191u, 83504u, u_input.e, 0u))), false), ~vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), reverseBits(41185u), reverseBits(u_input.a.x), firstTrailingBit(70813u))), _wgslsmith_sub_vec3_u32(u_input.a, u_input.a), Struct_2(arg_2.b));
    let var_2 = vec2<bool>(!select(!global0.x || all(vec4<bool>(global0.x, true, global0.x, true)), global0.x, !select(true, true, global0.x)), global0.x);
    let var_3 = func_4(var_1.e, -u_input.d.x, Struct_3(u_input.a.yz, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(509f, arg_1, true)) * _wgslsmith_f_op_f32(f32(-1f) * -175f)), _wgslsmith_f_op_f32(global1.b.x * 1000f), -1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-313f))))), 0u, _wgslsmith_mult_vec3_u32(~(~var_1.d), abs(_wgslsmith_div_vec3_u32(var_1.d, vec3<u32>(4294967295u, 4294967295u, var_1.c)))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.b + vec3<f32>(-541f, 1393f, 2452f))))), func_2());
    let var_4 = min(~countOneBits(arg_0) << (select(var_1.c, reverseBits(u_input.e >> (var_1.c % 32u)), false) % 32u), -17469i);
    return func_4(func_2(), -(~u_input.c) ^ arg_0, Struct_3(countOneBits(u_input.a.yy), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(var_1.b)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_1.b))))), var_1.a.x, ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e, 1834u, u_input.e), ~vec3<u32>(0u, u_input.e, var_1.a.x)), func_2()), var_1.e);
}

fn func_1(arg_0: vec2<i32>) -> vec2<bool> {
    global1 = Struct_1(vec3<i32>(global1.a.x, _wgslsmith_mult_i32(-22854i, -(-58130i ^ u_input.d.x)), firstTrailingBit(arg_0.x)), _wgslsmith_f_op_vec3_f32(-global1.b));
    global1 = func_5(-1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1198f + -174f) - _wgslsmith_f_op_f32(f32(-1f) * -142f)), func_4(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-391f, -612f, global1.b.x)))), global1.a.x, Struct_3(u_input.a.yy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.b.x, -326f, global1.b.x, global1.b.x))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(903f, global1.b.x, 453f, 909f)))), _wgslsmith_sub_u32(14654u, u_input.a.x), u_input.a, Struct_2(global1.b)), func_2()));
    let var_0 = func_2();
    global0 = select(!(!(!select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, global0.x), global0.x))), vec2<bool>(false, any(vec2<bool>(!global0.x, true))), select(select(vec2<bool>(select(false, global0.x, true), any(vec4<bool>(global0.x, global0.x, global0.x, global0.x))), select(vec2<bool>(false, false), !vec2<bool>(global0.x, global0.x), true), global0.x), select(vec2<bool>(false, any(vec4<bool>(global0.x, global0.x, global0.x, global0.x))), select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, true)), !(!vec2<bool>(true, global0.x))), false || !(global1.b.x >= global1.b.x)));
    global1 = Struct_1((global1.a | _wgslsmith_clamp_vec3_i32(global1.a, -global1.a, -vec3<i32>(u_input.c, 0i, -17806i))) << (vec3<u32>(10191u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.e, 0u), vec3<u32>(55621u, 0u, u_input.e)), _wgslsmith_div_u32(u_input.a.x, 1u), firstTrailingBit(4294967295u)), abs(firstLeadingBit(u_input.a.x))) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global1.b, func_5(_wgslsmith_clamp_i32(u_input.d.x, -1i, u_input.d.x), var_0.a.x, func_4(var_0, 2147483647i, Struct_3(u_input.a.xy, vec4<f32>(var_0.a.x, 1506f, 1582f, 578f), 67473u, vec3<u32>(u_input.b, u_input.e, u_input.b), Struct_2(var_0.a)), Struct_2(global1.b))).b))));
    return !vec2<bool>(all(!vec3<bool>(true, false, global0.x)), global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.yx;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, global1.b.x, global1.b.x, global1.b.x) - vec4<f32>(1359f, global1.b.x, -1267f, global1.b.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 333f, global1.b.x, global1.b.x), vec4<f32>(751f, global1.b.x, 1926f, -597f)) - vec4<f32>(987f, 433f, global1.b.x, 442f))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, -1024f, -1162f, global1.b.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1921f, global1.b.x, global1.b.x, global1.b.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, -1476f, 983f, global1.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-124f, global1.b.x, -1304f, global1.b.x)))))));
    var_0 = ~(~select(~vec2<u32>(30735u, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 0u) << (u_input.a.zx % vec2<u32>(32u)), u_input.a.xx), global0.x));
    global0 = vec2<bool>(true, true);
    global0 = select(vec2<bool>(true, false), !vec2<bool>(!global0.x, global0.x), select(func_1(vec2<i32>(_wgslsmith_clamp_i32(u_input.c, u_input.d.x, 26210i), 42202i)), !(!select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x))), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.x - -1789f), vec4<u32>(u_input.a.x, firstLeadingBit(~(~4294967295u)), ~reverseBits(19780u), var_0.x), _wgslsmith_div_f32(-902f, -559f));
}

