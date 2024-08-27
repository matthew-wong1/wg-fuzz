struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: bool,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_2,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec3<bool>, 14> = array<vec3<bool>, 14>(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1406f), arg_0.x, true)), arg_0.x, -936f)));
    global1 = array<vec3<bool>, 14>();
    let var_1 = select(~(~(vec4<i32>(-1i) * -vec4<i32>(86177i, -2147483647i, -1i, 1i))), vec4<i32>(-_wgslsmith_mod_i32(u_input.c, u_input.c << (0u % 32u)), u_input.d, -2147483647i, _wgslsmith_mod_i32(-18209i, -3447i)), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, select(true, false, true), true, true), u_input.c <= -u_input.d));
    let var_2 = min(~(_wgslsmith_add_vec3_u32(vec3<u32>(12127u, u_input.b, 65805u), vec3<u32>(0u, 1u, u_input.b)) << (reverseBits(vec3<u32>(u_input.b, 29098u, 83956u)) % vec3<u32>(32u))), ~((vec3<u32>(75425u, u_input.e, u_input.e) >> (vec3<u32>(97744u, u_input.b, 50410u) % vec3<u32>(32u))) | ~vec3<u32>(78339u, 16504u, 0u))) | abs(_wgslsmith_mult_vec3_u32(~reverseBits(vec3<u32>(4294967295u, 1u, u_input.e)), ~(~vec3<u32>(u_input.e, u_input.e, u_input.b))));
    let var_3 = select(!global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_2.x, 54765u), 14u)], select(select(select(!global1[_wgslsmith_index_u32(103802u, 14u)], select(vec3<bool>(false, true, false), global1[_wgslsmith_index_u32(u_input.b, 14u)], global1[_wgslsmith_index_u32(var_2.x, 14u)]), true), vec3<bool>(true, 33989u < var_2.x, true), any(vec2<bool>(true, true))), global1[_wgslsmith_index_u32(33068u, 14u)], select(global1[_wgslsmith_index_u32(~0u, 14u)], vec3<bool>(true, select(false, false, false), all(vec4<bool>(false, true, false, true))), false)), !(!global1[_wgslsmith_index_u32(~var_2.x, 14u)]));
    return select(-7053i, abs(_wgslsmith_div_i32(~_wgslsmith_add_i32(var_1.x, 2147483647i), ~u_input.a)), var_3.x);
}

fn func_2() -> i32 {
    global0 = true;
    global0 = true;
    var var_0 = vec4<u32>(_wgslsmith_mult_u32(~3378u, ~_wgslsmith_clamp_u32(73341u, 3378u, u_input.e)), 1409u, reverseBits(~4294967295u), 36648u ^ min(1u, u_input.e)) ^ select(select(firstLeadingBit(countOneBits(vec4<u32>(u_input.b, 18163u, u_input.b, 1u))), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.b, 1u), vec4<u32>(4294967295u, u_input.b, u_input.e, u_input.e) & vec4<u32>(u_input.e, 60133u, 0u, u_input.b)), vec4<bool>(true, true, true, true)), ~countOneBits(~vec4<u32>(4294967295u, u_input.b, 4294967295u, u_input.e)), !vec4<bool>(true, u_input.b > 4294967295u, true, true));
    global1 = array<vec3<bool>, 14>();
    var var_1 = Struct_1(vec4<bool>(!((u_input.e < u_input.e) && true), true, true, any(vec2<bool>(true, true))));
    return _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(3724f, 1444f, -752f))), u_input.d), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, 2147483647i, u_input.d, u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, 4618i, u_input.d, -2147483647i), vec4<i32>(u_input.a, 1i, u_input.c, u_input.d))), ~vec4<i32>(-1i, u_input.d, -21487i, u_input.a)), min(~(-60251i), _wgslsmith_mod_i32(-39419i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.d, 0i))))), max(_wgslsmith_sub_vec3_i32(~(-vec3<i32>(0i, u_input.c, 1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(-22573i, u_input.a, 16932i) & vec3<i32>(5088i, 0i, u_input.c), vec3<i32>(0i, -17571i, u_input.a) >> (var_0.xyz % vec3<u32>(32u)))), -firstTrailingBit(~vec3<i32>(0i, u_input.c, 11054i))));
}

fn func_1() -> vec2<u32> {
    var var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, i32(-1i) * -9150i, _wgslsmith_sub_i32(~(~u_input.d), u_input.d), ~_wgslsmith_sub_i32(1i, 20365i >> (u_input.b % 32u))), ~_wgslsmith_add_vec4_i32(vec4<i32>(-11840i, func_2(), 0i, -79161i), ~vec4<i32>(1i, -7951i, u_input.c, u_input.c) >> ((vec4<u32>(u_input.b, 9107u, 30970u, u_input.b) >> (vec4<u32>(u_input.b, u_input.e, u_input.b, 57726u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    global0 = true;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-631f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-368f, 104f))))))));
    var_1 = -1606f;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-280f)) * _wgslsmith_f_op_f32(f32(-1f) * -312f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))));
    return ~abs(firstLeadingBit(vec2<u32>(u_input.e, 43167u)) & vec2<u32>(46846u, 0u)) | (firstTrailingBit(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b, 0u), vec2<u32>(u_input.e, u_input.b))) ^ vec2<u32>(4294967295u, _wgslsmith_div_u32(12397u, max(17017u, u_input.e))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(u_input.a, _wgslsmith_mult_vec2_u32(max(vec2<u32>(u_input.e, u_input.b) << (countOneBits(vec2<u32>(u_input.e, u_input.e)) % vec2<u32>(32u)), reverseBits(vec2<u32>(u_input.e, u_input.b))), ~_wgslsmith_mult_vec2_u32(func_1(), firstTrailingBit(vec2<u32>(4294967295u, u_input.e)))), true, vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e, u_input.e, u_input.e), abs(vec3<u32>(20673u, u_input.b, u_input.b))), vec3<u32>(firstTrailingBit(4294967295u), u_input.e & 51117u, ~u_input.b)), ~(~28722u), ~max(~122771u, ~1u), _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.e, u_input.e) << (~30597u % 32u), firstTrailingBit(1u))));
    var var_1 = countOneBits(reverseBits(var_0.d));
    var var_2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(67196u, u_input.b, ~(~_wgslsmith_div_u32(45305u, var_1.x))), select(vec3<u32>(92751u, 1u, u_input.e), var_1.yzx, u_input.a < _wgslsmith_mod_i32(u_input.d, max(-1i, 25i))), var_0.d.xzy);
    var var_3 = var_0.c;
    var var_4 = vec2<f32>(_wgslsmith_div_f32(1000f, -529f), 1f);
    let var_5 = vec4<u32>(~_wgslsmith_dot_vec4_u32(var_0.d, abs(var_0.d)), 60648u, 36951u | ~u_input.e, ~var_0.b.x) << (~(var_0.d << (var_0.d % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_6 = max(var_1.xxy, var_5.wyw);
    let x = u_input.a;
    s_output = StorageBuffer(39889u, ~(vec3<u32>(firstTrailingBit(u_input.b), 1u, _wgslsmith_sub_u32(u_input.b, u_input.e)) ^ _wgslsmith_mod_vec3_u32(var_5.ywz << (var_1.zyy % vec3<u32>(32u)), var_1.xzz)), _wgslsmith_f_op_f32(var_4.x - -888f), var_4.x);
}

