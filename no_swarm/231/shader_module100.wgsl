struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec3<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<bool, 29>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<bool> {
    global0 = any(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], true), select(select(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], false), !vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 29u)]), global1[_wgslsmith_index_u32(u_input.a.x, 29u)]), select(select(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 29u)]), vec2<bool>(global1[_wgslsmith_index_u32(0u, 29u)], true), global1[_wgslsmith_index_u32(u_input.a.x, 29u)]), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], global1[_wgslsmith_index_u32(u_input.a.x, 29u)]), any(vec4<bool>(global1[_wgslsmith_index_u32(43857u, 29u)], false, global1[_wgslsmith_index_u32(14603u, 29u)], true))), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x >> (u_input.a.x % 32u), 29u)], true)), true));
    let var_0 = !select(select(!select(vec3<bool>(false, global1[_wgslsmith_index_u32(24258u, 29u)], false), vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 29u)], true), global1[_wgslsmith_index_u32(u_input.a.x, 29u)]), vec3<bool>(true, true, true), (-7026i | u_input.b.x) <= -1i), select(select(vec3<bool>(global1[_wgslsmith_index_u32(9201u, 29u)], global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(63337u, 29u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(49099u, 29u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(20037u, 29u)], global1[_wgslsmith_index_u32(u_input.a.x, 29u)]), vec3<bool>(global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(u_input.a.x, 29u)], global1[_wgslsmith_index_u32(9488u, 29u)])), false), select(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 29u)], true), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], global1[_wgslsmith_index_u32(u_input.a.x, 29u)], false), global1[_wgslsmith_index_u32(4294967295u, 29u)] | false), any(!vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.a.x, 29u)], false))), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(15182u, u_input.a.x, 8669u)), vec3<u32>(33213u, u_input.a.x, 38063u)) > 31145u);
    var var_1 = min(max(~(-vec3<i32>(1i, -1i, -11559i)), vec3<i32>(-min(0i, 1i), -12499i, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -11994i), u_input.b))), -u_input.b);
    global1 = array<bool, 29>();
    var var_2 = ~(~(~(~(vec4<u32>(17511u, u_input.a.x, u_input.a.x, u_input.a.x) << (vec4<u32>(u_input.a.x, 6338u, 1654u, u_input.a.x) % vec4<u32>(32u))))));
    return vec4<bool>(all(vec4<bool>(var_0.x, false, any(var_0), true)), all(select(!vec3<bool>(global1[_wgslsmith_index_u32(0u, 29u)], var_0.x, false), !(!vec3<bool>(global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(34746u, 29u)], true)), !(!var_0))), true, global1[_wgslsmith_index_u32(66826u, 29u)]);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_2) -> vec4<f32> {
    let var_0 = !vec2<bool>(false, !all(select(arg_1.zx, arg_1.wz, true)));
    var var_1 = arg_3.b.c.x;
    global0 = _wgslsmith_add_u32(1850u | min(arg_3.d, ~38876u), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_3.a.x, 1u, u_input.a.x, 0u), reverseBits(max(vec4<u32>(44240u, 4294967295u, 2823u, 45854u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))))) < 35297u;
    var var_2 = abs(arg_0.x);
    var var_3 = Struct_2(_wgslsmith_mod_vec2_u32(~vec2<u32>(76577u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 48308u, 27664u), vec3<u32>(1u, 80072u, u_input.a.x))), u_input.a), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.b.a.x, 1176f, arg_3.b.a.x, 1000f), vec4<f32>(-1919f, -239f, arg_3.b.a.x, arg_3.b.a.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(arg_3.b.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(900f, arg_3.b.a.x, arg_2, 812f) * arg_3.b.a), global1[_wgslsmith_index_u32(1u, 29u)])), vec4<bool>(false, true, false, arg_3.c >= 32610i))), arg_3.d ^ ~arg_3.b.e, ~arg_0, ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(50896u, 31588u, arg_3.b.b), arg_3.b.d, vec3<u32>(arg_3.d, 10743u, 20765u)), arg_3.b.b), ~26619i ^ arg_0.x, 4294967295u);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_3.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2897f, arg_3.b.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.a.x * var_3.b.a.x))))));
}

