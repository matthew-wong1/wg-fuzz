struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 21>;

var<private> global1: u32 = 29521u;

var<private> global2: Struct_1 = Struct_1(-1i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec2<u32>) -> vec3<bool> {
    let var_0 = ~_wgslsmith_mod_vec4_i32(vec4<i32>(~global2.a, 2147483647i, _wgslsmith_div_i32(min(u_input.b, global2.a), _wgslsmith_div_i32(39187i, -49640i)), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, -15643i), vec3<i32>(1i, u_input.b, global2.a), vec3<i32>(-1i, -2147483647i, -2147483647i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(global2.a, 2147483647i, -2079i), vec3<i32>(0i, 2147483647i, -59485i), vec3<i32>(-23055i, u_input.a, global2.a)))), -vec4<i32>(global2.a, global2.a & 23966i, u_input.b, _wgslsmith_clamp_i32(global2.a, global2.a, -1i)));
    let var_1 = Struct_2(Struct_1(~u_input.a), true, vec2<f32>(_wgslsmith_f_op_f32(-620f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(470f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -853f), _wgslsmith_f_op_f32(select(1167f, _wgslsmith_f_op_f32(step(-1067f, -933f)), arg_0))))), var_0.xzx);
    global2 = Struct_1(global2.a ^ var_1.d.x);
    let var_2 = Struct_3(var_1.a, _wgslsmith_add_u32(_wgslsmith_sub_u32(~(~1u), ~(~arg_2.x)), arg_1 | 1u), all(vec3<bool>(true, 0u == _wgslsmith_mult_u32(82080u, arg_1), any(vec4<bool>(false, var_1.b, var_1.b, true)))), _wgslsmith_add_i32(1i, max(-39334i, abs(var_1.a.a)) | (-2147483647i ^ var_1.d.x)));
    global2 = var_2.a;
    return vec3<bool>(true, !var_2.c, arg_0);
}

fn func_2(arg_0: f32, arg_1: vec2<i32>, arg_2: f32) -> f32 {
    let var_0 = Struct_1(57370i);
    var var_1 = Struct_3(var_0, 12184u, !((false & any(vec2<bool>(true, false))) || all(func_3(true, 4294967295u, vec2<u32>(31191u, 20940u)))), _wgslsmith_mod_i32(~u_input.b, _wgslsmith_sub_i32(1i, max(0i, -9051i)) << (0u % 32u)));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-679f, 580f))) + arg_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * 834f));
    var var_3 = ~_wgslsmith_mod_vec3_u32(~countOneBits(vec3<u32>(4294967295u, 16405u, var_1.b)) >> (~_wgslsmith_add_vec3_u32(vec3<u32>(var_1.b, 1u, var_1.b), vec3<u32>(var_1.b, 26885u, 4294967295u)) % vec3<u32>(32u)), vec3<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b, 88059u, 0u), vec3<u32>(35719u, 0u, var_1.b)) >> (max(35537u, var_1.b) % 32u), ~var_1.b));
    var_3 = vec3<u32>(var_3.x & var_1.b, reverseBits(_wgslsmith_mult_u32(min(5637u, var_1.b), var_3.x ^ 1u)), 4294967295u) ^ select(firstLeadingBit(~min(vec3<u32>(1u, 0u, 84242u), vec3<u32>(9982u, var_3.x, 4294967295u))), ~_wgslsmith_add_vec3_u32(vec3<u32>(var_3.x, 111493u, var_3.x) << (vec3<u32>(var_3.x, 58108u, 1u) % vec3<u32>(32u)), vec3<u32>(5414u, 52747u, var_1.b)), func_3(true, 0u, vec2<u32>(_wgslsmith_clamp_u32(77529u, 1u, var_3.x), var_1.b)));
    return 333f;
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_mod_i32(countOneBits(-16588i) >> (~4294967295u % 32u), -4283i)), 45085u, all(vec4<bool>(!all(vec2<bool>(false, false)), true, false, any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true))))), min(~_wgslsmith_add_i32(-u_input.a, -2147483647i), 3708i));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1096f, _wgslsmith_div_f32(-1239f, 1335f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1930f), 1682f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(-1158f, firstLeadingBit(vec2<i32>(var_0.a.a, var_0.a.a)), _wgslsmith_f_op_f32(floor(-1034f)))))));
    global2 = Struct_1(-5916i);
    let var_2 = ~vec4<u32>(~1u, ~(~22228u), var_0.b, ~4294967295u);
    var var_3 = Struct_2(Struct_1(var_0.a.a), (all(func_3(var_0.c, var_2.x, vec2<u32>(1u, 23695u))) || !select(var_0.c, false, var_0.c)) || var_0.c, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1 * _wgslsmith_f_op_vec2_f32(-var_1)) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, -156f), vec2<f32>(var_1.x, var_1.x))))), var_1)), max(~_wgslsmith_add_vec3_i32(~vec3<i32>(var_0.a.a, 39570i, u_input.a), ~vec3<i32>(10971i, var_0.a.a, u_input.b)), vec3<i32>(~(i32(-1i) * -12323i), -_wgslsmith_mult_i32(global2.a, 1i), ~(-global2.a))));
    return Struct_3(var_3.a, reverseBits(82824u), var_0.c, -49596i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<i32>(~u_input.b, -(firstLeadingBit(u_input.a) | reverseBits(-16666i)), -2147483647i, -22960i & u_input.a);
    let var_1 = vec3<bool>(any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true))), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), false, (29871i > u_input.a) || false);
    var var_2 = countOneBits(vec3<u32>(firstLeadingBit(1u) >> (1u % 32u), select(5944u, 0u, var_1.x), 10742u));
    let var_3 = func_1();
    let var_4 = firstTrailingBit(reverseBits(var_0.xzw) ^ vec3<i32>(u_input.b >> (var_2.x % 32u), min(var_0.x, ~0i), -1i));
    global0 = array<vec4<f32>, 21>();
    let var_5 = Struct_1(0i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~min(var_3.b, ~var_3.b), var_2.x), firstLeadingBit(abs(var_2.x)));
}

