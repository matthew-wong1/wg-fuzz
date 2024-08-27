struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1783f, 1038f, -1470f, -521f);

var<private> global1: vec2<bool>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> vec2<bool> {
    var var_0 = ~_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_div_i32(~arg_1.a, ~u_input.e.x), -min(arg_1.b.x, u_input.e.x)), max(~(-u_input.e.xy), ~vec2<i32>(arg_1.a, -2147483647i)));
    let var_1 = Struct_2(_wgslsmith_dot_vec4_u32(~abs(countOneBits(vec4<u32>(arg_1.d.a, u_input.c, u_input.b, 1u))), ~(~select(vec4<u32>(4294967295u, 1u, arg_1.d.a, 132100u), vec4<u32>(u_input.c, arg_1.d.a, 1u, 0u), vec4<bool>(false, false, false, false)))), _wgslsmith_add_u32(~(~(u_input.b | 1u)), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.d | vec2<u32>(u_input.c, u_input.d.x), _wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(u_input.b, 67418u))), arg_1.c)), arg_1.d, arg_1.d, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0))))));
    var var_2 = var_1;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e.x * 997f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(859f)), -595f, all(vec4<bool>(global1.x, true, global1.x, global1.x))))))), 171f, 2208f);
    let var_4 = Struct_3(firstTrailingBit(arg_1.b.x ^ _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.a, var_0.x), arg_1.b.x)), abs(vec2<i32>(u_input.a, u_input.a)), abs(28392u | var_2.b), var_1.d);
    return vec2<bool>(select(true, (~(-12335i) | max(45316i, var_0.x)) >= ~1i, !global1.x), any(!select(vec3<bool>(false, true, true), vec3<bool>(false, global1.x, global1.x), global1.x & false)));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> vec2<bool> {
    var var_0 = Struct_1(~(~reverseBits(55393u)));
    global1 = select(!vec2<bool>(!global1.x, all(select(vec4<bool>(global1.x, global1.x, false, false), vec4<bool>(true, false, true, false), true))), func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-205f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x))), Struct_3(2147483647i, max(u_input.e.yy | u_input.e.yz, u_input.e.yz), var_0.a, arg_0)), !global1.x);
    global1 = !(!vec2<bool>(!(u_input.e.x > 6834i), true));
    global0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1949f, 1279f, -1328f, global0.x), vec4<f32>(-1074f, -314f, -675f, global0.x)) + _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, -484f, 1366f, global0.x), vec4<f32>(1000f, global0.x, -218f, 1097f))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, -1602f, -113f, -673f), vec4<f32>(global0.x, 345f, -1000f, global0.x), true)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(185f, -236f, 690f, global0.x)))))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, 2414f) - vec4<f32>(-1000f, global0.x, global0.x, global0.x))))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(468f, -725f, 651f, -1583f), vec4<f32>(-1317f, 389f, global0.x, global0.x))))))))));
    let var_1 = select(abs(select(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a, arg_0.a, u_input.c, 80496u), vec4<u32>(u_input.c, var_0.a, arg_0.a, var_0.a)), vec4<u32>(arg_0.a, arg_0.a, var_0.a, arg_0.a) << (vec4<u32>(arg_0.a, u_input.d.x, 4294967295u, 1u) % vec4<u32>(32u)), select(vec4<bool>(false, global1.x, global1.x, false), vec4<bool>(true, false, global1.x, global1.x), vec4<bool>(true, global1.x, false, false))) | ~(~vec4<u32>(32374u, u_input.d.x, 1u, var_0.a))), vec4<u32>(arg_0.a >> (~1u % 32u), _wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, 1442u), ~u_input.d, select(vec2<bool>(global1.x, global1.x), vec2<bool>(false, global1.x), vec2<bool>(global1.x, true))), u_input.d), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(71012u, var_0.a, arg_0.a), ~vec3<u32>(4294967295u, arg_0.a, u_input.b), ~vec3<u32>(12189u, 1u, u_input.b)), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.c, arg_0.a, 0u), abs(vec3<u32>(arg_0.a, var_0.a, arg_0.a)))), 0u), true);
    return vec2<bool>(true, any(vec4<bool>(true, true, true, true)));
}

