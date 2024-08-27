struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: vec4<i32>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: vec2<i32>) -> vec4<i32> {
    var var_0 = _wgslsmith_add_i32(arg_1.x, global0.a ^ arg_2.x);
    global0 = Struct_1(24212i, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x - global0.b.x)), _wgslsmith_f_op_f32(-global0.b.x)) + vec2<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -815f)), 425f)));
    let var_1 = Struct_4(Struct_2(_wgslsmith_sub_u32(33788u, _wgslsmith_sub_u32(u_input.b.x, ~114694u)), Struct_1(~u_input.c ^ global0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.b - vec2<f32>(126f, global0.b.x)))), -18223i, Struct_1(abs(arg_1.x) & arg_2.x, vec2<f32>(_wgslsmith_f_op_f32(trunc(global0.b.x)), _wgslsmith_f_op_f32(global0.b.x * 340f)))), Struct_3(_wgslsmith_add_u32(firstTrailingBit(~1u), firstLeadingBit(4294967295u)), vec4<bool>(!(global0.b.x >= global0.b.x), any(vec2<bool>(true, true)), select(true, any(vec4<bool>(false, true, false, false)), true), false), select(firstLeadingBit(~vec4<i32>(arg_0.x, arg_1.x, -36336i, global0.a)), abs(firstLeadingBit(vec4<i32>(-2147483647i, 0i, 0i, -26202i))), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), false)), Struct_2(u_input.b.x, Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(-global0.b)), global0.a, Struct_1(-u_input.c, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.b.x, -204f))))), Struct_1(min(-5567i, -2147483647i), vec2<f32>(_wgslsmith_f_op_f32(814f + -241f), _wgslsmith_f_op_f32(trunc(global0.b.x))))));
    let var_2 = Struct_3(u_input.b.x, var_1.b.b, var_1.b.c, Struct_2(0u, var_1.b.e, _wgslsmith_clamp_i32(-8559i, _wgslsmith_sub_i32(arg_0.x, reverseBits(34051i)), 1i), var_1.b.d.b), var_1.b.e);
    var_0 = global0.a;
    return max(reverseBits(vec4<i32>(1i, -arg_2.x, firstLeadingBit(-10282i) >> ((var_2.d.a >> (12246u % 32u)) % 32u), _wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(arg_2.x, 2147483647i)))), max(abs(var_1.b.c) >> (~vec4<u32>(var_1.b.d.a, 24880u, var_2.d.a, 0u) % vec4<u32>(32u)), vec4<i32>(-1i, -5597i, select(arg_0.x, -61656i, all(var_1.b.b.xyy)), arg_0.x)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_5, arg_2: Struct_2, arg_3: Struct_3) -> i32 {
    var var_0 = arg_3.b.x;
    var_0 = true;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(step(-1109f, arg_1.a.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1310f)))))));
    var var_2 = Struct_4(arg_3.d, Struct_3(37532u >> (~arg_2.a % 32u), !arg_3.b, countOneBits(_wgslsmith_sub_vec4_i32(select(arg_3.c, vec4<i32>(1i, arg_2.b.a, 0i, arg_1.a.a), vec4<bool>(true, false, arg_3.b.x, false)), arg_3.c)), arg_2, Struct_1(arg_1.a.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-153f, -139f) + global0.b) - vec2<f32>(arg_3.e.b.x, 701f)))));
    var_0 = false;
    return _wgslsmith_clamp_i32(global0.a, max(i32(-1i) * -arg_0.x, arg_3.d.c), 0i);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-global0.b.x);
    global0 = Struct_1(i32(-1i) * -(~(~global0.a)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(arg_0.b)))))));
    let var_1 = _wgslsmith_f_op_f32(-arg_0.b.x);
    let var_2 = Struct_2(u_input.b.x, Struct_1(~(-(~(-6554i))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.b.x, var_1), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, 128f))))), func_4(u_input.d, Struct_5(Struct_1(arg_0.a, _wgslsmith_f_op_vec2_f32(arg_0.b + arg_0.b))), Struct_2(~u_input.b.x >> (~75837u % 32u), Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1, 1209f)))), -1i >> (~u_input.b.x % 32u), Struct_1(-2147483647i ^ u_input.a, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, arg_0.b.x))))), Struct_3(4294967295u, vec4<bool>(false, any(vec3<bool>(false, true, true)), any(vec3<bool>(false, true, false)), true), func_3(vec2<i32>(global0.a, u_input.c), vec2<i32>(arg_0.a, -2147483647i), u_input.d) << (u_input.b % vec4<u32>(32u)), Struct_2(~u_input.b.x, arg_0, u_input.a, Struct_1(u_input.a, vec2<f32>(2400f, -423f))), arg_0)), Struct_1(1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.b)) + global0.b)));
    let var_3 = abs(abs(abs(_wgslsmith_mult_i32(_wgslsmith_add_i32(global0.a, var_2.c), select(global0.a, u_input.c, true)))));
    return arg_0;
}

