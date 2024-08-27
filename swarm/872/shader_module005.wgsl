struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec4<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<f32>) -> vec4<i32> {
    let var_0 = ~(~reverseBits(vec2<u32>(_wgslsmith_mod_u32(4294967295u, u_input.a.x), _wgslsmith_div_u32(0u, 79335u))));
    var var_1 = 0i;
    var var_2 = Struct_4(Struct_3(vec3<u32>(1u, ~1u, _wgslsmith_mult_u32(40712u, 1u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(456f, arg_0.x)), vec4<i32>(0i, -1i, _wgslsmith_mult_i32(-18155i, u_input.b.x), min(76547i, -2147483647i)));
    let var_3 = vec2<i32>(var_2.c.x, -1i) ^ (vec2<i32>(2147483647i, u_input.b.x) | u_input.b);
    var var_4 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-250f, 1053f) * -1000f), -1209f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.b))), arg_0.x))));
    return -(~(var_2.c | (reverseBits(var_2.c) | (var_2.c & vec4<i32>(var_3.x, 1i, 2147483647i, -2147483647i)))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(Struct_1(abs(0i), true), Struct_1(u_input.b.x, false));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1458f * _wgslsmith_div_f32(1578f, -310f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-464f, -1108f)), -519f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-234f))), _wgslsmith_f_op_f32(422f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-856f)) - _wgslsmith_f_op_f32(-1198f * -2349f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1069f, -1000f, 322f, -373f) + vec4<f32>(1000f, 856f, 424f, -1244f)))) - vec4<f32>(-1000f, _wgslsmith_f_op_f32(min(-575f, 1000f)), _wgslsmith_f_op_f32(364f * -416f), _wgslsmith_f_op_f32(f32(-1f) * -142f)))));
    var var_2 = Struct_4(Struct_3(u_input.a), -334f, func_3(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_1.x, 960f)))), _wgslsmith_f_op_f32(-var_1.x))));
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.x, var_2.b, var_0.b.b)) * _wgslsmith_f_op_f32(var_1.x * -914f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * var_2.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(432f, -1000f, var_0.a.b))), var_2.b)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_2.b, 390f, 803f), vec4<f32>(var_2.b, var_1.x, 244f, 572f), vec4<bool>(true, true, true, var_0.b.b)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-307f, 942f, var_1.x, var_2.b), vec4<f32>(var_2.b, -461f, -1000f, var_2.b), var_0.a.b))))));
    var var_3 = Struct_4(Struct_3(u_input.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(exp2(var_1.x))) - var_2.b), select(var_2.c, _wgslsmith_add_vec4_i32(reverseBits(firstLeadingBit(var_2.c)), -_wgslsmith_sub_vec4_i32(vec4<i32>(var_2.c.x, 2147483647i, var_0.a.a, var_0.b.a), vec4<i32>(var_2.c.x, var_2.c.x, 29855i, var_0.b.a))), !(!vec4<bool>(false, var_0.b.b, true, false))));
    return Struct_1(var_3.c.x, var_0.b.b != var_0.b.b);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = true;
    var var_1 = Struct_3(firstTrailingBit(select(vec3<u32>(51149u, 39480u, 0u) & _wgslsmith_add_vec3_u32(u_input.a, arg_1.a), (vec3<u32>(15660u, 0u, arg_0) << (vec3<u32>(5778u, 1u, 28628u) % vec3<u32>(32u))) << (~u_input.a % vec3<u32>(32u)), true)));
    let var_2 = Struct_1(-u_input.b.x, all(!select(!vec3<bool>(var_0, true, true), vec3<bool>(arg_3.b.b, false, var_0), vec3<bool>(arg_3.b.b, arg_3.a.b, false))));
    var_1 = Struct_3(firstTrailingBit(~u_input.a) & select(~(~u_input.a), vec3<u32>(var_1.a.x, 0u, select(u_input.a.x, 24265u, false)), vec3<bool>(arg_3.a.b, var_2.b, any(vec2<bool>(false, var_2.b)))));
    let var_3 = arg_3.b;
    return arg_3.b;
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: vec4<f32>, arg_3: Struct_4) -> Struct_4 {
    var var_0 = func_4(select(firstTrailingBit(arg_3.a.a.x), arg_3.a.a.x, u_input.a.x != 45320u), arg_3.a, ~u_input.a.x, Struct_2(func_2(), func_2()));
    var_0 = func_4(u_input.a.x, arg_3.a, select(min(firstTrailingBit(_wgslsmith_dot_vec3_u32(arg_3.a.a, arg_3.a.a)), _wgslsmith_mult_u32(1u, ~arg_3.a.a.x)), 1u, true), Struct_2(func_2(), func_2()));
    var_0 = Struct_1(-2035i, var_0.b);
    var_0 = Struct_1(18282i, true);
    var var_1 = func_4(~u_input.a.x, Struct_3(vec3<u32>(arg_3.a.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(28082u, 1u, 16163u), vec3<u32>(arg_3.a.a.x, 30089u, 1u)), 116572u)), 0u, Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(arg_3.c << (vec4<u32>(4294967295u, u_input.a.x, arg_3.a.a.x, 1u) % vec4<u32>(32u)), -vec4<i32>(arg_1.x, -63881i, 15429i, 23472i)), !all(vec4<bool>(var_0.b, arg_0, false, var_0.b))), Struct_1(arg_1.x, true)));
    return Struct_4(Struct_3(vec3<u32>(~u_input.a.x, ~75849u, ~(~26347u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(arg_3.b)))), 854f)), arg_3.c);
}

