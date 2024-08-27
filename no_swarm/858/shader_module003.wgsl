struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec2<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(vec2<bool>(true, true), vec4<i32>(40787i, i32(-2147483648), 1i, 22811i)), Struct_2(vec2<bool>(true, false), vec4<i32>(-3078i, 1138i, 8584i, 23143i)), Struct_2(vec2<bool>(true, false), vec4<i32>(-18108i, 0i, 52306i, 11161i)), Struct_2(vec2<bool>(false, false), vec4<i32>(13586i, 1i, -34507i, 1i)), Struct_2(vec2<bool>(false, false), vec4<i32>(-19032i, 2147483647i, 2147483647i, -1i)), Struct_2(vec2<bool>(true, true), vec4<i32>(-1i, 1i, i32(-2147483648), 0i)), Struct_2(vec2<bool>(false, true), vec4<i32>(2147483647i, -1i, -1i, -1i)), Struct_2(vec2<bool>(false, false), vec4<i32>(-5577i, 2147483647i, 2147483647i, 37421i)), Struct_2(vec2<bool>(true, false), vec4<i32>(443i, 0i, 27696i, 1i)), Struct_2(vec2<bool>(false, false), vec4<i32>(0i, 2147483647i, 2147483647i, -32414i)), Struct_2(vec2<bool>(false, true), vec4<i32>(27337i, -2100i, 0i, 7082i)), Struct_2(vec2<bool>(false, true), vec4<i32>(31179i, -2657i, -13800i, -1i)), Struct_2(vec2<bool>(true, true), vec4<i32>(39741i, -13901i, -2417i, -1i)), Struct_2(vec2<bool>(true, false), vec4<i32>(1i, -31267i, -25135i, -1i)), Struct_2(vec2<bool>(true, true), vec4<i32>(-1897i, -14816i, 7681i, 55811i)), Struct_2(vec2<bool>(false, false), vec4<i32>(8612i, -12772i, 2147483647i, -21515i)), Struct_2(vec2<bool>(false, false), vec4<i32>(0i, i32(-2147483648), 0i, 0i)));

var<private> global1: u32 = 0u;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32) -> bool {
    let var_0 = select(-(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 21922i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, -34600i, -1i))) | (~abs(vec4<i32>(1i, u_input.b.x, 0i, u_input.b.x)) | _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -35917i), reverseBits(vec4<i32>(u_input.b.x, -1i, u_input.b.x, u_input.b.x)))), abs(~(~vec4<i32>(-2147483647i, -12714i, 15538i, -16122i))) << (abs(vec4<u32>(u_input.a | u_input.a, u_input.a, 64507u, u_input.a)) % vec4<u32>(32u)), !((arg_0.x | true) || true));
    let var_1 = countOneBits(vec4<u32>(abs(u_input.a), ~abs(u_input.a), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 66942u), vec2<u32>(u_input.a, u_input.a)), u_input.a), 4294967295u) >> (vec4<u32>(_wgslsmith_div_u32(~u_input.a, u_input.a), _wgslsmith_mult_u32(6523u, 33849u), 1u << (max(u_input.a, 19786u) % 32u), 26957u) % vec4<u32>(32u)));
    global0 = array<Struct_2, 17>();
    global0 = array<Struct_2, 17>();
    let var_2 = select(!select(vec3<bool>(true, any(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)), arg_0.x), !(!vec3<bool>(arg_0.x, arg_0.x, false)), !arg_0.x), vec3<bool>(any(!select(vec2<bool>(arg_0.x, false), arg_0, vec2<bool>(arg_0.x, true))), true, !(countOneBits(u_input.a) >= u_input.a)), select(select(vec3<bool>(arg_0.x, !arg_0.x, all(arg_0)), vec3<bool>(all(vec2<bool>(false, arg_0.x)), arg_0.x && false, all(vec2<bool>(false, false))), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, arg_0.x), arg_0.x)), !vec3<bool>(false, !arg_0.x, select(false, arg_0.x, false)), true));
    return select(!any(vec4<bool>(true, false, any(vec4<bool>(true, var_2.x, false, false)), var_2.x & true)), false, var_2.x);
}

