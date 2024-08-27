struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: bool,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: i32,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec2<f32>, arg_3: i32) -> vec4<i32> {
    var var_0 = !all(vec2<bool>(any(vec3<bool>(true, true, true)), !any(vec4<bool>(false, false, true, false))));
    var_0 = true;
    let var_1 = Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(firstLeadingBit(-11169i), _wgslsmith_add_i32(arg_3, 1i), 51571i, ~u_input.b) >> (vec4<u32>(1u, _wgslsmith_add_u32(50029u, 7201u), 1u, ~arg_0) % vec4<u32>(32u)), ~abs(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.a, u_input.a, 24251i), vec4<i32>(arg_3, -9973i, arg_3, 20218i)))), arg_0, true, _wgslsmith_f_op_f32(ceil(arg_2.x)), select(abs(abs(reverseBits(vec2<u32>(arg_0, arg_0)))), _wgslsmith_div_vec2_u32(vec2<u32>(arg_0, 29597u >> (arg_0 % 32u)), firstTrailingBit(vec2<u32>(arg_0, 43515u))), true));
    return var_1.a;
}

fn func_2(arg_0: vec3<u32>, arg_1: bool) -> Struct_4 {
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(u_input.b, 2147483647i), _wgslsmith_dot_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 0i, u_input.b, u_input.b), vec4<i32>(u_input.b, -55036i, 0i, u_input.b)), ~vec4<i32>(-2147483647i, 2147483647i, 52246i, 39196i))), firstLeadingBit(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(24836i, -13i), vec2<i32>(u_input.a, 0i)) | vec2<i32>(44518i, u_input.b))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(859f, -1198f, 804f), vec3<f32>(714f, -1111f, 245f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(531f, 428f, -608f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1152f, -462f, -324f)))))), _wgslsmith_dot_vec4_i32(max(vec4<i32>(~135i, var_0 & -86004i, ~u_input.b, ~21229i), vec4<i32>(u_input.b, -24922i, -67204i, var_0)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0, 2147483647i, 1i, var_0) & -vec4<i32>(-8566i, u_input.a, 3123i, 0i), _wgslsmith_mult_vec4_i32(func_3(arg_0.x, -1206f, vec2<f32>(-1538f, 1932f), -8646i), vec4<i32>(var_0, var_0, -1i, u_input.a) >> (vec4<u32>(arg_0.x, 45108u, arg_0.x, 4294967295u) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0, var_0, var_0, 2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0, var_0, u_input.a, var_0), vec4<i32>(var_0, u_input.b, var_0, -2147483647i)), ~vec4<i32>(-4041i, 2147483647i, u_input.b, var_0)))), vec4<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(25141u, arg_0.x, 57181u, 32141u)), vec4<u32>(4294967295u, 34827u, 7371u, 2606u)) ^ 0u, max(2793u >> ((arg_0.x | 0u) % 32u), arg_0.x), max(arg_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, 9714u), vec3<u32>(arg_0.x, arg_0.x, arg_0.x))), ~1u));
    var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.a.x)) - 1121f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_1.a.x))))), 776f), (firstTrailingBit(_wgslsmith_mult_i32(var_1.b, -1i)) | u_input.a) ^ ~52101i, vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(min(0u, arg_0.x), 1u), vec2<u32>(arg_0.x, 1u)), _wgslsmith_mod_u32(~_wgslsmith_sub_u32(var_1.c.x, var_1.c.x), max(_wgslsmith_dot_vec2_u32(arg_0.xy, var_1.c.xx), arg_0.x)), var_1.c.x, arg_0.x));
    var var_2 = arg_0.xy;
    let var_3 = select(vec2<bool>(true, all(!(!vec2<bool>(true, arg_1)))), vec2<bool>(!(var_2.x <= var_2.x), arg_1), vec2<bool>(any(select(!vec3<bool>(true, arg_1, arg_1), vec3<bool>(true, false, arg_1), select(vec3<bool>(false, false, true), vec3<bool>(arg_1, arg_1, arg_1), true))), max(u_input.a, var_0) != 0i));
    return Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_1.a, _wgslsmith_f_op_vec3_f32(step(var_1.a, var_1.a))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.a, var_1.a))), _wgslsmith_mod_i32(-25416i, -2147483647i), max(var_1.c, ~vec4<u32>(arg_0.x, var_1.c.x, 53896u, arg_0.x))), true, Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 1i, var_0, 1i) & _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.b, var_1.b, var_0), vec4<i32>(1i, -2147483647i, -13273i, 7905i)), vec4<i32>(-1i) * -vec4<i32>(var_1.b, 80736i, u_input.a, u_input.b)), var_2.x & ~(~24103u), (~var_0 & -1i) < (~(-1i) ^ _wgslsmith_sub_i32(var_0, u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x - -1000f) + _wgslsmith_f_op_f32(var_1.a.x + var_1.a.x)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-782f)), _wgslsmith_f_op_f32(1352f * -1000f), select(var_3.x, arg_1, false)))), _wgslsmith_sub_vec2_u32(var_1.c.ww, firstTrailingBit(~vec2<u32>(arg_0.x, var_1.c.x)))), arg_1);
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: Struct_4) -> i32 {
    let var_0 = Struct_2(vec3<bool>(true, arg_1.b, true | (arg_1.a.c.x <= 4148u)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-938f, 1000f, arg_1.c.d, -1000f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.c.d, 362f, arg_1.a.a.x, 617f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.c.d, arg_1.c.d, arg_1.c.d, arg_2.a.a.x))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.a.a.x, -317f, -392f, -1075f), vec4<f32>(-1078f, arg_2.a.a.x, arg_2.a.a.x, 760f), true)))))), ~2147483647i, all(!select(vec3<bool>(false, true, arg_1.d), vec3<bool>(true, false, arg_2.c.c), !vec3<bool>(arg_1.b, false, arg_2.d))), true);
    var var_1 = select(select(select(select(!vec4<bool>(arg_1.c.c, arg_2.b, false, false), vec4<bool>(true, false, false, var_0.a.x), false), !vec4<bool>(arg_1.b, arg_1.d, false, arg_1.c.c), true), !(!select(vec4<bool>(arg_1.c.c, arg_2.b, arg_1.b, arg_1.c.c), vec4<bool>(arg_2.d, arg_1.b, var_0.d, arg_1.d), vec4<bool>(arg_1.d, true, arg_1.b, true))), false), select(!(!vec4<bool>(var_0.d, true, arg_2.d, arg_2.d)), vec4<bool>(true & arg_1.c.c, true, arg_2.d, false != select(true, true, arg_1.d)), !(!(!vec4<bool>(false, true, arg_1.c.c, false)))), select(!select(select(vec4<bool>(arg_1.c.c, arg_2.d, var_0.a.x, var_0.d), vec4<bool>(var_0.e, true, arg_1.c.c, true), true), !vec4<bool>(arg_2.c.c, arg_2.b, var_0.a.x, var_0.d), vec4<bool>(false, arg_1.d, false, false)), vec4<bool>(arg_1.b, _wgslsmith_f_op_f32(floor(arg_1.a.a.x)) == _wgslsmith_f_op_f32(select(arg_1.a.a.x, -437f, true)), false & (arg_2.c.d > arg_0), true), select(select(!vec4<bool>(false, arg_1.b, false, arg_2.d), vec4<bool>(false, arg_2.d, false, false), vec4<bool>(true, var_0.a.x, arg_1.d, true)), !vec4<bool>(var_0.e, arg_2.c.c, false, var_0.a.x), select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_2.c.c, false, false, var_0.d), !vec4<bool>(arg_2.c.c, true, var_0.e, false)))));
    var_1 = select(!vec4<bool>(select(var_1.x, var_0.a.x && false, all(vec2<bool>(false, arg_2.d))), false, true, true), !(!(!vec4<bool>(true, arg_2.b, false, true))), !(!vec4<bool>(!var_1.x, var_1.x, false, true)));
    var var_2 = arg_1.a.c.x;
    var_1 = select(!vec4<bool>(var_1.x, var_0.d, !all(var_0.a.zz), !(!var_0.a.x)), select(select(vec4<bool>(var_1.x, arg_1.c.c, true, true), select(select(vec4<bool>(arg_2.c.c, false, false, true), vec4<bool>(arg_2.d, true, var_1.x, var_0.a.x), vec4<bool>(arg_1.c.c, true, false, false)), select(vec4<bool>(false, false, arg_1.d, true), vec4<bool>(var_1.x, false, false, arg_2.d), arg_2.d), select(vec4<bool>(true, arg_1.c.c, false, true), vec4<bool>(arg_2.d, var_0.e, true, var_1.x), vec4<bool>(true, false, false, true))), vec4<bool>(-673f <= arg_2.c.d, !var_1.x, arg_1.c.c, true)), select(select(vec4<bool>(true, true, false, arg_2.c.c), select(vec4<bool>(var_1.x, arg_1.d, false, true), vec4<bool>(true, var_0.a.x, arg_1.b, var_0.a.x), var_1.x), vec4<bool>(false, true, true, false)), select(select(vec4<bool>(arg_2.d, false, var_0.a.x, false), vec4<bool>(true, var_0.d, arg_1.b, false), vec4<bool>(true, false, var_1.x, arg_2.d)), !vec4<bool>(true, var_1.x, arg_1.b, var_0.d), any(vec2<bool>(var_1.x, true))), vec4<bool>(arg_0 > var_0.b.x, arg_1.a.c.x != 65180u, true, true)), !all(var_0.a.yx) && !(false || arg_1.d)), vec4<bool>(1i != arg_2.c.a.x, all(!var_1.wxz), any(select(!var_1.zxx, vec3<bool>(true, false, var_1.x), !vec3<bool>(var_0.a.x, true, arg_2.d))), false));
    return 2147483647i;
}

