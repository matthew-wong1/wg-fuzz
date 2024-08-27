struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<bool>,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    global0 = _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(-u_input.b, vec4<i32>(u_input.a.x, ~1i, _wgslsmith_mod_i32(arg_0.e.x, arg_0.b.x), ~(-1i))) << (vec4<u32>(arg_0.a.x, 0u, arg_0.a.x, 1u) % vec4<u32>(32u)), -(vec4<i32>(u_input.b.x, -2147483647i, 1i, -arg_0.b.x) ^ countOneBits(u_input.b)), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.b, u_input.b), u_input.b, ~vec4<i32>(-7895i, 16638i, -8060i, arg_0.b.x)) ^ vec4<i32>(firstLeadingBit(global0.x), 2147483647i, 2147483647i >> (arg_0.a.x % 32u), select(2147483647i, global0.x, true)), vec4<i32>(u_input.a.x & ~arg_0.e.x, ~2147483647i, -21789i, 3286i)));
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -250f), _wgslsmith_f_op_f32(-618f + -920f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(898f, -1194f))) - vec2<f32>(-959f, 753f)))))));
    return -arg_0.b.x;
}

fn func_2() -> u32 {
    global0 = vec4<i32>(firstTrailingBit(~(~u_input.a.x)), -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(abs(global0.x), ~u_input.b.x, -1017i), vec3<i32>(global0.x, -_wgslsmith_add_i32(2147483647i, global0.x), max(u_input.a.x, -global0.x))), max(_wgslsmith_dot_vec3_i32(u_input.b.zyx | (vec3<i32>(global0.x, u_input.b.x, 1i) & vec3<i32>(global0.x, u_input.b.x, -2147483647i)), vec3<i32>(25018i, ~global0.x, func_3(Struct_1(vec2<u32>(60293u, 16875u), vec3<i32>(2147483647i, 1i, global0.x), vec3<bool>(true, true, true), vec4<bool>(false, true, false, false), u_input.a)))), 60924i));
    return 1u;
}

fn func_1(arg_0: f32, arg_1: vec2<u32>) -> vec4<bool> {
    let var_0 = Struct_1(arg_1, ~u_input.b.yww, !(!vec3<bool>(true, true, all(vec3<bool>(true, false, false)))), vec4<bool>(true, true, true, true), vec2<i32>(~global0.x, _wgslsmith_div_i32(2147483647i, reverseBits(-9446i))));
    let var_1 = ~_wgslsmith_sub_i32(-u_input.a.x, countOneBits(global0.x | var_0.e.x)) & firstLeadingBit(~23296i);
    var var_2 = ~(~max(~(~vec3<u32>(47415u, 4294967295u, 0u)), vec3<u32>(~0u, var_0.a.x << (84254u % 32u), 1u)));
    let var_3 = 1u;
    var var_4 = ~_wgslsmith_add_vec3_u32(~vec3<u32>(~var_0.a.x, ~var_2.x, func_2()), select(~vec3<u32>(36963u, var_0.a.x, var_0.a.x), ~vec3<u32>(arg_1.x, var_2.x, 11742u) << (vec3<u32>(37258u, 46350u, arg_1.x) % vec3<u32>(32u)), vec3<bool>(true, true, any(vec2<bool>(true, var_0.d.x)))));
    return vec4<bool>(false, true | ((-var_0.e.x <= _wgslsmith_mod_i32(var_0.b.x, global0.x)) && !any(vec3<bool>(false, var_0.d.x, false))), true, var_0.d.x);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<bool>) -> vec4<i32> {
    let var_0 = Struct_1(vec2<u32>(reverseBits(0u), func_2()), global0.wzz, vec3<bool>(true, false, arg_1.x), !(!func_1(-376f, min(vec2<u32>(1u, 1u), vec2<u32>(0u, 83337u)))), u_input.a);
    let var_1 = 1u;
    global0 = u_input.b;
    var var_2 = arg_1;
    var var_3 = Struct_2(vec2<i32>(1i, u_input.a.x), _wgslsmith_clamp_vec4_u32((vec4<u32>(1u, var_0.a.x, var_0.a.x, var_1) << (vec4<u32>(var_0.a.x, var_1, var_0.a.x, 0u) % vec4<u32>(32u))) & abs(vec4<u32>(var_0.a.x, var_1, var_0.a.x, var_1)), abs(~vec4<u32>(1u, var_0.a.x, 0u, var_1)), reverseBits(~vec4<u32>(var_0.a.x, 46939u, 1u, 4294967295u))) | firstTrailingBit(vec4<u32>(var_1, var_1, var_1 ^ var_1, _wgslsmith_clamp_u32(43705u, 2155u, 0u))));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = 41210u;
    global0 = _wgslsmith_mod_vec4_i32(abs(vec4<i32>(-global0.x ^ global0.x, u_input.a.x, ~u_input.b.x, global0.x)), func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -156f)), _wgslsmith_f_op_f32(-816f - _wgslsmith_f_op_f32(f32(-1f) * -252f)), 683f), select(select(!vec4<bool>(false, var_0, true, var_0), !vec4<bool>(var_0, var_0, true, var_0), !vec4<bool>(var_0, var_0, var_0, true)), !func_1(-525f, vec2<u32>(0u, 2271u)), select(var_0, all(vec3<bool>(false, var_0, false)), false))));
    var_1 = select(4294967295u, ~0u, (select(any(vec2<bool>(true, false)), false, any(vec2<bool>(var_0, false))) || (var_0 & true)) != true);
    global0 = ~u_input.b;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1180f, -1305f, 648f))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(-1866f, 1000f, -1373f), vec3<f32>(-996f, 164f, -912f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(919f, 1776f, 2039f))))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(590f, -1843f, -398f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 15267u, 1u), vec4<u32>(1u, 1u, 1u, 1u))) & 0u, var_2.yz);
}

