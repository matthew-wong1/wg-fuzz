struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec3<bool>,
    d: vec3<u32>,
    e: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = Struct_1(vec3<u32>(~_wgslsmith_add_u32(47483u, 0u) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(0u, 57742u)), firstLeadingBit(~0u), _wgslsmith_clamp_u32(_wgslsmith_div_u32(55100u, select(98453u, 48975u, true)), 1u, 4294967295u)), abs(~(~1u)), vec3<bool>(true, true, true), _wgslsmith_mult_vec3_u32(~select(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 0u, 18828u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(33157u, 4294967295u, 4294967295u)), vec3<u32>(1u, 94360u, 1u), select(true, false, false)), vec3<u32>(1u, 1u, 1u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-268f - 1516f), _wgslsmith_f_op_f32(abs(1f))));
    let var_1 = var_0.c.x;
    var var_2 = -1921i;
    var var_3 = 27015i;
    global0 = array<Struct_2, 8>();
    return true;
}

fn func_2() -> vec3<u32> {
    var var_0 = vec4<bool>(!func_3(), all(!select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)))), func_3(), !(!all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), false))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1186f, 1000f, -442f, 424f)) + vec4<f32>(1018f, 899f, -317f, 334f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(721f, -1218f, 2039f, 1493f))) + vec4<f32>(1f, 1f, 1f, 1f)))));
    var var_2 = countOneBits(~_wgslsmith_div_u32(1u, abs(~0u)));
    global0 = array<Struct_2, 8>();
    let var_3 = Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, max(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 4294967295u)), 1u)), 8u)]);
    return vec3<u32>(min(~firstTrailingBit(_wgslsmith_sub_u32(43450u, 17175u)), abs(countOneBits(4294967295u)) >> (min(reverseBits(4294967295u), 0u) % 32u)), reverseBits(1u), countOneBits(~(~(~38273u))));
}

fn func_1() -> i32 {
    var var_0 = Struct_1(func_2(), 1u, vec3<bool>(min(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec3_i32(u_input.a, u_input.a)) <= (u_input.a.x << (~1u % 32u)), true, all(vec2<bool>(any(vec2<bool>(true, true)), true))), max(select(~vec3<u32>(21870u, 4294967295u, 24561u), _wgslsmith_sub_vec3_u32(~vec3<u32>(1u, 1u, 28533u), _wgslsmith_clamp_vec3_u32(vec3<u32>(16987u, 4294967295u, 1u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(4294967295u, 0u, 14656u))), any(vec2<bool>(false, false))), _wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(1u, 1u, 1u))), _wgslsmith_f_op_f32(-844f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1469f, 1045f, true)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1201f)))));
    let var_1 = (firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_add_i32(-41151i, u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, 49133i, u_input.a.x, u_input.a.x)))) << (var_0.a.x % 32u)) | u_input.a.x;
    var_0 = Struct_1(var_0.a, 32147u, !var_0.c, abs(var_0.d), var_0.e);
    var var_2 = var_1;
    var var_3 = _wgslsmith_mod_i32(~(~33679i), 4724i);
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(select(select(vec2<bool>(true, true), vec2<bool>(true, true), -62130i != _wgslsmith_add_i32(u_input.a.x, u_input.a.x)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true)), true), true), vec4<i32>(29524i, abs(u_input.a.x), _wgslsmith_sub_i32(max(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), reverseBits(0i)), _wgslsmith_dot_vec3_i32(~u_input.a, u_input.a)), ~func_1()));
    var var_1 = _wgslsmith_f_op_f32(ceil(-674f));
    let var_2 = vec3<bool>(true, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.x, -2147483647i), u_input.a.xx), var_0.b.x) != -var_0.b.x, any(select(vec3<bool>(false, all(var_0.a), any(vec4<bool>(var_0.a.x, false, var_0.a.x, var_0.a.x))), !select(vec3<bool>(false, var_0.a.x, var_0.a.x), vec3<bool>(var_0.a.x, true, false), true), !vec3<bool>(var_0.a.x, true, var_0.a.x))));
    let var_3 = vec3<bool>(true, true, false);
    global0 = array<Struct_2, 8>();
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1555f)), 1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -390f)))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f)))));
    let var_5 = vec2<bool>(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -309f)) < _wgslsmith_f_op_f32(-var_4.x)), func_3());
    let var_6 = global0[_wgslsmith_index_u32(41051u >> (_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, ~12295u, min(0u, 4294967295u), 1u), abs(~vec4<u32>(9870u, 4294967295u, 75036u, 17195u))), vec4<u32>(17763u, ~14093u, _wgslsmith_clamp_u32(1u, 4294967295u, 4294967295u), 1u) ^ abs(vec4<u32>(6041u, 1u, 1u, 4294967295u))) % 32u), 8u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~countOneBits(func_2().x), firstTrailingBit(1u)), 1080f, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), abs(abs(vec4<u32>(0u, 55146u, 60886u, 2486u)))), var_4.x);
}

