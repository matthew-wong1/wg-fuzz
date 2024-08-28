struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<u32>,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: vec4<i32>;

var<private> global2: array<Struct_2, 26>;

var<private> global3: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(-1i), Struct_1(2147483647i), Struct_1(-1i), Struct_1(43924i), Struct_1(10532i), Struct_1(-1i), Struct_1(-1i), Struct_1(1i), Struct_1(1i), Struct_1(-18392i), Struct_1(0i), Struct_1(-926i), Struct_1(20232i), Struct_1(1i), Struct_1(0i), Struct_1(0i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(12156i, reverseBits(~global1.x)), abs(global1.xx));
    var var_1 = false;
    global0 = array<Struct_1, 24>();
    global1 = _wgslsmith_mod_vec4_i32(vec4<i32>(max(i32(-1i) * -global1.x, -u_input.b ^ _wgslsmith_clamp_i32(-44592i, -2147483647i, global1.x)), global1.x, 31972i, abs(global1.x)), -(abs(vec4<i32>(0i, 1i, global1.x, var_0)) >> (~u_input.e % vec4<u32>(32u))) ^ vec4<i32>(global1.x, _wgslsmith_mult_i32(u_input.b ^ -1i, -31834i >> (u_input.a.x % 32u)), _wgslsmith_mult_i32(-47228i, 0i), ~(-global1.x)));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(-613f, _wgslsmith_f_op_f32(sign(-1348f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1770f, -1151f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(1906f, 700f) + vec2<f32>(-716f, -508f)))))))), global0[_wgslsmith_index_u32(min(firstTrailingBit(~_wgslsmith_mult_u32(u_input.d.x, u_input.d.x)), 44482u), 24u)], select(~vec2<u32>(u_input.d.x, u_input.d.x) ^ max(~u_input.a, ~u_input.d.xy), ~(~select(vec2<u32>(20610u, u_input.a.x), vec2<u32>(4294967295u, u_input.a.x), vec2<bool>(true, true))), false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), global0[_wgslsmith_index_u32(u_input.a.x, 24u)]);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-543f * _wgslsmith_f_op_f32(-var_2.a.x))), _wgslsmith_f_op_f32(-var_2.a.x));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: vec3<bool>) -> vec3<bool> {
    var var_0 = !arg_1;
    let var_1 = abs(-((u_input.c ^ -56223i) & global1.x));
    global1 = ~_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(-(~vec4<i32>(23946i, -1663i, var_1, var_1)), vec4<i32>(global1.x, global1.x, u_input.b, u_input.b) >> (_wgslsmith_mod_vec4_u32(u_input.e, vec4<u32>(u_input.e.x, 0u, u_input.e.x, u_input.e.x)) % vec4<u32>(32u)), vec4<i32>(global1.x >> (23469u % 32u), -58729i, -1i, 1i)), _wgslsmith_div_vec4_i32(~vec4<i32>(global1.x, var_1, global1.x, -49041i), ~(~vec4<i32>(-28241i, var_1, u_input.c, -79245i))));
    var var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.e, ~u_input.e), u_input.a.x)), min(abs(vec2<u32>(u_input.e.x, countOneBits(u_input.a.x))), reverseBits(min(u_input.e.wy, ~vec2<u32>(25145u, 0u)))));
    var_2 = ~41875u;
    return !select(!(!vec3<bool>(arg_1, false, true)), select(vec3<bool>(false, false, all(vec4<bool>(true, arg_1, true, false))), !(!vec3<bool>(arg_1, true, true)), arg_2), !(arg_1 | true));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>) -> i32 {
    var var_0 = select(select(arg_1, !vec3<bool>(arg_1.x, 2147483647i > global1.x, any(vec2<bool>(true, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) * arg_0.a.x) < -428f), vec3<bool>(arg_1.x, func_4(arg_0.a.x, arg_0.a.x > -631f, vec3<bool>(any(vec4<bool>(arg_0.d.x, arg_0.d.x, arg_1.x, true)), all(arg_1), arg_1.x)).x, !all(vec2<bool>(arg_1.x, false))), arg_1.x);
    global3 = array<Struct_1, 16>();
    var var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1673f, _wgslsmith_f_op_f32(-arg_0.a.x))))), Struct_1(~(-2147483647i)), reverseBits(vec2<u32>(arg_0.c.x << (arg_0.c.x % 32u), 4294967295u)), arg_1.yx, Struct_1(u_input.c));
    var var_2 = false;
    let var_3 = u_input.e.x;
    return 5960i;
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_1(func_5(global2[_wgslsmith_index_u32(~u_input.a.x, 26u)], func_4(_wgslsmith_f_op_f32(func_3()), true, select(vec3<bool>(arg_1, arg_1, arg_1), !vec3<bool>(true, false, arg_1), !vec3<bool>(false, true, arg_1)))));
    let var_1 = select(!(!func_4(_wgslsmith_f_op_f32(f32(-1f) * -280f), true, vec3<bool>(true, true, arg_1)).xy), !(!func_4(-1000f, false, func_4(-951f, arg_1, vec3<bool>(arg_1, arg_1, arg_1))).yz), !(!(489f < _wgslsmith_f_op_f32(step(382f, -1063f)))));
    var var_2 = _wgslsmith_mult_i32(var_0.a, -39166i);
    var var_3 = func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -661f))), !(839f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-167f)))), !(!(!func_4(-1075f, false, vec3<bool>(false, var_1.x, arg_1))))).xy;
    let var_4 = Struct_2(vec2<f32>(-1227f, _wgslsmith_f_op_f32(max(1082f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -183f)))))), Struct_1(_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.c, 1i) << (_wgslsmith_dot_vec2_u32(arg_0, u_input.d.xy) % 32u), var_0.a)), ~vec2<u32>(arg_0.x, countOneBits(4294967295u)), vec2<bool>(!arg_1, !var_3.x), global3[_wgslsmith_index_u32(~arg_0.x, 16u)]);
    return Struct_1(global1.x);
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = ~(~arg_0);
    let var_1 = Struct_1(~u_input.b);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2413f, -190f) + vec2<f32>(1115f, 913f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, 469f))) - vec2<f32>(243f, 267f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(763f, -1702f) + vec2<f32>(-2088f, -107f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-755f, -430f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-436f, 721f))))));
    let var_3 = vec2<bool>(false, !(!(any(vec3<bool>(false, false, false)) | true)));
    let var_4 = vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, global1.x, _wgslsmith_add_i32(-32184i, -24352i | arg_1.a)), vec3<i32>(arg_1.a, arg_1.a, 22464i)), -1i << (arg_2.x % 32u), -1i, -2147483647i);
    return func_2(vec2<u32>(arg_0, min(arg_2.x, arg_0)), func_4(_wgslsmith_f_op_f32(var_2.x - 370f), true, vec3<bool>(true, !(!var_3.x), var_3.x)).x, _wgslsmith_add_i32(global1.x, arg_1.a ^ func_5(global2[_wgslsmith_index_u32(min(1u, 52583u), 26u)], !vec3<bool>(true, true, var_3.x))));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: vec2<bool>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -159f)))));
    let var_1 = func_6(~max(_wgslsmith_clamp_u32(~u_input.e.x, _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(42776u, u_input.a.x, u_input.d.x)), u_input.e.x), _wgslsmith_div_u32(13918u, 40783u & u_input.a.x)), func_2(~u_input.e.wz, all(vec4<bool>(arg_2.x | arg_2.x, any(vec3<bool>(false, false, arg_2.x)), arg_2.x, true)), _wgslsmith_sub_i32(-abs(1i), global1.x)), vec3<u32>(4294967295u, 1u, ~u_input.e.x));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_0.x) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 1492f) * arg_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.wy + vec2<f32>(-1327f, var_0))), any(!vec3<bool>(arg_2.x, false, true)))))), var_1, u_input.e.xz, func_4(-883f, true, select(vec3<bool>(true, 0i >= global1.x, true), vec3<bool>(u_input.c < u_input.b, all(vec3<bool>(arg_2.x, arg_2.x, true)), true), true)).xx, global3[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 16u)]);
    var var_3 = u_input.d.yx;
    var var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0)) - 341f))), global3[_wgslsmith_index_u32(var_3.x, 16u)], vec2<u32>(_wgslsmith_add_u32(1u, 0u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(var_2.c.x, 17393u) ^ _wgslsmith_sub_u32(u_input.a.x, u_input.e.x), u_input.e.x)), vec2<bool>(var_2.d.x, true), var_2.e);
    return !select(vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -252f) == _wgslsmith_f_op_f32(sign(var_4.a.x)), true, true), vec3<bool>(all(select(vec3<bool>(false, var_4.d.x, false), vec3<bool>(false, false, var_2.d.x), true)), !all(vec4<bool>(false, var_4.d.x, true, var_2.d.x)), -160f == _wgslsmith_f_op_f32(var_2.a.x * var_4.a.x)), var_4.d.x);
}