fn func_1(arg_0: bool) -> vec4<u32> {
    global1 = !(!select(vec2<bool>(arg_0, global1.x | true), func_2(Struct_1(u_input.d.x), ~(-2147483647i)), !(!vec2<bool>(false, global1.x))));
    global1 = func_3(-335f, Struct_3(_wgslsmith_div_i32(-1i, _wgslsmith_mult_i32(u_input.e.x, 36707i)) << (0u % 32u), -(u_input.e.xz << (~vec2<u32>(u_input.d.x, 45648u) % vec2<u32>(32u))), _wgslsmith_mult_u32(u_input.d.x, 17445u), Struct_1(4294967295u)));
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global0.yzy, vec3<f32>(global0.x, -980f, -217f)))))))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1374f)) * -1000f)))));
    var_0 = vec3<f32>(global0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(460f, global0.x)), _wgslsmith_f_op_f32(-var_0.x), global1.x)) * global0.x), 561f)), var_0.x);
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1414f, -759f, global0.x)))), vec4<f32>(_wgslsmith_f_op_f32(select(global0.x, global0.x, false)), _wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(191f))), var_0.x), u_input.e.x == ~u_input.e.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-121f, global0.x)) * -1000f), 631f, -758f, -220f)));
    return _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.d.x, _wgslsmith_mult_u32(u_input.b, _wgslsmith_sub_u32(101500u, 1u)) >> (0u % 32u), 1u), vec4<u32>(36175u, 39505u, 4575u ^ _wgslsmith_clamp_u32(reverseBits(u_input.b), _wgslsmith_div_u32(1u, u_input.d.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.d.x, 0u), vec3<u32>(5588u, u_input.b, 4294967295u))), u_input.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!(!(!vec4<bool>(global1.x, true, global1.x, true)))) || !select(global1.x, global1.x, true);
    var var_1 = select(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, 2147483647i, -1i) & vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x), vec4<i32>(28i, -2147483647i, 1i, u_input.e.x) & vec4<i32>(2147483647i, -10301i, 1455i, u_input.a)), -(-vec4<i32>(1i, u_input.a, 1i, u_input.e.x) >> (func_1(false) % vec4<u32>(32u))), func_2(Struct_1(~57708u), 5600i).x) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(~firstLeadingBit(1u), select(u_input.c, ~4294967295u, var_0), 0u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.d.x, u_input.d.x, 0u), vec4<u32>(1u, 1u, 19757u, u_input.c), vec4<u32>(u_input.d.x, 1u, 1u, 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, 11962u, u_input.c, u_input.b), vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b)))), vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, u_input.b, u_input.b), vec3<u32>(1u, 16715u, 0u)), 4294967295u, _wgslsmith_add_u32(u_input.b, 18931u), ~(~u_input.b)), select(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 33312u, 25225u, u_input.d.x), vec4<u32>(u_input.d.x, u_input.c, 0u, 1u)), _wgslsmith_add_vec4_u32(select(vec4<u32>(4294967295u, u_input.c, 23643u, 1u), vec4<u32>(u_input.c, 1u, 56735u, u_input.d.x), true), abs(vec4<u32>(1u, u_input.b, 4294967295u, 4294967295u))), select(vec4<bool>(false, var_0, global1.x, true), vec4<bool>(false, true, false, var_0), any(vec3<bool>(var_0, false, false))))) % vec4<u32>(32u));
    var var_2 = Struct_3(reverseBits(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-1i, 13137i, var_1.x, u_input.a)), _wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, 16275i, -32095i, -2147483647i), vec4<i32>(25913i, var_1.x, -2147483647i, u_input.a))), min(~u_input.a, _wgslsmith_dot_vec3_i32(var_1.zxw, vec3<i32>(-1i, var_1.x, 0i))))), -abs(var_1.xw), u_input.c, Struct_1(93812u));
    global1 = vec2<bool>(!(global1.x == any(func_2(Struct_1(u_input.d.x), 18602i))), !(!var_0));
    var_2 = Struct_3(-1i, _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(var_2.b, vec2<i32>(-2147483647i, var_2.b.x)), var_2.b) << (countOneBits(select(vec2<u32>(u_input.b, 7525u), firstTrailingBit(u_input.d), global0.x <= global0.x)) % vec2<u32>(32u)), 14759u, var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1850f, 1000f, 376f), global0.wwz, !vec3<bool>(any(vec3<bool>(var_0, var_0, false)), true, var_2.b.x != var_2.a))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, _wgslsmith_f_op_f32(round(1043f))) + vec2<f32>(-1354f, _wgslsmith_f_op_f32(step(global0.x, 334f)))), global0.yw), ~vec2<i32>(-26610i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_2.d.a, var_2.d.a), vec3<u32>(u_input.c, u_input.c, 28142u)) % 32u), var_1.x));
}

