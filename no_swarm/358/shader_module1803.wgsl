struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: bool,
    d: bool,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 284f;

var<private> global1: Struct_3;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, global1.c, false))), global1.c)) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1052f, 111f) + vec2<f32>(197f, 1385f)) * vec2<f32>(global1.c, -419f)) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1066f, 2030f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c, global1.c)))))));
    var var_1 = Struct_4(Struct_3(Struct_2(~4294967295u, global1.a.b, vec3<i32>(arg_1.a.x, -6119i, arg_0.x)), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) * _wgslsmith_div_f32(global1.c, var_0.x)))), ~(~global1.a.b.c.x) & _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(u_input.e, arg_1.d.x), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, arg_1.c.x), vec3<u32>(0u, 25762u, arg_1.c.x)), 1u), _wgslsmith_mult_vec3_u32(~global1.a.b.d.wyz, vec3<u32>(0u, u_input.e, arg_1.d.x))), true, all(select(vec2<bool>(true, true), vec2<bool>(true, all(vec4<bool>(true, false, true, false))), true || all(vec3<bool>(false, false, true)))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(761f, -211f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-406f, 1844f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-127f, var_1.a.c) - vec2<f32>(global1.c, 499f))), !select(vec2<bool>(var_1.c, var_1.c), vec2<bool>(var_1.d, var_1.c), vec2<bool>(false, true))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-454f, global1.c)))))));
    var var_2 = Struct_2(_wgslsmith_add_u32(arg_1.c.x, max(~reverseBits(global1.a.a), global1.a.a)), var_1.a.a.b, -_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(-7513i, 2147483647i, arg_0.x)), vec3<i32>(-55017i, -2147483647i, arg_0.x)) ^ -arg_1.a);
    var var_3 = var_2.b.d;
    return select(vec4<bool>(var_1.c, !(!(!var_1.d)), true, var_1.d), !vec4<bool>(true, ~32718u < var_2.b.d.x, all(select(vec2<bool>(false, var_1.d), vec2<bool>(false, var_1.c), true)), var_1.c), !(!select(select(vec4<bool>(var_1.c, true, var_1.c, false), vec4<bool>(false, var_1.c, var_1.d, var_1.c), vec4<bool>(var_1.c, false, false, true)), select(vec4<bool>(true, var_1.c, var_1.d, var_1.c), vec4<bool>(var_1.c, var_1.c, false, var_1.c), vec4<bool>(true, var_1.c, false, var_1.c)), vec4<bool>(var_1.c, var_1.c, false, var_1.c))));
}

