struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: f32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: vec2<bool>,
    d: vec2<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 941f;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_2) -> i32 {
    let var_0 = Struct_2(countOneBits(_wgslsmith_add_i32(~(-u_input.b), _wgslsmith_sub_i32(1856i, ~arg_0.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2.b.x)) * arg_2.b.x)), _wgslsmith_f_op_f32(round(arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1261f, arg_1))))));
    global0 = _wgslsmith_f_op_f32(arg_2.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1))));
    var var_1 = vec2<u32>(u_input.c, ((~u_input.c ^ (0u & u_input.c)) << (u_input.c % 32u)) << (abs(4294967295u) % 32u));
    let var_2 = Struct_4(reverseBits(_wgslsmith_clamp_i32(~arg_0.x ^ (5142i >> (u_input.c % 32u)), _wgslsmith_mult_i32(i32(-1i) * -1i, i32(-1i) * -13351i), _wgslsmith_add_i32(~1i, -16943i))));
    var_1 = vec2<u32>(14599u, u_input.c);
    return arg_2.a;
}

fn func_2(arg_0: u32) -> vec2<u32> {
    global0 = -1000f;
    let var_0 = vec3<bool>(all(!select(vec2<bool>(true, false), vec2<bool>(true, true), false)) | true, u_input.b < u_input.a.x, all(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), true)) & !(true && all(vec4<bool>(true, true, false, true))));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-282f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1342f + -129f))))));
    let var_2 = Struct_2(max(firstLeadingBit(-2147483647i), _wgslsmith_add_i32(u_input.a.x, func_3(-u_input.a, _wgslsmith_f_op_f32(ceil(237f)), Struct_2(u_input.a.x, vec3<f32>(1265f, -1483f, 125f))))), vec3<f32>(_wgslsmith_f_op_f32(round(465f)), _wgslsmith_f_op_f32(f32(-1f) * -413f), 1468f));
    return ~(vec2<u32>(~0u, _wgslsmith_mod_u32(4294967295u, arg_0) & _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(36494u, u_input.c, 44876u))) << (_wgslsmith_mod_vec2_u32(~vec2<u32>(0u, 0u) >> (vec2<u32>(u_input.c, 116855u) % vec2<u32>(32u)), (vec2<u32>(arg_0, arg_0) & vec2<u32>(arg_0, 1u)) >> (~vec2<u32>(1u, 21545u) % vec2<u32>(32u))) % vec2<u32>(32u)));
}

fn func_4(arg_0: vec4<f32>, arg_1: bool, arg_2: vec2<u32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_mod_vec2_u32(arg_2, vec2<u32>(_wgslsmith_mod_u32(0u, u_input.c), ~arg_2.x) << (arg_2 % vec2<u32>(32u))), ~vec4<u32>(~60930u, ~_wgslsmith_mult_u32(arg_2.x, arg_2.x), ~select(arg_2.x, u_input.c, false), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.c, arg_2.x, 1u), ~27438u)), -vec4<i32>(i32(-1i) * -5127i, _wgslsmith_mult_i32(u_input.a.x, u_input.b), 4628i, i32(-1i) * -2147483647i) | _wgslsmith_div_vec4_i32(abs(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.b, 1i, u_input.a.x), vec4<i32>(30046i, u_input.a.x, 21839i, 13540i))), vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, 56890i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, -1i, u_input.b), vec4<i32>(-2147483647i, 14879i, u_input.a.x, u_input.a.x)), 1i, -1i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_0.ww, vec2<f32>(-432f, 113f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(arg_0.zx + vec2<f32>(2685f, arg_0.x)))))));
    global0 = _wgslsmith_f_op_f32(floor(arg_0.x));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, var_0.d.x) + -1107f) - 1126f) - 2028f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1240f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x))) + _wgslsmith_f_op_f32(sign(arg_0.x))));
    let var_1 = -587f;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-805f * -793f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1343f + -2080f), 1166f, arg_1))), var_1, !any(select(vec4<bool>(arg_1, false, arg_1, false), vec4<bool>(arg_1, true, arg_1, false), vec4<bool>(false, true, true, true))))));
    return 293f;
}

fn func_1() -> bool {
    global0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1221f, 572f, -724f, 1307f) - vec4<f32>(-814f, -637f, -223f, 959f)))))), false, _wgslsmith_clamp_vec2_u32(vec2<u32>(~u_input.c, u_input.c), func_2(~u_input.c), ~vec2<u32>(u_input.c, u_input.c) & ~vec2<u32>(u_input.c, u_input.c)) & ~vec2<u32>(func_2(u_input.c).x, 10464u)));
    let var_0 = Struct_5(false, Struct_4(u_input.b), vec2<bool>(!select(false, any(vec4<bool>(false, true, false, true)), false), true), select(vec2<bool>(select(false, false, false), any(vec3<bool>(true, true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))), select(vec2<bool>(false, true), vec2<bool>(any(vec3<bool>(false, true, true)), any(vec3<bool>(true, false, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), true))), _wgslsmith_f_op_f32(abs(1000f)));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.e, -641f, var_0.e, 1906f))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1616f, var_0.e, -1051f, 625f))))), !(!(u_input.a.x < u_input.b)), reverseBits(vec2<u32>(abs(u_input.c), _wgslsmith_clamp_u32(u_input.c, u_input.c, u_input.c))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.e), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.e))), 702f, var_0.d.x)))));
    var var_2 = -2470f;
    let var_3 = _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(-var_0.e));
    return false;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_3, arg_3: i32) -> u32 {
    var var_0 = arg_1;
    let var_1 = u_input.a.xx;
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.d.x)));
    var var_3 = ~func_2(60997u).x;
    let var_4 = -2140f;
    return countOneBits(_wgslsmith_dot_vec2_u32(arg_1.b.yz, arg_2.a.zz));
}

