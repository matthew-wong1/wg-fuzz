struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<i32>,
    d: vec2<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, 2147483647i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_1) -> vec2<bool> {
    global0 = arg_2;
    var var_0 = !vec4<bool>(arg_2.a, false, !any(select(vec4<bool>(arg_1, false, true, true), vec4<bool>(arg_2.a, arg_2.a, arg_1, global0.a), false)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-511f)), _wgslsmith_f_op_f32(f32(-1f) * -1086f))) != 245f);
    var_0 = !vec4<bool>(arg_2.a, _wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(32947u, u_input.d, 1u), vec3<u32>(0u, 1737u, u_input.d))) <= _wgslsmith_dot_vec4_u32(abs(vec4<u32>(40623u, u_input.a, u_input.d, u_input.d)), vec4<u32>(28786u, u_input.a, 79369u, u_input.d)), !var_0.x, false);
    var_0 = vec4<bool>(select(true, !all(select(vec4<bool>(arg_1, arg_2.a, false, false), vec4<bool>(global0.a, arg_2.a, true, var_0.x), vec4<bool>(true, global0.a, false, var_0.x))), true), !all(var_0.wxy), select(arg_2.a, any(vec3<bool>(true, -2699i >= u_input.c.x, arg_1)), global0.a != true), true);
    var var_1 = Struct_1(arg_2.a, _wgslsmith_add_i32(_wgslsmith_mod_i32(61990i | global0.b, reverseBits(firstTrailingBit(-2147483647i))), 0i));
    return select(!(!select(!vec2<bool>(true, arg_1), !var_0.zz, false)), var_0.xz, any(vec3<bool>(true, !var_1.a, false)));
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(true, -951i);
    var var_0 = Struct_2(Struct_1(1303f <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1670f - 640f), 1f)), -1i), Struct_1(!any(func_3(u_input.c, global0.a, Struct_1(true, 1i))), ~(-25055i | -global0.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_div_vec4_f32(vec4<f32>(-1702f, 853f, 206f, -2182f), vec4<f32>(-543f, 1625f, 833f, -322f)))), vec4<f32>(_wgslsmith_f_op_f32(-838f * -747f), 182f, -1239f, _wgslsmith_f_op_f32(f32(-1f) * -981f))))), Struct_1(global0.a, _wgslsmith_add_i32(global0.b << (24431u % 32u), _wgslsmith_div_i32(5493i, u_input.c.x)) >> (select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 4294967295u, 1u), vec4<u32>(1u, 4294967295u, u_input.b, u_input.b)), 29437u, false) % 32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(ceil(638f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-613f + 249f)))))));
    global0 = var_0.b;
    let var_1 = !select(!vec4<bool>(global0.a, global0.a | var_0.d.a, any(vec3<bool>(var_0.b.a, global0.a, var_0.a.a)), any(vec4<bool>(global0.a, true, var_0.b.a, var_0.d.a))), vec4<bool>(true, func_3(vec2<i32>(-16289i, var_0.d.b), global0.a, Struct_1(var_0.d.a, -2147483647i)).x, !(!var_0.b.a), true), !(!global0.a));
    global0 = Struct_1(any(var_1.zzw), _wgslsmith_mult_i32(u_input.c.x, countOneBits(-var_0.a.b) << (select(0u, countOneBits(4294967295u), true) % 32u)));
    return var_0.a;
}

