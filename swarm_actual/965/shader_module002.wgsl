struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: vec2<u32>,
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

var<private> global0: f32 = 1039f;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: i32) -> bool {
    let var_0 = Struct_1(vec2<u32>(_wgslsmith_add_u32(u_input.e.x & u_input.a, 1u), 1u) | ~_wgslsmith_mod_vec2_u32(~u_input.e, abs(u_input.c)), -1078f, -vec2<i32>(0i, 1i), vec4<u32>(~u_input.a, _wgslsmith_mod_u32(select(u_input.a, 11882u, true), u_input.e.x), 1u >> (countOneBits(select(4294967295u, 26591u, true)) % 32u), 44692u << (~u_input.b % 32u)), false && all(vec3<bool>(true, any(vec4<bool>(true, true, true, false)), false)));
    var var_1 = Struct_1(select(vec2<u32>(u_input.b, u_input.a) << (abs(vec2<u32>(4294967295u, var_0.d.x)) % vec2<u32>(32u)), vec2<u32>(max(max(u_input.a, 4294967295u), reverseBits(var_0.a.x)), 1u), select(vec2<bool>(var_0.e & var_0.e, true), !select(vec2<bool>(var_0.e, var_0.e), vec2<bool>(var_0.e, false), vec2<bool>(true, false)), !all(vec2<bool>(var_0.e, false)))), -418f, min(var_0.c, ~firstTrailingBit(var_0.c)), firstTrailingBit(~(~reverseBits(vec4<u32>(u_input.e.x, var_0.a.x, 6177u, var_0.a.x)))), var_0.e);
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-364f, -1204f))))))));
    var var_2 = _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(~var_0.a << (select(u_input.e, vec2<u32>(14175u, 119960u), var_1.e && false) % vec2<u32>(32u)), u_input.e), vec2<u32>(reverseBits(21277u), ~(50482u << (~var_0.a.x % 32u))), ~_wgslsmith_clamp_vec2_u32(var_0.d.yy, u_input.e >> (~var_1.a % vec2<u32>(32u)), reverseBits(~var_0.a)));
    var_2 = var_0.a;
    return -16882i <= -u_input.d;
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> Struct_1 {
    var var_0 = ~0u;
    var var_1 = select(!select(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), false), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), false), vec4<bool>(true, true, true, true))), select(vec4<bool>(select(true, true, true), 63352i > u_input.d, func_3(u_input.d ^ -2147483647i, ~u_input.d), all(vec4<bool>(true, true, false, false)) || false), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), false), select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false)), true), vec4<bool>(all(vec4<bool>(true, true, true, true)), false, all(vec3<bool>(true, false, false)), true)), !any(vec3<bool>(true, true, true))), vec4<bool>(true, true, true, true));
    global0 = _wgslsmith_f_op_f32(ceil(arg_0.x));
    global0 = -1231f;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(max(-1391f, _wgslsmith_f_op_f32(-arg_1))), arg_1, arg_1);
    return Struct_1(_wgslsmith_div_vec2_u32(select(u_input.e, vec2<u32>(~1u, 1u), !var_1.ww), _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(4740u, 0u), firstTrailingBit(u_input.a)), vec2<u32>(48467u | u_input.c.x, _wgslsmith_mult_u32(u_input.c.x, 4294967295u)))), arg_0.x, vec2<i32>(-1i, ~(-u_input.d)) ^ ((vec2<i32>(u_input.d, u_input.d) ^ -vec2<i32>(u_input.d, -20278i)) & (max(vec2<i32>(2147483647i, u_input.d), vec2<i32>(1i, u_input.d)) << (~u_input.e % vec2<u32>(32u)))), vec4<u32>(u_input.c.x, ~u_input.b, ~_wgslsmith_div_u32(u_input.e.x, ~u_input.c.x), ~_wgslsmith_div_u32(~30695u, u_input.e.x)), ~37522u != _wgslsmith_dot_vec4_u32(min(_wgslsmith_clamp_vec4_u32(vec4<u32>(1379u, u_input.a, u_input.c.x, u_input.e.x), vec4<u32>(u_input.e.x, u_input.a, 1u, u_input.e.x), vec4<u32>(u_input.b, u_input.b, 2974u, 4294967295u)), ~vec4<u32>(u_input.b, 0u, 1u, 17131u)), countOneBits(firstLeadingBit(vec4<u32>(0u, u_input.c.x, 43235u, 0u)))));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: vec4<bool>, arg_3: vec3<f32>) -> u32 {
    let var_0 = arg_1.zy;
    let var_1 = func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_3.x)) * _wgslsmith_f_op_f32(abs(709f))), arg_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-225f * arg_3.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_3.x + -1000f), _wgslsmith_f_op_f32(step(arg_3.x, -1122f)))))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(678f))))));
    global0 = _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(1184f, arg_3.x)), _wgslsmith_f_op_f32(f32(-1f) * -663f)) * vec2<f32>(_wgslsmith_f_op_f32(-arg_3.x), var_1.b)), 1000f).b - var_1.b);
    var var_2 = var_1;
    let var_3 = !(!arg_2);
    return abs(((var_1.a.x ^ u_input.e.x) >> (arg_1.x % 32u)) >> (~max(1u, arg_1.x) % 32u)) | (var_2.d.x | _wgslsmith_div_u32(max(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 42732u, 2547u), arg_1.zwx), 27445u), _wgslsmith_sub_u32(var_2.a.x, arg_1.x) >> (~71120u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 811f;
    var var_0 = vec3<u32>(2655u, ~func_1(vec3<bool>(113933u != u_input.e.x, true, true), vec4<u32>(abs(0u), abs(u_input.b), u_input.b, countOneBits(5596u)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), vec3<f32>(-1042f, _wgslsmith_f_op_f32(f32(-1f) * -814f), _wgslsmith_f_op_f32(1848f - 121f))), 8420u);
    var var_1 = 1u;
    var var_2 = true;
    let var_3 = max(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, -u_input.d, abs(1i)), -vec3<i32>(u_input.d, -38355i, 50522i)), _wgslsmith_mult_vec3_i32(vec3<i32>(abs(7115i), u_input.d, -12920i), ~_wgslsmith_sub_vec3_i32(vec3<i32>(23170i, u_input.d, u_input.d), vec3<i32>(u_input.d, u_input.d, -2147483647i)))), -882i >> (u_input.e.x % 32u));
    var_1 = 50914u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1557f))));
}

