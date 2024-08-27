struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec3<f32>,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_4) -> vec3<bool> {
    var var_0 = true;
    var var_1 = !any(select(select(select(vec4<bool>(false, true, arg_2.a.x, true), vec4<bool>(arg_2.a.x, false, false, false), arg_2.a.x), vec4<bool>(false, false, true, false), !arg_2.a.x), !select(vec4<bool>(arg_2.a.x, arg_2.a.x, false, true), vec4<bool>(true, true, arg_2.a.x, false), true), true));
    var var_2 = -23628i;
    let var_3 = _wgslsmith_mod_vec2_u32(vec2<u32>(abs(firstLeadingBit(arg_2.b)) >> (countOneBits(arg_2.b) % 32u), countOneBits(_wgslsmith_clamp_u32(max(0u, 55814u), u_input.a.x, arg_2.b))), countOneBits(u_input.a.yz));
    var var_4 = Struct_2(Struct_1(-_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 22510i), vec2<i32>(1i, -7401i)), 31718i), 1u, u_input.a.x, vec3<u32>(max(arg_0, u_input.a.x), _wgslsmith_add_u32(arg_2.b, arg_0), 1u) >> (u_input.a.yxw % vec3<u32>(32u)), ~abs(vec2<i32>(arg_1, arg_1))), 28155i, _wgslsmith_dot_vec3_i32(vec3<i32>(-49687i, 1i, -27030i), vec3<i32>(_wgslsmith_mod_i32(abs(arg_1), arg_1 << (2974u % 32u)), 30411i, _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-2147483647i, arg_1)), -vec2<i32>(2147483647i, 32183i)))), Struct_1(_wgslsmith_sub_i32(select(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, arg_1), vec2<i32>(arg_1, -3816i)), -2147483647i, arg_2.a.x), abs(2147483647i) << (firstLeadingBit(u_input.a.x) % 32u)), _wgslsmith_dot_vec3_u32(u_input.a.yxw, u_input.a.zwy), max(var_3.x, arg_0 >> (arg_0 % 32u)) ^ 1u, u_input.a.wyx, countOneBits(vec2<i32>(0i, 8591i)) << (reverseBits(~vec2<u32>(arg_2.b, 0u)) % vec2<u32>(32u))), vec4<u32>(arg_2.b, ~1u, reverseBits(var_3.x), ~u_input.a.x));
    return !select(!(!select(vec3<bool>(true, arg_2.a.x, arg_2.a.x), vec3<bool>(arg_2.a.x, true, true), arg_2.a)), arg_2.a, select(vec3<bool>(arg_2.b != arg_2.b, arg_2.a.x || arg_2.a.x, !arg_2.a.x), !select(arg_2.a, vec3<bool>(false, arg_2.a.x, arg_2.a.x), arg_2.a.x), select(select(arg_2.a, arg_2.a, arg_2.a), !arg_2.a, arg_1 < arg_1)));
}

fn func_4(arg_0: Struct_4) -> vec2<f32> {
    var var_0 = Struct_2(Struct_1(-20623i, firstLeadingBit(arg_0.b), select(u_input.a.x, u_input.a.x & u_input.a.x, arg_0.a.x) | ~1u, max(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(u_input.a.x, 1u, 0u)), ~u_input.a.xyz), ~select(u_input.a.wxy, u_input.a.yxw, arg_0.a)), ~min(vec2<i32>(-2147483647i, 1i), ~vec2<i32>(-3333i, -53184i))), 1i, 0i, Struct_1(abs(1i), 4418u, _wgslsmith_add_u32(47117u, 6933u), ~(~(~vec3<u32>(57184u, 55284u, 115946u))), abs(-vec2<i32>(1i, 1i))), u_input.a);
    let var_1 = Struct_2(var_0.d, var_0.b, ~(~(~0i)), var_0.a, vec4<u32>(~(~_wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), 4294967295u, var_0.d.d.x, ~_wgslsmith_div_u32(~2670u, ~arg_0.b)));
    var var_2 = var_1;
    var var_3 = Struct_2(var_1.d, _wgslsmith_sub_i32(101233i, _wgslsmith_mod_i32(-1i, _wgslsmith_mod_i32(-21674i, -var_0.d.e.x))), -2147483647i, var_1.d, _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.a.x, 4294967295u), 12292u, 1u, _wgslsmith_add_u32(_wgslsmith_mult_u32(2299u, 14981u), u_input.a.x)), _wgslsmith_sub_vec4_u32(var_0.e, firstTrailingBit(var_2.e))));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(154f, -405f, 655f, -741f), vec4<f32>(-1177f, 1000f, 1305f, 401f))), vec4<f32>(-903f, 1000f, _wgslsmith_f_op_f32(893f - -186f), _wgslsmith_f_op_f32(abs(1478f))), false))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_4.wy, _wgslsmith_f_op_vec2_f32(select(var_4.wx, vec2<f32>(-425f, -1293f), true)))) + vec2<f32>(1145f, _wgslsmith_div_f32(-495f, _wgslsmith_f_op_f32(max(var_4.x, var_4.x))))) + _wgslsmith_f_op_vec2_f32(-var_4.yw));
}