fn func_7(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec2<i32>) -> vec2<i32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-211f, arg_2.a.x))), _wgslsmith_f_op_vec2_f32(-arg_2.a), arg_2.d.x)))), func_6(~_wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(7101u, arg_2.c.x)), 55370u << (0u % 32u)), Struct_1(-42232i << (_wgslsmith_mult_u32(1u, u_input.a.x) % 32u)), u_input.d), u_input.e.yz, select(arg_2.d, !arg_0.xz, true), Struct_1(2147483647i));
    var var_1 = func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.a.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1806f - var_0.a.x))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(sign(160f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.a.x, 519f)), 1f), var_0.a.x, var_0.a.x), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(309f, _wgslsmith_f_op_f32(sign(-539f)), -637f, _wgslsmith_f_op_f32(floor(arg_2.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.a.x, -2036f, arg_2.a.x, arg_2.a.x), vec4<f32>(-188f, arg_2.a.x, arg_2.a.x, var_0.a.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, -1771f) - vec4<f32>(1626f, 585f, arg_2.a.x, var_0.a.x))))), arg_0.x)), func_1(var_0.a, vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_2.a.x)), _wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2045f - arg_2.a.x) * var_0.a.x), -735f), select(vec2<bool>(any(vec4<bool>(false, false, true, var_0.d.x)), arg_0.x), select(!var_0.d, arg_2.d, !vec2<bool>(arg_0.x, true)), select(!arg_2.d, func_4(-588f, false, arg_0).xz, any(vec2<bool>(arg_2.d.x, false))))).yz);
    var var_2 = arg_2;
    global1 = (~(-vec4<i32>(arg_1.x, 65951i, var_0.e.a, -69016i) >> (abs(vec4<u32>(29129u, var_0.c.x, 4294967295u, var_2.c.x)) % vec4<u32>(32u))) & firstTrailingBit(vec4<i32>(-1i, 0i, 0i, 38475i) << (vec4<u32>(arg_2.c.x, var_0.c.x, arg_2.c.x, var_2.c.x) % vec4<u32>(32u)))) >> (_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(min(vec4<u32>(var_2.c.x, u_input.d.x, 1u, var_2.c.x), vec4<u32>(0u, 31913u, 0u, 73675u)), u_input.e), u_input.e, ~vec4<u32>(var_2.c.x, 4294967295u, var_0.c.x, 1u)), _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(65337u, var_0.c.x, 0u, 9548u)), ~(~vec4<u32>(var_0.c.x, 36737u, var_0.c.x, var_0.c.x))), u_input.e) % vec4<u32>(32u));
    global3 = array<Struct_1, 16>();
    return -select(arg_3, arg_1, arg_0.x) << (max(~(~vec2<u32>(0u, var_2.c.x) | _wgslsmith_sub_vec2_u32(arg_2.c, u_input.a)), vec2<u32>(_wgslsmith_dot_vec2_u32(countOneBits(var_2.c), arg_2.c), _wgslsmith_mult_u32(~u_input.e.x, _wgslsmith_mult_u32(u_input.e.x, u_input.e.x)))) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<i32>(69198i, (i32(-1i) * -20884i) | ~u_input.b, min(select(abs(49931i) | (global1.x & u_input.c), -1i, u_input.d.x == abs(u_input.a.x)), 8544i), -65454i);
    let var_0 = global3[_wgslsmith_index_u32(4294967295u, 16u)];
    var var_1 = ~u_input.c > ~var_0.a;
    let var_2 = -func_7(!func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(133f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-578f, 402f, -522f, 543f)), vec2<bool>(false, true)), max(~(-global1.zw), select(vec2<i32>(-23707i, var_0.a), global1.xw, false) >> (firstLeadingBit(vec2<u32>(4294967295u, u_input.a.x)) % vec2<u32>(32u))), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(min(2846f, -661f)), _wgslsmith_div_f32(-1000f, 1976f)), Struct_1(-global1.x), ~u_input.a, select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, u_input.b, global1.x), vec3<i32>(-1i, 0i, 0i)))), _wgslsmith_add_vec2_i32(firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(-61955i, 1i), vec2<i32>(-15112i, -1i))), ~vec2<i32>(var_0.a, global1.x)));
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1315f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -916f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -355f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(-1185f, -457f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1426f)), _wgslsmith_div_f32(-412f, -3149f)), 1614f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1550f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(156f)) - _wgslsmith_f_op_f32(trunc(1822f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -117f) - _wgslsmith_div_f32(266f, 686f)), 515f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1659f))), _wgslsmith_f_op_f32(795f - -485f)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true)), all(vec2<bool>(false, false))))), any(vec4<bool>(!(u_input.d.x > 8369u), all(select(vec2<bool>(false, false), vec2<bool>(true, false), false)), true, true))));
    var var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) - 1f))), -476f, true));
    var var_5 = 1343f;
    let var_6 = global2[_wgslsmith_index_u32(1u, 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(4884u));
}

