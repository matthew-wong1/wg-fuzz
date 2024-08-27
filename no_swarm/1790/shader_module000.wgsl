struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: bool,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25> = array<bool, 25>(false, true, false, false, true, false, true, false, false, true, true, true, true, true, false, false, false, true, false, false, false, false, false, true, true);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: f32) -> vec4<bool> {
    let var_0 = -vec4<i32>(~abs(u_input.b), u_input.b, ~0i, 2147483647i);
    var var_1 = _wgslsmith_f_op_f32(select(1718f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 - -1474f) * -2178f))), -129f)), all(vec3<bool>(true & arg_2.c, true != any(vec2<bool>(arg_2.d.x, arg_1.x)), false))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(667f * 205f)))))));
    return select(vec4<bool>(arg_2.d.x, global0[_wgslsmith_index_u32(abs(1u), 25u)], select(true, arg_1.x, !arg_2.d.x) && !arg_2.d.x, any(select(arg_2.b, select(vec3<bool>(arg_2.c, false, arg_1.x), arg_2.a.xzy, true), select(vec3<bool>(false, false, false), arg_2.a.wzy, false)))), vec4<bool>(arg_1.x, all(arg_2.b), all(!select(arg_1, vec2<bool>(false, global0[_wgslsmith_index_u32(41710u, 25u)]), false)), _wgslsmith_f_op_f32(1000f - arg_3) < _wgslsmith_f_op_f32(1070f + _wgslsmith_f_op_f32(select(-756f, arg_0.x, false)))), global0[_wgslsmith_index_u32(min(u_input.c, ~u_input.c), 25u)]);
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: vec3<u32>, arg_3: vec3<i32>) -> vec2<i32> {
    global0 = array<bool, 25>();
    var var_0 = Struct_1(!arg_0, vec3<bool>(true, !(!(4294967295u <= u_input.a.x)), _wgslsmith_dot_vec3_i32(arg_3, -vec3<i32>(0i, 2147483647i, u_input.b)) != -u_input.b), ~(firstTrailingBit(arg_2.x) & reverseBits(0u)) >= arg_2.x, arg_0.yxx);
    global0 = array<bool, 25>();
    var_0 = Struct_1(select(select(select(arg_0, var_0.a, func_3(vec2<f32>(1572f, -311f), vec2<bool>(false, false), Struct_1(var_0.a, arg_0.zxw, true, vec3<bool>(global0[_wgslsmith_index_u32(arg_2.x, 25u)], false, arg_0.x)), -1019f)), arg_0, false), vec4<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(18429u, arg_2.x, arg_2.x, arg_2.x), vec4<u32>(16648u, 4294967295u, 0u, 0u)), abs(u_input.c)), 25u)], abs(1u) < select(arg_2.x, 37600u, true), -arg_1 == 7281i), arg_0), vec3<bool>(u_input.b > abs(abs(-1i)), !(!any(vec2<bool>(var_0.c, false))), !(!(!var_0.b.x))), var_0.a.x, func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(514f, -927f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-885f, -1323f)))), arg_0.xz, Struct_1(select(vec4<bool>(false, false, var_0.c, false), !var_0.a, vec4<bool>(var_0.c, arg_0.x, true, arg_0.x)), vec3<bool>(false, true, func_3(vec2<f32>(-1012f, 2370f), var_0.d.xz, Struct_1(var_0.a, vec3<bool>(true, var_0.d.x, false), global0[_wgslsmith_index_u32(u_input.c, 25u)], vec3<bool>(global0[_wgslsmith_index_u32(11452u, 25u)], var_0.b.x, arg_0.x)), 172f).x), false & (var_0.c && true), vec3<bool>(global0[_wgslsmith_index_u32(55474u, 25u)] | global0[_wgslsmith_index_u32(4294967295u, 25u)], false, true)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-695f - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1066f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-518f * 1390f) + -903f)))).yxx);
    var_0 = Struct_1(vec4<bool>(true, arg_0.x, !global0[_wgslsmith_index_u32(~(~30u), 25u)], global0[_wgslsmith_index_u32(abs(1u | u_input.a.x), 25u)]), func_3(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-112f, -306f), vec2<f32>(-738f, -901f), vec2<bool>(false, true))))))), select(select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 25u)], arg_0.x), !var_0.a.ww, var_0.b.zy), select(vec2<bool>(true, true), vec2<bool>(true, true), false), var_0.a.x), Struct_1(select(var_0.a, func_3(vec2<f32>(140f, 130f), arg_0.xw, Struct_1(vec4<bool>(false, var_0.a.x, true, arg_0.x), vec3<bool>(var_0.d.x, true, arg_0.x), global0[_wgslsmith_index_u32(u_input.c, 25u)], vec3<bool>(true, false, false)), -1223f), !global0[_wgslsmith_index_u32(86401u, 25u)]), select(!arg_0.xxy, var_0.b, any(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 25u)]))), false, vec3<bool>(var_0.b.x && false, select(var_0.c, var_0.b.x, global0[_wgslsmith_index_u32(arg_2.x, 25u)]), all(var_0.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-171f)))).yyy, true, select(!vec3<bool>(all(arg_0.zx), global0[_wgslsmith_index_u32(abs(u_input.c), 25u)], var_0.d.x), !(!(!arg_0.zxw)), true));
    return _wgslsmith_sub_vec2_i32(~arg_3.zx, ~(-arg_3.zz));
}

