struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec4<i32>(60049i, 15369i, -1i, -1274i), 4294967295u, -37506i, Struct_1(i32(-2147483648))), Struct_2(vec4<i32>(-1i, 1i, i32(-2147483648), -1i), 4294967295u, 26022i, Struct_1(i32(-2147483648))), Struct_2(vec4<i32>(0i, i32(-2147483648), 880i, 43718i), 0u, 0i, Struct_1(-7205i)), Struct_2(vec4<i32>(23289i, 22576i, -1i, -1i), 4294967295u, 56170i, Struct_1(17020i)));

var<private> global1: vec3<i32> = vec3<i32>(0i, -1i, 0i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> vec3<i32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1526f - 2349f) - _wgslsmith_f_op_f32(round(-393f))))), _wgslsmith_f_op_f32(f32(-1f) * -738f), _wgslsmith_div_f32(1048f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(472f, 122f))), 611f))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1078f);
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, 395f, var_0.x))), vec3<f32>(-1236f, _wgslsmith_f_op_f32(-606f * -174f), 166f))))));
    var_2 = _wgslsmith_f_op_vec3_f32(trunc(var_0));
    global1 = u_input.d;
    return ~u_input.d;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(global1.x);
    global1 = (max(u_input.d, vec3<i32>(-global1.x, u_input.d.x, 1i)) ^ ~u_input.d) | func_3();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -393f), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -680f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1004f, -1353f, -1408f), vec3<f32>(176f, 911f, 641f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(468f, -724f, -848f))))));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_1.x)), var_1.x, -575f >= var_1.x)), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.x)) + _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * var_1.x) * _wgslsmith_f_op_f32(-543f * var_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, 314f) + vec4<f32>(var_1.x, var_1.x, var_1.x, -858f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 793f, var_1.x) + vec4<f32>(var_1.x, 1600f, -409f, 1142f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, -804f) * vec4<f32>(var_1.x, 1128f, var_1.x, -496f))))));
    global0 = array<Struct_2, 4>();
    return var_0;
}

fn func_1() -> vec3<i32> {
    var var_0 = Struct_2(firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec2_i32(global1.yy, u_input.d.yz), u_input.d.x, _wgslsmith_div_i32(firstTrailingBit(-46240i), -global1.x), select(~(-6789i), -2147483647i, true))), _wgslsmith_mult_u32(~17685u, u_input.a), i32(-1i) * -(~u_input.d.x), Struct_1(-2147483647i));
    let var_1 = var_0.a;
    var var_2 = func_2();
    return _wgslsmith_add_vec3_i32(firstTrailingBit(-var_0.a.zzy), var_0.a.xww);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(-u_input.d, _wgslsmith_mult_vec3_i32(func_1(), vec3<i32>(global1.x, global1.x, 2147483647i) >> (vec3<u32>(u_input.b, 86162u, 47796u) % vec3<u32>(32u)))), vec3<i32>(countOneBits(u_input.d.x) << (u_input.e.x % 32u), i32(-1i) * -49505i, global1.x));
    let var_0 = select(abs(max(firstLeadingBit(vec4<i32>(global1.x, u_input.d.x, global1.x, -4418i)), countOneBits(vec4<i32>(-31221i, u_input.d.x, -2147483647i, 2147483647i)) >> (select(vec4<u32>(1u, u_input.b, 7348u, 12959u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.e.x, 4294967295u), vec4<bool>(false, false, true, true)) % vec4<u32>(32u)))), ~abs(firstTrailingBit(vec4<i32>(u_input.d.x, 10077i, 0i, 9081i))), select(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), select(false, false, false)), vec4<bool>(true | select(false, false, false), all(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true)), true), vec4<bool>(true, true, true, true)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(262f + _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -399f), -616f)))), 206f, -1144f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1585f - 1697f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-424f)) - _wgslsmith_f_op_f32(min(var_1.x, 2108f))), _wgslsmith_f_op_f32(-var_1.x), -283f, var_1.x), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(-178f + var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x))), _wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(step(var_1.x, -1071f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) * _wgslsmith_f_op_f32(abs(var_1.x))))), u_input.e.zy | vec2<u32>(~u_input.a, (0u & u_input.e.x) & 41259u), u_input.b, vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(-var_0, vec4<i32>(var_0.x, 10484i, var_0.x, var_0.x)), var_0), ~(-(~u_input.d.x))), -15743i);
}

