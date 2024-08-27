struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<u32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool) -> vec2<f32> {
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    let var_0 = countOneBits(u_input.a);
    let var_1 = -2006f;
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1222f, 1024f) - vec2<f32>(666f, 708f)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1, 496f), vec2<f32>(592f, var_1))))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-632f, _wgslsmith_f_op_f32(f32(-1f) * -367f))))), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(528f, var_1)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(595f + 752f) * _wgslsmith_f_op_f32(-var_1)))));
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_1, 23>();
    var var_0 = _wgslsmith_f_op_vec2_f32(func_3(false));
    var var_1 = -2003f;
    let var_2 = global0[_wgslsmith_index_u32(~24405u, 23u)];
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.e), var_2.e, var_2.d | false))));
    return Struct_1(firstLeadingBit(~vec3<i32>(select(u_input.b, 1i, true), -var_2.a.x, ~0i)), max(~_wgslsmith_div_u32(_wgslsmith_sub_u32(100593u, 57933u), ~28416u), ~(~var_2.c.x)), vec2<u32>(~_wgslsmith_clamp_u32(~43959u, var_2.b, abs(var_2.b)), _wgslsmith_clamp_u32(4294967295u, reverseBits(min(var_2.b, 80574u)), ~(var_2.b | 4294967295u))), any(!(!select(vec3<bool>(true, var_2.d, var_2.d), vec3<bool>(var_2.d, var_2.d, true), vec3<bool>(var_2.d, true, var_2.d)))), _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_vec2_f32(func_3(var_2.d)).x)));
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    return func_2();
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, _wgslsmith_dot_vec3_u32(min(arg_2.c.zyz, firstTrailingBit(_wgslsmith_add_vec3_u32(arg_2.c.zwz, arg_2.c.zzw))), reverseBits(~arg_2.c.xyy))), 23u)];
    var var_1 = !vec2<bool>(arg_2.a.d, any(select(select(vec2<bool>(var_0.d, false), arg_2.e.xy, false), arg_0, false)));
    var_1 = select(arg_0, arg_0, arg_0);
    let var_2 = func_2();
    let var_3 = var_0.c.x;
    return select(select(vec3<bool>(func_2().a.x > _wgslsmith_mod_i32(u_input.a, 47522i), true, all(!arg_2.e.yww)), !vec3<bool>(!arg_0.x, true, var_0.d), arg_2.e.zyx), !arg_2.e.yxy, !var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, 1u), 23u)];
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-1887f + var_0.e), var_0.e);
    let var_2 = !(!func_4(vec2<bool>(all(vec2<bool>(false, true)), true), ~vec3<i32>(35983i, 45152i, var_0.a.x), Struct_2(global0[_wgslsmith_index_u32(8578u, 23u)], _wgslsmith_mult_u32(31112u, 15433u), min(vec4<u32>(var_0.c.x, 7160u, var_0.b, var_0.b), vec4<u32>(var_0.c.x, var_0.c.x, 4294967295u, var_0.c.x)), func_1(), select(vec4<bool>(var_0.d, false, true, true), vec4<bool>(var_0.d, var_0.d, var_0.d, false), true))));
    global0 = array<Struct_1, 23>();
    let var_3 = var_0.b;
    global0 = array<Struct_1, 23>();
    var var_4 = func_1();
    let var_5 = ~(~(~(vec4<u32>(19582u, var_4.c.x, 4612u, var_4.c.x) & vec4<u32>(var_4.b, 1u, 4294967295u, 93979u))) << (firstTrailingBit(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_4.b, var_4.c.x, 0u), vec4<u32>(0u, var_4.c.x, 1u, var_4.b))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(1077f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-400f, -460f, 426f) * vec3<f32>(-329f, var_4.e, var_0.e)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-198f, -1763f, -1000f)), true)))), ~(~var_4.a.yx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(240f, func_1().e))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.x, _wgslsmith_div_f32(-184f, var_1.x), _wgslsmith_f_op_f32(1137f + 445f)), vec3<f32>(var_4.e, 204f, _wgslsmith_div_f32(var_0.e, -1326f)))))));
}

