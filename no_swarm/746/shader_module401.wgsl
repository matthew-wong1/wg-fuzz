struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: vec4<bool>,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: vec3<u32>,
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

var<private> global0: vec2<f32> = vec2<f32>(100f, 571f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3) -> u32 {
    var var_0 = arg_0.c.b;
    let var_1 = select(vec3<bool>(arg_1.c.c.x, select(arg_0.a | -17963i, 18082i, !arg_1.c.c.x) >= arg_0.a, ((arg_1.c.a.x & true) | (arg_0.a > u_input.c)) && arg_0.c.a.x), arg_0.c.a, select(arg_1.c.a, select(select(arg_0.c.c.zyy, select(vec3<bool>(true, true, true), arg_0.c.a, vec3<bool>(arg_0.c.c.x, false, false)), arg_0.c.a), vec3<bool>(true, u_input.e.x > 2406u, true), (arg_0.c.b ^ arg_1.c.b) != ~arg_1.b.x), vec3<bool>(arg_1.c.a.x, arg_1.c.a.x, any(select(vec4<bool>(false, arg_1.c.c.x, false, false), vec4<bool>(arg_1.c.c.x, false, true, true), true)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(700f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-arg_0.c.e)))));
    var var_3 = vec4<f32>(314f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.x, 601f)), -849f), 766f, 1250f);
    var var_4 = firstTrailingBit(-(reverseBits(vec3<i32>(arg_1.a, arg_1.a, u_input.b) & vec3<i32>(1i, arg_1.a, u_input.b)) << (~select(vec3<u32>(arg_0.b.x, arg_0.c.b, arg_1.b.x), vec3<u32>(u_input.a, 4294967295u, u_input.d), arg_0.c.c.x) % vec3<u32>(32u))));
    return abs(_wgslsmith_div_u32(u_input.a, ~(~u_input.d)));
}

fn func_2() -> vec2<f32> {
    var var_0 = Struct_4(func_3(Struct_3(-39840i, ~(~u_input.e.yx), Struct_2(vec3<bool>(true, true, true), u_input.d, vec4<bool>(true, false, false, true), global0.x, _wgslsmith_f_op_f32(global0.x - global0.x))), Struct_3(firstTrailingBit(u_input.b), u_input.e.yy, Struct_2(vec3<bool>(true, true, true), firstLeadingBit(u_input.d), vec4<bool>(false, false, true, true), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -178f)))));
    global0 = vec2<f32>(940f, 1000f);
    let var_1 = -vec4<i32>(-23099i, u_input.b, u_input.c, select(u_input.b, u_input.c, true) >> (~u_input.e.x % 32u));
    var var_2 = 1358f;
    var_2 = 1893f;
    return vec2<f32>(_wgslsmith_f_op_f32(global0.x * global0.x), -756f);
}

fn func_1() -> bool {
    global0 = _wgslsmith_f_op_vec2_f32(func_2());
    let var_0 = Struct_2(select(vec3<bool>(~u_input.c <= abs(-2147483647i), true, true), !vec3<bool>(true, all(vec3<bool>(true, true, false)), any(vec3<bool>(false, true, false))), (abs(-1i) <= -u_input.c) & all(vec2<bool>(true, true))), u_input.d, vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-512f + -476f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-977f))));
    return !select(var_0.c.x, all(select(select(var_0.a, vec3<bool>(true, false, true), vec3<bool>(true, var_0.c.x, var_0.c.x)), var_0.c.zyy, select(var_0.c.xyw, var_0.a, var_0.c.zyx))), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(u_input.d);
    var var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.e, u_input.e), ~firstTrailingBit(vec3<u32>(_wgslsmith_div_u32(var_0.a, 90486u), abs(u_input.d), var_0.a)));
    var var_2 = Struct_1(all(vec2<bool>(true, u_input.c < -14064i)) && (!func_1() != false), ~(~_wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(1u, var_0.a)), u_input.e.yx)));
    let var_3 = Struct_1(all(vec2<bool>(select(true, any(vec4<bool>(var_2.a, true, true, true)), func_1()), var_2.a)), ~(select(_wgslsmith_mult_vec2_u32(var_2.b, u_input.e.xx), ~var_2.b, select(false, var_2.a, false)) | vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.e.yy, u_input.e.yy), u_input.d)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-322f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(199f))), !any(vec3<bool>(var_3.a, var_2.a, false)))) - _wgslsmith_f_op_f32(313f + 825f)));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}