fn func_2() -> vec2<f32> {
    var var_0 = Struct_4(Struct_2(_wgslsmith_clamp_vec2_u32(~u_input.a >> (~u_input.a % vec2<u32>(32u)), ~(~u_input.a), _wgslsmith_sub_vec2_u32(~u_input.a, ~vec2<u32>(0u, 47219u))), Struct_1(_wgslsmith_f_op_vec4_f32(func_4(abs(vec2<i32>(1i, u_input.b.x)), func_3(), _wgslsmith_f_op_f32(-160f * -904f), Struct_2(vec2<u32>(4294967295u, u_input.a.x), Struct_1(vec4<f32>(-1503f, -379f, -109f, -1497f), u_input.a.x, u_input.b.xx, vec3<u32>(u_input.a.x, 15313u, 104698u), 52395u), u_input.b.x, 2944u))), max(0u, u_input.a.x), select(-vec2<i32>(-2147483647i, 2147483647i), u_input.b.xx, all(vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(u_input.a.x, 29u)]))), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.a.x, u_input.a.x), ~vec3<u32>(u_input.a.x, 75126u, 16084u)), _wgslsmith_mult_u32(~u_input.a.x, u_input.a.x)), reverseBits(i32(-1i) * -16771i), 1u), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, -1000f)))), vec3<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 60669u, u_input.a.x), firstTrailingBit(vec3<u32>(u_input.a.x, 4294967295u, 31548u)))), select(26019u, u_input.a.x, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), 29u)]) << (_wgslsmith_sub_u32(4294967295u, 0u) % 32u), firstTrailingBit(~_wgslsmith_add_u32(u_input.a.x, u_input.a.x))), 1222f);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(-2402f + _wgslsmith_f_op_f32(var_0.d * var_0.a.b.a.x)))));
    let var_2 = var_0.a;
    var var_3 = vec3<i32>(~var_0.a.b.c.x, select(var_2.c, var_0.a.c, _wgslsmith_clamp_u32(43814u, var_2.d, u_input.a.x) <= var_0.a.a.x) >> (var_2.a.x % 32u), var_2.c);
    var_0 = Struct_4(Struct_2(var_0.a.a, var_2.b, -42138i, 23176u), _wgslsmith_f_op_vec2_f32(floor(var_0.b)), vec3<u32>(var_2.b.e, _wgslsmith_div_u32(~u_input.a.x, u_input.a.x), var_0.a.d), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + -240f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x)))))));
    return var_2.b.a.yz;
}

fn func_5(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: vec2<i32>) -> f32 {
    return 1013f;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: f32, arg_3: Struct_4) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_2 * arg_3.d), _wgslsmith_f_op_f32(f32(-1f) * -488f), arg_2, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec2_f32(func_2()), ~vec3<i32>(42392i, -1i, arg_3.a.c), Struct_2(arg_0.b.d.xz, arg_3.a.b, u_input.b.x, 13799u), firstLeadingBit(vec2<i32>(-70742i, -2147483647i)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.a.x)), -379f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + arg_1.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * arg_2)))));
    var var_1 = 26039i;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-783f, 251f)))), arg_0, max(firstLeadingBit(~(u_input.a << (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u)))), u_input.a), -vec2<i32>(0i, -(~29376i)));
    let var_3 = arg_3.a.b;
    var_1 = arg_3.a.b.c.x;
    return arg_3.a;
}

fn func_6(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_4) -> Struct_4 {
    global0 = true;
    let var_0 = -38643i;
    global0 = true;
    global0 = false;
    var var_1 = vec3<u32>(select(~(~arg_0.d), arg_0.d, all(!(!vec4<bool>(false, global1[_wgslsmith_index_u32(arg_2.a.b.d.x, 29u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 29u)])))), abs(u_input.a.x), 16319u);
    return arg_2;
}

