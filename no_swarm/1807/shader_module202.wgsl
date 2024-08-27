struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: bool,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<f32>(104f, -1115f, -904f));

var<private> global1: vec3<f32>;

var<private> global2: vec2<i32>;

var<private> global3: i32 = 6581i;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_4) -> vec3<i32> {
    let var_0 = (vec3<i32>(_wgslsmith_dot_vec3_i32(firstTrailingBit(arg_0.a), -vec3<i32>(u_input.d, arg_0.a.x, u_input.d)), -_wgslsmith_dot_vec2_i32(vec2<i32>(-3072i, 13358i), vec2<i32>(-26473i, u_input.d)), -15666i) | abs(arg_0.a)) ^ arg_0.a;
    var var_1 = arg_0;
    let var_2 = arg_0;
    var var_3 = countOneBits(_wgslsmith_mult_i32(~min(_wgslsmith_mod_i32(0i, 2147483647i), -var_1.a.x), 16829i));
    var var_4 = Struct_2(u_input.e, _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.e << (u_input.c % 32u), _wgslsmith_sub_u32(u_input.a.x, u_input.b.x), ~113404u), vec3<u32>((97u | u_input.a.x) | ~u_input.b.x, select(min(4294967295u, 81184u), abs(u_input.e), true), min(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 0u), vec2<u32>(2525u, 55066u))))), !any(vec4<bool>(true, true, true, true)) && true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.a.x, -442f, -284f, -1209f))))))));
    return var_0;
}

fn func_2() -> vec3<i32> {
    global2 = ~(((-vec2<i32>(-1i, global2.x) ^ (vec2<i32>(-58228i, global2.x) ^ vec2<i32>(2147483647i, 0i))) & vec2<i32>(_wgslsmith_add_i32(-1i, 2147483647i), -1i)) ^ vec2<i32>(i32(-1i) * -u_input.d, u_input.d));
    return max(_wgslsmith_mod_vec3_i32(abs(abs(~vec3<i32>(global2.x, u_input.d, 2147483647i))), func_3(Struct_4(reverseBits(vec3<i32>(global2.x, u_input.d, 0i))))), ~vec3<i32>(0i, u_input.d, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.d, global2.x), vec2<i32>(-1i, global2.x))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_4) -> Struct_2 {
    var var_0 = _wgslsmith_sub_vec4_i32(~(~vec4<i32>(global2.x, 0i, arg_2.a.x, global2.x)) & abs(abs(vec4<i32>(-15598i, -1i, arg_1.a.x, arg_3.a.x) ^ vec4<i32>(u_input.d, 13476i, -2147483647i, -2147483647i))), abs(-abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(-37401i, 14423i, -6503i, arg_3.a.x), vec4<i32>(arg_1.a.x, arg_3.a.x, u_input.d, arg_1.a.x), vec4<i32>(2147483647i, arg_1.a.x, -2147483647i, 2147483647i)))));
    let var_1 = 1241f;
    var var_2 = true;
    let var_3 = ~(~var_0.yy);
    var var_4 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-43751i, -2147483647i, var_3.x), vec3<i32>(0i, reverseBits(5521i), 2147483647i) & vec3<i32>(0i, var_3.x, var_3.x)), _wgslsmith_clamp_i32(min(u_input.d, ~func_3(Struct_4(arg_1.a)).x), -70355i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_3.x, u_input.d, u_input.d, global2.x), vec4<i32>(arg_3.a.x, var_0.x, -8360i, -18395i), vec4<i32>(22457i, arg_2.a.x, var_0.x, 2147483647i)), vec4<i32>(2147483647i, arg_2.a.x, -9284i, -2357i)), ~vec4<i32>(0i, 63165i, 1i, arg_1.a.x))));
    return Struct_2(38389u, u_input.a, false, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1084f, global1.x, _wgslsmith_f_op_f32(-488f * _wgslsmith_f_op_f32(var_1 + -333f)), _wgslsmith_f_op_f32(-892f * _wgslsmith_f_op_f32(round(-915f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, -953f, global0.a.x, 119f), vec4<f32>(global1.x, global1.x, -718f, var_1))))));
}

fn func_1() -> Struct_1 {
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, 1548f, 517f)))))) + vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-144f, global1.x)))), global0.a.x, global0.a.x));
    let var_0 = select(vec2<i32>(_wgslsmith_add_i32(u_input.d, abs(countOneBits(global2.x))), 16625i), vec2<i32>(-18137i, _wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, u_input.d), -vec2<i32>(37227i, u_input.d))), false);
    var var_1 = func_4(!select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), false), Struct_4(~func_2()), Struct_1(abs(-var_0)), Struct_4(firstLeadingBit(vec3<i32>(4825i, 19799i | var_0.x, -2147483647i))));
    var var_2 = func_4(select(select(!(!vec2<bool>(var_1.c, var_1.c)), vec2<bool>(true, true), vec2<bool>(var_1.d.x >= -934f, false)), vec2<bool>(!var_1.c, all(vec3<bool>(true, false, var_1.c))), !var_1.c), Struct_4(_wgslsmith_div_vec3_i32(-vec3<i32>(-2147483647i, var_0.x, -14130i), vec3<i32>(0i ^ u_input.d, ~global2.x, u_input.d))), Struct_1(var_0), Struct_4(abs(~(~vec3<i32>(global2.x, 2147483647i, global2.x)))));
    global2 = _wgslsmith_mod_vec2_i32(var_0, -max(var_0, var_0));
    return Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(firstTrailingBit(func_2().x), ~(-1i)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, var_0.x), firstLeadingBit(var_0))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4) -> Struct_3 {
    var var_0 = all(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), true)) | false;
    var var_1 = u_input.e;
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a)) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 252f, global1.x))))));
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_2.a))))));
    let var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -874f, 1043f) + vec3<f32>(-726f, 666f, global1.x))) - _wgslsmith_f_op_vec3_f32(exp2(var_2.a))));
    return var_4;
}

