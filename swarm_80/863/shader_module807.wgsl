struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: u32,
    d: vec4<f32>,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 24065u;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_1(arg_0: Struct_4) -> f32 {
    global0 = 28660u;
    return -703f;
}

fn func_3(arg_0: bool) -> u32 {
    global0 = ~18351u;
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-553f - _wgslsmith_f_op_f32(146f + -1332f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1758f, 1908f) - _wgslsmith_f_op_f32(1916f * -1999f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(886f, 1476f)) * _wgslsmith_f_op_f32(floor(480f))) + _wgslsmith_f_op_f32(floor(1330f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(Struct_4(Struct_3(vec3<f32>(974f, -424f, -464f), Struct_2(Struct_1(true, u_input.a, 0u, vec2<i32>(-2147483647i, 48064i), -2263f)), 41052u, vec4<f32>(1000f, -676f, -1973f, 1424f), 0i)))))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * 499f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-778f, -748f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -375f)))), _wgslsmith_f_op_f32(-1f));
    var var_1 = var_0.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(420f)), var_0.x, 380f, _wgslsmith_div_f32(-893f, var_0.x))) - var_0);
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.x)), var_0.x, _wgslsmith_f_op_f32(step(var_2.x, -710f)))) + vec3<f32>(_wgslsmith_f_op_f32(sign(761f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, -2108f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_2(Struct_1(false, max(0i, abs(2147483647i)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 4294967295u)), ~vec2<i32>(u_input.a, -1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))))), 11445u, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1060f, 532f, 1418f, var_0.x), var_0)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, 357f, 1085f, 959f))))))), u_input.a >> (countOneBits(~(~18480u)) % 32u));
    return 0u;
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: bool, arg_3: bool) -> f32 {
    global0 = _wgslsmith_mod_u32(~(~func_3(any(vec4<bool>(arg_3, false, arg_0.a.a, true)))), 0u);
    global0 = ~arg_1;
    var var_0 = !select(vec4<bool>(false, all(select(vec2<bool>(arg_2, arg_0.a.a), vec2<bool>(false, arg_2), vec2<bool>(true, arg_3))), arg_0.a.a, arg_3), vec4<bool>(true, all(vec4<bool>(arg_2, arg_3, arg_2, arg_0.a.a)), arg_2, (arg_0.a.c != 4294967295u) && all(vec3<bool>(true, arg_3, arg_2))), !(!vec4<bool>(false, false, arg_2, arg_3)));
    global0 = 1u;
    var var_1 = vec4<bool>(var_0.x | !all(vec4<bool>(arg_0.a.a, arg_0.a.a, arg_3, arg_0.a.a)), all(vec2<bool>(true, true)), true, true);
    return _wgslsmith_f_op_f32(f32(-1f) * -1048f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(787f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_4(Struct_3(vec3<f32>(539f, -1187f, -1922f), Struct_2(Struct_1(false, 167i, 48759u, vec2<i32>(u_input.a, 2147483647i), 858f)), 55057u, vec4<f32>(-821f, -1660f, 421f, -595f), -29404i))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(false, -1i, 0u, vec2<i32>(-29130i, u_input.a), 297f)), _wgslsmith_dot_vec4_u32(vec4<u32>(51074u, 0u, 36166u, 28694u), vec4<u32>(0u, 1u, 4294967295u, 4294967295u)), u_input.a >= u_input.a, true))))), _wgslsmith_f_op_f32(select(1008f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(688f, -466f)))), true)));
    var var_1 = Struct_2(Struct_1(all(vec3<bool>(true, any(vec4<bool>(false, true, true, false)), all(vec3<bool>(true, true, true)))), u_input.a, firstTrailingBit(~0u) & 36020u, -(-vec2<i32>(u_input.a, -1i) | -vec2<i32>(-6986i, 7788i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(566f + 1833f), var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.e, var_0.zy, _wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.a, 66605i, var_1.a.d.x, var_1.a.b) | vec4<i32>(-28528i, -16515i, u_input.a, u_input.a)), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 2147483647i, 14662i, 2147483647i), vec4<i32>(var_1.a.d.x, -16211i, var_1.a.b, var_1.a.d.x)), -vec4<i32>(-1i, u_input.a, var_1.a.d.x, u_input.a))) << (countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.a.c, 4294967295u, 0u, 29142u) ^ vec4<u32>(15888u, var_1.a.c, var_1.a.c, var_1.a.c), select(vec4<u32>(1u, var_1.a.c, var_1.a.c, 12428u), vec4<u32>(var_1.a.c, var_1.a.c, 0u, var_1.a.c), var_1.a.a))) % vec4<u32>(32u)));
}