fn func_2(arg_0: u32, arg_1: vec2<i32>) -> Struct_3 {
    var var_0 = ~4294967295u;
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(863f)), 1000f));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_1 * _wgslsmith_f_op_vec2_f32(func_4(Struct_4(func_3(1u, 2147483647i, Struct_4(vec3<bool>(true, false, false), 56688u)), _wgslsmith_div_u32(13842u, u_input.a.x))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.x, var_1.x)))))), func_3(4294967295u, arg_1.x, Struct_4(func_3(~18214u, _wgslsmith_clamp_i32(-14212i, arg_1.x, arg_1.x), Struct_4(vec3<bool>(false, true, false), 4294967295u)), 34296u)).zz));
    let var_3 = Struct_3(Struct_2(Struct_1(2147483647i, min(select(u_input.a.x, 27697u, true), 1u), ~7418u, reverseBits(u_input.a.wzw), vec2<i32>(-arg_1.x, arg_1.x)), -(~(-10087i)), -firstTrailingBit(-arg_1.x), Struct_1(firstTrailingBit(1i), arg_0, ~70216u, reverseBits(u_input.a.wwy) & vec3<u32>(58042u, u_input.a.x, arg_0), vec2<i32>(-arg_1.x, 119606i)), _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(1u, 65542u, 80446u, u_input.a.x) << (u_input.a % vec4<u32>(32u))) | firstLeadingBit(vec4<u32>(arg_0, arg_0, arg_0, 0u))), _wgslsmith_f_op_f32(var_2.x + var_1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-2091f, -509f, -936f), vec3<f32>(var_1.x, var_2.x, var_1.x))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -361f, -326f) + vec3<f32>(var_2.x, 403f, 478f)))))), vec2<i32>(-2147483647i << (arg_0 % 32u), reverseBits(16151i)));
    var var_4 = !(!select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), false), vec4<bool>(true, false, false, false), true), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true)), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), true), any(vec2<bool>(true, false)))));
    return Struct_3(var_3.a, _wgslsmith_f_op_f32(abs(var_3.b)), vec3<f32>(295f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -156f))), var_3.b), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(-var_3.a.a.e, max(var_3.a.a.e, min(var_3.d, var_3.d))), vec2<i32>(firstLeadingBit(reverseBits(var_3.d.x)), 10210i)));
}

fn func_5(arg_0: Struct_3) -> Struct_2 {
    let var_0 = Struct_4(vec3<bool>(true, false, false), u_input.a.x);
    let var_1 = func_2(4294967295u ^ _wgslsmith_clamp_u32(~(arg_0.a.a.d.x << (u_input.a.x % 32u)), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.a, arg_0.a.e), ~u_input.a), arg_0.a.e.x), arg_0.a.a.e).a;
    var var_2 = Struct_4(!vec3<bool>(false, !all(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x)), _wgslsmith_f_op_f32(round(arg_0.b)) > 817f), ~_wgslsmith_sub_u32(max(arg_0.a.d.b, u_input.a.x) & _wgslsmith_add_u32(var_1.e.x, var_1.d.d.x), 1u));
    var var_3 = func_2(~0u, abs(vec2<i32>(-1i) * -firstLeadingBit(vec2<i32>(var_1.a.a, arg_0.d.x))));
    let var_4 = _wgslsmith_mult_u32(~4294967295u, ~(~_wgslsmith_clamp_u32(36924u, 1u, 46039u) >> (countOneBits(_wgslsmith_dot_vec2_u32(var_1.d.d.yx, vec2<u32>(4294967295u, arg_0.a.d.b))) % 32u)));
    return Struct_2(func_2(u_input.a.x, vec2<i32>(-(i32(-1i) * -2147483647i), 2147483647i)).a.d, var_3.a.c, arg_0.a.a.e.x, var_3.a.d, func_2((~var_1.d.c >> (68016u % 32u)) << (30633u % 32u), var_3.d).a.e);
}