fn func_2(arg_0: i32) -> vec3<bool> {
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    var var_0 = select(func_4(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-445f, 909f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-165f, 1000f))), vec2<bool>(true, !global0[_wgslsmith_index_u32(u_input.a.x, 25u)]), Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], true, false, global0[_wgslsmith_index_u32(u_input.a.x, 25u)]), !vec3<bool>(global0[_wgslsmith_index_u32(43415u, 25u)], true, false), true, vec3<bool>(global0[_wgslsmith_index_u32(30846u, 25u)], global0[_wgslsmith_index_u32(0u, 25u)], true)), -1270f), select(-u_input.b | ~arg_0, abs(min(1i, -22711i)), any(!vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 25u)]))), ~min(vec3<u32>(1u, u_input.c, u_input.c), _wgslsmith_sub_vec3_u32(vec3<u32>(53362u, u_input.c, 65881u), vec3<u32>(4294967295u, u_input.c, u_input.a.x))), _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(u_input.b, 18420i, arg_0)), reverseBits(vec3<i32>(arg_0, -2147483647i, 1i)), ~vec3<i32>(-2147483647i, 3222i, u_input.b)) ^ max(vec3<i32>(-45450i, u_input.b, 67858i) & vec3<i32>(2147483647i, u_input.b, 0i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 80403i, arg_0), vec3<i32>(-1i, 1i, 56463i)))), vec2<i32>(-41783i & _wgslsmith_sub_i32(-u_input.b, u_input.b), ~(u_input.b ^ arg_0)), global0[_wgslsmith_index_u32(1u, 25u)]);
    let var_1 = 51075u;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(343f)) + _wgslsmith_f_op_f32(f32(-1f) * -625f));
    return select(vec3<bool>(all(vec2<bool>(global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(~u_input.c, 25u)])), true, global0[_wgslsmith_index_u32(~(_wgslsmith_add_u32(u_input.c, 4294967295u) & var_1), 25u)]), select(select(func_3(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2, var_2))), select(vec2<bool>(global0[_wgslsmith_index_u32(var_1, 25u)], false), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 25u)]), vec2<bool>(false, true)), Struct_1(vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(4294967295u, 25u)]), vec3<bool>(true, true, false), global0[_wgslsmith_index_u32(14563u, 25u)], vec3<bool>(true, global0[_wgslsmith_index_u32(36161u, 25u)], true)), _wgslsmith_f_op_f32(-2095f - -369f)).zzz, vec3<bool>(global0[_wgslsmith_index_u32(select(u_input.c, u_input.c, true), 25u)], global0[_wgslsmith_index_u32(70680u, 25u)], any(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 25u)], global0[_wgslsmith_index_u32(1u, 25u)]))), !func_3(vec2<f32>(-1000f, -933f), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], true), Struct_1(vec4<bool>(true, true, false, false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 25u)], global0[_wgslsmith_index_u32(var_1, 25u)], global0[_wgslsmith_index_u32(68735u, 25u)]), global0[_wgslsmith_index_u32(24290u, 25u)], vec3<bool>(global0[_wgslsmith_index_u32(101850u, 25u)], global0[_wgslsmith_index_u32(u_input.a.x, 25u)], false)), var_2).wzy), func_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -589f), -658f), !select(vec2<bool>(global0[_wgslsmith_index_u32(var_1, 25u)], global0[_wgslsmith_index_u32(u_input.a.x, 25u)]), vec2<bool>(global0[_wgslsmith_index_u32(var_1, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 25u)])), Struct_1(!vec4<bool>(global0[_wgslsmith_index_u32(25643u, 25u)], true, true, false), func_3(vec2<f32>(var_2, -925f), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 25u)]), Struct_1(vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(0u, 25u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 25u)], true, global0[_wgslsmith_index_u32(95299u, 25u)]), global0[_wgslsmith_index_u32(u_input.a.x, 25u)], vec3<bool>(global0[_wgslsmith_index_u32(27236u, 25u)], false, true)), var_2).wyx, all(vec2<bool>(true, true)), select(vec3<bool>(global0[_wgslsmith_index_u32(var_1, 25u)], false, global0[_wgslsmith_index_u32(var_1, 25u)]), vec3<bool>(global0[_wgslsmith_index_u32(5954u, 25u)], global0[_wgslsmith_index_u32(7403u, 25u)], global0[_wgslsmith_index_u32(var_1, 25u)]), vec3<bool>(global0[_wgslsmith_index_u32(var_1, 25u)], global0[_wgslsmith_index_u32(var_1, 25u)], true))), var_2).yzz, vec3<bool>(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(68508u, 0u), u_input.a), 25u)], any(select(vec2<bool>(global0[_wgslsmith_index_u32(37046u, 25u)], false), vec2<bool>(global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(0u, 25u)]), vec2<bool>(global0[_wgslsmith_index_u32(var_1, 25u)], global0[_wgslsmith_index_u32(67680u, 25u)]))), false)), vec3<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~firstTrailingBit(vec2<u32>(71137u, 0u)), ~_wgslsmith_add_vec2_u32(u_input.a, u_input.a)), 25u)], global0[_wgslsmith_index_u32(min(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(98597u, 1u, 36825u), vec3<u32>(0u, var_1, 4294967295u))), ~(~1u)), 25u)]));
}

