struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: vec4<f32>,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 24>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: vec2<bool>) -> vec2<f32> {
    let var_0 = u_input.a.zy;
    let var_1 = global0[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(arg_1.a.a.a.x, u_input.c)), 24u)];
    global0 = array<Struct_5, 24>();
    global0 = array<Struct_5, 24>();
    global0 = array<Struct_5, 24>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_0.zz)));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = !select(!select(!vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(select(vec2<bool>(true, arg_0), vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0)), !vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0)), vec2<bool>(arg_0, true & arg_0)), vec2<bool>(all(vec4<bool>(arg_0, arg_0, arg_0, false)) & arg_0, true));
    global0 = array<Struct_5, 24>();
    let var_1 = _wgslsmith_clamp_u32(_wgslsmith_sub_u32(abs(~(~u_input.c)), 1u), 4294967295u, max(u_input.c, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(86879u, u_input.c, u_input.c), vec3<u32>(0u, 4294967295u, u_input.c)) >> (46794u % 32u), u_input.c)));
    var var_2 = Struct_5(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2138f + 563f) - -597f))))), Struct_3(Struct_2(_wgslsmith_add_vec2_u32(select(vec2<u32>(u_input.c, var_1), vec2<u32>(89654u, 0u), true), ~vec2<u32>(var_1, u_input.c))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(885f)), _wgslsmith_div_f32(-1884f, 566f)))), _wgslsmith_dot_vec3_u32(vec3<u32>(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1, u_input.c, 1u), vec3<u32>(var_1, u_input.c, 0u)), u_input.c), vec3<u32>(6497u, var_1, var_1) ^ vec3<u32>(0u, var_1, u_input.c))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-398f, -308f, 1939f, 582f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(781f, 1869f, 265f, -1631f) - vec4<f32>(-796f, -375f, 496f, -856f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1060f, 776f, 1000f, 1277f)))), u_input.d.x == -(~u_input.a.x), Struct_2(firstTrailingBit(select(min(vec2<u32>(0u, u_input.c), vec2<u32>(4294967295u, var_1)), firstLeadingBit(vec2<u32>(56329u, u_input.c)), arg_0))));
    var_2 = global0[_wgslsmith_index_u32(var_2.e.a.x, 24u)];
    return var_1;
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1) -> vec4<u32> {
    global0 = array<Struct_5, 24>();
    global0 = array<Struct_5, 24>();
    let var_0 = Struct_3(Struct_2(~vec2<u32>(~u_input.c, func_3(false))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x))))), u_input.c);
    let var_1 = Struct_2(vec2<u32>(var_0.c, reverseBits(var_0.c)));
    return ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, firstLeadingBit(19850u), select(49836u, var_0.c, true), var_1.a.x ^ 14730u), ~vec4<u32>(28595u, u_input.c, u_input.c, var_1.a.x) | vec4<u32>(45703u, var_1.a.x, 41605u, var_0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 501f;
    var_0 = 1000f;
    let var_1 = abs(vec4<i32>(_wgslsmith_clamp_i32(0i, u_input.d.x, ~u_input.b), firstTrailingBit(1i), u_input.b, u_input.d.x)) >> (func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, -829f, -541f, 254f))), Struct_4(Struct_3(Struct_2(vec2<u32>(u_input.c, 0u)), -1907f, u_input.c), Struct_2(vec2<u32>(30154u, u_input.c))), select(vec2<bool>(false, true), vec2<bool>(true, true), false)))), u_input.b, Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, u_input.b, u_input.d.x, u_input.a.x) & vec4<i32>(u_input.d.x, -19230i, u_input.b, u_input.b), vec4<i32>(71830i, 2147483647i, u_input.b, u_input.a.x), ~vec4<i32>(1i, u_input.d.x, u_input.a.x, -2147483647i)))) % vec4<u32>(32u));
    global0 = array<Struct_5, 24>();
    global0 = array<Struct_5, 24>();
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(714f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_2 = 1461f;
    let var_3 = -4598i;
    let var_4 = vec2<i32>(2147483647i, 75260i);
    let x = u_input.a;
    s_output = StorageBuffer(var_3, vec4<i32>(9667i, -2147483647i, var_1.x, min(var_1.x, min(var_4.x, var_1.x))) << (~abs(vec4<u32>(u_input.c, 4294967295u, 1u, u_input.c)) % vec4<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(-118f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2 + var_2)))), 634f, _wgslsmith_f_op_f32(round(-1566f)), _wgslsmith_f_op_f32(step(var_2, var_2))));
}