fn func_6(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = abs(vec4<i32>(arg_2.c, _wgslsmith_div_i32(arg_3.a, func_2(4294967295u, arg_3.e).a.d.e.x), _wgslsmith_sub_i32(func_5(Struct_3(Struct_2(Struct_1(0i, arg_2.a.b, 35472u, arg_0.a.d, vec2<i32>(arg_2.b, -1i)), -2147483647i, -1i, Struct_1(arg_0.c, arg_2.e.x, arg_2.a.d.x, vec3<u32>(29735u, arg_3.b, 0u), vec2<i32>(-1i, arg_2.d.a)), vec4<u32>(21869u, arg_0.e.x, arg_3.d.x, 48981u)), -141f, vec3<f32>(-157f, 149f, 176f), vec2<i32>(arg_0.c, -1i))).a.a, -28414i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.d.e.x, -10391i, arg_3.e.x, 49350i), vec4<i32>(arg_2.b, 14082i, -8150i, 1i)))) ^ vec4<i32>(~(-arg_0.c << (arg_3.d.x % 32u)), arg_2.c, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(68786i, 1i, arg_3.a, -27927i), vec4<i32>(2147483647i, -2147483647i, arg_0.c, arg_2.c)), _wgslsmith_dot_vec2_i32(arg_0.a.e, vec2<i32>(31271i, arg_3.e.x)), 1i), _wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(arg_2.a.e.x, -12994i, -2147483647i)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.d.e.x, 1i, arg_2.c), vec3<i32>(arg_2.d.a, 0i, arg_0.b)))), func_5(func_2(77430u, ~arg_0.a.e)).d.e.x);
    let var_1 = Struct_3(Struct_2(arg_2.d, _wgslsmith_dot_vec3_i32(~var_0.yyz, var_0.yxz), 1i, Struct_1(~(~arg_0.a.e.x), max(~1u, 4294967295u), ~(arg_0.d.c & 4294967295u), vec3<u32>(~6839u, arg_0.a.d.x, ~55987u), reverseBits(vec2<i32>(-1i, arg_0.a.e.x)) >> (_wgslsmith_div_vec2_u32(vec2<u32>(49988u, arg_2.d.b), vec2<u32>(35071u, u_input.a.x)) % vec2<u32>(32u))), arg_0.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-241f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2240f * -907f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-834f, -2858f, 1307f), vec3<f32>(-313f, 536f, -210f))))))), vec2<i32>(arg_3.a, _wgslsmith_mod_i32(1i, _wgslsmith_mod_i32(arg_0.c, 14756i)) >> (arg_3.c % 32u)));
    let var_2 = var_1.c.xy;
    var_0 = -(~(-vec4<i32>(_wgslsmith_dot_vec3_i32(var_0.xzz, vec3<i32>(0i, var_1.a.d.e.x, arg_3.e.x)), _wgslsmith_mod_i32(1i, 28461i), arg_3.a, var_1.a.b)));
    var_0 = min(countOneBits(max(vec4<i32>(~var_1.a.b, ~arg_3.a, 0i, arg_2.c << (0u % 32u)), vec4<i32>(_wgslsmith_div_i32(1i, arg_2.d.e.x), arg_3.a, arg_0.a.e.x, 1i))), -((vec4<i32>(-1i) * -vec4<i32>(arg_3.a, arg_2.d.e.x, var_0.x, 27422i)) & (-vec4<i32>(0i, -2147483647i, 42545i, var_0.x) ^ select(vec4<i32>(-41261i, 2147483647i, arg_0.a.a, -18397i), vec4<i32>(var_0.x, 0i, 12117i, -1219i), true))));
    return select(func_3(4294967295u, ~(-1i), Struct_4(vec3<bool>(true, true, true), ~_wgslsmith_div_u32(4294967295u, arg_3.b))), !vec3<bool>(true | all(vec4<bool>(false, false, false, true)), var_0.x != ~(-19179i), func_3(arg_0.a.b, 11819i, Struct_4(vec3<bool>(false, false, true), arg_3.b)).x && true), vec3<bool>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(var_0.zzy, vec3<i32>(arg_3.a, arg_3.a, -826i), vec3<i32>(-52608i, 0i, -10365i)), ~var_0.yzx) != 2147483647i, !any(vec3<bool>(true, false, true)), true));
}

