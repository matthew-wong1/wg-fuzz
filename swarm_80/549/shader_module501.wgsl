struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<f32>(-2021f, 456f));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3) -> bool {
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, 165f))));
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1063f), _wgslsmith_f_op_f32(min(975f, global0.a.x))), vec2<f32>(_wgslsmith_f_op_f32(min(arg_0.a.x, 1471f)), _wgslsmith_f_op_f32(floor(global0.a.x))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(802f, 109f)), any(vec2<bool>(true, true)))));
    var var_0 = Struct_2(~countOneBits(~(~vec2<u32>(u_input.a, 9462u))), 39582u ^ min(_wgslsmith_div_u32(4294967295u, 35886u), u_input.a));
    var_0 = Struct_2(vec2<u32>(68838u, 10485u ^ (u_input.a ^ 1u)), 4294967295u);
    let var_1 = Struct_1(any(!vec2<bool>(true, select(false, false, false))), u_input.a);
    return var_1.a;
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_3) -> Struct_1 {
    var var_0 = Struct_1(any(vec3<bool>(true, true, true)), abs(6653u));
    var_0 = Struct_1(any(select(vec4<bool>(true, var_0.a, func_3(arg_2), !var_0.a), select(!vec4<bool>(var_0.a, false, var_0.a, false), !vec4<bool>(var_0.a, var_0.a, false, var_0.a), vec4<bool>(var_0.a, false, true, true)), !(!vec4<bool>(var_0.a, var_0.a, true, var_0.a)))), _wgslsmith_sub_u32(u_input.a, 1u));
    global0 = arg_2;
    var_0 = Struct_1(0i < (_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 0i, 156i, -7599i), vec4<i32>(0i, -44723i, -12024i, 1i)), -vec4<i32>(0i, -2147483647i, -2147483647i, 1i)) << (abs(~u_input.a) % 32u)), abs(reverseBits(var_0.b)));
    var_0 = Struct_1(true, _wgslsmith_mod_u32(u_input.a, _wgslsmith_clamp_u32(~firstLeadingBit(0u), _wgslsmith_dot_vec2_u32(max(vec2<u32>(15912u, var_0.b), vec2<u32>(u_input.a, 1991u)), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0, 4294967295u), vec2<u32>(1u, 0u))), 0u)));
    return Struct_1(!(true == all(vec2<bool>(true, true))), 1u);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<u32>) -> bool {
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(-global0.a));
    var var_0 = select(!vec3<bool>(false, true && (global0.a.x >= -548f), any(select(arg_0.yy, vec2<bool>(arg_0.x, arg_1.a), arg_1.a))), select(vec3<bool>(all(!vec2<bool>(arg_0.x, true)), true, true), vec3<bool>(_wgslsmith_f_op_f32(-global0.a.x) >= _wgslsmith_f_op_f32(-global0.a.x), func_2(arg_1.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-363f, global0.a.x)), Struct_3(global0.a)).a, true), arg_0.wxw), !select(true, true, !arg_0.x));
    var_0 = !vec3<bool>((1i >> (arg_1.b % 32u)) >= abs(21466i), !(!(56287u >= arg_1.b)), false);
    global0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-452f - -534f) + 411f), 554f));
    let var_1 = Struct_2(~arg_2.yy, 1u);
    return 200f >= _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(529f, global0.a.x, false)))));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = func_2(~u_input.a | ~u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-2227f + global0.a.x), global0.a.x) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1086f, global0.a.x), _wgslsmith_div_f32(global0.a.x, global0.a.x)) - vec2<f32>(1f, 1f))), Struct_3(_wgslsmith_f_op_vec2_f32(-global0.a)));
    let var_1 = vec3<u32>(~reverseBits(~71038u), u_input.a, 1u);
    let var_2 = reverseBits(~(~103u));
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.a * global0.a) + _wgslsmith_f_op_vec2_f32(select(global0.a, vec2<f32>(402f, 932f), var_0.a)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    var var_3 = true;
    return arg_0;
}

fn func_1() -> vec4<i32> {
    let var_0 = func_5(Struct_1(!(31327u >= u_input.a) || func_4(vec4<bool>(false, false, true, true), func_2(42888u, global0.a, Struct_3(vec2<f32>(-1456f, -503f))), abs(vec3<u32>(u_input.a, 0u, 80432u))), _wgslsmith_mult_u32(func_2(u_input.a, global0.a, Struct_3(global0.a)).b | ~1u, firstTrailingBit(1u))));
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(step(global0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-1094f, 885f), vec2<f32>(global0.a.x, -256f)), global0.a, var_0.a)) * _wgslsmith_f_op_vec2_f32(-global0.a)))));
    var var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-546f)), _wgslsmith_f_op_f32(-global0.a.x), global0.a.x, global0.a.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a.x, global0.a.x, global0.a.x, -346f), vec4<f32>(2461f, -784f, 254f, 776f), select(vec4<bool>(true, var_0.a, var_0.a, var_0.a), vec4<bool>(var_0.a, var_0.a, var_0.a, true), vec4<bool>(true, true, var_0.a, true))))), vec4<f32>(-756f, global0.a.x, _wgslsmith_f_op_f32(trunc(global0.a.x)), global0.a.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global0.a.x, -1668f, -222f) * vec4<f32>(1233f, global0.a.x, -1000f, -1419f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, -1807f, global0.a.x, global0.a.x) + vec4<f32>(global0.a.x, 651f, global0.a.x, 756f))))));
    let var_3 = var_0.a;
    return -(vec4<i32>(-6741i, (i32(-1i) * -2147483647i) & _wgslsmith_dot_vec2_i32(vec2<i32>(-37200i, -1i), vec2<i32>(1141i, 21781i)), -20065i << (0u % 32u), select(abs(16503i), 1i, var_3)) ^ _wgslsmith_div_vec4_i32(~min(vec4<i32>(-2147483647i, -49460i, -45821i, 62509i), vec4<i32>(-17999i, 1i, 0i, -12775i)), vec4<i32>(1i, 1i, 1i, 1i)));
}

