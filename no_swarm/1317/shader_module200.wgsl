struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: vec3<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_4) -> i32 {
    global0 = vec4<f32>(arg_2.b.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, global0.x, arg_0.c))))))), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x))))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))));
    var var_0 = min(abs(-vec4<i32>(-1i, u_input.a.x, 433i, arg_0.b.x << (1u % 32u))), max(~_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.b.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, arg_0.b.x, arg_0.b.x, 1i)), firstLeadingBit(vec4<i32>(u_input.a.x, arg_0.b.x, -12204i, u_input.a.x))), vec4<i32>(11170i, -2282i, _wgslsmith_add_i32(firstTrailingBit(-1521i), -1i), u_input.a.x)));
    let var_1 = select(-arg_0.b, _wgslsmith_sub_vec3_i32((firstLeadingBit(vec3<i32>(-15088i, -49679i, 1i)) & vec3<i32>(6161i, 32411i, var_0.x)) << (vec3<u32>(16464u << (1u % 32u), arg_2.d.x | arg_2.d.x, ~arg_2.d.x) % vec3<u32>(32u)), -vec3<i32>(1i, ~0i, -1i)), _wgslsmith_mult_u32(arg_2.d.x, 41081u) == (_wgslsmith_mult_u32(arg_2.d.x, ~arg_2.d.x) ^ ~arg_2.d.x));
    var_0 = ~(-_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, var_1.x, 0i), vec4<i32>(u_input.a.x, -45030i, 2535i, var_0.x) ^ vec4<i32>(arg_0.b.x, u_input.a.x, var_1.x, 1075i)) & select(reverseBits(select(vec4<i32>(arg_0.b.x, -2147483647i, var_0.x, u_input.a.x), vec4<i32>(arg_0.b.x, u_input.a.x, u_input.a.x, var_0.x), vec4<bool>(arg_2.e.a.b.x, arg_2.e.c.b.x, arg_1.x, arg_0.c))), select(firstTrailingBit(vec4<i32>(arg_0.b.x, arg_0.b.x, var_1.x, u_input.a.x)), vec4<i32>(var_1.x, 1i, -4529i, 20722i) ^ vec4<i32>(-26843i, -1i, -21266i, 19186i), true), !vec4<bool>(arg_0.c, true, false, arg_1.x)));
    var_0 = ~vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(abs(u_input.a.x), _wgslsmith_mod_i32(var_1.x, -64237i)), -1i, min(_wgslsmith_mult_i32(var_0.x, 34714i), var_0.x)), -25819i, ~var_1.x, ~(u_input.a.x >> (arg_2.a % 32u)));
    return arg_0.b.x;
}

