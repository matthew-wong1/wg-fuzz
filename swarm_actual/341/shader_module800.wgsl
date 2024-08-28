struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1417f;

var<private> global1: Struct_2 = Struct_2(vec3<u32>(10388u, 42404u, 10337u), 753f, Struct_1(1152i), Struct_1(36555i));

var<private> global2: i32;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: bool) -> i32 {
    let var_0 = reverseBits(_wgslsmith_clamp_vec3_u32(countOneBits(global1.a | max(global1.a, vec3<u32>(global1.a.x, global1.a.x, global1.a.x))), ~vec3<u32>(4294967295u, ~global1.a.x, ~17890u), _wgslsmith_div_vec3_u32(abs(vec3<u32>(global1.a.x, global1.a.x, 1u)), global1.a >> (vec3<u32>(global1.a.x, 28994u, 6603u) % vec3<u32>(32u))) >> (vec3<u32>(~36421u, 0u, global1.a.x) % vec3<u32>(32u))));
    let var_1 = Struct_4(-319f);
    let var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(global1.b, _wgslsmith_f_op_f32(-global1.b), any(vec3<bool>(arg_1.x, arg_2, true)))), _wgslsmith_f_op_f32(floor(869f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -694f), -1000f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(510f, _wgslsmith_f_op_f32(-1058f * _wgslsmith_f_op_f32(1414f + 1259f))) + vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -3314f))), var_1.a))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(281f + 1373f) * -549f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1471f, global1.b)))))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b * -1150f)), -873f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-869f * var_2.x), global1.b)));
    return min(u_input.b, global1.c.a);
}

fn func_2(arg_0: i32) -> bool {
    global2 = global1.d.a;
    global2 = -countOneBits(func_3(Struct_1(1i), vec4<bool>(true, false, all(vec4<bool>(false, false, false, true)), false), any(vec4<bool>(true, false, true, false))));
    var var_0 = vec2<bool>(true, false);
    var var_1 = firstTrailingBit(6533u);
    return all(select(!select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, true), vec2<bool>(false, true)), !select(!vec2<bool>(var_0.x, true), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, true)), any(vec3<bool>(var_0.x, var_0.x, false))), !select(vec2<bool>(var_0.x, var_0.x), !vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, true))));
}

fn func_1() -> Struct_4 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(694f + global1.b)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.b)))) - _wgslsmith_f_op_f32(-global1.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1262f), global1.b));
    var var_1 = Struct_1(global1.d.a);
    let var_2 = vec4<bool>(!(_wgslsmith_f_op_f32(f32(-1f) * -456f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-595f)) * _wgslsmith_f_op_f32(max(492f, var_0.x)))), !(all(vec4<bool>(false, false, true, false)) && (1i > u_input.b)), func_2(abs(-global1.d.a | (u_input.a >> (global1.a.x % 32u)))), true);
    var_1 = global1.d;
    global2 = 1i;
    return Struct_4(_wgslsmith_f_op_f32(622f * global1.b));
}

fn func_4(arg_0: Struct_4) -> i32 {
    let var_0 = u_input.b;
    global2 = 30378i;
    global0 = -123f;
    var var_1 = !(!all(vec3<bool>(true, true, true)));
    var var_2 = !(!func_2(-49006i)) || any(vec2<bool>(false, all(vec2<bool>(true, true))));
    return -global1.d.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-countOneBits(firstTrailingBit(u_input.b >> (global1.a.x % 32u))));
    let var_1 = all(!vec2<bool>(true, any(vec2<bool>(true, true)) && false));
    let var_2 = vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_div_i32(global1.c.a, 8100i), var_0.a, func_4(func_1()));
    global2 = _wgslsmith_mult_i32(max(firstTrailingBit(_wgslsmith_add_i32(25638i, countOneBits(global1.d.a))), ~2147483647i & _wgslsmith_div_i32(var_0.a, global1.d.a)), global1.c.a);
    global1 = Struct_2(select(~firstTrailingBit(select(vec3<u32>(global1.a.x, 7858u, global1.a.x), vec3<u32>(0u, 4833u, 0u), false)), global1.a, !(!(!vec3<bool>(true, false, var_1)))), -2066f, global1.d, Struct_1(-(~global1.c.a)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(1i), 1797f, vec4<i32>(0i, -u_input.a, _wgslsmith_sub_i32(var_0.a, 57277i), u_input.a) & (vec4<i32>(-1i) * -vec4<i32>(1423i, 0i, 1754i, 1i)), 0i);
}

