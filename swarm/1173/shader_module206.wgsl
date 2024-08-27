struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<u32>, 13> = array<vec2<u32>, 13>(vec2<u32>(49346u, 20887u), vec2<u32>(4294967295u, 1u), vec2<u32>(68163u, 61289u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 22848u), vec2<u32>(35258u, 1u), vec2<u32>(0u, 58085u), vec2<u32>(1u, 22755u), vec2<u32>(41537u, 108310u), vec2<u32>(0u, 39772u), vec2<u32>(5701u, 68967u), vec2<u32>(113049u, 0u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec3<u32> {
    global1 = array<vec2<u32>, 13>();
    let var_0 = true;
    var var_1 = Struct_1(var_0, _wgslsmith_mod_vec4_u32(vec4<u32>(firstTrailingBit(0u), u_input.c, 1u, abs(u_input.c)) << (~vec4<u32>(u_input.c, 17873u, 40967u, 17279u) % vec4<u32>(32u)), reverseBits(firstTrailingBit(vec4<u32>(u_input.c, 27459u, 0u, 1u)) & (vec4<u32>(0u, u_input.c, 41054u, u_input.c) & vec4<u32>(4294967295u, 1u, 4294967295u, u_input.c)))));
    global0 = var_1.a;
    var var_2 = u_input.a.yx;
    return var_1.b.xzw;
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    let var_0 = !(!(!vec4<bool>(false, all(vec3<bool>(true, true, true)), u_input.a.x != -37427i, all(vec3<bool>(true, false, false)))));
    let var_1 = true;
    var var_2 = _wgslsmith_mult_vec3_u32(func_3(), reverseBits(~firstTrailingBit(~vec3<u32>(u_input.c, u_input.c, u_input.c))));
    var var_3 = var_0;
    var var_4 = ~u_input.a.x;
    return Struct_2(arg_0.a);
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: Struct_2) -> bool {
    let var_0 = _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(arg_0, func_3().x, ~(~45296u), arg_0)), ~(~vec4<u32>(u_input.c, u_input.c, arg_0, arg_0) | ~abs(vec4<u32>(u_input.c, 35365u, u_input.c, arg_0))));
    global0 = true;
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_3.a.x, _wgslsmith_f_op_f32(step(932f, arg_3.a.x))))));
    let var_2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_3.a.x)), _wgslsmith_div_f32(var_1.a.x, -1290f)), -1000f);
    global1 = array<vec2<u32>, 13>();
    return !all(vec3<bool>((true && arg_1.x) & all(vec4<bool>(arg_1.x, arg_1.x, false, false)), true, !arg_1.x));
}

fn func_1() -> StorageBuffer {
    global1 = array<vec2<u32>, 13>();
    let var_0 = -u_input.a;
    global1 = array<vec2<u32>, 13>();
    global0 = !func_4(~23877u, !vec3<bool>(all(vec2<bool>(true, false)), true, any(vec4<bool>(true, true, false, true))), vec2<i32>(-u_input.a.x, var_0.x), func_2(Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(205f, -965f) - vec2<f32>(-1185f, -1131f)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1671f) - _wgslsmith_f_op_f32(sign(-126f))) + -1000f)) <= -220f;
    return StorageBuffer(~0u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1185f, 1953f)) * func_2(Struct_2(vec2<f32>(2827f, 617f))).a) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(244f, -611f) - vec2<f32>(-1793f, 857f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 738f) * vec2<f32>(-452f, -1000f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(872f, 397f))))), any(vec3<bool>(true, true, true))))), 36842u, select(select(~(vec4<i32>(var_0.x, u_input.b, -27520i, -29263i) | vec4<i32>(u_input.a.x, u_input.a.x, -1i, -47997i)), _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(0i, var_0.x, var_0.x, var_0.x), vec4<i32>(var_0.x, u_input.b, var_0.x, u_input.a.x)), ~vec4<i32>(u_input.a.x, 1i, u_input.b, u_input.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<i32>(u_input.b, -2481i, u_input.b, -6081i))), false), reverseBits(vec4<i32>(i32(-1i) * -28781i, -34990i ^ var_0.x, -1i, countOneBits(u_input.a.x))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(637f + 1500f), 443f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -2164f)))), vec2<f32>(1f, 1f))), vec2<f32>(_wgslsmith_f_op_f32(min(1f, -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(min(-677f, 303f)), true)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1240f + -1000f)))), (_wgslsmith_dot_vec2_i32(u_input.a.yy, u_input.a.yz) > _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, 15219i, 2147483647i), vec4<i32>(29215i, u_input.a.x, -1i, u_input.a.x)), ~vec4<i32>(-1i, 0i, u_input.b, 91732i))) || select(true, (i32(-1i) * -2147483647i) <= -u_input.a.x, true)));
    let var_1 = Struct_3(u_input.a.x);
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)))), _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(round(380f)), all(vec3<bool>(true, true, true))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1165f, -1003f)))));
    global1 = array<vec2<u32>, 13>();
    let var_3 = Struct_2(vec2<f32>(var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1055f * _wgslsmith_div_f32(746f, var_2.a.x)))));
    var_2 = var_3;
    let x = u_input.a;
    s_output = func_1();
}

