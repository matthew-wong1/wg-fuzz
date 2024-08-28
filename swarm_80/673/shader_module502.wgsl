struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<f32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5> = array<u32, 5>(0u, 0u, 0u, 21604u, 0u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<i32>) -> i32 {
    global0 = array<u32, 5>();
    global0 = array<u32, 5>();
    var var_0 = Struct_2(vec4<u32>(~global0[_wgslsmith_index_u32(~8726u, 5u)], ~27541u, reverseBits(1u), abs(~106276u << (global0[_wgslsmith_index_u32(~19110u, 5u)] % 32u))), all(select(vec4<bool>(all(vec2<bool>(true, true)), true, false, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true)), firstTrailingBit(arg_1.x) == -18796i)));
    var var_1 = (vec4<i32>(-1i) * -arg_1) ^ firstLeadingBit(~(~abs(arg_1)));
    let var_2 = abs(var_1.xwz);
    return _wgslsmith_div_i32(i32(-1i) * -arg_1.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, var_2.x, var_1.x) & arg_1.xwx, abs(vec3<i32>(reverseBits(var_1.x), arg_1.x | 26272i, ~23080i))));
}

fn func_2(arg_0: bool) -> i32 {
    global0 = array<u32, 5>();
    var var_0 = Struct_2(_wgslsmith_div_vec4_u32(~firstTrailingBit(firstLeadingBit(vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 5u)], 5u)], 4414u, 33296u))), ~(~vec4<u32>(1u, global0[_wgslsmith_index_u32(1u, 5u)], 16246u, 42648u) & vec4<u32>(u_input.b.x, global0[_wgslsmith_index_u32(1u, 5u)], 1u, 4294967295u))), -27384i != _wgslsmith_dot_vec3_i32(vec3<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -663i), vec2<i32>(58199i, 1175i)), 29660i), vec3<i32>(func_3(vec3<u32>(1u, 15326u, 24971u), vec4<i32>(2147483647i, 1i, 8272i, -4844i)), -52295i, i32(-1i) * -25653i)));
    var var_1 = Struct_1(select(vec4<i32>(reverseBits(_wgslsmith_sub_i32(-1i, 47987i)), min(-16235i >> (var_0.a.x % 32u), ~(-31102i)), reverseBits(0i), 1i), vec4<i32>(1i, ~(~1i), ~(i32(-1i) * -14663i), _wgslsmith_clamp_i32(~1i, 1i, 59454i >> (u_input.a % 32u))), arg_0), var_0.a.zww);
    let var_2 = ~(~(~(~abs(0u))));
    var_1 = Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(abs(_wgslsmith_mult_i32(var_1.a.x, var_1.a.x)), var_1.a.x, 1i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(24273u, global0[_wgslsmith_index_u32(35088u, 5u)]), var_0.a.xz) % 32u), (17492i >> (var_0.a.x % 32u)) ^ -1i), _wgslsmith_sub_vec4_i32(vec4<i32>(-var_1.a.x, ~1i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.x, 31090i, 33097i), vec3<i32>(var_1.a.x, 2147483647i, 2147483647i)), 0i), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.a.x, -13586i, 29814i, var_1.a.x), vec4<i32>(25025i, -1i, -1i, var_1.a.x)))), ~vec3<u32>(var_0.a.x, _wgslsmith_clamp_u32(var_2, 4294967295u, var_2), 38038u) | select(~_wgslsmith_add_vec3_u32(var_1.b, u_input.b), ~u_input.b, select(select(vec3<bool>(var_0.b, true, arg_0), vec3<bool>(true, var_0.b, var_0.b), var_0.b), vec3<bool>(false, var_0.b, false), !vec3<bool>(var_0.b, true, arg_0))));
    return 11418i & firstLeadingBit(var_1.a.x);
}

fn func_1(arg_0: i32, arg_1: vec4<f32>) -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_div_vec4_i32(~(~vec4<i32>(arg_0, arg_0, -19562i, arg_0)) & -_wgslsmith_add_vec4_i32(vec4<i32>(1i, 8102i, arg_0, arg_0), vec4<i32>(arg_0, arg_0, arg_0, arg_0)), vec4<i32>(countOneBits(-arg_0), _wgslsmith_dot_vec2_i32(vec2<i32>(-31912i, arg_0), countOneBits(vec2<i32>(arg_0, arg_0))), 0i, countOneBits(func_2(false)))), vec3<u32>(u_input.a, max(~4294967295u, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(~1u, 5u)], global0[_wgslsmith_index_u32(0u, 5u)])), firstTrailingBit(u_input.b.x)));
    let var_1 = Struct_1(firstTrailingBit(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 1i, -10946i, -1i), ~var_0.a), select(vec4<i32>(arg_0, 68457i, 2147483647i, var_0.a.x), vec4<i32>(var_0.a.x, 1365i, 0i, -21018i), vec4<bool>(true, true, true, true)))), u_input.b);
    let var_2 = -_wgslsmith_dot_vec3_i32(var_1.a.wyz, vec3<i32>(-var_1.a.x, var_1.a.x, i32(-1i) * -1452i));
    var_0 = var_1;
    var var_3 = vec3<bool>(all(vec2<bool>(all(vec3<bool>(false, true, false)), all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false)))), !(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(6442u, 5u)], 1u), var_1.b.yy), var_1.b.x) >= ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.x, global0[_wgslsmith_index_u32(4294967295u, 5u)], 1u, 15455u), vec4<u32>(3922u, var_1.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 5u)], var_0.b.x))), all(select(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), true)));
    return ~vec3<i32>(17079i, -(~_wgslsmith_dot_vec3_i32(var_1.a.wyz, var_1.a.zxz)), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~abs(countOneBits(abs(vec4<u32>(1u, u_input.b.x, 1u, 1u) >> (vec4<u32>(global0[_wgslsmith_index_u32(28404u, 5u)], 4294967295u, 4294967295u, 48189u) % vec4<u32>(32u)))));
    let var_1 = !(!(!vec3<bool>(all(vec4<bool>(false, true, false, true)), true, true)));
    let var_2 = _wgslsmith_mult_vec3_i32(-_wgslsmith_sub_vec3_i32(func_1(~17364i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-886f, -608f, -1596f, 404f))), vec3<i32>(-11760i, -9746i, -2052i) << (vec3<u32>(var_0.x, global0[_wgslsmith_index_u32(1u, 5u)], var_0.x) % vec3<u32>(32u))), -firstLeadingBit(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-33766i, 12696i, 0i), vec3<i32>(6876i, -1i, -3171i)), vec3<i32>(-2147483647i, 1i, -2147483647i))));
    var var_3 = ~(~var_0);
    var_3 = var_0;
    global0 = array<u32, 5>();
    var var_4 = Struct_2(vec4<u32>(abs(1u), 1u, 1u, abs(u_input.a)), var_1.x | false);
    var var_5 = !all(select(vec2<bool>(false & var_4.b, all(vec4<bool>(false, true, var_4.b, false))), var_1.xz, var_1.yy));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(282f, _wgslsmith_f_op_f32(124f * 1215f), _wgslsmith_div_f32(-195f, -1357f), -699f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1021f, 1393f, 530f, 389f))) - vec4<f32>(1f, 1f, 1f, 1f)), -(~abs(var_2.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(455f, 712f, -766f, -1666f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-227f, -635f, -1575f, 809f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1517f, 995f, 224f, -1048f)))), true))), _wgslsmith_f_op_f32(min(-1215f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1386f))))), ~var_3.yxy);
}

