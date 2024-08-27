struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(228f, -1126f);

var<private> global1: vec4<f32> = vec4<f32>(787f, -124f, 257f, -1367f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_1(arg_0: vec4<u32>, arg_1: f32) -> Struct_2 {
    return Struct_2(true);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> u32 {
    global1 = arg_0;
    var var_0 = func_1(vec4<u32>(42044u, max(4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.b.x, u_input.a, 0u), ~vec4<u32>(12509u, 0u, 0u, u_input.c))), ~select(~u_input.a, u_input.b.x, true), u_input.c), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x))));
    global1 = _wgslsmith_f_op_vec4_f32(-arg_0);
    var var_1 = global1.zwy;
    return reverseBits(~32236u) << (u_input.a % 32u);
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_div_u32(~func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, global1.x, global0.x, global1.x), vec4<f32>(global0.x, -173f, global0.x, 1538f)))), Struct_1(~(-12196i))), ~(1u ^ u_input.c) << (u_input.a % 32u));
    var var_1 = Struct_2(true);
    global1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_div_f32(global0.x, 209f), _wgslsmith_div_f32(2627f, -476f), -987f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(164f, global1.x, global1.x, global0.x))))));
    var var_2 = Struct_1(88788i);
    var var_3 = Struct_2(!(_wgslsmith_dot_vec4_u32(countOneBits(u_input.b), u_input.b) != (firstTrailingBit(1u) << (0u % 32u))));
    return -2309f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.x)))));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(func_2()), -1173f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.x)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(601f, -2040f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(261f)), 553f)) * global1.x));
    let var_1 = Struct_1(firstTrailingBit(-22774i));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())));
    let var_3 = Struct_2(all(select(vec4<bool>(true, true, var_0.a | var_0.a, true), !vec4<bool>(true, var_0.a, var_0.a, var_0.a), select(select(vec4<bool>(var_0.a, var_0.a, false, true), vec4<bool>(var_0.a, var_0.a, var_0.a, true), vec4<bool>(true, var_0.a, true, true)), !vec4<bool>(var_0.a, false, false, false), var_0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(120f, u_input.b.yx >> (~(vec2<u32>(7612u, 4294967295u) ^ vec2<u32>(1623u, u_input.c)) % vec2<u32>(32u)), vec4<i32>(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(22195i, var_1.a), _wgslsmith_mod_vec2_i32(vec2<i32>(var_1.a, var_1.a), vec2<i32>(var_1.a, var_1.a)))), var_1.a, -23345i, -1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-519f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global1.x, 259f)), 617f))));
}

