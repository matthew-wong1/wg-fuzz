struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_2) -> f32 {
    let var_0 = reverseBits(vec4<u32>(_wgslsmith_sub_u32(arg_2.b, _wgslsmith_dot_vec3_u32(~vec3<u32>(57248u, 40680u, 1u), vec3<u32>(arg_1, arg_2.b, 9389u) >> (vec3<u32>(20171u, 0u, arg_2.b) % vec3<u32>(32u)))), arg_2.b, arg_2.b, 1u));
    var var_1 = Struct_1(-2147483647i, vec2<i32>(abs(0i), min(6819i, i32(-1i) * -arg_2.a.x)), arg_2.b);
    let var_2 = Struct_1(~firstLeadingBit(select(u_input.a.x, arg_2.c, true) | ~1i), vec2<i32>(countOneBits(-arg_2.c), select(arg_2.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(24341i, 1i), firstLeadingBit(vec2<i32>(-1i, var_1.a))), true)), _wgslsmith_add_u32(arg_2.b, 4294967295u));
    global0 = arg_1;
    let var_3 = vec4<u32>(var_1.c, 47411u, 21877u, 20231u);
    return -1140f;
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: bool) -> f32 {
    var var_0 = abs(vec2<u32>(_wgslsmith_mod_u32(1u, 1u), abs(firstLeadingBit(4294967295u)))) & abs(vec2<u32>(0u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(4019u, 4294967295u, 0u), ~0u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1f - -2199f))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<bool>) -> Struct_2 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-894f * _wgslsmith_f_op_f32(f32(-1f) * -240f)), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(103f, 1u, Struct_2(vec2<i32>(-1i, u_input.a.x), 5072u, -31457i, arg_1))) * _wgslsmith_f_op_f32(trunc(224f))) != _wgslsmith_f_op_f32(f32(-1f) * -1964f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(788f, -1172f, 168f))), all(select(vec3<bool>(arg_1.x, false, true), !vec3<bool>(true, arg_1.x, arg_1.x), true)))));
    let var_1 = var_0;
    global0 = 4294967295u;
    global0 = firstLeadingBit(1u);
    let var_2 = select(vec4<bool>(true, false, true, false), vec4<bool>(all(vec4<bool>(arg_0.x == u_input.c.x, arg_1.x, 0i == u_input.b.x, select(false, false, arg_1.x))), all(!vec2<bool>(false, arg_1.x)), true, any(vec4<bool>(arg_1.x && true, arg_1.x, !arg_1.x, !arg_1.x))), arg_1.x);
    return Struct_2(firstTrailingBit(firstTrailingBit(vec2<i32>(0i, -9086i)) ^ (-u_input.b.yy | vec2<i32>(-2147483647i, -26682i))), ~0u, ~1i, var_2.zwz);
}

fn func_1() -> Struct_2 {
    var var_0 = u_input.a.x;
    let var_1 = true;
    let var_2 = func_2(~(~(~(-vec3<i32>(u_input.c.x, u_input.c.x, u_input.a.x)))), !vec3<bool>(false, true, var_1));
    var var_3 = _wgslsmith_dot_vec4_i32(~(vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(u_input.b, vec4<i32>(var_2.c, var_2.c, u_input.c.x, u_input.c.x))), u_input.b);
    var var_4 = Struct_1(u_input.b.x << (~12501u % 32u), u_input.c.xw, 102302u);
    return func_2(reverseBits(u_input.c.xwz), !(!(!vec3<bool>(var_2.d.x, var_1, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(u_input.b.x);
    global0 = abs(4294967295u);
    var_0 = -2147483647i;
    var var_1 = countOneBits(u_input.a.x);
    var var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-481f, -220f, 598f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1712f, -127f, 2613f)))), vec3<f32>(_wgslsmith_div_f32(-437f, -524f), _wgslsmith_f_op_f32(trunc(-472f)), _wgslsmith_f_op_f32(sign(245f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1121f, _wgslsmith_f_op_f32(sign(753f)), _wgslsmith_f_op_f32(1315f - -2091f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(-1151f, 512f)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + -1443f), _wgslsmith_f_op_f32(step(-2557f, -1187f))), -1094f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -140f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, 199f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1000f)))))), abs(_wgslsmith_div_u32(var_2.b, min(61220u, var_2.b ^ var_2.b))), 190f);
}

