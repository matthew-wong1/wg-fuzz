struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32) -> vec2<f32> {
    let var_0 = Struct_2(_wgslsmith_mult_vec2_i32(-vec2<i32>(1i, -2147483647i), ~_wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), firstTrailingBit(vec2<i32>(0i, -2147483647i)))), vec2<i32>(1i, 1i), Struct_1(select(all(vec2<bool>(true, true)), true, false), true));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(785f, -327f))))), _wgslsmith_f_op_f32(950f - _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-303f)), arg_0)))), !var_0.c.a | !var_0.c.b));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1046f, -1654f, -395f, -475f))), vec4<f32>(755f, _wgslsmith_f_op_f32(2049f - -221f), _wgslsmith_f_op_f32(floor(270f)), _wgslsmith_f_op_f32(-var_1))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 467f, arg_0, var_1) + vec4<f32>(250f, -952f, var_1, -548f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-843f, 1340f, 170f, var_1)))), vec4<f32>(-994f, -380f, _wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(-var_1))))));
    var var_3 = u_input.a;
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(arg_0, var_1)), 360f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1332f * var_1), arg_0, true)), var_1)));
    return vec2<f32>(_wgslsmith_f_op_f32(arg_0 * -444f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + var_4.x))) - 1462f));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_3(~(-_wgslsmith_add_i32(1i, 1i)));
    let var_1 = ~(-vec3<i32>(~var_0.a, 46873i, -42504i) & _wgslsmith_div_vec3_i32(-vec3<i32>(-1i, var_0.a, var_0.a) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), ~vec3<i32>(var_0.a, var_0.a, var_0.a)));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1360f, -713f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-157f, -785f)) + vec2<f32>(182f, -698f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(-189f + 966f))))))));
    let var_3 = ~_wgslsmith_add_i32(1i, -1i);
    var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1207f, var_2.x));
    return var_0;
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_mult_vec2_i32(abs(-firstTrailingBit(vec2<i32>(arg_1, arg_1))), -abs(_wgslsmith_div_vec2_i32(vec2<i32>(9159i, -49114i), vec2<i32>(-28016i, arg_0.a)))), reverseBits(-vec2<i32>(arg_0.a, -14295i) >> ((vec2<u32>(u_input.a, u_input.a) ^ (vec2<u32>(u_input.a, 1u) | vec2<u32>(u_input.a, u_input.a))) % vec2<u32>(32u))), Struct_1(true, false));
    let var_1 = !(!select(select(vec4<bool>(true, true, true, true), !vec4<bool>(var_0.c.b, var_0.c.b, false, var_0.c.a), vec4<bool>(var_0.c.a, var_0.c.b, var_0.c.a, var_0.c.a)), vec4<bool>(true, true, true, true), !(var_0.c.b || true)));
    var var_2 = -1462f;
    let var_3 = -1i ^ (~4075i >> (~(~u_input.a) % 32u));
    var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(403f * -686f), !all(var_1.yzz))) - _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -593f))).x)).x)));
    return var_0.c;
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: bool, arg_3: vec4<f32>) -> Struct_3 {
    var var_0 = func_4(func_2(), 19416i);
    let var_1 = _wgslsmith_dot_vec2_u32(arg_0, arg_0);
    var_0 = func_4(func_2(), ~_wgslsmith_add_i32(countOneBits(countOneBits(13171i)), _wgslsmith_mod_i32(abs(-1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -49204i), vec2<i32>(2147483647i, -2147483647i)))));
    let var_2 = select(select(vec3<bool>(func_4(Struct_3(0i), 36021i).b, false, all(select(vec4<bool>(false, var_0.a, var_0.b, true), vec4<bool>(var_0.a, var_0.b, true, var_0.a), var_0.a))), vec3<bool>(all(select(vec4<bool>(var_0.b, false, var_0.a, var_0.b), vec4<bool>(arg_2, false, true, arg_2), arg_2)), true | select(true, arg_2, true), false), 1u <= arg_0.x), select(vec3<bool>(true, true, true), select(!select(vec3<bool>(var_0.b, arg_2, false), vec3<bool>(var_0.a, true, var_0.a), vec3<bool>(arg_2, var_0.b, arg_2)), !vec3<bool>(var_0.a, false, var_0.b), any(select(vec3<bool>(false, true, arg_2), vec3<bool>(false, false, arg_2), arg_2))), any(vec2<bool>(true, all(vec3<bool>(true, true, true))))), select(vec3<bool>(arg_2, var_0.b, true), vec3<bool>(!any(vec4<bool>(false, var_0.a, var_0.b, var_0.a)), _wgslsmith_add_i32(1i, -18033i) >= (-1i << (var_1 % 32u)), arg_2), !(!vec3<bool>(arg_2, arg_2, true))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.x, -1000f)) <= -588f;
    return Struct_3(~1i);
}

fn func_5(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec2<f32>, arg_3: Struct_4) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_3.a, -250f, 614f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.a, arg_3.a, -1619f, arg_3.a) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_3.a, -708f, -754f, -614f)))))));
    let var_1 = arg_3.b;
    let var_2 = -arg_0.a;
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.x)))), 846f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), var_0.x) - 1000f), -981f);
    let var_3 = func_4(Struct_3(-arg_0.a), -54014i).a;
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_i32(-39377i, min(_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(-2147483647i, 1i, -1i, 2147483647i)), func_5(func_1(~vec2<u32>(u_input.a, u_input.a), _wgslsmith_f_op_f32(-692f * 1719f), true, vec4<f32>(-1098f, -1000f, -1051f, 176f)), -(~vec2<i32>(0i, -1i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-393f, -866f)), Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -608f), u_input.a))));
    var_0 = 1i;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(630f + 1000f)) + _wgslsmith_f_op_f32(sign(1f)))));
    let var_2 = vec3<f32>(1f, _wgslsmith_f_op_f32(select(-531f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f - -409f))))), !any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-878f - 710f))) + 376f)));
    var_0 = _wgslsmith_sub_i32(func_5(func_1(min(~vec2<u32>(22571u, u_input.a), ~vec2<u32>(u_input.a, u_input.a)), -728f, !all(vec4<bool>(true, true, false, false)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.x, -623f, var_2.x, -282f)))), _wgslsmith_sub_vec2_i32(firstLeadingBit(~vec2<i32>(-2147483647i, 0i)), vec2<i32>(1i, 1i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_2.zz)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(517f, var_2.x))))), Struct_4(var_2.x, u_input.a)), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-22669i, select(-2147483647i, 24541i, true)), ~(~16792i)), abs(firstTrailingBit(vec2<i32>(51447i, 1i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, 1000f) + var_2.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -678f))), _wgslsmith_f_op_f32(ceil(829f)));
}

