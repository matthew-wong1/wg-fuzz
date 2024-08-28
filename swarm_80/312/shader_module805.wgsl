struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<bool>, 17>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = Struct_1(all(!vec4<bool>(!arg_0, true, all(vec3<bool>(arg_0, arg_0, arg_0)), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1173f, -164f, -805f, -326f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1459f, 2088f, 1508f, -1843f)))))), 1u, 1f);
    global0 = var_0.a;
    global0 = false;
    var var_1 = vec2<u32>(var_0.c, _wgslsmith_add_u32(var_0.c, min(u_input.b, u_input.a.x)));
    var var_2 = Struct_2(!select(select(!vec3<bool>(var_0.a, true, false), !vec3<bool>(arg_0, var_0.a, var_0.a), select(vec3<bool>(arg_0, true, false), vec3<bool>(var_0.a, arg_0, false), vec3<bool>(false, false, arg_0))), vec3<bool>(arg_0, arg_0, u_input.a.x > var_0.c), select(select(vec3<bool>(true, true, var_0.a), vec3<bool>(false, arg_0, false), vec3<bool>(arg_0, false, arg_0)), vec3<bool>(var_0.a, var_0.a, false), !vec3<bool>(arg_0, var_0.a, var_0.a))), !all(vec3<bool>(all(vec4<bool>(var_0.a, arg_0, true, arg_0)), arg_0, select(var_0.a, false, true))), ~vec3<i32>(1i, 1i, 1i));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(var_0.b.x)), _wgslsmith_f_op_f32(sign(597f))))))));
}

fn func_2(arg_0: u32) -> i32 {
    let var_0 = vec3<f32>(-360f, _wgslsmith_f_op_f32(trunc(-490f)), _wgslsmith_f_op_f32(func_3(false)));
    let var_1 = vec2<i32>(_wgslsmith_dot_vec3_i32(~(-abs(vec3<i32>(2147483647i, 1149i, -2147483647i))), vec3<i32>(-2147483647i << (~arg_0 % 32u), 42023i, -10597i)), firstTrailingBit(~(~(-996i))) & -49242i);
    global0 = true;
    var var_2 = ~vec4<i32>(2147483647i, 0i, _wgslsmith_dot_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, -60805i, var_1.x, 1i), vec4<i32>(var_1.x, -1i, 14471i, 2147483647i), vec4<i32>(2147483647i, var_1.x, var_1.x, -1i)), select(vec4<i32>(var_1.x, 1i, -2147483647i, -1i) << (vec4<u32>(4294967295u, arg_0, 96680u, 62260u) % vec4<u32>(32u)), vec4<i32>(-9074i, var_1.x, -1i, -2147483647i), false)), firstLeadingBit(-57272i));
    global0 = !select(false, true, false);
    return firstTrailingBit(abs(1i));
}

fn func_1() -> Struct_1 {
    global1 = array<vec2<bool>, 17>();
    global1 = array<vec2<bool>, 17>();
    var var_0 = vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_clamp_i32(~13554i, 1i, func_2(u_input.a.x)), ~2147483647i, 1i, -2147483647i >> (u_input.a.x % 32u));
    let var_1 = firstTrailingBit(vec4<i32>(min(-2147483647i, _wgslsmith_sub_i32(1i, 1i)), select(var_0.x, 1i, true), ~(~firstTrailingBit(var_0.x)), var_0.x));
    return Struct_1(any(select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), false), true)) | true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-286f, _wgslsmith_f_op_f32(abs(-900f)), _wgslsmith_f_op_f32(-1940f + 333f), _wgslsmith_f_op_f32(119f + -628f)), vec4<f32>(_wgslsmith_div_f32(1000f, 317f), _wgslsmith_f_op_f32(f32(-1f) * -806f), _wgslsmith_f_op_f32(-930f * 2146f), -599f)))), 4294967295u, _wgslsmith_f_op_f32(step(230f, _wgslsmith_f_op_f32(trunc(1719f)))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: i32) -> Struct_2 {
    var var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, _wgslsmith_clamp_u32(u_input.b, 1u, 36101u)), vec3<u32>(u_input.a.x, 1u, 4294967295u));
    global0 = true;
    let var_1 = max(vec4<u32>(30003u, 74326u, ~arg_1.c, arg_1.c) ^ vec4<u32>(_wgslsmith_add_u32(16684u, arg_1.c), 26485u << (var_0.x % 32u), firstTrailingBit(arg_1.c), _wgslsmith_sub_u32(var_0.x, arg_1.c)), firstLeadingBit(~vec4<u32>(arg_1.c, var_0.x, u_input.a.x, 49213u))) | ((vec4<u32>(min(0u, arg_1.c), u_input.a.x, u_input.b, select(arg_1.c, arg_1.c, arg_1.a)) ^ ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 33503u, var_0.x, 23637u), vec4<u32>(var_0.x, 1u, var_0.x, 1u))) << (min(~firstTrailingBit(vec4<u32>(u_input.b, 1583u, 91940u, 36438u)), countOneBits(vec4<u32>(u_input.b, 1u, u_input.a.x, 4294967295u))) % vec4<u32>(32u)));
    global0 = any(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(67599u, 24926u), 26788u), 17u)]);
    let var_2 = func_1();
    return Struct_2(vec3<bool>(false, !var_2.a, true), arg_1.a, vec3<i32>(~arg_3, ~(-arg_0.x) ^ (-1i << (var_0.x % 32u)), arg_0.x));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    var var_0 = func_1();
    var_0 = func_1();
    let var_1 = vec3<bool>(any(arg_0.a.xy), !select(false, var_0.a, any(vec3<bool>(arg_0.a.x, var_0.a, arg_0.a.x))), var_0.a);
    var_0 = func_1();
    var var_2 = arg_0.c.x;
    return Struct_1(true, var_0.b, (_wgslsmith_div_u32(var_0.c | var_0.c, u_input.a.x) ^ u_input.a.x) >> (_wgslsmith_sub_u32(~_wgslsmith_sub_u32(var_0.c, 0u), var_0.c) % 32u), func_1().d);
}

