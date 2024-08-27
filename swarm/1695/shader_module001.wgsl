struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_2(u_input.c.xy, ~select(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(global0.x, 4432u, 43177u, global0.x)), firstTrailingBit(vec4<u32>(0u, 0u, 68088u, global0.x))), ~abs(vec4<u32>(global0.x, 0u, global0.x, 3994u)), vec4<bool>(true, true, true, true)), Struct_1(vec2<u32>(u_input.a, u_input.a), -106f, max(global0.x, 1u), ~_wgslsmith_sub_vec2_i32(reverseBits(u_input.b.xy), vec2<i32>(15346i, -1i))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-877f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(489f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1458f, -157f)))))));
    var_0 = Struct_2(countOneBits(~firstTrailingBit(vec2<i32>(-21690i, -18933i))), vec4<u32>(reverseBits(95425u), firstTrailingBit(var_0.c.c), ~(~u_input.a), ~abs(reverseBits(u_input.a))), Struct_1(select(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.x, 2702u), vec2<u32>(47678u, var_0.b.x), vec2<u32>(56717u, 1u)), vec2<u32>(4294967295u, global0.x), true) | _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, var_0.b.x), ~vec2<u32>(var_0.b.x, var_0.b.x)), var_0.c.b, var_0.c.a.x >> ((1u >> (1u % 32u)) % 32u), reverseBits(abs(max(u_input.c.yz, var_0.c.d)))), _wgslsmith_f_op_vec2_f32(min(var_0.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_0.d)) * vec2<f32>(672f, _wgslsmith_f_op_f32(-var_0.c.b))))));
    var var_1 = 8849u;
    var_1 = abs(global0.x);
    var var_2 = var_0.c;
    return max(~(~var_0.b | var_0.b), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 1u, global0.x), firstTrailingBit(vec3<u32>(49405u, 4294967295u, 4294967295u))), ~4294967295u, var_0.b.x, ~58535u << ((var_2.a.x | 4294967295u) % 32u)), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(abs(vec4<u32>(1u, 4294967295u, 58169u, var_0.b.x)), vec4<u32>(var_2.c, var_2.a.x, var_2.a.x, 14584u)), (vec4<u32>(global0.x, var_2.a.x, 76722u, global0.x) << (vec4<u32>(28868u, global0.x, 22546u, var_2.a.x) % vec4<u32>(32u))) << (firstLeadingBit(vec4<u32>(u_input.a, 0u, 36781u, var_2.c)) % vec4<u32>(32u)))));
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: u32, arg_3: i32) -> u32 {
    let var_0 = 329f;
    global0 = func_3();
    global0 = select(vec4<u32>(~1u, _wgslsmith_mult_u32(~global0.x, 4294967295u), ~global0.x, _wgslsmith_clamp_u32(_wgslsmith_div_u32(4294967295u, 45884u), ~abs(arg_2), u_input.a)), vec4<u32>(0u, _wgslsmith_mult_u32(global0.x, 5797u << (global0.x % 32u)) & countOneBits(50821u), global0.x, 64217u), select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false))), vec4<bool>(~arg_3 < ~19352i, all(vec2<bool>(false, false)) && true, true, all(select(vec2<bool>(false, false), vec2<bool>(false, true), true))), !(!any(vec2<bool>(false, true)))));
    let var_1 = true;
    let var_2 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(~(0u ^ global0.x), ~(~arg_2)), _wgslsmith_add_vec2_u32(~(~vec2<u32>(1626u, arg_2)), vec2<u32>(~0u, 25640u)));
    return reverseBits(~func_3().x);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: vec2<f32>) -> u32 {
    global0 = vec4<u32>(_wgslsmith_sub_u32(~0u, ~max(~0u, _wgslsmith_mod_u32(u_input.a, 4294967295u))), ~func_2(vec4<i32>(2147483647i, u_input.b.x, arg_1.d.x, u_input.b.x) ^ (vec4<i32>(u_input.c.x, u_input.b.x, arg_1.d.x, -1i) << (vec4<u32>(36860u, global0.x, u_input.a, 28431u) % vec4<u32>(32u))), 327f, 4294967295u, -_wgslsmith_clamp_i32(29028i, arg_1.d.x, -5684i)), ~global0.x, firstLeadingBit(countOneBits(global0.x)));
    global0 = vec4<u32>(arg_1.a.x, 0u, (_wgslsmith_dot_vec3_u32(global0.wxy, vec3<u32>(global0.x, 33445u, arg_1.a.x)) << (select(0u, global0.x, arg_0 && arg_0) % 32u)) << (arg_1.a.x % 32u), global0.x);
    var var_0 = -u_input.c.x & abs(u_input.c.x);
    global0 = vec4<u32>(u_input.a, u_input.a, arg_1.c, 4294967295u << (arg_1.c % 32u));
    var var_1 = 2147483647i;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    let var_1 = ~global0.zy;
    global0 = vec4<u32>(0u, global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(~func_1(false, Struct_1(var_1, 1000f, 9396u, u_input.c.yx), -353f, vec2<f32>(-877f, -285f)), global0.x, ~4294967295u, _wgslsmith_mod_u32(var_1.x, 1u)), vec4<u32>(~(~global0.x), var_0, firstTrailingBit(_wgslsmith_div_u32(14260u, 1u)), _wgslsmith_div_u32(global0.x, global0.x))), 7309u >> ((~(~global0.x) & global0.x) % 32u));
    var var_2 = global0.xy | vec2<u32>(~23614u, func_3().x);
    var var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-950f, 1186f)))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-778f, -1417f)))))));
    var_2 = _wgslsmith_mult_vec2_u32(~func_3().wz, var_1);
    let var_4 = all(!select(vec4<bool>(1001f >= var_3.x, any(vec4<bool>(false, true, false, true)), false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)), false)));
    let x = u_input.a;
    s_output = StorageBuffer(-970f);
}

