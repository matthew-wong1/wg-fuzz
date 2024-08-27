struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: bool,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool, arg_3: vec4<f32>) -> bool {
    let var_0 = arg_0 | select(arg_0, vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, arg_1.d), vec2<i32>(-43551i, -54582i)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(29006u, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)) % 32u), min(u_input.a.x, u_input.a.x), _wgslsmith_div_i32(abs(-3559i), -arg_1.d), 0i), any(vec3<bool>(true, !arg_1.e.x, true)));
    var var_1 = Struct_1(-(abs(arg_1.d) << (4294967295u % 32u)) << (4294967295u % 32u), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -505f)), arg_3.x) + arg_3.zz), arg_2, ~(-43736i), arg_1.e);
    var var_2 = _wgslsmith_div_vec3_u32(~(_wgslsmith_div_vec3_u32(select(vec3<u32>(1u, 1u, 1u), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), arg_1.e.yxw), vec3<u32>(0u, 37251u, 0u)) << (~(~vec3<u32>(30390u, 4294967295u, 110063u)) % vec3<u32>(32u))), vec3<u32>(~_wgslsmith_dot_vec2_u32(u_input.c, _wgslsmith_mod_vec2_u32(u_input.c, u_input.c)), 1u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.c.x, 56677u, u_input.c.x), countOneBits(vec3<u32>(4294967295u, 40062u, 46604u))), firstLeadingBit(vec3<u32>(1u, 1u, u_input.c.x)))));
    var var_3 = countOneBits(u_input.b.x);
    var var_4 = var_1.a;
    return false;
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> bool {
    let var_0 = arg_1;
    let var_1 = 1u;
    let var_2 = arg_1.e.zwx;
    let var_3 = select(true, all(vec3<bool>(func_3(_wgslsmith_add_vec4_i32(u_input.a, u_input.a), Struct_1(-1i, vec2<f32>(-1031f, -130f), false, 2147483647i, vec4<bool>(var_2.x, false, true, false)), true != var_0.e.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, -1707f, var_0.b.x, var_0.b.x))), any(vec4<bool>(true, true, arg_1.c, var_2.x)), func_3(_wgslsmith_mult_vec4_i32(u_input.a, u_input.a), Struct_1(arg_1.a, vec2<f32>(arg_1.b.x, arg_1.b.x), true, -5337i, var_0.e), false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(994f, arg_1.b.x, var_0.b.x, arg_1.b.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) * _wgslsmith_f_op_f32(abs(-142f))) < _wgslsmith_f_op_f32(floor(var_0.b.x)));
    let var_4 = 4294967295u;
    return !(-firstTrailingBit(reverseBits(34500i)) >= u_input.a.x);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<u32>, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_1(-(~(~_wgslsmith_div_i32(1i, u_input.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.b, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.b.x, -1000f))))), true, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 0i), u_input.a.wx), arg_0.e);
    let var_1 = u_input.a.yx;
    let var_2 = Struct_1(-reverseBits(_wgslsmith_sub_i32(-var_1.x, ~u_input.a.x)), var_0.b, false, 26031i, vec4<bool>(func_4(~_wgslsmith_mult_u32(13745u, arg_2.x), Struct_1(u_input.a.x, arg_0.b, func_3(vec4<i32>(-1794i, 1i, arg_0.a, -19687i), arg_0, arg_0.c, vec4<f32>(-1047f, var_0.b.x, -573f, -267f)), 1i, !vec4<bool>(true, false, var_0.e.x, true))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(arg_0.b.x, arg_0.b.x)), var_0.b.x)) != -2200f, _wgslsmith_dot_vec3_i32(u_input.a.wxy | u_input.a.zwy, firstTrailingBit(vec3<i32>(arg_0.a, var_1.x, var_0.d))) > arg_0.d, arg_1.x));
    let var_3 = !var_0.e.yy;
    let var_4 = Struct_1(min(-(select(var_0.a, var_2.a, var_2.c) & -27426i), var_2.d), arg_0.b, any(var_0.e), var_2.a, var_0.e);
    return arg_0;
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = func_2(func_2(func_2(arg_2, func_2(Struct_1(-67982i, vec2<f32>(arg_2.b.x, arg_2.b.x), arg_1.c, 94166i, vec4<bool>(arg_1.c, arg_3.e.x, arg_3.c, arg_2.c)), select(vec2<bool>(arg_1.e.x, false), arg_1.e.yy, arg_1.e.x), vec2<u32>(arg_0.x, u_input.c.x), firstTrailingBit(u_input.c)).e.xw, vec2<u32>(abs(arg_0.x), arg_0.x >> (arg_0.x % 32u)), _wgslsmith_add_vec2_u32(~arg_0, arg_0)), vec2<bool>(any(!vec3<bool>(true, true, arg_3.e.x)), any(arg_3.e.wzz)), vec2<u32>(~4294967295u, ~firstLeadingBit(u_input.c.x)), vec2<u32>(1797u, ~(u_input.c.x >> (14201u % 32u)))), vec2<bool>(all(vec3<bool>(!arg_2.e.x, !arg_3.e.x, false)), arg_2.e.x), vec2<u32>(1u, u_input.c.x), abs(arg_0));
    let var_1 = ~firstTrailingBit(arg_1.a);
    let var_2 = _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~(~u_input.c), vec2<u32>(min(82983u, u_input.c.x), arg_0.x)), ~(~u_input.c.x)) ^ ~(~u_input.c.x);
    let var_3 = _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.c.x, var_2, arg_0.x, var_2), vec4<u32>(50284u, 22778u, 4294967295u, u_input.c.x)), ~vec4<u32>(var_2, 11622u, 7435u, 1u)), ~(~78808u), ~(~u_input.c.x))), vec3<u32>(abs(0u << (1u % 32u)), firstTrailingBit(max(arg_0.x, u_input.c.x)), abs(firstLeadingBit(arg_0.x))) & ((vec3<u32>(var_2, u_input.c.x, arg_0.x) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 54191u, 4294967295u), vec3<u32>(43237u, arg_0.x, 15427u)) % vec3<u32>(32u))) | countOneBits(max(vec3<u32>(var_2, u_input.c.x, arg_0.x), vec3<u32>(arg_0.x, var_2, 53177u)))));
    var_0 = arg_1;
    return true == !(!func_4(abs(var_2), Struct_1(-1i, vec2<f32>(-723f, var_0.b.x), arg_3.e.x, 2147483647i, arg_1.e)));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec4<i32>) -> i32 {
    var var_0 = any(vec2<bool>(func_5(u_input.c, Struct_1(max(3967i, 2147483647i), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b.x, 995f) + arg_1.b), true, 22487i, vec4<bool>(false, true, arg_1.c, true)), func_2(arg_1, select(vec2<bool>(false, arg_1.c), arg_1.e.xz, true), vec2<u32>(u_input.c.x, 0u) | u_input.c, firstLeadingBit(vec2<u32>(u_input.c.x, 1u))), Struct_1(u_input.a.x | 1i, _wgslsmith_div_vec2_f32(vec2<f32>(1311f, -1494f), arg_1.b), func_4(u_input.c.x, arg_1), max(u_input.b.x, u_input.b.x), select(vec4<bool>(false, true, true, arg_1.e.x), arg_1.e, vec4<bool>(arg_1.e.x, arg_1.c, arg_1.c, arg_1.c)))), !(47613u <= _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(0u, u_input.c.x)))));
    let var_1 = Struct_1(func_2(func_2(func_2(func_2(Struct_1(0i, arg_1.b, arg_1.c, arg_2.x, vec4<bool>(false, true, false, false)), vec2<bool>(arg_1.c, arg_1.e.x), vec2<u32>(u_input.c.x, u_input.c.x), u_input.c), arg_1.e.xy, abs(vec2<u32>(36732u, 79901u)), ~u_input.c), select(arg_1.e.xx, func_2(arg_1, arg_1.e.wz, u_input.c, u_input.c).e.wy, false), ~_wgslsmith_mult_vec2_u32(u_input.c, u_input.c), u_input.c), !vec2<bool>(!arg_1.e.x, false), vec2<u32>(u_input.c.x, 48189u), ~u_input.c).a, _wgslsmith_f_op_vec2_f32(-arg_1.b), false, (_wgslsmith_div_i32(arg_2.x & arg_2.x, 65478i) << (countOneBits(u_input.c.x) % 32u)) >> (u_input.c.x % 32u), !vec4<bool>(true, false, arg_1.e.x, !all(arg_1.e)));
    var_0 = any(!var_1.e);
    var_0 = true;
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -227f), arg_1.b.x, arg_1.b.x, _wgslsmith_f_op_f32(-1000f * 341f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.b.x, var_1.b.x, -2098f, arg_1.b.x))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-180f, arg_1.b.x, var_1.b.x, -312f))))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_1.b.x, var_1.b.x, arg_1.b.x)))))));
    return _wgslsmith_dot_vec3_i32(reverseBits(u_input.a.www), u_input.a.xzz ^ (abs(min(arg_2.wyw, vec3<i32>(44565i, 2147483647i, arg_0))) >> (vec3<u32>(u_input.c.x, 4294967295u, _wgslsmith_mult_u32(18259u, 11602u)) % vec3<u32>(32u))));
}

