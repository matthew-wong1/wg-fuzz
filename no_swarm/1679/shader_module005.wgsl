struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: u32,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2) -> vec2<f32> {
    global0 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a.x >> (1u % 32u), -u_input.a.x), -(1058i ^ u_input.a.x)) | _wgslsmith_sub_i32(u_input.a.x, abs(-12532i)), 87409i);
    var var_0 = ~vec3<u32>((arg_0.c >> (_wgslsmith_dot_vec2_u32(arg_0.b.a.yy, arg_0.b.a.zz) % 32u)) | _wgslsmith_clamp_u32(abs(14775u), 86298u, 33582u), arg_1.d.a, arg_1.b.a);
    var var_1 = Struct_3(reverseBits(~countOneBits(arg_0.b.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c - _wgslsmith_f_op_f32(-arg_1.c)) - -605f), arg_1);
    var var_2 = abs(_wgslsmith_add_vec4_u32(countOneBits(firstLeadingBit(vec4<u32>(arg_0.c, 4294967295u, var_0.x, var_1.a.x))), ~(vec4<u32>(arg_1.b.a, var_1.c.b.a, 70952u, arg_0.b.c.e.a) ^ vec4<u32>(arg_1.e.a, var_1.a.x, 28670u, 0u)) & ~vec4<u32>(arg_0.a.a.a, 43085u, arg_1.e.a, 43305u)));
    global0 = u_input.a.x;
    return _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-978f, 368f), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.c.c, -1561f) - vec2<f32>(1056f, 422f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1767f, 654f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1.c, var_1.c.c))), any(vec3<bool>(true, true, true))))))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_3(Struct_4(Struct_2(Struct_1(0u), Struct_1(4294967295u), -1046f, Struct_1(arg_2.x), Struct_1(arg_2.x)), Struct_3(vec3<u32>(arg_2.x, arg_2.x, 40945u), -293f, Struct_2(Struct_1(arg_2.x), Struct_1(11303u), -717f, Struct_1(arg_2.x), Struct_1(arg_2.x))), 42095u), Struct_2(Struct_1(4294967295u), Struct_1(4294967295u), 1443f, Struct_1(arg_2.x), Struct_1(arg_2.x)))))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_1, vec2<f32>(-507f, 899f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-352f, arg_1.x))))))));
    var var_1 = Struct_4(Struct_2(Struct_1(arg_2.x), Struct_1(1u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(max(var_0.x, arg_1.x)))))), Struct_1(51710u), Struct_1(abs(arg_2.x))), Struct_3(vec3<u32>(~4294967295u, 1u, 21647u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(639f, arg_1.x, arg_0.x)) + -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), Struct_2(Struct_1(_wgslsmith_div_u32(arg_2.x, arg_2.x)), Struct_1(min(arg_2.x, 1u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1311f, var_0.x) * var_0.x), Struct_1(arg_2.x << (0u % 32u)), Struct_1(firstLeadingBit(arg_2.x)))), 49112u);
    let var_2 = !select(vec2<bool>(false, arg_0.x), !(!(!arg_0.zx)), select(arg_0.xz, arg_0.xz, arg_0.x));
    var var_3 = var_1.a;
    let var_4 = Struct_4(var_1.b.c, Struct_3(var_1.b.a, _wgslsmith_f_op_f32(-arg_1.x), Struct_2(var_1.a.b, Struct_1(88294u), 119f, var_3.b, var_3.b)), _wgslsmith_mod_u32(37932u, ~arg_2.x));
    return var_4.a.b;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: bool) -> Struct_2 {
    global0 = ~19200i;
    let var_0 = Struct_3(((_wgslsmith_add_vec3_u32(vec3<u32>(arg_2.a.a, 49318u, arg_2.a.a), vec3<u32>(1u, arg_2.a.a, arg_2.b.a)) | _wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.e.a, 4294967295u, 48677u), vec3<u32>(0u, arg_2.e.a, 0u))) & ~(~vec3<u32>(arg_2.d.a, arg_2.a.a, arg_2.d.a))) << (min(vec3<u32>(max(4294967295u, 0u), 2086u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 10049u, arg_2.b.a) ^ vec3<u32>(4294967295u, 4294967295u, arg_2.e.a), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.b.a, 48741u, arg_2.a.a), vec3<u32>(1u, 2003u, arg_2.e.a)))) % vec3<u32>(32u)), arg_2.c, Struct_2(func_2(vec3<bool>(arg_3, true, all(vec4<bool>(false, arg_3, arg_3, true))), _wgslsmith_div_vec2_f32(vec2<f32>(-514f, 334f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2.c, -312f)))), _wgslsmith_clamp_vec2_u32(vec2<u32>(85369u, 72443u), vec2<u32>(arg_2.e.a, arg_2.b.a), vec2<u32>(arg_2.b.a, arg_2.a.a)) & vec2<u32>(4294967295u, 0u)), func_2(arg_0, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(792f, 1100f) - vec2<f32>(-434f, arg_2.c)), vec2<f32>(2086f, -375f), select(vec2<bool>(arg_0.x, arg_3), arg_0.xy, vec2<bool>(false, false)))), min(firstLeadingBit(vec2<u32>(arg_2.d.a, 1u)), firstLeadingBit(vec2<u32>(4294967295u, arg_2.b.a)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.c + _wgslsmith_f_op_f32(arg_2.c - arg_2.c)))), Struct_1(_wgslsmith_add_u32(select(1u, arg_2.e.a, false), _wgslsmith_add_u32(arg_2.b.a, 15346u))), func_2(select(select(vec3<bool>(arg_3, false, arg_0.x), arg_0, vec3<bool>(true, arg_0.x, false)), arg_0, all(vec4<bool>(arg_0.x, false, arg_3, true))), vec2<f32>(arg_2.c, 444f), vec2<u32>(_wgslsmith_add_u32(arg_2.a.a, 1u), ~arg_2.d.a))));
    global0 = abs((min(arg_1.x, u_input.a.x) << (_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(38069u, 49966u, 45925u, arg_2.b.a), vec4<u32>(0u, var_0.a.x, var_0.c.e.a, arg_2.b.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a.x, 45178u, arg_2.e.a, 1u), vec4<u32>(arg_2.d.a, arg_2.e.a, var_0.a.x, var_0.a.x), vec4<u32>(arg_2.b.a, 4294967295u, 1565u, arg_2.a.a))) % 32u)) ^ (~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x), vec4<i32>(2885i, 21866i, arg_1.x, -39313i)) >> (var_0.a.x % 32u)));
    let var_1 = var_0.c.b;
    let var_2 = false || (_wgslsmith_f_op_f32(round(1918f)) <= 146f);
    return var_0.c;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_5(_wgslsmith_div_vec2_u32(vec2<u32>(countOneBits(12754u), arg_0.e.a) | ~abs(vec2<u32>(28869u, arg_0.e.a)), ~(~vec2<u32>(0u, arg_0.a.a))));
    let var_1 = Struct_4(func_4(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true)), -u_input.a, arg_0, false), Struct_3(_wgslsmith_div_vec3_u32(reverseBits(abs(vec3<u32>(var_0.a.x, var_0.a.x, 64696u))), _wgslsmith_mult_vec3_u32(vec3<u32>(56545u, 64626u, arg_0.a.a), abs(vec3<u32>(27610u, 73622u, var_0.a.x)))), 1000f, Struct_2(Struct_1(countOneBits(arg_0.a.a)), Struct_1(~arg_0.d.a), arg_0.c, func_2(vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, -386f) * vec2<f32>(1267f, arg_0.c)), vec2<u32>(arg_0.a.a, 1u) >> (var_0.a % vec2<u32>(32u))), Struct_1(_wgslsmith_div_u32(1u, 20675u)))), arg_0.d.a);
    let var_2 = u_input.a.x;
    var_0 = Struct_5(vec2<u32>(_wgslsmith_mult_u32(22833u, var_0.a.x), 0u));
    var var_3 = u_input.a;
    return var_1.b.c.d;
}

