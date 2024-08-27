struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: f32,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1) -> bool {
    return arg_0.b.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: i32) -> Struct_1 {
    global0 = true;
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1498f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(248f, 384f) * _wgslsmith_f_op_f32(f32(-1f) * -258f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(534f))) + -130f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-751f, 512f, true)))));
    return Struct_1(vec2<i32>(-(_wgslsmith_mult_i32(0i, -15585i) & (arg_1 << (102312u % 32u))), _wgslsmith_clamp_i32(i32(-1i) * -5773i, reverseBits(0i), -41011i)), vec3<bool>(false, true, false), -1295f, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))) + 1157f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-571f, var_0.x)))), var_0.x), 1000f);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec2<bool>) -> bool {
    global0 = true;
    let var_0 = arg_1;
    var var_1 = ~firstLeadingBit(vec4<i32>(-1i, ~(~(-56470i)), u_input.a, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(var_0.a, arg_1.a), var_0.a)));
    var var_2 = 689f;
    var var_3 = arg_1;
    return func_2(_wgslsmith_clamp_vec2_i32(arg_1.a, -vec2<i32>(~u_input.a, ~var_1.x), arg_1.a), u_input.a).b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_add_vec2_i32(firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(29492i, 18141i), vec2<i32>(u_input.a, u_input.a))), vec2<i32>(-u_input.a, u_input.a << (4294967295u % 32u))) >> (vec2<u32>(~0u, ~1u) % vec2<u32>(32u)), !vec3<bool>(select(false, true, func_1(Struct_1(vec2<i32>(u_input.a, u_input.a), vec3<bool>(true, false, true), 1471f, vec3<f32>(1000f, -1485f, 2140f), 1954f))), func_1(Struct_1(vec2<i32>(39923i, u_input.a), vec3<bool>(false, false, false), -1096f, vec3<f32>(-1831f, 659f, 1261f), 2505f)), func_3(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 20775u, 642u), vec3<u32>(1558u, 1u, 0u)), func_2(vec2<i32>(u_input.a, -28765i), 2522i), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2262f, 367f))), vec2<bool>(true, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-302f - -1417f), 555f), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1130f, _wgslsmith_div_f32(-1000f, 226f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1176f - 1499f), -382f)), _wgslsmith_f_op_f32(max(-1107f, _wgslsmith_f_op_f32(f32(-1f) * -748f)))), _wgslsmith_f_op_vec3_f32(func_2(-vec2<i32>(u_input.a, -8835i), ~(-36502i)).d * vec3<f32>(_wgslsmith_f_op_f32(trunc(305f)), _wgslsmith_f_op_f32(2196f - -830f), 680f))), 820f);
    let var_1 = ~select(~vec2<u32>(_wgslsmith_mod_u32(1u, 30605u), ~0u), vec2<u32>(reverseBits(29618u), 25560u), var_0.b.yx);
    global0 = !(!any(select(select(vec4<bool>(false, var_0.b.x, var_0.b.x, var_0.b.x), vec4<bool>(false, true, var_0.b.x, false), vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.b.x)), select(vec4<bool>(var_0.b.x, var_0.b.x, false, true), vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.b.x), var_0.b.x), vec4<bool>(true, var_0.b.x, true, var_0.b.x))));
    global0 = true;
    var var_2 = func_2(var_0.a, -_wgslsmith_dot_vec3_i32(select(vec3<i32>(var_0.a.x, var_0.a.x, -60923i), vec3<i32>(4747i, u_input.a, u_input.a), var_0.b.x), vec3<i32>(1i, 2147483647i, var_0.a.x) | vec3<i32>(var_0.a.x, var_0.a.x, 26879i)) << (~countOneBits(abs(var_1.x)) % 32u));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1338f)) + _wgslsmith_f_op_f32(min(1428f, var_2.e)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c * 552f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.d.x, var_0.e)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -673f) * 920f)));
    var var_4 = -(~vec3<i32>(2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-17954i, var_2.a.x, var_0.a.x), vec3<i32>(22542i, 0i, var_2.a.x), vec3<i32>(u_input.a, 22036i, u_input.a)), select(vec3<i32>(-62707i, -30487i, -2147483647i), vec3<i32>(-2166i, 15664i, 1i), false)), u_input.a));
    var var_5 = _wgslsmith_sub_vec4_u32(vec4<u32>(~firstTrailingBit(var_1.x), _wgslsmith_div_u32(_wgslsmith_div_u32(11456u, ~var_1.x), var_1.x), ~_wgslsmith_dot_vec2_u32(select(var_1, vec2<u32>(5035u, var_1.x), vec2<bool>(true, var_0.b.x)), firstLeadingBit(var_1)), var_1.x), min(vec4<u32>(1u, _wgslsmith_mod_u32(1u, var_1.x), 1u, var_1.x), ~(~select(vec4<u32>(var_1.x, 1u, 0u, 110348u), vec4<u32>(var_1.x, var_1.x, 13340u, var_1.x), false))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(1u >> (var_1.x % 32u)), firstLeadingBit(abs(_wgslsmith_sub_u32(103597u, var_1.x))), 98062u), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -122f)), _wgslsmith_f_op_f32(-248f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_3)))), 285f), select((vec4<i32>(-1i, var_4.x, var_0.a.x, 1i) ^ vec4<i32>(14656i, 1i, 1i, 24800i)) ^ -vec4<i32>(0i, var_0.a.x, -22249i, var_4.x), select(_wgslsmith_mod_vec4_i32(vec4<i32>(-38030i, var_4.x, 36168i, -43408i), vec4<i32>(2147483647i, -37872i, var_2.a.x, var_0.a.x)), vec4<i32>(var_2.a.x, 2147483647i, var_0.a.x, u_input.a), any(vec2<bool>(true, var_0.b.x))), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), var_2.b.x), vec4<bool>(true, var_2.b.x, false, var_0.b.x), true)) >> (vec4<u32>(0u, ~_wgslsmith_add_u32(var_1.x, 1u), var_1.x, 5332u) % vec4<u32>(32u)));
}

