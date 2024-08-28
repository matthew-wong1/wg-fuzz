struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: u32,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: Struct_3,
    d: Struct_3,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 23>;

var<private> global1: array<i32, 32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: Struct_4) -> vec3<i32> {
    let var_0 = arg_2.d.e.a;
    global1 = array<i32, 32>();
    var var_1 = arg_2.c.a;
    let var_2 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(-446f * -460f)))), _wgslsmith_f_op_f32(round(-371f)))));
    var var_3 = _wgslsmith_sub_u32(81576u, firstTrailingBit(countOneBits(83250u)));
    return _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(min(reverseBits(u_input.c.yxz ^ vec3<i32>(-12512i, 1i, -33769i)), u_input.a.wzx), ~(~countOneBits(vec3<i32>(u_input.a.x, global1[_wgslsmith_index_u32(47329u, 32u)], arg_2.d.e.b.x)))), (-vec3<i32>(2147483647i, 2147483647i, -1i) << (~_wgslsmith_mult_vec3_u32(vec3<u32>(101682u, arg_0.x, arg_0.x), vec3<u32>(arg_0.x, arg_3.c.c, 0u)) % vec3<u32>(32u))) | vec3<i32>(_wgslsmith_add_i32(abs(1i), _wgslsmith_mult_i32(0i, arg_3.d.e.b.x)), global1[_wgslsmith_index_u32(1u, 32u)], _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-39992i, 1i, 27770i), vec3<i32>(-1i, 0i, arg_2.e.e.b.x)), 1i)));
}

fn func_4(arg_0: f32, arg_1: vec3<i32>) -> vec2<i32> {
    var var_0 = _wgslsmith_sub_u32(u_input.d, u_input.d) < abs(34270u);
    let var_1 = vec3<bool>(any(vec2<bool>(u_input.d < u_input.d, arg_1.x == -2147483647i)) && (_wgslsmith_div_i32(~u_input.c.x, ~global1[_wgslsmith_index_u32(4294967295u, 32u)]) < arg_1.x), false, !all(select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), false))));
    let var_2 = select(select(vec4<bool>(true, !var_1.x, select(true, all(vec2<bool>(false, false)), all(var_1)), var_1.x && true), select(select(select(vec4<bool>(var_1.x, true, true, false), vec4<bool>(var_1.x, var_1.x, var_1.x, false), false), !vec4<bool>(var_1.x, false, var_1.x, false), !var_1.x), !vec4<bool>(false, false, var_1.x, var_1.x), vec4<bool>(true, true, true, true)), true), vec4<bool>(all(vec2<bool>(!var_1.x, any(var_1))), false | var_1.x, any(!(!var_1)), false), !vec4<bool>(true, all(select(vec3<bool>(false, var_1.x, false), vec3<bool>(true, true, false), vec3<bool>(var_1.x, var_1.x, var_1.x))), _wgslsmith_f_op_f32(round(1152f)) == -1550f, ~44524u >= u_input.d));
    let var_3 = Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1615f, arg_0, arg_0) * vec3<f32>(-111f, 111f, 1389f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, 251f, 1132f), vec3<f32>(585f, 1711f, 1488f)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0, -346f, 127f)))))), select(vec4<bool>(true, all(var_1), var_1.x, false), select(var_2, var_2, !var_2), var_1.x), Struct_3(var_2.x, u_input.d, u_input.d, 1000f, Struct_2(Struct_1(true, _wgslsmith_f_op_f32(abs(-1619f))), arg_1.xz)), global0[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(_wgslsmith_div_u32(firstTrailingBit(34059u), _wgslsmith_dot_vec4_u32(vec4<u32>(14843u, u_input.d, 4294967295u, u_input.d), vec4<u32>(1u, 4294967295u, 4646u, u_input.d))), 86423u)), 23u)], global0[_wgslsmith_index_u32(~u_input.d, 23u)]);
    let var_4 = var_3.c.e.a;
    return vec2<i32>(11291i, ~1i);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: vec2<u32>) -> Struct_2 {
    global0 = array<Struct_3, 23>();
    var var_0 = Struct_3(!(-2247f < _wgslsmith_f_op_f32(164f - _wgslsmith_f_op_f32(round(865f)))), _wgslsmith_sub_u32(min(_wgslsmith_mod_u32(arg_2.x, u_input.d), ~60635u), ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, u_input.d), ~2561u)), _wgslsmith_add_u32(~arg_0.x, 0u), -1282f, Struct_2(Struct_1(u_input.a.x > _wgslsmith_div_i32(5583i, global1[_wgslsmith_index_u32(5158u, 32u)]), -116f), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1320f + 352f)), func_3(vec4<u32>(u_input.d, u_input.d, u_input.d, 46063u) >> (vec4<u32>(arg_0.x, 1u, 9363u, arg_0.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-888f, -1584f) - vec2<f32>(1106f, 482f)), Struct_4(vec3<f32>(169f, 151f, 539f), vec4<bool>(false, true, true, true), Struct_3(true, 1u, arg_2.x, 895f, Struct_2(Struct_1(true, -1992f), u_input.a.wx)), Struct_3(false, 1u, 1u, -488f, Struct_2(Struct_1(true, 377f), u_input.c.zz)), global0[_wgslsmith_index_u32(1u, 23u)]), Struct_4(vec3<f32>(1000f, 1415f, 1503f), vec4<bool>(true, false, false, false), global0[_wgslsmith_index_u32(u_input.d, 23u)], Struct_3(true, 4294967295u, arg_0.x, -1000f, Struct_2(Struct_1(true, 1490f), arg_1)), Struct_3(true, 29810u, 39282u, 263f, Struct_2(Struct_1(true, 301f), arg_1)))))));
    var var_1 = false;
    var_1 = all(vec3<bool>(false, !var_0.e.a.a, (global1[_wgslsmith_index_u32(~arg_2.x, 32u)] << (_wgslsmith_dot_vec3_u32(arg_0.wyx, vec3<u32>(arg_0.x, 52409u, var_0.b)) % 32u)) == arg_1.x));
    global0 = array<Struct_3, 23>();
    return Struct_2(var_0.e.a, min(vec2<i32>(~arg_1.x, u_input.c.x) & -u_input.a.xw, ~var_0.e.b << (_wgslsmith_add_vec2_u32(arg_0.wz | arg_0.yy, ~vec2<u32>(1u, 0u)) % vec2<u32>(32u))));
}