fn func_7(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_4, arg_3: vec3<u32>) -> Struct_1 {
    global0 = global1[_wgslsmith_index_u32(u_input.a.x, 29u)];
    global1 = array<bool, 29>();
    global0 = !(-func_6(arg_2.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(931f, -1124f)), Struct_4(arg_2.a, arg_1.yz, arg_2.c, arg_2.b.x)).a.c != (i32(-1i) * -1i));
    var var_0 = select(select(select(select(func_3().yx, func_3().wy, !global1[_wgslsmith_index_u32(arg_2.c.x, 29u)]), select(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], false), vec2<bool>(global1[_wgslsmith_index_u32(0u, 29u)], true), global1[_wgslsmith_index_u32(arg_3.x, 29u)]), !vec2<bool>(global1[_wgslsmith_index_u32(14577u, 29u)], global1[_wgslsmith_index_u32(73724u, 29u)]), any(vec3<bool>(false, true, false))), select(!vec2<bool>(global1[_wgslsmith_index_u32(arg_3.x, 29u)], false), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], true), !vec2<bool>(global1[_wgslsmith_index_u32(arg_2.c.x, 29u)], true))), !select(!vec2<bool>(global1[_wgslsmith_index_u32(arg_2.a.a.x, 29u)], false), select(vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 29u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(61808u, 29u)]), vec2<bool>(global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(arg_2.c.x, 29u)])), vec2<bool>(true, true)), !func_3().xw), vec2<bool>(true, func_3().x), false);
    var var_1 = arg_2.a.a.x;
    return arg_2.a.b;
}

