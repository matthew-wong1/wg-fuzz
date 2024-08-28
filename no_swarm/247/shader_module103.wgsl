struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec3<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: u32,
    d: u32,
    e: vec4<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1> = array<u32, 1>(1u);

var<private> global1: array<vec3<f32>, 2> = array<vec3<f32>, 2>(vec3<f32>(649f, 754f, -706f), vec3<f32>(1159f, 1000f, -1627f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> bool {
    global1 = array<vec3<f32>, 2>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-372f, _wgslsmith_f_op_f32(144f + arg_0.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) + _wgslsmith_f_op_f32(f32(-1f) * -851f))), vec3<f32>(_wgslsmith_f_op_f32(min(601f, _wgslsmith_f_op_f32(exp2(arg_0.d.x)))), arg_0.d.x, -1924f)) + vec3<f32>(arg_0.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.d.x * arg_0.d.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.d.x * -1640f)))), _wgslsmith_f_op_f32(select(155f, -497f, any(!vec3<bool>(false, arg_0.a.x, true))))));
    var var_1 = arg_1;
    var var_2 = Struct_2(arg_0, select(arg_0.a.zx, arg_0.a.xw, true), vec4<bool>(false, arg_0.a.x, arg_0.a.x, true));
    let var_3 = Struct_3(i32(-1i) * -_wgslsmith_dot_vec3_i32(reverseBits(u_input.b), arg_0.c), Struct_2(arg_0, vec2<bool>(var_2.a.a.x, any(arg_0.a)), !arg_0.a), Struct_2(arg_0, !var_2.b, select(select(arg_0.a, vec4<bool>(true, false, var_2.a.a.x, true), select(arg_0.a, arg_0.a, arg_0.a.x)), vec4<bool>(true, u_input.c.x != arg_0.c.x, arg_0.d.x < arg_0.d.x, any(vec4<bool>(arg_0.a.x, var_2.a.a.x, arg_0.a.x, arg_0.a.x))), var_2.a.a)), Struct_2(arg_0, arg_0.a.xz, var_2.c), 19577i);
    return any(!select(arg_0.a, vec4<bool>(true, true, arg_0.a.x, true & var_3.b.a.a.x), var_2.c));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec4<bool>, arg_3: vec4<bool>) -> bool {
    global1 = array<vec3<f32>, 2>();
    return func_3(Struct_1(arg_2, u_input.c.x, u_input.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1469f, arg_1) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) + vec2<f32>(1071f, -1735f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-927f, arg_1)))))), _wgslsmith_mod_u32(0u, global0[_wgslsmith_index_u32(abs(abs(1u)), 1u)] | global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(min(vec2<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(94021u, 1u)], 1u)]), vec2<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u)])), ~vec2<u32>(0u, 35247u)), 1u)]));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: vec2<f32>, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = Struct_5(Struct_2(arg_3, select(select(select(vec2<bool>(arg_3.a.x, true), vec2<bool>(false, arg_1.x), vec2<bool>(arg_3.a.x, arg_1.x)), arg_1.yz, arg_1.x), !select(arg_3.a.wx, arg_3.a.yz, arg_3.a.wy), arg_3.a.zw), select(select(vec4<bool>(arg_1.x, true, arg_3.a.x, true), arg_3.a, !vec4<bool>(arg_1.x, false, false, true)), select(arg_3.a, vec4<bool>(arg_1.x, arg_1.x, true, arg_3.a.x), select(arg_3.a, arg_3.a, vec4<bool>(true, true, true, true))), select(vec4<bool>(false, arg_3.a.x, true, false), arg_3.a, arg_3.a))), select(vec4<bool>(all(select(arg_1, arg_3.a.www, arg_1)), arg_3.a.x, false, true), select(select(arg_3.a, vec4<bool>(arg_1.x, arg_1.x, false, false), arg_1.x != false), vec4<bool>(!arg_3.a.x, any(arg_1.zx), true, true), arg_3.a), true));
    var var_1 = var_0.a.a;
    var var_2 = Struct_4(arg_2.x, _wgslsmith_div_i32(1i ^ u_input.c.x, 0i) | firstLeadingBit(36069i), arg_0.x, _wgslsmith_clamp_u32(~global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u, arg_0.x), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x)) * arg_2.x), 1124f, arg_3.d.x, _wgslsmith_f_op_f32(ceil(2045f))));
    var_1 = arg_3;
    var var_3 = firstTrailingBit(vec3<u32>(44977u, abs(arg_0.x), firstTrailingBit(23746u)));
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_0.a.a.d.x, 533f), _wgslsmith_f_op_f32(1163f - var_2.e.x), var_2.e.x, var_1.d.x) * vec4<f32>(_wgslsmith_f_op_f32(min(var_1.d.x, 1197f)), 1000f, -986f, _wgslsmith_f_op_f32(697f + arg_3.d.x))), _wgslsmith_f_op_vec4_f32(var_2.e * var_2.e)))));
}

