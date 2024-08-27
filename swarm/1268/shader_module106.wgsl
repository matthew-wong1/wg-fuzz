struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32 = 1i;

var<private> global2: array<vec2<i32>, 30>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: u32, arg_3: vec4<i32>) -> i32 {
    var var_0 = Struct_1(-159f, 29532u);
    let var_1 = vec3<i32>(_wgslsmith_mod_i32(-8189i, ~_wgslsmith_sub_i32(-17582i, _wgslsmith_add_i32(arg_0, -38988i))), arg_3.x, abs(18300i));
    var var_2 = _wgslsmith_f_op_f32(abs(var_0.a));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(323f * _wgslsmith_f_op_f32(-2848f * _wgslsmith_f_op_f32(-var_0.a))), 20925u);
    var var_4 = !all(vec2<bool>(true, true));
    return _wgslsmith_div_i32(~0i, reverseBits(_wgslsmith_mod_i32(var_1.x, ~arg_3.x >> ((82299u & var_3.b) % 32u))));
}

fn func_1() -> f32 {
    let var_0 = ~_wgslsmith_dot_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.c, 2147483647i, 1i) << (vec4<u32>(global0.b, 6280u, 1u, global0.b) % vec4<u32>(32u)), -vec4<i32>(2147483647i, u_input.c, u_input.a.x, -1i)), ~vec4<i32>(_wgslsmith_add_i32(0i, u_input.c), -32843i, func_2(-2147483647i, vec3<u32>(4294967295u, 62733u, 0u), global0.b, vec4<i32>(2147483647i, u_input.a.x, u_input.b.x, 27333i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1938i, u_input.c, 51296i, 2147483647i), vec4<i32>(u_input.a.x, -21540i, 2147483647i, u_input.c))));
    global1 = u_input.b.x;
    var var_1 = -global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0.b, _wgslsmith_add_u32(~_wgslsmith_div_u32(global0.b, global0.b), 1u)), 30u)];
    global0 = Struct_1(-131f, 0u);
    global0 = Struct_1(_wgslsmith_f_op_f32(1245f * global0.a), firstTrailingBit(global0.b));
    return _wgslsmith_f_op_f32(global0.a - global0.a);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_2.a), ~arg_2.b);
    var var_1 = ~(-1i);
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1500f - 217f), _wgslsmith_f_op_f32(f32(-1f) * -445f), all(vec2<bool>(true, true))));
    global1 = -_wgslsmith_dot_vec4_i32(select(select(~vec4<i32>(u_input.a.x, -2147483647i, u_input.b.x, -2147483647i), ~vec4<i32>(u_input.a.x, -17135i, u_input.a.x, u_input.b.x), vec4<bool>(true, true, true, true)), _wgslsmith_add_vec4_i32(-vec4<i32>(-2147483647i, -2147483647i, 0i, u_input.c), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, -1i, -8720i, 33298i), vec4<i32>(u_input.a.x, 15412i, 2147483647i, u_input.c))), vec4<bool>(false, all(vec2<bool>(true, true)), true, all(vec2<bool>(true, false)))), ~(abs(vec4<i32>(-42668i, u_input.b.x, -42988i, -1i)) | vec4<i32>(u_input.c, u_input.c, u_input.c, 27982i)));
    let var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(arg_0.xx + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(arg_1.wx)))))))));
    return Struct_1(var_0.a, ~(~(~(~0u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -347f) + _wgslsmith_f_op_f32(-global0.a)), -583f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * global0.a), _wgslsmith_f_op_f32(round(global0.a)))), -683f, global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -636f) * _wgslsmith_f_op_f32(-global0.a)))), Struct_1(global0.a, 22437u));
    global1 = -(~(-u_input.a.x << (max(_wgslsmith_mod_u32(4294967295u, global0.b), 89971u) % 32u)));
    global0 = func_3(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1706f, 772f, var_0.a), vec3<f32>(1777f, var_0.a, -838f)), vec3<f32>(-144f, global0.a, -655f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, var_0.a, 506f) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.a, global0.a, -1433f), vec3<f32>(global0.a, -1864f, var_0.a)))))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1053f, 1020f, var_0.a, var_0.a) + vec4<f32>(var_0.a, global0.a, var_0.a, 623f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, 130f, 387f, 719f)) + vec4<f32>(global0.a, global0.a, global0.a, var_0.a)))))), var_0);
    let var_1 = var_0;
    global1 = ~37575i;
    global1 = -35123i;
    let var_2 = select(vec2<bool>(!any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false))), false), vec2<bool>(false, true), !(u_input.c <= ((u_input.a.x >> (var_0.b % 32u)) ^ 2147483647i)));
    let var_3 = true;
    var var_4 = global0.b == var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, -178f, _wgslsmith_f_op_f32(global0.a - var_0.a)) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -426f), -415f, var_1.a)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, 915f, var_1.a)))), vec3<f32>(_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + var_0.a)), global0.a)), -_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.c & 54895i, 16976i), _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, u_input.c), vec2<i32>(0i, u_input.a.x) ^ vec2<i32>(2147483647i, 56118i))));
}

