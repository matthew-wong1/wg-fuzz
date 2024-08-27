struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = false;
    let var_1 = abs(106901u);
    var_0 = !any(vec2<bool>(abs(arg_0.x) != _wgslsmith_add_i32(arg_1.x, 26318i), false));
    let var_2 = Struct_1(vec2<i32>(19107i, abs(_wgslsmith_div_i32(_wgslsmith_div_i32(0i, 42544i), ~2147483647i))));
    let var_3 = countOneBits(vec3<u32>(4294967295u, var_1, _wgslsmith_add_u32(abs(_wgslsmith_mult_u32(u_input.b, u_input.b)), 12577u)));
    return arg_2;
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_add_i32(-14845i, u_input.a));
    return arg_1;
}

fn func_1() -> Struct_1 {
    var var_0 = func_3(~20584u, func_2(u_input.d.zyy, u_input.d, Struct_2(4294967295u)));
    var_0 = func_3(~0u, func_3(var_0.a, Struct_2(~(~0u))));
    var var_1 = ~select(-(~u_input.d), _wgslsmith_div_vec4_i32(~u_input.d, vec4<i32>(-44618i, u_input.c, 48703i, 1i)) >> ((max(vec4<u32>(4294967295u, 0u, u_input.b, u_input.b), vec4<u32>(19262u, var_0.a, u_input.b, var_0.a)) | firstLeadingBit(vec4<u32>(0u, u_input.b, 1u, u_input.b))) % vec4<u32>(32u)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true));
    var var_2 = vec3<bool>(!(_wgslsmith_f_op_f32(ceil(-488f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -428f))), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.a, u_input.b, u_input.b, var_0.a), ~select(vec4<u32>(u_input.b, 51330u, var_0.a, var_0.a), vec4<u32>(var_0.a, 9173u, u_input.b, 4294967295u), false)) < u_input.b, 1u > ~(countOneBits(var_0.a) << (var_0.a % 32u)));
    var_1 = u_input.d;
    return Struct_1(var_1.zy >> (select(_wgslsmith_mult_vec2_u32(vec2<u32>(116938u, u_input.b), ~vec2<u32>(32468u, 1u)), vec2<u32>(_wgslsmith_mult_u32(93778u, 12320u), 41213u), vec2<bool>(var_2.x, var_2.x & true)) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    var var_1 = 1500i;
    let var_2 = func_1();
    var_1 = min(-1i, _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.d.x, u_input.c), i32(-1i) * -(~var_2.a.x)));
    var_1 = -31638i;
    var_1 = _wgslsmith_add_i32(-var_0, var_2.a.x << (u_input.b % 32u));
    let var_3 = Struct_2(u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1027f), _wgslsmith_f_op_f32(f32(-1f) * -981f))), 1u ^ abs(u_input.b), -var_0);
}

