struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<i32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<vec4<bool>, 7> = array<vec4<bool>, 7>(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>) -> bool {
    global1 = array<vec4<bool>, 7>();
    var var_0 = vec3<f32>(arg_1.x, -583f, _wgslsmith_f_op_f32(floor(-1736f)));
    global0 = select(!select(select(select(vec3<bool>(global0.x, arg_0, global0.x), vec3<bool>(false, true, arg_0), vec3<bool>(false, true, global0.x)), vec3<bool>(false, false, true), select(vec3<bool>(false, arg_0, false), vec3<bool>(true, arg_0, true), vec3<bool>(true, arg_0, arg_0))), select(!vec3<bool>(global0.x, global0.x, arg_0), select(vec3<bool>(arg_0, global0.x, true), vec3<bool>(global0.x, true, false), vec3<bool>(true, global0.x, arg_0)), select(vec3<bool>(arg_0, true, false), vec3<bool>(false, false, true), global0.x)), true), !(!(!(!vec3<bool>(arg_0, true, false)))), vec3<bool>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(floor(455f))) != _wgslsmith_f_op_f32(-var_0.x), all(!select(global0.xx, global0.yx, vec2<bool>(false, false))), global0.x));
    var var_1 = countOneBits((select(vec3<i32>(25743i, 2147483647i, 34547i) << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)), vec3<i32>(1i, 1i, 1i), !vec3<bool>(arg_0, global0.x, arg_0)) | vec3<i32>(min(-2147483647i, 3881i), 1i, _wgslsmith_mult_i32(-1i, 0i))) ^ _wgslsmith_mult_vec3_i32(select(~vec3<i32>(-10515i, 1i, -2881i), vec3<i32>(1i, 1i, 1i), vec3<bool>(true, true, true)), ~(vec3<i32>(-28230i, 0i, 27895i) >> (vec3<u32>(73585u, u_input.a, 56961u) % vec3<u32>(32u)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_0.xz)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(1459f)), _wgslsmith_f_op_f32(ceil(var_0.x)))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + -1879f) - _wgslsmith_f_op_f32(min(-1563f, 729f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 732f)))));
    return !arg_0;
}

fn func_2(arg_0: f32, arg_1: Struct_5) -> u32 {
    let var_0 = _wgslsmith_div_f32(arg_0, 977f);
    global1 = array<vec4<bool>, 7>();
    global0 = select(vec3<bool>(global0.x, false, select(global0.x, global0.x, var_0 < var_0) | true), vec3<bool>(u_input.a < u_input.a, true == global0.x, select(299f != _wgslsmith_f_op_f32(ceil(var_0)), func_3(!global0.x, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(568f, -202f, -1256f, arg_0)))), global0.x | (u_input.a == 4294967295u))), !any(select(select(vec3<bool>(true, global0.x, true), vec3<bool>(true, global0.x, global0.x), global0.x), select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, global0.x, true), global0.x), global0.x)));
    return 4294967295u;
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: vec2<i32>) -> f32 {
    let var_0 = vec4<u32>(_wgslsmith_sub_u32(abs(func_2(196f, Struct_5(vec4<i32>(arg_2.x, arg_1.x, -554i, -1i)))), _wgslsmith_clamp_u32(u_input.a << (arg_0 % 32u), u_input.a | 12856u, 18000u)), arg_0, 53884u, arg_0) << (vec4<u32>(u_input.a, select(_wgslsmith_clamp_u32(max(0u, u_input.a), ~arg_0, ~0u), min(_wgslsmith_div_u32(1u, u_input.a), ~u_input.a), (i32(-1i) * -3338i) < arg_2.x), _wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 2010u), vec2<u32>(arg_0, arg_0), vec2<u32>(arg_0, 1u)), vec2<u32>(abs(7210u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 29039u), vec2<u32>(arg_0, arg_0)))), arg_0) % vec4<u32>(32u));
    let var_1 = !global1[_wgslsmith_index_u32(reverseBits(~abs(~26873u)), 7u)];
    let var_2 = ~_wgslsmith_sub_vec4_u32(~_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(var_0, var_0), var_0), vec4<u32>(var_0.x, countOneBits(_wgslsmith_dot_vec2_u32(var_0.yy, var_0.zw)), reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, var_0.x, var_0.x), vec3<u32>(71249u, 19342u, u_input.a))), ~arg_0));
    global1 = array<vec4<bool>, 7>();
    global1 = array<vec4<bool>, 7>();
    return _wgslsmith_f_op_f32(step(117f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-351f, 1266f)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -668f) * _wgslsmith_f_op_f32(240f - -514f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(922f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -258f)) + _wgslsmith_f_op_f32(func_1(_wgslsmith_clamp_u32(u_input.a, 0u, u_input.a), reverseBits(vec2<i32>(-13609i, -18856i)), abs(vec2<i32>(-1i, 1i)))))));
    var var_1 = ~(~(reverseBits(_wgslsmith_mod_u32(4294967295u, u_input.a)) | u_input.a));
    var var_2 = _wgslsmith_f_op_vec2_f32(min(var_0, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.x, -1037f), _wgslsmith_f_op_f32(-var_0.x))), var_0.x), var_0)));
    let var_3 = global0.x;
    var var_4 = any(select(vec3<bool>(!global0.x, global0.x, global0.x), !(!vec3<bool>(global0.x, global0.x, true)), global0.x));
    var var_5 = global0.x;
    let var_6 = var_0.x;
    var var_7 = Struct_3(select(u_input.a, 0u, all(vec4<bool>(false, false, global0.x, false))), global0.x == true, Struct_1(var_6, !any(select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, false, global0.x), true)), vec2<i32>(firstTrailingBit(_wgslsmith_clamp_i32(57599i, -33442i, 0i)), ~1i), 1i, global0.x), 0i);
    let x = u_input.a;
    s_output = StorageBuffer(var_7.d);
}

