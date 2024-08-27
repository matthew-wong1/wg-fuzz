struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec4<f32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: bool,
    c: Struct_2,
    d: vec3<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = arg_0.a;
    let var_1 = Struct_3(-535f != _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-var_0)));
    var var_2 = arg_0;
    let var_3 = arg_0.c.zyx;
    var var_4 = Struct_2(-276f, false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1378f, 382f, var_0, 170f)));
    return ~select(_wgslsmith_mult_u32(~arg_0.d, 0u), 21125u, true);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_5) -> f32 {
    let var_0 = u_input.a.x;
    let var_1 = vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(firstTrailingBit(4294967295u), ~1u, _wgslsmith_sub_u32(u_input.a.x, var_0), ~1u), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, var_0, u_input.a.x, 47989u), ~vec4<u32>(14403u, var_0, 0u, 4294967295u))), ~var_0, var_0, func_3(Struct_1(arg_1.c.c.x, _wgslsmith_mod_i32(arg_0.x, arg_0.x), _wgslsmith_f_op_vec4_f32(trunc(arg_1.c.c)), u_input.a.x)) & 38826u);
    var var_2 = vec2<bool>(arg_1.b, arg_1.b);
    let var_3 = arg_1.c.c;
    var var_4 = Struct_5(vec3<f32>(1000f, _wgslsmith_div_f32(1979f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d.x + -541f) * _wgslsmith_f_op_f32(var_3.x + -1000f))), arg_1.d.x), arg_1.c.b, arg_1.c, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.a.x, _wgslsmith_div_f32(433f, -1022f), arg_1.d.x))))), arg_1.e);
    return _wgslsmith_f_op_f32(-864f - _wgslsmith_f_op_f32(round(arg_1.a.x)));
}