fn func_1() -> vec2<u32> {
    let var_0 = any(select(vec2<bool>(true, true), vec2<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, true), false)), true), all(vec4<bool>(true, true, true, any(vec4<bool>(true, true, true, true))))));
    var var_1 = func_6(func_5(func_2(_wgslsmith_clamp_u32(37481u, 1u | u_input.a.x, u_input.a.x), vec2<i32>(~0i, _wgslsmith_mod_i32(55733i, 9887i)))), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), _wgslsmith_mod_u32(u_input.a.x, 0u), abs(select(u_input.a.x, u_input.a.x, true))), func_2(u_input.a.x, select(_wgslsmith_div_vec2_i32(vec2<i32>(-16937i, 1i), vec2<i32>(-2147483647i, -11230i)), func_2(1u, vec2<i32>(-1i, 60440i)).a.d.e, false)).a.e.x), Struct_2(Struct_1(1i, func_2(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), vec2<i32>(-24307i, 1561i)).a.a.b, func_5(Struct_3(Struct_2(Struct_1(2147483647i, 28979u, 4294967295u, u_input.a.wwx, vec2<i32>(1i, 0i)), 2147483647i, -2147483647i, Struct_1(-33357i, 0u, 9222u, u_input.a.wzx, vec2<i32>(0i, 1i)), u_input.a), 832f, vec3<f32>(1000f, 1015f, -1469f), vec2<i32>(-1i, 2147483647i))).d.d.x, ~u_input.a.yyx, ~vec2<i32>(2147483647i, 1i)), _wgslsmith_add_i32(_wgslsmith_sub_i32(1i, 1i), firstTrailingBit(max(-47294i, -19737i))), 30900i, func_2(~(~1u), ~vec2<i32>(-1i, -51081i) << (vec2<u32>(u_input.a.x, 61306u) % vec2<u32>(32u))).a.a, vec4<u32>(_wgslsmith_add_u32(52884u, u_input.a.x), u_input.a.x, 4294967295u, 24005u) & ~(~u_input.a)), func_2(_wgslsmith_dot_vec4_u32(func_2(4294967295u, vec2<i32>(-2147483647i, 1i)).a.e ^ ~vec4<u32>(8496u, u_input.a.x, 1u, 19810u), u_input.a ^ u_input.a), ~_wgslsmith_mod_vec2_i32(select(vec2<i32>(0i, -27524i), vec2<i32>(1i, -12222i), vec2<bool>(var_0, var_0)), vec2<i32>(1i, 1i))).a.a);
    var var_2 = vec2<i32>(~(-func_5(func_2(13219u, vec2<i32>(-18832i, 1i))).d.a), _wgslsmith_dot_vec4_i32(max(abs(select(vec4<i32>(2147483647i, -1i, 4602i, 2147483647i), vec4<i32>(-41029i, -29648i, 38107i, 31177i), vec4<bool>(var_1.x, var_1.x, var_0, var_0))), firstLeadingBit(reverseBits(vec4<i32>(-2147483647i, -2147483647i, 1i, 6436i)))), reverseBits(vec4<i32>(-1i, 15842i, 2147483647i, -2147483647i) >> (u_input.a % vec4<u32>(32u))) | _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -2147483647i, -2147483647i, -24813i), _wgslsmith_mult_vec4_i32(vec4<i32>(1121i, 1i, -65682i, -8440i), vec4<i32>(0i, 2147483647i, 20861i, 34490i)), abs(vec4<i32>(-4694i, -1i, 14158i, 37622i)))));
    let var_3 = -reverseBits(~(-var_2.x));
    var_1 = vec3<bool>(!any(select(var_1.xy, !var_1.zx, true)), true, all(vec2<bool>(func_6(Struct_2(Struct_1(var_2.x, 78400u, 0u, u_input.a.wwy, vec2<i32>(1i, var_2.x)), var_2.x, 2147483647i, Struct_1(27189i, u_input.a.x, u_input.a.x, vec3<u32>(13674u, 15845u, u_input.a.x), vec2<i32>(var_3, -28300i)), vec4<u32>(u_input.a.x, u_input.a.x, 2568u, 45400u)), 44208u, Struct_2(Struct_1(-1i, 0u, u_input.a.x, vec3<u32>(47865u, 83420u, 117756u), vec2<i32>(-2670i, 1i)), var_3, -35067i, Struct_1(1i, u_input.a.x, u_input.a.x, u_input.a.xzz, vec2<i32>(var_3, var_3)), u_input.a), Struct_1(var_3, 9653u, 4294967295u, vec3<u32>(0u, 0u, u_input.a.x), vec2<i32>(1i, -1i))).x | func_3(2865u, var_2.x, Struct_4(vec3<bool>(true, var_0, true), u_input.a.x)).x, !(var_1.x || var_0))));
    return u_input.a.zw;
}