fn func_1(arg_0: f32) -> vec4<bool> {
    var var_0 = arg_0;
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-451f, 1317f, -958f)))) - vec3<f32>(209f, -408f, 193f)), !vec4<bool>(true, !(u_input.c.x <= 2147483647i), reverseBits(u_input.d) != (u_input.d >> (u_input.d % 32u)), true), Struct_3(true, 18421u, 4294967295u, 1000f, Struct_2(Struct_1(true, -665f), -u_input.c.zx & u_input.b)), Struct_3(select(false, true, true), u_input.d, 0u, _wgslsmith_f_op_f32(f32(-1f) * -966f), func_2(~(~vec4<u32>(u_input.d, 0u, 402u, u_input.d)), ~abs(vec2<i32>(u_input.a.x, 2147483647i)), ~vec2<u32>(43483u, u_input.d))), Struct_3(func_2((vec4<u32>(u_input.d, u_input.d, u_input.d, 10314u) >> (vec4<u32>(52490u, u_input.d, 43544u, u_input.d) % vec4<u32>(32u))) ^ firstTrailingBit(vec4<u32>(56807u, u_input.d, 4294967295u, 50748u)), func_2(vec4<u32>(7726u, 0u, 0u, 1u), vec2<i32>(global1[_wgslsmith_index_u32(u_input.d, 32u)], global1[_wgslsmith_index_u32(u_input.d, 32u)]), vec2<u32>(u_input.d, u_input.d)).b << (_wgslsmith_div_vec2_u32(vec2<u32>(59015u, 1774u), vec2<u32>(u_input.d, 1u)) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.d, 4294967295u), _wgslsmith_mod_vec2_u32(vec2<u32>(50039u, 1u), vec2<u32>(73200u, u_input.d)), ~vec2<u32>(u_input.d, 1u))).a.a, u_input.d, u_input.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 - arg_0))), func_2(select(abs(vec4<u32>(u_input.d, 31374u, u_input.d, u_input.d)), vec4<u32>(u_input.d, 34073u, 9622u, u_input.d) & vec4<u32>(u_input.d, u_input.d, 105813u, u_input.d), vec4<bool>(false, true, false, true)), -_wgslsmith_clamp_vec2_i32(u_input.a.yy, u_input.a.zw, vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 32u)], 28618i)), ~_wgslsmith_add_vec2_u32(vec2<u32>(0u, 31837u), vec2<u32>(u_input.d, u_input.d)))));
    global1 = array<i32, 32>();
    var var_2 = var_1.c;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2143f)) - var_1.a.x);
    return !select(!(!vec4<bool>(false, true, var_1.c.e.a.a, var_2.a)), select(select(!var_1.b, vec4<bool>(var_2.a, var_1.b.x, var_1.d.e.a.a, var_2.e.a.a), var_1.b), var_1.b, true & var_1.c.a), !select(vec4<bool>(true, false, true, true), !vec4<bool>(false, false, var_1.d.e.a.a, true), var_2.e.a.a == var_2.e.a.a));
}