fn func_5(arg_0: Struct_5) -> Struct_1 {
    global0 = func_2(func_2(func_2(func_2(func_2(arg_0.a)))));
    global0 = func_2(func_2(arg_0.a));
    global0 = arg_0.a;
    global0 = func_2(Struct_1(1i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-207f, -317f))));
    return func_2(Struct_1(countOneBits(~u_input.a), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.x, arg_0.a.b.x) - vec2<f32>(global0.b.x, 363f)), vec2<f32>(global0.b.x, _wgslsmith_f_op_f32(abs(global0.b.x))))));
}

fn func_1(arg_0: i32) -> vec4<f32> {
    var var_0 = u_input.b.wwz;
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-169f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1808f - 628f), global0.b.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -205f)))))));
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, global0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b.x, 2321f)), _wgslsmith_f_op_f32(-global0.b.x)));
    let var_2 = Struct_4(Struct_2(1u, Struct_1(0i, vec2<f32>(var_1.x, -1000f)), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global0.a, -2147483647i) << (vec2<u32>(1u, 137543u) % vec2<u32>(32u)), u_input.d), vec2<i32>(11274i, global0.a)), func_5(Struct_5(func_2(Struct_1(-20547i, global0.b))))), Struct_3(4294967295u, vec4<bool>(any(vec3<bool>(true, false, true)), _wgslsmith_div_u32(u_input.b.x, 4294967295u) < u_input.b.x, any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true))), u_input.b.x != min(1u, 39902u)), ~(vec4<i32>(arg_0, global0.a, global0.a, u_input.a) ^ vec4<i32>(u_input.d.x, 2147483647i, global0.a, u_input.c)) & vec4<i32>(2147483647i, arg_0 & arg_0, _wgslsmith_sub_i32(-14156i, -1i), -global0.a), Struct_2(~4294967295u, Struct_1(15961i, _wgslsmith_f_op_vec2_f32(floor(global0.b))), arg_0, func_5(Struct_5(Struct_1(global0.a, vec2<f32>(var_1.x, global0.b.x))))), func_2(func_2(func_2(Struct_1(-1i, vec2<f32>(-521f, 978f)))))));
    var var_3 = 0i;
    return vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.b.e.b.x))), -1553f, -413f, 378f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(global0.a))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.b.x))), -404f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) - _wgslsmith_f_op_f32(-1000f * global0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) - 1631f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-148f * -238f), global0.b.x)));
    global0 = func_5(Struct_5(func_5(Struct_5(func_2(Struct_1(-1689i, vec2<f32>(-1849f, global0.b.x)))))));
    global0 = Struct_1(6083i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1913f, -1452f), global0.b)))) * func_5(Struct_5(func_5(Struct_5(Struct_1(global0.a, var_0.wx))))).b));
    global0 = func_2(func_5(Struct_5(Struct_1(_wgslsmith_mult_i32(1i, -1149i), _wgslsmith_f_op_vec2_f32(global0.b * var_0.wz)))));
    let var_1 = ~max(-1i, func_3(vec2<i32>(3158i, global0.a) << (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)), u_input.d, _wgslsmith_mod_vec2_i32(u_input.d, u_input.d)).x) < -18233i;
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_0.wx)));
    global0 = Struct_1(65336i, vec2<f32>(_wgslsmith_f_op_f32(sign(global0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, -381f))) - -527f)));
    global0 = func_5(Struct_5(Struct_1(_wgslsmith_add_i32(u_input.d.x, -1i) & -global0.a, var_2)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global0.b.x), global0.a, ~u_input.b.x | ~27021u, min(u_input.d, func_3(vec2<i32>(global0.a, firstTrailingBit(global0.a)), vec2<i32>(_wgslsmith_clamp_i32(u_input.c, u_input.c, u_input.a), global0.a), vec2<i32>(_wgslsmith_mult_i32(global0.a, u_input.d.x), 2772i)).wz));
}

