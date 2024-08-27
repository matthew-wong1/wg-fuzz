struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<bool>, 1> = array<vec3<bool>, 1>(vec3<bool>(false, true, true));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec3<i32> {
    global1 = array<vec3<bool>, 1>();
    var var_0 = global0.a;
    let var_1 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 32608u), ~vec3<u32>(global0.b.x, 4294967295u, 0u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, global0.b.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, global0.b.x), vec2<u32>(66590u, u_input.a), vec2<u32>(global0.b.x, u_input.a)))), ~global0.b.x), _wgslsmith_mod_u32(42403u, ~u_input.a) << (~global0.b.x % 32u));
    global0 = arg_0;
    var var_2 = select(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), arg_0.a.x == arg_0.a.x), vec4<bool>(any(vec3<bool>(false, true, true)), true, 16497u == u_input.a, true), true), !select(vec4<bool>(all(global1[_wgslsmith_index_u32(u_input.a, 1u)]), any(vec2<bool>(false, true)), true, all(vec4<bool>(true, true, false, false))), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true)), true), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true))), !vec4<bool>(true, arg_0.a.x >= _wgslsmith_f_op_f32(421f + arg_0.a.x), var_1 > ~4294967295u, true));
    return vec3<i32>(-1947i, 1i & select(_wgslsmith_sub_i32(1614i, ~(-39988i)), _wgslsmith_add_i32(1223i, _wgslsmith_clamp_i32(39953i, -2147483647i, -45733i)), (var_0.x == -1000f) || all(vec4<bool>(var_2.x, false, false, var_2.x))), -17905i);
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: f32) -> vec3<i32> {
    global1 = array<vec3<bool>, 1>();
    let var_0 = _wgslsmith_mult_i32(8314i, -select(-abs(30181i), -firstTrailingBit(-1i), true));
    var var_1 = arg_2;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), -279f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x))))), vec2<u32>(~_wgslsmith_dot_vec4_u32(select(vec4<u32>(105051u, global0.b.x, 4294967295u, 39859u), vec4<u32>(0u, 28523u, u_input.a, 1u), arg_1), vec4<u32>(global0.b.x, 1u, global0.b.x, global0.b.x) >> (vec4<u32>(0u, global0.b.x, u_input.a, u_input.a) % vec4<u32>(32u))), u_input.a));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(974f, arg_2)) - 300f);
    return _wgslsmith_add_vec3_i32(func_3(var_2, _wgslsmith_f_op_f32(572f - _wgslsmith_f_op_f32(f32(-1f) * -2875f))) | -firstLeadingBit(abs(vec3<i32>(0i, 11136i, var_0))), func_3(Struct_1(global0.a, ~vec2<u32>(1u, u_input.a)), -953f));
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global1 = array<vec3<bool>, 1>();
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_2.a, vec3<f32>(global0.a.x, -720f, 1f)))), ~(~_wgslsmith_add_vec2_u32(~arg_2.b, select(vec2<u32>(global0.b.x, 69914u), global0.b, vec2<bool>(true, true)))));
    global0 = Struct_1(global0.a, _wgslsmith_clamp_vec2_u32(global0.b, vec2<u32>(_wgslsmith_dot_vec2_u32(~global0.b, global0.b), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2.b.x, 4294967295u, u_input.a, u_input.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.a, global0.b.x, 1u), vec4<u32>(14851u, global0.b.x, arg_2.b.x, 75365u), vec4<u32>(u_input.a, u_input.a, arg_2.b.x, u_input.a)))), ~global0.b >> (vec2<u32>(~114582u, 4294967295u) % vec2<u32>(32u))));
    global1 = array<vec3<bool>, 1>();
    return Struct_1(global0.a, _wgslsmith_div_vec2_u32(~_wgslsmith_mult_vec2_u32(global0.b, ~global0.b), vec2<u32>(_wgslsmith_sub_u32(arg_2.b.x, u_input.a << (arg_2.b.x % 32u)), arg_2.b.x | ~arg_2.b.x)));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = vec2<i32>(1i, 1i);
    var var_1 = u_input.a << ((~global0.b.x ^ ~abs(max(7779u, 30687u))) % 32u);
    let var_2 = func_4(max(var_0.x, 38597i), firstLeadingBit(func_2(-1000f, (var_0.x | 56114i) < var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) * _wgslsmith_f_op_f32(-arg_0.a.x)))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-762f * 2119f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0.a.x)), global0.a.x)), global0.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1123f - _wgslsmith_f_op_f32(f32(-1f) * -255f)))), _wgslsmith_f_op_f32(round(1118f))));
    var var_3 = var_2.b.x;
    var var_4 = vec3<u32>(select(50107u, u_input.a, any(global1[_wgslsmith_index_u32(~u_input.a, 1u)])), ~5732u, 1u);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, -276f, -1000f)), ~abs(global0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(global0.a.x)), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -1103f))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1246f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -386f) - _wgslsmith_f_op_f32(-global0.a.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.x, -2817f), global0.a.xx)) + vec2<f32>(-452f, _wgslsmith_f_op_f32(-1619f * var_0.a.x)))));
    let var_2 = func_1(var_0, 524f);
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_2.a)))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(var_0.a + _wgslsmith_f_op_vec3_f32(var_2.a - vec3<f32>(var_0.a.x, global0.a.x, var_1.x)))))), vec2<u32>(global0.b.x, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.b.x, u_input.a), var_2.b))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-329f, _wgslsmith_f_op_f32(f32(-1f) * -656f)));
    global1 = array<vec3<bool>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(var_2.b.x, 0u, global0.b.x)) ^ ~_wgslsmith_add_vec3_u32(vec3<u32>(92043u, global0.b.x, u_input.a), vec3<u32>(u_input.a, 4294967295u, u_input.a)), ~countOneBits(~vec3<u32>(u_input.a, var_3.b.x, 91342u))));
}

