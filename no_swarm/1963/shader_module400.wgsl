struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: f32) -> i32 {
    let var_0 = 44343u;
    var var_1 = 2147483647i;
    var var_2 = ~_wgslsmith_add_u32(~1u, countOneBits(~(~var_0)));
    var_1 = i32(-1i) * -60196i;
    var_1 = abs(u_input.a);
    return ~max(u_input.a, _wgslsmith_mult_i32(-2469i, 1i));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: u32) -> i32 {
    let var_0 = 2451u;
    var var_1 = !(!(!(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false)))));
    var var_2 = Struct_1(-_wgslsmith_add_i32(u_input.a & 1i, ~u_input.a >> (arg_0.x % 32u)), -2147483647i, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, _wgslsmith_div_u32(~u_input.c.x, 1u)), ~vec2<u32>(var_0, 1u), ~countOneBits(arg_0.yy)));
    var var_3 = -2147483647i;
    let var_4 = u_input.b;
    return ~u_input.a;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<i32>) -> Struct_2 {
    var var_0 = Struct_2(arg_1, vec4<f32>(1f, 1f, 1f, 1f));
    let var_1 = Struct_2(vec4<i32>(_wgslsmith_sub_i32(-1i, func_3(u_input.c, Struct_2(vec4<i32>(-19869i, -20218i, u_input.a, var_0.a.x), var_0.b), 1u)), _wgslsmith_mod_i32(arg_1.x, 2147483647i), min(-reverseBits(1i), -u_input.a << (u_input.b % 32u)), ~1i), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(170f - var_0.b.x) + _wgslsmith_f_op_f32(trunc(var_0.b.x))) - 2504f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -921f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-164f)))), var_0.b.x));
    var_0 = Struct_2(((arg_1 & vec4<i32>(var_0.a.x, u_input.a, var_1.a.x, 2147483647i)) | ~arg_1) << (~_wgslsmith_mod_vec4_u32(abs(u_input.c), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, arg_0.x, arg_0.x, u_input.b), u_input.c)) % vec4<u32>(32u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-996f, -1055f, var_1.b.x, var_1.b.x) - vec4<f32>(var_0.b.x, var_0.b.x, var_1.b.x, 1299f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-602f, var_1.b.x, 1422f, var_1.b.x)))), vec4<f32>(_wgslsmith_f_op_f32(var_1.b.x - 356f), _wgslsmith_f_op_f32(f32(-1f) * -999f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-862f, 318f), _wgslsmith_f_op_f32(sign(-451f)))), _wgslsmith_f_op_f32(-var_1.b.x))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_1.b.x)), _wgslsmith_f_op_f32(abs(var_0.b.x)))) * -761f), _wgslsmith_f_op_f32(-var_1.b.x)) == -910f;
    let var_3 = Struct_2(countOneBits(var_0.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(-131f, 1287f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-806f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.b - vec4<f32>(var_0.b.x, var_1.b.x, 269f, 198f)) * vec4<f32>(var_1.b.x, -671f, var_0.b.x, -1216f)), vec4<f32>(_wgslsmith_f_op_f32(sign(var_1.b.x)), -1000f, 1163f, _wgslsmith_f_op_f32(max(100f, -185f))))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(vec4<i32>(firstLeadingBit(u_input.a), 68110i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(0i, -5170i), -10399i, _wgslsmith_sub_i32(u_input.a, u_input.a)), firstLeadingBit(max(-2147483647i, u_input.a))) ^ max(vec4<i32>(func_1(u_input.c, Struct_2(vec4<i32>(2147483647i, 35625i, -21418i, u_input.a), vec4<f32>(107f, 138f, -1000f, 1156f)), -2103f), u_input.a, 1i, u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 1i, 0i, u_input.a), vec4<i32>(u_input.a, u_input.a, 30461i, u_input.a)) | -vec4<i32>(u_input.a, 16315i, u_input.a, 0i)));
    let var_1 = func_2(~_wgslsmith_mult_vec2_u32(u_input.d << (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u)), ~min(u_input.d, vec2<u32>(u_input.d.x, 54714u))), _wgslsmith_clamp_vec4_i32(~vec4<i32>(var_0.x, -1i, var_0.x ^ 1i, reverseBits(var_0.x)), _wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a, -1i, 1i, var_0.x) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, u_input.a, var_0.x, var_0.x), vec4<i32>(u_input.a, 1i, -52808i, 0i)), _wgslsmith_div_vec4_i32(vec4<i32>(4055i, var_0.x, var_0.x, 3482i), var_0) >> (~u_input.c % vec4<u32>(32u))), vec4<i32>(u_input.a, _wgslsmith_sub_i32(select(1i, 2147483647i, false), var_0.x), select(var_0.x, i32(-1i) * -1i, true), u_input.a)));
    var var_2 = !select(vec3<bool>(true, true, false), vec3<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true)), u_input.a < ~var_0.x, any(vec4<bool>(true, true, false, true))), select(vec3<bool>(true, true, true), vec3<bool>(-606f == var_1.b.x, true, true), true));
    let var_3 = vec2<i32>((1i << (~4294967295u % 32u)) >> (~_wgslsmith_mod_u32(u_input.c.x, 1u) % 32u), 25710i << (u_input.b % 32u)) & vec2<i32>(~(-_wgslsmith_div_i32(var_1.a.x, -14797i)), u_input.a);
    var var_4 = firstTrailingBit(vec2<u32>(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(67214u, u_input.d.x, 73403u, 48070u), ~vec4<u32>(4294967295u, u_input.b, u_input.d.x, u_input.d.x))), 1u));
    let var_5 = Struct_1(_wgslsmith_clamp_i32(firstLeadingBit(2147483647i), 22997i, ~10083i), _wgslsmith_add_i32(-_wgslsmith_sub_i32(-var_3.x, -2147483647i), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(var_0.yxz, firstTrailingBit(vec3<i32>(var_0.x, 2147483647i, var_3.x))), var_0.x)), u_input.c.yy);
    var_4 = _wgslsmith_clamp_vec2_u32(u_input.d, vec2<u32>(countOneBits(_wgslsmith_mod_u32(var_4.x, u_input.c.x)), u_input.d.x) & ~vec2<u32>(~1u, abs(51090u)), var_5.c);
    var var_6 = select(var_2.zx, select(var_2.yx, var_2.xx, var_2.yy), true);
    let x = u_input.a;
    s_output = StorageBuffer(~0u, ~(~var_5.c.x) & select(36973u, var_5.c.x << (_wgslsmith_clamp_u32(1u, 10012u, 1u) % 32u), !(var_1.b.x != var_1.b.x)));
}