fn func_5(arg_0: vec3<bool>, arg_1: u32) -> Struct_3 {
    let var_0 = _wgslsmith_mod_u32(u_input.d, ~arg_1);
    let var_1 = global0[_wgslsmith_index_u32(~(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(max(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(u_input.d, arg_1)), vec2<u32>(var_0, arg_1)), select(vec2<u32>(1u, var_0), max(vec2<u32>(47191u, 4294967295u), vec2<u32>(58466u, arg_1)), select(vec2<bool>(false, true), vec2<bool>(false, arg_0.x), arg_0.x))) >> (u_input.d % 32u)), 23u)];
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, ~(var_0 ^ arg_1)), ~(~_wgslsmith_mod_vec2_u32(abs(vec2<u32>(4294967295u, arg_1)), vec2<u32>(var_1.c, 7194u)))), 32u)];
    let var_3 = min(select(~vec2<u32>(_wgslsmith_div_u32(arg_1, u_input.d), ~1u), ~(~(~vec2<u32>(var_0, 4294967295u))), vec2<bool>(var_1.e.a.a, true)), countOneBits(countOneBits(vec2<u32>(u_input.d, u_input.d)) & ~abs(vec2<u32>(var_1.b, var_1.c))));
    let var_4 = _wgslsmith_div_vec2_u32(var_3 | vec2<u32>(_wgslsmith_clamp_u32(firstTrailingBit(var_3.x), max(65417u, 42560u), u_input.d), arg_1), vec2<u32>(max(abs(_wgslsmith_div_u32(26715u, var_0)), var_3.x), _wgslsmith_sub_u32(~(u_input.d & 44368u), firstLeadingBit(var_0))));
    return Struct_3(!all(select(arg_0.zz, func_1(-143f).yy, arg_0.xx)), ~(~(~57798u)), ~(~39302u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.e.a.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d * var_1.d) - _wgslsmith_f_op_f32(f32(-1f) * -455f))))), func_2(~_wgslsmith_mod_vec4_u32(abs(vec4<u32>(var_3.x, var_3.x, u_input.d, var_3.x)), ~vec4<u32>(4294967295u, 0u, 11283u, 5862u)), _wgslsmith_mult_vec2_i32((u_input.a.zw ^ vec2<i32>(global1[_wgslsmith_index_u32(36864u, 32u)], var_1.e.b.x)) & select(u_input.c.yz, vec2<i32>(u_input.c.x, var_1.e.b.x), var_1.a), abs(u_input.c.wy)), max(vec2<u32>(_wgslsmith_mod_u32(u_input.d, u_input.d), abs(var_4.x)), _wgslsmith_clamp_vec2_u32(var_3, vec2<u32>(1u, var_1.c), var_3) & _wgslsmith_mult_vec2_u32(var_3, var_4))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = func_5(vec3<bool>(true & all(vec2<bool>(true, true)), false, any(func_1(-135f)) && false), u_input.d);
    global1 = array<i32, 32>();
    var_0 = func_5(!vec3<bool>(true, true, var_1.a), var_1.b).a;
    var var_2 = select(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(874f + -971f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1124f, -2459f)))).wz, !vec2<bool>(true, -global1[_wgslsmith_index_u32(var_1.b, 32u)] > -u_input.a.x), any(vec4<bool>(78466u == select(53667u, 92964u, false), all(!vec2<bool>(false, var_1.e.a.a)), var_1.e.a.a, true)));
    var_0 = all(select(!(!(!vec4<bool>(true, var_2.x, true, var_1.a))), select(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1036f)), select(vec4<bool>(false, var_1.a, var_1.e.a.a, false), select(vec4<bool>(var_1.e.a.a, false, true, var_1.e.a.a), vec4<bool>(false, false, var_1.e.a.a, var_1.a), vec4<bool>(var_2.x, false, false, var_1.a)), select(vec4<bool>(true, false, var_1.a, true), vec4<bool>(false, var_2.x, true, true), vec4<bool>(var_2.x, false, var_2.x, var_1.a))), select(!vec4<bool>(var_1.e.a.a, false, var_1.a, false), vec4<bool>(true, false, var_2.x, true), !vec4<bool>(true, var_1.e.a.a, true, var_1.a))), !any(vec2<bool>(true, var_2.x))));
    global0 = array<Struct_3, 23>();
    let var_3 = select(-2147483647i, abs(_wgslsmith_mult_i32(1i, 2147483647i)), !(!func_1(558f).x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(abs(-_wgslsmith_div_i32(21702i, var_3)), u_input.a.x), _wgslsmith_sub_vec3_u32(~(vec3<u32>(103698u, var_1.b, 1u) >> (vec3<u32>(u_input.d, 12632u, var_1.b) % vec3<u32>(32u))), countOneBits(vec3<u32>(46276u, 62083u, u_input.d))) << ((abs(vec3<u32>(u_input.d, u_input.d, var_1.b) | vec3<u32>(u_input.d, 1u, u_input.d)) << (vec3<u32>(0u, u_input.d, var_1.c) % vec3<u32>(32u))) % vec3<u32>(32u)), vec2<i32>(2147483647i, var_1.e.b.x));
}

