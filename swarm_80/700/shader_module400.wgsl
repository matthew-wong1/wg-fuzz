struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: f32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(43654u, 4294967295u, 34840u, 4294967295u), vec3<u32>(79869u, 4525u, 4294967295u), vec4<i32>(14105i, -38464i, -31717i, 16630i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    global0 = Struct_1(vec4<u32>(~(~_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, global0.a.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(~1u, 0u), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 0u), select(vec2<u32>(1u, 7436u), global0.a.yz, vec2<bool>(false, true)), u_input.a)), u_input.a.x, _wgslsmith_div_u32(min(u_input.a.x, 34200u), 1u) | (global0.a.x >> (~20259u % 32u))), ~_wgslsmith_clamp_vec3_u32(global0.b, vec3<u32>(~1u, ~global0.b.x, 1u), global0.a.yxy), vec4<i32>(~(~countOneBits(1i)), _wgslsmith_add_i32(_wgslsmith_mult_i32(max(-2147483647i, 29337i), global0.c.x), global0.c.x >> (128005u % 32u)), -2147483647i, -_wgslsmith_sub_i32(-global0.c.x, -4261i)));
    let var_0 = ~35145i;
    global0 = Struct_1(reverseBits(~_wgslsmith_mult_vec4_u32(global0.a, global0.a)), vec3<u32>(_wgslsmith_dot_vec4_u32(global0.a, global0.a), 5110u, ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(32440u, 21503u, u_input.a.x), global0.a.x)), global0.c);
    var var_1 = Struct_3(select(!select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(var_0 > u_input.b, any(vec4<bool>(true, false, true, true))), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, false))), vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2837f, 265f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1800f, 1000f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), Struct_2(true));
    var var_2 = countOneBits(-global0.c);
    return ~(-global0.c.x);
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: vec3<u32>) -> vec4<i32> {
    global0 = arg_2;
    let var_0 = !(-(firstTrailingBit(23850i) ^ u_input.b) < ~(~_wgslsmith_div_i32(arg_1, 21969i)));
    var var_1 = var_0;
    global0 = arg_2;
    let var_2 = true;
    return vec4<i32>(func_3(), -arg_2.c.x, 36321i, 1i);
}

fn func_1(arg_0: Struct_4, arg_1: u32, arg_2: vec3<i32>) -> Struct_2 {
    var var_0 = false;
    var_0 = true;
    var_0 = arg_0.d.a.x;
    var var_1 = Struct_1(global0.a, global0.a.xzy, func_2(_wgslsmith_f_op_f32(f32(-1f) * -348f) >= _wgslsmith_f_op_f32(ceil(arg_0.c)), _wgslsmith_dot_vec4_i32(~global0.c | vec4<i32>(global0.c.x, global0.c.x, 16254i, -2147483647i), vec4<i32>(arg_2.x >> (4294967295u % 32u), u_input.b, _wgslsmith_sub_i32(global0.c.x, 1i), 0i)), Struct_1(_wgslsmith_clamp_vec4_u32(firstTrailingBit(global0.a), global0.a, max(vec4<u32>(arg_0.b, arg_1, 4294967295u, 0u), global0.a)), vec3<u32>(0u, _wgslsmith_mod_u32(arg_0.b, 0u), arg_0.b), -_wgslsmith_div_vec4_i32(vec4<i32>(-7302i, -35042i, global0.c.x, arg_2.x), global0.c)), firstTrailingBit(~countOneBits(vec3<u32>(3740u, u_input.a.x, 0u)))));
    var var_2 = vec2<u32>(~firstLeadingBit(select(max(78295u, arg_0.b), _wgslsmith_add_u32(global0.a.x, arg_0.b), true)), _wgslsmith_clamp_u32(0u, _wgslsmith_mult_u32(65165u, arg_1), min(4294967295u, arg_0.b ^ u_input.a.x)));
    return arg_0.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: i32) -> i32 {
    let var_0 = -_wgslsmith_div_vec3_i32(global0.c.ywx, firstTrailingBit(~_wgslsmith_sub_vec3_i32(vec3<i32>(global0.c.x, global0.c.x, 15083i), vec3<i32>(39226i, u_input.b, 28496i))));
    var var_1 = 8647u;
    var var_2 = Struct_3(!select(select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(false, arg_0.a), arg_0.a), select(select(vec2<bool>(false, arg_0.a), vec2<bool>(true, false), vec2<bool>(arg_0.a, true)), vec2<bool>(true, false), select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, arg_0.a), arg_0.a)), !vec2<bool>(false, arg_0.a)), vec2<f32>(-1370f, 1f), arg_0);
    var_2 = Struct_3(var_2.a, var_2.b, Struct_2(arg_0.a));
    var var_3 = 1i;
    return ~1i;
}

