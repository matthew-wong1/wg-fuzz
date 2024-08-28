struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<f32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(4294967295u), Struct_1(56854u), Struct_1(59418u), Struct_1(0u));

var<private> global1: array<vec4<bool>, 14> = array<vec4<bool>, 14>(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false));

var<private> global2: array<vec2<u32>, 30>;

var<private> global3: array<vec3<bool>, 32> = array<vec3<bool>, 32>(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true));

var<private> global4: array<bool, 18> = array<bool, 18>(false, false, true, false, false, true, false, false, false, false, true, false, true, true, false, false, false, false);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = !(!global4[_wgslsmith_index_u32(arg_0, 18u)]);
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)))));
    global4 = array<bool, 18>();
    var var_2 = 23579i;
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1)));
    return 947f;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = arg_0;
    return var_0.a;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-758f)) * _wgslsmith_f_op_f32(ceil(-550f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(17038u))) * 219f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(-311f))), 431f));
    let var_1 = _wgslsmith_f_op_vec2_f32(var_0.wy * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_vec2_f32(-var_0.zy))));
    let var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, u_input.d, 39044u), vec3<u32>(36805u, arg_0.a, 0u), vec3<bool>(true, true, global4[_wgslsmith_index_u32(arg_2.x, 18u)])), vec3<u32>(1u, 4294967295u, arg_1.a)) ^ ~7951u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, 31606u, arg_2.x, u_input.c), firstTrailingBit(~vec4<u32>(1u, u_input.a, 49364u, 1u))), 1u, ~arg_0.a), max(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.x, 97801u, 53251u, u_input.c), vec4<u32>(arg_1.a, arg_2.x, 4294967295u, 1u) >> (vec4<u32>(arg_1.a, arg_1.a, arg_0.a, 1u) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, arg_0.a, arg_1.a), vec4<u32>(arg_0.a, 0u, 17636u, 1u)) | ~vec4<u32>(arg_1.a, 1u, arg_2.x, u_input.a)) & (((vec4<u32>(u_input.c, 4294967295u, arg_2.x, arg_2.x) << (vec4<u32>(arg_0.a, 0u, u_input.c, arg_1.a) % vec4<u32>(32u))) & (vec4<u32>(46659u, arg_0.a, 32240u, 15018u) << (vec4<u32>(110119u, arg_1.a, arg_2.x, arg_0.a) % vec4<u32>(32u)))) ^ ~(~vec4<u32>(arg_1.a, arg_0.a, 5053u, arg_2.x))), vec4<u32>(arg_1.a, 36124u, arg_2.x, arg_0.a));
    var var_3 = _wgslsmith_mod_vec4_u32(~min(vec4<u32>(arg_2.x, 1u, 9949u, ~var_2.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, arg_2.x, 14982u, 0u), var_2)), vec4<u32>(abs(_wgslsmith_mult_u32(0u, _wgslsmith_mult_u32(17895u, 0u))), func_3(Struct_1(arg_2.x), Struct_1(u_input.a), !(!global4[_wgslsmith_index_u32(arg_0.a, 18u)])), ~18787u, arg_2.x));
    var var_4 = _wgslsmith_div_i32(-reverseBits(-1i >> (~arg_2.x % 32u)), ~abs(-min(7561i, -63424i)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    global1 = array<vec4<bool>, 14>();
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 397f, -1000f, -1000f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(136f, -147f, 664f, 935f))) * _wgslsmith_f_op_vec4_f32(func_1(global0[_wgslsmith_index_u32(32641u >> (u_input.c % 32u), 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)], reverseBits(u_input.b)))), vec4<f32>(_wgslsmith_f_op_f32(-2059f * 1f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-172f + -121f), -1507f)), _wgslsmith_f_op_f32(-1135f * -148f), -1000f))));
    global2 = array<vec2<u32>, 30>();
    global4 = array<bool, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 0i, 16201i), vec3<i32>(35921i, -6193i, -32066i)), 62369i, _wgslsmith_clamp_i32(min(2147483647i, -30322i), 14200i >> (u_input.a % 32u), -2147483647i)), _wgslsmith_f_op_f32(-var_0.x), var_0.yx, var_0.x, -vec2<i32>(_wgslsmith_mult_i32(1i >> (u_input.b.x % 32u), 2147483647i), ~1i));
}