fn func_1(arg_0: Struct_4) -> Struct_3 {
    var var_0 = vec2<bool>(true, false);
    let var_1 = -_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, u_input.b.x | 1i, u_input.c.x | arg_0.b, -arg_0.b), _wgslsmith_mult_vec4_i32(max(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.d.x, 1i, 1i), vec4<i32>(37491i, arg_0.b, arg_0.b, 0i)), vec4<i32>(u_input.d.x, arg_0.b, 61632i, arg_0.b) | vec4<i32>(arg_0.b, arg_0.b, arg_0.b, 2147483647i)), vec4<i32>(~2231i, -18441i, _wgslsmith_clamp_i32(arg_0.b, 2147483647i, -28802i), u_input.a)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(~(~reverseBits(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(1u, 1u)]))), vec3<bool>(var_0.x, true, func_2(-1i, _wgslsmith_f_op_f32(round(1174f)), vec4<bool>(var_0.x, false, false, var_0.x), !vec4<bool>(var_0.x, false, true, var_0.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.e.x, _wgslsmith_f_op_f32(floor(arg_0.a))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.e.x, arg_0.a)))), Struct_1(select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(var_0.x, false, var_0.x, var_0.x)), true), u_input.a, select(reverseBits(u_input.b), _wgslsmith_add_vec3_i32(u_input.c, u_input.d), !vec3<bool>(var_0.x, var_0.x, false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_0.e.wy, arg_0.e.wz, vec2<bool>(var_0.x, true))))))) * _wgslsmith_div_vec4_f32(arg_0.e, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.e.x, 374f, arg_0.a, arg_0.e.x), arg_0.e)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.e.x, arg_0.e.x, arg_0.e.x, -460f), vec4<f32>(-165f, arg_0.e.x, -869f, arg_0.a))), false))));
    let var_3 = select(false, var_0.x, select(true, _wgslsmith_f_op_f32(arg_0.e.x + -385f) < -1064f, false));
    let var_4 = Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-827f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -849f) - -1419f)))), ~u_input.c.x, 0u, 1u, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.e - var_2)))))));
    return Struct_3(-reverseBits(max(1i, var_4.b)), Struct_2(Struct_1(vec4<bool>(true, true, func_3(Struct_1(vec4<bool>(var_3, false, var_3, true), -9800i, vec3<i32>(0i, var_1, arg_0.b), vec2<f32>(634f, 376f)), arg_0.d), true), 41842i, -(vec3<i32>(arg_0.b, var_4.b, -3153i) & u_input.d), var_2.yz), select(vec2<bool>(false, var_3), !select(vec2<bool>(true, true), vec2<bool>(false, var_0.x), true), any(select(vec4<bool>(false, false, var_3, true), vec4<bool>(var_0.x, var_3, true, false), vec4<bool>(true, var_3, true, false)))), !vec4<bool>(all(vec2<bool>(true, var_3)), true, true, !var_3)), Struct_2(Struct_1(select(select(vec4<bool>(var_3, var_0.x, var_3, false), vec4<bool>(var_3, var_3, var_0.x, true), vec4<bool>(true, var_0.x, var_0.x, var_0.x)), !vec4<bool>(var_3, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_3, true, var_3)), -47271i, -(vec3<i32>(-19744i, 8235i, 12960i) >> (vec3<u32>(18937u, var_4.c, global0[_wgslsmith_index_u32(17086u, 1u)]) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) * arg_0.e.wx) * vec2<f32>(-1916f, -879f))), !vec2<bool>(!var_3, 18711u >= global0[_wgslsmith_index_u32(arg_0.d, 1u)]), !vec4<bool>(var_0.x & var_3, var_0.x != true, all(vec3<bool>(var_0.x, var_3, var_3)), 522f > var_4.a)), Struct_2(Struct_1(vec4<bool>(var_0.x, false, select(false, true, false), true), -_wgslsmith_add_i32(var_1, var_4.b), _wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(1i, var_1, 1i)), u_input.b, _wgslsmith_sub_vec3_i32(u_input.c, u_input.d)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_2.yz, vec2<f32>(var_2.x, -404f))) * _wgslsmith_f_op_vec2_f32(-var_2.wx))), vec2<bool>(var_0.x, select(-1i == u_input.b.x, !var_0.x, var_0.x)), select(select(select(vec4<bool>(false, var_3, var_3, true), vec4<bool>(false, false, var_3, false), vec4<bool>(false, false, var_3, true)), select(vec4<bool>(var_3, var_3, var_3, true), vec4<bool>(false, var_3, var_0.x, true), true), any(vec3<bool>(var_3, false, false))), vec4<bool>(true, select(var_3, var_3, false), true, false), false)), i32(-1i) * -1i);
}

