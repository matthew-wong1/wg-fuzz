struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_1() -> f32 {
    var var_0 = -u_input.b.x;
    var_0 = ~u_input.b.x;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(980f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-272f + 401f)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1161f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1631f))))));
    var_0 = ~19681i;
    var_0 = 58017i;
    return -1464f;
}

fn func_2(arg_0: bool, arg_1: i32) -> f32 {
    return _wgslsmith_f_op_f32(-336f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1013f)) * _wgslsmith_div_f32(-513f, 1047f)) + _wgslsmith_f_op_f32(func_1())) * 839f));
}

fn func_3() -> f32 {
    let var_0 = !(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, false), false))));
    let var_1 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1356f, 1257f, 541f, 1125f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(264f, -597f, -1509f, -765f)))), -632f), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2240f), _wgslsmith_f_op_f32(ceil(498f)), _wgslsmith_f_op_f32(ceil(-671f)), -548f), _wgslsmith_f_op_f32(562f * _wgslsmith_f_op_f32(step(412f, -202f)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(541f, -409f, -354f, 661f))), -238f)), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(106f, 1868f, 1000f, 927f)), -1156f), Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(332f, -1549f, -2307f, -669f), vec4<f32>(253f, -1639f, -1217f, 883f), true)), 1251f), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1308f, 912f, -428f, -167f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1220f, -216f, 2237f, 2580f) - vec4<f32>(-904f, -1077f, 1095f, 802f))), -749f)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1833f - -1000f))), -764f, _wgslsmith_f_op_f32(func_1()), 1373f), _wgslsmith_f_op_f32(-1323f - -340f)), _wgslsmith_add_vec2_u32(vec2<u32>(abs(~4294967295u), _wgslsmith_dot_vec3_u32(u_input.c.xyy ^ u_input.c.wxy, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.c.x, 45263u), vec3<u32>(u_input.c.x, u_input.c.x, u_input.a.x)))), u_input.c.wz), firstTrailingBit(vec2<i32>(1i, -_wgslsmith_sub_i32(1i, 0i))));
    var var_2 = -1000f;
    var var_3 = var_1;
    var_2 = _wgslsmith_f_op_f32(floor(-1734f));
    return -725f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-810f, -1864f, -867f, -248f) * vec4<f32>(457f, -502f, 361f, 623f)), vec4<f32>(_wgslsmith_div_f32(-531f, -126f), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(max(-431f, -842f)), -2073f))), vec4<f32>(_wgslsmith_f_op_f32(637f + -1000f), _wgslsmith_f_op_f32(ceil(-1012f)), 267f, _wgslsmith_f_op_f32(f32(-1f) * -184f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -418f) - _wgslsmith_f_op_f32(func_2(true, 655i)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -597f)))));
    var var_1 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(var_0.a * var_0.a), -1229f), var_0, Struct_1(vec4<f32>(var_0.b, _wgslsmith_f_op_f32(f32(-1f) * -306f), -510f, -424f), var_0.a.x)), Struct_2(Struct_1(vec4<f32>(var_0.b, _wgslsmith_f_op_f32(exp2(var_0.a.x)), 1f, -1000f), var_0.b), Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a), -829f), var_0), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(var_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_0.b, var_0.a.x, -395f)))), vec4<f32>(var_0.b, 313f, var_0.b, _wgslsmith_f_op_f32(func_3())), vec4<bool>(true, true, true, true))), var_0.b), abs(_wgslsmith_mod_vec2_u32(u_input.c.yy, u_input.c.wx & u_input.c.wz) & ~(vec2<u32>(u_input.c.x, u_input.a.x) << (vec2<u32>(71301u, u_input.c.x) % vec2<u32>(32u)))), -(_wgslsmith_add_vec2_i32(u_input.b, -vec2<i32>(1i, -28983i)) ^ (u_input.b >> (select(u_input.a.zz, vec2<u32>(1u, 24876u), vec2<bool>(true, false)) % vec2<u32>(32u)))));
    var var_2 = var_1.a;
    var var_3 = Struct_4(Struct_2(var_1.c, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.a.a.x), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-var_2.c.a.x), _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(sign(1957f))), var_1.c), var_1.b, Struct_1(var_2.c.a, 1000f), vec2<u32>(~u_input.a.x, 1u), -(u_input.b ^ vec2<i32>(var_1.e.x, _wgslsmith_mult_i32(749i, var_1.e.x))));
    var_3 = Struct_4(Struct_2(var_3.a.b, var_2.a, var_1.c), Struct_2(var_3.a.b, var_1.b.a, Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(908f, -531f, -2083f, -708f), vec4<f32>(-1062f, 1037f, -1471f, var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.c.b, 1104f)))), Struct_1(vec4<f32>(-560f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -427f), _wgslsmith_f_op_f32(trunc(1901f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1037f) + _wgslsmith_f_op_f32(floor(var_3.c.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-103f + var_3.a.b.a.x) + var_2.c.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.c.a.x - _wgslsmith_f_op_f32(step(1413f, var_0.a.x)))))), ~(~(~var_3.d)), -var_1.e);
    var_2 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~firstLeadingBit(u_input.c.x)), var_1.d.x, min(0u, 4294967295u), _wgslsmith_mod_u32(reverseBits(select(var_1.d.x, u_input.c.x, false)), select(_wgslsmith_add_u32(76663u, 36661u), ~var_3.d.x, false))));
}

