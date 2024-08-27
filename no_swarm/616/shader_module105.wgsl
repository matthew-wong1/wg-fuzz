struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: u32, arg_1: f32) -> Struct_3 {
    var var_0 = arg_1;
    let var_1 = vec2<u32>(~global0.c, 1u);
    global0 = Struct_3(select(global0.a, vec3<bool>(false, !any(global0.a), true), global0.a.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.d + global0.d)))), _wgslsmith_f_op_f32(step(957f, -321f))), ~u_input.a, -780f);
    let var_2 = -257f;
    var var_3 = -2147483647i;
    return Struct_3(global0.a, global0.b, 52691u, global0.b.a);
}

fn func_3() -> vec3<f32> {
    var var_0 = select(global0.b.b < func_2(~max(global0.c, global0.c), global0.d).b.b, true, false);
    var_0 = true;
    var_0 = true;
    global0 = Struct_3(vec3<bool>(false, true, !all(!vec4<bool>(global0.a.x, global0.a.x, true, global0.a.x))), func_2(0u, 511f).b, ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.b.x, global0.c), firstTrailingBit(global0.c)), 1101f);
    global0 = Struct_3(global0.a, Struct_1(_wgslsmith_f_op_f32(min(global0.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(815f + -1435f) + global0.b.b))), global0.b.b), ~u_input.a, global0.d);
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1045f))), -1527f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.b.a)))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(global0.d, global0.d, global0.a.x)), -466f, _wgslsmith_f_op_f32(global0.d + 575f)), vec3<f32>(_wgslsmith_f_op_f32(1221f - 2491f), global0.d, global0.d)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.b.b, 1108f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(580f - global0.d))), global0.b.b), !(!vec3<bool>(global0.a.x, global0.a.x, global0.a.x)))));
}

fn func_1() -> vec3<f32> {
    let var_0 = func_2(reverseBits(28309u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1429f))));
    var var_1 = !(!(false || (_wgslsmith_f_op_f32(trunc(var_0.d)) > _wgslsmith_f_op_f32(step(global0.d, 215f)))));
    var_1 = var_0.a.x;
    let var_2 = _wgslsmith_mod_u32(select(~1u, reverseBits(reverseBits(_wgslsmith_mult_u32(global0.c, global0.c))), !(!(!global0.a.x))), ~u_input.b.x);
    var var_3 = abs(~(-vec4<i32>(1i, firstLeadingBit(u_input.d), u_input.e.x, _wgslsmith_mod_i32(2147483647i, 34521i))));
    return _wgslsmith_f_op_vec3_f32(func_3());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mod_i32(u_input.d, u_input.e.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1()));
    let var_2 = func_2(global0.c, 849f).b;
    let var_3 = 94882u;
    var var_4 = all(global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_0, vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(2468f, _wgslsmith_f_op_f32(-var_2.b)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.b), 962f)), _wgslsmith_f_op_f32(847f + 1332f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.b) - _wgslsmith_f_op_f32(f32(-1f) * -717f)), -946f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.a)))))), firstLeadingBit(u_input.e | u_input.e) & (_wgslsmith_clamp_vec4_i32(u_input.e, -vec4<i32>(u_input.e.x, u_input.c.x, -1873i, -1i), ~vec4<i32>(0i, -19699i, -22176i, var_0)) << (vec4<u32>(~0u, global0.c, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, var_3), vec3<u32>(4294967295u, 36294u, u_input.a)), 4294967295u) % vec4<u32>(32u))));
}

