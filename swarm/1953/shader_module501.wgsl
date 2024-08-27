struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9> = array<i32, 9>(-67385i, -12524i, -6159i, i32(-2147483648), -46217i, 2147483647i, 0i, -18835i, 14908i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_4) -> u32 {
    var var_0 = true;
    var_0 = true;
    var var_1 = u_input.a;
    var_0 = !select(false, u_input.a > (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 34404u), vec3<u32>(68810u, u_input.b, u_input.a)) | 1u), arg_1.c);
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-296f, -385f)))) - arg_0.b.a)));
    return 13250u;
}

fn func_3() -> vec3<f32> {
    global0 = array<i32, 9>();
    var var_0 = vec3<i32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(9237u, _wgslsmith_mult_u32(0u, u_input.c) ^ reverseBits(22019u)), 9u)], 1i, global0[_wgslsmith_index_u32(1u, 9u)]);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-179f, -1171f)), -768f, -1364f), vec3<f32>(-759f, -1822f, 280f))) * vec3<f32>(1f, -1711f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -728f), -599f)) - _wgslsmith_f_op_f32(153f - -1527f))));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: f32, arg_3: Struct_4) -> Struct_4 {
    var var_0 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1604f), arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1243f)))), Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2, arg_1.x, arg_2), vec3<f32>(-384f, arg_1.x, 693f)), _wgslsmith_f_op_vec3_f32(trunc(arg_1.zxx))))));
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.yzw - vec3<f32>(-710f, arg_3.b.a, arg_2))) + _wgslsmith_f_op_vec3_f32(func_3()))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_0.b.a)))));
    let var_1 = ~reverseBits(~(~_wgslsmith_add_vec2_u32(vec2<u32>(26174u, u_input.c), vec2<u32>(u_input.e, u_input.c))));
    var var_2 = var_0.b;
    let var_3 = ~1u | min(~(~0u), ~(0u >> (u_input.c % 32u)) >> (~_wgslsmith_mult_u32(4294967295u, u_input.a) % 32u));
    return arg_3;
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: vec2<i32>) -> vec2<i32> {
    global0 = array<i32, 9>();
    let var_0 = _wgslsmith_f_op_vec3_f32(func_3()).x;
    var var_1 = arg_0.c;
    let var_2 = Struct_2(Struct_1(vec3<f32>(-993f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b.a + var_0), -1413f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.a + 1285f) * var_0))), Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(select(1129f, -837f, false)), _wgslsmith_f_op_f32(-1434f * var_0), -243f), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-686f, -1770f, -2534f))))))));
    global0 = array<i32, 9>();
    return _wgslsmith_div_vec2_i32(~(vec2<i32>(-1i) * -vec2<i32>(-60123i, 1i)), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(~global0[_wgslsmith_index_u32(~func_1(Struct_4(-4026i, Struct_3(918f), false), Struct_4(-41617i, Struct_3(-878f), true)) | ~74311u, 9u)], Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2326f + 1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1060f, -554f))))), true);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.a), _wgslsmith_f_op_f32(select(-175f, _wgslsmith_f_op_f32(var_0.b.a + var_0.b.a), all(vec3<bool>(var_0.c, true, true)))), var_0.b.a) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-699f, var_0.b.a, var_0.b.a))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1169f, 934f, var_0.b.a) * vec3<f32>(-1052f, var_0.b.a, var_0.b.a)))))));
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(11771i, var_0.a), abs(vec2<i32>(-35729i, var_0.a))), _wgslsmith_mod_vec2_i32(func_4(func_2(vec4<bool>(var_0.c, false, false, var_0.c), vec4<f32>(1012f, var_0.b.a, 957f, 425f), var_1.a.x, Struct_4(global0[_wgslsmith_index_u32(0u, 9u)], Struct_3(var_0.b.a), var_0.c)), -1i, vec2<i32>(56946i, var_0.a)), -vec2<i32>(-25106i, -34916i))), ~2147483647i);
    var var_3 = u_input.e;
    global0 = array<i32, 9>();
    let var_4 = Struct_4(var_2 | 31658i, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-577f * _wgslsmith_f_op_f32(round(-747f))))), !all(vec2<bool>(!var_0.c, !var_0.c)));
    global0 = array<i32, 9>();
    var_0 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a.x))), -211f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1661f, -225f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-152f + var_1.a.x), var_4.b.a)) - vec4<f32>(_wgslsmith_f_op_f32(var_4.b.a + _wgslsmith_f_op_f32(-var_4.b.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_1.a.x)), _wgslsmith_f_op_f32(var_1.a.x + 936f))), -1258f)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(reverseBits(vec3<u32>(7584u, u_input.c, u_input.e))) & ~vec3<u32>(2650u, u_input.a, 97507u), vec3<u32>(_wgslsmith_clamp_u32(54319u, 30123u, u_input.a & u_input.e), _wgslsmith_add_u32(4294967295u, _wgslsmith_div_u32(69241u, u_input.e)), _wgslsmith_sub_u32(~u_input.e, firstTrailingBit(4294967295u)))), 9u)], abs(1u));
}