fn func_2(arg_0: vec3<i32>) -> vec3<f32> {
    var var_0 = _wgslsmith_div_u32(37207u >> (u_input.a % 32u), 1u);
    let var_1 = vec3<bool>(false, func_3(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(false, false), vec2<bool>(true, true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -359f), 3020f))))), true);
    let var_2 = u_input.b.x;
    var var_3 = Struct_1(vec2<i32>(-2147483647i, -(~(~var_2))), _wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 72349u, u_input.a)), ~u_input.a) << (~u_input.a % 32u), 1623i, !(!vec2<bool>(true, var_1.x)), (abs(max(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 20531u))) & ((vec2<u32>(64087u, u_input.a) & vec2<u32>(14675u, u_input.a)) & firstLeadingBit(vec2<u32>(u_input.a, 62675u)))) | ~(vec2<u32>(u_input.a, 40452u) & vec2<u32>(4294967295u, u_input.a)));
    var var_4 = (i32(-1i) * -2147483647i) >= _wgslsmith_add_i32(11296i, arg_0.x);
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -1033f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-682f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-192f))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: vec4<bool>, arg_3: vec4<i32>) -> bool {
    global0 = array<Struct_2, 17>();
    let var_0 = arg_1.x;
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(arg_3.xzx)), vec3<f32>(var_0, arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * var_0)))));
    let var_2 = Struct_1(arg_3.yy, arg_0.x, arg_3.x, vec2<bool>(true, true), select(vec2<u32>(~countOneBits(u_input.a), ~arg_0.x), ~vec2<u32>(_wgslsmith_dot_vec2_u32(arg_0, arg_0), ~u_input.a), arg_2.xw));
    var var_3 = _wgslsmith_f_op_f32(-var_0);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!all(vec3<bool>(func_1(vec2<u32>(u_input.a, 4294967295u), vec2<f32>(442f, 235f), vec4<bool>(true, false, true, true), vec4<i32>(u_input.b.x, -28516i, u_input.b.x, u_input.b.x)), true, any(vec2<bool>(false, true)))));
    var var_1 = ~40092u;
    var var_2 = Struct_1(vec2<i32>(~(-54327i), u_input.b.x), min(u_input.a, u_input.a), -10258i, vec2<bool>(true, !(1u == u_input.a) | !(-1i == u_input.b.x)), min(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, _wgslsmith_add_u32(u_input.a, 31845u)), vec2<u32>(~u_input.a, firstLeadingBit(u_input.a))), abs(~select(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, 4294967295u), vec2<bool>(false, false)))));
    var_1 = 4294967295u;
    var_2 = Struct_1(vec2<i32>(-select(_wgslsmith_sub_i32(-1i, var_2.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, var_2.c), vec4<i32>(0i, u_input.b.x, -1i, u_input.b.x)), false), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -u_input.b, min(countOneBits(vec3<i32>(u_input.b.x, var_2.c, var_2.c)), vec3<i32>(-2147483647i, -2147483647i, u_input.b.x) >> (vec3<u32>(var_2.b, var_2.e.x, u_input.a) % vec3<u32>(32u))))), _wgslsmith_add_u32(60106u, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_2.b, u_input.a) << (vec3<u32>(u_input.a, var_2.e.x, var_2.b) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_2.b, 5389u, u_input.a), vec3<u32>(1265u, 4294967295u, u_input.a))))), var_2.c, vec2<bool>(!any(vec4<bool>(true, true, var_0, false)), var_2.d.x), var_2.e);
    var_2 = Struct_1(max(u_input.b.zx >> (vec2<u32>(~64276u, ~u_input.a) % vec2<u32>(32u)), -u_input.b.zy), ~u_input.a, u_input.b.x, !(!vec2<bool>(var_0, !var_0)), vec2<u32>(u_input.a, var_2.e.x));
    global1 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-905f - -872f) + _wgslsmith_f_op_f32(2124f - -142f)), _wgslsmith_f_op_f32(-383f + _wgslsmith_f_op_f32(f32(-1f) * -2308f)), _wgslsmith_f_op_f32(min(170f, _wgslsmith_f_op_f32(floor(174f))))))), firstTrailingBit(var_2.e));
}

