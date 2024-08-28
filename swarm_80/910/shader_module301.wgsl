struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: i32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_2(arg_2, select(min(_wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(u_input.a, u_input.a, u_input.a)), vec3<i32>(-2147483647i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, 1i) | vec3<i32>(8760i, 1i, -21274i)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-19860i, u_input.a, 43075i)) & abs(vec3<i32>(31406i, u_input.a, -2411i))), ((vec3<i32>(u_input.a, u_input.a, -43816i) & vec3<i32>(u_input.a, u_input.a, -37508i)) << (_wgslsmith_div_vec3_u32(vec3<u32>(arg_0, 28721u, 1u), vec3<u32>(arg_1, 3262u, arg_1)) % vec3<u32>(32u))) ^ _wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(-33730i, u_input.a, 12838i)), vec3<i32>(u_input.a, -20660i, u_input.a) & vec3<i32>(2147483647i, u_input.a, -2213i)), arg_2.a.yxx), _wgslsmith_div_i32(u_input.a, -1i), Struct_1(!vec4<bool>(arg_2.a.x, 9659i != u_input.a, arg_2.a.x, arg_2.a.x)), ~_wgslsmith_clamp_u32(countOneBits(0u), abs(~0u), ~arg_0));
    var var_1 = ~_wgslsmith_dot_vec2_i32(~var_0.b.zx, ~(vec2<i32>(var_0.c, -1i) >> ((vec2<u32>(4294967295u, var_0.e) & vec2<u32>(1u, 9100u)) % vec2<u32>(32u))));
    var var_2 = countOneBits(1i);
    let var_3 = !vec3<bool>(!(any(vec4<bool>(true, var_0.a.a.x, arg_2.a.x, arg_2.a.x)) & true), !(23588u > ~arg_1), true);
    var_2 = -(~var_0.c);
    return -firstTrailingBit(~firstLeadingBit(u_input.a));
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = func_3(max(_wgslsmith_dot_vec2_u32(vec2<u32>(47496u, 1u), vec2<u32>(1u, 1u)), reverseBits(~1u)), 1u, Struct_1(vec4<bool>(true, true, true, true))) ^ firstLeadingBit(arg_0 | arg_0);
    var_0 = u_input.a;
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(358f, -675f, 778f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-109f, -654f, -1756f) - vec3<f32>(-883f, 321f, -376f)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-281f - _wgslsmith_f_op_f32(max(var_1.a.x, _wgslsmith_f_op_f32(125f * var_1.a.x))))));
    let var_3 = 35983u;
    return _wgslsmith_div_u32(~var_3, firstLeadingBit(47712u));
}

fn func_1() -> u32 {
    let var_0 = 1i;
    var var_1 = reverseBits(52193u);
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(524f, -611f, -556f) * vec3<f32>(-838f, 685f, 123f)))))));
    var var_3 = -619f;
    var var_4 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_2.a.xx * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a.x), -686f), _wgslsmith_f_op_f32(abs(var_2.a.x))))));
    return ~(1u << ((~func_2(-16189i) >> (74975u % 32u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(91195u, firstTrailingBit(1u), _wgslsmith_mult_u32(36649u, func_1()), 1u), ~select(vec4<u32>(firstLeadingBit(4294967295u), select(0u, 1u, true), 1u, ~0u), abs(~vec4<u32>(8490u, 1u, 1u, 4294967295u)), vec4<bool>(true, u_input.a <= -1418i, true, true)));
    var var_1 = ~(~_wgslsmith_sub_vec3_u32(var_0.xwy, _wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, 6994u, var_0.x), abs(var_0.yzy))));
    var_0 = ~_wgslsmith_add_vec4_u32(~(~vec4<u32>(var_1.x, var_0.x, 65496u, var_1.x) << (~vec4<u32>(var_0.x, 4294967295u, var_0.x, 22765u) % vec4<u32>(32u))), select(~vec4<u32>(var_0.x, 4294967295u, 1u, 22376u), ~vec4<u32>(var_0.x, 4294967295u, 1u, var_1.x), vec4<bool>(true, true, true, true)) & ~vec4<u32>(9277u, var_0.x, var_0.x, 3946u));
    var_1 = vec3<u32>(~_wgslsmith_div_u32(var_1.x, ~var_0.x), ~1u, 19562u);
    var_1 = var_0.zxx;
    var var_2 = Struct_2(Struct_1(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, all(vec4<bool>(false, true, true, false)), any(vec2<bool>(true, false)), all(vec2<bool>(true, true))))), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, -(~0i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(u_input.a, -60805i)) << (var_1.x % 32u)), vec3<i32>(u_input.a, u_input.a, -12604i)), -(~func_3(45257u, select(var_0.x, 1952u, true), Struct_1(vec4<bool>(true, true, true, true)))), Struct_1(vec4<bool>(!all(vec2<bool>(true, false)), true, true, any(vec3<bool>(true, true, true)))), 26654u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_clamp_i32(~(-1i), -1i, u_input.a), reverseBits(1i), _wgslsmith_sub_i32(var_2.c, var_2.b.x), min(~(var_2.b.x & 2147483647i), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(var_2.b.x, 2147483647i, var_2.b.x)))), var_1.x, ~var_0.x);
}