fn func_5(arg_0: Struct_1) -> vec4<bool> {
    global0 = array<bool, 25>();
    let var_0 = arg_0.a;
    let var_1 = u_input.b;
    let var_2 = Struct_1(func_3(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-158f, _wgslsmith_f_op_f32(788f - -1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(381f, -1353f)))), func_3(vec2<f32>(_wgslsmith_f_op_f32(497f + -588f), _wgslsmith_f_op_f32(772f * 400f)), vec2<bool>(true, true), Struct_1(var_0, arg_0.d, false, !arg_0.a.zyy), _wgslsmith_f_op_f32(round(-910f))).zx, Struct_1(vec4<bool>(true, var_1 < 0i, false, arg_0.d.x), vec3<bool>(arg_0.a.x, any(arg_0.a.yyx), func_2(var_1).x), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.c, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a)), 25u)], func_2(i32(-1i) * -27303i)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-695f, 1426f) + -257f), _wgslsmith_f_op_f32(-1f)))), !vec3<bool>(var_0.x, false, u_input.b <= ~(-49106i)), true, func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(1000f)), 768f)), func_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1462f), _wgslsmith_f_op_f32(-1368f + 791f)), arg_0.b.yx, Struct_1(vec4<bool>(arg_0.d.x, false, global0[_wgslsmith_index_u32(u_input.c, 25u)], true), select(var_0.zyy, var_0.zwz, vec3<bool>(arg_0.c, global0[_wgslsmith_index_u32(u_input.a.x, 25u)], var_0.x)), global0[_wgslsmith_index_u32(9497u ^ u_input.a.x, 25u)], vec3<bool>(arg_0.c, global0[_wgslsmith_index_u32(u_input.a.x, 25u)], arg_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 1311f))).xy, Struct_1(var_0, vec3<bool>(any(vec4<bool>(true, false, arg_0.c, global0[_wgslsmith_index_u32(u_input.a.x, 25u)])), false & arg_0.a.x, all(vec2<bool>(var_0.x, arg_0.b.x))), func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(2103f, -530f) * vec2<f32>(536f, 1551f)), !arg_0.d.yy, arg_0, _wgslsmith_f_op_f32(-1000f + 1105f)).x, var_0.wxz), -593f).wyy);
    global0 = array<bool, 25>();
    return !(!(!var_2.a));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> vec3<bool> {
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    var var_0 = !func_5(Struct_1(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 25u)], false, arg_0, false), !arg_1.a, true), func_2(-1i), !global0[_wgslsmith_index_u32(10492u, 25u)] | true, func_2(-9555i)));
    var var_1 = u_input.b;
    var var_2 = Struct_1(vec4<bool>(false, !(!select(arg_2, arg_2, true)), false, false), vec3<bool>(arg_1.d.x, func_2(u_input.b).x, all(func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 25735i, u_input.b, u_input.b), vec4<i32>(20516i, u_input.b, -30831i, 0i))).xz)), true, vec3<bool>(select(~u_input.c, ~76579u, !arg_0) >= _wgslsmith_clamp_u32(u_input.a.x, 4294967295u, u_input.a.x), !(!global0[_wgslsmith_index_u32(u_input.a.x, 25u)] & all(vec4<bool>(var_0.x, true, arg_1.a.x, false))), !global0[_wgslsmith_index_u32(max(1u, 4213u), 25u)] & global0[_wgslsmith_index_u32(~(~4294967295u), 25u)]));
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    var var_0 = Struct_1(vec4<bool>((any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], global0[_wgslsmith_index_u32(u_input.c, 25u)], false)) || true) == !global0[_wgslsmith_index_u32(0u, 25u)], all(!(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)]))), global0[_wgslsmith_index_u32(u_input.c, 25u)], global0[_wgslsmith_index_u32(u_input.a.x, 25u)]), !vec3<bool>(!global0[_wgslsmith_index_u32(u_input.c, 25u)] & global0[_wgslsmith_index_u32(~42013u, 25u)], all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], global0[_wgslsmith_index_u32(u_input.a.x, 25u)], global0[_wgslsmith_index_u32(1u, 25u)])), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.a.x, u_input.c), 25u)]), true, !select(!select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 25u)], global0[_wgslsmith_index_u32(2625u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 25u)], true), global0[_wgslsmith_index_u32(u_input.c, 25u)]), select(func_1(true, Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 25u)], global0[_wgslsmith_index_u32(27761u, 25u)], global0[_wgslsmith_index_u32(0u, 25u)], false), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 25u)], false), true, vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 25u)], true)), global0[_wgslsmith_index_u32(64966u, 25u)]), select(vec3<bool>(true, false, true), vec3<bool>(global0[_wgslsmith_index_u32(47130u, 25u)], true, global0[_wgslsmith_index_u32(u_input.c, 25u)]), false), !vec3<bool>(global0[_wgslsmith_index_u32(10080u, 25u)], global0[_wgslsmith_index_u32(24994u, 25u)], true)), !vec3<bool>(global0[_wgslsmith_index_u32(0u, 25u)], false, false)));
    var_0 = Struct_1(select(var_0.a, var_0.a, var_0.a), var_0.b, global0[_wgslsmith_index_u32(49394u, 25u)] | false, var_0.b);
    let var_1 = Struct_1(select(var_0.a, !(!var_0.a), vec4<bool>(!global0[_wgslsmith_index_u32(countOneBits(u_input.c), 25u)], var_0.d.x, true | func_3(vec2<f32>(-223f, 701f), var_0.b.xz, Struct_1(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 25u)], global0[_wgslsmith_index_u32(u_input.c, 25u)], false), var_0.d, false, var_0.b), -961f).x, false)), vec3<bool>(_wgslsmith_sub_i32(u_input.b, select(u_input.b, u_input.b, global0[_wgslsmith_index_u32(u_input.a.x, 25u)])) > _wgslsmith_sub_i32(44029i, ~u_input.b), true, false), global0[_wgslsmith_index_u32(~15180u, 25u)], vec3<bool>(!(!(!var_0.d.x)), global0[_wgslsmith_index_u32(u_input.a.x | 1u, 25u)], false));
    var_0 = var_1;
    var_0 = Struct_1(!vec4<bool>((global0[_wgslsmith_index_u32(u_input.c, 25u)] & var_0.b.x) || true, true, !(u_input.b >= -9439i), all(func_3(vec2<f32>(-380f, 250f), var_1.a.wx, var_1, 501f))), func_2(-(u_input.b & max(u_input.b, 1i))), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(22427u, ~countOneBits(u_input.c) & 4294967295u, _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.c, 177543u), u_input.c)), 25u)], func_2(-select(-12154i, u_input.b, func_3(vec2<f32>(597f, 1172f), vec2<bool>(true, false), Struct_1(vec4<bool>(true, false, true, var_1.b.x), var_0.d, false, vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 25u)], false)), 1242f).x)));
    var var_2 = _wgslsmith_sub_vec3_i32(min(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(u_input.b, u_input.b, u_input.b)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(56315u, u_input.a.x, 4294967295u), vec3<u32>(8727u, u_input.a.x, u_input.c)) % vec3<u32>(32u)), -vec3<i32>(u_input.b, u_input.b, 34114i)), ~vec3<i32>(u_input.b, u_input.b | 1i, _wgslsmith_div_i32(-27775i, 10388i))), vec3<i32>(i32(-1i) * -1i, reverseBits(~_wgslsmith_add_i32(u_input.b, -58903i)), u_input.b ^ -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(-1007f, u_input.c, firstTrailingBit(_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(u_input.a.x, 0u, u_input.c)), select(vec3<u32>(10921u, 6068u, 0u) & vec3<u32>(1u, u_input.c, 16537u), vec3<u32>(29804u, 90549u, 51757u), all(vec4<bool>(var_1.b.x, true, false, var_0.d.x))))), u_input.b ^ ~(-var_2.x), ~vec4<u32>(firstTrailingBit(4294967295u), u_input.a.x, u_input.c, u_input.c << (u_input.a.x % 32u)) << (vec4<u32>(59315u, 47124u >> (u_input.c % 32u), _wgslsmith_sub_u32(~u_input.a.x, 1u), ~(5734u | u_input.a.x)) % vec4<u32>(32u)));
}

