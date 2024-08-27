struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec3<bool>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(Struct_1(vec4<u32>(4294967295u, 57954u, 35611u, 1u)), Struct_1(vec4<u32>(28206u, 20153u, 1u, 28386u)), Struct_1(vec4<u32>(111017u, 7379u, 9031u, 26347u)), Struct_1(vec4<u32>(36025u, 38698u, 47115u, 6637u)), vec3<bool>(true, true, false)), Struct_2(Struct_1(vec4<u32>(72797u, 4294967295u, 0u, 4294967295u)), Struct_1(vec4<u32>(0u, 25240u, 37206u, 277u)), Struct_1(vec4<u32>(15938u, 1u, 1u, 36789u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 0u)), vec3<bool>(false, true, true)), Struct_2(Struct_1(vec4<u32>(0u, 29375u, 4294967295u, 2867u)), Struct_1(vec4<u32>(4294967295u, 1u, 1u, 33490u)), Struct_1(vec4<u32>(0u, 0u, 74300u, 0u)), Struct_1(vec4<u32>(1u, 43302u, 1u, 0u)), vec3<bool>(true, false, true)), Struct_2(Struct_1(vec4<u32>(26541u, 0u, 4294967295u, 21484u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 55711u)), Struct_1(vec4<u32>(46178u, 4294967295u, 0u, 89107u)), Struct_1(vec4<u32>(4294967295u, 10474u, 1u, 48281u)), vec3<bool>(false, false, true)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global0 = array<Struct_2, 4>();
    global0 = array<Struct_2, 4>();
    var var_0 = ~vec4<u32>(countOneBits(u_input.b), firstTrailingBit(firstTrailingBit(u_input.b)), ~u_input.b, max(1u, select(1u, 9202u, true)));
    var var_1 = abs(firstTrailingBit(-17598i)) | u_input.a.x;
    let var_2 = Struct_1(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(~var_0.x, 24472u >> (u_input.b % 32u), var_0.x, ~46004u), ~(vec4<u32>(u_input.b, 15591u, 1u, u_input.b) | vec4<u32>(4294967295u, u_input.b, var_0.x, u_input.b))), ~(firstLeadingBit(vec4<u32>(u_input.b, 1u, u_input.b, 8922u)) & vec4<u32>(u_input.b, u_input.b, 42433u, var_0.x))));
    return 1u;
}

fn func_2() -> f32 {
    var var_0 = -u_input.a.x;
    let var_1 = Struct_1(select(abs(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b), vec4<u32>(10153u, u_input.b, u_input.b, u_input.b)), ~vec4<u32>(45390u, u_input.b, u_input.b, 0u))), vec4<u32>(func_3(), u_input.b, firstTrailingBit(4294967295u), u_input.b) | vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(4294967295u, u_input.b, 0u)), u_input.b & 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.b, u_input.b), vec4<u32>(1751u, u_input.b, 0u, 37511u)), reverseBits(u_input.b)), false));
    let var_2 = u_input.a;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(532f, 700f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(991f, -1000f)))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-335f, 1626f) * vec2<f32>(1000f, 832f)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1108f, -788f))))))));
    var_0 = max(u_input.a.x, 2147483647i);
    return 862f;
}

fn func_1(arg_0: u32, arg_1: f32) -> Struct_1 {
    global0 = array<Struct_2, 4>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1, 1554f), vec2<f32>(_wgslsmith_f_op_f32(min(624f, arg_1)), _wgslsmith_f_op_f32(344f + _wgslsmith_f_op_f32(arg_1 + -798f))), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)))) - _wgslsmith_div_vec2_f32(vec2<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -198f))), vec2<f32>(_wgslsmith_f_op_f32(arg_1 + arg_1), 496f)))));
    global0 = array<Struct_2, 4>();
    global0 = array<Struct_2, 4>();
    global0 = array<Struct_2, 4>();
    return Struct_1(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 0u, arg_0, u_input.b), vec4<u32>(arg_0, 0u, u_input.b, arg_0)) & ~max(vec4<u32>(u_input.b, 75289u, 4294967295u, 1u), vec4<u32>(0u, u_input.b, u_input.b, 1u)), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(33561u, 60037u, u_input.b, arg_0), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 4294967295u, arg_0, u_input.b), vec4<u32>(0u, u_input.b, arg_0, arg_0), vec4<u32>(arg_0, arg_0, u_input.b, 0u))), ~(~vec4<u32>(97910u, arg_0, 0u, 0u)))));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2) -> i32 {
    global0 = array<Struct_2, 4>();
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, arg_1.b, 670f, 689f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-344f, arg_1.b, 1000f, arg_1.b)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1200f, -1305f, -1373f, arg_1.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.b, -474f, -174f, arg_1.b)))), u_input.b != (24277u << (1u % 32u)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.b, arg_1.b, -127f, arg_1.b)))))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-802f, arg_1.b, arg_1.b, arg_1.b) * vec4<f32>(arg_1.b, 890f, arg_1.b, -1105f)), vec4<f32>(arg_1.b, arg_1.b, arg_1.b, -549f)))))), true));
    var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.b, 491f, var_0.x, 402f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, var_0.x, arg_1.b, 1402f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1446f, var_0.x, -1000f, -1000f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, arg_1.b, -550f, arg_1.b) + vec4<f32>(var_0.x, var_0.x, arg_1.b, 114f))))))));
    let var_1 = arg_1;
    var var_2 = true;
    return _wgslsmith_sub_i32(19457i, abs(_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, arg_0, -2147483647i, -44991i), ~vec4<i32>(arg_0, u_input.a.x, arg_0, 1i)) ^ 1i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 4>();
    var var_0 = _wgslsmith_clamp_i32(func_4(i32(-1i) * -u_input.a.x, Struct_3(Struct_1(vec4<u32>(33269u, u_input.b, 1u, u_input.b)), -1187f, select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), 30786i, func_1(u_input.b, -554f)), Struct_2(Struct_1(vec4<u32>(7238u, u_input.b, u_input.b, 6594u)), Struct_1(vec4<u32>(1u, u_input.b, 28965u, 0u)), Struct_1(vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b)), Struct_1(vec4<u32>(1u, u_input.b, u_input.b, 1807u)), vec3<bool>(false, false, false))), u_input.a.x, _wgslsmith_mult_i32(max(u_input.a.x, -51959i), u_input.a.x) ^ 2147483647i) >= _wgslsmith_add_i32(u_input.a.x, 13564i);
    var var_1 = global0[_wgslsmith_index_u32(0u, 4u)];
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-777f)) + _wgslsmith_f_op_f32(floor(1132f)))))));
    let var_3 = var_1.e.x;
    let var_4 = !var_1.e.x;
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -534f)) - _wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(-var_2))))));
    let var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1078f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1085f, _wgslsmith_f_op_f32(abs(615f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(421f)) * _wgslsmith_f_op_f32(trunc(var_2))))), 17567u);
}