fn func_6(arg_0: Struct_3) -> vec3<f32> {
    let var_0 = select(vec4<bool>(arg_0.a.x != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 1000f))), true && !(global2.x != global2.x), !(!all(vec4<bool>(false, true, true, true))), !any(vec3<bool>(true, false, true))), vec4<bool>(true, select(-global2.x >= global2.x, false, false), !(all(vec2<bool>(false, false)) | any(vec4<bool>(true, false, true, false))), u_input.e <= 1u), select(vec4<bool>(-1795f < _wgslsmith_f_op_f32(floor(global0.a.x)), true, _wgslsmith_f_op_f32(1224f * global0.a.x) < _wgslsmith_f_op_f32(-arg_0.a.x), true), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)), true));
    var var_1 = select(vec3<u32>(abs(0u), u_input.b.x, _wgslsmith_add_u32(abs(33631u), ~_wgslsmith_div_u32(u_input.b.x, u_input.a.x))), select(firstTrailingBit(countOneBits(u_input.a)), ~(select(vec3<u32>(u_input.c, 30302u, u_input.c), u_input.a, true) & _wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(0u, 54032u, u_input.a.x))), false), countOneBits(_wgslsmith_mod_u32(~7900u, ~0u)) < _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.yx, ~vec2<u32>(u_input.a.x, 30292u)), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, 1u), u_input.b), firstTrailingBit(u_input.a.yy))));
    let var_2 = u_input.a >> (vec3<u32>(~func_4(vec2<bool>(true, var_0.x), Struct_4(vec3<i32>(-38884i, global2.x, u_input.d)), Struct_1(vec2<i32>(global2.x, u_input.d)), Struct_4(vec3<i32>(-1i, 1i, 0i))).b.x, ~(~(~4294967295u)), abs(~(var_1.x ^ u_input.a.x))) % vec3<u32>(32u));
    let var_3 = vec2<i32>(countOneBits(abs(~firstLeadingBit(8510i))), global2.x);
    global0 = arg_0;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.a - arg_0.a)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(234f, 1657f, arg_0.a.x) * global0.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_6(func_5(func_1(), Struct_4(vec3<i32>(24907i, 2147483647i, u_input.d))))) + global0.a)));
    global2 = -_wgslsmith_sub_vec2_i32(firstTrailingBit(~(~vec2<i32>(0i, -75854i))), vec2<i32>(countOneBits(1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-16462i, global2.x) | vec2<i32>(38047i, -28022i), select(vec2<i32>(global2.x, global2.x), vec2<i32>(-20307i, 0i), vec2<bool>(false, false)))));
    let var_0 = any(vec3<bool>(func_4(vec2<bool>(any(vec3<bool>(true, false, true)), func_4(vec2<bool>(false, true), Struct_4(vec3<i32>(global2.x, 43333i, u_input.d)), Struct_1(vec2<i32>(-4211i, 53321i)), Struct_4(vec3<i32>(1i, u_input.d, 26i))).c), Struct_4(vec3<i32>(-32809i, global2.x, global2.x) << (u_input.a % vec3<u32>(32u))), Struct_1(~vec2<i32>(52193i, -55162i)), Struct_4(-vec3<i32>(u_input.d, global2.x, global2.x))).c, true | (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 12167u), vec2<u32>(59940u, u_input.a.x)) > u_input.c), false));
    global0 = Struct_3(_wgslsmith_f_op_vec3_f32(func_6(Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -850f, global1.x))))));
    global1 = global0.a;
    global0 = Struct_3(_wgslsmith_f_op_vec3_f32(-global0.a));
    var var_1 = Struct_1(_wgslsmith_mult_vec2_i32((vec2<i32>(31025i, -22143i) | select(vec2<i32>(global2.x, u_input.d), vec2<i32>(global2.x, 21327i), var_0)) << (u_input.b % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(abs(~vec2<i32>(-2020i, global2.x)), abs(vec2<i32>(u_input.d, 9515i)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(4294967295u) >> (abs(reverseBits(~u_input.b.x)) % 32u), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.a.x, 211f)) + _wgslsmith_f_op_f32(round(global0.a.x))), _wgslsmith_f_op_f32(global0.a.x + _wgslsmith_div_f32(global0.a.x, global0.a.x))), global1.x, _wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-2274f)), global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(349f, global0.a.x) + _wgslsmith_f_op_f32(step(879f, global0.a.x))))), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, u_input.b.x, 95465u) ^ u_input.a, ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.a.x, u_input.c), ~vec3<u32>(1u, u_input.b.x, u_input.b.x))));
}

