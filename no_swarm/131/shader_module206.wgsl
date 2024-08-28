struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec4<bool>,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<u32> = vec3<u32>(0u, 18230u, 0u);

var<private> global2: array<vec2<i32>, 29>;

var<private> global3: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec3<i32>(-4543i, -1i, 1i), false, vec4<bool>(true, false, true, true), false, vec3<bool>(false, true, false)), Struct_1(vec3<i32>(-5128i, 4795i, 24648i), false, vec4<bool>(false, true, false, true), false, vec3<bool>(true, true, true)), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), true, vec4<bool>(true, true, true, true), false, vec3<bool>(false, true, false)), Struct_1(vec3<i32>(2147483647i, -51862i, 47325i), true, vec4<bool>(true, false, true, false), true, vec3<bool>(false, true, true)), Struct_1(vec3<i32>(0i, 2147483647i, 0i), true, vec4<bool>(true, false, true, false), false, vec3<bool>(false, false, false)), Struct_1(vec3<i32>(-50835i, 2147483647i, 10032i), true, vec4<bool>(false, true, false, true), true, vec3<bool>(true, false, false)), Struct_1(vec3<i32>(-52620i, 22506i, -27789i), true, vec4<bool>(false, false, false, false), false, vec3<bool>(true, true, true)), Struct_1(vec3<i32>(0i, -44337i, 0i), true, vec4<bool>(true, true, true, false), true, vec3<bool>(false, true, true)), Struct_1(vec3<i32>(0i, 2147483647i, 11194i), false, vec4<bool>(true, true, false, true), false, vec3<bool>(false, false, false)), Struct_1(vec3<i32>(8094i, 2147483647i, i32(-2147483648)), true, vec4<bool>(false, false, true, false), true, vec3<bool>(true, true, false)), Struct_1(vec3<i32>(0i, 0i, 1i), false, vec4<bool>(true, true, false, true), true, vec3<bool>(false, false, true)), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -15576i), true, vec4<bool>(false, true, true, false), true, vec3<bool>(true, true, true)), Struct_1(vec3<i32>(-47423i, 36898i, 0i), false, vec4<bool>(false, false, false, false), false, vec3<bool>(false, false, false)), Struct_1(vec3<i32>(1761i, 3093i, -5580i), false, vec4<bool>(true, false, true, false), false, vec3<bool>(false, true, true)), Struct_1(vec3<i32>(0i, -883i, 1i), true, vec4<bool>(false, false, false, true), true, vec3<bool>(false, false, true)), Struct_1(vec3<i32>(26190i, -1i, -5994i), true, vec4<bool>(false, true, false, false), true, vec3<bool>(false, true, true)), Struct_1(vec3<i32>(-53809i, -1i, -1i), false, vec4<bool>(true, true, false, true), true, vec3<bool>(true, true, true)), Struct_1(vec3<i32>(23648i, 1i, 67191i), true, vec4<bool>(false, true, true, true), true, vec3<bool>(true, true, true)), Struct_1(vec3<i32>(-50114i, 5966i, 39799i), false, vec4<bool>(true, true, true, true), false, vec3<bool>(true, false, true)), Struct_1(vec3<i32>(10271i, 17460i, 0i), true, vec4<bool>(true, true, true, true), true, vec3<bool>(false, false, true)), Struct_1(vec3<i32>(1i, -1i, 59166i), false, vec4<bool>(true, true, true, true), true, vec3<bool>(true, true, true)), Struct_1(vec3<i32>(1i, 5119i, -11893i), false, vec4<bool>(true, true, true, true), false, vec3<bool>(true, true, false)), Struct_1(vec3<i32>(1i, 12618i, -53995i), true, vec4<bool>(false, true, true, true), true, vec3<bool>(true, true, false)), Struct_1(vec3<i32>(18436i, 2147483647i, 1i), false, vec4<bool>(false, true, true, false), false, vec3<bool>(true, true, false)));

