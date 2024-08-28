struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec3<f32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 117f;

var<private> global1: vec4<i32>;

var<private> global2: Struct_1 = Struct_1(vec4<f32>(-1000f, 295f, -529f, -272f), vec4<i32>(2147483647i, i32(-2147483648), -20787i, 6889i), vec4<f32>(2394f, -1235f, -603f, 262f), vec3<f32>(-1625f, 905f, -420f), true);

var<private> global3: vec3<f32>;

var<private> global4: vec3<u32> = vec3<u32>(0u, 60466u, 43869u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: vec4<u32>) -> u32 {
    global4 = vec3<u32>(global4.x, ~u_input.c.x, 1u);
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~(~u_input.b), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(6275u, 53191u)), u_input.c.xz, vec2<u32>(global4.x, 34147u)), reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_2.x, 4294967295u), vec2<u32>(arg_2.x, global4.x))))), abs(61290u) >> (0u % 32u));
    global4 = vec3<u32>(5435u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_2.x, 75895u, 4294967295u, 0u), u_input.c, vec4<u32>(1u, 1u, 1u, 1u)), ~arg_2 & vec4<u32>(4294967295u, 16129u, 20469u, u_input.a)), ~(~(10838u >> (0u % 32u)))), (_wgslsmith_div_u32(u_input.c.x, u_input.b.x) | 85101u) & ~arg_2.x);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(global2.a)), global2.b ^ (_wgslsmith_div_vec4_i32(~vec4<i32>(arg_1.x, arg_1.x, global1.x, global1.x), abs(global2.b)) ^ select(vec4<i32>(-2147483647i, -1i, 0i, global2.b.x) >> (vec4<u32>(u_input.c.x, arg_2.x, u_input.c.x, 0u) % vec4<u32>(32u)), global2.b, global2.e)), global2.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1283f, -274f, 1318f)), !(global2.e && !(!global2.e)));
    var var_2 = reverseBits(-(vec4<i32>(-35335i, arg_1.x, global1.x, -17059i) << (~u_input.c % vec4<u32>(32u)))) & global2.b;
    return global4.x;
}

fn func_3() -> vec4<f32> {
    global3 = vec3<f32>(_wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-252f, -654f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.x * global2.a.x) * _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(-670f * global3.x)));
    let var_0 = global1.wzx;
    global4 = vec3<u32>(~u_input.b.x, func_2(_wgslsmith_f_op_vec2_f32(min(global3.yx, global3.zy)), abs(vec2<i32>(-2147483647i, -2147483647i)), reverseBits(u_input.c)) ^ firstTrailingBit(max(u_input.b.x, u_input.a)), u_input.b.x << (firstTrailingBit(min(1735u, global4.x)) % 32u)) ^ u_input.c.yyx;
    global4 = ~vec3<u32>(global4.x, firstLeadingBit(_wgslsmith_div_u32(u_input.b.x, 38062u)), _wgslsmith_dot_vec3_u32(u_input.c.xxx, vec3<u32>(22593u, 4294967295u, 16386u))) >> (u_input.c.yww % vec3<u32>(32u));
    global1 = reverseBits(max(abs(vec4<i32>(~u_input.d.x, firstTrailingBit(u_input.d.x), abs(var_0.x), 2013i)), ~global2.b));
    return _wgslsmith_f_op_vec4_f32(-global2.c);
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: vec3<u32>) -> u32 {
    let var_0 = !(!(_wgslsmith_mod_u32(1u, func_2(global3.yy, vec2<i32>(u_input.d.x, -2672i), vec4<u32>(1u, global4.x, global4.x, 4294967295u))) < ~0u));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(global2.c)), global2.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-280f, -1066f, global3.x, -403f))) * vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_f_op_f32(global3.x * global2.d.x), _wgslsmith_f_op_f32(select(-578f, -146f, false))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1270f, global3.x, 1591f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(487f, -1230f, global2.a.x))), 15227u == arg_2.x);
    let var_2 = Struct_1(global2.c, ~((global2.b ^ global2.b) << (~u_input.c % vec4<u32>(32u))) | -(~global2.b), _wgslsmith_f_op_vec4_f32(func_3()), _wgslsmith_f_op_vec3_f32(var_1.a.zzw - var_1.a.wwx), countOneBits(arg_2.x) > ~(0u | arg_1));
    var var_3 = var_2;
    var var_4 = var_2;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -10774i;
    var var_1 = -1000f;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.c.yxz * _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(2327f, -885f, -1000f), vec3<f32>(global3.x, global2.c.x, global3.x)), _wgslsmith_f_op_vec3_f32(ceil(global2.d))))));
    var var_3 = abs(-(_wgslsmith_dot_vec2_i32(global2.b.xz, vec2<i32>(global1.x, u_input.d.x)) ^ global2.b.x)) << (4294967295u % 32u);
    let var_4 = func_1(abs(vec3<i32>(_wgslsmith_clamp_i32(1i, global2.b.x, 0i), 0i, -global2.b.x) & _wgslsmith_mod_vec3_i32(vec3<i32>(global2.b.x, global1.x, 0i) >> (vec3<u32>(0u, 4294967295u, 0u) % vec3<u32>(32u)), global1.xwx)), 0u, ~vec3<u32>(~u_input.b.x, _wgslsmith_clamp_u32(4294967295u, u_input.b.x, 0u) << (~u_input.c.x % 32u), 41850u));
    var_2 = _wgslsmith_f_op_vec3_f32(global2.c.xzx + global2.d);
    global4 = _wgslsmith_mult_vec3_u32(firstLeadingBit(~_wgslsmith_add_vec3_u32(vec3<u32>(33020u, 42213u, 1u), u_input.c.yyz & u_input.c.wzx)), u_input.c.xxy);
    global2 = Struct_1(global2.a, min(_wgslsmith_mult_vec4_i32(~global2.b, reverseBits(vec4<i32>(global1.x, u_input.d.x, global1.x, -18270i))), countOneBits(vec4<i32>(_wgslsmith_dot_vec3_i32(global2.b.xwz, vec3<i32>(-2147483647i, 0i, 23114i)), u_input.d.x << (global4.x % 32u), -u_input.d.x, global2.b.x))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-336f, _wgslsmith_f_op_f32(floor(334f)), _wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-343f)), _wgslsmith_f_op_vec4_f32(func_3()).x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.c.yyw + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global2.c.xyz, global2.a.xxx))))), any(select(vec2<bool>(true, all(vec3<bool>(true, global2.e, global2.e))), select(!vec2<bool>(global2.e, false), select(vec2<bool>(global2.e, global2.e), vec2<bool>(global2.e, global2.e), vec2<bool>(false, false)), false), vec2<bool>(select(true, false, true), true))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4 ^ ~36714u, u_input.c.wwx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) * _wgslsmith_f_op_f32(floor(global2.a.x))), global2.b.x >> (4294967295u % 32u));
}

