struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: i32) -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_add_vec3_i32(min(vec3<i32>(arg_1, -1i, 0i), _wgslsmith_div_vec3_i32(u_input.b.xwz, u_input.b.zxw)), countOneBits(abs(vec3<i32>(arg_1, 0i, arg_1) | vec3<i32>(u_input.c, -38418i, arg_1)))), vec4<bool>(true, true, any(vec2<bool>(true, all(vec4<bool>(true, true, false, false)))), any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true))));
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(abs(arg_2), 1i), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-1i, u_input.c), 1i));
    let var_2 = Struct_2(select(!vec2<bool>(var_0.b.x, var_0.b.x || var_0.b.x), select(vec2<bool>(true, true), select(select(var_0.b.yx, vec2<bool>(var_0.b.x, var_0.b.x), var_0.b.x), select(var_0.b.zy, vec2<bool>(false, var_0.b.x), vec2<bool>(false, false)), !var_0.b.x), vec2<bool>(true, 8877u != u_input.a)), var_0.b.wy), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1025f, arg_0), _wgslsmith_f_op_f32(arg_0 + -147f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -968f), _wgslsmith_div_f32(arg_0, arg_0)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(-203f + arg_0)) + arg_0), 1060f, -807f), Struct_1(var_0.a | -var_0.a, vec4<bool>(!var_0.b.x, false, !any(var_0.b), var_0.b.x)));
    var var_3 = var_0;
    var_3 = var_2.c;
    return var_2.b.ywx;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_2) -> bool {
    let var_0 = !(!(!(all(arg_2.c.b.wwx) & arg_2.a.x)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.b.x * -540f)))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.b.x)))), arg_2.b.x, _wgslsmith_f_op_f32(-arg_2.b.x));
    let var_2 = Struct_2(vec2<bool>(arg_2.c.b.x, !(!var_0)), arg_2.b, arg_2.c);
    var_1 = _wgslsmith_f_op_vec3_f32(func_3(1470f, _wgslsmith_clamp_i32(2147483647i, ~(arg_2.c.a.x >> (arg_0 % 32u)), ~u_input.c), -arg_2.c.a.x));
    var var_3 = !var_2.c.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1069f)))) != _wgslsmith_f_op_f32(round(var_1.x));
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = Struct_1(-arg_2.c.a, select(select(select(arg_1, vec4<bool>(true, false, true, arg_1.x), !arg_1), vec4<bool>(true, true, arg_2.a.x || true, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(arg_1.x, func_2(39085u, true, Struct_2(arg_2.c.b.xy, arg_2.b, arg_2.c)), false, any(arg_1)), vec4<bool>(all(arg_2.c.b.xwz), func_2(2928u, arg_1.x, arg_2), true, func_2(u_input.a, false, Struct_2(vec2<bool>(arg_1.x, false), arg_2.b, arg_2.c))), !(!vec4<bool>(false, true, arg_1.x, arg_1.x))), !arg_2.c.b.x));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(arg_0, arg_2.b.x)), _wgslsmith_f_op_f32(step(-538f, arg_0)))))))), _wgslsmith_f_op_f32(arg_2.b.x * 675f));
    var var_2 = max(u_input.a << (1u % 32u), ~reverseBits(~u_input.a) ^ u_input.a);
    var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x))), arg_2.b.x)));
    let var_3 = Struct_2(!select(arg_1.zz, vec2<bool>(select(true, arg_2.c.b.x, arg_2.c.b.x), !arg_2.a.x), true), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(arg_2.b.x)), 892f, arg_0, arg_0)), arg_2.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-279f)))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(320f, 728f, false)) + arg_0))), Struct_1(vec3<i32>(_wgslsmith_dot_vec3_i32(abs(u_input.b.wzy), u_input.b.wzz), arg_2.c.a.x, _wgslsmith_dot_vec4_i32(u_input.b, u_input.b)), select(select(!var_0.b, !arg_1, !arg_2.a.x), vec4<bool>(!arg_2.a.x, true, true, 46255u == u_input.a), !arg_1)));
    return arg_2.c;
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(1f, !(!vec4<bool>(true, func_2(4294967295u, false, Struct_2(vec2<bool>(false, false), vec4<f32>(-859f, -1586f, -759f, 1178f), Struct_1(u_input.b.yyz, vec4<bool>(true, false, true, false)))), all(vec4<bool>(false, true, false, false)), false)), Struct_2(select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(func_2(4294967295u, false, Struct_2(vec2<bool>(true, false), vec4<f32>(-2163f, -1740f, 419f, 131f), Struct_1(u_input.b.wyx, vec4<bool>(false, false, true, true)))), all(vec3<bool>(true, false, true))), any(vec4<bool>(true, true, true, true))), vec4<f32>(_wgslsmith_f_op_f32(round(1181f)), 707f, 1328f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(350f)) + -725f)), Struct_1(_wgslsmith_mod_vec3_i32(u_input.b.wyw, vec3<i32>(u_input.c, u_input.b.x, 2147483647i)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true))));
    var_0 = Struct_1(var_0.a, !(!vec4<bool>(var_0.b.x, func_4(-418f, vec4<bool>(var_0.b.x, false, var_0.b.x, true), Struct_2(var_0.b.yx, vec4<f32>(1000f, 286f, -321f, -125f), Struct_1(u_input.b.yxy, var_0.b))).b.x, var_0.b.x, !var_0.b.x)));
    let var_1 = Struct_1(u_input.b.ywx, func_4(_wgslsmith_f_op_f32(-441f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-366f)) * _wgslsmith_f_op_f32(-402f * 789f))), !vec4<bool>(true, var_0.b.x & var_0.b.x, false, true), Struct_2(select(!var_0.b.zz, !var_0.b.ww, var_0.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1569f, -1092f, 1000f, 236f)))), func_4(-861f, vec4<bool>(true, false, var_0.b.x, true), Struct_2(vec2<bool>(true, false), vec4<f32>(267f, 1000f, -182f, -1143f), Struct_1(vec3<i32>(var_0.a.x, -2147483647i, u_input.c), var_0.b))))).b);
    var var_2 = var_1;
    var_0 = Struct_1(_wgslsmith_div_vec3_i32(reverseBits(~var_1.a), vec3<i32>(i32(-1i) * -2147483647i, i32(-1i) * -6224i, u_input.b.x)) ^ reverseBits(abs(_wgslsmith_mult_vec3_i32(var_2.a, vec3<i32>(0i, -30271i, 400i)))), !var_2.b);
    return Struct_1(vec3<i32>(firstTrailingBit(1102i), var_0.a.x, -firstLeadingBit(17688i)), var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 575f;
    var var_1 = func_1();
    var_1 = func_1();
    var var_2 = true;
    var var_3 = vec2<i32>(_wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(-2147483647i, -1i)), -var_1.a.xy), vec2<i32>(~(-u_input.b.x), 3592i)), -3839i | _wgslsmith_mult_i32(var_1.a.x, 11387i));
    let x = u_input.a;
    s_output = StorageBuffer((abs(~vec2<i32>(0i, 39008i)) ^ -_wgslsmith_add_vec2_i32(vec2<i32>(var_1.a.x, var_1.a.x), var_1.a.yy)) & select(-firstTrailingBit(u_input.b.yz), ~countOneBits(u_input.b.zw), func_1().b.xz));
}

