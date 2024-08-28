struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: vec2<i32>) -> i32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(137f, -1000f))), -714f)) * -298f), 277f);
    return u_input.c.x;
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = abs(select(u_input.b, u_input.c.x, u_input.b < _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.b), vec4<i32>(-2261i, u_input.c.x, u_input.a, u_input.c.x))) | -u_input.b);
    var var_1 = ~_wgslsmith_dot_vec4_u32(vec4<u32>((90834u << (1u % 32u)) >> (firstTrailingBit(0u) % 32u), 4294967295u, 1u, ~(~69187u)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, reverseBits(1u), 68629u, ~42950u), _wgslsmith_div_vec4_u32(vec4<u32>(75092u, 1u, 38516u, 40720u), max(vec4<u32>(8038u, 118334u, 4294967295u, 83331u), vec4<u32>(1u, 17711u, 1u, 1u)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(668f + 220f), _wgslsmith_div_f32(1305f, -179f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(381f - _wgslsmith_f_op_f32(f32(-1f) * -2145f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1271f, -1251f)))), _wgslsmith_f_op_f32(sign(-1731f))));
    var var_3 = _wgslsmith_f_op_vec3_f32(var_2.zzz + var_2.zxz);
    let var_4 = select(select(!arg_0.a, !arg_0.a, false), arg_0.a, false);
    return any(!vec4<bool>(true, true & var_4.x, false, true));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = Struct_1(arg_2.a);
    var var_1 = select(!(!arg_2.a), !vec3<bool>(all(vec4<bool>(arg_2.a.x, arg_2.a.x, false, var_0.a.x)), true, false), false);
    var var_2 = Struct_1(select(vec3<bool>(func_3(arg_0), true, true), vec3<bool>(var_0.a.x, var_0.a.x, true), arg_0.a));
    let var_3 = Struct_1(vec3<bool>(true, true, arg_0.a.x));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) + _wgslsmith_f_op_f32(abs(1190f)))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(609f * 1850f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1108f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(264f, 114f))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-102f, 253f, false))))), _wgslsmith_f_op_f32(f32(-1f) * -139f)), _wgslsmith_f_op_f32(f32(-1f) * -1602f));
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(_wgslsmith_mult_i32(func_1(countOneBits(vec2<i32>(u_input.b, u_input.b))), _wgslsmith_div_i32(u_input.b, 37251i)), countOneBits(u_input.c.x), 1i, ~(-abs(_wgslsmith_mod_i32(21795i, -2623i))));
    var_0 = vec4<i32>(~max(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -1i, 0i, 2147483647i), vec4<i32>(var_0.x, var_0.x, var_0.x, u_input.a)) | ~u_input.b, -1i), i32(-1i) * -2147483647i, 1i, 1i);
    global0 = false;
    let var_1 = abs(-_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(-33228i, u_input.c.x, -2093i, var_0.x), firstLeadingBit(vec4<i32>(var_0.x, var_0.x, -16258i, 31087i)), vec4<i32>(var_0.x, 41813i, u_input.c.x, u_input.b)), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-49000i, var_0.x, 2147483647i, 44283i), vec4<i32>(var_0.x, 66323i, 34365i, -41112i)), select(vec4<i32>(2147483647i, 12008i, var_0.x, var_0.x), vec4<i32>(u_input.a, 23963i, var_0.x, -35665i), false))));
    global0 = 31148i == _wgslsmith_mod_i32(func_1(max(func_2(Struct_1(vec3<bool>(false, true, false)), 14367u, Struct_1(vec3<bool>(false, true, false))), var_0.wx)), max(u_input.b, _wgslsmith_add_i32(1i, var_1.x)));
    let var_2 = max(vec2<u32>(1u, ~4294967295u), ~(~vec2<u32>(_wgslsmith_clamp_u32(4294967295u, 1u, 1518u), ~49958u)));
    global0 = true;
    var_0 = vec4<i32>(21473i, _wgslsmith_sub_i32(-(var_1.x & var_0.x) << (51183u % 32u), max(~1i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, var_1.x), var_1.yw) << (0u % 32u))), -u_input.b, var_1.x);
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(-16112i);
}