fn func_5(arg_0: bool, arg_1: Struct_4) -> u32 {
    let var_0 = Struct_2(func_2(), func_4(77274u, arg_1.a, ~28548u, Struct_2(func_2(), Struct_1(-arg_1.c.x, false))));
    var var_1 = all(vec2<bool>(true, true));
    var_1 = var_0.a.b;
    var var_2 = _wgslsmith_mod_u32(~_wgslsmith_add_u32(max(u_input.a.x, u_input.a.x), 4294967295u) << (u_input.a.x % 32u), ~6053u);
    var var_3 = var_0.a.b;
    return ~(_wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(10593u, u_input.a.x, arg_1.a.a.x), u_input.a), select(arg_1.a.a.x, 27580u, arg_0 && var_0.a.b)) >> (1u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, false, (func_5(true, func_1(false, vec4<i32>(-1i, -1i, 13938i, -2147483647i), vec4<f32>(233f, 224f, -334f, -578f), Struct_4(Struct_3(vec3<u32>(u_input.a.x, u_input.a.x, 0u)), -641f, vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)))) | ~reverseBits(54980u)) > u_input.a.x, !all(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false))));
    var var_1 = vec2<i32>(reverseBits(firstLeadingBit(10113i)), u_input.b.x);
    var_1 = _wgslsmith_clamp_vec2_i32(u_input.b, min(vec2<i32>(0i, ~var_1.x) & u_input.b, vec2<i32>(1i, i32(-1i) * -2147483647i)), vec2<i32>(~(~1i), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(abs(vec4<i32>(0i, -1i, u_input.b.x, var_1.x)), vec4<i32>(-2147483647i, 7082i, -6344i, var_1.x)), ~firstTrailingBit(vec4<i32>(1i, -10378i, 19586i, var_1.x)))));
    var_1 = u_input.b;
    let var_2 = Struct_5(Struct_2(func_2(), Struct_1(-(var_1.x & u_input.b.x), all(!var_0.wxw))), 4294967295u);
    var_1 = u_input.b;
    var_1 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(_wgslsmith_mult_u32(var_2.b ^ ~11043u, u_input.a.x), 2896u), func_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(758f, 2468f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1253f, 138f) + vec2<f32>(151f, 274f)), vec2<f32>(1353f, 1505f), !var_0.x)))).x);
}

