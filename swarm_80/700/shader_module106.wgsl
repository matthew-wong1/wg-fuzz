struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
    c: f32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(511f)), _wgslsmith_div_f32(-997f, 208f))), _wgslsmith_f_op_f32(max(-786f, -1122f))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(min(-199f, -1000f)), _wgslsmith_f_op_f32(floor(745f)))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(453f, -3211f))), _wgslsmith_f_op_f32(-872f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1075f))))));
    var_0 = vec2<f32>(var_0.x, var_0.x);
    global0 = u_input.a;
    var var_1 = ~_wgslsmith_div_vec3_i32(firstTrailingBit(_wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(-40648i, -2147483647i, u_input.a)), -vec3<i32>(u_input.d, 292i, 28274i))), arg_0.b);
    var var_2 = Struct_1(!arg_0.a.a, all(select(select(!vec3<bool>(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x), select(arg_0.a.a.xzw, arg_0.a.a.zyw, vec3<bool>(arg_0.a.b, arg_0.a.b, false)), arg_0.a.a.x), vec3<bool>(arg_0.a.b & arg_0.a.a.x, any(vec3<bool>(false, false, true)), true), arg_0.a.b | true)));
    return !var_2.a.xy;
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: f32) -> Struct_2 {
    var var_0 = arg_0;
    var_0 = Struct_2(arg_0.a, true, select(!func_3(Struct_3(Struct_1(var_0.a.a, false), vec3<i32>(u_input.a, u_input.a, -2147483647i))), func_3(Struct_3(Struct_1(vec4<bool>(arg_0.a.b, false, true, false), true), vec3<i32>(-45627i, 52829i, 6076i))), vec2<bool>(true, !(!var_0.b))));
    var_0 = arg_0;
    var_0 = Struct_2(var_0.a, arg_0.b, func_3(Struct_3(Struct_1(select(vec4<bool>(true, var_0.c.x, arg_0.c.x, true), vec4<bool>(false, true, var_0.a.b, false), arg_0.c.x), true), vec3<i32>(u_input.d, firstTrailingBit(-26993i), _wgslsmith_clamp_i32(2147483647i, u_input.a, u_input.d)))));
    var var_1 = var_0.b;
    return Struct_2(var_0.a, all(vec2<bool>(true, true)), var_0.a.a.yy);
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: u32, arg_3: vec4<f32>) -> Struct_4 {
    let var_0 = Struct_2(func_2(arg_1, (_wgslsmith_mod_u32(u_input.e.x, 11533u) ^ _wgslsmith_sub_u32(4294967295u, arg_2)) ^ arg_2, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(arg_3.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0, -916f), 1000f, true))))).a, !(!arg_1.b), vec2<bool>(arg_1.b, false));
    global0 = _wgslsmith_add_i32(reverseBits(-2147483647i), -_wgslsmith_div_i32(_wgslsmith_sub_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, u_input.a, u_input.a), vec4<i32>(u_input.d, 0i, -1i, u_input.a))), u_input.d ^ _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 18429i, 0i), vec3<i32>(u_input.d, -29202i, 14720i))));
    var var_1 = func_2(Struct_2(var_0.a, false, var_0.a.a.zy), ~select(u_input.b, _wgslsmith_clamp_u32(~arg_2, arg_2 & u_input.b, 101553u), arg_1.a.b), arg_3.x);
    var var_2 = vec3<bool>(func_2(var_0, ~25381u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(arg_0)), -355f))).b == any(var_0.a.a.wxx), false, any(select(vec4<bool>(!var_1.b, false, var_0.c.x, select(var_0.c.x, var_0.a.b, false)), !(!vec4<bool>(true, arg_1.a.a.x, var_1.b, var_1.c.x)), func_2(Struct_2(Struct_1(arg_1.a.a, false), true, var_1.a.a.zx), 0u << (0u % 32u), _wgslsmith_f_op_f32(arg_0 * arg_0)).a.a)));
    var var_3 = min(abs(vec4<u32>(80609u, u_input.b, ~arg_2, 4294967295u)), vec4<u32>(~(arg_2 | u_input.b), 0u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_2, 649u, 0u)), vec3<u32>(u_input.c, u_input.b, 31871u)), _wgslsmith_dot_vec4_u32(vec4<u32>(46918u, 6109u, 8109u, arg_2), select(vec4<u32>(arg_2, 23723u, u_input.e.x, 12249u), vec4<u32>(1u, u_input.c, 45168u, 1u), var_0.b))) | min(firstLeadingBit(vec4<u32>(1u, 4294967295u, 10225u, 0u)), vec4<u32>(0u, u_input.b, firstLeadingBit(arg_2), u_input.e.x)));
    return Struct_4(max(~(vec2<i32>(1i, u_input.d) << ((var_3.yx & vec2<u32>(arg_2, 1u)) % vec2<u32>(32u))), vec2<i32>(firstLeadingBit(17629i) >> (u_input.e.x % 32u), firstLeadingBit(max(u_input.d, -33845i)))), Struct_3(func_2(arg_1, _wgslsmith_mult_u32(4294967295u, 1u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-830f + arg_3.x), _wgslsmith_f_op_f32(sign(-488f))))).a, -(~vec3<i32>(u_input.a, u_input.a, 0i) & vec3<i32>(u_input.a, 0i, u_input.d))), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-258f, 678f, arg_3.x, arg_0)) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(arg_3 * vec4<f32>(357f, -1071f, arg_3.x, arg_0)))))));
}

fn func_1() -> u32 {
    let var_0 = func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1409f))), func_2(Struct_2(Struct_1(vec4<bool>(true, true, true, true), false), any(vec2<bool>(false, true)) | true, vec2<bool>(false, true)), u_input.e.x, 921f), u_input.b | ~abs(_wgslsmith_clamp_u32(1u, 1u, 1u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(217f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(697f)))), _wgslsmith_f_op_f32(-613f - _wgslsmith_f_op_f32(floor(979f))), _wgslsmith_f_op_f32(f32(-1f) * -698f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-302f, _wgslsmith_div_f32(-480f, -445f), -526f, -862f))));
    var var_1 = ~abs(~u_input.e);
    var var_2 = abs(var_0.a);
    var_2 = _wgslsmith_sub_vec2_i32(var_0.b.b.zy, vec2<i32>(var_0.b.b.x, u_input.d));
    var var_3 = vec3<u32>(_wgslsmith_dot_vec2_u32(~u_input.e, vec2<u32>(var_1.x, firstLeadingBit(42170u))), ~(~(~0u)) | _wgslsmith_dot_vec2_u32(~u_input.e, ~abs(u_input.e)), ~var_1.x);
    return ~(~select(abs(1748u), ~4294967295u, 80922u == var_1.x)) | 31589u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 3361i;
    global0 = 1i;
    let var_0 = 21759i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, func_1() & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, u_input.b) ^ vec2<u32>(u_input.b, 4294967295u), abs(vec2<u32>(30085u, 4294967295u))), (4294967295u | (1u ^ u_input.b)) >> (u_input.b % 32u), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.e.x, 6255u, u_input.e.x), vec3<u32>(u_input.c, 77596u, 4294967295u)), vec3<u32>(43216u, 43782u, 0u)), countOneBits(22725u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(363f, 886f, -894f)))))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-318f, 1616f, -1268f)) + vec3<f32>(1f, 1f, 1f))))), _wgslsmith_clamp_u32(47025u, u_input.e.x, _wgslsmith_div_u32(1u, ~u_input.e.x)));
}

