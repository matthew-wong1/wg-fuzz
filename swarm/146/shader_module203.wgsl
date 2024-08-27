struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> vec3<i32> {
    return _wgslsmith_mod_vec3_i32(vec3<i32>(0i, ~(-20529i), u_input.a), vec3<i32>(1i, -_wgslsmith_div_i32(25944i, reverseBits(-28849i)), -_wgslsmith_div_i32(firstTrailingBit(27953i), max(-15647i, u_input.a))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: u32) -> Struct_2 {
    let var_0 = 662f;
    let var_1 = arg_3;
    let var_2 = all(!vec3<bool>(false, !all(vec2<bool>(true, false)), u_input.a >= abs(u_input.a)));
    global0 = arg_2.a;
    var var_3 = var_2;
    return Struct_2(~_wgslsmith_add_vec3_i32(func_3(), select(arg_0.xwz, arg_0.zyz, true) >> (_wgslsmith_add_vec3_u32(u_input.b.zzx, u_input.e.zwz) % vec3<u32>(32u))));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -558f)));
    var var_1 = ~_wgslsmith_mult_u32(u_input.d.x, u_input.e.x) ^ u_input.e.x;
    var var_2 = u_input.c.ywz;
    var var_3 = var_0;
    var_1 = 1u;
    return func_2(abs(~min(vec4<i32>(2147483647i, 2147483647i, 790i, 2147483647i), firstTrailingBit(vec4<i32>(24850i, -19617i, u_input.a, 2147483647i)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a) * _wgslsmith_f_op_f32(f32(-1f) * -855f)), _wgslsmith_f_op_f32(round(-685f))), var_3.a, var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-349f + var_3.a) - var_3.a)), var_0, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -541f) - _wgslsmith_f_op_f32(sign(-2141f)));
    var var_1 = 5365i;
    let var_2 = func_1();
    let var_3 = func_1();
    var_1 = _wgslsmith_clamp_i32(-1i, u_input.a, -1670i);
    let var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-2707f))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1070f - 2153f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-202f)))))));
    var var_5 = var_4;
    var var_6 = var_3.a;
    var_0 = var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, var_4.a);
}

