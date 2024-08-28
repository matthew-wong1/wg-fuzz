struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec2<bool>) -> f32 {
    var var_0 = -624f;
    let var_1 = Struct_1(abs(u_input.a.x), vec3<f32>(arg_2.c, 1000f, 484f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.c, 628f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-284f)) + -293f), arg_2.c))));
    return var_1.b.x;
}

fn func_3(arg_0: bool, arg_1: vec4<i32>) -> vec3<f32> {
    var var_0 = Struct_1(u_input.d.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -266f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -734f) * -537f), _wgslsmith_f_op_f32(f32(-1f) * -931f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(arg_1, !vec4<bool>(arg_0, true, true, true), Struct_1(u_input.b, vec3<f32>(1503f, -699f, 1000f), -394f), vec2<bool>(true, false)))))));
    var var_1 = Struct_1(1u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_0.b, vec3<f32>(var_0.b.x, 1359f, -2352f))) - _wgslsmith_div_vec3_f32(var_0.b, vec3<f32>(-1008f, 1702f, var_0.c))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.x), -389f, -308f), vec3<bool>(arg_0 & arg_0, arg_0, true))), var_0.b), _wgslsmith_f_op_f32(abs(-298f)));
    let var_2 = _wgslsmith_mult_vec4_u32(firstTrailingBit(~countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.a, 65033u, 9762u, u_input.b), vec4<u32>(var_1.a, var_0.a, 3403u, 1u)))), reverseBits(u_input.d));
    var var_3 = countOneBits(max(abs(~(~var_2.wwx)), u_input.d.xzz));
    var var_4 = Struct_1(_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, var_2.x, 0u, 11301u), abs(var_2)) & (reverseBits(var_1.a) << (61208u % 32u))), vec3<f32>(var_0.b.x, -683f, _wgslsmith_div_f32(var_1.c, _wgslsmith_f_op_f32(f32(-1f) * -376f))), -565f);
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b)), vec3<f32>(var_4.c, var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-458f + _wgslsmith_f_op_f32(select(var_1.b.x, -1000f, arg_0)))))));
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<bool>(u_input.a.x == ~u_input.b, true, any(!vec4<bool>(false, u_input.a.x != u_input.d.x, all(vec2<bool>(false, false)), select(true, false, true))));
    var var_1 = ~_wgslsmith_div_i32(2147483647i, _wgslsmith_clamp_i32(-1i, -_wgslsmith_add_i32(2147483647i, -1i), ~2147483647i));
    let var_2 = Struct_1(1u, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 995f) + 482f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1930f + 875f), _wgslsmith_f_op_f32(f32(-1f) * -375f)), _wgslsmith_f_op_f32(-1f)) * _wgslsmith_f_op_vec3_f32(func_3(false, -(vec4<i32>(u_input.e, 0i, 1i, -1i) & vec4<i32>(u_input.c.x, u_input.c.x, 56507i, -1i))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-152f * -827f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_3(true, vec4<i32>(-90935i, -2147483647i, -2147483647i, u_input.e))).x, 241f) + _wgslsmith_f_op_f32(trunc(1f)))));
    let var_3 = var_2;
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -2078f);
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = u_input.c;
    let var_1 = 0u;
    global0 = arg_2.c;
    var var_2 = var_0.x;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.c))) * 1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2().c)) * arg_0.c));
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_1(arg_2.a, _wgslsmith_f_op_vec3_f32(select(func_2().b, _wgslsmith_f_op_vec3_f32(-func_4(arg_0, func_2(), func_4(arg_0, Struct_1(0u, vec3<f32>(-1000f, 135f, arg_2.b.x), 498f), arg_2)).b), ~4294967295u < u_input.d.x)), _wgslsmith_f_op_f32(-arg_0.b.x));
    let var_1 = func_2();
    global0 = var_0.c;
    return 121f;
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> StorageBuffer {
    let var_0 = arg_2;
    var var_1 = func_2();
    let var_2 = u_input.d;
    let var_3 = ~(~vec3<u32>(~1u, ~_wgslsmith_mod_u32(u_input.d.x, 0u), arg_0.a ^ 0u));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(-920f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - _wgslsmith_div_f32(var_0.b.x, 208f)), 1046f, _wgslsmith_f_op_f32(1061f + _wgslsmith_f_op_f32(525f + arg_0.c))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1102f, arg_0.c, arg_2.c, 101f)))), vec4<f32>(_wgslsmith_div_f32(1182f, arg_2.b.x), _wgslsmith_f_op_f32(func_1(vec4<i32>(arg_1, arg_1, -17031i, -2147483647i), vec4<bool>(true, false, true, true), arg_2, vec2<bool>(false, false))), arg_2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -2380f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(var_1.b.x)), var_0.b.x, -406f, _wgslsmith_f_op_f32(f32(-1f) * -656f)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(-150f, var_0.b.x), _wgslsmith_f_op_f32(arg_3 * arg_3), _wgslsmith_div_f32(-674f, var_0.c), 201f)))), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(Struct_1(45212u, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-201f * 414f)), -3500f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2186f)) - -742f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -600f))))), -u_input.e, Struct_1(u_input.a.x, vec3<f32>(-273f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(215f * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(func_1(vec4<i32>(45583i, -2061i, -1i, u_input.e), vec4<bool>(false, true, true, true), Struct_1(u_input.b, vec3<f32>(-263f, 1000f, 1409f), 906f), vec2<bool>(true, false))))), _wgslsmith_f_op_f32(func_5(func_4(Struct_1(u_input.d.x, vec3<f32>(-1491f, 172f, -1555f), -1517f), func_2(), func_2()), ~(~vec2<u32>(u_input.b, 4294967295u)), Struct_1(_wgslsmith_mod_u32(1u, 4294967295u), _wgslsmith_f_op_vec3_f32(func_3(true, vec4<i32>(u_input.c.x, u_input.e, u_input.c.x, u_input.c.x))), _wgslsmith_f_op_f32(-1688f + -1321f))))), -1000f);
}

