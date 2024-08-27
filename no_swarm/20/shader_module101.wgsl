struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<Struct_1, 29>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<f32> {
    let var_0 = _wgslsmith_add_u32(0u, ~103654u);
    let var_1 = false;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1741f, global0.x)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1903f, 1624f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-546f, global0.x))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-517f, 1315f), vec2<f32>(global0.x, global0.x)))), vec2<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x)))));
    let var_2 = Struct_1(min(select(vec3<u32>(var_0, ~48291u, 0u), max(vec3<u32>(20503u, 155399u, 80534u), vec3<u32>(9008u, 6658u, var_0)), select(select(vec3<bool>(true, false, false), vec3<bool>(false, var_1, var_1), true), vec3<bool>(false, var_1, true), !vec3<bool>(var_1, false, var_1))), vec3<u32>(91675u, 103952u, var_0)), 4294967295u, ~select(vec4<u32>(_wgslsmith_mod_u32(var_0, 80318u), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(95458u, var_0), vec2<u32>(70069u, var_0)), var_0 & 1u), vec4<u32>(16038u, var_0, 4294967295u, 4294967295u) | ~vec4<u32>(4294967295u, var_0, var_0, 20349u), true));
    let var_3 = _wgslsmith_mult_vec3_u32(vec3<u32>(~_wgslsmith_mult_u32(12602u, 0u), ~1u, ~var_0) | _wgslsmith_div_vec3_u32(vec3<u32>(var_0, firstTrailingBit(13242u), var_2.c.x << (0u % 32u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(77736u, 134290u, 1u), vec3<u32>(var_0, 0u, var_2.c.x))), var_2.c.zzy);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-441f + global0.x), global0.x))), _wgslsmith_f_op_f32(global0.x * global0.x)));
}

fn func_2() -> i32 {
    global1 = array<Struct_1, 29>();
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(abs(global0.x)))), _wgslsmith_f_op_vec2_f32(func_3()), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), false), select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, true))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1073f, 304f))), _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), vec2<f32>(-1840f, 1063f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1072f, _wgslsmith_f_op_f32(trunc(1358f))))));
    var var_0 = Struct_1(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(abs(vec3<u32>(1u, 1u, 1u)), ~vec3<u32>(49999u, 27407u, 1u)), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 49527u, 2906u), vec3<u32>(25164u, 21723u, 69561u), vec3<u32>(4294967295u, 18410u, 35756u)) | vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u))), 1u, abs(vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1814u, 55450u, 4294967295u), countOneBits(vec3<u32>(64896u, 22163u, 411u))), 1u, 4216u, ~1u ^ firstTrailingBit(56208u))));
    global0 = vec2<f32>(global0.x, _wgslsmith_f_op_f32(step(global0.x, global0.x)));
    var var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(25848i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -33693i), vec2<i32>(2147483647i, -30516i)) >> (~76941u % 32u), min(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -3173i), vec3<i32>(u_input.a, -10170i, 0i)), u_input.a)) & _wgslsmith_sub_vec3_i32(-(~vec3<i32>(-2012i, 2147483647i, u_input.a)), vec3<i32>(-u_input.a, _wgslsmith_mod_i32(-2147483647i, -1i), u_input.a)), vec3<i32>(u_input.a, -(u_input.a << (var_0.b % 32u)), u_input.a) << (vec3<u32>(44866u, 0u, ~abs(0u)) % vec3<u32>(32u)));
    return _wgslsmith_div_i32(~(abs(_wgslsmith_div_i32(2147483647i, var_1.x)) & _wgslsmith_dot_vec2_i32(var_1.yx, var_1.xz)), _wgslsmith_div_i32(u_input.a, ~abs(25432i)) | _wgslsmith_mod_i32(_wgslsmith_add_i32(-48433i, max(var_1.x, 62010i)), -(~var_1.x)));
}

fn func_1() -> vec4<bool> {
    global1 = array<Struct_1, 29>();
    let var_0 = vec4<bool>(true, false, _wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a) ^ vec3<i32>(u_input.a, u_input.a, u_input.a), abs(vec3<i32>(u_input.a, u_input.a, u_input.a)))) != u_input.a, all(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), 566f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -1629f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-956f, 1033f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-268f, global0.x)))), false)));
    let var_1 = func_2() ^ ~u_input.a;
    global1 = array<Struct_1, 29>();
    return vec4<bool>(true, true, true || var_0.x, !var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true))), func_1(), any(vec2<bool>(any(vec4<bool>(true, false, true, false)), any(vec3<bool>(false, false, false))))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(global0.x * global0.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))))));
    global1 = array<Struct_1, 29>();
    let var_2 = !(!(!(!vec4<bool>(var_0, var_0, var_0, var_0))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -2445f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(466f, -986f))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + vec2<f32>(-1136f, global0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1568f, global0.x) - vec2<f32>(global0.x, 276f))))) - vec2<f32>(_wgslsmith_f_op_f32(-103f - _wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(927f, global0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(abs(1u), 32365u), global0.x, ~(vec4<i32>(-1i) * -min(vec4<i32>(1i, -2147483647i, -2147483647i, 1i), vec4<i32>(1i, 9256i, 0i, u_input.a))), vec3<i32>(1i, select(~u_input.a, abs(u_input.a), var_0 & var_0), u_input.a) ^ -vec3<i32>(reverseBits(u_input.a), u_input.a >> (9888u % 32u), abs(4415i)), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), (vec4<i32>(30143i, 10102i, -41338i, u_input.a) & vec4<i32>(39308i, u_input.a, u_input.a, u_input.a)) | max(vec4<i32>(-61369i, u_input.a, u_input.a, -1i), vec4<i32>(2147483647i, u_input.a, 30822i, -28518i))), firstLeadingBit(abs(abs(vec4<i32>(0i, u_input.a, 2147483647i, 5867i))))));
}

