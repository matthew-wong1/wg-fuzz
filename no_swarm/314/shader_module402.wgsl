struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<f32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec4<f32>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1() -> f32 {
    return 1346f;
}

fn func_3() -> vec4<i32> {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(681f, _wgslsmith_f_op_f32(func_1()), global1.x, _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(106f * 745f))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.x * global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.x, 611f, true))), _wgslsmith_f_op_f32(-global0.x), global1.x)));
    var var_0 = Struct_2(Struct_1(false, vec4<i32>(8424i, select(-11156i << (u_input.b % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(1i, -18613i)), true), ~0i, 1i), u_input.b, vec2<bool>(any(vec3<bool>(true, true, true)), false)), !vec3<bool>(all(vec4<bool>(true, true, true, true)), true, any(vec4<bool>(true, true, true, true))), firstLeadingBit(~reverseBits(-vec2<i32>(31647i, u_input.a))));
    return -vec4<i32>(firstTrailingBit(firstLeadingBit(_wgslsmith_dot_vec2_i32(var_0.a.b.zy, var_0.a.b.zy))), var_0.a.b.x, -(~abs(-1i)), -24436i);
}

fn func_2(arg_0: Struct_4) -> i32 {
    var var_0 = Struct_2(Struct_1(any(vec4<bool>(true, all(vec3<bool>(true, false, true)), all(vec4<bool>(false, true, true, false)), true)), firstTrailingBit(func_3()), arg_0.b.b.x, vec2<bool>((arg_0.a | 0i) == abs(-14282i), true)), vec3<bool>(global1.x >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(873f, global0.x)), -1000f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(global1.x)), -1354f)) < _wgslsmith_f_op_f32(floor(350f)), true), ~(-abs(~vec2<i32>(0i, -32545i))));
    var var_1 = select(!(!(!var_0.a.d)), select(select(var_0.a.d, vec2<bool>(all(vec4<bool>(false, var_0.a.a, var_0.b.x, true)), true), all(select(vec4<bool>(var_0.a.a, var_0.a.a, var_0.a.d.x, var_0.b.x), vec4<bool>(var_0.a.d.x, true, false, var_0.b.x), vec4<bool>(true, var_0.a.a, var_0.a.d.x, false)))), !var_0.a.d, select(vec2<bool>(true, var_0.a.c >= var_0.a.c), select(select(var_0.a.d, var_0.a.d, var_0.b.x), !var_0.a.d, var_0.a.d.x), !var_0.a.d.x)), var_0.b.x);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -2290f);
    let var_3 = arg_0;
    global0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1059f, global0.x, global1.x, global0.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global0.x, -558f, -577f) * vec4<f32>(global0.x, 596f, global1.x, 1471f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, -560f, global0.x), vec4<f32>(2190f, global0.x, -493f, global0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 848f, 1536f, global0.x))))), vec4<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(158f, 222f))), _wgslsmith_f_op_f32(900f + _wgslsmith_f_op_f32(f32(-1f) * -338f)), global1.x))));
    return reverseBits(var_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(max(u_input.b, ~u_input.b), _wgslsmith_div_u32(u_input.b, u_input.b) << ((23125u << (u_input.b % 32u)) % 32u), max(min(21795u, u_input.b), _wgslsmith_sub_u32(53830u, u_input.b)), u_input.b), max(abs(vec4<u32>(u_input.b, u_input.b, 72687u, u_input.b) & vec4<u32>(u_input.b, u_input.b, u_input.b, 1u)), _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b, u_input.b, 13189u, 4294967295u)), vec4<u32>(u_input.b, u_input.b, 69373u, 20526u), ~vec4<u32>(71539u, 1u, 23477u, u_input.b)))), u_input.b);
    let var_1 = ~vec2<u32>(~var_0.x, _wgslsmith_dot_vec3_u32(reverseBits(var_0), vec3<u32>(u_input.b, u_input.b, var_0.x))) | _wgslsmith_mult_vec2_u32(reverseBits(_wgslsmith_add_vec2_u32(var_0.yz, vec2<u32>(4294967295u, u_input.b))), ~vec2<u32>(~7659u, ~0u));
    var var_2 = global1.yyx;
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -562f), _wgslsmith_f_op_f32(func_1()))), global0.x, 383f, 1000f));
    var var_3 = max(vec4<i32>(u_input.a | ((u_input.a >> (var_1.x % 32u)) >> (~6072u % 32u)), _wgslsmith_sub_i32(u_input.a, func_2(Struct_4(-24997i, Struct_3(var_1.x, vec2<u32>(6627u, 52705u))))), u_input.a, max(-abs(2826i), reverseBits(~1i))), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, firstLeadingBit(2147483647i), _wgslsmith_sub_i32(-7325i, 25507i), 2839i | u_input.a), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(16244i, 1i, u_input.a, u_input.a), vec4<i32>(25531i, u_input.a, u_input.a, -2147483647i), vec4<i32>(87525i, u_input.a, 6505i, u_input.a)), vec4<i32>(u_input.a, u_input.a, -22443i, u_input.a) ^ vec4<i32>(-1519i, u_input.a, u_input.a, -7252i))), (vec4<i32>(-1i) * -vec4<i32>(33341i, 1i, 2147483647i, 1i)) >> (reverseBits(~vec4<u32>(var_1.x, 0u, 0u, var_1.x)) % vec4<u32>(32u))));
    let var_4 = ~_wgslsmith_clamp_vec3_u32(reverseBits(_wgslsmith_add_vec3_u32(var_0, vec3<u32>(var_1.x, 1284u, 19903u))), ~vec3<u32>(var_0.x, var_1.x, 0u), ~var_0 ^ vec3<u32>(15865u, 64595u, var_0.x)) >> (~(vec3<u32>(var_0.x | var_1.x, var_1.x, firstTrailingBit(var_0.x)) >> (~(~var_0) % vec3<u32>(32u))) % vec3<u32>(32u));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.x)) * var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x))), 1359f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2131f), _wgslsmith_f_op_f32(abs(global0.x)))))));
    let var_5 = _wgslsmith_sub_vec2_u32(~firstLeadingBit(var_4.xx), _wgslsmith_mult_vec2_u32(~_wgslsmith_mult_vec2_u32(var_4.yx, min(var_1, vec2<u32>(4294967295u, 4294967295u))), ~vec2<u32>(var_4.x, _wgslsmith_add_u32(var_4.x, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.ww, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(23169u, abs(0u), 4294967295u, 16589u), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, var_4.x, u_input.b, var_4.x), ~vec4<u32>(73823u, 4294967295u, 4294967295u, var_4.x))), ~(~vec4<u32>(4294967295u, 73504u, 0u, var_0.x)) ^ (vec4<u32>(u_input.b, var_4.x, 18609u, 1u) & firstLeadingBit(vec4<u32>(var_4.x, 3046u, var_4.x, 19961u)))), global1.wzw, _wgslsmith_div_f32(-244f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - 1371f) * global0.x))), ~_wgslsmith_add_vec4_u32(~(~vec4<u32>(var_5.x, 0u, 25780u, 12877u)), max(vec4<u32>(0u, 0u, u_input.b, var_5.x), vec4<u32>(0u, var_5.x, var_4.x, u_input.b))));
}

