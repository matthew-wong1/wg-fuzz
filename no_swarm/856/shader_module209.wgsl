struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>) -> u32 {
    global0 = ~4294967295u;
    let var_0 = Struct_1(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(~abs(vec2<i32>(1i, arg_0)), ~(~vec2<i32>(-1i, 3412i))), -(-vec2<i32>(-1i, arg_0) | _wgslsmith_add_vec2_i32(vec2<i32>(31849i, arg_0), vec2<i32>(27902i, 1i)))), ~_wgslsmith_add_vec2_u32(~(~vec2<u32>(20779u, u_input.b)), (vec2<u32>(61567u, 4294967295u) | vec2<u32>(4294967295u, u_input.b)) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(u_input.a, 62503u), vec2<u32>(u_input.a, 0u))));
    var var_1 = -_wgslsmith_div_vec3_i32(~(vec3<i32>(var_0.a.x, var_0.a.x, -1i) ^ vec3<i32>(arg_0, -1i, 27202i)) & ~vec3<i32>(var_0.a.x, var_0.a.x, arg_0), ~select(~vec3<i32>(2147483647i, var_0.a.x, arg_0), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, arg_0, -43881i), vec3<i32>(1i, 61860i, 1i)), true));
    global0 = 0u;
    var_1 = _wgslsmith_mult_vec3_i32(-min(vec3<i32>(var_0.a.x, arg_0, -2147483647i), vec3<i32>(-7970i, 1i, 1i)), vec3<i32>(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, 12603i, 8168i), vec3<i32>(-51961i, var_1.x, 1i))), i32(-1i) * -2147483647i, 1i)) >> (~vec3<u32>(~1u, abs(~var_0.b.x), _wgslsmith_clamp_u32(u_input.b, 5107u, _wgslsmith_clamp_u32(4294967295u, u_input.b, 43667u))) % vec3<u32>(32u));
    return var_0.b.x;
}

fn func_2() -> vec2<u32> {
    var var_0 = Struct_1(-(~countOneBits(firstLeadingBit(vec2<i32>(7954i, -18725i)))), vec2<u32>(72033u, 35031u));
    var var_1 = Struct_1(vec2<i32>(~var_0.a.x, _wgslsmith_add_i32(-8393i, 0i)) >> (var_0.b % vec2<u32>(32u)), ~var_0.b);
    var var_2 = vec4<u32>(func_3(var_0.a.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(140f, -400f, 662f, 1000f) * vec4<f32>(-488f, 1035f, 427f, 2832f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-283f, 354f, 428f, -450f) - vec4<f32>(1000f, 640f, 669f, 1000f)))), ~select(~4294967295u, max(var_1.b.x, abs(var_1.b.x)), true), var_0.b.x, var_1.b.x);
    let var_3 = Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(-10026i, -1i), var_0.a) >> (var_0.b % vec2<u32>(32u)), abs(var_1.b));
    global0 = _wgslsmith_dot_vec2_u32(var_1.b ^ ((var_3.b >> (vec2<u32>(4294967295u, var_0.b.x) % vec2<u32>(32u))) & vec2<u32>(3289u, var_1.b.x)), var_0.b) >> (1u % 32u);
    return vec2<u32>(_wgslsmith_div_u32(func_3(-1i, vec4<f32>(764f, -1376f, 282f, 1978f)) ^ (func_3(10712i, vec4<f32>(472f, -1000f, 482f, 557f)) & 33790u), var_0.b.x), ~(~83377u));
}

fn func_1() -> bool {
    let var_0 = Struct_1(_wgslsmith_mod_vec2_i32(reverseBits(firstLeadingBit(~vec2<i32>(-7381i, 8586i))), vec2<i32>(1i, 1i)), countOneBits(~select(func_2(), vec2<u32>(u_input.a, 0u), u_input.a <= u_input.a)));
    var var_1 = Struct_1(abs(~_wgslsmith_mult_vec2_i32(var_0.a, vec2<i32>(var_0.a.x, var_0.a.x) >> (var_0.b % vec2<u32>(32u)))), var_0.b);
    var_1 = Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.a.x, var_1.a.x), var_1.a & vec2<i32>(~var_1.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.x, -2147483647i, -3597i), vec3<i32>(var_1.a.x, var_0.a.x, 2147483647i)))), _wgslsmith_mod_vec2_u32(max(var_1.b, ~_wgslsmith_sub_vec2_u32(var_0.b, var_1.b)), vec2<u32>(min(var_0.b.x, 4294967295u), 1u)));
    global0 = var_0.b.x;
    let var_2 = var_0;
    return all(!vec4<bool>(all(vec2<bool>(true, true)), false, any(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = min(1u, u_input.b | u_input.a);
    global0 = 4294967295u ^ _wgslsmith_sub_u32(u_input.a, 4294967295u);
    global0 = u_input.b & 4294967295u;
    global0 = u_input.b;
    var var_0 = any(vec2<bool>(any(vec2<bool>(true, true)), func_1()));
    let var_1 = 1f;
    let var_2 = Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(i32(-1i) * -6686i, ~(i32(-1i) * -24070i)), -_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(1i, 43166i), vec2<i32>(6783i, 35015i)), vec2<i32>(-51015i, -1i)), vec2<i32>(select(2147483647i, -2147483647i, -1955f > var_1), abs(i32(-1i) * -18462i))), ~select(~vec2<u32>(4294967295u, 1u) | (vec2<u32>(1u, 0u) & vec2<u32>(1u, u_input.a)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.b), vec2<u32>(u_input.b, 56413u)), _wgslsmith_sub_u32(4294967295u, 51600u)), vec2<bool>(any(vec4<bool>(true, true, false, false)), -651f <= var_1)));
    var_0 = !(true || any(vec3<bool>(true, true, true)));
    let var_3 = var_2.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.b.x, u_input.a, 4294967295u, 6660u), vec4<u32>(var_2.b.x, u_input.a, 59191u, var_2.b.x), vec4<u32>(14313u, 108754u, u_input.b, 1u)))), _wgslsmith_sub_i32(~var_2.a.x, _wgslsmith_add_i32(abs(var_3), -var_2.a.x) | ((var_2.a.x >> (u_input.a % 32u)) | countOneBits(-22679i))), vec4<i32>(_wgslsmith_mult_i32(-28708i, 1i | firstLeadingBit(var_3)), -2147483647i, 12988i, -32817i), -countOneBits(-_wgslsmith_div_i32(2147483647i, 1i)));
}

