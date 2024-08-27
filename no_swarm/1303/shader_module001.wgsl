struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 5>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<u32> {
    var var_0 = u_input.a.x;
    let var_1 = vec2<bool>(all(vec3<bool>(false, false, true)), ~0u > u_input.e);
    var_0 = _wgslsmith_mult_i32(u_input.d.x, _wgslsmith_sub_i32(~_wgslsmith_mult_i32(~u_input.d.x, -2147483647i), -76748i));
    global0 = array<vec2<i32>, 5>();
    var_0 = ~_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, -28985i) | vec3<i32>(-1i, u_input.a.x, 62229i), _wgslsmith_mult_vec3_i32(max(vec3<i32>(u_input.d.x, u_input.a.x, u_input.d.x), vec3<i32>(-6428i, u_input.a.x, 16896i)), -vec3<i32>(u_input.a.x, -16368i, 1i))), u_input.d.x);
    return max(~_wgslsmith_mod_vec4_u32(~(~vec4<u32>(u_input.c.x, u_input.e, u_input.e, u_input.c.x)), abs(vec4<u32>(1u, 0u, 9196u, u_input.b))), ~(~reverseBits(vec4<u32>(u_input.c.x, 19770u, 0u, 1u) ^ vec4<u32>(4294967295u, 32126u, u_input.b, 7366u))));
}

fn func_2(arg_0: u32) -> Struct_3 {
    var var_0 = vec3<u32>(_wgslsmith_mod_u32(27912u, max(_wgslsmith_mod_u32(abs(38122u), arg_0), ~4294967295u)), ~115141u, ~6709u);
    var_0 = select(vec3<u32>(abs(~(1u & arg_0)), 31955u, arg_0), firstLeadingBit(vec3<u32>(arg_0 | ~var_0.x, _wgslsmith_add_u32(6925u >> (0u % 32u), 1u), ~(~var_0.x))), all(vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(false, false), true)), true)));
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-3044f, _wgslsmith_f_op_f32(trunc(-433f)), 1401f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-428f, 203f, 812f)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(168f, -1428f, -1311f), vec3<f32>(-680f, 952f, -577f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-704f, 1000f, -2396f))))), !select(true, true, false))))));
    let var_2 = Struct_2(max(func_3(), reverseBits(vec4<u32>(_wgslsmith_add_u32(arg_0, 4294967295u), 29054u, ~arg_0, ~0u))), false);
    var var_3 = var_1.x;
    return Struct_3(u_input.c);
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    var var_0 = Struct_2(~reverseBits(select(vec4<u32>(4294967295u, 1u, arg_0.a.x, 1u) ^ vec4<u32>(arg_0.a.x, 13206u, arg_0.a.x, 0u), ~vec4<u32>(4294967295u, 4294967295u, 61029u, 48787u), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false)))), true);
    let var_1 = Struct_2(~abs(~var_0.a), select(var_0.b, false, select(var_0.b, all(vec3<bool>(var_0.b, true, false)), false)));
    var var_2 = var_0.a.zzy;
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1061f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-627f - 341f)), 1f, -1822f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(166f, -124f, 1040f, -1000f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1038f, -196f, 692f, -321f) + vec4<f32>(-1344f, 353f, -818f, 523f))))));
    var_0 = var_1;
    return arg_0;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: f32) -> Struct_1 {
    let var_0 = func_4(func_2(arg_0.a.x));
    let var_1 = arg_1;
    global0 = array<vec2<i32>, 5>();
    var var_2 = !(!(!(!vec3<bool>(arg_2.x, arg_2.x, false))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1.a.x + var_1.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -979f))), -588f, arg_3) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a))));
    return arg_1;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>) -> u32 {
    global0 = array<vec2<i32>, 5>();
    global0 = array<vec2<i32>, 5>();
    global0 = array<vec2<i32>, 5>();
    global0 = array<vec2<i32>, 5>();
    global0 = array<vec2<i32>, 5>();
    return ~(~u_input.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b, ~u_input.b, ~u_input.e, u_input.b & u_input.b), vec4<u32>(~max(u_input.b, u_input.c.x), select(_wgslsmith_sub_u32(u_input.b, u_input.c.x), u_input.b, true), ~u_input.c.x, _wgslsmith_add_u32(45983u, ~u_input.b)), ~(~abs(vec4<u32>(1u, 43357u, u_input.e, 1u)))), vec4<u32>(u_input.e, _wgslsmith_sub_u32(func_5(_wgslsmith_f_op_f32(select(-258f, 623f, false)), func_1(Struct_2(vec4<u32>(u_input.e, u_input.c.x, 4294967295u, 1u), false), Struct_1(vec4<f32>(-1151f, -193f, 1000f, 510f)), vec4<bool>(false, false, true, true), 528f), vec2<f32>(1731f, 459f)), u_input.c.x), ~(~4294967295u >> (~4294967295u % 32u)), ~countOneBits(~4512u)));
    global0 = array<vec2<i32>, 5>();
    var var_1 = Struct_2(vec4<u32>(u_input.b, ~func_2(~var_0.x).a.x, 32171u, _wgslsmith_add_u32(~(u_input.e & 58096u), ~(~var_0.x))), any(vec2<bool>(any(vec2<bool>(true, false)) | any(vec3<bool>(false, false, true)), any(vec4<bool>(true, true, true, true)))));
    let var_2 = func_2(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~var_0.zxy, vec3<u32>(var_0.x, var_0.x, 33697u)), min(_wgslsmith_mult_vec3_u32(var_1.a.zyw, vec3<u32>(var_0.x, 29629u, var_1.a.x)), var_1.a.yzw)), var_1.a.x));
    var var_3 = vec3<i32>(_wgslsmith_mod_i32(abs(1i), u_input.a.x >> (abs(19390u) % 32u)), u_input.d.x, -u_input.d.x);
    var var_4 = -179f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-213f, -107f, -1294f, 1481f) + vec4<f32>(1011f, -462f, 359f, -537f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-818f, -151f, -501f, -751f) * vec4<f32>(-689f, -1000f, -611f, -1000f)))) + vec4<f32>(-171f, _wgslsmith_f_op_f32(-230f + _wgslsmith_f_op_f32(1363f - 1917f)), -610f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-177f, -397f))))), firstTrailingBit(-2147483647i));
}

