struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<f32>,
    d: f32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
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

var<private> global0: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(1336f, -1032f));

var<private> global1: array<Struct_1, 7>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32) -> vec2<u32> {
    var var_0 = u_input.c;
    global1 = array<Struct_1, 7>();
    let var_1 = reverseBits(0u);
    var var_2 = vec3<i32>(max(max(~25343i, arg_0) ^ _wgslsmith_div_i32(1i, ~arg_0), select(_wgslsmith_sub_i32(~2147483647i, select(-14968i, -19164i, false)), 29417i, true)), 0i, ~_wgslsmith_mult_i32(1i, arg_0));
    var var_3 = Struct_2(u_input.b.x, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(200f, -307f), _wgslsmith_f_op_vec2_f32(min(global0[_wgslsmith_index_u32(80078u, 1u)], vec2<f32>(913f, -662f))), vec2<bool>(true, true)))), vec2<f32>(1633f, _wgslsmith_f_op_f32(floor(-925f))))), Struct_1(true));
    return vec2<u32>(4294967295u, 4294967295u);
}

fn func_2() -> i32 {
    let var_0 = reverseBits(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(18200u, 15517u)), func_3(_wgslsmith_mod_i32(-48455i, -2147483647i)), firstTrailingBit(vec2<u32>(u_input.c, 39934u))), u_input.a.zx & vec2<u32>(u_input.a.x | 57399u, ~u_input.c)));
    let var_1 = Struct_1(!all(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true))));
    let var_2 = _wgslsmith_add_u32(~u_input.c, firstTrailingBit(0u >> ((0u ^ u_input.c) % 32u)) | reverseBits(~4294967295u));
    var var_3 = Struct_2(_wgslsmith_div_i32(u_input.b.x, reverseBits(14766i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global0[_wgslsmith_index_u32(var_2, 1u)], vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -638f), vec2<bool>(var_1.a, var_1.a & false))) * vec2<f32>(_wgslsmith_f_op_f32(215f - -1489f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1017f, -1499f)) * _wgslsmith_f_op_f32(step(534f, 964f))))), Struct_1(8172u >= _wgslsmith_dot_vec2_u32(~vec2<u32>(51487u, 59120u), var_0)));
    let var_4 = Struct_1(false);
    return -countOneBits(var_3.a);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<i32>) -> f32 {
    let var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(-65126i, arg_1.x, arg_1.x), u_input.b.zyw);
    global0 = array<vec2<f32>, 1>();
    let var_1 = -_wgslsmith_mult_vec4_i32(~(-abs(vec4<i32>(var_0.x, -1i, 0i, 43124i))), vec4<i32>(~u_input.b.x & 0i, ~2147483647i, var_0.x, func_2() << (_wgslsmith_mult_u32(0u, 12913u) % 32u)));
    let var_2 = Struct_4(var_0, vec2<i32>(arg_1.x, 14999i) ^ firstLeadingBit(max(_wgslsmith_add_vec2_i32(vec2<i32>(var_1.x, -11210i), var_1.zz), ~var_0.yz)));
    let var_3 = ~var_1 ^ _wgslsmith_mult_vec4_i32(vec4<i32>(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.a.x, 2147483647i, 2147483647i), var_2.a)), var_0.x, arg_1.x >> (_wgslsmith_add_u32(u_input.c, 28321u) % 32u), 51665i), select(vec4<i32>(var_1.x, firstTrailingBit(var_0.x), var_0.x, 0i), firstTrailingBit(~u_input.b), vec4<bool>(true, true, true, true)));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1055f, -145f, false)) - _wgslsmith_f_op_f32(round(169f)))) * -863f), -737f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 1>();
    var var_0 = true;
    var var_1 = global1[_wgslsmith_index_u32(~0u, 7u)];
    let var_2 = Struct_2(u_input.b.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_1(u_input.a, u_input.b.xy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1028f))) - global0[_wgslsmith_index_u32(u_input.a.x, 1u)]), Struct_1(var_1.a));
    global1 = array<Struct_1, 7>();
    var var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.b.x - var_2.b.x))), var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -108f), _wgslsmith_f_op_f32(step(var_2.b.x, var_2.b.x)))) + vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(752f, -910f), _wgslsmith_f_op_f32(abs(1702f)))), var_2.b.x, _wgslsmith_f_op_f32(max(var_2.b.x, _wgslsmith_div_f32(1791f, 237f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(20895u, firstTrailingBit(select(-vec2<i32>(-1i, 36934i), vec2<i32>(36117i << (u_input.c % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, -20932i, var_2.a), u_input.b)), !select(vec2<bool>(false, false), vec2<bool>(true, var_1.a), vec2<bool>(true, var_1.a)))));
}

