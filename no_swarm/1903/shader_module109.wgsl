struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> vec3<bool> {
    var var_0 = Struct_2(Struct_1(true, ~(vec4<u32>(4294967295u, 1u, 19189u, 1u) | arg_0.a.b) | arg_0.a.b, arg_0.a.c, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(arg_0.a.d * arg_0.a.d)))), ~_wgslsmith_mult_u32(arg_0.b, u_input.a));
    var_0 = arg_0;
    var var_1 = _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(select(-(vec4<i32>(-1i, arg_1, -29087i, u_input.c) | vec4<i32>(arg_1, u_input.b, arg_1, u_input.c)), vec4<i32>(select(14092i, -13931i, false), arg_1, 0i, 0i), true & (u_input.b <= u_input.c)), vec4<i32>(-firstTrailingBit(arg_1), 1i, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-63480i, -23757i, 2147483647i, -2147483647i) ^ vec4<i32>(111i, u_input.b, u_input.b, arg_1), ~vec4<i32>(arg_1, u_input.c, arg_1, arg_1)))), _wgslsmith_add_vec4_i32(~(~(~vec4<i32>(u_input.c, 28786i, 39244i, u_input.b))), -countOneBits(min(vec4<i32>(u_input.c, -1980i, arg_1, arg_1), vec4<i32>(u_input.c, arg_1, -1i, arg_1)))));
    var var_2 = -42049i;
    var_0 = Struct_2(Struct_1(var_0.a.a, vec4<u32>(1u, 56781u, reverseBits(4294967295u), _wgslsmith_dot_vec4_u32(~arg_0.a.b, abs(var_0.a.b))), _wgslsmith_f_op_f32(-1f), var_0.a.d), u_input.a);
    return select(!select(select(select(vec3<bool>(arg_0.a.a, false, var_0.a.a), vec3<bool>(arg_0.a.a, true, arg_0.a.a), vec3<bool>(arg_0.a.a, var_0.a.a, true)), !vec3<bool>(false, var_0.a.a, var_0.a.a), select(vec3<bool>(true, true, true), vec3<bool>(var_0.a.a, arg_0.a.a, false), arg_0.a.a)), select(!vec3<bool>(arg_0.a.a, var_0.a.a, arg_0.a.a), vec3<bool>(false, false, var_0.a.a), all(vec3<bool>(var_0.a.a, false, arg_0.a.a))), vec3<bool>(true, true, all(vec3<bool>(false, arg_0.a.a, var_0.a.a)))), vec3<bool>(!(!(var_0.a.b.x <= 1u)), all(select(vec2<bool>(arg_0.a.a, true), select(vec2<bool>(arg_0.a.a, var_0.a.a), vec2<bool>(arg_0.a.a, false), vec2<bool>(var_0.a.a, arg_0.a.a)), !vec2<bool>(var_0.a.a, arg_0.a.a))), true), !(!select(select(vec3<bool>(false, true, var_0.a.a), vec3<bool>(false, arg_0.a.a, arg_0.a.a), vec3<bool>(true, true, arg_0.a.a)), vec3<bool>(var_0.a.a, arg_0.a.a, false), any(vec3<bool>(arg_0.a.a, false, true)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_5, arg_2: u32) -> vec2<i32> {
    let var_0 = arg_1;
    let var_1 = Struct_3(-(abs(1i) ^ var_0.a.a.a), !vec2<bool>(var_0.b.a.a, -2293f != var_0.c.x), abs(-countOneBits(abs(vec2<i32>(-38382i, var_0.a.a.a)))));
    var var_2 = ~max(vec3<u32>(firstLeadingBit(~arg_2), firstLeadingBit(var_0.a.b.b.x), var_0.b.b), ~var_0.b.a.b.yxw);
    var var_3 = vec4<bool>(arg_1.a.a.b.x, var_0.b.a.a || any(!(!arg_0)), arg_1.d, var_0.d);
    let var_4 = any(!(!(!vec2<bool>(false, var_0.b.a.a))));
    return ~var_1.c;
}

fn func_2(arg_0: i32, arg_1: vec4<f32>) -> Struct_4 {
    var var_0 = ~(~((min(0u, 46396u) | u_input.a) << (~1u % 32u)));
    var_0 = 69738u;
    var var_1 = false;
    var var_2 = Struct_4(Struct_3(2147483647i, vec2<bool>(2147483647i < max(arg_0, -61283i), true), vec2<i32>(-u_input.c, 23684i)), Struct_1(all(vec3<bool>(false, all(vec2<bool>(true, true)), true)), abs(vec4<u32>(6014u, ~u_input.a, 31540u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), vec4<u32>(26681u, 35734u, u_input.a, u_input.a)))), 592f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.x))), arg_1.x)));
    var var_3 = var_2.b;
    return Struct_4(Struct_3(_wgslsmith_add_i32(_wgslsmith_div_i32(-16567i, arg_0), -1i << (var_2.b.b.x % 32u)) | ~firstTrailingBit(2147483647i), var_2.a.b, func_4(func_3(Struct_2(Struct_1(var_2.b.a, var_2.b.b, var_3.d.x, vec2<f32>(var_3.d.x, var_3.d.x)), u_input.a), -arg_0), Struct_5(Struct_4(Struct_3(arg_0, var_2.a.b, vec2<i32>(-26504i, arg_0)), Struct_1(false, var_3.b, -706f, vec2<f32>(arg_1.x, arg_1.x))), Struct_2(var_2.b, 9105u), _wgslsmith_f_op_vec3_f32(-arg_1.zyx), false != var_3.a), ~var_2.b.b.x)), var_2.b);
}

