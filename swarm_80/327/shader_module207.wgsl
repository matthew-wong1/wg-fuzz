struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<u32>, 21> = array<vec2<u32>, 21>(vec2<u32>(5486u, 66425u), vec2<u32>(1u, 1u), vec2<u32>(81526u, 0u), vec2<u32>(28742u, 1u), vec2<u32>(0u, 28364u), vec2<u32>(35286u, 0u), vec2<u32>(1u, 20800u), vec2<u32>(31710u, 84673u), vec2<u32>(51904u, 52808u), vec2<u32>(17475u, 46031u), vec2<u32>(1u, 0u), vec2<u32>(5936u, 7669u), vec2<u32>(18763u, 90162u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 49548u), vec2<u32>(1u, 8331u), vec2<u32>(0u, 0u), vec2<u32>(55576u, 0u), vec2<u32>(25015u, 8242u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1) -> i32 {
    global0 = arg_0.c;
    return _wgslsmith_clamp_i32(39860i, firstLeadingBit(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(0i, firstTrailingBit(0i), u_input.b, -20039i))), u_input.a.x);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<f32>) -> vec2<bool> {
    var var_0 = true;
    var_0 = false;
    return !vec2<bool>(!(1u <= _wgslsmith_dot_vec4_u32(vec4<u32>(51030u, 1u, 1u, 14622u), vec4<u32>(15365u, 80534u, 5243u, 72356u))), any(vec2<bool>(true, select(false, true, false))));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: bool, arg_3: i32) -> vec4<i32> {
    let var_0 = ~_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, -37665i, -2147483647i), u_input.a.xzx, -vec3<i32>(-374i, u_input.a.x, 0i)), ~u_input.a.yzz), -13970i);
    global1 = array<vec2<u32>, 21>();
    let var_1 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * -684f))), u_input.b, _wgslsmith_add_vec2_i32(firstTrailingBit(arg_0), -vec2<i32>(-8190i, -1i)), u_input.c, select(select(func_3(_wgslsmith_div_vec3_f32(vec3<f32>(1728f, -1580f, 824f), vec3<f32>(1752f, -252f, -998f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(211f, 761f))), !(!vec2<bool>(arg_1, true)), false), select(func_3(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1657f, -424f, -424f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(791f, -894f)))), select(!vec2<bool>(arg_2, arg_2), select(vec2<bool>(arg_1, arg_2), vec2<bool>(arg_1, arg_2), vec2<bool>(arg_1, false)), u_input.c.x >= 2147483647i), vec2<bool>(!arg_1, true)), vec2<bool>(!arg_1, false)));
    global0 = arg_3 | min(~(-74763i), _wgslsmith_sub_i32(-1i, -2147483647i << (_wgslsmith_clamp_u32(0u, 1u, 1u) % 32u)));
    let var_2 = Struct_2(true);
    return vec4<i32>(2147483647i, var_0 | 60977i, arg_0.x, ~(~_wgslsmith_sub_i32(27145i, arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 21>();
    var var_0 = vec4<i32>(u_input.b, -reverseBits(-func_1(Struct_1(vec2<f32>(-612f, -780f), vec2<u32>(13279u, 1u), 49675i, vec4<u32>(4294967295u, 36602u, 36671u, 4294967295u)))), -(_wgslsmith_mult_i32(-1i, u_input.b << (62117u % 32u)) & 2111i), ~u_input.c.x);
    var var_1 = (abs(~_wgslsmith_clamp_vec3_u32(vec3<u32>(78570u, 26u, 0u), vec3<u32>(41246u, 54894u, 311u), vec3<u32>(0u, 59750u, 60402u))) << (min(firstTrailingBit(vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, firstTrailingBit(23542u), 4294967295u)) % vec3<u32>(32u))) << (~select(vec3<u32>(~0u, ~1u, max(0u, 28161u)), ~(~vec3<u32>(0u, 4294967295u, 4294967295u)), vec3<bool>(true, true, true)) % vec3<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(749f, 145f, -1006f, 233f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1065f, 388f, 1345f, -2833f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-930f, -2073f, 2098f, 502f) * vec4<f32>(-708f, 183f, -1854f, -1005f)), u_input.a.x == u_input.b))))));
    var var_3 = var_2.x;
    global0 = 18026i << (~var_1.x % 32u);
    global0 = u_input.a.x;
    var var_4 = func_2(vec2<i32>(u_input.b, ~u_input.c.x), 1000f <= var_2.x, all(vec2<bool>(true, true)), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, vec2<i32>(-_wgslsmith_mult_i32(var_0.x, u_input.a.x) | 0i, 27785i));
}