fn func_6(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_1) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(arg_1 - arg_2.b)))))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_2.b.x)), _wgslsmith_f_op_f32(-arg_1.x))))), 1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(169f, 1279f, 719f);
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(-188f)), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + var_0.x));
    var var_1 = Struct_1(~(~_wgslsmith_mult_i32(2147483647i, u_input.b.x)), _wgslsmith_f_op_vec2_f32(func_6(u_input.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.yy))), Struct_1(_wgslsmith_add_i32(func_1(30663i, Struct_1(u_input.b.x, var_0.zy, false, -1i, vec4<bool>(true, true, false, false)), vec4<i32>(u_input.a.x, u_input.b.x, 2147483647i, -690i)), u_input.a.x), var_0.yz, _wgslsmith_f_op_f32(-697f + var_0.x) > var_0.x, _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, 0i, -6157i)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true))))), select(true, (u_input.a.x >> ((u_input.c.x >> (u_input.c.x % 32u)) % 32u)) == abs(u_input.b.x), false), 1i, vec4<bool>(true, func_2(Struct_1(_wgslsmith_sub_i32(u_input.a.x, 0i), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, var_0.x), vec2<f32>(-1425f, -1822f))), var_0.x == 127f, u_input.a.x, vec4<bool>(true, true, true, true)), vec2<bool>(2147483647i > u_input.a.x, true), vec2<u32>(u_input.c.x, countOneBits(54718u)), u_input.c).e.x, true, !func_3(-vec4<i32>(-11904i, u_input.a.x, u_input.b.x, u_input.b.x), func_2(Struct_1(46117i, var_0.yx, true, 0i, vec4<bool>(true, false, false, true)), vec2<bool>(true, false), vec2<u32>(1u, u_input.c.x), vec2<u32>(0u, u_input.c.x)), true, _wgslsmith_f_op_vec4_f32(vec4<f32>(691f, var_0.x, 1307f, var_0.x) + vec4<f32>(var_0.x, var_0.x, 1898f, -1090f)))));
    var_1 = func_2(Struct_1(_wgslsmith_mult_i32(0i, firstTrailingBit(-15641i)), vec2<f32>(var_1.b.x, var_1.b.x), !select(any(vec2<bool>(var_1.c, var_1.c)), func_2(Struct_1(u_input.b.x, vec2<f32>(1800f, var_0.x), true, -14050i, vec4<bool>(false, false, var_1.e.x, var_1.c)), vec2<bool>(true, false), u_input.c, u_input.c).c, var_1.e.x), 1i, select(var_1.e, var_1.e, !var_1.c || false)), vec2<bool>(true, true), u_input.c, vec2<u32>(u_input.c.x, _wgslsmith_add_u32(abs(u_input.c.x), u_input.c.x)));
    var var_2 = func_2(Struct_1(var_1.a, vec2<f32>(func_2(func_2(Struct_1(u_input.a.x, var_1.b, var_1.c, -61524i, vec4<bool>(var_1.c, var_1.e.x, true, var_1.c)), var_1.e.zz, u_input.c, u_input.c), var_1.e.wz, vec2<u32>(18445u, 0u), vec2<u32>(u_input.c.x, u_input.c.x)).b.x, _wgslsmith_f_op_f32(-1f)), any(vec4<bool>(!var_1.c, true, true, false)), ~(~_wgslsmith_dot_vec3_i32(u_input.a.zww, vec3<i32>(-68520i, u_input.a.x, 9626i))), vec4<bool>(var_1.c, all(select(vec4<bool>(true, false, var_1.c, var_1.c), var_1.e, true)), var_1.c, any(var_1.e) || true)), var_1.e.ww, reverseBits(max(u_input.c >> (~u_input.c % vec2<u32>(32u)), ~(~vec2<u32>(42455u, u_input.c.x)))), vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(73345u, u_input.c.x), u_input.c >> (u_input.c % vec2<u32>(32u))), vec2<u32>(63829u, u_input.c.x) | _wgslsmith_mod_vec2_u32(vec2<u32>(52243u, 39275u), vec2<u32>(40894u, u_input.c.x))), 4294967295u));
    let var_3 = func_2(Struct_1(u_input.a.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(-1057f, var_1.b.x, var_1.e.x)), var_2.b.x)), true, 1i, !func_2(Struct_1(u_input.b.x, vec2<f32>(var_0.x, 622f), var_2.c, u_input.a.x, var_1.e), var_2.e.zw, u_input.c, ~u_input.c).e), vec2<bool>(true, var_1.c), ~vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, 0u, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), firstTrailingBit(~u_input.c.x)), u_input.c);
    let var_4 = func_2(Struct_1(-var_3.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.xy)), var_1.e.x, _wgslsmith_sub_i32(~(-14802i) ^ func_2(var_3, vec2<bool>(var_1.e.x, var_3.c), u_input.c, vec2<u32>(u_input.c.x, u_input.c.x)).a, firstLeadingBit(abs(var_2.a))), !vec4<bool>(select(var_2.e.x, false, true), false, !var_2.c, any(var_2.e))), var_3.e.zw, countOneBits(vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 68901u, 14133u, 34844u), vec4<u32>(26557u, u_input.c.x, u_input.c.x, u_input.c.x)), 0u)), vec2<u32>(0u << (u_input.c.x % 32u), ~countOneBits(min(17823u, 31453u)))).e.yy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, 1271f, var_2.b.x) + vec3<f32>(439f, var_1.b.x, 1000f)))))), u_input.c, vec3<f32>(_wgslsmith_f_op_f32(sign(-1653f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) - var_1.b.x) * _wgslsmith_f_op_vec2_f32(func_6(-var_2.d, _wgslsmith_div_vec2_f32(var_1.b, vec2<f32>(1146f, 1616f)), var_3)).x), -2325f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(floor(1017f)), var_3.b.x))), vec2<f32>(1000f, _wgslsmith_f_op_f32(max(var_3.b.x, 572f)))), -757f);
}

