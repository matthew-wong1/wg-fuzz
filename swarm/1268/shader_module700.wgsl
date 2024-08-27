struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32;

var<private> global2: f32 = -1032f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> vec2<bool> {
    var var_0 = vec2<f32>(1f, 1f);
    return global0.a;
}

fn func_3(arg_0: vec2<f32>, arg_1: f32) -> f32 {
    global2 = _wgslsmith_div_f32(arg_1, -928f);
    global1 = -(-global0.b & global0.b);
    global0 = Struct_1(select(!(!select(global0.a, global0.a, vec2<bool>(global0.a.x, false))), select(select(select(global0.a, vec2<bool>(global0.a.x, global0.a.x), global0.a.x), vec2<bool>(global0.a.x, false), true), !select(global0.a, global0.a, true), global0.a.x), true), ~(u_input.d << (44406u % 32u)));
    global1 = u_input.c;
    let var_0 = Struct_3(Struct_1(global0.a, u_input.c));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)), 1321f) * -435f)) * -873f);
}

fn func_1(arg_0: Struct_3) -> vec2<bool> {
    global0 = Struct_1(!func_2(), 14414i);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec2<f32>(885f, -354f), -1164f)), -601f) - _wgslsmith_f_op_f32(ceil(-1209f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -785f) * _wgslsmith_f_op_f32(func_3(vec2<f32>(420f, -364f), -133f))), _wgslsmith_f_op_f32(f32(-1f) * -321f), u_input.a.x < 22783u))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(255f, 203f, -1000f) * vec3<f32>(-1000f, -946f, -305f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1000f, -333f) * vec3<f32>(-230f, -258f, -694f)), select(vec3<bool>(global0.a.x, global0.a.x, false), vec3<bool>(false, true, arg_0.a.a.x), vec3<bool>(global0.a.x, global0.a.x, arg_0.a.a.x)))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1487f, 399f, 131f) - vec3<f32>(-571f, -1438f, 2271f)), vec3<f32>(1635f, -1396f, -371f)))))));
    let var_2 = Struct_1(func_2(), 1i);
    return arg_0.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_1(!select(func_1(Struct_3(Struct_1(global0.a, -2147483647i))), vec2<bool>(true, true), global0.a), ~(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -45368i, 1i), vec3<i32>(-39351i, 1i, u_input.c)))));
    var var_1 = select(!select(func_2(), var_0.a.a, !select(global0.a.x, var_0.a.a.x, var_0.a.a.x)), vec2<bool>(any(!select(vec4<bool>(var_0.a.a.x, true, true, false), vec4<bool>(global0.a.x, true, false, global0.a.x), vec4<bool>(false, true, global0.a.x, true))), false), vec2<bool>(!(!var_0.a.a.x) && all(vec4<bool>(var_0.a.a.x, true, var_0.a.a.x, true)), var_0.a.a.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1806f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(737f)) * 2346f)) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(142f, -801f, -1411f), vec3<f32>(-1000f, -1118f, 661f), vec3<bool>(false, global0.a.x, global0.a.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(180f, 767f, 217f)))))));
    var var_3 = vec4<i32>(45172i, 2147483647i, global0.b, -14197i);
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, 1254f, 610f) + vec3<f32>(-727f, -866f, var_2.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, 387f, 772f))))))))));
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_2.yy)))), 908f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.x))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.x)))), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(min(15521i, -2147483647i << (~u_input.a.x % 32u)), countOneBits(firstLeadingBit(0i))), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, ~2158u, _wgslsmith_sub_u32(34124u, 0u), 13367u) | vec4<u32>(_wgslsmith_mult_u32(0u, 7033u), 1824u, u_input.a.x, 77117u), vec4<u32>(1u ^ u_input.b, _wgslsmith_mod_u32(~u_input.a.x, 1u), u_input.a.x, u_input.b)), ~var_3.ww, -_wgslsmith_add_vec3_i32(max(vec3<i32>(36158i, -187i, -47603i), vec3<i32>(-2147483647i, var_3.x, 9396i)) << (~vec3<u32>(56159u, 4294967295u, u_input.a.x) % vec3<u32>(32u)), var_3.wzz));
}

