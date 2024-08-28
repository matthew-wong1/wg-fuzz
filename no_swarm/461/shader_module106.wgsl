struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec4<i32>, arg_3: vec3<bool>) -> vec4<i32> {
    var var_0 = Struct_2(all(vec4<bool>(arg_3.x, arg_3.x, !arg_0.c, arg_0.a < -668f)), ~_wgslsmith_sub_vec4_i32(~(-arg_2), min(vec4<i32>(5304i, 0i, -28383i, arg_2.x), arg_2)));
    var_0 = Struct_2(arg_3.x, arg_2 << (vec4<u32>(_wgslsmith_dot_vec3_u32(min(vec3<u32>(0u, 32090u, 0u), arg_0.b.zzx), select(vec3<u32>(arg_0.b.x, u_input.a.x, arg_1), u_input.a, vec3<bool>(false, true, arg_3.x))), 1u, ~arg_0.d, 4294967295u) % vec4<u32>(32u)));
    var var_1 = Struct_2(any(!(!(!vec3<bool>(false, arg_3.x, var_0.a)))), var_0.b);
    var_0 = Struct_2(!(_wgslsmith_f_op_f32(step(arg_0.a, _wgslsmith_f_op_f32(arg_0.a * arg_0.a))) != _wgslsmith_f_op_f32(arg_0.a + arg_0.a)), _wgslsmith_sub_vec4_i32(var_0.b, vec4<i32>(1i, 1i, -1i, 2147483647i)));
    var var_2 = !var_0.a;
    return _wgslsmith_add_vec4_i32(var_1.b, vec4<i32>(arg_2.x & (-17448i << (0u % 32u)), 1i, ~_wgslsmith_div_i32(var_1.b.x, var_1.b.x & var_0.b.x), abs(-1187i)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_3) -> vec2<u32> {
    let var_0 = Struct_2(!arg_1.c, firstTrailingBit(_wgslsmith_div_vec4_i32(func_3(Struct_1(arg_1.d.x, vec4<u32>(13069u, u_input.a.x, u_input.a.x, arg_1.a.x), arg_1.b.c, arg_1.b.d), arg_1.b.d, vec4<i32>(1540i, arg_0.x, arg_0.x, 25444i), select(vec3<bool>(false, arg_1.c, arg_1.c), vec3<bool>(false, true, arg_1.b.c), vec3<bool>(arg_1.b.c, false, false))), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.x, 0i, -1i, 69554i) ^ vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), firstTrailingBit(vec4<i32>(67910i, arg_0.x, arg_0.x, 13207i)), vec4<i32>(893i, arg_0.x, 1i, arg_0.x)))));
    var var_1 = var_0.b.zyw;
    var_1 = ~vec3<i32>(_wgslsmith_add_i32(28374i, _wgslsmith_clamp_i32(-18201i, max(-2147483647i, -65702i), -27461i)), i32(-1i) * -arg_0.x, reverseBits(arg_0.x) | ~arg_0.x);
    let var_2 = var_0;
    var_1 = var_2.b.zxy;
    return firstTrailingBit(u_input.a.xy);
}

fn func_1(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = -2147483647i;
    let var_1 = _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(arg_0.yw, ~func_2(vec3<i32>(1i, 1i, 1i), Struct_3(arg_0.wwz, Struct_1(784f, vec4<u32>(10997u, 4294967295u, 6890u, 29613u), true, u_input.a.x), false, vec4<f32>(-492f, 237f, -2519f, -1135f)))), vec2<u32>(u_input.a.x, max(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(arg_0, arg_0), ~vec4<u32>(arg_0.x, 1u, 1u, 4294967295u)), arg_0.x)), arg_0.ww & _wgslsmith_div_vec2_u32(vec2<u32>(reverseBits(u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 23365u, 26327u), arg_0)), u_input.a.yz));
    var_0 = _wgslsmith_add_i32(-28944i, 5731i);
    var_0 = firstTrailingBit(2147483647i ^ countOneBits(_wgslsmith_mult_i32(1i, select(-52199i, -10569i, true))));
    let var_2 = Struct_2(!(!any(vec3<bool>(true, false, false))), ~(~(vec4<i32>(-37159i, 7920i, 1i, -48922i) >> (~vec4<u32>(arg_0.x, arg_0.x, arg_0.x, u_input.a.x) % vec4<u32>(32u)))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1490f;
    var var_1 = func_1(vec4<u32>(41804u, 6701u, 15636u, u_input.a.x));
    let var_2 = Struct_2(true, ~(~vec4<i32>(2147483647i & var_1.b.x, -46937i, var_1.b.x, -var_1.b.x)));
    var var_3 = Struct_3(u_input.a, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(469f)) - _wgslsmith_f_op_f32(sign(-384f))) - 1771f), min(~(~vec4<u32>(u_input.a.x, u_input.a.x, 1u, 36153u)), reverseBits(countOneBits(vec4<u32>(50008u, u_input.a.x, u_input.a.x, u_input.a.x)))), false, 0u), !(27645u < (~u_input.a.x | max(u_input.a.x, 0u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-875f, _wgslsmith_f_op_f32(select(498f, _wgslsmith_f_op_f32(101f - -2349f), func_1(vec4<u32>(u_input.a.x, 34856u, 68608u, 43672u)).a)), _wgslsmith_f_op_f32(-1f), -1000f) * vec4<f32>(-2010f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(sign(230f))), _wgslsmith_f_op_f32(select(-582f, _wgslsmith_div_f32(421f, -409f), 30595u < u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1595f)) * 1390f))));
    var_1 = func_1(~var_3.b.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1122f))), vec4<i32>(54814i, var_1.b.x, _wgslsmith_sub_i32(~_wgslsmith_clamp_i32(var_2.b.x, var_1.b.x, var_1.b.x), -2147483647i), min(_wgslsmith_sub_i32(~var_1.b.x, ~var_1.b.x), -1i)), _wgslsmith_f_op_f32(f32(-1f) * -1944f), _wgslsmith_f_op_f32(552f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1330f))), -233f))));
}