fn func_5(arg_0: i32, arg_1: Struct_3) -> vec2<u32> {
    global0 = array<u32, 1>();
    global0 = array<u32, 1>();
    var var_0 = arg_1;
    var var_1 = all(select(vec2<bool>(true, var_0.b.b.x), var_0.b.b, var_0.d.a.a.yw));
    var var_2 = func_1(Struct_4(_wgslsmith_f_op_vec4_f32(func_4(vec2<u32>(28017u, ~global0[_wgslsmith_index_u32(9635u, 1u)]), select(arg_1.b.c.ywx, func_1(Struct_4(-1433f, u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(288u, 1u)], 1u)], 51999u, vec4<f32>(186f, -1000f, var_0.b.a.d.x, var_0.b.a.d.x))).c.c.zzz, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-321f, arg_1.d.a.d.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c.a.d.x, arg_1.c.a.d.x))), func_1(Struct_4(-1500f, -9472i, 0u, 55840u, vec4<f32>(var_0.c.a.d.x, -211f, 726f, arg_1.b.a.d.x))).d.a)).x, -28852i, 4294967295u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(9262u, 1u)], 0u), ~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(39u, 1u)], 1u)], 1u)], 1u)], 1u)], 1u)], 34779u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.a.d.x, arg_1.b.a.d.x, var_0.d.a.d.x, -245f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(2639f, arg_1.c.a.d.x, -1107f, var_0.b.a.d.x))))));
    return firstLeadingBit(~(~vec2<u32>(~67948u, countOneBits(41745u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 2>();
    var var_0 = true;
    let var_1 = vec2<u32>(~global0[_wgslsmith_index_u32(68209u, 1u)], abs(~min(30077u, 57467u))) & _wgslsmith_clamp_vec2_u32(firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 14748u), abs(vec2<u32>(global0[_wgslsmith_index_u32(9301u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6616u, 1u)], 1u)], 1u)], 1u)])))), _wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(0u, global0[_wgslsmith_index_u32(1080u, 1u)]) | vec2<u32>(1u, 23975u)), func_5(~630i, func_1(Struct_4(-476f, 2147483647i, 0u, 42611u, vec4<f32>(-1080f, -900f, -510f, 906f)))), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, global0[_wgslsmith_index_u32(1u, 1u)]) >> (vec2<u32>(29547u, 1u) % vec2<u32>(32u)), vec2<u32>(4294967295u, 22635u) >> (vec2<u32>(0u, global0[_wgslsmith_index_u32(16392u, 1u)]) % vec2<u32>(32u)), vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u)], 1u)]))), ~_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 35051u), vec2<u32>(global0[_wgslsmith_index_u32(19882u, 1u)], global0[_wgslsmith_index_u32(101738u, 1u)]), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18629u, 1u)], 1u)], 70646u))));
    let var_2 = _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(~(~abs(u_input.d.xx)), vec2<i32>(_wgslsmith_mult_i32(-2147483647i, u_input.d.x) & u_input.d.x, firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-38924i, u_input.d.x, -4304i), u_input.b)))), u_input.c.zz);
    var_0 = !all(vec2<bool>(var_2.x >= _wgslsmith_sub_i32(12854i, u_input.b.x), select(select(true, false, false), 0u >= var_1.x, any(vec4<bool>(true, true, true, true)))));
    var var_3 = Struct_5(func_1(Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-827f)) + _wgslsmith_div_f32(1293f, 1443f)), -28501i, 29418u, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 4294967295u, global0[_wgslsmith_index_u32(39386u, 1u)]), vec3<u32>(var_1.x, 0u, var_1.x) ^ vec3<u32>(70085u, var_1.x, 0u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1572f, -1136f, 123f, -1683f))))).d, vec4<bool>(true, true, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(max(~(~vec3<u32>(global0[_wgslsmith_index_u32(var_1.x, 1u)], 1u, 0u)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(var_1.x, 1u)], var_1.x, 47276u), vec3<u32>(global0[_wgslsmith_index_u32(1u, 1u)], var_1.x, global0[_wgslsmith_index_u32(4294967295u, 1u)]), vec3<u32>(7342u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33979u, 1u)], 1u)], global0[_wgslsmith_index_u32(var_1.x, 1u)]))) << ((_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(38338u, 1u)], global0[_wgslsmith_index_u32(6597u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)]), vec3<u32>(9135u, global0[_wgslsmith_index_u32(var_1.x, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.x, 1u)], 1u)])), vec3<u32>(var_1.x, global0[_wgslsmith_index_u32(var_1.x, 1u)], 1u)) & vec3<u32>(_wgslsmith_div_u32(19340u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.x, 1u)], 1u)], 1u)]), 26480u, var_1.x)) % vec3<u32>(32u)));
}

