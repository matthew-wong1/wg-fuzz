struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec2<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<u32>, 30>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_1) -> vec4<u32> {
    return vec4<u32>(4294967295u, ~4294967295u, u_input.a.x, ~(global0.b.x ^ ~(~52751u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<u32>) -> vec3<u32> {
    global0 = Struct_2(global0.a, arg_1, _wgslsmith_mult_vec3_u32(~(~global0.c), u_input.a) | ~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 7060u, global0.c.x), vec3<u32>(4294967295u, arg_1.x, global0.b.x) & vec3<u32>(4294967295u, 0u, 4294967295u)));
    global0 = Struct_2(Struct_1(global0.a.a), global0.c, global0.b);
    let var_0 = _wgslsmith_sub_i32(abs(_wgslsmith_add_i32(~u_input.b, -8994i)) ^ u_input.b, countOneBits(~_wgslsmith_div_i32(u_input.b | 5676i, 2147483647i)));
    return (~_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, arg_0.x, 46311u)), reverseBits(vec3<u32>(19185u, global0.b.x, global0.b.x))) & vec3<u32>(reverseBits(1u), 9503u, ~u_input.e | _wgslsmith_dot_vec4_u32(vec4<u32>(29545u, 15989u, arg_0.x, global0.b.x), vec4<u32>(arg_0.x, 4294967295u, 1u, 0u)))) ^ ~(~u_input.a);
}

fn func_1(arg_0: Struct_4, arg_1: vec2<bool>) -> f32 {
    global1 = array<vec2<u32>, 30>();
    global0 = Struct_2(global0.a, reverseBits(global0.c), vec3<u32>(u_input.e, u_input.a.x, u_input.e));
    global0 = Struct_2(Struct_1(!(!global0.a.a)), abs(~global0.c) >> (vec3<u32>(u_input.c, ~4294967295u, ~1u) % vec3<u32>(32u)), vec3<u32>(6222u, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(global0.c.x, u_input.a.x, global0.b.x, 63884u)), func_2(Struct_1(vec2<bool>(true, false)))), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~u_input.a, reverseBits(u_input.a)), firstTrailingBit(global0.c << (vec3<u32>(38837u, u_input.a.x, 24103u) % vec3<u32>(32u))))));
    let var_0 = Struct_2(Struct_1(global0.a.a), global0.c << ((global0.c >> (func_3(u_input.a.yx, global0.c) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(1u, 4294967295u), 4294967295u, u_input.a.x), firstLeadingBit(firstLeadingBit(u_input.a)) >> (vec3<u32>(_wgslsmith_mod_u32(108950u, 4294967295u), _wgslsmith_add_u32(global0.b.x, 0u), global0.c.x ^ 37632u) % vec3<u32>(32u)), ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(10657u, u_input.c, 47910u), ~u_input.a, u_input.a)));
    var var_1 = -1252f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1892f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-629f, 411f)), 196f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(-1822f, _wgslsmith_f_op_f32(func_1(Struct_4(~_wgslsmith_dot_vec3_i32(vec3<i32>(-33720i, 0i, 2147483647i), vec3<i32>(-11266i, 2147483647i, 2147483647i)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-7994i, -2147483647i, -3852i, 104i), vec4<i32>(-23673i, -2147483647i, 13144i, 2147483647i)), u_input.d | u_input.b)), !select(vec2<bool>(false, global0.a.a.x), global0.a.a, !vec2<bool>(global0.a.a.x, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(821f, -214f)) - _wgslsmith_f_op_f32(-235f - -340f)));
    let var_1 = vec3<u32>(10672u, u_input.e, 8136u);
    global0 = Struct_2(global0.a, vec3<u32>(abs(_wgslsmith_mod_u32(63890u, 4294967295u)), u_input.a.x, max(~var_1.x, select(abs(40369u), var_1.x, global0.b.x <= var_1.x))), u_input.a);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.xz));
    global1 = array<vec2<u32>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(max(vec3<u32>(abs(~4294967295u), _wgslsmith_mod_u32(0u, u_input.a.x), _wgslsmith_mod_u32(abs(global0.b.x), var_1.x | u_input.e)), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(global0.c, vec3<u32>(1u, global0.c.x, global0.c.x), global0.b), select(u_input.a, var_1, global0.a.a.x)) | global0.c), var_1.x, vec3<i32>(55144i, -1i, u_input.b) | vec3<i32>(~1i, firstTrailingBit(firstLeadingBit(-13926i)), _wgslsmith_add_i32(-19058i, 2147483647i)));
}