fn func_7(arg_0: vec2<u32>, arg_1: i32, arg_2: f32, arg_3: f32) -> Struct_1 {
    let var_0 = func_2(u_input.a.x, firstTrailingBit(vec2<i32>(-7386i, 0i)));
    let var_1 = func_5(Struct_3(Struct_2(Struct_1(var_0.a.d.e.x, ~var_0.a.d.b, ~var_0.a.e.x, firstTrailingBit(u_input.a.wxx), vec2<i32>(-1i, -1i)), arg_1 & var_0.a.d.a, var_0.a.d.a, func_5(Struct_3(Struct_2(var_0.a.a, 2147483647i, -11082i, Struct_1(arg_1, 0u, u_input.a.x, vec3<u32>(arg_0.x, arg_0.x, arg_0.x), var_0.d), u_input.a), arg_3, vec3<f32>(var_0.c.x, arg_2, -738f), vec2<i32>(arg_1, arg_1))).a, select(select(vec4<u32>(u_input.a.x, 0u, var_0.a.d.b, 57075u), var_0.a.e, false), vec4<u32>(u_input.a.x, 37056u, 1u, 0u) << (var_0.a.e % vec4<u32>(32u)), vec4<bool>(false, false, false, true))), -685f, func_2(_wgslsmith_clamp_u32(0u, ~u_input.a.x, var_0.a.e.x), vec2<i32>(0i ^ arg_1, ~var_0.a.a.e.x)).c, vec2<i32>(-firstLeadingBit(var_0.d.x), _wgslsmith_div_i32(_wgslsmith_div_i32(34540i, arg_1), -arg_1)))).d;
    let var_2 = func_5(Struct_3(Struct_2(Struct_1(-5573i, 1u, u_input.a.x ^ u_input.a.x, var_0.a.a.d, ~vec2<i32>(2147483647i, 28652i)), ~var_0.a.b, _wgslsmith_clamp_i32(-1i, reverseBits(var_1.a), firstLeadingBit(arg_1)), var_1, u_input.a), _wgslsmith_f_op_f32(ceil(-373f)), var_0.c, vec2<i32>(firstTrailingBit(_wgslsmith_clamp_i32(arg_1, var_1.a, 17775i)), 27717i))).e.ywx;
    var var_3 = Struct_4(select(select(vec3<bool>(true, true, true), vec3<bool>(false, 8135u < var_0.a.e.x, any(vec4<bool>(false, true, true, true))), vec3<bool>(false, true, true)), vec3<bool>(func_6(var_0.a, arg_0.x, var_0.a, var_1).x, true, false), vec3<bool>(false, true, func_3(_wgslsmith_mod_u32(var_1.c, arg_0.x), -2147483647i, Struct_4(vec3<bool>(false, false, true), var_2.x)).x)), ~func_5(var_0).e.x);
    var_3 = Struct_4(select(!select(func_6(var_0.a, 64374u, var_0.a, var_0.a.d), vec3<bool>(true, true, true), false), !vec3<bool>(true, func_6(var_0.a, 4294967295u, var_0.a, var_0.a.d).x, false), !any(!vec2<bool>(var_3.a.x, false))), ~(~22837u));
    return Struct_1(_wgslsmith_clamp_i32(i32(-1i) * -1i, 1i, abs(7393i) | ~(-arg_1)), 101977u, u_input.a.x, vec3<u32>(~func_1().x, ~(~7744u), arg_0.x), func_5(func_2(func_5(var_0).a.c | 4294967295u, vec2<i32>(i32(-1i) * -2147483647i, ~(-16380i)))).d.e);
}

