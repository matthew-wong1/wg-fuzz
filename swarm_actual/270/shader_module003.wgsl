struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 31>;

var<private> global1: array<i32, 15>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: vec2<i32>) -> i32 {
    global1 = array<i32, 15>();
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(211f + -618f) + _wgslsmith_f_op_f32(step(678f, -1218f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1f, -1000f)))), 1000f) - vec3<f32>(1f, 1f, 1f));
    global1 = array<i32, 15>();
    var var_1 = ~vec4<i32>(_wgslsmith_sub_i32(u_input.a >> (abs(40147u) % 32u), -2147483647i), _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, -2147483647i, 1i, u_input.a), vec4<i32>(-30622i, arg_0.x, global1[_wgslsmith_index_u32(u_input.c.x, 15u)], arg_1.x)) & arg_1.x, _wgslsmith_dot_vec2_i32(firstLeadingBit(arg_2 | arg_0), arg_2), arg_0.x);
    var var_2 = _wgslsmith_clamp_vec2_i32(max(~(~arg_0), firstTrailingBit(~firstLeadingBit(arg_0))), vec2<i32>(-abs(firstLeadingBit(1i)), arg_2.x), select(vec2<i32>(min(var_1.x, min(var_1.x, var_1.x)), arg_1.x), vec2<i32>(_wgslsmith_sub_i32(~arg_2.x, -2147483647i), global1[_wgslsmith_index_u32(0u, 15u)]), !(!select(false, false, true))));
    return min(1i, abs(_wgslsmith_mult_i32(1i, -arg_1.x) | (var_1.x | (21337i << (u_input.c.x % 32u)))));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(1i, _wgslsmith_mult_i32(60831i, 1i), u_input.a), vec3<i32>(func_3(vec2<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 15u)], u_input.b), vec3<i32>(u_input.a, 1i, u_input.a), vec2<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 15u)], global1[_wgslsmith_index_u32(u_input.c.x, 15u)])) & global1[_wgslsmith_index_u32(u_input.c.x, 15u)], abs(~u_input.b), _wgslsmith_mult_i32(0i >> (u_input.c.x % 32u), u_input.a))));
    var var_1 = Struct_2(~30262u | _wgslsmith_mod_u32(u_input.c.x, _wgslsmith_div_u32(~0u, 4294967295u ^ u_input.c.x)));
    var var_2 = var_0.a.xz;
    global1 = array<i32, 15>();
    var var_3 = true;
    return Struct_2(_wgslsmith_mult_u32(~(~(~var_1.a)), _wgslsmith_add_u32(var_1.a, 1u)));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(574f - _wgslsmith_f_op_f32(-arg_1)) * _wgslsmith_f_op_f32(-arg_2.x)), 1652f)), -798f, true));
    let var_1 = Struct_2(u_input.c.x);
    global1 = array<i32, 15>();
    global0 = array<vec2<f32>, 31>();
    let var_2 = func_2();
    return Struct_1(vec3<i32>(max(1i, global1[_wgslsmith_index_u32(firstLeadingBit(var_2.a), 15u)] & u_input.b), ~_wgslsmith_div_i32(_wgslsmith_mult_i32(arg_3.a.x, -25353i), arg_3.a.x), _wgslsmith_mod_i32(-6037i, _wgslsmith_div_i32(-69369i, -7493i)) >> (arg_0.a % 32u)));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: u32, arg_3: vec4<i32>) -> f32 {
    let var_0 = func_4(func_2(), 291f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-260f, 305f, 293f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(520f, 1099f, 420f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1340f, 879f, 255f), vec3<f32>(895f, -600f, 1000f)))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-119f, -349f, 347f))))), Struct_1(firstTrailingBit(_wgslsmith_mult_vec3_i32(select(vec3<i32>(-19104i, u_input.a, 29042i), vec3<i32>(u_input.a, u_input.a, -1i), false), min(arg_3.zyx, arg_3.yzy)))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -113f), _wgslsmith_f_op_f32(ceil(-278f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1337f - _wgslsmith_div_f32(437f, _wgslsmith_f_op_f32(floor(1611f)))))));
    let var_2 = func_4(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -843f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(151f, var_1.x, var_1.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, -927f) + vec3<f32>(-420f, var_1.x, var_1.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 245f, var_1.x)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(559f - var_1.x), _wgslsmith_f_op_f32(-385f * 1000f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.x, 342f, var_1.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 576f, -146f) * vec3<f32>(2351f, -575f, -183f))))), var_0);
    let var_3 = arg_0;
    let var_4 = arg_1;
    return _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(trunc(-1636f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    let var_1 = Struct_1(vec3<i32>(-22534i, (i32(-1i) * -2479i) & (_wgslsmith_add_i32(-2147483647i, u_input.a) << (4294967295u % 32u)), ~_wgslsmith_dot_vec4_i32(-vec4<i32>(-13825i, 0i, 73812i, 8114i), vec4<i32>(global1[_wgslsmith_index_u32(27596u, 15u)], u_input.b, var_0, u_input.a))));
    global0 = array<vec2<f32>, 31>();
    var var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -288f) * _wgslsmith_f_op_f32(min(-1000f, 699f))))), 1101f), _wgslsmith_f_op_f32(-169f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(false, Struct_2(u_input.c.x), 24887u, vec4<i32>(u_input.a, -1i, -34403i, -36892i)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-953f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 1542f, true))), _wgslsmith_f_op_f32(f32(-1f) * -434f));
    global1 = array<i32, 15>();
    let var_3 = func_4(Struct_2(~countOneBits(0u)), -662f, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * -1000f) - _wgslsmith_f_op_f32(ceil(-739f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.x)))), var_1).a.xy;
    let var_4 = select(vec4<u32>(u_input.c.x, ~_wgslsmith_sub_u32(0u, u_input.c.x), ~u_input.c.x, u_input.c.x), ~abs(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 1u, 0u), vec4<u32>(u_input.c.x, u_input.c.x, 1u, 574u))), vec4<bool>(select(var_2.x > var_2.x, any(vec3<bool>(false, false, false)), true), true, true, true)) ^ reverseBits(~(~select(vec4<u32>(27974u, 0u, 82886u, 1371u), u_input.c, vec4<bool>(true, false, false, true))));
    let var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.c.xz), _wgslsmith_sub_vec2_u32(u_input.c.zx, var_4.wx)) | 16518u, 4294967295u, 4294967295u), 15u)], var_1.a);
}

