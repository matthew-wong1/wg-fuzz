struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec4<i32>) -> bool {
    global0 = false;
    global0 = false;
    global0 = false;
    var var_0 = false;
    var_0 = all(vec2<bool>(false, true));
    return true;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec3<bool>) -> bool {
    var var_0 = countOneBits(vec2<u32>(_wgslsmith_dot_vec4_u32(arg_2.c, ~vec4<u32>(150907u, 34869u, 39082u, u_input.b)), firstTrailingBit(max(reverseBits(14430u), arg_0.b.c.x))));
    global0 = all(select(vec4<bool>(!all(arg_3.yx), true, !(!arg_3.x), true), vec4<bool>(func_2(select(arg_2.e, arg_2.e, false), _wgslsmith_add_u32(50925u, 1u), vec4<i32>(-2147483647i, arg_2.d, u_input.c, 17201i) >> (vec4<u32>(arg_0.b.c.x, 4294967295u, var_0.x, arg_0.a.x) % vec4<u32>(32u))), true, false, any(vec4<bool>(arg_0.b.a, false, false, false))), true));
    let var_1 = abs(6995i);
    let var_2 = ~arg_2.c.xxx;
    var_0 = firstLeadingBit(select(arg_2.c.wy, arg_0.b.c.xw, arg_3.xx));
    return arg_2.a;
}

fn func_1(arg_0: vec2<f32>) -> vec2<bool> {
    var var_0 = -994f;
    var var_1 = Struct_2(vec4<u32>(u_input.b, 0u, u_input.b, ~1u), Struct_1(false, 1000f, _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 16959u, ~u_input.a, _wgslsmith_div_u32(u_input.a, 4294967295u)), ~(~vec4<u32>(1u, u_input.b, u_input.a, 9143u))), 1i, firstTrailingBit(u_input.c)), -417f, arg_0.x);
    let var_2 = (select(vec4<i32>(2147483647i, ~17048i, _wgslsmith_sub_i32(0i, var_1.b.e), 1i << (u_input.b % 32u)), _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(var_1.b.e, var_1.b.e, 2686i, u_input.c)), _wgslsmith_add_vec4_i32(vec4<i32>(var_1.b.e, 1i, -6549i, var_1.b.d), vec4<i32>(u_input.c, u_input.c, 2147483647i, 1i))), var_1.b.a) | ~(-max(vec4<i32>(-1i, var_1.b.d, u_input.c, -63358i), vec4<i32>(var_1.b.d, -2396i, -2147483647i, u_input.c)))) ^ max(~(vec4<i32>(-48811i, u_input.c, var_1.b.d, -1i) | vec4<i32>(var_1.b.d, u_input.c, var_1.b.e, 0i)), select(vec4<i32>(max(0i, 1i), ~u_input.c, 1i, var_1.b.e), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, u_input.c, -13523i, var_1.b.d), ~vec4<i32>(var_1.b.e, u_input.c, -2147483647i, 0i)), var_1.b.a && var_1.b.a));
    return vec2<bool>(func_2(var_1.b.e, 0u, vec4<i32>(-var_1.b.e << (~1u % 32u), 1i, u_input.c, -8053i)), all(select(select(vec2<bool>(false, true), vec2<bool>(true, true), !var_1.b.a), vec2<bool>(true, true), func_3(Struct_2(var_1.a, Struct_1(var_1.b.a, arg_0.x, vec4<u32>(u_input.a, 4294967295u, 36949u, var_1.a.x), -17495i, u_input.c), 448f, 599f), vec4<bool>(var_1.b.a, var_1.b.a, false, false), Struct_1(true, -1264f, var_1.b.c, u_input.c, u_input.c), vec3<bool>(false, true, false)) | var_1.b.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(!any(func_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-359f, -302f))))));
    global0 = func_2(u_input.c, u_input.b, vec4<i32>(-3522i, -16064i, _wgslsmith_mod_i32(-54693i, 38755i), -1i >> (1u % 32u)) << ((vec4<u32>(0u, u_input.a, u_input.b, 4294967295u) & vec4<u32>(23843u, u_input.b, 4294967295u, u_input.b)) % vec4<u32>(32u))) | !any(vec3<bool>(true, true, true));
    var var_0 = Struct_2(~vec4<u32>(~(u_input.b | 75002u), 1u, _wgslsmith_sub_u32(1u, u_input.b), max(u_input.a, u_input.b)), Struct_1(~(-u_input.c) > 2147483647i, _wgslsmith_f_op_f32(abs(1f)), vec4<u32>(u_input.a, u_input.a, ~1u, u_input.a), ~(~u_input.c | u_input.c), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, 9332i), -vec3<i32>(u_input.c, 2147483647i, -32814i)), -1i >> ((u_input.b << (u_input.b % 32u)) % 32u))), -1883f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(340f, -1319f) + _wgslsmith_f_op_f32(f32(-1f) * -933f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -2029f))))));
    var var_1 = var_0.b;
    global0 = var_1.a;
    var_0 = Struct_2(firstTrailingBit(min(var_0.a, _wgslsmith_clamp_vec4_u32(var_0.b.c, vec4<u32>(u_input.a, 14966u, u_input.b, 30650u), vec4<u32>(36257u, var_1.c.x, 1u, var_1.c.x)) | vec4<u32>(u_input.b, 4294967295u, var_1.c.x, var_0.a.x))), Struct_1(all(vec3<bool>(var_1.a, var_0.b.a, false)), -783f, vec4<u32>(539u, 33128u, _wgslsmith_add_u32(select(var_1.c.x, 4294967295u, true), select(var_1.c.x, 4294967295u, var_0.b.a)), _wgslsmith_dot_vec3_u32(var_1.c.www, vec3<u32>(var_1.c.x, 0u, var_1.c.x)) >> (_wgslsmith_div_u32(30759u, 4294967295u) % 32u)), 13968i, var_0.b.e), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(421f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(758f - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1000f, var_0.b.b), _wgslsmith_f_op_f32(-var_0.b.b)))) + 565f));
    let var_2 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(358f, var_2.b) - vec2<f32>(var_0.d, var_0.d)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(825f, -178f))))), vec2<f32>(_wgslsmith_f_op_f32(sign(-765f)), var_1.b)));
}

