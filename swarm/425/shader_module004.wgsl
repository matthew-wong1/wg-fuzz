struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<f32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec2<f32>, arg_3: Struct_2) -> u32 {
    var var_0 = arg_0.a;
    let var_1 = arg_3;
    let var_2 = Struct_1(~2147483647i);
    global0 = Struct_1(~arg_0.c.d);
    var var_3 = var_1.b;
    return 4610u;
}

fn func_3(arg_0: Struct_4) -> f32 {
    global0 = Struct_1(u_input.a.x);
    let var_0 = firstTrailingBit(9586u);
    global0 = Struct_1(2147483647i);
    global0 = Struct_1(-55847i);
    global0 = Struct_1(19874i);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-840f, -204f, true))));
}

fn func_1(arg_0: u32, arg_1: bool) -> u32 {
    global0 = Struct_1(~(-(min(18708i, u_input.a.x) >> (func_2(Struct_3(Struct_2(0i, Struct_1(-44946i), vec4<f32>(-1084f, -1219f, 208f, 404f), u_input.a.x), vec2<bool>(true, arg_1), Struct_2(2147483647i, Struct_1(-1i), vec4<f32>(174f, 730f, 1000f, -1043f), u_input.a.x)), Struct_4(arg_0), vec2<f32>(1135f, -1747f), Struct_2(-2147483647i, Struct_1(global0.a), vec4<f32>(-554f, 1779f, 2029f, -1364f), -7869i)) % 32u))));
    var var_0 = u_input.a.x;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-145f, _wgslsmith_div_f32(161f, 544f)) + _wgslsmith_f_op_f32(-765f * -500f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-734f, 312f)) * _wgslsmith_f_op_f32(min(1000f, 649f)))))), _wgslsmith_f_op_f32(func_3(Struct_4(1u & firstTrailingBit(83598u)))), _wgslsmith_f_op_f32(floor(708f)));
    let var_2 = Struct_4(arg_0);
    global0 = Struct_1(-1i);
    return ~(~max(16852u, max(arg_0, var_2.a) >> (var_2.a % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(vec4<u32>(~(~51587u), ~1u, func_1(0u, all(vec3<bool>(true, true, false))) << (abs(1u) % 32u), _wgslsmith_mod_u32(46540u, ~countOneBits(73517u))));
    global0 = Struct_1(global0.a);
    global0 = Struct_1(~u_input.a.x | _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.a.xz ^ u_input.a.wz, ~vec2<i32>(2147483647i, u_input.a.x)), -_wgslsmith_sub_i32(-102020i, global0.a)));
    global0 = Struct_1(~(-_wgslsmith_div_i32(u_input.a.x, global0.a) >> ((var_0.x >> (4294967295u % 32u)) % 32u)));
    let var_1 = countOneBits(~_wgslsmith_mult_u32(var_0.x, var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(-857f, ~72776u, -u_input.a.zzy, 2922i);
}