fn func_6(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec2<bool>(true, any(select(vec2<bool>(any(vec4<bool>(true, true, arg_0, arg_0)), !arg_0), vec2<bool>(true, true), !all(vec3<bool>(false, false, arg_0)))));
    var_0 = !select(select(vec2<bool>(false | var_0.x, !var_0.x), vec2<bool>(false, var_0.x), false), select(!(!vec2<bool>(var_0.x, arg_0)), vec2<bool>(true, var_0.x), select(select(vec2<bool>(var_0.x, true), vec2<bool>(false, true), vec2<bool>(false, var_0.x)), vec2<bool>(true, true), arg_0 || var_0.x)), false);
    let var_1 = func_4(!vec3<bool>(!var_0.x, all(vec3<bool>(true, false, true)), arg_0), select(-vec4<i32>(~u_input.a.x, _wgslsmith_div_i32(-80466i, u_input.a.x), 42376i << (arg_1.a % 32u), ~35910i), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, 47441i), -vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x)), -_wgslsmith_add_i32(-46244i, u_input.a.x), 0i, ~_wgslsmith_dot_vec2_i32(u_input.a.zy, u_input.a.yy)), all(!(!vec4<bool>(false, var_0.x, false, true)))), func_4(vec3<bool>(false, arg_1.a > 1u, var_0.x), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, firstTrailingBit(u_input.a.x), u_input.a.x | u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(-8449i, -29491i))), u_input.a), func_4(vec3<bool>(var_0.x | var_0.x, true, true), _wgslsmith_add_vec4_i32(abs(u_input.a), ~vec4<i32>(1i, 1i, -33311i, u_input.a.x)), Struct_2(Struct_1(arg_1.a), arg_1, _wgslsmith_div_f32(-180f, -141f), Struct_1(arg_1.a), arg_1), true), any(vec2<bool>(all(vec3<bool>(var_0.x, arg_0, false)), !arg_0))), arg_0).e;
    global0 = _wgslsmith_mod_i32(u_input.a.x, select(-55881i, u_input.a.x, all(vec2<bool>(all(vec4<bool>(arg_0, var_0.x, var_0.x, true)), true))));
    var var_2 = all(select(!select(vec3<bool>(var_0.x, false, false), vec3<bool>(false, var_0.x, arg_0), false), !select(vec3<bool>(var_0.x, true, false), vec3<bool>(arg_0, var_0.x, arg_0), var_0.x), vec3<bool>(var_0.x, var_0.x, true))) | arg_0;
    return Struct_1(~37016u);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_5) -> u32 {
    var var_0 = func_6((_wgslsmith_mult_u32(arg_1.a.x & 75781u, ~arg_1.a.x) ^ arg_1.a.x) > 1831u, func_5(func_4(vec3<bool>(select(false, false, false), all(vec2<bool>(true, true)), all(vec3<bool>(false, false, false))), -vec4<i32>(u_input.a.x, 2147483647i, 0i, -1i), Struct_2(arg_0, func_2(vec3<bool>(true, true, false), vec2<f32>(-492f, 1000f), arg_1.a), -447f, Struct_1(arg_0.a), arg_0), select(all(vec4<bool>(false, false, true, true)), true, -1i >= u_input.a.x)), _wgslsmith_add_vec4_i32(u_input.a, -(~u_input.a))));
    var var_1 = true;
    var var_2 = 1f;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1533f, _wgslsmith_f_op_f32(-905f * -1311f), arg_0.a <= 1u)) + _wgslsmith_f_op_f32(f32(-1f) * -881f)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -398f)), _wgslsmith_f_op_f32(step(-1323f, _wgslsmith_f_op_f32(round(-475f)))))));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3)));
    return _wgslsmith_dot_vec4_u32(firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(15313u, var_0.a, var_0.a, arg_1.a.x) >> (vec4<u32>(arg_1.a.x, var_0.a, 16376u, arg_1.a.x) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(17308u, 39272u, 40372u, 1u))) | select(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.a.x, 0u, var_0.a, 0u), vec4<u32>(1u, var_0.a, 4294967295u, 1u)), abs(vec4<u32>(5263u, var_0.a, arg_0.a, arg_0.a)), true)), vec4<u32>(_wgslsmith_mult_u32(var_0.a, ~(~var_0.a)), 4294967295u, arg_1.a.x, _wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(func_2(vec3<bool>(false, true, true), vec2<f32>(var_3, 180f), arg_1.a).a, arg_0.a))));
}

