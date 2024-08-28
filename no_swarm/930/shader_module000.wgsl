struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(2147483647i, 1i, 83310i, i32(-2147483648));

var<private> global1: i32;

var<private> global2: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1271f - -1718f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(172f + _wgslsmith_f_op_f32(-global2.a.x))), global2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.x * _wgslsmith_f_op_f32(global2.b + -1321f)) * _wgslsmith_f_op_f32(-global2.b))), !global2.c);
    var var_1 = global0.zzy;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(294f * var_0.a.x)) + var_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-154f + var_0.b)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.b, 2179f)) - global2.b))) * -652f);
    global0 = vec4<i32>(global0.x, -55944i, -56450i, u_input.b.x);
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-165f + var_0.b))) - _wgslsmith_f_op_f32(select(var_2, _wgslsmith_f_op_f32(ceil(144f)), global2.b >= -792f))))));
    return (arg_0.b >> (9772u % 32u)) | _wgslsmith_clamp_u32(27894u, max(arg_0.b << (arg_0.b % 32u), ~arg_0.b) | 1u, firstTrailingBit(arg_0.b));
}

fn func_2(arg_0: f32) -> i32 {
    global1 = ~(u_input.b.x << (~_wgslsmith_add_u32(func_3(Struct_2(global0.ywx, 1u)), 4294967295u) % 32u));
    return -_wgslsmith_mult_i32(~(i32(-1i) * -21563i), u_input.b.x);
}

fn func_1(arg_0: vec2<bool>) -> vec3<f32> {
    global0 = vec4<i32>(~(-reverseBits(u_input.a.x)), func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global2.b)), _wgslsmith_f_op_f32(round(global2.b)))), -_wgslsmith_mult_i32(1i, _wgslsmith_sub_i32(u_input.a.x, -12705i)), -1i) ^ vec4<i32>(global0.x, -20306i, -global0.x, global0.x);
    var var_0 = Struct_1(global2.a, global2.b, !(any(vec3<bool>(true, arg_0.x, arg_0.x)) && (all(vec4<bool>(false, true, global2.c, true)) != arg_0.x)));
    var var_1 = Struct_2(~(u_input.b.xxw & max(_wgslsmith_sub_vec3_i32(u_input.a, vec3<i32>(-50776i, -1i, global0.x)), u_input.a)), 33u);
    var var_2 = !(!select(!vec3<bool>(false, var_0.c, true), !select(vec3<bool>(false, false, false), vec3<bool>(arg_0.x, global2.c, true), vec3<bool>(false, false, var_0.c)), vec3<bool>(all(arg_0), true, global2.c)));
    let var_3 = var_1.b;
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(global2.b, global2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + var_0.b))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_0.a, vec3<f32>(global2.a.x, var_0.b, var_0.b))), vec3<f32>(global2.a.x, 753f, global2.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.a + var_0.a)), all(select(var_2.yx, arg_0, arg_0))))), vec3<f32>(_wgslsmith_f_op_f32(min(var_0.b, _wgslsmith_f_op_f32(sign(global2.a.x)))), _wgslsmith_f_op_f32(-var_0.b), -747f)));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_2 {
    global1 = 0i;
    var var_0 = true;
    var var_1 = -vec4<i32>(-_wgslsmith_mult_i32(~arg_2.x, 2147483647i), _wgslsmith_sub_i32(19842i >> (0u % 32u), 18740i) ^ _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a.x, -21112i, arg_2.x)), global0.yxy), -arg_2.x, -15636i);
    global1 = ~_wgslsmith_sub_i32(countOneBits(global0.x) & firstTrailingBit(global0.x | -1i), -(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_1.x), vec2<i32>(var_1.x, var_1.x)) << (~0u % 32u)));
    var var_2 = arg_0 <= arg_1.b;
    return Struct_2(select(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x, global0.x, 0i), vec3<i32>(15877i, 1i, var_1.x)), global0.yxy ^ vec3<i32>(2147483647i, -2006i, global0.x)) << (vec3<u32>(_wgslsmith_mult_u32(29284u, 19874u), _wgslsmith_clamp_u32(1u, 0u, 12469u), ~3422u) % vec3<u32>(32u)), global0.zyz, all(vec3<bool>(true, true, global2.c))), 4868u);
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(126f * global2.b)))), 144f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -697f) * _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(select(-738f, -1000f, global2.c))))), any(vec4<bool>(!global2.c, !(!global2.c), !select(true, global2.c, false), select(global2.c && false, true, global2.c))));
    let var_1 = _wgslsmith_dot_vec2_u32(~(~vec2<u32>(_wgslsmith_add_u32(arg_0.b, arg_0.b), ~47166u)), select(countOneBits(_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, arg_0.b), ~vec2<u32>(arg_0.b, arg_0.b))), ~vec2<u32>(4294967295u, _wgslsmith_mod_u32(arg_0.b, 31935u)), false));
    return func_4(global2.b, Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(358f, var_0.a.x, global2.a.x) + global2.a) - _wgslsmith_f_op_vec3_f32(func_1(vec2<bool>(true, var_0.c)))), vec3<f32>(_wgslsmith_f_op_f32(select(global2.a.x, var_0.a.x, false)), _wgslsmith_f_op_f32(global2.b + -1927f), global2.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -225f), false)), -281f), global2.c), global0.zw);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_mod_i32(firstTrailingBit(2147483647i), -1i);
    var var_0 = func_5(func_4(-1108f, Struct_1(_wgslsmith_f_op_vec3_f32(global2.a + _wgslsmith_f_op_vec3_f32(func_1(vec2<bool>(true, false)))), _wgslsmith_f_op_f32(global2.b + _wgslsmith_f_op_vec3_f32(func_1(vec2<bool>(global2.c, false))).x), true), abs(vec2<i32>(u_input.c, -1i))));
    global1 = -22018i;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-372f, 1676f, -1129f, global2.b) - vec4<f32>(1000f, global2.b, global2.a.x, global2.b)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.a.x, global2.a.x, global2.a.x, 813f), vec4<f32>(-346f, global2.b, -827f, 1027f)))))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-1476f - 1000f), -725f, global2.b, _wgslsmith_f_op_f32(ceil(1005f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b, global2.b, -1052f, -1151f) - vec4<f32>(1087f, global2.b, 1421f, -614f)), true))));
    global2 = Struct_1(var_1.xxw, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-414f)) * -616f), !(_wgslsmith_f_op_f32(-global2.b) == _wgslsmith_f_op_f32(f32(-1f) * -717f)) && true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(min(var_0.b, ~var_0.b), ~1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_1, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.a.x, 2018f, var_1.x, global2.b)))))));
}