fn func_2(arg_0: Struct_2) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-global0.wyw);
    var var_1 = 765f;
    var_1 = var_0.x;
    var_1 = _wgslsmith_f_op_f32(-var_0.x);
    var var_2 = vec4<i32>(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), -17868i, i32(-1i) * -50727i, u_input.a.x) | vec4<i32>(min(u_input.a.x, u_input.a.x), _wgslsmith_mult_i32(_wgslsmith_mod_i32(func_3(Struct_3(false, vec3<i32>(2038i, u_input.a.x, u_input.a.x), false), arg_0.a.b.xy, Struct_4(22468u, Struct_1(global0.yy, vec3<bool>(true, false, false)), -435f, vec3<u32>(0u, u_input.c, 79198u), Struct_2(Struct_1(arg_0.c.a, vec3<bool>(arg_0.a.b.x, arg_0.a.b.x, true)), global0.x, Struct_1(arg_0.c.a, vec3<bool>(false, true, false)), 1000f))), max(u_input.a.x, 25742i)), u_input.a.x), u_input.a.x, -33239i);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.zx), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.yx * global0.yw)) + global0.yz), any(select(!arg_0.a.b, vec3<bool>(false, arg_0.c.b.x, false), vec3<bool>(true, arg_0.a.b.x, true))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.a.x, -1837f)) * _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.c.a.x, 951f), var_0.zx)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_0.xx - arg_0.c.a))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_0.a.a, global0.xz, arg_0.c.b.x)))))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_4(10323u | u_input.c, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.zy, vec2<f32>(global0.x, global0.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(Struct_2(Struct_1(vec2<f32>(global0.x, -274f), vec3<bool>(false, false, true)), arg_0, Struct_1(global0.wy, vec3<bool>(true, false, true)), 575f))))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), all(vec2<bool>(false, true))), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(373f, global0.x)) + arg_0))), select(~(~vec3<u32>(u_input.c, 59691u, u_input.b)), countOneBits(vec3<u32>(~0u, u_input.c, u_input.b)), true), Struct_2(Struct_1(global0.zx, vec3<bool>(any(vec4<bool>(false, false, true, false)), any(vec3<bool>(true, true, true)), true)), arg_0, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.wy + global0.zz)), !select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false)), global0.x));
    let var_1 = _wgslsmith_clamp_u32(firstTrailingBit(var_0.a), 27199u, ~31365u >> (u_input.b % 32u));
    var var_2 = 47574u;
    var var_3 = var_0.b;
    var var_4 = 2147483647i;
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global0.x);
    global0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.a.x)), _wgslsmith_f_op_f32(abs(global0.x)), 669f, var_0.a.x), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-447f, var_0.a.x, global0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(345f * 959f)))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a.x))), global0.x, var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x)))));
    var var_1 = abs(abs(~select(vec4<i32>(u_input.a.x, u_input.a.x, -15955i, -2147483647i), vec4<i32>(-2670i, u_input.a.x, u_input.a.x, 1i), vec4<bool>(false, var_0.b.x, true, true))) ^ (_wgslsmith_div_vec4_i32(~vec4<i32>(-19251i, -1i, u_input.a.x, u_input.a.x), ~vec4<i32>(57744i, -12226i, 39694i, u_input.a.x)) ^ select(-vec4<i32>(-24898i, -2147483647i, u_input.a.x, u_input.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x)), !vec4<bool>(var_0.b.x, var_0.b.x, true, false))));
    let var_2 = Struct_4(~0u, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(floor(747f)), global0.x), select(var_0.b, !select(vec3<bool>(true, true, false), vec3<bool>(false, var_0.b.x, false), var_0.b.x), any(vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-703f, 367f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - -528f) * global0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(160f + var_0.a.x)))), ~vec3<u32>(0u, u_input.d, ~1u), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(144f, 1286f), vec2<f32>(var_0.a.x, 849f))))), !var_0.b), global0.x, func_1(_wgslsmith_f_op_f32(floor(global0.x))), -232f));
    var_1 = reverseBits(vec4<i32>(max(-u_input.a.x, var_1.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-24929i, -var_1.x, var_1.x, _wgslsmith_mod_i32(var_1.x, u_input.a.x)), vec4<i32>(_wgslsmith_add_i32(u_input.a.x, var_1.x), u_input.a.x, _wgslsmith_sub_i32(490i, 1i), _wgslsmith_clamp_i32(var_1.x, -58423i, u_input.a.x))), -24993i, ~0i));
    var_1 = vec4<i32>(_wgslsmith_sub_i32(var_1.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, var_1.x, 2147483647i), vec4<i32>(u_input.a.x, 17244i, var_1.x, u_input.a.x)), -69496i) >> (_wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, u_input.b), 1u, var_2.a | 4294967295u) % 32u)), firstLeadingBit(select(_wgslsmith_clamp_i32(firstLeadingBit(-17108i), var_1.x << (0u % 32u), min(u_input.a.x, u_input.a.x)), ~(-18393i), var_2.b.b.x)), -_wgslsmith_add_i32(~(-var_1.x), ~u_input.a.x & max(-1i, u_input.a.x)), -2147483647i);
    var var_3 = ~(~_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(91978u, 0u, u_input.c, 20492u), vec4<u32>(var_2.a, u_input.c, u_input.d, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 73472u, u_input.c)), vec4<u32>(var_2.a, var_2.d.x, 5793u, var_2.d.x) ^ vec4<u32>(var_2.d.x, var_2.a, 5635u, var_2.d.x))) >> (vec4<u32>(1u, u_input.d, 19004u, _wgslsmith_mult_u32(36385u, 0u)) % vec4<u32>(32u));
    let var_4 = !vec4<bool>(true, true, true, func_1(_wgslsmith_f_op_f32(abs(-925f))).b.x);
    var var_5 = _wgslsmith_sub_vec4_i32(~abs(~vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x)), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x << (var_2.a % 32u), -2147483647i, -20884i, 40729i), vec4<i32>(abs(var_1.x), 2147483647i, _wgslsmith_add_i32(u_input.a.x, var_1.x), u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1520f) + -153f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-441f + -454f)))), _wgslsmith_div_f32(-564f, _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -414f)), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(~select(vec4<u32>(var_2.a, 4294967295u, u_input.c, 11770u), vec4<u32>(1u, var_3.x, var_3.x, 0u), true), max(vec4<u32>(61067u, 61312u, var_2.d.x, var_3.x), select(vec4<u32>(4294967295u, u_input.b, var_2.d.x, 4294967295u), vec4<u32>(u_input.c, 46975u, var_3.x, var_3.x), vec4<bool>(var_4.x, var_4.x, var_2.e.c.b.x, var_4.x)))), select(~vec4<u32>(var_3.x, u_input.c, u_input.b, 13459u), ~(~vec4<u32>(var_2.d.x, var_2.d.x, var_2.a, u_input.c)), true)), var_2.d);
}

