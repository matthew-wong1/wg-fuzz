struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: bool,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
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

var<private> global0: vec2<i32> = vec2<i32>(i32(-2147483648), -1i);

var<private> global1: array<u32, 18>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec3<i32>) -> bool {
    let var_0 = vec4<u32>(~0u, arg_1, 0u, 4294967295u);
    let var_1 = Struct_1(vec2<bool>(!all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false)), true), any(vec2<bool>(true, true)), all(vec2<bool>(true, true)) && true, ~min(vec4<u32>(1u, var_0.x, global1[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(abs(u_input.b), 18u)]), _wgslsmith_mult_vec4_u32(var_0, vec4<u32>(u_input.b, 1u, 52359u, global1[_wgslsmith_index_u32(4294967295u, 18u)]) >> (var_0 % vec4<u32>(32u)))));
    let var_2 = select(select(!(!select(vec3<bool>(true, var_1.b, var_1.b), vec3<bool>(false, var_1.c, true), var_1.c)), vec3<bool>(true, true, true), !vec3<bool>(!var_1.c, 1u != var_1.d.x, true)), vec3<bool>(!all(select(vec4<bool>(var_1.c, var_1.a.x, true, var_1.c), vec4<bool>(var_1.a.x, true, var_1.c, var_1.a.x), vec4<bool>(false, var_1.b, var_1.b, var_1.c))), any(select(!vec4<bool>(false, true, true, var_1.b), !vec4<bool>(var_1.a.x, false, true, var_1.c), true)), var_1.b), vec3<bool>(countOneBits(select(48019u, u_input.b, false)) > ~(var_1.d.x << (u_input.b % 32u)), var_1.a.x & false, true));
    global1 = array<u32, 18>();
    var var_3 = var_2;
    return all(select(select(!(!vec4<bool>(var_2.x, var_1.c, var_3.x, true)), select(vec4<bool>(var_1.a.x, var_2.x, false, true), vec4<bool>(true, true, var_2.x, var_2.x), true), vec4<bool>(any(vec2<bool>(var_1.c, false)), all(vec4<bool>(var_2.x, var_2.x, var_1.a.x, false)), true, var_3.x)), select(!vec4<bool>(var_2.x, false, var_1.b, true), select(vec4<bool>(var_2.x, var_1.c, true, var_3.x), !vec4<bool>(false, false, var_3.x, var_2.x), !var_1.a.x), vec4<bool>(any(vec4<bool>(var_2.x, var_1.b, true, var_3.x)), var_1.a.x & true, true, true)), false));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(!(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)))), any(vec3<bool>(false & func_3(0i, u_input.b, vec3<i32>(-2958i, u_input.a.x, u_input.a.x)), true, true)), !any(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), true)), select(~_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b, u_input.b, global1[_wgslsmith_index_u32(41289u, 18u)], u_input.b)), ~vec4<u32>(52197u, 4294967295u, global1[_wgslsmith_index_u32(1u, 18u)], 0u)), select(vec4<u32>(~u_input.b, 4294967295u, 1u, 46813u), vec4<u32>(1u, select(18161u, 94607u, true), ~u_input.b, 1u), true), vec4<bool>(true, true, true, true)));
    global0 = -select(vec2<i32>(_wgslsmith_add_i32(-46136i, global0.x) << (4294967295u % 32u), i32(-1i) * -3804i), u_input.a ^ _wgslsmith_clamp_vec2_i32(u_input.a, select(u_input.a, vec2<i32>(-23587i, -2147483647i), var_0.a.x), u_input.a), var_0.a);
    var var_1 = _wgslsmith_f_op_f32(abs(817f));
    global1 = array<u32, 18>();
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1958f - _wgslsmith_f_op_f32(479f + -224f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-191f + _wgslsmith_f_op_f32(f32(-1f) * -1116f)), _wgslsmith_f_op_f32(-686f - _wgslsmith_f_op_f32(ceil(231f))))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -752f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-304f))))));
    return Struct_1(!vec2<bool>(any(vec3<bool>(true, true, var_0.a.x)), any(select(vec4<bool>(var_0.c, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(var_0.c, var_0.a.x, var_0.c, var_0.b)))), !(!all(select(var_0.a, var_0.a, var_0.a))), true, ~_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(u_input.b, global1[_wgslsmith_index_u32(var_0.d.x, 18u)], var_0.d.x, var_0.d.x)), ~var_0.d), var_0.d));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>) -> vec2<f32> {
    global0 = vec2<i32>(global0.x, u_input.a.x);
    let var_0 = vec3<u32>(func_2().d.x, global1[_wgslsmith_index_u32(~func_2().d.x | ~select(~arg_0.d.x, ~arg_0.d.x, all(arg_0.a)), 18u)], _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(firstTrailingBit(arg_0.d.ww), ~vec2<u32>(1u, 14203u), select(arg_0.d.yx, arg_0.d.zy, arg_0.a.x)), vec2<u32>(_wgslsmith_sub_u32(~u_input.b, ~95362u), ~(~global1[_wgslsmith_index_u32(4294967295u, 18u)]))));
    var var_1 = Struct_1(arg_0.a, all(func_2().a), !(any(arg_0.a) || arg_0.a.x), vec4<u32>(reverseBits(~arg_0.d.x), 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(~global1[_wgslsmith_index_u32(35505u, 18u)], var_0.x), firstLeadingBit(vec2<u32>(0u, var_0.x) & var_0.zx)), 1u));
    var var_2 = _wgslsmith_mult_u32(countOneBits(5258u), ~(~1u));
    var var_3 = vec4<i32>(-1i | _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-45302i, global0.x, 22012i), vec3<i32>(-1i, -1i, 32796i), vec3<i32>(-14330i, 2147483647i, u_input.a.x)), ~vec3<i32>(u_input.a.x, 26459i, u_input.a.x)), vec3<i32>(_wgslsmith_add_i32(0i, arg_1.x), -12614i, i32(-1i) * -1i)), -_wgslsmith_div_i32(1i, -8474i), -u_input.a.x, _wgslsmith_dot_vec4_i32(reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.x, -2147483647i, arg_1.x, -1i), vec4<i32>(arg_1.x, -1i, -1i, 2147483647i) & vec4<i32>(-35548i, arg_1.x, u_input.a.x, 35252i))), _wgslsmith_div_vec4_i32(vec4<i32>(abs(u_input.a.x), -u_input.a.x, firstTrailingBit(33282i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, arg_1.x, -2147483647i), vec3<i32>(0i, arg_1.x, global0.x))), vec4<i32>(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global0.x, global0.x), vec3<i32>(arg_1.x, 5895i, -32619i)), 56010i, global0.x))));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(1000f - -649f), -145f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(368f, -224f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-821f, -1951f))), any(var_1.a))))), vec2<f32>(_wgslsmith_f_op_f32(step(510f, _wgslsmith_f_op_f32(abs(-1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -330f)), arg_0.a));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-961f, -819f, 1000f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-712f, -320f, -1000f) + vec3<f32>(344f, 1000f, 212f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1024f, 1267f, 1107f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(413f, 1021f, 1404f)))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(func_4(func_2(), select(vec2<i32>(~u_input.a.x, -43153i), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, u_input.a.x), abs(max(u_input.a, u_input.a))), vec2<bool>(true, !all(vec2<bool>(true, false))))));
    global0 = -vec2<i32>(~0i, ~reverseBits(-u_input.a.x));
    var var_2 = func_2();
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(665f, var_1.x, 666f, 1152f) * _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, -689f, var_1.x), vec4<f32>(-541f, var_0.x, var_1.x, var_1.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, -1415f, var_0.x, var_0.x), vec4<f32>(var_1.x, 355f, var_1.x, 400f), vec4<bool>(true, false, false, true))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -911f, var_0.x, 907f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, 1076f, 2554f, var_0.x), vec4<f32>(var_0.x, var_1.x, -1058f, var_1.x), vec4<bool>(var_2.c, var_2.c, var_2.c, var_2.b))))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(913f, var_1.x, var_0.x, var_0.x), vec4<f32>(1406f, -1000f, -342f, var_1.x), vec4<bool>(false, var_2.c, false, var_2.c))), vec4<f32>(var_0.x, var_0.x, var_0.x, var_1.x)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 764f, 311f, -1470f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_0.x, 610f) * vec4<f32>(var_1.x, -512f, -805f, 301f))))));
    return Struct_1(var_2.a, true, var_2.c & false, vec4<u32>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(0u, 18u)], 0u, u_input.b, global1[_wgslsmith_index_u32(0u, 18u)]), var_2.d), ~1u), 18u)], 4294967295u >> (1u % 32u), 0u, ~var_2.d.x << (43755u % 32u)) | var_2.d);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: bool, arg_3: u32) -> i32 {
    var var_0 = select(!(!select(select(vec3<bool>(false, arg_0.a.x, arg_0.c), vec3<bool>(false, arg_0.b, arg_0.a.x), arg_2), vec3<bool>(false, false, arg_0.a.x), true)), vec3<bool>(func_3(~_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), global1[_wgslsmith_index_u32(~1u, 18u)], -(vec3<i32>(u_input.a.x, 37522i, -1i) | vec3<i32>(global0.x, 8061i, -4553i))), all(arg_0.a), any(arg_0.a)), select(select(!(!vec3<bool>(arg_2, arg_0.c, arg_0.a.x)), !select(vec3<bool>(true, false, true), vec3<bool>(true, arg_0.c, arg_2), vec3<bool>(false, true, arg_2)), select(vec3<bool>(arg_2, true, arg_2), select(vec3<bool>(arg_2, arg_2, arg_0.b), vec3<bool>(arg_0.c, true, arg_0.a.x), arg_2), !vec3<bool>(false, arg_0.c, false))), select(select(!vec3<bool>(arg_0.b, arg_0.a.x, true), vec3<bool>(false, arg_2, arg_2), arg_2), vec3<bool>(arg_3 <= 0u, any(vec3<bool>(arg_2, arg_2, arg_0.c)), func_3(u_input.a.x, 1u, vec3<i32>(global0.x, -1i, 1666i))), false), vec3<bool>(arg_2, !arg_0.c, arg_0.c)));
    let var_1 = func_1();
    var var_2 = !(1i < ~u_input.a.x);
    var_0 = vec3<bool>(arg_0.a.x, true, all(!(!vec4<bool>(var_0.x, false, arg_2, var_1.b))) | (any(vec3<bool>(var_1.c, arg_0.c, true)) & select(!arg_0.b, var_0.x, var_0.x)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -560f, arg_1.x, 805f)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, -977f, arg_1.x, -605f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(401f, arg_1.x, arg_1.x, 1814f) - vec4<f32>(arg_1.x, -1422f, arg_1.x, arg_1.x)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.x, 848f, -713f, arg_1.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-512f, arg_1.x, 824f, arg_1.x), vec4<f32>(arg_1.x, 619f, -111f, -713f)))))))));
    return u_input.a.x | _wgslsmith_add_i32(24584i ^ global0.x, global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<i32>(global0.x, -abs(func_5(func_1(), vec2<f32>(414f, 1203f), all(vec4<bool>(false, true, true, true)), ~u_input.b)));
    var var_0 = func_2();
    global1 = array<u32, 18>();
    let var_1 = Struct_1(!vec2<bool>(!var_0.b, true), true || (func_1().a.x && false), !((4294967295u != var_0.d.x) && true), ~var_0.d);
    global0 = reverseBits(_wgslsmith_mod_vec2_i32(u_input.a, countOneBits(u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(-211i);
}

