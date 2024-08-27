struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: vec2<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 26>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: i32, arg_3: Struct_3) -> Struct_2 {
    global0 = array<vec2<bool>, 26>();
    global0 = array<vec2<bool>, 26>();
    global0 = array<vec2<bool>, 26>();
    global0 = array<vec2<bool>, 26>();
    var var_0 = arg_0.e;
    return arg_0.c;
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec4<i32>) -> vec4<f32> {
    var var_0 = ~(-vec3<i32>(~reverseBits(arg_2.x), u_input.a, ~u_input.e.x));
    return vec4<f32>(1f, 1f, 1f, 1f);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: vec4<f32>, arg_3: bool) -> f32 {
    var var_0 = all(select(vec2<bool>((-2147483647i & arg_0.x) < ~(-2147483647i), !arg_1.x), !vec2<bool>(true, arg_3 && arg_3), arg_1.x));
    let var_1 = Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.d, u_input.b, u_input.d, 98350u), vec4<u32>(42635u, 1u, u_input.b, u_input.b), vec4<bool>(arg_3, arg_1.x, true, arg_3)) << (countOneBits(vec4<u32>(48699u, u_input.d, 61343u, 1u)) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.d, 20612u, u_input.c), vec4<u32>(u_input.b, 0u, 1u, 19648u)) & vec4<u32>(4294967295u, u_input.d, u_input.b, 53196u)), min(~(vec4<u32>(11597u, 1u, u_input.d, u_input.b) & vec4<u32>(1151u, 11044u, u_input.d, 48831u)), vec4<u32>(~u_input.b, _wgslsmith_clamp_u32(u_input.b, 32164u, 0u), u_input.c, _wgslsmith_clamp_u32(u_input.b, u_input.d, 125756u)))), _wgslsmith_div_vec4_u32(~countOneBits(vec4<u32>(0u, u_input.d, u_input.d, u_input.b)) & abs(vec4<u32>(71164u, u_input.d, u_input.c, 1u)), vec4<u32>(~1u, 70286u, ~u_input.b, ~13554u) & vec4<u32>(u_input.d ^ u_input.c, 0u << (u_input.d % 32u), select(u_input.c, 1u, false), 1u)), vec2<u32>(~(~0u), u_input.c), any(!(!func_2(Struct_3(Struct_2(arg_1.x, vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), arg_2.x), Struct_1(20654u, vec4<u32>(4294967295u, 75439u, 0u, 4294967295u), vec2<u32>(u_input.d, u_input.d), false, arg_0.xx), Struct_2(true, vec4<bool>(true, arg_1.x, arg_1.x, false), arg_2.x), vec2<f32>(arg_2.x, arg_2.x), Struct_2(arg_1.x, vec4<bool>(true, arg_3, arg_1.x, arg_1.x), 3407f)), arg_0.x, -48649i, Struct_3(Struct_2(false, vec4<bool>(false, arg_3, false, arg_3), arg_2.x), Struct_1(u_input.c, vec4<u32>(u_input.c, u_input.c, 0u, 19022u), vec2<u32>(26965u, 1u), true, vec2<i32>(u_input.a, 23529i)), Struct_2(arg_3, vec4<bool>(true, arg_1.x, arg_1.x, arg_3), arg_2.x), vec2<f32>(arg_2.x, arg_2.x), Struct_2(arg_1.x, vec4<bool>(arg_3, arg_3, true, false), 209f))).b.xw)), vec2<i32>(arg_0.x, ~55202i));
    global0 = array<vec2<bool>, 26>();
    var var_2 = Struct_4(618f, vec2<u32>(~(~_wgslsmith_clamp_u32(1241u, u_input.d, u_input.b)), u_input.c));
    global0 = array<vec2<bool>, 26>();
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f)));
}