fn func_2(arg_0: u32, arg_1: bool) -> Struct_2 {
    var var_0 = Struct_5(select(!(!(!vec4<bool>(true, false, arg_1, arg_1))), !(!func_3(global1.a.b.a.xx, Struct_1(vec3<i32>(global1.a.c.x, global1.a.b.b, 51959i), global1.a.c.x, global1.a.b.d, global1.a.b.c, global1.a.c.x))), func_3(global1.a.b.a.zx, Struct_1(u_input.c, u_input.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.a.a, 0u, 19603u, 31204u), vec4<u32>(56946u, global1.a.b.c.x, arg_0, u_input.e), global1.a.b.d), u_input.d, -68802i))));
    var var_1 = global1.a.b.a;
    return Struct_2(select(_wgslsmith_mult_u32(~95307u, min(19393u, 1u)), 85050u, all(var_0.a.yy)), Struct_1(-select(global1.a.c >> (vec3<u32>(arg_0, 1u, global1.a.b.d.x) % vec3<u32>(32u)), u_input.c, var_0.a.zyz), firstLeadingBit(~firstTrailingBit(u_input.b)), ~global1.a.b.d, vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.d, vec4<u32>(6086u, 0u, 93732u, 4294967295u), global1.a.b.d), vec4<u32>(u_input.e, global1.a.b.d.x, arg_0, 1u)), 1u, ~_wgslsmith_mod_u32(global1.a.b.d.x, arg_0), ~_wgslsmith_dot_vec2_u32(global1.a.b.d.xy, vec2<u32>(global1.a.b.d.x, 28469u))), 0i), global1.a.c << (global1.a.b.d.xww % vec3<u32>(32u)));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_4(Struct_3(func_2(_wgslsmith_mult_u32(global1.a.a | u_input.d.x, global1.a.a), 1i < _wgslsmith_div_i32(-2147483647i, u_input.a)), firstTrailingBit(u_input.c.x), -177f), max(select(13300u, abs(~4294967295u), true), (u_input.e ^ global1.a.a) ^ ~(~0u)), false, true);
    var var_1 = firstTrailingBit(~_wgslsmith_div_i32(_wgslsmith_div_i32(u_input.b, 0i), ~u_input.a)) & firstTrailingBit(global1.b);
    global0 = -1274f;
    var_1 = global1.b;
    var_1 = 1137i;
    return func_2(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(var_0.a.a.b.c.xxz, u_input.d.wxx) << (1u % 32u), var_0.a.a.b.c.x) << (var_0.b % 32u), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(), _wgslsmith_dot_vec3_i32(select(u_input.c, global1.a.b.a, true), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(1i, -1i), u_input.a, firstTrailingBit(1i)), -73579i, -(global1.b | u_input.c.x))), -285f);
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1173f, var_0.c) + vec2<f32>(1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(794f, global1.c, true))))))));
    var var_2 = func_2(1u, any(select(vec4<bool>(all(vec2<bool>(true, false)), true, true, true), vec4<bool>(any(vec3<bool>(false, true, true)), func_3(vec2<i32>(60662i, var_0.b), Struct_1(global1.a.c, var_0.b, u_input.d, vec4<u32>(var_0.a.b.c.x, var_0.a.a, 22959u, 40665u), -2147483647i)).x, u_input.a > 1725i, all(vec3<bool>(false, true, false))), vec4<bool>(var_0.a.c.x > u_input.b, false, false, true)))).b;
    var var_3 = Struct_4(Struct_3(var_0.a, 0i, -199f), reverseBits(~var_0.a.b.d.x) | func_1().a, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.e, _wgslsmith_mult_i32(-61631i, u_input.a), global1.b), firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(3654i, var_2.e, var_2.e), var_2.a))) >= (var_2.e << (abs(_wgslsmith_div_u32(1u, 40499u)) % 32u)), (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(833f))) >= _wgslsmith_div_f32(-370f, var_0.c)) || any(vec3<bool>(true, true, true)));
    var var_4 = select(!select(vec4<bool>(all(vec2<bool>(true, var_3.d)), true, false, false), select(!vec4<bool>(var_3.c, var_3.d, var_3.d, false), select(vec4<bool>(var_3.c, var_3.d, false, var_3.c), vec4<bool>(false, var_3.d, false, false), vec4<bool>(var_3.d, var_3.d, true, var_3.d)), !vec4<bool>(var_3.d, var_3.c, var_3.d, var_3.c)), vec4<bool>(true, !var_3.c, var_3.c, var_3.c && var_3.c)), !select(!select(vec4<bool>(var_3.c, false, false, var_3.d), vec4<bool>(var_3.d, false, var_3.c, var_3.d), vec4<bool>(false, var_3.c, var_3.c, true)), vec4<bool>(!var_3.c, false, var_3.a.c < var_0.c, var_3.c), vec4<bool>(all(vec4<bool>(true, true, true, false)), false, false, true)), select(select(vec4<bool>(true, var_3.d || false, 1092f < global1.c, any(vec4<bool>(false, var_3.c, false, var_3.d))), vec4<bool>(!var_3.d, var_3.d, true, !var_3.d), vec4<bool>(true, var_3.d == false, var_3.a.c >= var_0.c, true)), select(vec4<bool>(true, func_3(vec2<i32>(global1.b, 0i), Struct_1(var_3.a.a.c, global1.a.c.x, u_input.d, vec4<u32>(var_2.c.x, 12681u, var_3.a.a.a, 8831u), var_2.a.x)).x, true, var_3.d), !vec4<bool>(var_3.c, var_3.c, true, var_3.d), any(!vec2<bool>(var_3.c, false))), vec4<bool>(5737u >= _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 69207u, 1u), vec3<u32>(17878u, u_input.d.x, 0u)), false, true, var_3.c)));
    var_4 = select(vec4<bool>(func_3(min(_wgslsmith_add_vec2_i32(var_2.a.xz, vec2<i32>(0i, u_input.b)), var_0.a.b.a.zz), Struct_1(~u_input.c, var_3.a.b, firstLeadingBit(var_3.a.a.b.d), var_2.c, 2147483647i)).x, all(var_4.xy), !all(!var_4.xy), var_4.x), select(!(!vec4<bool>(false, false, var_3.c, var_3.d)), func_3(vec2<i32>(0i, _wgslsmith_sub_i32(global1.b, var_2.a.x)), var_0.a.b), vec4<bool>(true, true, true, true)), vec4<bool>(var_4.x, !var_4.x, !(!func_3(var_0.a.c.xz, global1.a.b).x), false));
    let var_5 = any(!select(!(!var_4.yx), select(var_4.xy, vec2<bool>(false, var_3.c), var_4.yx), !(!var_4.x)));
    var var_6 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(3018f, 101f, var_0.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -501f, -1006f) - vec3<f32>(var_0.c, -1887f, global1.c)), false)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a.c, var_0.c, 1026f) * vec3<f32>(379f, -1611f, -779f)), vec3<f32>(global1.c, var_0.c, var_3.a.c))), select(var_4.xyz, vec3<bool>(false, false, var_5), -10414i >= global1.a.c.x))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.c, _wgslsmith_f_op_f32(select(-304f, -459f, var_4.x)), var_0.c)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-484f - _wgslsmith_f_op_f32(-var_3.a.c)) + 314f), var_3.a.c, _wgslsmith_f_op_f32(-var_1.x))));
    var var_7 = Struct_3(global1.a, _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.a, var_2.a.x), _wgslsmith_div_i32(~var_3.a.a.b.b, abs(global1.a.c.x)) & (var_3.a.a.c.x ^ 49496i)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_6.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -2394f), abs(vec2<i32>(reverseBits(~var_2.a.x), -func_1().b.e)), 0i);
}