fn func_1() -> bool {
    var var_0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(548f * -290f) - _wgslsmith_f_op_f32(round(274f))) * _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(func_2(vec3<i32>(3528i, 2147483647i, 48295i), Struct_5(vec3<f32>(-752f, -167f, 140f), true, Struct_2(-121f, false, vec4<f32>(228f, 587f, -2243f, 520f)), vec3<f32>(1000f, -1202f, 331f), Struct_3(true))))))), ~2147483647i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1569f, -713f, -410f, -370f))), ~(func_3(Struct_1(-371f, 48726i, vec4<f32>(-551f, -1393f, -2457f, 173f), u_input.a.x)) >> (~u_input.a.x % 32u))), vec4<bool>(any(vec4<bool>(true, true, any(vec3<bool>(false, true, true)), true)), true, true, true));
    var var_1 = true;
    var var_2 = any(select(!var_0.b.xx, var_0.b.wy, true));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-121f))), -194f, all(select(vec4<bool>(false, true, false, true), var_0.b, var_0.b)) != !var_0.b.x)), select(true, true, any(select(select(var_0.b.yy, var_0.b.xy, var_0.b.x), select(vec2<bool>(var_0.b.x, var_0.b.x), vec2<bool>(var_0.b.x, true), var_0.b.ww), vec2<bool>(false, var_0.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.a.a, var_0.a.c.x, var_0.a.a, 270f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.c.x, 307f, var_0.a.a, 244f))))))));
    var var_4 = Struct_3(false);
    return true;
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: bool, arg_3: Struct_4) -> Struct_4 {
    let var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3.a.c.x, 271f, -456f), arg_3.a.c.zzz, arg_3.b.zwz)))))), any(arg_3.b), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1569f), !(~0i <= -arg_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_3.a.c - arg_3.a.c), arg_3.a.c))), _wgslsmith_f_op_vec3_f32(round(arg_3.a.c.yxw)), Struct_3(select(_wgslsmith_mod_i32(arg_0.x, arg_3.a.b), -46134i, true) >= ~(-5097i)));
    var var_1 = -_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.x, i32(-1i) * -2147483647i), select(vec2<i32>(firstTrailingBit(arg_0.x), -1i), abs(_wgslsmith_sub_vec2_i32(vec2<i32>(33409i, arg_0.x), vec2<i32>(arg_0.x, arg_3.a.b))), vec2<bool>(all(arg_3.b.yz), arg_2 | true)), vec2<i32>(arg_3.a.b, _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_3.a.b, arg_0.x, arg_0.x), ~vec3<i32>(arg_3.a.b, -2764i, arg_3.a.b))));
    var_1 = abs(min(max(arg_0, ~firstTrailingBit(vec2<i32>(1i, arg_3.a.b))), ~vec2<i32>(select(arg_3.a.b, arg_0.x, var_0.c.b), 0i)));
    var_1 = arg_0;
    let var_2 = arg_3.a.b;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_clamp_vec2_i32(~vec2<i32>(1i, 1i), min(max(vec2<i32>(4277i, 0i), vec2<i32>(0i, -2147483647i)), -vec2<i32>(-1i, 9455i)), vec2<i32>(0i, 1i)) | ~(-vec2<i32>(1i, 41067i)), 1u, all(vec4<bool>(true, true, true, true)) & func_1(), Struct_4(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -316f), _wgslsmith_f_op_f32(1488f - 796f)), 1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-477f, -1847f, 667f, 1000f), vec4<f32>(820f, 974f, 178f, 1000f)) - vec4<f32>(-185f, -1000f, 173f, -1000f)), u_input.a.x), vec4<bool>(true, false, false, 37282u == u_input.a.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.c.x + var_0.a.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -2398f), var_0.a.c.x)));
    let var_2 = select(vec4<bool>(false, all(select(var_0.b.yxw, var_0.b.zyx, var_0.b.xzy)) && all(select(var_0.b, vec4<bool>(var_0.b.x, var_0.b.x, false, false), false)), any(select(vec4<bool>(var_0.b.x, true, true, var_0.b.x), var_0.b, false)) & true, true), vec4<bool>(_wgslsmith_f_op_f32(trunc(var_0.a.a)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a)), !(!var_0.b.x | true), !all(!var_0.b.xw), !(var_1.x > -1000f) && true), select(vec4<bool>(!var_0.b.x, func_4(-vec2<i32>(2147483647i, var_0.a.b), ~var_0.a.d, true, var_0).b.x, all(var_0.b.zz), var_0.b.x), select(var_0.b, vec4<bool>(var_0.b.x, var_0.b.x || var_0.b.x, var_0.b.x, select(var_0.b.x, true, var_0.b.x)), !vec4<bool>(true, var_0.b.x, true, var_0.b.x)), var_0.b));
    let var_3 = vec2<i32>(-((i32(-1i) * -68684i) | _wgslsmith_mult_i32(~0i, var_0.a.b)), _wgslsmith_dot_vec3_i32(select(vec3<i32>(_wgslsmith_clamp_i32(var_0.a.b, var_0.a.b, 1i), 34320i, firstTrailingBit(2147483647i)), ~select(vec3<i32>(var_0.a.b, 32006i, 1i), vec3<i32>(-12911i, var_0.a.b, var_0.a.b), var_2.x), any(!vec3<bool>(var_2.x, true, var_2.x))), vec3<i32>(-1i, -2147483647i, firstTrailingBit(_wgslsmith_sub_i32(var_0.a.b, 9199i)))));
    let var_4 = true;
    var var_5 = func_4(vec2<i32>(var_0.a.b, var_3.x >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, var_0.a.d), vec3<u32>(52017u, u_input.a.x, u_input.a.x)) % 32u)), 1u, any(func_4(firstTrailingBit(vec2<i32>(1i, 1764i)), u_input.a.x, all(select(vec2<bool>(var_0.b.x, var_4), vec2<bool>(false, var_2.x), var_4)), func_4(vec2<i32>(-2149i, var_0.a.b) >> (u_input.a.yz % vec2<u32>(32u)), abs(var_0.a.d), var_0.a.b > var_0.a.b, var_0)).b), Struct_4(Struct_1(_wgslsmith_f_op_f32(sign(1f)), -15913i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a.c)), ~10447u), var_0.b)).a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_5.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-915f + var_0.a.a), _wgslsmith_f_op_f32(trunc(1542f)))))), _wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(select(-452f, _wgslsmith_f_op_f32(floor(-632f)), var_0.b.x)))));
}

