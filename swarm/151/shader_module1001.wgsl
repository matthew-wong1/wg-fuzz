struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<f32>(-2227f, 1273f, -802f, 345f), Struct_1(233f, -1i), 1237f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: bool) -> Struct_2 {
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(659f)) - _wgslsmith_f_op_f32(f32(-1f) * -747f)), global0.c, global0.c, _wgslsmith_f_op_f32(select(-952f, _wgslsmith_f_op_f32(f32(-1f) * -227f), !arg_0))))), Struct_1(global0.c, u_input.b), global0.c);
    return Struct_2(global0.a, global0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.c)))), _wgslsmith_div_f32(global0.b.a, -144f)));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> Struct_2 {
    var var_0 = -(~_wgslsmith_sub_vec2_i32(~(~vec2<i32>(global0.b.b, -2147483647i)), _wgslsmith_mult_vec2_i32(vec2<i32>(-51685i, u_input.b), vec2<i32>(19506i, 1i))));
    var var_1 = _wgslsmith_div_vec4_u32(~abs(vec4<u32>(0u, u_input.a, 11283u, 0u)) >> (~(~(~vec4<u32>(1u, u_input.a, 43180u, 4294967295u))) % vec4<u32>(32u)), select(vec4<u32>(~50795u, u_input.a, 4605u, 4294967295u), vec4<u32>(countOneBits(26493u), u_input.a, u_input.a, ~u_input.a), vec4<bool>(false, true, true, any(vec2<bool>(false, false)))) | _wgslsmith_sub_vec4_u32(vec4<u32>(max(u_input.a, u_input.a), firstLeadingBit(u_input.a), _wgslsmith_sub_u32(56076u, 45795u), ~24535u), vec4<u32>(min(u_input.a, u_input.a), countOneBits(u_input.a), 11736u, u_input.a << (u_input.a % 32u))));
    var var_2 = countOneBits(_wgslsmith_clamp_vec4_i32(abs(firstTrailingBit(select(vec4<i32>(-1i, -62827i, u_input.b, var_0.x), vec4<i32>(arg_1, u_input.b, var_0.x, u_input.b), true))), countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(52447i, var_0.x, 0i, 10440i), vec4<i32>(arg_0.b, arg_0.b, 14039i, 1i))) & select(countOneBits(vec4<i32>(-20646i, -2147483647i, 2147483647i, u_input.b)), max(vec4<i32>(var_0.x, arg_1, arg_0.b, 0i), vec4<i32>(25299i, 0i, u_input.b, global0.b.b)), vec4<bool>(false, true, false, true)), vec4<i32>(~(i32(-1i) * -2147483647i), -870i, 27914i, _wgslsmith_div_i32(i32(-1i) * -22604i, var_0.x ^ arg_1))));
    let var_3 = func_1(true);
    var_1 = ~select(vec4<u32>(u_input.a, var_1.x, _wgslsmith_sub_u32(4294967295u, u_input.a), _wgslsmith_add_u32(0u, ~var_1.x)), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(var_1.yz, var_1.xx), _wgslsmith_div_u32(u_input.a, 1u), ~u_input.a, 89747u), _wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 0u, 5258u, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a, 1u, u_input.a), vec4<u32>(var_1.x, var_1.x, 1u, var_1.x)))), true);
    return Struct_2(_wgslsmith_f_op_vec4_f32(var_3.a + global0.a), arg_0, -1051f);
}

fn func_2() -> bool {
    let var_0 = Struct_3(false, func_3(Struct_1(global0.b.a, u_input.b), abs(global0.b.b)), firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -2018i), vec2<i32>(u_input.b, global0.b.b) | vec2<i32>(global0.b.b, 68543i))) & firstTrailingBit(~(vec2<i32>(1i, global0.b.b) & vec2<i32>(-27536i, u_input.b))));
    let var_1 = Struct_1(global0.a.x, i32(-1i) * -countOneBits(var_0.c.x));
    global0 = var_0.b;
    global0 = func_3(global0.b, _wgslsmith_mod_i32(0i, abs(global0.b.b) & -(u_input.b & u_input.b)));
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, _wgslsmith_f_op_f32(sign(var_0.b.a.x)), var_1.a, var_1.a) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1063f, -1000f, 471f, func_1(false).a.x) + global0.a)), func_1(any(!vec3<bool>(false, var_0.a, var_0.a))).b, var_1.a);
    return ~var_1.b == global0.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(true);
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(713f, -1036f, -480f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global0.a.yzz)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a.xxx + global0.a.zzz)))));
    global0 = Struct_2(vec4<f32>(-1000f, _wgslsmith_div_f32(1000f, -394f), 1835f, _wgslsmith_f_op_f32(-1f)), func_1(func_2()).b, _wgslsmith_f_op_f32(func_1(any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), false))).c + _wgslsmith_f_op_f32(-global0.b.a)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -792f)) + _wgslsmith_f_op_f32(-443f * _wgslsmith_f_op_f32(-var_0.x)))), max(global0.b.b, _wgslsmith_add_i32(_wgslsmith_add_i32(func_1(false).b.b, -1i), u_input.b)));
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_1.a, global0.a.x, 220f), global0.a, select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false)))), _wgslsmith_f_op_vec4_f32(-global0.a))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1190f), ~(~min(21372i, 1i))), var_0.x);
    var var_2 = func_1(true);
    var var_3 = var_2.b;
    var var_4 = vec3<i32>(func_3(Struct_1(var_1.a, ~var_1.b & var_3.b), (_wgslsmith_sub_i32(-2147483647i, 0i) >> (~u_input.a % 32u)) ^ ~_wgslsmith_mod_i32(-754i, u_input.b)).b.b, firstTrailingBit(-2147483647i), var_3.b);
    var var_5 = !vec3<bool>(!all(vec4<bool>(true, true, true, true)), false, !(1u < ~u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(564f);
}

