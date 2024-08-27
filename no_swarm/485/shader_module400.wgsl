struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: f32,
    d: vec4<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: bool,
    b: vec2<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 25>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: Struct_4) -> bool {
    return false;
}

fn func_4(arg_0: bool) -> u32 {
    let var_0 = arg_0 || true;
    global0 = array<Struct_4, 25>();
    let var_1 = ~0u;
    global0 = array<Struct_4, 25>();
    global0 = array<Struct_4, 25>();
    return 31810u;
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    global0 = array<Struct_4, 25>();
    let var_0 = u_input.a;
    var var_1 = !(!(!select(vec2<bool>(arg_1, false), vec2<bool>(arg_0.b, true), all(vec4<bool>(true, arg_0.b, arg_1, false)))));
    var var_2 = reverseBits(vec2<u32>(u_input.a.x, func_4(!func_3(1480i, global0[_wgslsmith_index_u32(var_0.x, 25u)]))));
    var var_3 = -vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.d.a, arg_0.c, 63902i, -5147i), vec4<i32>(29461i, arg_0.c, arg_0.c, arg_0.c)), vec4<i32>(arg_0.d.a, -2147483647i, arg_0.d.a, arg_0.d.a)), firstLeadingBit(-2147483647i)), -1i);
    return arg_0.d;
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = vec2<bool>(select(select(false, false, true), true, true) && (56651u < ~(u_input.a.x >> (28830u % 32u))), any(vec2<bool>(arg_0.b, true)));
    let var_1 = all(select(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, true)), select(vec4<bool>(func_3(0i, Struct_4(u_input.a)), true, var_0.x, false | arg_0.b), !select(vec4<bool>(false, true, true, arg_0.b), vec4<bool>(var_0.x, arg_0.b, arg_0.b, true), true), vec4<bool>(arg_0.a != arg_0.a, arg_0.b, false, select(arg_0.b, false, var_0.x))), !any(select(vec2<bool>(false, var_0.x), var_0, vec2<bool>(var_0.x, arg_0.b)))));
    global0 = array<Struct_4, 25>();
    global0 = array<Struct_4, 25>();
    global0 = array<Struct_4, 25>();
    return arg_0.d;
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    var var_0 = max(select(vec3<i32>(2147483647i & firstTrailingBit(42592i), -2147483647i, arg_0.a), -(~vec3<i32>(arg_0.a, 16618i, arg_0.a) ^ vec3<i32>(-24919i, arg_0.a, arg_0.a)), vec3<bool>(true, true, true)), ~(~(~(-vec3<i32>(0i, 8207i, arg_0.a)))));
    var var_1 = !select(select(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), all(vec4<bool>(true, true, true, true))), vec3<bool>(true, func_3(_wgslsmith_clamp_i32(var_0.x, var_0.x, 2147483647i), Struct_4(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x))), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)))));
    global0 = array<Struct_4, 25>();
    global0 = array<Struct_4, 25>();
    var var_2 = Struct_5(false, _wgslsmith_mod_vec2_u32(firstLeadingBit(~vec2<u32>(u_input.a.x, u_input.a.x)), u_input.a.yx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(221f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(929f * -800f)))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1599f)))));
    return arg_0;
}

fn func_1(arg_0: f32) -> Struct_2 {
    global0 = array<Struct_4, 25>();
    var var_0 = select(vec3<bool>(all(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false)), any(vec3<bool>(true, false, true)) || false, true), !vec3<bool>(true, true, any(vec3<bool>(true, false, false)) | true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)))));
    var var_1 = func_6(func_5(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1269f), false, ~firstTrailingBit(1i), func_2(Struct_2(arg_0, true, -1i, Struct_1(22527i)), true)), ~(~(~4294967295u)), vec2<i32>(1i, 1i)));
    var_1 = Struct_1(-var_1.a);
    var var_2 = vec3<u32>(abs(~reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(8284u, u_input.a.x, 69013u, u_input.a.x), u_input.a))), firstTrailingBit(~u_input.a.x), 102940u);
    return Struct_2(451f, !(!func_3(~38656i, Struct_4(u_input.a))), var_1.a, func_2(Struct_2(arg_0, all(select(vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false), true)), ~firstLeadingBit(var_1.a), func_6(Struct_1(-25618i))), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(abs(1421f)));
    var var_1 = var_0.d;
    var var_2 = u_input.a.x;
    global0 = array<Struct_4, 25>();
    var_1 = Struct_1(_wgslsmith_sub_i32((~var_0.c | var_1.a) >> (u_input.a.x % 32u), var_1.a));
    var_1 = Struct_1(_wgslsmith_mod_i32(25681i, firstLeadingBit(~var_1.a)));
    var var_3 = abs(vec2<i32>(39025i, 1018i));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.a, var_0.a, var_0.a))))), vec3<f32>(_wgslsmith_f_op_f32(-1217f - -112f), 445f, var_0.a)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a, -582f, 153f))))));
    global0 = array<Struct_4, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_4.x, _wgslsmith_f_op_f32(-767f + _wgslsmith_f_op_f32(-var_0.a)))), select(~(~1u), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, u_input.a.x, 84165u), ~firstTrailingBit(vec3<u32>(u_input.a.x, 61267u, u_input.a.x))), !(u_input.a.x >= u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_4.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(func_1(_wgslsmith_f_op_f32(abs(518f))).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - _wgslsmith_f_op_f32(f32(-1f) * -912f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1047f + 1314f)))), 1676u);
}