fn func_5(arg_0: Struct_4) -> Struct_1 {
    var var_0 = !select(select(vec2<bool>(!arg_0.b.a, true), select(arg_0.a.b, vec2<bool>(arg_0.a.b.x, false), arg_0.b.a), arg_0.b.a), func_2(min(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 25634i), arg_0.a.c), arg_0.a.c.x | 247i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b.c, arg_0.b.c, arg_0.b.c, 384f), vec4<f32>(141f, 2314f, arg_0.b.d.x, arg_0.b.c)))).a.b, arg_0.a.b);
    var_0 = arg_0.a.b;
    var var_1 = Struct_3(func_2(1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.c, arg_0.b.c, arg_0.b.c, -808f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1589f, arg_0.b.c, -696f, 1136f)))))).a.a, arg_0.a.b, vec2<i32>(_wgslsmith_mult_i32(arg_0.a.c.x, 2147483647i), min(2147483647i, -28965i)));
    var_0 = vec2<bool>(false, any(vec4<bool>(true, false, var_1.b.x, all(vec3<bool>(false, true, var_0.x)))) | var_0.x);
    var var_2 = func_2(_wgslsmith_mult_i32(_wgslsmith_mult_i32(i32(-1i) * -u_input.c, var_1.a), arg_0.a.c.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b.d.x, arg_0.b.d.x, -728f, 423f), vec4<f32>(arg_0.b.d.x, arg_0.b.c, arg_0.b.c, -215f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.d.x, arg_0.b.d.x, 504f, -107f) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.b.d.x, -1371f, -1376f, 456f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(714f, -1673f, -403f, arg_0.b.d.x) + vec4<f32>(arg_0.b.c, arg_0.b.c, 2589f, arg_0.b.d.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b.d.x, arg_0.b.c, arg_0.b.c, 236f), vec4<f32>(284f, 942f, arg_0.b.d.x, -352f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-556f, arg_0.b.d.x, -1265f, 1129f))), false)))));
    return Struct_1(arg_0.b.a && (arg_0.a.b.x == arg_0.b.a), ~(~(~(~var_2.b.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.d.x * _wgslsmith_f_op_f32(step(-699f, -805f)))), _wgslsmith_f_op_vec2_f32(arg_0.b.d + arg_0.b.d));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_5 {
    var var_0 = func_2(abs(u_input.b), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, arg_0.c, -339f, 344f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, 639f, 976f, arg_0.c))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-302f, arg_0.c, arg_0.d.x, arg_0.c) + vec4<f32>(arg_0.c, -2361f, 2920f, -2777f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1196f, -1713f, -1000f, 765f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(347f, arg_0.c, arg_0.c, arg_0.d.x), vec4<f32>(-636f, -318f, arg_0.c, arg_0.c), vec4<bool>(true, true, arg_0.a, true))))))))).a;
    var_0 = func_2(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(min(var_0.c.x, var_0.c.x), abs(u_input.c)), vec2<i32>(var_0.a, -var_0.a), var_0.c), var_0.c << (arg_1 % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, -308f, arg_0.d.x, arg_0.c)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.d.x, -1498f, 785f, 2483f)))))))).a;
    let var_1 = !select(true, true, true);
    var_0 = func_2(_wgslsmith_dot_vec2_i32(var_0.c, _wgslsmith_mod_vec2_i32(vec2<i32>(min(u_input.b, 0i), -1i), var_0.c)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-969f, 1000f, arg_0.c, arg_0.d.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-489f, 150f, 177f, arg_0.d.x) + vec4<f32>(-2022f, arg_0.d.x, -605f, -577f))))))).a;
    let var_2 = var_0.c;
    return Struct_5(Struct_4(func_2(_wgslsmith_div_i32(-2147483647i, 2147483647i << (u_input.a % 32u)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-867f, arg_0.d.x, arg_0.c, -620f), _wgslsmith_div_vec4_f32(vec4<f32>(-764f, -258f, 781f, arg_0.d.x), vec4<f32>(724f, 464f, 291f, 319f)), var_0.b.x))).a, func_5(func_2(func_2(-23156i, vec4<f32>(arg_0.c, -1000f, -332f, 334f)).a.a, vec4<f32>(arg_0.c, arg_0.c, 1000f, -193f)))), Struct_2(arg_0, 23920u), _wgslsmith_div_vec3_f32(vec3<f32>(-870f, _wgslsmith_div_f32(arg_0.d.x, -342f), _wgslsmith_f_op_f32(-arg_0.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1183f, -663f, arg_0.c) + vec3<f32>(446f, arg_0.d.x, -411f)) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.d.x, arg_0.c, arg_0.c)))) + vec3<f32>(1180f, _wgslsmith_f_op_f32(round(2612f)), _wgslsmith_f_op_f32(ceil(554f))))), var_1);
}