fn func_8(arg_0: Struct_2, arg_1: i32) -> Struct_2 {
    var var_0 = func_2(firstLeadingBit(_wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(arg_0.a.d.yz, vec2<u32>(arg_0.d.d.x, u_input.a.x)), _wgslsmith_div_u32(u_input.a.x, _wgslsmith_mod_u32(arg_0.a.c, 4294967295u)))), vec2<i32>(-_wgslsmith_clamp_i32(~0i, 1i, ~(-2147483647i)), -1i)).b;
    var var_1 = Struct_4(!select(!func_3(arg_0.a.d.x, 0i, Struct_4(vec3<bool>(false, true, true), 0u)), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), 4294967295u);
    var var_2 = func_2(4294967295u, -_wgslsmith_mult_vec2_i32(vec2<i32>(func_5(Struct_3(Struct_2(arg_0.a, arg_1, arg_1, arg_0.d, vec4<u32>(arg_0.a.c, u_input.a.x, u_input.a.x, arg_0.e.x)), 578f, vec3<f32>(-540f, -1169f, 675f), vec2<i32>(2147483647i, 2147483647i))).d.e.x, _wgslsmith_dot_vec2_i32(arg_0.a.e, arg_0.a.e)), firstLeadingBit(vec2<i32>(31829i, arg_0.d.a)) & arg_0.a.e));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_2.c.x, 656f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b))));
    let var_3 = func_7(vec2<u32>(_wgslsmith_mult_u32(0u, func_5(Struct_3(Struct_2(var_2.a.a, var_2.a.c, 28688i, Struct_1(27168i, var_2.a.d.d.x, u_input.a.x, vec3<u32>(var_1.b, var_2.a.a.c, 34644u), vec2<i32>(var_2.a.c, arg_0.d.a)), var_2.a.e), var_2.b, vec3<f32>(var_2.b, -152f, var_2.c.x), arg_0.a.e)).d.b), 82399u), arg_1, 804f, -262f);
    return Struct_2(Struct_1(-_wgslsmith_mult_i32(max(15339i, -2147483647i), 0i), var_1.b, _wgslsmith_add_u32(var_3.c, ~(~36701u)), ~vec3<u32>(~var_3.d.x, ~28483u, var_3.c), _wgslsmith_div_vec2_i32(func_5(Struct_3(Struct_2(var_2.a.d, var_3.e.x, -1i, var_2.a.d, vec4<u32>(92695u, 40082u, var_1.b, var_3.d.x)), 504f, var_2.c, vec2<i32>(-2147483647i, -2147483647i))).d.e, arg_0.d.e)), -func_7(max(vec2<u32>(1u, 9168u), ~arg_0.a.d.yx), ~_wgslsmith_div_i32(arg_0.b, -2147483647i), var_2.c.x, var_2.b).e.x, -_wgslsmith_div_i32(_wgslsmith_add_i32(1i, select(arg_1, -43040i, var_1.a.x)), abs(_wgslsmith_sub_i32(var_3.e.x, 48766i))), func_5(Struct_3(func_2(var_2.a.e.x & arg_0.d.b, select(vec2<i32>(-1i, -1i), vec2<i32>(-1408i, arg_0.b), vec2<bool>(false, true))).a, 235f, var_2.c, arg_0.d.e)).a, vec4<u32>(min(countOneBits(var_2.a.a.c), _wgslsmith_mod_u32(var_3.b, 1u)), u_input.a.x, arg_0.a.d.x ^ func_5(Struct_3(Struct_2(Struct_1(-43182i, var_1.b, 6626u, arg_0.a.d, vec2<i32>(-22559i, var_3.e.x)), 8539i, 22i, Struct_1(45324i, 28537u, arg_0.a.d.x, vec3<u32>(1u, arg_0.e.x, 4294967295u), vec2<i32>(arg_1, arg_1)), u_input.a), var_2.c.x, vec3<f32>(var_2.b, var_2.c.x, 1342f), vec2<i32>(arg_0.b, arg_0.b))).e.x, abs(41321u)) ^ vec4<u32>(arg_0.e.x << (_wgslsmith_sub_u32(u_input.a.x, var_2.a.e.x) % 32u), ~50267u, var_2.a.d.c | ~var_1.b, _wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(arg_0.e.x, 1u, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(sign(664f));
    let var_1 = func_8(Struct_2(func_7(func_1(), -20073i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(951f - var_0) - _wgslsmith_f_op_f32(-var_0)), var_0), _wgslsmith_div_i32(1i, 1i), countOneBits(-2147483647i), Struct_1(_wgslsmith_div_i32(_wgslsmith_add_i32(-1i, 0i), 1577i), ~(31211u << (u_input.a.x % 32u)), abs(~28538u), ~func_7(u_input.a.xz, -39052i, var_0, -719f).d, func_2(u_input.a.x, ~vec2<i32>(0i, 2147483647i)).d), u_input.a), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~_wgslsmith_add_u32(var_1.d.b, 3257u), var_1.a.c));
}

