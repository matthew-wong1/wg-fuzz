struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: f32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: i32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> bool {
    var var_0 = true;
    let var_1 = Struct_1(arg_0.a, select(any(!select(vec4<bool>(true, false, false, arg_0.d), vec4<bool>(arg_0.d, true, false, true), arg_0.d)), all(!(!vec2<bool>(arg_0.d, arg_0.e))), false), -1000f, select(!arg_0.d, false, any(!(!vec4<bool>(arg_0.d, true, arg_0.d, arg_0.d)))), arg_0.e);
    let var_2 = u_input.e;
    var_0 = false;
    let var_3 = Struct_1(~var_1.a ^ vec3<u32>(var_1.a.x, ~1u & ~u_input.d, ~_wgslsmith_mod_u32(6515u, 8829u)), true, 844f, false, all(vec2<bool>(var_1.b, true)));
    return false;
}

fn func_2() -> i32 {
    var var_0 = 4686u;
    var_0 = 1u;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1154f) * _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(369f * -684f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1352f)), _wgslsmith_f_op_f32(820f + -306f)))) * -777f));
    let var_2 = 680f;
    var var_3 = Struct_3(all(!vec4<bool>(all(vec4<bool>(true, true, true, true)), func_3(Struct_1(vec3<u32>(u_input.d, 0u, u_input.b), true, -1000f, true, false), var_1), true, any(vec3<bool>(false, true, true)))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1013f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1)) + -1000f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-var_2), -926f))))), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, -27199i, u_input.e), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, -58871i, u_input.e), vec3<i32>(63083i, 2147483647i, u_input.c)), vec3<i32>(-18312i, -1i, -8270i))) >> (abs(u_input.b) % 32u), reverseBits(reverseBits(vec4<i32>(-2147483647i >> (u_input.d % 32u), u_input.a, u_input.a, min(u_input.e, 0i)))));
    return (~_wgslsmith_mult_i32(-54484i & u_input.c, max(2937i, var_3.d.x)) & 22676i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(5609i, -6222i, var_3.c, var_3.d.x), var_3.d), -var_3.d.x, min(u_input.e, -82961i)), vec3<i32>(var_3.c, -firstLeadingBit(u_input.e), 0i));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: u32) -> u32 {
    let var_0 = vec3<i32>(45970i, u_input.e, _wgslsmith_add_i32(_wgslsmith_add_i32(firstLeadingBit(u_input.e) ^ 1i, ~(-1i)), func_2()));
    var var_1 = Struct_3(((~0u <= arg_0.b.x) || !arg_1) && all(select(select(vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(false, false, arg_1, arg_1), arg_1), select(vec4<bool>(arg_1, arg_1, arg_1, true), vec4<bool>(arg_1, arg_1, true, arg_1), arg_1), vec4<bool>(arg_1, false, arg_1, arg_1))), vec2<f32>(-1000f, arg_0.a), -17015i, _wgslsmith_mult_vec4_i32(abs(_wgslsmith_div_vec4_i32(vec4<i32>(-9261i, var_0.x, u_input.c, u_input.a) >> (arg_0.b % vec4<u32>(32u)), vec4<i32>(var_0.x, -2147483647i, var_0.x, 1i) >> (arg_0.b % vec4<u32>(32u)))), vec4<i32>(-28082i, u_input.e ^ -23797i, max(u_input.e, ~0i), select(_wgslsmith_div_i32(var_0.x, var_0.x), var_0.x, arg_1))));
    let var_2 = vec2<i32>(-1i, ~(_wgslsmith_dot_vec4_i32(select(var_1.d, vec4<i32>(var_1.c, var_1.d.x, var_0.x, -14506i), vec4<bool>(false, false, true, true)), vec4<i32>(1i, 8606i, -1i, -1i)) & (~u_input.a ^ -u_input.c)));
    let var_3 = abs(vec2<u32>(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(0u, 25686u, 34947u)), vec3<u32>(select(6342u, 22258u, var_1.a), _wgslsmith_mult_u32(arg_2, 4294967295u), ~4294967295u)), 0u));
    var_1 = Struct_3(arg_1, _wgslsmith_f_op_vec2_f32(ceil(var_1.b)), 1i, abs(select(vec4<i32>(-105277i, -3890i, -1i, -28779i), -vec4<i32>(u_input.e, var_0.x, 0i, var_0.x), any(vec2<bool>(true, arg_1)))) << (~(~abs(arg_0.b)) % vec4<u32>(32u)));
    return _wgslsmith_add_u32(arg_0.b.x, max(~(~0u), 53495u)) ^ arg_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<u32>(_wgslsmith_div_u32(~abs(u_input.b), u_input.d), min(4294967295u, ~_wgslsmith_div_u32(u_input.b, u_input.b)), ~func_1(Struct_2(128f, vec4<u32>(27028u, 4294967295u, u_input.b, 4294967295u)), false, _wgslsmith_clamp_u32(1u, u_input.d, u_input.d)), 10841u);
    var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(51641u, ~(var_0.x << (u_input.d % 32u))), var_0.x, 1u, firstTrailingBit(1u | ~u_input.d)), countOneBits(vec4<u32>(1u, ~_wgslsmith_sub_u32(22277u, var_0.x), 9783u | (var_0.x | 72768u), min(1u << (u_input.d % 32u), 1u))));
    let var_1 = true;
    let var_2 = ~4294967295u;
    var_0 = vec4<u32>(_wgslsmith_add_u32(~1u, ~var_2), 7198u, 0u, 1u);
    var var_3 = Struct_3(any(!vec3<bool>(true, all(vec4<bool>(var_1, true, var_1, true)), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1214f, -1245f) * vec2<f32>(-301f, -1406f)))), -(~firstTrailingBit(-1i)), -vec4<i32>(_wgslsmith_clamp_i32(11946i, u_input.c, -56566i), _wgslsmith_clamp_i32(1i & u_input.e, -u_input.c, reverseBits(1i)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, -35548i), vec2<i32>(u_input.e, 2147483647i)), u_input.c));
    let var_4 = Struct_2(var_3.b.x, vec4<u32>(var_2, select(u_input.b, countOneBits(~27439u), -18581i > var_3.c), _wgslsmith_dot_vec4_u32(~(vec4<u32>(0u, u_input.d, 43676u, var_2) & vec4<u32>(u_input.d, 1u, u_input.b, 11640u)), ~vec4<u32>(u_input.b, 27156u, 22329u, var_2) ^ countOneBits(vec4<u32>(var_2, 0u, 1u, 104181u))), var_2));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, vec3<u32>(abs(var_2) ^ firstLeadingBit(1u), _wgslsmith_sub_u32(~abs(4294967295u), abs(~u_input.d)), var_2), ~firstLeadingBit(_wgslsmith_mult_vec3_u32(var_0.xzx, var_0.wyx) >> (_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.b), var_0.zyy) % vec3<u32>(32u))));
}

