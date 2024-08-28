struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec3<u32>) -> vec4<i32> {
    let var_0 = Struct_1(-_wgslsmith_div_i32(~u_input.a.x | 0i, reverseBits(_wgslsmith_dot_vec2_i32(u_input.c.xw, vec2<i32>(u_input.e.x, 1i)))), vec4<bool>(true, true, true, true));
    var var_1 = Struct_1(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(u_input.c.x & var_0.a, var_0.a, var_0.a)), _wgslsmith_mult_vec3_i32(~u_input.e, ~u_input.a) | -(~u_input.a)), vec4<bool>(!any(vec2<bool>(var_0.b.x, var_0.b.x)), var_0.b.x || any(select(vec2<bool>(false, var_0.b.x), vec2<bool>(false, var_0.b.x), var_0.b.zw)), var_0.b.x, any(!var_0.b.xy)));
    let var_2 = 16614u;
    var_1 = Struct_1(_wgslsmith_clamp_i32(7704i, 0i, ~abs(~1i)), var_0.b);
    var var_3 = Struct_1(-2147483647i, vec4<bool>(var_1.b.x, false, any(!vec3<bool>(var_0.b.x, var_0.b.x, var_1.b.x)), var_1.b.x));
    return u_input.c;
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(298f)), -595f))) + 139f);
    var var_1 = _wgslsmith_f_op_f32(trunc(-547f));
    let var_2 = -38569i;
    let var_3 = ~(~u_input.b.x);
    let var_4 = firstLeadingBit(-u_input.e.yx);
    return -1065f;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: Struct_1) -> bool {
    let var_0 = Struct_1(arg_0.x, vec4<bool>(any(arg_2.b), !arg_2.b.x, true & any(vec2<bool>(false, false)), arg_1.x));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -202f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-743f)) * _wgslsmith_f_op_f32(func_3(!vec4<bool>(var_0.b.x, false, arg_1.x, var_0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-863f)) + _wgslsmith_f_op_f32(f32(-1f) * -100f)))), _wgslsmith_f_op_f32(min(-2057f, 255f)), _wgslsmith_f_op_f32(f32(-1f) * -892f));
    let var_2 = select(0i, firstTrailingBit(-2147483647i), arg_2.a <= 1i);
    let var_3 = var_0;
    let var_4 = var_0;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = Struct_1(_wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-10852i, -1i, u_input.e.x, 1i), ~u_input.c)), u_input.c), !vec4<bool>(true, false, func_2(func_1(vec3<u32>(0u, u_input.b.x, u_input.b.x)), vec2<bool>(var_0, true), Struct_1(u_input.c.x, vec4<bool>(true, var_0, true, false))), true));
    let var_2 = _wgslsmith_div_u32(u_input.b.x, ~7366u);
    var var_3 = vec2<f32>(-2927f, _wgslsmith_f_op_f32(f32(-1f) * -1812f));
    var_3 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-var_3.x), 1108f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1490f, var_3.x), vec2<f32>(var_3.x, -426f)) + vec2<f32>(var_3.x, var_3.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, var_3.x)) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_3.x, -638f)))), var_0)))));
    var_3 = vec2<f32>(var_3.x, 825f);
    var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1624f, var_3.x) - vec2<f32>(1673f, -1764f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, 1154f)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_3.x))), 363f))));
    var_3 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x + 222f) * _wgslsmith_f_op_f32(-var_3.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-262f, var_3.x)))))), vec2<f32>(var_3.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2460f * _wgslsmith_f_op_f32(exp2(var_3.x))))))));
    var var_4 = ~53061i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.b.x, 4294967295u), vec2<u32>(abs(_wgslsmith_add_u32(~12113u, u_input.b.x >> (1u % 32u))), _wgslsmith_mult_u32(~(1u & var_2), var_2)));
}