fn func_7(arg_0: Struct_5, arg_1: vec2<bool>, arg_2: Struct_4) -> Struct_4 {
    let var_0 = vec3<bool>(func_3(arg_0.b, arg_2.a.c.x).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.b.d.x * 2463f) * _wgslsmith_f_op_f32(-arg_0.b.a.c))) <= arg_0.a.b.d.x, func_5(func_6(Struct_1(!arg_1.x, ~vec4<u32>(82620u, u_input.a, 0u, arg_0.b.b), _wgslsmith_f_op_f32(409f - -751f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(789f, -1301f))), reverseBits(vec2<u32>(u_input.a, 0u))).a).a);
    let var_1 = -(~arg_2.a.c.x);
    var var_2 = 0i;
    var var_3 = vec3<bool>(true, true, !arg_1.x);
    var var_4 = vec3<i32>(_wgslsmith_clamp_i32(~var_1, ~1100i, _wgslsmith_add_i32(arg_0.a.a.a, -8741i)), -arg_2.a.c.x, _wgslsmith_dot_vec2_i32(min(vec2<i32>(15881i, -1i ^ arg_2.a.a), arg_0.a.a.c), vec2<i32>(var_1, 1i)));
    return Struct_4(arg_2.a, Struct_1(false, vec4<u32>(countOneBits(~1u), arg_2.b.b.x, _wgslsmith_dot_vec2_u32(func_6(Struct_1(false, vec4<u32>(arg_0.b.a.b.x, 4294967295u, arg_2.b.b.x, 8896u), -532f, vec2<f32>(-822f, 664f)), arg_0.b.a.b.xx).b.a.b.zz, _wgslsmith_sub_vec2_u32(arg_0.a.b.b.wx, vec2<u32>(u_input.a, 1u))), select(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.b.b.x, arg_2.b.b.x, 23427u), vec3<u32>(arg_2.b.b.x, arg_0.a.b.b.x, 0u)), abs(4294967295u), arg_0.b.b >= 39177u)), _wgslsmith_div_f32(-434f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.b.d.x, 1203f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.b.d) - _wgslsmith_f_op_vec2_f32(arg_2.b.d * arg_0.c.zx)) - vec2<f32>(_wgslsmith_f_op_f32(arg_0.c.x - arg_0.b.a.c), _wgslsmith_f_op_f32(max(1666f, arg_0.c.x))))));
}