fn func_7(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: vec2<f32>) -> StorageBuffer {
    global0 = u_input.a.x;
    let var_0 = vec4<i32>(arg_1.x, 0i, u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_mod_i32(-1i, arg_1.x), _wgslsmith_div_i32(u_input.a.x, _wgslsmith_sub_i32(-2147483647i, arg_1.x))) >> (0u % 32u));
    global0 = ~(~u_input.a.x);
    var var_1 = Struct_5(vec2<u32>(~arg_0.x, arg_0.x));
    let var_2 = Struct_1(_wgslsmith_add_u32(var_1.a.x, arg_0.x) << (29932u % 32u));
    return StorageBuffer(896f, _wgslsmith_div_i32(i32(-1i) * -20043i, ~(-2147483647i)), -515f, -315f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_7(select(firstTrailingBit(vec2<u32>(1u, 1u)) & vec2<u32>(func_1(Struct_1(4294967295u), Struct_5(vec2<u32>(1u, 1u))), ~2345u), select(~vec2<u32>(4294967295u, 87897u), reverseBits(~vec2<u32>(57546u, 6552u)), vec2<bool>(true, true)), true), abs(_wgslsmith_clamp_vec4_i32(u_input.a, _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 0i, u_input.a.x, -49163i), u_input.a) << (firstTrailingBit(vec4<u32>(0u, 4294967295u, 39545u, 1u)) % vec4<u32>(32u)), (u_input.a | u_input.a) ^ ~u_input.a)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1318f, -1901f)) + vec2<f32>(640f, -190f)) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(809f, -1186f))))), vec2<f32>(_wgslsmith_f_op_f32(trunc(-430f)), _wgslsmith_f_op_f32(-207f + -1230f))));
}