fn func_6(arg_0: u32) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(555f * _wgslsmith_f_op_f32(min(1570f, 1367f))))), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -165f), _wgslsmith_f_op_f32(min(415f, 848f))))))));
    var var_0 = Struct_2(-2147483647i, vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-516f + 574f) * 408f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-417f, -484f))), -1150f)), -1032f));
    let var_1 = var_0.b.x;
    let var_2 = Struct_5(func_1(), Struct_4(~u_input.b), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, u_input.b == var_0.a), vec2<bool>(true, select(true, false, true))), vec2<bool>(func_1(), true)), select(!vec2<bool>(false, func_1()), !(!select(vec2<bool>(false, true), vec2<bool>(false, true), false)), true), var_0.b.x);
    var_0 = Struct_2(20733i, _wgslsmith_f_op_vec3_f32(vec3<f32>(967f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e)), -272f) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1061f, var_0.b.x, -399f), vec3<f32>(var_2.e, 1000f, var_0.b.x)))))));
    return Struct_1(firstLeadingBit(~vec2<u32>(1u, 58191u)), vec4<u32>(~_wgslsmith_div_u32(arg_0, func_5(var_2.c.x, Struct_1(vec2<u32>(1u, 0u), vec4<u32>(44933u, u_input.c, u_input.c, 4294967295u), vec4<i32>(var_2.b.a, var_2.b.a, -8380i, -1i), vec2<f32>(var_0.b.x, var_0.b.x)), Struct_3(vec3<u32>(32119u, u_input.c, u_input.c), var_2.e, var_2.e), 0i)), ~(~0u & reverseBits(arg_0)), ~_wgslsmith_clamp_u32(~u_input.c, arg_0, ~43682u), arg_0 >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(11402u, u_input.c), vec2<u32>(arg_0, 4294967295u)) % 32u)), ~vec4<i32>(var_0.a, 0i, u_input.a.x, _wgslsmith_sub_i32(select(0i, u_input.a.x, true), var_2.b.a)), vec2<f32>(var_2.e, -1000f));
}

fn func_7(arg_0: f32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: f32) -> Struct_4 {
    let var_0 = func_6(_wgslsmith_dot_vec4_u32(arg_1.b, ~_wgslsmith_div_vec4_u32(vec4<u32>(32676u, 1u, arg_1.a.x, 31904u), select(arg_1.b, arg_1.b, vec4<bool>(false, true, false, false)))));
    let var_1 = func_3(-var_0.c.wwx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-244f + -925f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_3, arg_1.d.x)))), Struct_2(0i, vec3<f32>(_wgslsmith_f_op_f32(-1000f - arg_1.d.x), func_6(arg_1.a.x).d.x, arg_3))) != 1i;
    global0 = arg_3;
    let var_2 = !select(vec2<bool>(var_1, !(!var_1)), select(vec2<bool>(true, true), select(select(vec2<bool>(var_1, false), vec2<bool>(var_1, var_1), false), !vec2<bool>(true, var_1), select(false, var_1, var_1)), !select(vec2<bool>(false, true), vec2<bool>(var_1, false), vec2<bool>(false, false))), !vec2<bool>(all(vec2<bool>(false, var_1)), true));
    var var_3 = var_0.c.wy;
    return Struct_4(~min(u_input.b, arg_1.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 0i), u_input.a.xx) | vec2<i32>(-15509i, 1i));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(375f, 1567f, true)), _wgslsmith_f_op_f32(f32(-1f) * -118f))))));
    let var_1 = Struct_3(~(~countOneBits(firstLeadingBit(vec3<u32>(u_input.c, u_input.c, 0u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1407f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(145f, 1063f))), -493f), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-329f * -789f)) - _wgslsmith_f_op_f32(-762f - _wgslsmith_f_op_f32(ceil(-1000f)))))));
    let var_2 = func_7(_wgslsmith_div_f32(-814f, 613f), func_6(func_5(func_1(), Struct_1(~vec2<u32>(u_input.c, var_1.a.x), vec4<u32>(1u, 4294967295u, 4294967295u, u_input.c), _wgslsmith_add_vec4_i32(vec4<i32>(-34192i, -54136i, 1i, 5231i), vec4<i32>(var_0.x, u_input.b, var_0.x, u_input.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, var_1.b) + vec2<f32>(var_1.c, var_1.c))), Struct_3(var_1.a, _wgslsmith_f_op_f32(var_1.c - var_1.b), _wgslsmith_f_op_f32(-var_1.c)), _wgslsmith_clamp_i32(-2670i, -15406i, _wgslsmith_mod_i32(-26149i, u_input.b)))), _wgslsmith_clamp_vec4_i32(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, var_0.x, 53560i, u_input.a.x), vec4<i32>(-8253i, var_0.x, var_0.x, -2147483647i))), vec4<i32>(reverseBits(-1i), select(16618i, var_0.x, true), 1i, func_6(1u).c.x), ~(vec4<i32>(u_input.a.x, var_0.x, -34222i, -2147483647i) >> (vec4<u32>(4294967295u, u_input.c, u_input.c, var_1.a.x) % vec4<u32>(32u)))) ^ -vec4<i32>(~(-1i), i32(-1i) * -2119i, _wgslsmith_dot_vec4_i32(vec4<i32>(24123i, 1i, var_0.x, u_input.a.x), vec4<i32>(22674i, u_input.a.x, u_input.a.x, -2147483647i)), 2147483647i), 1000f);
    var_0 = u_input.a.xy;
    global0 = 212f;
    global0 = -2779f;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i);
}

