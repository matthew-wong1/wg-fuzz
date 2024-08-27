struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 7>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    global0 = array<vec4<f32>, 7>();
    var var_0 = Struct_4(vec4<bool>(true, true, true, true));
    var var_1 = true | (var_0.a.x | !(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, u_input.a), u_input.d.yz) > ~u_input.a));
    let var_2 = _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(~0i << (u_input.a % 32u), -_wgslsmith_mod_i32(1i, -20485i), ~(-2524i ^ u_input.c), i32(-1i) * -40160i), -vec4<i32>(~(-10803i), 0i, u_input.c, reverseBits(u_input.c))), -(~reverseBits(vec4<i32>(u_input.c, u_input.c, 2271i, 2147483647i)) | abs(vec4<i32>(u_input.c, -6754i, u_input.c, 21350i))), _wgslsmith_sub_vec4_i32(~(vec4<i32>(u_input.c, 5816i, u_input.c, 9407i) | ~vec4<i32>(u_input.c, u_input.c, 61664i, -1i)), abs(_wgslsmith_add_vec4_i32(abs(vec4<i32>(45804i, u_input.c, -9175i, u_input.c)), reverseBits(vec4<i32>(1i, u_input.c, u_input.c, u_input.c))))));
    var var_3 = !select(var_0.a.x, false, var_0.a.x);
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -109f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(2059f)), -1838f) * 671f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -297f), 156f, true)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1) -> i32 {
    global0 = array<vec4<f32>, 7>();
    let var_0 = _wgslsmith_clamp_u32(u_input.a, 1u & u_input.b, ~max(~1u, firstTrailingBit(~43178u)));
    global0 = array<vec4<f32>, 7>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-127f, arg_0.c.x), _wgslsmith_f_op_f32(step(735f, 1264f)))), 705f), _wgslsmith_f_op_f32(func_3()))));
    global0 = array<vec4<f32>, 7>();
    return 45753i >> ((u_input.a ^ _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.b, _wgslsmith_add_u32(u_input.d.x, var_0)), ~4294967295u)) % 32u);
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: u32) -> vec3<i32> {
    var var_0 = _wgslsmith_sub_u32(arg_2, 1u);
    var var_1 = vec4<i32>(1i, 30435i, abs(arg_1.b.b), -(~(-arg_1.b.b >> (max(arg_2, arg_1.d.x) % 32u))));
    var var_2 = var_1.zw;
    var_0 = ~arg_1.d.x;
    let var_3 = ~(~_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.x, var_2.x, u_input.c), _wgslsmith_mult_vec3_i32(vec3<i32>(var_2.x, 1i, -9918i), vec3<i32>(arg_1.b.b, -1i, 1i)), var_1.xyx)) ^ (_wgslsmith_mult_vec3_i32(var_1.xwy, vec3<i32>(min(var_1.x, u_input.c), _wgslsmith_mod_i32(var_2.x, 24190i), var_1.x)) & max(max(var_1.xyy, -var_1.wxw), vec3<i32>(_wgslsmith_dot_vec3_i32(var_1.yxz, vec3<i32>(u_input.c, 2147483647i, 2147483647i)), -1i, func_2(Struct_3(Struct_1(arg_1.b.a, 40333i, true), Struct_1(vec3<bool>(arg_1.c, false, true), u_input.c, arg_1.c), vec2<f32>(1602f, -722f), vec2<bool>(true, false)), Struct_1(vec3<bool>(true, arg_1.b.a.x, arg_1.c), 2147483647i, arg_1.c)))));
    return vec3<i32>(_wgslsmith_mult_i32(~select(var_1.x, 2147483647i, arg_1.b.c), 0i | var_3.x), -u_input.c >> (arg_2 % 32u), -(~(var_3.x >> (arg_1.d.x % 32u)))) ^ ~var_3;
}

fn func_4(arg_0: bool, arg_1: vec3<i32>) -> Struct_4 {
    let var_0 = Struct_3(Struct_1(!(!vec3<bool>(true, true, arg_0)), u_input.c, arg_0), Struct_1(vec3<bool>(!arg_0, arg_0, _wgslsmith_sub_i32(u_input.c, arg_1.x) > ~arg_1.x), u_input.c, true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-380f, 1060f) + vec2<f32>(1829f, 1000f)) + _wgslsmith_div_vec2_f32(vec2<f32>(1506f, -313f), vec2<f32>(942f, -282f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1730f, -361f), vec2<f32>(-835f, -716f))))), vec2<f32>(_wgslsmith_f_op_f32(round(431f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -187f))))), select(vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0))), true), select(vec2<bool>(true, false), vec2<bool>(select(arg_0, true, false), arg_0), vec2<bool>(true, true)), !(!all(vec2<bool>(true, arg_0)))));
    var var_1 = select(var_0.a.c, any(select(select(var_0.a.a, select(var_0.b.a, var_0.a.a, var_0.a.a.x), any(var_0.a.a)), !vec3<bool>(arg_0, false, true), !any(var_0.a.a))), var_0.b.c);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(1586f, var_0.c.x), _wgslsmith_f_op_f32(398f + 1172f))) + _wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(1103f, -1646f)))))), var_0.b, min(u_input.c, _wgslsmith_div_i32(~var_0.b.b, -2147483647i)) != (13519i | _wgslsmith_dot_vec3_i32(select(vec3<i32>(27457i, arg_1.x, -2147483647i), arg_1, var_0.d.x), vec3<i32>(u_input.c, u_input.c, 495i))), u_input.d.yw);
    var var_3 = 141f;
    global0 = array<vec4<f32>, 7>();
    return Struct_4(!(!select(!vec4<bool>(true, var_0.b.a.x, var_2.b.c, var_0.a.c), !vec4<bool>(var_2.c, var_0.a.a.x, true, var_0.a.c), vec4<bool>(false, var_2.b.a.x, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(1u, 7u)];
    let var_1 = func_4(true, max(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(u_input.c, u_input.c, u_input.c), countOneBits(vec3<i32>(u_input.c, u_input.c, u_input.c)), true), firstLeadingBit(~vec3<i32>(u_input.c, -2147483647i, u_input.c)), vec3<i32>(18606i, 4471i, u_input.c)), _wgslsmith_clamp_vec3_i32(vec3<i32>(countOneBits(0i), _wgslsmith_mult_i32(u_input.c, u_input.c), -2147483647i), _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(-35089i, u_input.c, -55482i)), firstTrailingBit(vec3<i32>(u_input.c, u_input.c, u_input.c))), func_1(2117f, Struct_2(var_0.x, Struct_1(vec3<bool>(false, false, true), 37745i, false), false, u_input.d.zz), u_input.b) & min(vec3<i32>(-10501i, u_input.c, -2147483647i), vec3<i32>(u_input.c, u_input.c, -2147483647i)))));
    var var_2 = Struct_4(select(var_1.a, vec4<bool>(true, true, false, var_1.a.x && var_1.a.x), var_1.a));
    var_2 = var_1;
    global0 = array<vec4<f32>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(848u, abs(abs(-(~vec2<i32>(0i, 1i)))));
}

