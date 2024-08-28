struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: f32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1876f * 1619f), _wgslsmith_div_f32(204f, -1000f))))))));
    return select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), any(vec4<bool>(true, false, false, true))), vec4<bool>(true, all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), true)), false, var_0.a > 692f), vec4<bool>(any(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true)), true)), any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false))) == false, all(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))), select(all(vec2<bool>(true, true)), true, all(vec3<bool>(true, false, true)))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>) -> Struct_3 {
    var var_0 = vec4<bool>(arg_0.x, select(arg_0.x, true, false), false, !(!(true || arg_0.x)));
    var_0 = select(!(!(!(!vec4<bool>(arg_0.x, false, false, var_0.x)))), !(!func_3()), vec4<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -313f)) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-2187f)), -424f), all(vec4<bool>(true, arg_1.x >= arg_1.x, false, select(false, var_0.x, false))), any(!vec3<bool>(var_0.x, false, arg_0.x)) && false));
    var var_1 = ~vec2<u32>(countOneBits(_wgslsmith_div_u32(arg_1.x << (u_input.a.x % 32u), arg_1.x & 1u)), ~0u);
    let var_2 = vec2<bool>(var_0.x, true);
    var_1 = arg_1 & arg_1;
    return Struct_3(_wgslsmith_f_op_f32(max(468f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1737f * -813f))))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_i32(firstLeadingBit(-35132i), ~(~(~min(arg_1.b.x, arg_1.c))), ~(-80612i));
    let var_1 = _wgslsmith_sub_vec2_u32(~(vec2<u32>(23006u, u_input.a.x >> (25965u % 32u)) ^ ((arg_0 | vec2<u32>(4294967295u, 51864u)) ^ (vec2<u32>(0u, 0u) | vec2<u32>(u_input.a.x, arg_0.x)))), vec2<u32>(1u, 1u));
    let var_2 = func_2(vec2<bool>(!any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), false), (select(firstTrailingBit(arg_0), vec2<u32>(arg_1.d, arg_1.d), vec2<bool>(true, false)) << (u_input.a % vec2<u32>(32u))) | var_1);
    var var_3 = Struct_2(_wgslsmith_div_f32(var_2.a, -283f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-271f, -400f, arg_2.a)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1934f - var_2.a), -1253f, _wgslsmith_f_op_f32(-118f + -199f)))), arg_1.b.xwx, arg_2.a);
    var_3 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(186f)))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3.b + var_3.b)), vec3<f32>(-1000f, var_3.a, -1724f))))), arg_1.b.zzx, -676f);
    return arg_1;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>) -> u32 {
    var var_0 = func_4(vec2<u32>(~1u, ~arg_1.x), Struct_1(_wgslsmith_add_vec2_i32(select(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.c.x, arg_0.c.x), arg_0.c.xx), countOneBits(arg_0.c.zz), vec2<bool>(true, true)), ~vec2<i32>(arg_0.c.x, arg_0.c.x) << (~vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u))), ~reverseBits(~vec4<i32>(arg_0.c.x, 2147483647i, arg_0.c.x, arg_0.c.x)), -17654i, ~abs(arg_1.x), 125f), func_2(vec2<bool>(true, true), _wgslsmith_sub_vec2_u32(arg_1.yw << (_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(1u, 64587u)) % vec2<u32>(32u)), select(_wgslsmith_div_vec2_u32(vec2<u32>(arg_1.x, 4294967295u), vec2<u32>(u_input.a.x, 33148u)), abs(u_input.a), any(vec3<bool>(false, false, false))))));
    var_0 = func_4(select(vec2<u32>(u_input.a.x, var_0.d), countOneBits(~(~u_input.a)), vec2<bool>(true, true)), Struct_1(vec2<i32>(9082i, _wgslsmith_sub_i32(-1i, var_0.b.x) & _wgslsmith_mult_i32(10118i, -36077i)), var_0.b << (arg_1 % vec4<u32>(32u)), arg_0.c.x, ~var_0.d, _wgslsmith_f_op_f32(f32(-1f) * -2475f)), Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.e), 198f)), -1000f)));
    let var_1 = -10804i;
    let var_2 = var_0.e == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_0.e, -815f)))))) * arg_0.b.x);
    return 66357u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-607f + -947f));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1347f, -1072f), vec2<f32>(-599f, 650f))), vec2<f32>(2614f, -759f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1616f, 206f) - vec2<f32>(-354f, 1395f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1108f, -1580f)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))))));
    var var_2 = Struct_1(vec2<i32>(0i, 1i), vec4<i32>(_wgslsmith_add_i32(select(-5948i, 0i, true), 47597i) << (1u % 32u), ~_wgslsmith_mod_i32(i32(-1i) * -10715i, 6687i), select(0i, 53429i, true), _wgslsmith_dot_vec2_i32(~(-vec2<i32>(-49064i, 1i)), -(~vec2<i32>(-13106i, 46821i)))), ~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(2147483647i, -1i) << (~vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))), func_1(Struct_2(-136f, vec3<f32>(-133f, 409f, _wgslsmith_f_op_f32(367f - 1205f)), -countOneBits(vec3<i32>(0i, 12065i, -30193i)), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(1583f + -710f))), vec4<u32>(reverseBits(firstTrailingBit(u_input.a.x)), 14795u, u_input.a.x, u_input.a.x)), -558f);
    var var_3 = _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(vec2<bool>(false, false), u_input.a).a * var_1.x)))));
    let var_4 = Struct_2(_wgslsmith_f_op_f32(-var_1.x), vec3<f32>(-3055f, _wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(738f, var_2.e)), 2766f)))), vec3<i32>(var_2.c, ~var_2.a.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_2.b.x) << (vec2<u32>(14163u, 4294967295u) % vec2<u32>(32u)), ~var_2.a)), var_2.e);
    let var_5 = vec3<i32>(firstLeadingBit(2592i), 11499i, ~var_4.c.x);
    var_0 = 866f;
    let x = u_input.a;
    s_output = StorageBuffer(15774i, select(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(35100u, var_2.d, var_2.d, 0u)), vec4<u32>(~4294967295u, u_input.a.x, 84301u, u_input.a.x)), 1u, any(select(func_3().xz, select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))))), _wgslsmith_add_vec3_i32(max(vec3<i32>(var_2.b.x << (var_2.d % 32u), _wgslsmith_clamp_i32(0i, 3320i, -1i), 33434i), reverseBits(vec3<i32>(var_2.c, 22785i, var_5.x) | vec3<i32>(2329i, var_4.c.x, 2147483647i))), (vec3<i32>(var_2.a.x, -2147483647i, var_5.x) ^ ~vec3<i32>(-2147483647i, var_2.b.x, var_2.b.x)) ^ _wgslsmith_mod_vec3_i32(var_5 << (vec3<u32>(u_input.a.x, 76456u, 0u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(-37922i, var_2.a.x, -31434i), var_2.b.yyw))));
}

