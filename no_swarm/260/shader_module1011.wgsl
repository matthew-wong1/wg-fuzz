struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: f32) -> i32 {
    var var_0 = vec3<u32>(1u << (_wgslsmith_add_u32(u_input.a, ~(~4294967295u)) % 32u), ~(~_wgslsmith_div_u32(_wgslsmith_add_u32(arg_0, 1u), ~arg_0)), u_input.a);
    var_0 = vec3<u32>(47985u, abs(var_0.x), 0u);
    var var_1 = vec2<i32>(1i, -22859i);
    var_0 = vec3<u32>(firstLeadingBit(~arg_0), arg_0, ~1u);
    let var_2 = ~_wgslsmith_div_vec3_u32(firstTrailingBit(~vec3<u32>(35170u, u_input.a, arg_0)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(4199u, arg_0, 1u), ~vec3<u32>(arg_0, 1u, 45677u), _wgslsmith_div_vec3_u32(vec3<u32>(42049u, var_0.x, arg_0), vec3<u32>(var_0.x, 50092u, arg_0)))) >> (vec3<u32>(4294967295u, var_0.x, _wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(var_0.x, arg_0, var_0.x)), select(reverseBits(vec3<u32>(0u, arg_0, 1u)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 4294967295u, var_0.x), vec3<u32>(var_0.x, u_input.a, arg_0)), arg_0 > arg_0))) % vec3<u32>(32u));
    return ~(-1i | _wgslsmith_clamp_i32(var_1.x & (i32(-1i) * -2147483647i), ~(~var_1.x), countOneBits(_wgslsmith_mod_i32(1i, var_1.x))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<f32>) -> Struct_2 {
    var var_0 = (~(~u_input.a ^ ~u_input.a) >> (u_input.a % 32u)) >> (0u % 32u);
    var_0 = 43835u | u_input.a;
    var var_1 = ~vec4<i32>(func_3(1u, arg_1.x), -84181i, -(~_wgslsmith_sub_i32(601i, 63555i)), countOneBits(~firstTrailingBit(0i)));
    var var_2 = Struct_1(abs(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(106421u, 1u, u_input.a), vec3<u32>(4294967295u, 21688u, 19725u)), vec3<u32>(26613u, u_input.a, u_input.a) | vec3<u32>(u_input.a, u_input.a, u_input.a)), ~firstLeadingBit(vec3<u32>(4057u, u_input.a, u_input.a)))), var_1.wy);
    let var_3 = var_1.yzx;
    return Struct_2(~(~max(vec4<u32>(var_2.a, 22846u, 25830u, var_2.a), vec4<u32>(1u, 4294967295u, u_input.a, 0u)) << (~(~vec4<u32>(var_2.a, 19337u, u_input.a, var_2.a)) % vec4<u32>(32u))), 31264u, arg_1.x, Struct_1(70107u, max(-var_1.yy, abs(reverseBits(vec2<i32>(0i, var_3.x))))));
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = func_2(!select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(false, false)), vec2<bool>(true, true), true), _wgslsmith_f_op_vec4_f32(-arg_0));
    let var_1 = func_2(vec2<bool>(true, true), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_0, arg_0) - _wgslsmith_f_op_vec4_f32(arg_0 - arg_0)), vec4<f32>(arg_0.x, var_0.c, _wgslsmith_div_f32(-887f, 1000f), 937f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), var_0.c, -1000f, _wgslsmith_div_f32(-443f, _wgslsmith_f_op_f32(arg_0.x + arg_0.x)))));
    var var_2 = func_2(select(select(vec2<bool>(var_1.c >= -435f, true), vec2<bool>(true, true), ~var_1.d.a > firstTrailingBit(0u)), vec2<bool>(true, true), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-356f, 1028f, -1276f, arg_0.x)), true))));
    var_2 = func_2(vec2<bool>(!(var_2.c == var_1.c) && true, false), arg_0);
    return Struct_1(~_wgslsmith_mod_u32(~_wgslsmith_mult_u32(0u, var_2.d.a), max(26878u, 0u)), var_0.d.b << (~(firstTrailingBit(vec2<u32>(11844u, 33292u)) >> (select(var_2.a.xx, vec2<u32>(4294967295u, var_1.d.a), vec2<bool>(true, false)) % vec2<u32>(32u))) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(-(i32(-1i) * -25761i), -(~abs(max(18921i, 36374i))));
    var var_1 = Struct_1(u_input.a, vec2<i32>(~(i32(-1i) * -1i), 0i));
    var var_2 = var_1.b;
    var_2 = var_1.b;
    let var_3 = func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-164f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(364f * -296f))), _wgslsmith_f_op_f32(-295f - _wgslsmith_f_op_f32(f32(-1f) * -684f)), -885f)));
    var_1 = Struct_1(~abs(reverseBits(var_3.a)) | 1u, _wgslsmith_mod_vec2_i32(select(var_3.b, var_3.b, true), vec2<i32>(var_3.b.x, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_2.x, var_3.b.x, var_2.x), vec4<i32>(-2147483647i, var_2.x, -28580i, 0i)), 19641i))));
    let var_4 = _wgslsmith_f_op_f32(ceil(-235f)) < _wgslsmith_f_op_f32(step(430f, 1144f));
    let var_5 = _wgslsmith_mult_vec3_i32(~vec3<i32>(_wgslsmith_mod_i32(2147483647i, var_2.x) & _wgslsmith_add_i32(var_2.x, var_1.b.x), -8208i, _wgslsmith_add_i32(36281i, var_2.x)), min(select(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_3.b.x, var_0.x), vec3<i32>(-24012i, -49912i, 43489i)), var_0.x | var_3.b.x, 0i), select(-vec3<i32>(-48164i, 10983i, 0i), vec3<i32>(var_1.b.x, -1i, var_2.x), all(vec3<bool>(var_4, var_4, true))), vec3<bool>(false, true, var_4)), -reverseBits(vec3<i32>(-2147483647i, var_0.x, var_1.b.x) | vec3<i32>(var_3.b.x, var_2.x, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1038i, 72901i, -3307i, -2147483647i), ~_wgslsmith_div_i32(~min(var_0.x, -20432i), var_2.x), _wgslsmith_sub_vec2_i32(vec2<i32>(-17412i, var_3.b.x), var_3.b), -1i);
}