fn func_1() -> Struct_3 {
    let var_0 = -func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -914f)))), func_2(vec3<u32>(1u, 1u, 1u), true && any(vec2<bool>(false, true))), Struct_4(func_2(vec3<u32>(1u, 1u, 1u), true).a, !(-16089i <= u_input.a), Struct_1(firstLeadingBit(vec4<i32>(u_input.b, 1i, u_input.b, 23559i)), 4294967295u, any(vec3<bool>(false, false, false)), _wgslsmith_f_op_f32(abs(492f)), vec2<u32>(18186u, 1u)), u_input.b > -6002i));
    return func_2(select(vec3<u32>(13787u, 1u, 4294967295u), ~vec3<u32>(1u, 1u, 1u), true), all(select(vec3<bool>(true, all(vec2<bool>(false, false)), all(vec3<bool>(true, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), true))).a;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3) -> u32 {
    let var_0 = Struct_4(arg_0, true || func_2(~arg_2.c.zzw, true | arg_1.c).b, Struct_1(-firstTrailingBit(vec4<i32>(6189i, arg_2.b, u_input.b, -1i)) ^ reverseBits(_wgslsmith_mod_vec4_i32(arg_1.a, vec4<i32>(-11963i, arg_2.b, 2147483647i, 6898i))), countOneBits(_wgslsmith_sub_u32(arg_2.c.x, arg_0.c.x) << (~111004u % 32u)), arg_1.e.x >= ~max(4294967295u, arg_1.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x - arg_2.a.x) + 1000f)), arg_0.c.yx), any(!select(vec3<bool>(arg_1.c, arg_1.c, false), !vec3<bool>(arg_1.c, false, true), select(vec3<bool>(true, arg_1.c, arg_1.c), vec3<bool>(arg_1.c, true, arg_1.c), arg_1.c))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-409f - arg_2.a.x))))));
    var_1 = -832f;
    let var_2 = 0i;
    let var_3 = select(vec4<bool>(!(select(true, false, arg_1.c) && false), !arg_1.c, arg_1.c, select(any(vec4<bool>(true, arg_1.c, arg_1.c, false)), true, arg_1.c)), !vec4<bool>(func_2(vec3<u32>(var_0.a.c.x, 63668u, 33745u), all(vec4<bool>(false, arg_1.c, true, true))).c.c, any(vec4<bool>(false, true, arg_1.c, false)) != any(vec2<bool>(arg_1.c, arg_1.c)), arg_1.c, !all(vec3<bool>(true, true, var_0.d))), func_2(~(~_wgslsmith_sub_vec3_u32(var_0.a.c.wyx, vec3<u32>(var_0.c.b, var_0.a.c.x, 1974u))), arg_1.c).c.c);
    return ~(_wgslsmith_clamp_u32(~firstLeadingBit(var_0.a.c.x), min(_wgslsmith_mod_u32(arg_0.c.x, arg_1.e.x), 22177u), arg_2.c.x) & var_0.a.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1000f;
    var var_1 = true;
    let var_2 = u_input.a;
    var var_3 = _wgslsmith_mod_u32(~1u, ~func_5(func_1(), Struct_1(vec4<i32>(var_2, var_2, 74435i, -1i), 0u, true, -793f, vec2<u32>(4294967295u, 45353u)), Struct_3(vec3<f32>(-186f, -648f, -903f), u_input.b, vec4<u32>(83998u, 0u, 1u, 4294967295u)))) & _wgslsmith_add_u32(43726u, abs(firstTrailingBit(1u)));
    var_3 = countOneBits(func_5(func_1(), Struct_1(-vec4<i32>(0i, u_input.b, var_2, u_input.b), ~0u, any(vec4<bool>(true, true, false, false)), _wgslsmith_f_op_f32(var_0 + -866f), ~select(vec2<u32>(1u, 1590u), vec2<u32>(4289u, 107637u), false)), func_2(vec3<u32>(1u, 1u, 1u), false).a));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, vec2<i32>(-(var_2 & min(var_2, var_2)), u_input.a), countOneBits(vec3<i32>(u_input.b, max(2147483647i, u_input.b), func_4(var_0, Struct_4(Struct_3(vec3<f32>(var_0, var_0, var_0), -2147483647i, vec4<u32>(36870u, 0u, 4294967295u, 4294967295u)), false, Struct_1(vec4<i32>(-11856i, 4796i, u_input.a, var_2), 0u, true, var_0, vec2<u32>(4294967295u, 4294967295u)), false), Struct_4(Struct_3(vec3<f32>(var_0, 358f, var_0), -22799i, vec4<u32>(1u, 4294967295u, 1u, 82470u)), false, Struct_1(vec4<i32>(57324i, -586i, 17368i, -1i), 0u, false, 520f, vec2<u32>(1u, 37283u)), true))) >> (countOneBits(~vec3<u32>(1u, 11727u, 4294967295u)) % vec3<u32>(32u))));
}