fn func_6(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = abs(_wgslsmith_sub_i32((i32(-1i) * -23004i) >> ((_wgslsmith_add_u32(4294967295u, u_input.a.x) >> ((u_input.a.x >> (38845u % 32u)) % 32u)) % 32u), -63427i));
    var var_1 = func_4(-(~vec3<i32>(1i, 1i, 1i) >> (~(~vec3<u32>(u_input.b, 1u, 4294967295u)) % vec3<u32>(32u))), Struct_1(arg_1.a, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1729f * 1032f) - _wgslsmith_div_f32(arg_1.b.x, -210f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.b.x - 515f))), arg_1.b.x, -334f), ~arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.b.x))))), min(_wgslsmith_sub_vec2_i32(-vec2<i32>(1i, -1i), vec2<i32>(1i, ~42311i)), ~abs(vec2<i32>(2147483647i, -29000i))), -1i).a;
    var var_2 = ~_wgslsmith_mod_vec4_u32(~(~(~vec4<u32>(5507u, 0u, u_input.b, u_input.a.x))), ~vec4<u32>(14305u >> (arg_0 % 32u), _wgslsmith_mod_u32(arg_0, 3788u), abs(1u), countOneBits(39356u)));
    var var_3 = -(-(~vec3<i32>(-39027i, -2147483647i, -2147483647i)) >> (var_2.yzz % vec3<u32>(32u)));
    var_1 = vec3<bool>(false & arg_1.a, false, !(!(var_1.x || true)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.b), vec4<u32>(1u, u_input.b, 0u, u_input.a.x), vec4<bool>(false, false, true, true)), select(vec4<u32>(4294967295u, u_input.a.x, 13607u, u_input.b), vec4<u32>(u_input.a.x, 0u, u_input.b, u_input.a.x), vec4<bool>(false, true, true, false))) << (~(~vec4<u32>(0u, u_input.b, 15540u, u_input.a.x)) % vec4<u32>(32u)), ((vec4<u32>(1u, 0u, 0u, u_input.a.x) ^ vec4<u32>(u_input.a.x, 42432u, u_input.a.x, u_input.b)) | ~vec4<u32>(4294967295u, u_input.b, 86199u, 3164u)) ^ (vec4<u32>(31801u, 4294967295u, u_input.a.x, 0u) >> (vec4<u32>(u_input.b, u_input.b, u_input.a.x, 36833u) % vec4<u32>(32u)))), func_5(func_4(_wgslsmith_clamp_vec3_i32(-vec3<i32>(0i, -2147483647i, -11927i), vec3<i32>(1i, 1i, 1i), firstLeadingBit(vec3<i32>(-50682i, 2147483647i, -2147483647i))), func_1(), abs(_wgslsmith_add_vec2_i32(vec2<i32>(-12229i, -33151i), vec2<i32>(39752i, -46792i))), -40370i)));
    var var_1 = func_2(max(24048u, var_0.c));
    var_0 = Struct_1(var_0.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(true || var_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2019f - 1538f) * _wgslsmith_f_op_f32(ceil(107f))) * _wgslsmith_f_op_f32(-444f - -422f)), 1546f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d * _wgslsmith_f_op_f32(min(447f, var_0.d))))), _wgslsmith_mult_u32(44683u | reverseBits(u_input.b), _wgslsmith_clamp_u32(u_input.b, abs(var_0.c | u_input.b), 51332u)), _wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(step(var_0.d, _wgslsmith_f_op_f32(-var_0.d)))));
    var var_2 = 1000f;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.zzy, firstTrailingBit(vec3<u32>(~100123u, u_input.b, var_0.c)), _wgslsmith_div_vec2_f32(var_0.b.wx, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, -1371f)) - vec2<f32>(var_0.b.x, -1152f)), _wgslsmith_f_op_vec2_f32(-func_5(Struct_2(vec3<bool>(var_0.a, false, false), var_0.a, vec3<i32>(-1i, -19243i, -8769i))).b.zy))));
}

