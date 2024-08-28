struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec2<i32>,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool) -> i32 {
    let var_0 = -1000f;
    var var_1 = Struct_1(min(0i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(1i, ~32043i), -1i)));
    var_1 = Struct_1(0i);
    return reverseBits(_wgslsmith_mult_i32(~(~(~35756i)), _wgslsmith_clamp_i32(-24607i, ~(-67065i), 2147483647i)));
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_1(1i);
    var_0 = Struct_1(2147483647i);
    var var_1 = ~u_input.a;
    var var_2 = Struct_1(51963i | func_3(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), arg_0 < _wgslsmith_f_op_f32(713f * arg_0)));
    var_0 = Struct_1(_wgslsmith_div_i32(var_2.a, 0i));
    return Struct_1(-var_0.a);
}

fn func_1() -> f32 {
    let var_0 = ~(-5681i);
    var var_1 = func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1494f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-424f - -1109f))))));
    var var_2 = (_wgslsmith_sub_i32(29051i, _wgslsmith_div_i32(i32(-1i) * -2147483647i, _wgslsmith_div_i32(var_0, -1i))) > (-69281i >> (abs(u_input.a << (u_input.a % 32u)) % 32u))) || all(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, false), all(vec4<bool>(false, true, false, false))), vec2<bool>(true, all(vec2<bool>(false, true)))));
    var var_3 = false;
    var var_4 = Struct_1(-var_1.a);
    return -438f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1921f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(func_1())))));
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1649f, _wgslsmith_f_op_f32(min(-546f, -469f)))), -1000f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(351f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1574f))))));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -165f) - 1f) * _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(min(523f, -891f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(695f)) * _wgslsmith_div_f32(-557f, -732f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-197f * 1000f))))));
    var var_1 = _wgslsmith_div_vec2_i32(~(~(-vec2<i32>(1i, 0i))), select(max(vec2<i32>(~(-1i), -1i), firstTrailingBit(vec2<i32>(-23248i, 29992i))), max(vec2<i32>(abs(2147483647i), -57323i), _wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(-2147483647i, 15699i)), _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(1i, 0i)))), all(vec3<bool>(true, true, true))));
    var var_2 = vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(79212u, u_input.a), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(23082u, 0u, 4814u), vec3<u32>(4294967295u, 1u, u_input.a))), _wgslsmith_sub_u32(1u, 1u)) ^ ((1u >> (u_input.a % 32u)) ^ ~42994u), 96306u, abs(countOneBits(42221u)), 1u);
    var_2 = countOneBits(vec4<u32>(~var_2.x, firstLeadingBit(_wgslsmith_mult_u32(~4294967295u, abs(u_input.a))), reverseBits(abs(_wgslsmith_mod_u32(4294967295u, 33148u))), ~var_2.x));
    var var_3 = func_2(452f);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~(~_wgslsmith_mod_u32(var_2.x, var_2.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1200f, -511f)) - -272f)))), var_3.a, ~(~(~vec2<i32>(6360i, var_3.a))));
}