fn func_1(arg_0: Struct_3) -> vec4<u32> {
    global0 = array<vec2<bool>, 26>();
    global0 = array<vec2<bool>, 26>();
    global0 = array<vec2<bool>, 26>();
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_add_vec4_i32(vec4<i32>(-21050i, -35224i, -46075i, 39297i) & vec4<i32>(arg_0.b.e.x, u_input.e.x, u_input.a, -21917i), vec4<i32>(6098i, 8788i, u_input.a, arg_0.b.e.x)), vec2<bool>(true && arg_0.e.a, true), _wgslsmith_f_op_vec4_f32(func_3(func_2(Struct_3(Struct_2(arg_0.e.b.x, vec4<bool>(arg_0.e.a, false, arg_0.b.d, true), arg_0.a.c), Struct_1(arg_0.b.b.x, arg_0.b.b, vec2<u32>(0u, 11926u), arg_0.c.a, u_input.e), Struct_2(false, vec4<bool>(false, arg_0.e.a, true, false), -1096f), vec2<f32>(-994f, arg_0.c.c), arg_0.e), u_input.a, u_input.a, Struct_3(Struct_2(false, arg_0.e.b, arg_0.e.c), Struct_1(u_input.c, arg_0.b.b, vec2<u32>(1u, u_input.b), arg_0.a.a, vec2<i32>(0i, arg_0.b.e.x)), arg_0.a, vec2<f32>(-1000f, arg_0.c.c), Struct_2(arg_0.a.b.x, arg_0.e.b, arg_0.a.c))), abs(0u), -vec4<i32>(33786i, -2147483647i, arg_0.b.e.x, u_input.e.x))), all(vec4<bool>(arg_0.a.b.x, arg_0.e.a, true, false)) | true))), ~_wgslsmith_mult_vec2_u32(arg_0.b.b.xz, arg_0.b.b.wz) ^ vec2<u32>(select(arg_0.b.b.x, arg_0.b.b.x, arg_0.c.a) >> (64067u % 32u), 0u));
    let var_1 = arg_0;
    return vec4<u32>(u_input.d, ~abs(31108u), arg_0.b.c.x, 26343u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -1252f) - _wgslsmith_f_op_f32(1082f - 280f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1354f * 366f)))), _wgslsmith_f_op_f32(-898f + -557f)));
    let var_1 = Struct_1(4252u, ~_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(4294967295u, u_input.b, 68996u, 4294967295u)), ~(~vec4<u32>(4294967295u, u_input.d, u_input.c, 4294967295u)), ~func_1(Struct_3(Struct_2(true, vec4<bool>(false, false, false, true), var_0), Struct_1(u_input.c, vec4<u32>(u_input.c, u_input.d, u_input.b, u_input.c), vec2<u32>(u_input.b, 13761u), true, vec2<i32>(u_input.a, u_input.a)), Struct_2(false, vec4<bool>(true, true, false, false), 1956f), vec2<f32>(-1000f, 2487f), Struct_2(false, vec4<bool>(true, false, false, false), var_0)))), vec2<u32>(u_input.d, ~_wgslsmith_add_u32(~u_input.c, func_1(Struct_3(Struct_2(true, vec4<bool>(true, true, true, true), var_0), Struct_1(u_input.d, vec4<u32>(16076u, u_input.b, 57726u, 26195u), vec2<u32>(4294967295u, u_input.c), true, u_input.e), Struct_2(true, vec4<bool>(false, false, true, false), var_0), vec2<f32>(578f, var_0), Struct_2(false, vec4<bool>(false, false, true, false), 130f))).x)), all(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), true))), ~(_wgslsmith_add_vec2_i32(-u_input.e, max(u_input.e, vec2<i32>(u_input.e.x, 1i))) | reverseBits(firstLeadingBit(vec2<i32>(-2147483647i, 56628i)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec3<i32>(-1i) * -(vec3<i32>(43229i, var_1.e.x, 46010i) | vec3<i32>(var_1.e.x, 1i, u_input.a))));
}