fn func_1() -> Struct_2 {
    var var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-371f)))), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(140f, 391f))) - 169f)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-961f, 556f) * vec2<f32>(-1066f, var_1.x)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(314f, var_1.x) * vec2<f32>(var_1.x, -403f)), var_1.zz, false))))));
    var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.yy - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_1.zx)) * vec2<f32>(-1080f, 985f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1428f, var_1.x) - vec2<f32>(var_1.x, 440f)))), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(627f, var_2.x)))))), _wgslsmith_f_op_f32(1187f + -1000f))));
    var_0 = func_2();
    return Struct_2(Struct_1(any(select(vec3<bool>(false, true, var_0.a), !vec3<bool>(global0.a, global0.a, true), select(vec3<bool>(false, global0.a, var_0.a), vec3<bool>(global0.a, true, global0.a), global0.a))), select(firstTrailingBit(31922i), -1284i, _wgslsmith_f_op_f32(-var_1.x) > var_1.x)), Struct_1(true, global0.b), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -804f, 379f, var_1.x) - vec4<f32>(1000f, var_2.x, -906f, 1285f)))))), func_2(), var_2.x);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: Struct_2) -> Struct_1 {
    return func_1().a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(), func_1(), vec4<i32>(23267i, func_1().b.b, (_wgslsmith_add_i32(global0.b, u_input.c.x) & max(u_input.c.x, global0.b)) ^ global0.b, 2147483647i), Struct_2(func_2(), Struct_1(func_2().a, global0.b), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1064f, -226f, 1563f, 379f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(612f, 851f, 641f, -1253f), vec4<f32>(-792f, -1107f, 500f, 453f), true))))), Struct_1(global0.a, -41075i), 1f));
    let var_1 = Struct_3(Struct_2(Struct_1(global0.a, var_0.b), Struct_1(global0.a, global0.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(164f, -1523f, 513f, 1440f)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 742f, 588f, 1437f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1048f, 818f, -903f, 922f), vec4<f32>(870f, 313f, 1000f, 1831f), false))))), func_1().a, 993f), func_4(func_1(), func_1(), ~(-(vec4<i32>(27969i, global0.b, 1i, 0i) ^ vec4<i32>(u_input.c.x, 1i, var_0.b, 2147483647i))), Struct_2(Struct_1(global0.a, 1i), Struct_1(!global0.a, -43666i), vec4<f32>(-1576f, -1737f, _wgslsmith_f_op_f32(-247f * -807f), 1000f), Struct_1(false, global0.b), -2237f)), ~(vec3<i32>(var_0.b, u_input.c.x, 29765i) & vec3<i32>(1i, u_input.c.x, var_0.b)) >> (_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, u_input.d, 0u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 45332u, 14101u), vec3<u32>(4294967295u, 92687u, 35734u))), min(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, u_input.b, 0u), vec3<u32>(7783u, u_input.a, u_input.a)), abs(vec3<u32>(u_input.a, u_input.a, u_input.b)))) % vec3<u32>(32u)), vec2<i32>(~(_wgslsmith_mult_i32(4222i, global0.b) | (-1i >> (u_input.b % 32u))), ~(~2147483647i)), func_1());
    let var_2 = _wgslsmith_sub_vec4_i32(abs(vec4<i32>(global0.b, firstTrailingBit(0i), -2147483647i, reverseBits(1i)) >> (~firstTrailingBit(vec4<u32>(1u, u_input.d, u_input.b, u_input.b)) % vec4<u32>(32u))), countOneBits(countOneBits(vec4<i32>(u_input.c.x, -1i, var_1.e.a.b, -15314i) >> (vec4<u32>(0u, u_input.d, u_input.b, 47259u) % vec4<u32>(32u)))));
    let var_3 = Struct_2(Struct_1(!(var_2.x <= _wgslsmith_mult_i32(-58628i, 1i)), -1i), func_1().d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_1.e.c, vec4<f32>(-165f, -168f, var_1.a.c.x, var_1.a.e)))), func_1().a, _wgslsmith_f_op_f32(var_1.a.e - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.e.e + var_1.e.e))) + var_1.e.e)));
    let var_4 = func_1().a;
    var_0 = Struct_1(all(select(vec4<bool>(global0.a, all(vec4<bool>(var_4.a, var_3.a.a, false, true)), global0.a, false), !vec4<bool>(var_0.a, var_1.a.a.a, false, true), all(select(vec4<bool>(true, false, true, var_1.e.d.a), vec4<bool>(false, true, true, true), vec4<bool>(false, var_1.b.a, var_3.a.a, true))))), i32(-1i) * -1i);
    let x = u_input.a;
    s_output = StorageBuffer(min(firstLeadingBit(1u), _wgslsmith_div_u32(1u, ~u_input.d)) | ~37325u);
}