fn func_5(arg_0: i32, arg_1: vec2<bool>, arg_2: vec2<bool>) -> vec3<f32> {
    var var_0 = select(vec4<bool>(any(!vec2<bool>(arg_1.x, false)), arg_1.x, arg_1.x, global0.a.x > 58876u), vec4<bool>(any(select(select(vec4<bool>(arg_1.x, true, false, false), vec4<bool>(true, arg_1.x, true, arg_1.x), true), vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x), !vec4<bool>(arg_2.x, false, false, arg_1.x))), arg_2.x, true, arg_1.x), true);
    let var_1 = ~(firstTrailingBit(global0.b.x) & global0.b.x) | ~(global0.b.x << (83504u % 32u));
    var var_2 = min(global0.b.x, ~_wgslsmith_dot_vec2_u32(select(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 0u), u_input.a), firstLeadingBit(vec2<u32>(65932u, 1u)), !arg_1), vec2<u32>(889u, 1u)));
    var_0 = vec4<bool>(arg_2.x, arg_2.x, !all(var_0.zxy), any(!(!(!vec4<bool>(false, true, arg_1.x, true)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -536f) * _wgslsmith_f_op_f32(sign(-601f))), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(select(-524f, 1503f, false)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2285f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2497f), 396f, _wgslsmith_f_op_f32(sign(-1000f))))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(757f - 1363f), _wgslsmith_div_f32(1032f, 3166f), _wgslsmith_f_op_f32(-1167f - 338f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-483f, 491f, 206f) - vec3<f32>(-1725f, 346f, -145f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-208f, -936f, -1000f)))))))));
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.x, var_3.x, 1000f), vec3<f32>(var_3.x, var_3.x, 441f), vec3<bool>(arg_1.x, arg_1.x, false)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, -673f, -1489f) * vec3<f32>(var_3.x, 1004f, var_3.x)) * vec3<f32>(var_3.x, var_3.x, var_3.x)))), vec3<f32>(_wgslsmith_f_op_f32(583f + _wgslsmith_f_op_f32(exp2(var_3.x))), -350f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-522f - var_3.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_5(max(max(u_input.b, func_4(func_1(Struct_4(Struct_2(false), 16865u, 2037f, Struct_3(vec2<bool>(false, false), vec2<f32>(1599f, -489f), Struct_2(false))), global0.a.x, vec3<i32>(-1719i, u_input.b, u_input.b)), ~global0.a, abs(global0.c.x))), -_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 3065i), vec2<i32>(-1i, u_input.b))), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(any(vec2<bool>(false, true)), true), ~4294967295u > ~u_input.a.x), select(vec2<bool>(true, true), select(vec2<bool>(all(vec4<bool>(true, true, true, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))));
    let var_1 = global0.c;
    var var_2 = true;
    var_2 = ~(~(~_wgslsmith_mod_u32(54593u, 4322u))) < min(_wgslsmith_add_u32(34384u, ~u_input.a.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(39452u, 1u), global0.a.xz) % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, global0.b.x, global0.a.x), firstTrailingBit(vec4<u32>(global0.b.x, global0.b.x, 18951u, 1u))) << (~16506u % 32u));
    let var_3 = Struct_4(func_1(Struct_4(func_1(Struct_4(Struct_2(true), global0.a.x, var_0.x, Struct_3(vec2<bool>(true, true), vec2<f32>(var_0.x, var_0.x), Struct_2(false))), _wgslsmith_mult_u32(u_input.a.x, 81310u), -vec3<i32>(1i, var_1.x, -15392i)), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, 4294967295u, global0.b.x)), _wgslsmith_div_vec3_u32(global0.b, vec3<u32>(20921u, 31197u, u_input.a.x))), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x)), Struct_3(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, var_0.x), vec2<f32>(var_0.x, var_0.x))), Struct_2(true))), firstLeadingBit(0u), _wgslsmith_mod_vec3_i32(select(global0.c.yyz, _wgslsmith_add_vec3_i32(var_1.zwz, vec3<i32>(global0.c.x, 1i, global0.c.x)), all(vec4<bool>(false, false, false, false))), vec3<i32>(_wgslsmith_div_i32(41619i, -1i), var_1.x, -u_input.b))), global0.a.x, -1576f, Struct_3(vec2<bool>(select(select(true, true, false), false, true), all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false))), vec2<f32>(211f, var_0.x), func_1(Struct_4(func_1(Struct_4(Struct_2(false), 4294967295u, var_0.x, Struct_3(vec2<bool>(false, false), var_0.yz, Struct_2(true))), 0u, var_1.xww), ~36746u, _wgslsmith_f_op_f32(-498f * -945f), Struct_3(vec2<bool>(true, false), vec2<f32>(var_0.x, var_0.x), Struct_2(true))), 39246u, vec3<i32>(50912i, -12263i, -9550i) >> (~vec3<u32>(1u, u_input.a.x, 1u) % vec3<u32>(32u)))));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-643f, -133f, var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 735f, var_0.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_3.d.b.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.c, _wgslsmith_f_op_f32(min(var_3.c, var_0.x)), 1869f)), vec3<f32>(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(select(var_0.x, -562f, false)))), _wgslsmith_div_f32(var_3.d.b.x, var_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, var_3.d.a.x)), -654f)), max(u_input.a.x, 4294967295u) != global0.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, func_3(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_3.d.b)) * var_0.xx) - _wgslsmith_f_op_vec2_f32(exp2(var_0.xz)))));
}