fn func_6(arg_0: vec2<i32>, arg_1: vec4<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.a.x, global0.a.x), global0.a)), vec2<f32>(-411f, global0.a.x)))))));
    var var_1 = !select(vec3<bool>(true, true, true), !vec3<bool>(all(vec2<bool>(true, true)), arg_0.x < -61981i, any(vec2<bool>(true, true))), !vec3<bool>(false, true, all(vec4<bool>(false, true, false, true))));
    var_1 = select(select(vec3<bool>(var_1.x, var_1.x, func_4(select(vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, false), true), Struct_1(false, 4294967295u), vec3<u32>(106419u, 0u, 0u))), !select(!vec3<bool>(var_1.x, false, var_1.x), !vec3<bool>(var_1.x, true, false), var_1.x), var_1.x & (u_input.a > u_input.a)), select(vec3<bool>(all(!vec2<bool>(var_1.x, var_1.x)), true, all(select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(false, true, false), var_1.x))), !select(select(vec3<bool>(true, true, false), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, true)), vec3<bool>(true, true, true), false), select(select(vec3<bool>(var_1.x, var_1.x, true), !vec3<bool>(var_1.x, true, var_1.x), select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(false, false, false), true)), vec3<bool>(var_1.x, true, true), false)), !vec3<bool>(var_1.x, false, var_1.x));
    var_1 = select(vec3<bool>(!func_3(Struct_3(vec2<f32>(global0.a.x, 332f))), all(vec4<bool>(any(vec2<bool>(var_1.x, var_1.x)), true, true, var_1.x)), var_1.x), select(!vec3<bool>(false, false, var_1.x), vec3<bool>(true, !(!var_1.x), !(!var_1.x)), select(var_1.x, var_1.x, func_2(u_input.a, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.a.x, global0.a.x), var_0, vec2<bool>(var_1.x, var_1.x))), Struct_3(var_0)).a)), all(!vec3<bool>(all(var_1.xy), var_1.x, all(vec4<bool>(var_1.x, false, true, true)))));
    return Struct_3(global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(global0.a);
    global0 = func_6(-(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, -24983i), abs(vec2<i32>(-1i, -17802i))) >> (max(select(vec2<u32>(1u, 0u), vec2<u32>(u_input.a, 0u), vec2<bool>(false, true)), vec2<u32>(43903u, u_input.a)) % vec2<u32>(32u))), _wgslsmith_mult_vec4_i32(func_1(), firstLeadingBit(vec4<i32>(_wgslsmith_add_i32(0i, -52106i), _wgslsmith_add_i32(-24968i, 0i), -12990i, 5955i))));
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(314f, global0.a.x) + vec2<f32>(_wgslsmith_f_op_f32(abs(func_6(vec2<i32>(1i, -59007i), vec4<i32>(-3701i, -2147483647i, 1i, -23997i)).a.x)), 981f)));
    var var_0 = !select(vec2<bool>(!func_4(vec4<bool>(false, false, false, false), Struct_1(false, 4294967295u), vec3<u32>(39465u, u_input.a, 47951u)), !all(vec4<bool>(false, false, true, false))), !vec2<bool>(true, any(vec4<bool>(true, true, true, true))), vec2<bool>(true, any(vec4<bool>(true, true, true, true))));
    global0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(sign(-501f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(-126f - -1557f)))));
    var_0 = !select(vec2<bool>(false, true), vec2<bool>(all(vec2<bool>(true, true)), any(vec4<bool>(true, true, var_0.x, var_0.x)) && var_0.x), vec2<bool>(var_0.x, any(select(vec4<bool>(var_0.x, true, true, false), vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x)))));
    var_0 = vec2<bool>(true, any(vec3<bool>(var_0.x, var_0.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(func_6(firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(-29176i, 41315i), select(vec2<i32>(0i, 1037i), vec2<i32>(8209i, 1i), vec2<bool>(var_0.x, var_0.x)))), vec4<i32>(1i, 1i, 1i, 1i) & vec4<i32>(~2147483647i, -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 25482i, 2147483647i, 21533i), vec4<i32>(-37265i, -2147483647i, 27195i, -2147483647i)), _wgslsmith_sub_i32(-16701i, 7031i))).a, 43248i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-122f)), _wgslsmith_f_op_f32(step(-942f, global0.a.x)), var_0.x)), -769f);
}

