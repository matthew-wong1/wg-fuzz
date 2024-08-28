struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 22> = array<vec4<u32>, 22>(vec4<u32>(38356u, 3615u, 1u, 1u), vec4<u32>(22044u, 1u, 4294967295u, 34953u), vec4<u32>(63349u, 93161u, 4294967295u, 0u), vec4<u32>(0u, 17184u, 32600u, 2184u), vec4<u32>(0u, 0u, 25132u, 56340u), vec4<u32>(14338u, 66476u, 0u, 4294967295u), vec4<u32>(4294967295u, 0u, 61934u, 51014u), vec4<u32>(4294967295u, 1u, 4294967295u, 1u), vec4<u32>(45520u, 18421u, 12108u, 1u), vec4<u32>(69902u, 24053u, 25168u, 8302u), vec4<u32>(4294967295u, 4294967295u, 39223u, 27337u), vec4<u32>(53091u, 1u, 47346u, 4294967295u), vec4<u32>(48301u, 80837u, 15576u, 83820u), vec4<u32>(4294967295u, 0u, 47462u, 8244u), vec4<u32>(31710u, 6098u, 37627u, 51691u), vec4<u32>(4294967295u, 4294967295u, 0u, 3418u), vec4<u32>(6154u, 4294967295u, 62397u, 0u), vec4<u32>(0u, 1u, 32382u, 4294967295u), vec4<u32>(47400u, 16034u, 0u, 4637u), vec4<u32>(38133u, 0u, 4294967295u, 17688u), vec4<u32>(17761u, 1u, 1u, 22410u), vec4<u32>(0u, 0u, 3083u, 0u));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec4<f32>) -> vec3<bool> {
    global0 = array<vec4<u32>, 22>();
    return vec3<bool>(arg_1, arg_1, true);
}

fn func_3(arg_0: f32, arg_1: u32) -> i32 {
    global0 = array<vec4<u32>, 22>();
    global0 = array<vec4<u32>, 22>();
    let var_0 = true;
    let var_1 = (reverseBits(1054i) >= select(_wgslsmith_add_i32(-32720i, 1i), u_input.b.x, _wgslsmith_f_op_f32(floor(arg_0)) == _wgslsmith_f_op_f32(-1000f + -1088f))) || false;
    let var_2 = vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(~u_input.b.ww, vec2<i32>(u_input.b.x, u_input.b.x), u_input.b.wx), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.b.x, 61235i)));
    return max(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(i32(-1i) * -2147483647i, u_input.b.x, -2147483647i)), u_input.b.zyy), reverseBits(var_2.x));
}

fn func_2() -> f32 {
    let var_0 = Struct_4(!(!(!any(vec3<bool>(false, true, false)))));
    global0 = array<vec4<u32>, 22>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1734f) - _wgslsmith_f_op_f32(f32(-1f) * -588f)), 1029f, -593f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -849f))))));
    var var_2 = Struct_1(vec4<i32>(2147483647i, -_wgslsmith_sub_i32(u_input.b.x, u_input.b.x), func_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -969f), 1870f, var_0.a && true)), 1u), u_input.b.x), false, select(vec2<i32>(~u_input.b.x, 25348i), u_input.b.yz, true) | vec2<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(~u_input.b, select(u_input.b, vec4<i32>(u_input.b.x, u_input.b.x, -51i, u_input.b.x), vec4<bool>(false, true, var_0.a, true)))));
    var var_3 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(firstTrailingBit(var_2.a.x), -6218i, u_input.b.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.b.yxy, ~var_2.a.zxx), i32(-1i) * -32887i));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))) * var_1.x)), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_1(2147483647i, true, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2493f, -1078f, -403f, 643f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-706f, -169f, 814f, 1703f))), vec4<f32>(_wgslsmith_f_op_f32(-863f - -353f), -621f, _wgslsmith_f_op_f32(abs(-1223f)), _wgslsmith_f_op_f32(-106f + -1131f)))));
    var var_1 = u_input.a ^ ~(~(vec3<u32>(u_input.a.x, 1u, 1u) << (reverseBits(u_input.a) % vec3<u32>(32u))));
    var var_2 = vec2<f32>(444f, _wgslsmith_f_op_f32(func_2()));
    var_0 = vec3<bool>(true & var_0.x, var_0.x && any(var_0.xz), all(var_0.yy));
    let var_3 = vec2<bool>(all(vec2<bool>(true, true)), var_0.x);
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1072f);
    let var_5 = Struct_3(~0u, Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, 1i | u_input.b.x, 1i), var_3.x, ~vec2<i32>(u_input.b.x >> (var_1.x % 32u), u_input.b.x)), Struct_1(~u_input.b, all(var_3), u_input.b.xy), firstTrailingBit(u_input.b));
    var_4 = var_2.x;
    var_1 = vec3<u32>(u_input.a.x, _wgslsmith_div_u32(4294967295u, var_1.x), ~1u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~23530u, ~1u) >> ((~(~vec2<u32>(4294967295u, u_input.a.x)) ^ u_input.a.yy) % vec2<u32>(32u)));
}

