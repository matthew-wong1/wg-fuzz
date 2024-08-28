struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-691f, global0.d.a.x, _wgslsmith_f_op_f32(f32(-1f) * -289f)) - vec3<f32>(_wgslsmith_div_f32(-1718f, global0.d.a.x), global0.d.a.x, _wgslsmith_f_op_f32(-global0.d.a.x)))));
    let var_1 = global0.d.b;
    global0 = Struct_3(!all(!vec2<bool>(arg_0, true)), 1u >= abs(~_wgslsmith_clamp_u32(4294967295u, 0u, 28790u)), -(global0.c ^ var_1.a.x), global0.d);
    let var_2 = vec2<bool>(7225u == _wgslsmith_div_u32(_wgslsmith_div_u32(countOneBits(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(44843u, 60632u, 1u, 8516u), vec4<u32>(1u, 17836u, 1u, 23954u))), 60047u), true);
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1812f)))) - var_0.x)), global0.d.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-338f)))), -1535f)));
    return select(var_2, var_2, !any(select(var_2, select(var_2, vec2<bool>(true, arg_0), false), var_2)));
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_4(!all(select(vec2<bool>(false, false), select(vec2<bool>(global0.d.c, global0.a), vec2<bool>(true, true), true), vec2<bool>(true, global0.d.c))));
    var var_1 = true;
    global0 = Struct_3(global0.d.c, all(select(!func_3(true), vec2<bool>(-2147483647i == u_input.a.x, global0.d.c), vec2<bool>(var_0.a, any(vec4<bool>(true, global0.a, false, var_0.a))))), -_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.a.x, ~u_input.a.x), global0.c ^ _wgslsmith_sub_i32(global0.d.b.a.x, -19269i)), Struct_2(vec2<f32>(-176f, _wgslsmith_f_op_f32(-global0.d.a.x)), global0.d.e, false, var_0.a, Struct_1(select(vec3<i32>(2147483647i, u_input.a.x, 2147483647i), countOneBits(vec3<i32>(10702i, u_input.a.x, u_input.a.x)), true))));
    global0 = Struct_3(false, false, 1i, global0.d);
    var_1 = global0.a;
    return Struct_4(true);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: i32) -> i32 {
    global0 = Struct_3(true, arg_1.a, _wgslsmith_sub_i32(max(reverseBits(_wgslsmith_sub_i32(u_input.a.x, -2147483647i)), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(global0.d.b.a, vec3<i32>(u_input.a.x, 14919i, 1i)), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_2, 9216i, u_input.a.x), global0.d.e.a))), ~(-2147483647i)), Struct_2(global0.d.a, global0.d.b, global0.b, global0.a, global0.d.b));
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(477f, 559f, _wgslsmith_f_op_f32(f32(-1f) * -2181f), _wgslsmith_f_op_f32(global0.d.a.x * global0.d.a.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-876f, global0.d.a.x, 1350f, global0.d.a.x)), vec4<f32>(global0.d.a.x, global0.d.a.x, global0.d.a.x, -1822f)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.a.x, 216f, 436f, global0.d.a.x)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.d.a.x - global0.d.a.x), _wgslsmith_f_op_f32(763f + -223f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1706f - global0.d.a.x), _wgslsmith_f_op_f32(select(global0.d.a.x, -583f, arg_0.a)))), 374f, global0.d.a.x)));
    var var_1 = vec4<u32>(1u, 1u, 1u, 1u);
    var var_2 = vec3<f32>(global0.d.a.x, _wgslsmith_f_op_f32(ceil(162f)), 856f);
    let var_3 = global0.d.b;
    return -firstLeadingBit(-firstTrailingBit(0i) & -(2706i << (var_1.x % 32u)));
}

fn func_1(arg_0: u32) -> Struct_2 {
    global0 = Struct_3(false, firstTrailingBit(-u_input.a.x) == func_4(func_2(), func_2(), 2147483647i), global0.c, global0.d);
    var var_0 = select(!func_3(false), vec2<bool>(func_2().a, global0.a), select(vec2<bool>(global0.a, false), vec2<bool>(global0.d.c, true), !vec2<bool>(any(vec3<bool>(global0.a, global0.b, global0.b)), global0.d.d)));
    var var_1 = Struct_2(vec2<f32>(-883f, _wgslsmith_f_op_f32(select(-1291f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.d.a.x))), any(!vec4<bool>(var_0.x, var_0.x, false, var_0.x))))), Struct_1(-global0.d.e.a), true, false, Struct_1(u_input.a));
    var_1 = Struct_2(global0.d.a, Struct_1(-vec3<i32>(~var_1.e.a.x, global0.c, _wgslsmith_div_i32(-33506i, var_1.b.a.x))), var_1.d | all(vec3<bool>(global0.b, any(vec3<bool>(false, var_0.x, true)), 4294967295u < arg_0)), !all(vec2<bool>(true, var_0.x)), global0.d.b);
    let var_2 = ~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0, 0u), ~vec2<u32>(arg_0, arg_0)) | ~46739u);
    return global0.d;
}

fn func_5(arg_0: Struct_3) -> Struct_3 {
    let var_0 = !(!select(select(vec2<bool>(global0.a, global0.a), vec2<bool>(true, global0.b), arg_0.d.d), vec2<bool>(true, !arg_0.d.d), false));
    return Struct_3(all(!vec3<bool>(arg_0.b, 1330i <= u_input.a.x, var_0.x)), select(arg_0.a, func_3(var_0.x).x, true), 1i, arg_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(!global0.d.c);
    global0 = func_5(Struct_3(countOneBits(-u_input.a.x) != global0.c, true, _wgslsmith_mult_i32(_wgslsmith_add_i32(-u_input.a.x, 0i), global0.d.b.a.x), func_1(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 10511u, 12637u), ~vec3<u32>(25695u, 0u, 36289u)))));
    global0 = Struct_3(true && any(vec3<bool>(true, !global0.a, false)), global0.d.d, select(48345i, ~global0.c, true), global0.d);
    let var_1 = _wgslsmith_mod_i32(-11779i, 3957i);
    let var_2 = Struct_2(global0.d.a, Struct_1(_wgslsmith_mult_vec3_i32(-global0.d.b.a ^ global0.d.e.a, min(vec3<i32>(global0.d.b.a.x, global0.d.b.a.x, -15133i) >> (vec3<u32>(62415u, 3064u, 4294967295u) % vec3<u32>(32u)), select(u_input.a, vec3<i32>(-37368i, -2147483647i, global0.d.b.a.x), vec3<bool>(true, global0.b, true))))), true, false, global0.d.b);
    global0 = Struct_3(var_0.a, true, -39069i, func_5(func_5(Struct_3(all(vec2<bool>(global0.b, global0.b)), 2147483647i < u_input.a.x, 3916i, var_2))).d);
    global0 = func_5(func_5(Struct_3(var_0.a, true, func_4(func_2(), func_2(), var_2.e.a.x), var_2)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, 1u, global0.d.a.x, 75910u, ~(~vec3<u32>(1u, 1u, 1u)));
}