var<private> global4: array<Struct_2, 9>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_1(arg_3.a, all(!select(global0.c, global0.c, arg_3.c.x)), vec4<bool>(arg_2.a.e.x, true, false, arg_2.d.e.x), false, vec3<bool>(any(vec4<bool>(!arg_3.b, true, true, true)), any(arg_2.d.c), false | arg_2.e.d));
    let var_1 = all(var_0.c);
    let var_2 = firstLeadingBit(firstLeadingBit(var_0.a.x >> (arg_1 % 32u)));
    let var_3 = select(arg_3.c.xxy, arg_2.e.c.yxw, select(select(arg_2.b.e, !vec3<bool>(var_0.b, true, arg_3.b), true), global0.c.zwx, select(vec3<bool>(true, any(global0.e), var_0.b), vec3<bool>(arg_3.e.x, all(var_0.c), arg_2.a.b), select(arg_2.d.e.x, all(vec4<bool>(false, arg_3.e.x, var_0.b, global0.e.x)), arg_0 <= arg_0))));
    global0 = Struct_1(global0.a, arg_3.c.x, select(!arg_3.c, vec4<bool>(true, any(select(arg_3.c, arg_2.b.c, arg_2.a.c)), !select(false, arg_2.b.e.x, var_3.x), true), true), var_3.x, var_0.e);
    return _wgslsmith_mult_u32(max(_wgslsmith_mult_u32(~_wgslsmith_mult_u32(u_input.b, 14453u), _wgslsmith_mult_u32(global1.x & arg_1, ~u_input.b)), u_input.b >> (countOneBits(_wgslsmith_sub_u32(global1.x, 0u)) % 32u)), ~2068u);
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_2) -> u32 {
    global1 = vec3<u32>(~34075u, func_3(arg_1.x, 11000u, global4[_wgslsmith_index_u32(~_wgslsmith_sub_u32(global1.x, global1.x), 9u)], arg_2.d), 20290u) >> (vec3<u32>(global1.x, _wgslsmith_mod_u32(u_input.b, 0u), firstTrailingBit(~1u)) % vec3<u32>(32u));
    global4 = array<Struct_2, 9>();
    var var_0 = true || arg_2.b.d;
    var var_1 = 1200f;
    var var_2 = vec4<i32>(_wgslsmith_mod_i32(-35752i >> ((4294967295u | ~global1.x) % 32u), reverseBits(i32(-1i) * -2147483647i)), arg_0, 0i, _wgslsmith_add_i32(-32643i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.x, global0.a.x, arg_0, u_input.a), ~vec4<i32>(u_input.a, arg_2.d.a.x, -2147483647i, 0i)), _wgslsmith_dot_vec3_i32(select(vec3<i32>(arg_0, u_input.a, 16855i), vec3<i32>(1i, global0.a.x, u_input.a), vec3<bool>(global0.b, false, true)), arg_2.a.a))));
    return max(max(4294967295u, select(4294967295u, _wgslsmith_sub_u32(global1.x, u_input.b) ^ 70166u, !(!global0.c.x))), 0u);
}

fn func_1() -> u32 {
    let var_0 = vec4<i32>(global0.a.x, global0.a.x, ~(-_wgslsmith_sub_i32(-4281i, u_input.a & 0i)), u_input.a);
    let var_1 = ~2147483647i;
    var var_2 = ~select(4294967295u, ((global1.x | u_input.b) & func_2(-2147483647i, vec2<f32>(1237f, 1048f), global4[_wgslsmith_index_u32(u_input.b, 9u)])) & global1.x, true);
    let var_3 = _wgslsmith_clamp_u32(~global1.x, max(~global1.x, firstTrailingBit(u_input.b ^ 26956u)), 0u) ^ countOneBits(global1.x);
    var var_4 = abs(-52178i);
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 24>();
    global1 = ~vec3<u32>(~global1.x, _wgslsmith_add_u32(u_input.b, 1u), u_input.b);
    let var_0 = vec4<u32>(~(global1.x & 32216u), (_wgslsmith_mod_u32(func_1(), ~69534u) ^ u_input.b) & reverseBits(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(global1.xx, global1.zx), select(global1.zy, vec2<u32>(61191u, u_input.b), false))), 0u, ~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(1680u, 4294967295u), vec2<u32>(global1.x, 32025u) << (vec2<u32>(global1.x, 9427u) % vec2<u32>(32u)))));
    global0 = Struct_1(~(global0.a | vec3<i32>(_wgslsmith_div_i32(31358i, global0.a.x), global0.a.x, firstLeadingBit(2147483647i))), !(!global0.e.x), !(!(!vec4<bool>(global0.c.x, true, global0.b, global0.d))), global0.d, vec3<bool>(false, global0.d, true));
    var var_1 = select(countOneBits(_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(1i, u_input.a, -1i, -30969i)), ~vec4<i32>(-2147483647i, 24289i, -39753i, 18568i))), ~_wgslsmith_mult_vec4_i32(-reverseBits(vec4<i32>(-1i, 14439i, global0.a.x, u_input.a)), vec4<i32>(_wgslsmith_clamp_i32(global0.a.x, 2147483647i, u_input.a), 53639i, -24107i, i32(-1i) * -49425i)), !vec4<bool>(select(true, false, any(vec4<bool>(global0.b, false, true, global0.b))), true, !global0.b, true));
    var_1 = ~firstLeadingBit(max(~vec4<i32>(37653i, var_1.x, 275i, -12067i) & vec4<i32>(33607i, global0.a.x, global0.a.x, global0.a.x), -_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -2147483647i, -17292i, -60902i), vec4<i32>(-1i, -1i, u_input.a, 0i), vec4<i32>(var_1.x, var_1.x, var_1.x, 77987i))));
    global3 = array<Struct_1, 24>();
    global4 = array<Struct_2, 9>();
    global3 = array<Struct_1, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_dot_vec2_u32(~var_0.xz, _wgslsmith_add_vec2_u32(vec2<u32>(global1.x, 52008u), vec2<u32>(0u, 1u)) & countOneBits(vec2<u32>(1u, 56u))), ~(~(~32484u)), _wgslsmith_dot_vec4_u32(var_0, vec4<u32>(1u << (var_0.x % 32u), select(70914u, 0u, global0.b), ~12625u, 61396u))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -113f)))))), ~_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(min(var_1.yy, vec2<i32>(36612i, -2147483647i)), vec2<i32>(u_input.a, 13373i)), -global2[_wgslsmith_index_u32(68249u, 29u)] | -global0.a.zz), var_0.x, min(u_input.b, 0u) | _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(var_0.zzw, max(var_0.xww, var_0.xxy)), var_0.x));
}

