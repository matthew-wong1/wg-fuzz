struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: bool,
    d: vec4<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: i32 = 2147483647i;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = abs(u_input.b.yy | _wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(18429u, 143132u)) & vec2<u32>(arg_0, u_input.a), ~u_input.b.zx));
    global1 = abs(_wgslsmith_add_i32(~(-1245i), 1i));
    global0 = -23762i;
    global1 = _wgslsmith_add_i32(30532i, max(firstLeadingBit(-(~(-1i))), ~_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -49013i, -1i, -49662i), vec4<i32>(23054i, -16439i, -1i, -41181i), vec4<i32>(-2147483647i, 28863i, 1i, -2147483647i)), vec4<i32>(1i, 1i, 1i, 1i))));
    global1 = ~firstTrailingBit(0i);
    return 1i;
}

fn func_2(arg_0: f32) -> i32 {
    let var_0 = 2103i;
    global0 = var_0 ^ var_0;
    global1 = 1i;
    global1 = firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, var_0, var_0, -41956i), vec4<i32>(67423i, var_0, -44036i, 1i)), _wgslsmith_div_vec4_i32(~vec4<i32>(var_0, var_0, var_0, var_0), ~vec4<i32>(34134i, var_0, var_0, 25967i))), 1i));
    let var_1 = _wgslsmith_sub_i32(-1i, min(43014i, var_0) >> (4294967295u % 32u));
    return _wgslsmith_mult_i32(_wgslsmith_clamp_i32(countOneBits(var_1), max(1i, 1i), firstLeadingBit(-54483i)), _wgslsmith_sub_i32(func_1(u_input.a), var_0)) ^ _wgslsmith_mod_i32(28642i, var_1);
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: f32) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-608f, arg_2), vec2<f32>(474f, -706f)) - vec2<f32>(-1982f, arg_2)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-261f, -1000f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-170f, -384f) + vec2<f32>(-1075f, 114f))))));
    let var_1 = Struct_3(!(!vec2<bool>(arg_1.a.c, !arg_1.a.c)));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_2), 367f) * vec2<f32>(-1173f, _wgslsmith_f_op_f32(-var_0.x)));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x * arg_2)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2)) + -1849f);
    return _wgslsmith_add_vec3_u32(reverseBits(~(vec3<u32>(arg_1.a.a.x, arg_1.a.e.x, 91192u) >> (vec3<u32>(1u, u_input.a, 4294967295u) % vec3<u32>(32u))) ^ vec3<u32>(arg_1.a.e.x, select(u_input.b.x, 4294967295u, true), abs(7151u))), vec3<u32>(~u_input.b.x, arg_1.a.e.x >> (0u % 32u), _wgslsmith_sub_u32(countOneBits(1u) << (0u % 32u), firstLeadingBit(~arg_1.a.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(~((func_1(1u) & 1i) | -func_2(-758f)));
    global1 = ~min(1i, 61604i);
    global0 = -(~1i >> (1u % 32u));
    var var_0 = Struct_4(Struct_1(u_input.b.xz, ~1i, true, select(select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true)), u_input.b.x > u_input.a), vec4<bool>(true, true, all(vec2<bool>(true, false)), true), true), vec3<u32>(32229u, 1u, 4294967295u)));
    var_0 = Struct_4(Struct_1(~(vec2<u32>(var_0.a.e.x, u_input.a) << (var_0.a.a % vec2<u32>(32u))), func_1(1u), _wgslsmith_f_op_f32(ceil(-789f)) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1977f, 589f)), !(!select(vec4<bool>(false, true, var_0.a.d.x, var_0.a.d.x), var_0.a.d, vec4<bool>(true, false, true, false))), min(_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.a, var_0.a.e.x), vec3<u32>(4621u, var_0.a.e.x, var_0.a.a.x)) | ~u_input.b, ~vec3<u32>(u_input.a, var_0.a.e.x, 22092u))));
    var var_1 = Struct_3(!var_0.a.d.xy);
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -424f) + _wgslsmith_f_op_f32(ceil(-907f))))), -1011f));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(reverseBits(vec3<u32>(u_input.a, var_0.a.e.x, u_input.b.x))) << (func_3((var_0.a.b ^ var_0.a.b) ^ 1i, Struct_4(var_0.a), var_2) % vec3<u32>(32u)));
}

