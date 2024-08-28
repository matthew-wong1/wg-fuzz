struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> vec3<u32> {
    let var_0 = 0u;
    var var_1 = Struct_1(_wgslsmith_mod_vec3_u32(min(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0, var_0, var_0), vec3<u32>(39074u, var_0, 10884u), vec3<u32>(var_0, var_0, 4294967295u)), vec3<u32>(0u, var_0, 4294967295u) ^ vec3<u32>(var_0, var_0, var_0)), _wgslsmith_mult_vec3_u32(vec3<u32>(101959u, var_0, var_0), vec3<u32>(var_0, 31981u, 47324u))), max(min(firstTrailingBit(vec3<u32>(var_0, var_0, var_0)), countOneBits(vec3<u32>(4294967295u, 4294967295u, var_0))), vec3<u32>(~var_0, _wgslsmith_mod_u32(0u, 4294967295u), 0u << (var_0 % 32u)))));
    let var_2 = Struct_1(var_1.a);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1032f + 555f))) - _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-1351f + 154f), all(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(456f)))) - _wgslsmith_f_op_f32(f32(-1f) * -1161f))) + 1134f);
    var_3 = -596f;
    return reverseBits(vec3<u32>(firstLeadingBit(_wgslsmith_add_u32(var_2.a.x, select(var_1.a.x, 0u, true))), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, var_2.a.x, var_2.a.x, 130175u), vec4<u32>(var_1.a.x, 1u, var_2.a.x, 18077u))), var_2.a.x));
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_1(func_3(select(vec4<bool>(true, true, any(vec2<bool>(true, true)), true), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)))));
    var var_1 = 1931f;
    let var_2 = var_0.a.x;
    global0 = ~(0i & _wgslsmith_mod_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), vec3<i32>(-2147483647i, u_input.a.x, 17110i)), -2147483647i));
    let var_3 = Struct_1(reverseBits(vec3<u32>(1u, 1u, 1u) | firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.a.x, 73803u, var_0.a.x), vec3<u32>(41084u, var_0.a.x, 15570u)))));
    return !vec4<bool>(_wgslsmith_f_op_f32(abs(-184f)) == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(103f)))), false, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -291f), _wgslsmith_div_f32(-1004f, 991f), true)) == _wgslsmith_div_f32(784f, -1205f), true);
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(~4294967295u, arg_2.a.x ^ arg_2.a.x, _wgslsmith_add_u32(arg_1.x, 15324u)), ~select(vec3<u32>(arg_1.x, arg_1.x, arg_1.x), arg_2.a, false)) >> (countOneBits(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(17151u, 1u, arg_2.a.x, 23236u), vec4<u32>(arg_1.x, arg_1.x, 4294967295u, arg_1.x)), 4294967295u, _wgslsmith_mult_u32(arg_1.x, arg_2.a.x))) % vec3<u32>(32u)));
    let var_1 = !func_2();
    var var_2 = ~(~_wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(-2147483647i, 1i)) << (_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, var_0.a.x), vec2<u32>(arg_1.x, var_0.a.x)) % vec2<u32>(32u)), vec2<i32>(min(u_input.a.x, 2147483647i), -1i)));
    var var_3 = vec2<u32>(_wgslsmith_mod_u32(reverseBits(~arg_2.a.x), _wgslsmith_add_u32(20509u, _wgslsmith_clamp_u32(119933u, arg_1.x, 4294967295u))) & firstTrailingBit(~(~0u)), 1u);
    let var_4 = max(var_0.a, var_0.a);
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec4<bool>) -> bool {
    var var_0 = arg_0.a;
    var var_1 = _wgslsmith_mod_u32(~max(_wgslsmith_div_u32(var_0.x, ~1u), 23696u), ~firstTrailingBit(var_0.x << ((18690u | arg_1) % 32u)));
    var_0 = _wgslsmith_mod_vec3_u32(arg_0.a, ~vec3<u32>(1u, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(4294967295u, arg_0.a.x)), vec2<u32>(arg_1, 32280u)), ~(~14598u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-1537f + 374f), _wgslsmith_f_op_f32(-423f * -817f), _wgslsmith_f_op_f32(f32(-1f) * -703f)), vec3<f32>(1f, 1f, 1f))))));
    let var_3 = -483f;
    return arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -1i;
    var var_0 = !(true & func_4(Struct_1(vec3<u32>(1u, 0u, 28194u)), reverseBits(59284u), func_1(684f, vec3<u32>(4294967295u, 1u, 10175u), Struct_1(vec3<u32>(0u, 7794u, 1u))))) || true;
    global0 = max(6572i, _wgslsmith_mod_i32(-1i, u_input.a.x));
    global0 = _wgslsmith_sub_i32(max(20376i, max(-u_input.a.x, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-43987i, -8200i, -17092i, 27350i)), vec4<i32>(-1i, u_input.a.x, u_input.a.x, -11448i) & vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 73629i)))), 47667i);
    var_0 = !any(func_2().wzz);
    let var_1 = Struct_1(~select(vec3<u32>(~1u, reverseBits(0u), min(15569u, 12016u)), ~select(vec3<u32>(0u, 0u, 21427u), vec3<u32>(0u, 1u, 83954u), true), true));
    global0 = ~(-2147483647i | _wgslsmith_div_i32(-1i, -_wgslsmith_mod_i32(3825i, u_input.a.x)));
    var_0 = true;
    var_0 = _wgslsmith_f_op_f32(floor(1f)) == _wgslsmith_f_op_f32(767f * _wgslsmith_f_op_f32(floor(403f)));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_mult_vec2_i32(u_input.a ^ -(u_input.a << (vec2<u32>(35663u, var_1.a.x) % vec2<u32>(32u))), abs(firstLeadingBit(vec2<i32>(u_input.a.x, 3777i))) & u_input.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -618f)), -1286f)), var_1.a.x);
}

