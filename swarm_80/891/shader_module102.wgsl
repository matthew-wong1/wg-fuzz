struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_2) -> vec4<f32> {
    let var_0 = ~(~(4294967295u << (u_input.c % 32u)));
    return _wgslsmith_f_op_vec4_f32(-arg_0.b.b);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> f32 {
    return -680f;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_mod_vec3_i32(firstLeadingBit(~firstLeadingBit(u_input.d)), vec3<i32>(_wgslsmith_dot_vec4_i32(max(vec4<i32>(2147483647i, u_input.d.x, u_input.d.x, u_input.d.x), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 46439i)), -vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 61062i)), ~u_input.d.x, -1i));
    return Struct_2(arg_0, arg_0);
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = vec2<bool>(false & (true || (_wgslsmith_clamp_u32(u_input.e.x, 4294967295u, arg_0) != u_input.e.x)), true);
    var var_1 = func_4(Struct_1(~u_input.e.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(Struct_2(Struct_1(u_input.c, vec4<f32>(-320f, 1253f, -189f, 1237f), 1047f), Struct_1(72783u, vec4<f32>(2056f, -501f, 341f, 246f), -321f)))) * vec4<f32>(1491f, -511f, 409f, 103f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.e.wy, Struct_2(Struct_1(1u, vec4<f32>(-1509f, 445f, 336f, -267f), -1354f), Struct_1(31716u, vec4<f32>(-1163f, 1211f, -347f, -1655f), -1720f)), var_0.x, Struct_2(Struct_1(arg_0, vec4<f32>(852f, -304f, 189f, 724f), -722f), Struct_1(u_input.b, vec4<f32>(1580f, -717f, -1919f, -875f), -916f)))) - _wgslsmith_f_op_f32(min(275f, 722f))), 1000f))), 0u, Struct_1(max(arg_0 | u_input.e.x, _wgslsmith_sub_u32(82129u, arg_0)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(711f, -534f, -1418f, -796f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-929f, 475f, 472f, -427f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1614f, 252f, 2113f, 1000f)))), select(vec4<bool>(true, false, false, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(false, false, false, var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1115f, 615f) - _wgslsmith_div_f32(1022f, 1022f)))), Struct_1(1u, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-668f, 584f, -681f, 109f) - vec4<f32>(172f, 1145f, -1019f, -155f))))), _wgslsmith_f_op_f32(func_3(u_input.e.xz, Struct_2(Struct_1(arg_0, vec4<f32>(-877f, -840f, -429f, -1757f), 383f), Struct_1(arg_0, vec4<f32>(-1453f, -410f, -1000f, 1000f), -1616f)), true | all(vec4<bool>(true, false, var_0.x, true)), Struct_2(Struct_1(u_input.b, vec4<f32>(-682f, 923f, 2062f, 716f), 1433f), Struct_1(arg_0, vec4<f32>(-292f, -1000f, 462f, -908f), -732f))))));
    var_0 = select(vec2<bool>(_wgslsmith_dot_vec4_u32(u_input.e, firstLeadingBit(vec4<u32>(var_1.a.a, arg_0, 29098u, 0u))) == min(arg_0, ~1u), false & select(true, !var_0.x, false)), !select(vec2<bool>(false | var_0.x, !var_0.x), vec2<bool>(false, var_0.x), !(u_input.b <= 0u)), true);
    var var_2 = select(vec2<bool>(var_0.x, !(!var_0.x)), !vec2<bool>(var_0.x, any(vec3<bool>(var_0.x, true, true))), var_0.x);
    let var_3 = Struct_2(var_1.b, Struct_1(~max(~var_1.b.a, 13481u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_2(Struct_2(Struct_1(1u, var_1.a.b, var_1.b.c), Struct_1(14038u, vec4<f32>(var_1.b.b.x, -599f, var_1.a.b.x, var_1.b.c), 129f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.b.x, var_1.b.c, var_1.a.c, -804f) * var_1.b.b)), !vec4<bool>(var_2.x, var_0.x, var_0.x, var_0.x))), -1000f));
    return var_1.b;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_2) -> f32 {
    let var_0 = Struct_1(37484u, arg_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.a.c, _wgslsmith_f_op_f32(abs(arg_3.b.c))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c))) + 109f));
    let var_1 = false;
    let var_2 = func_1(1u);
    let var_3 = Struct_1(firstLeadingBit(~arg_1.a ^ min(u_input.a, 0u)) >> ((func_4(Struct_1(arg_1.a, arg_3.a.b, var_2.c), 4294967295u, var_0, Struct_1(23838u, arg_0.b, 496f)).a.a << (u_input.b % 32u)) % 32u), _wgslsmith_f_op_vec4_f32(select(func_4(Struct_1(~38432u, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-491f, arg_1.b.x, 1920f, 1552f))), 408f), 9561u, var_0, arg_3.b).a.b, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -527f), _wgslsmith_f_op_f32(var_0.b.x - var_0.b.x), _wgslsmith_f_op_f32(trunc(arg_1.b.x)), _wgslsmith_div_f32(arg_0.b.x, arg_0.b.x)))), vec4<bool>(false, var_0.b.x < _wgslsmith_f_op_f32(trunc(1694f)), !all(vec3<bool>(var_1, true, var_1)), true))), _wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(-var_0.b.x)));
    var var_4 = Struct_1(1u, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(arg_3.b.b - vec4<f32>(_wgslsmith_f_op_f32(var_3.c + arg_1.c), -1082f, _wgslsmith_f_op_f32(step(arg_1.c, var_0.b.x)), 1368f)))), var_2.b.x);
    return _wgslsmith_f_op_f32(sign(-178f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~u_input.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(939f, _wgslsmith_f_op_f32(round(-1238f)), 336f, _wgslsmith_f_op_f32(max(-1543f, -1252f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -620f), _wgslsmith_f_op_f32(max(580f, -770f)), 1319f, _wgslsmith_f_op_f32(max(-438f, -1524f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1847f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -645f) + _wgslsmith_f_op_f32(trunc(525f)))), _wgslsmith_f_op_f32(func_5(func_1(u_input.b), Struct_1(~1u, vec4<f32>(2517f, -298f, 753f, 1832f), func_1(4294967295u).c), _wgslsmith_mod_i32(u_input.d.x, _wgslsmith_add_i32(u_input.d.x, 2147483647i)), func_4(func_1(u_input.c), ~u_input.a, func_1(u_input.e.x), func_1(0u)))))));
    let var_1 = Struct_2(Struct_1(7814u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b))), var_0.b.x), var_0);
    let var_2 = -(~(~vec2<i32>(-2147483647i, abs(u_input.d.x))));
    var var_3 = ~select(0u, ~_wgslsmith_div_u32(_wgslsmith_sub_u32(16630u, 0u), 49993u), all(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, true), vec2<bool>(true, true))));
    var_3 = var_1.b.a;
    let var_4 = var_1.b.c != var_1.b.c;
    var_3 = func_4(var_1.a, 0u, func_1(33314u), var_1.a).b.a;
    let x = u_input.a;
    s_output = StorageBuffer(func_4(var_1.b, 45072u, func_1(~4294967295u), var_0).a.b.x, var_2.x, ~var_1.a.a);
}