fn func_1() -> vec2<bool> {
    var var_0 = ~abs(_wgslsmith_div_i32(-_wgslsmith_div_i32(1i, 75016i), u_input.b));
    var_0 = firstTrailingBit(-u_input.c);
    var_0 = -_wgslsmith_mod_i32(abs(_wgslsmith_clamp_i32(u_input.c, 1i, -14474i)) >> (countOneBits(105435u) % 32u), -_wgslsmith_add_i32(u_input.b >> (26994u % 32u), min(u_input.b, u_input.b)));
    var var_1 = Struct_5(func_7(func_6(func_5(func_2(-42772i, vec4<f32>(2527f, 254f, -1867f, -621f))), vec2<u32>(~0u, func_5(Struct_4(Struct_3(u_input.c, vec2<bool>(false, false), vec2<i32>(u_input.b, u_input.c)), Struct_1(true, vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), 336f, vec2<f32>(2325f, -816f)))).b.x)), vec2<bool>(true, true), Struct_4(func_6(Struct_1(true, vec4<u32>(28839u, 128581u, 1u, 1u), -276f, vec2<f32>(-226f, 2486f)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 4294967295u))).a.a, Struct_1(true, vec4<u32>(u_input.a, 64678u, u_input.a, u_input.a), _wgslsmith_f_op_f32(-846f - -2199f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-928f, 724f))))), func_6(func_6(Struct_1(true, ~vec4<u32>(45560u, u_input.a, u_input.a, 4294967295u), _wgslsmith_f_op_f32(f32(-1f) * -484f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-845f, 490f))), vec2<u32>(func_5(Struct_4(Struct_3(u_input.b, vec2<bool>(false, false), vec2<i32>(u_input.c, -3088i)), Struct_1(true, vec4<u32>(u_input.a, 0u, 3281u, 2260u), -265f, vec2<f32>(-1714f, -509f)))).b.x, func_6(Struct_1(true, vec4<u32>(57042u, u_input.a, 65075u, 4294967295u), -799f, vec2<f32>(1000f, -341f)), vec2<u32>(0u, u_input.a)).a.b.b.x)).a.b, vec2<u32>(u_input.a, ~(~7468u))).b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(func_7(Struct_5(Struct_4(Struct_3(-26351i, vec2<bool>(false, true), vec2<i32>(2147483647i, -23471i)), Struct_1(true, vec4<u32>(103483u, 25085u, 6804u, u_input.a), -1238f, vec2<f32>(891f, 1000f))), Struct_2(Struct_1(false, vec4<u32>(5751u, u_input.a, u_input.a, 0u), -1640f, vec2<f32>(1511f, -1110f)), 4294967295u), vec3<f32>(-148f, -1207f, 757f), false), vec2<bool>(true, true), Struct_4(Struct_3(-1i, vec2<bool>(true, false), vec2<i32>(u_input.c, u_input.b)), Struct_1(true, vec4<u32>(1u, 34148u, 49256u, u_input.a), 710f, vec2<f32>(1169f, -789f)))).b.d.x, _wgslsmith_f_op_f32(1102f - 2314f), func_5(Struct_4(Struct_3(2147483647i, vec2<bool>(false, true), vec2<i32>(8255i, -10420i)), Struct_1(true, vec4<u32>(0u, u_input.a, 49573u, 1u), 887f, vec2<f32>(806f, -781f)))).d.x))) + vec3<f32>(func_6(func_6(Struct_1(true, vec4<u32>(0u, u_input.a, u_input.a, 8694u), -404f, vec2<f32>(1358f, 932f)), vec2<u32>(10897u, u_input.a)).b.a, vec2<u32>(44126u, u_input.a)).a.b.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -357f))), func_5(func_7(Struct_5(Struct_4(Struct_3(u_input.c, vec2<bool>(false, false), vec2<i32>(-59194i, 0i)), Struct_1(true, vec4<u32>(u_input.a, 21753u, u_input.a, u_input.a), -885f, vec2<f32>(243f, 1000f))), func_6(Struct_1(false, vec4<u32>(u_input.a, 80949u, u_input.a, u_input.a), -1495f, vec2<f32>(-119f, 146f)), vec2<u32>(79369u, u_input.a)).b, vec3<f32>(-135f, 966f, 636f), any(vec2<bool>(false, false))), vec2<bool>(true, true), func_7(Struct_5(Struct_4(Struct_3(1i, vec2<bool>(true, false), vec2<i32>(-2147483647i, u_input.b)), Struct_1(true, vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), -236f, vec2<f32>(907f, -1000f))), Struct_2(Struct_1(true, vec4<u32>(1u, 1u, u_input.a, u_input.a), 1000f, vec2<f32>(403f, -151f)), u_input.a), vec3<f32>(860f, -620f, -2399f), true), vec2<bool>(true, true), func_7(Struct_5(Struct_4(Struct_3(u_input.c, vec2<bool>(false, false), vec2<i32>(-17853i, -37600i)), Struct_1(false, vec4<u32>(0u, u_input.a, u_input.a, 31529u), -377f, vec2<f32>(-921f, -1050f))), Struct_2(Struct_1(false, vec4<u32>(u_input.a, 1673u, u_input.a, u_input.a), -105f, vec2<f32>(881f, -2256f)), u_input.a), vec3<f32>(333f, -1590f, -202f), true), vec2<bool>(true, false), Struct_4(Struct_3(-29836i, vec2<bool>(false, true), vec2<i32>(u_input.c, u_input.b)), Struct_1(true, vec4<u32>(14950u, u_input.a, 44821u, 14345u), -291f, vec2<f32>(-1814f, -273f))))))).a);
    var_1 = func_6(func_6(func_5(func_7(func_6(var_1.b.a, var_1.b.a.b.yz), !var_1.a.a.b, Struct_4(Struct_3(-142i, vec2<bool>(true, var_1.d), vec2<i32>(var_1.a.a.c.x, u_input.b)), var_1.b.a))), vec2<u32>(func_2(-2147483647i, vec4<f32>(var_1.a.b.d.x, -618f, var_1.c.x, 811f)).b.b.x, u_input.a ^ u_input.a) & ~_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.b.a.b.x, 0u), vec2<u32>(var_1.a.b.b.x, 0u))).a.b, var_1.b.a.b.zz);
    return func_7(Struct_5(Struct_4(func_6(Struct_1(var_1.b.a.a, vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), 726f, vec2<f32>(var_1.a.b.c, var_1.b.a.c)), abs(var_1.b.a.b.wy)).a.a, Struct_1(!var_1.a.a.b.x, var_1.b.a.b & var_1.a.b.b, _wgslsmith_f_op_f32(f32(-1f) * -1586f), _wgslsmith_f_op_vec2_f32(-var_1.b.a.d))), var_1.b, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(673f - 1000f) * _wgslsmith_f_op_f32(var_1.b.a.d.x + var_1.b.a.c)), 1028f, 1657f), false), func_3(Struct_2(var_1.b.a, ~4294967295u), ~_wgslsmith_mult_i32(var_1.a.a.a ^ var_1.a.a.a, u_input.c & 1i)).zx, Struct_4(func_6(var_1.a.b, ~vec2<u32>(22840u, var_1.a.b.b.x)).a.a, Struct_1(true, _wgslsmith_add_vec4_u32(~vec4<u32>(var_1.b.b, 7158u, var_1.a.b.b.x, 16602u), ~vec4<u32>(var_1.b.a.b.x, u_input.a, var_1.a.b.b.x, var_1.a.b.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1987f), _wgslsmith_f_op_vec2_f32(func_5(var_1.a).d * vec2<f32>(-314f, var_1.b.a.c))))).a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(func_1(), vec2<bool>(true, true), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    let var_1 = u_input.a;
    var_0 = !func_3(Struct_2(func_5(Struct_4(Struct_3(-40319i, vec2<bool>(var_0.x, var_0.x), vec2<i32>(u_input.c, u_input.c)), Struct_1(true, vec4<u32>(var_1, 6739u, 1887u, 0u), 3508f, vec2<f32>(-101f, 257f)))), countOneBits(u_input.a ^ u_input.a)), func_2(_wgslsmith_clamp_i32(-2147483647i, 1i >> (u_input.a % 32u), _wgslsmith_mod_i32(29958i, -13400i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, 1320f, -847f, 802f))))).a.a).zx;
    var_0 = !select(!select(func_2(u_input.c, vec4<f32>(-1276f, -1292f, -232f, 570f)).a.b, vec2<bool>(var_0.x, false), func_3(Struct_2(Struct_1(var_0.x, vec4<u32>(46615u, u_input.a, 1u, 0u), -450f, vec2<f32>(127f, -139f)), 21708u), u_input.b).yx), vec2<bool>(true, true), func_2(_wgslsmith_div_i32(u_input.b, u_input.c), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1173f, 1257f, 2540f, 1038f) + vec4<f32>(201f, -1567f, -1117f, -619f)), vec4<f32>(749f, -1114f, 619f, -613f))).a.b);
    var_0 = func_6(Struct_1(!((u_input.c & u_input.b) > func_4(vec3<bool>(var_0.x, var_0.x, true), Struct_5(Struct_4(Struct_3(u_input.b, vec2<bool>(var_0.x, var_0.x), vec2<i32>(-1i, 0i)), Struct_1(var_0.x, vec4<u32>(u_input.a, 20578u, u_input.a, var_1), -107f, vec2<f32>(-506f, -620f))), Struct_2(Struct_1(var_0.x, vec4<u32>(u_input.a, 20997u, 0u, var_1), 428f, vec2<f32>(-1085f, -1084f)), var_1), vec3<f32>(623f, -644f, -823f), var_0.x), 4294967295u).x), _wgslsmith_add_vec4_u32(~vec4<u32>(var_1, var_1, 99592u, 53083u), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 23349u, u_input.a, var_1), vec4<u32>(var_1, u_input.a, var_1, 16523u)) ^ vec4<u32>(u_input.a, 16072u, var_1, u_input.a)), _wgslsmith_f_op_f32(-475f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1020f + -419f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2911f, _wgslsmith_f_op_f32(round(232f))))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(firstTrailingBit(17636u), _wgslsmith_mod_u32(var_1, var_1)), func_2(_wgslsmith_mod_i32(u_input.b, 0i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1604f, -438f, -1363f, 659f))).b.b.wz)).a.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-467f, 551f, -870f, -625f), vec4<f32>(-263f, 109f, 837f, -533f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1282f, 750f, -221f, 289f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(951f)), _wgslsmith_f_op_f32(f32(-1f) * -371f), _wgslsmith_f_op_f32(step(1362f, -297f)), _wgslsmith_f_op_f32(-599f - 153f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-309f, -374f, -187f, 1182f))))), vec4<bool>(4294967295u < var_1, !all(vec4<bool>(var_0.x, var_0.x, false, var_0.x)), func_6(Struct_1(false, vec4<u32>(u_input.a, u_input.a, var_1, 5603u), -1781f, vec2<f32>(-621f, -2236f)), vec2<u32>(var_1, 4294967295u)).b.a.a, false))), 299f);
}

