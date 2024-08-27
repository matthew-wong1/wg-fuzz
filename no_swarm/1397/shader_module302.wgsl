struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> i32 {
    return ~(-1i);
}

fn func_1() -> f32 {
    let var_0 = ~(~abs(vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, 67879u), u_input.a.x)));
    let var_1 = vec2<f32>(-1624f, _wgslsmith_f_op_f32(select(1360f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -795f)) * -623f), true)));
    let var_2 = countOneBits(var_0.x);
    let var_3 = abs(_wgslsmith_mod_i32(-2147483647i, _wgslsmith_mod_i32(u_input.c, select(-31259i, -53762i, true))));
    let var_4 = Struct_4(vec3<bool>(true, !any(vec3<bool>(true, true, true)), true), vec2<i32>(abs(firstTrailingBit(u_input.b.x)), func_2()));
    return _wgslsmith_f_op_f32(137f + _wgslsmith_f_op_f32(f32(-1f) * -322f));
}

fn func_3() -> f32 {
    var var_0 = u_input.e.x;
    var_0 = firstTrailingBit(-2147483647i);
    var var_1 = select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec2<bool>(true, all(vec3<bool>(true, false, true)))), true), !(any(vec4<bool>(true, true, true, true)) | all(vec4<bool>(true, true, true, true))));
    var_0 = -2147483647i;
    let var_2 = Struct_2(Struct_1(_wgslsmith_add_vec2_u32(u_input.a.zy, vec2<u32>(0u, 23177u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(938f - _wgslsmith_f_op_f32(1437f + 2006f)), _wgslsmith_f_op_f32(f32(-1f) * -1064f)), u_input.b.x), ~(~(_wgslsmith_mult_u32(u_input.a.x, 0u) >> ((u_input.a.x | u_input.a.x) % 32u))));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-297f, -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.a.yy;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1()))), _wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(597f, 2195f)), _wgslsmith_f_op_f32(func_3())) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-521f, -1443f, -1575f, -686f) * vec4<f32>(1607f, -252f, 1283f, 178f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-430f, -346f, 2019f, -1000f)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false)))))));
    var var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, vec4<u32>(var_2.x, _wgslsmith_add_u32(_wgslsmith_add_u32(75813u, var_2.x), _wgslsmith_dot_vec3_u32(u_input.a, firstLeadingBit(u_input.a))), var_2.x, 75440u), vec3<f32>(-237f, _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(2259f, var_1.x)), var_1.x))), var_1.x));
}

