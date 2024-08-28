struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-640f + _wgslsmith_div_f32(970f, -808f))))), Struct_1(firstLeadingBit(select(~2147483647i, -2147483647i, true)), any(vec4<bool>(true, true, true, true))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.a) + vec4<f32>(var_0.a, -301f, var_0.a, 207f))) - vec4<f32>(1707f, -464f, _wgslsmith_f_op_f32(var_0.a + var_0.a), var_0.a)), vec4<f32>(-1231f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a * 459f), var_0.a), var_0.a, var_0.a))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(var_0.a, -619f), _wgslsmith_div_f32(1000f, var_0.a), 1183f, _wgslsmith_f_op_f32(select(784f, -226f, var_0.b.b))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.a, 1937f, var_0.a) * vec4<f32>(-331f, -397f, var_0.a, -711f))))));
    var var_2 = Struct_3(var_0.b, var_0.b, var_0.b);
    var_2 = Struct_3(Struct_1(~abs(_wgslsmith_dot_vec3_i32(vec3<i32>(34379i, -1i, var_0.b.a), vec3<i32>(1i, var_0.b.a, var_2.c.a))), min(_wgslsmith_div_u32(1u, 4294967295u), ~38264u) == _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 36502u, 79674u), vec3<u32>(4294967295u, 1u, 1u)), reverseBits(1u))), Struct_1(~var_0.b.a, true), Struct_1(~u_input.a, var_0.b.b));
    var var_3 = true;
    return -5319i;
}

fn func_2(arg_0: Struct_3) -> u32 {
    let var_0 = ~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, func_3()), _wgslsmith_div_vec2_i32(select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(0i, -48778i), arg_0.c.b), vec2<i32>(-8239i, arg_0.b.a)) ^ vec2<i32>(arg_0.c.a, firstTrailingBit(u_input.a)));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-946f, -1167f))) - _wgslsmith_f_op_f32(f32(-1f) * -2463f))), arg_0.a);
    let var_2 = i32(-1i) * -min(i32(-1i) * -46770i, var_0.x);
    var var_3 = _wgslsmith_div_f32(-689f, _wgslsmith_f_op_f32(var_1.a * 677f));
    let var_4 = Struct_1(1i, var_1.b.b);
    return 98141u;
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, 1u), ~1u) ^ ~func_2(Struct_3(Struct_1(u_input.a, false), Struct_1(u_input.a, false), Struct_1(u_input.a, false))), select(20101u, ~32142u, false)), ~_wgslsmith_mod_vec2_u32(max(~vec2<u32>(0u, 67423u), ~vec2<u32>(16373u, 1u)), vec2<u32>(43425u, ~20405u)));
    let var_1 = Struct_1(14473i, !all(vec3<bool>(true, true, true)));
    let var_2 = ~0u != _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~min(vec2<u32>(var_0.x, 0u), vec2<u32>(var_0.x, 22045u)), ~(~var_0)), ~(select(0u, 9917u, false) | _wgslsmith_mult_u32(4294967295u, var_0.x)));
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-611f, -527f, -1223f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(763f, 1000f, 557f) - vec3<f32>(-1351f, -1758f, 1117f)))))));
    var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-808f, -1367f, var_3.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-286f, var_3.x, var_3.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, -727f, 1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, 1184f, -538f) * vec3<f32>(var_3.x, var_3.x, var_3.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, _wgslsmith_f_op_f32(var_3.x + var_3.x), _wgslsmith_f_op_f32(floor(var_3.x))))));
    return u_input.a;
}

fn func_4(arg_0: i32) -> Struct_2 {
    let var_0 = Struct_1(-6941i, true);
    var var_1 = Struct_3(Struct_1(arg_0, true), Struct_1(abs(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_0.a, -2147483647i, -21043i), vec4<i32>(2147483647i, u_input.a, 1i, var_0.a))), var_0.b), var_0);
    let var_2 = Struct_2(1f, var_0);
    return Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -652f), var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~1u;
    var_0 = ~_wgslsmith_add_u32(min(_wgslsmith_div_u32(45312u, _wgslsmith_sub_u32(60435u, 39430u)), ~(~4294967295u)), 6143u);
    var var_1 = -281f;
    let var_2 = func_4(~abs(func_1()));
    var var_3 = true;
    var_3 = any(vec2<bool>(var_2.b.a > u_input.a, !all(!vec3<bool>(var_2.b.b, var_2.b.b, false))));
    let var_4 = Struct_1(u_input.a, ~(select(19736u, 121857u, var_2.b.b) ^ 52413u) <= 1u);
    var var_5 = 695f;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(reverseBits(~1u)), _wgslsmith_mult_u32(~35308u, 1u), _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(40214u, 61552u), max(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 1u))), _wgslsmith_dot_vec3_u32(min(vec3<u32>(4294967295u, 42960u, 12578u), ~vec3<u32>(80259u, 19304u, 1u)), ~vec3<u32>(1u, 1u, 1u))), vec4<u32>(1u, 1u, 1u, 1u) >> ((select(vec4<u32>(49515u, 4294967295u, 4294967295u, 91121u), vec4<u32>(1u, 1u, 1u, 1u), !vec4<bool>(false, var_2.b.b, var_2.b.b, var_2.b.b)) | ~select(vec4<u32>(71923u, 72718u, 4294967295u, 52021u), vec4<u32>(4294967295u, 1u, 0u, 4294967295u), vec4<bool>(false, false, true, true))) % vec4<u32>(32u)));
}