fn func_8(arg_0: Struct_1) -> Struct_3 {
    var var_0 = func_6(func_6(Struct_2(min(arg_0.d.zx, vec2<u32>(u_input.a.x, arg_0.e)), arg_0, func_7(_wgslsmith_f_op_f32(arg_0.a.x - 722f), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a.x, -769f, arg_0.a.x), arg_0.a.ywz), func_6(Struct_2(vec2<u32>(1u, u_input.a.x), arg_0, -2147483647i, u_input.a.x), vec2<f32>(349f, arg_0.a.x), Struct_4(Struct_2(vec2<u32>(arg_0.b, 0u), arg_0, 0i, u_input.a.x), vec2<f32>(arg_0.a.x, arg_0.a.x), arg_0.d, arg_0.a.x)), arg_0.d >> (vec3<u32>(0u, 110213u, 0u) % vec3<u32>(32u))).c.x, select(u_input.a.x | 4294967295u, 0u, all(vec3<bool>(true, true, global1[_wgslsmith_index_u32(9847u, 29u)])))), _wgslsmith_f_op_vec2_f32(-arg_0.a.zx), func_6(func_1(func_6(Struct_2(vec2<u32>(arg_0.b, 0u), Struct_1(vec4<f32>(994f, 271f, arg_0.a.x, arg_0.a.x), arg_0.e, arg_0.c, vec3<u32>(55276u, 0u, u_input.a.x), 1u), arg_0.c.x, arg_0.e), vec2<f32>(arg_0.a.x, arg_0.a.x), Struct_4(Struct_2(vec2<u32>(4294967295u, arg_0.e), Struct_1(arg_0.a, 38940u, vec2<i32>(18600i, u_input.b.x), vec3<u32>(1u, u_input.a.x, 367u), arg_0.d.x), arg_0.c.x, arg_0.d.x), vec2<f32>(418f, 717f), arg_0.d, -529f)).a, arg_0.a, arg_0.a.x, func_6(Struct_2(vec2<u32>(57691u, 45259u), Struct_1(arg_0.a, 0u, vec2<i32>(1i, 1i), arg_0.d, 0u), 0i, 1u), vec2<f32>(arg_0.a.x, -517f), Struct_4(Struct_2(vec2<u32>(1u, arg_0.d.x), Struct_1(vec4<f32>(arg_0.a.x, -1514f, -326f, -391f), 0u, arg_0.c, arg_0.d, u_input.a.x), arg_0.c.x, u_input.a.x), arg_0.a.wz, vec3<u32>(arg_0.b, 4294967295u, arg_0.e), arg_0.a.x))), _wgslsmith_f_op_vec2_f32(max(arg_0.a.zx, _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a.x, arg_0.a.x), arg_0.a.xx))), func_6(func_6(Struct_2(u_input.a, Struct_1(vec4<f32>(1157f, -503f, arg_0.a.x, arg_0.a.x), 0u, vec2<i32>(2147483647i, u_input.b.x), arg_0.d, 11977u), u_input.b.x, 4294967295u), vec2<f32>(arg_0.a.x, -1019f), Struct_4(Struct_2(vec2<u32>(4294967295u, 4294967295u), Struct_1(arg_0.a, 4294967295u, arg_0.c, vec3<u32>(10311u, arg_0.e, 0u), 21630u), -1i, u_input.a.x), arg_0.a.wx, vec3<u32>(u_input.a.x, 43530u, arg_0.d.x), -870f)).a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, 444f)), Struct_4(Struct_2(u_input.a, arg_0, 0i, arg_0.b), vec2<f32>(1847f, arg_0.a.x), arg_0.d, arg_0.a.x)))).a, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec2_f32(-arg_0.a.xy), u_input.b, func_1(Struct_2(u_input.a, arg_0, u_input.b.x, u_input.a.x), arg_0.a, 1016f, Struct_4(Struct_2(vec2<u32>(0u, arg_0.b), Struct_1(vec4<f32>(398f, arg_0.a.x, arg_0.a.x, arg_0.a.x), 4294967295u, vec2<i32>(15i, 0i), arg_0.d, u_input.a.x), -10967i, u_input.a.x), arg_0.a.xz, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), -129f)), ~u_input.b.zy)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec4_f32(func_4(vec2<i32>(u_input.b.x, arg_0.c.x), vec4<bool>(global1[_wgslsmith_index_u32(41515u, 29u)], false, true, global1[_wgslsmith_index_u32(88247u, 29u)]), -2119f, Struct_2(u_input.a, Struct_1(arg_0.a, 1u, vec2<i32>(-11537i, arg_0.c.x), vec3<u32>(u_input.a.x, 34972u, arg_0.e), arg_0.d.x), -28248i, u_input.a.x))).x))) - arg_0.a.yx), func_6(func_6(func_1(func_6(Struct_2(arg_0.d.xx, arg_0, -2147483647i, 0u), arg_0.a.zx, Struct_4(Struct_2(vec2<u32>(u_input.a.x, arg_0.e), arg_0, 0i, u_input.a.x), arg_0.a.xy, arg_0.d, 1243f)).a, _wgslsmith_f_op_vec4_f32(-arg_0.a), -1813f, Struct_4(Struct_2(vec2<u32>(1u, 1u), arg_0, arg_0.c.x, arg_0.e), vec2<f32>(-1000f, 400f), vec3<u32>(4294967295u, 4294967295u, arg_0.e), 679f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a.ww)), func_6(Struct_2(vec2<u32>(4294967295u, 58486u), Struct_1(arg_0.a, arg_0.b, vec2<i32>(arg_0.c.x, 1i), arg_0.d, arg_0.b), arg_0.c.x, u_input.a.x), arg_0.a.zz, Struct_4(Struct_2(vec2<u32>(arg_0.d.x, 42466u), Struct_1(vec4<f32>(-1000f, arg_0.a.x, 1690f, arg_0.a.x), arg_0.b, vec2<i32>(-25202i, u_input.b.x), arg_0.d, 102411u), 0i, 50514u), arg_0.a.ww, arg_0.d, 205f))).a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1220f, -735f))) - arg_0.a.xw) + vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-arg_0.a.x))), Struct_4(Struct_2(countOneBits(vec2<u32>(0u, 14922u)), Struct_1(vec4<f32>(932f, arg_0.a.x, 115f, -1759f), 30387u, vec2<i32>(-28240i, 1i), arg_0.d, arg_0.e), 1i, u_input.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, arg_0.a.x)), ~vec3<u32>(903u, u_input.a.x, 71021u), func_7(arg_0.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1474f, 999f, 1379f)), Struct_4(Struct_2(arg_0.d.yz, Struct_1(vec4<f32>(795f, 1000f, arg_0.a.x, arg_0.a.x), u_input.a.x, arg_0.c, vec3<u32>(arg_0.d.x, arg_0.d.x, arg_0.e), u_input.a.x), 26370i, u_input.a.x), arg_0.a.wz, vec3<u32>(arg_0.e, 1u, u_input.a.x), arg_0.a.x), select(vec3<u32>(58114u, 0u, 1u), vec3<u32>(0u, 4294967295u, arg_0.e), vec3<bool>(global1[_wgslsmith_index_u32(62111u, 29u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 29u)]))).a.x)));
    let var_1 = !vec2<bool>((true != !global1[_wgslsmith_index_u32(var_0.c.x, 29u)]) & (_wgslsmith_f_op_f32(-arg_0.a.x) != var_0.d), ~(u_input.a.x | u_input.a.x) < (~u_input.a.x | (var_0.a.b.d.x ^ u_input.a.x)));
    let var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, arg_0.d.x, 37812u, reverseBits(arg_0.e)), ~abs(vec4<u32>(4294967295u, 2652u, 4294967295u, u_input.a.x)) & vec4<u32>(~u_input.a.x, ~arg_0.d.x, ~arg_0.e, ~51062u)) | ~countOneBits(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a.a.x, 56400u, 1u, u_input.a.x), vec4<u32>(var_0.c.x, 4294967295u, var_0.c.x, 21056u)));
    var var_3 = Struct_4(Struct_2(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(var_0.a.b.e, var_2.x)), abs(arg_0.d.xy)), var_2.ww), Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a.b.a), ~21382u, arg_0.c, ~min(var_0.a.b.d, vec3<u32>(4294967295u, 54860u, arg_0.e)), arg_0.b), abs(_wgslsmith_sub_i32(var_0.a.b.c.x ^ -1i, _wgslsmith_div_i32(-6387i, var_0.a.b.c.x))), ~func_7(_wgslsmith_f_op_f32(arg_0.a.x * var_0.d), _wgslsmith_f_op_vec3_f32(-var_0.a.b.a.www), Struct_4(Struct_2(vec2<u32>(u_input.a.x, var_2.x), Struct_1(arg_0.a, u_input.a.x, vec2<i32>(-34654i, var_0.a.b.c.x), arg_0.d, 1u), 261i, var_2.x), arg_0.a.zw, vec3<u32>(90062u, 26392u, var_0.a.b.e), arg_0.a.x), ~vec3<u32>(1u, 90762u, u_input.a.x)).d.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-385f, -387f)))), var_0.c, _wgslsmith_f_op_f32(func_5(vec2<f32>(_wgslsmith_f_op_f32(abs(-804f)), _wgslsmith_f_op_f32(func_1(Struct_2(var_0.c.zx, Struct_1(arg_0.a, 99u, vec2<i32>(5506i, var_0.a.c), var_2.zwy, u_input.a.x), u_input.b.x, 1u), vec4<f32>(-602f, -158f, var_0.d, arg_0.a.x), arg_0.a.x, Struct_4(var_0.a, vec2<f32>(arg_0.a.x, arg_0.a.x), var_0.a.b.d, -290f)).b.a.x + _wgslsmith_f_op_f32(-var_0.a.b.a.x))), (vec3<i32>(-1i) * -u_input.b) | ~(~vec3<i32>(var_0.a.c, 23155i, 1i)), var_0.a, min(-_wgslsmith_mult_vec2_i32(vec2<i32>(34666i, var_0.a.c), u_input.b.xx), ~vec2<i32>(-1i, arg_0.c.x)))));
    let var_4 = func_3().zzy;
    return Struct_3(var_3.b.x, func_1(func_6(var_3.a, _wgslsmith_div_vec2_f32(arg_0.a.yw, var_0.b), func_6(var_0.a, vec2<f32>(var_3.d, var_3.a.b.a.x), func_6(var_3.a, var_0.a.b.a.zy, Struct_4(Struct_2(vec2<u32>(1u, 31888u), Struct_1(var_3.a.b.a, var_3.a.b.b, arg_0.c, vec3<u32>(var_2.x, arg_0.b, 4294967295u), 110971u), 33011i, 0u), arg_0.a.zy, var_2.yzx, var_3.d)))).a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_0.a.b.a, _wgslsmith_f_op_vec4_f32(-var_0.a.b.a), -1158i > var_0.a.c)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -270f, -1031f, var_3.d), vec4<f32>(1632f, -332f, -1206f, var_3.d)))), -1777f, func_6(Struct_2(arg_0.d.xy, Struct_1(arg_0.a, 4294967295u, var_3.a.b.c, var_3.a.b.d, 83838u), arg_0.c.x, 4601u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(689f, -356f)), func_6(Struct_2(vec2<u32>(var_0.c.x, 4294967295u), Struct_1(arg_0.a, 1u, var_0.a.b.c, arg_0.d, u_input.a.x), var_3.a.c, u_input.a.x), var_3.a.b.a.zy, func_6(var_0.a, vec2<f32>(1416f, arg_0.a.x), Struct_4(Struct_2(vec2<u32>(0u, 55504u), var_0.a.b, u_input.b.x, var_0.a.a.x), var_3.a.b.a.yx, vec3<u32>(4294967295u, u_input.a.x, arg_0.e), var_0.a.b.a.x))))), ~func_6(func_1(var_3.a, _wgslsmith_f_op_vec4_f32(var_3.a.b.a * vec4<f32>(-777f, arg_0.a.x, -1000f, 480f)), _wgslsmith_f_op_f32(f32(-1f) * -1133f), Struct_4(var_3.a, arg_0.a.xw, var_2.xyx, var_0.a.b.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.yx) - arg_0.a.yx), func_6(var_0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-805f, -1163f)), func_6(Struct_2(arg_0.d.yy, Struct_1(vec4<f32>(var_3.a.b.a.x, arg_0.a.x, -255f, var_0.b.x), 8840u, u_input.b.yz, arg_0.d, 0u), var_3.a.b.c.x, 6763u), vec2<f32>(-575f, var_0.b.x), Struct_4(var_0.a, vec2<f32>(var_0.a.b.a.x, arg_0.a.x), var_0.a.b.d, arg_0.a.x)))).a.a, var_0.a.b.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1000f;
    let var_1 = func_8(func_7(_wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -1710f, 1005f) - vec3<f32>(var_0, var_0, 367f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0, -616f, 704f))))), vec3<f32>(-783f, _wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_f_op_f32(var_0 - var_0)))), func_6(Struct_2(~vec2<u32>(u_input.a.x, u_input.a.x), Struct_1(vec4<f32>(-243f, 1000f, -644f, 763f), 88401u, vec2<i32>(u_input.b.x, u_input.b.x), vec3<u32>(u_input.a.x, u_input.a.x, 1u), u_input.a.x), -1i, u_input.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))), Struct_4(func_1(Struct_2(u_input.a, Struct_1(vec4<f32>(var_0, var_0, var_0, var_0), u_input.a.x, u_input.b.xy, vec3<u32>(1u, 15273u, u_input.a.x), u_input.a.x), -1i, u_input.a.x), vec4<f32>(var_0, var_0, -1000f, var_0), -829f, Struct_4(Struct_2(u_input.a, Struct_1(vec4<f32>(1000f, var_0, -846f, 104f), 41270u, vec2<i32>(u_input.b.x, u_input.b.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), 4294967295u), u_input.b.x, u_input.a.x), vec2<f32>(var_0, 101f), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), 668f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) * vec2<f32>(-1000f, var_0)), vec3<u32>(0u, 56044u, u_input.a.x) << (vec3<u32>(u_input.a.x, u_input.a.x, 1u) % vec3<u32>(32u)), _wgslsmith_f_op_f32(step(-1904f, -1943f)))), countOneBits(vec3<u32>(u_input.a.x ^ 42978u, 28191u, u_input.a.x))));
    let var_2 = func_3().zwz;
    global1 = array<bool, 29>();
    global0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(1323f);
}

