struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> vec4<bool> {
    var var_0 = Struct_2(false, global1.c, Struct_1(global1.c.a, 10725u, _wgslsmith_f_op_vec3_f32(-global1.c.c), -57817i, _wgslsmith_mod_i32(33032i, 1i | arg_0.e)), 10798u, arg_1);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.c.x));
    var_0 = Struct_2(true, arg_0, var_0.b, ~4294967295u, _wgslsmith_div_vec2_u32(firstTrailingBit(~_wgslsmith_mult_vec2_u32(var_0.e, vec2<u32>(31424u, global1.e.x))), ~(~(~arg_1))));
    global1 = Struct_2(true, var_0.b, Struct_1(~39280u, global0.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1117f, _wgslsmith_f_op_f32(arg_0.c.x * arg_0.c.x)) * vec3<f32>(_wgslsmith_f_op_f32(ceil(1277f)), _wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(var_0.b.c.x * -1719f))), _wgslsmith_mod_i32(global0.e, -_wgslsmith_mod_i32(global1.b.e, -1i)), -43742i), u_input.b, vec2<u32>(abs(_wgslsmith_add_u32(arg_0.b, 59070u) & ~4294967295u), ~_wgslsmith_div_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.e.x, global1.c.b, u_input.b, arg_0.b), vec4<u32>(12287u, 1u, 4294967295u, 1u)))));
    var_0 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.c.x, global1.c.c.x) * _wgslsmith_f_op_f32(507f * global1.c.c.x)), 218f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.c.x))) - -891f), Struct_1(global1.c.b, 9512u, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b.c * arg_0.c), _wgslsmith_f_op_vec3_f32(global1.c.c * var_0.b.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -412f, 677f) - vec3<f32>(305f, 1050f, 565f))))), arg_0.d, ~(-2147483647i)), global1.b, ~(~_wgslsmith_sub_u32(4882u, u_input.b) | _wgslsmith_div_u32(136148u, global0.b ^ arg_0.b)), u_input.a);
    return !vec4<bool>(all(select(select(vec2<bool>(global1.a, var_0.a), vec2<bool>(true, true), var_0.a), !vec2<bool>(var_0.a, var_0.a), vec2<bool>(false, false))), global1.a, !(!(true | global1.a)), any(vec3<bool>(global1.a, global1.a | false, any(vec4<bool>(global1.a, global1.a, var_0.a, global1.a)))));
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = select(vec4<bool>(!global1.a, all(select(func_3(Struct_1(0u, 53489u, vec3<f32>(global0.c.x, 674f, 2249f), 2147483647i, 1i), vec2<u32>(29349u, 0u)), vec4<bool>(true, global1.a, true, true), false)), !func_3(Struct_1(27881u, global1.e.x, vec3<f32>(arg_1.x, global0.c.x, global1.c.c.x), -4783i, 2147483647i), ~vec2<u32>(4294967295u, arg_0)).x, !any(func_3(Struct_1(global0.a, global0.b, global0.c, arg_2.x, -40168i), vec2<u32>(arg_0, u_input.b)))), func_3(global1.b, select(u_input.a, select(~global1.e, u_input.a, select(vec2<bool>(true, true), vec2<bool>(global1.a, false), global1.a)), !(!vec2<bool>(true, global1.a)))), true);
    var var_1 = false;
    let var_2 = global1.c;
    let var_3 = global1.c;
    global1 = Struct_2(false, global1.b, global1.b, max(firstTrailingBit(arg_0), 1u), global1.e);
    return Struct_2(var_0.x, Struct_1(firstTrailingBit(countOneBits(max(global1.b.b, var_3.b))), _wgslsmith_div_u32(_wgslsmith_div_u32(1283u, 84192u), arg_0) & 48062u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.c), _wgslsmith_f_op_vec3_f32(select(arg_1.yxy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(709f, global1.b.c.x, global0.c.x)), var_0.zyy))), min(0i, -_wgslsmith_div_i32(global1.b.e, 76872i)), _wgslsmith_mod_i32(6472i, var_3.e << (_wgslsmith_dot_vec3_u32(vec3<u32>(62191u, var_2.b, 1u), vec3<u32>(17917u, 0u, arg_0)) % 32u))), Struct_1(global0.b, ~(~var_3.b), var_3.c, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.b.e | 0i, var_2.d, arg_2.x, _wgslsmith_mult_i32(arg_2.x, -24206i)), countOneBits(vec4<i32>(global0.d, arg_2.x, 28552i, 831i) ^ arg_2)), ~_wgslsmith_div_i32(_wgslsmith_div_i32(global0.d, -1i), var_3.e)), u_input.b, firstLeadingBit(vec2<u32>(global1.d, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(61726u, u_input.b, 1u, global0.b), vec4<u32>(var_3.a, 77493u, 0u, 14584u)), ~vec4<u32>(global1.b.b, u_input.a.x, 4294967295u, 1u)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: bool) -> vec2<f32> {
    var var_0 = true;
    var var_1 = func_2(~19288u ^ ~u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(740f, -1498f, arg_1.c.x, arg_2.c.c.x))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_1.c.x, 375f, global0.c.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.c.x, global1.b.c.x, global0.c.x, global1.c.c.x)))))), vec4<i32>(countOneBits(arg_1.e), 31831i, countOneBits(~(~0i)), global1.b.d >> (~4294967295u % 32u)));
    var_1 = func_2(u_input.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(846f, -1133f, 1739f, 1000f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.c.x, var_1.b.c.x, 1120f, arg_2.b.c.x)))), arg_0);
    var var_2 = _wgslsmith_f_op_f32(-var_1.c.c.x);
    var var_3 = arg_2;
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_1.c.x * _wgslsmith_f_op_f32(max(arg_1.c.x, -1000f))), 309f) * _wgslsmith_div_vec2_f32(vec2<f32>(-1213f, _wgslsmith_div_f32(global1.b.c.x, global1.b.c.x)), arg_1.c.zz))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.c.yx;
    var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(~vec4<i32>(-1i, global0.d, -1i, 0i), Struct_1(66574u, 1u, vec3<f32>(var_0.x, -1320f, var_0.x), 2147483647i, -1i), Struct_2(false, Struct_1(67624u, 1u, vec3<f32>(173f, 997f, 1166f), global1.b.d, global1.b.e), Struct_1(u_input.a.x, u_input.b, vec3<f32>(global1.b.c.x, 887f, global0.c.x), 6093i, -2147483647i), u_input.a.x, global1.e), global1.a && false)) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global1.c.c.zy * vec2<f32>(var_0.x, global1.b.c.x))))))));
    var var_1 = -2302f;
    let var_2 = Struct_2(true, global1.b, global1.c, 0u, vec2<u32>(_wgslsmith_sub_u32(4294967295u, ~38918u), ~(~u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(global0.e, _wgslsmith_add_i32(global0.e, _wgslsmith_add_i32(global1.b.e, var_2.b.e)), global0.d));
}

