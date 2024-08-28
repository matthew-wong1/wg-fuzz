struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: f32,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8> = array<u32, 8>(38288u, 1u, 22833u, 85626u, 42708u, 4294967295u, 9491u, 1u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_1() -> bool {
    var var_0 = 29113u;
    global0 = array<u32, 8>();
    var var_1 = true;
    var var_2 = _wgslsmith_add_i32(i32(-1i) * -u_input.c.x, 2147483647i) << (4294967295u % 32u);
    return !(true | (!all(vec2<bool>(true, false)) | true));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: vec3<bool>) -> u32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1352f), 1110f, any(!arg_2.yy))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(527f, 410f))) * _wgslsmith_f_op_f32(-1f)) - -448f));
    var var_1 = Struct_1(2147483647i, select(select(select(select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true), vec4<bool>(false, arg_2.x, arg_2.x, false), vec4<bool>(true, false, true, false)), !vec4<bool>(arg_2.x, true, arg_2.x, false), !vec4<bool>(arg_2.x, true, true, false)), vec4<bool>(arg_2.x, !arg_2.x, func_1(), true), select(select(vec4<bool>(false, true, arg_2.x, true), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false), arg_2.x), !vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), true)), !select(!vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true), arg_2.x), !vec4<bool>(arg_2.x && arg_2.x, false, true, true)), 1062f, vec3<bool>(false, arg_2.x, !arg_2.x), _wgslsmith_sub_vec4_i32(vec4<i32>(-11802i >> (select(0u, arg_1, arg_2.x) % 32u), _wgslsmith_clamp_i32(arg_0.x, _wgslsmith_dot_vec2_i32(arg_0.yz, arg_0.xx), arg_0.x), 1i, -arg_0.x), vec4<i32>(firstTrailingBit(44364i), _wgslsmith_add_i32(arg_0.x, arg_0.x), -16533i ^ u_input.d, 34264i) | ~(vec4<i32>(-1i, -1i, arg_0.x, u_input.d) | vec4<i32>(-5841i, arg_0.x, -2147483647i, u_input.c.x))));
    var var_2 = ~arg_0.x;
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -462f);
    var var_3 = Struct_1(-2147483647i, vec4<bool>(var_1.d.x, all(vec2<bool>(any(var_1.b), var_1.d.x || true)), !(!(!var_1.b.x)), _wgslsmith_f_op_f32(floor(1f)) >= 1143f), var_1.c, select(select(vec3<bool>(all(vec3<bool>(true, true, var_1.d.x)), !var_1.b.x, var_1.d.x), select(var_1.d, select(vec3<bool>(var_1.b.x, false, true), arg_2, var_1.d), var_1.b.zxx), arg_2), vec3<bool>(true, all(select(arg_2, var_1.d, var_1.d)), any(vec4<bool>(var_1.d.x, arg_2.x, false, true))), var_1.c > var_1.c), ~(-vec4<i32>(arg_0.x, 1i, u_input.c.x, arg_0.x)));
    return 1u;
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: u32, arg_3: vec3<u32>) -> vec2<u32> {
    global0 = array<u32, 8>();
    var var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * -483f) * arg_0), arg_0, _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(round(arg_0))), _wgslsmith_f_op_f32(ceil(arg_0)))));
    let var_1 = Struct_1(u_input.c.x, vec4<bool>(true, -926f < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_0)), -209f)), !arg_1.x, !(any(arg_1.yy) || false)), _wgslsmith_f_op_f32(f32(-1f) * -765f), select(!select(arg_1.xyx, select(vec3<bool>(arg_1.x, false, true), vec3<bool>(false, true, arg_1.x), arg_1.x), arg_1.yxz), vec3<bool>(all(select(vec2<bool>(arg_1.x, false), vec2<bool>(arg_1.x, true), arg_1.zz)), arg_1.x, false), select(arg_1.wwz, select(select(arg_1.wzy, arg_1.wxz, arg_1.x), !arg_1.xxz, true), !(!arg_1.xzy))), (_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(38957i, -40884i, u_input.c.x, u_input.d)), vec4<i32>(58234i, -1i, u_input.c.x, u_input.c.x) | vec4<i32>(1i, u_input.d, 54675i, -16172i), _wgslsmith_mult_vec4_i32(vec4<i32>(25810i, u_input.c.x, 1i, 2079i), vec4<i32>(1i, 1i, -1i, 1i))) & _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, -27627i, u_input.d, -4069i), vec4<i32>(1i, u_input.d, 1i, 0i))) ^ reverseBits(max(-vec4<i32>(48263i, u_input.c.x, -33801i, 1468i), -vec4<i32>(-2147483647i, 36144i, 1i, u_input.d))));
    let var_2 = vec4<i32>(1i, -32113i, u_input.d, -u_input.c.x);
    var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(443f, 311f))), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-331f, -263f))), 347f) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1466f, -489f, _wgslsmith_div_f32(563f, -892f), _wgslsmith_f_op_f32(-var_1.c)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-404f, arg_0, arg_0, 407f)))))))));
    return ~_wgslsmith_mult_vec2_u32(~abs(arg_3.xx), select(vec2<u32>(arg_2, arg_2 << (u_input.b % 32u)), firstTrailingBit(vec2<u32>(15834u, 71646u)), _wgslsmith_f_op_f32(f32(-1f) * -153f) <= _wgslsmith_f_op_f32(sign(-316f))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = ~(~firstLeadingBit(min(~vec2<u32>(4294967295u, 31987u), min(vec2<u32>(19613u, 48281u), vec2<u32>(12615u, u_input.a)))));
    global0 = array<u32, 8>();
    var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1808f * -692f), _wgslsmith_f_op_f32(select(-1452f, 249f, true))))), vec4<bool>(any(!(!arg_1.d)), arg_0.b.x, arg_3.d.x, true), _wgslsmith_mult_u32(0u, 69203u), ~(~vec3<u32>(6953u, func_3(vec3<i32>(arg_3.a, 13426i, 27505i), 44888u, arg_1.d), u_input.a | global0[_wgslsmith_index_u32(u_input.b, 8u)])));
    global0 = array<u32, 8>();
    var_0 = ~(~(~(~vec2<u32>(u_input.a, 12078u))));
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32, arg_3: f32) -> Struct_1 {
    global0 = array<u32, 8>();
    let var_0 = func_2(Struct_1(firstLeadingBit(1i), func_2(Struct_1(1i, !arg_0.b, 503f, !arg_0.b.wwx, _wgslsmith_sub_vec4_i32(arg_0.e, vec4<i32>(u_input.c.x, arg_0.a, -2147483647i, u_input.c.x))), arg_0, reverseBits(~vec3<i32>(-60053i, -43210i, u_input.c.x)), func_2(Struct_1(43861i, arg_1, arg_2, vec3<bool>(false, arg_0.b.x, arg_0.d.x), arg_0.e), func_2(arg_0, arg_0, vec3<i32>(arg_0.a, arg_0.a, u_input.d), arg_0), vec3<i32>(15763i, arg_0.e.x, arg_0.a), func_2(arg_0, arg_0, vec3<i32>(arg_0.e.x, -14143i, u_input.d), arg_0))).b, arg_2, arg_0.d, vec4<i32>(u_input.d, abs(2147483647i), u_input.d | -20845i, min(u_input.c.x, 0i)) & func_2(func_2(Struct_1(arg_0.e.x, arg_0.b, -342f, vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec4<i32>(15401i, arg_0.a, -22660i, -32051i)), arg_0, arg_0.e.yxz, Struct_1(u_input.c.x, arg_0.b, 1154f, vec3<bool>(arg_1.x, true, arg_1.x), arg_0.e)), func_2(Struct_1(-2147483647i, vec4<bool>(arg_0.d.x, true, false, false), -1074f, vec3<bool>(arg_1.x, false, false), arg_0.e), Struct_1(u_input.d, vec4<bool>(arg_0.b.x, arg_0.d.x, arg_1.x, arg_0.b.x), 715f, arg_1.xwx, arg_0.e), arg_0.e.yzw, Struct_1(arg_0.e.x, arg_0.b, -623f, arg_1.xyx, arg_0.e)), select(vec3<i32>(arg_0.e.x, u_input.d, arg_0.e.x), arg_0.e.ywz, vec3<bool>(true, arg_1.x, arg_1.x)), arg_0).e), Struct_1(max(u_input.d, ~u_input.c.x), arg_0.b, -572f, func_2(Struct_1(_wgslsmith_mult_i32(arg_0.e.x, 2147483647i), arg_1, _wgslsmith_f_op_f32(-arg_3), select(vec3<bool>(false, true, arg_0.b.x), vec3<bool>(arg_1.x, false, true), arg_1.x), abs(vec4<i32>(u_input.c.x, -2147483647i, -16414i, -40241i))), func_2(Struct_1(1i, vec4<bool>(arg_0.b.x, arg_1.x, arg_0.d.x, true), arg_2, vec3<bool>(false, false, arg_1.x), arg_0.e), Struct_1(u_input.c.x, arg_0.b, -2072f, arg_0.b.xww, vec4<i32>(u_input.d, u_input.c.x, arg_0.a, -1i)), firstTrailingBit(arg_0.e.wyx), arg_0), _wgslsmith_mod_vec3_i32(arg_0.e.wzy, ~arg_0.e.xxw), arg_0).b.xxx, vec4<i32>(-1i) * -(~vec4<i32>(29349i, arg_0.a, arg_0.e.x, -28258i))), vec3<i32>(-2147483647i, 1i, -28819i), arg_0);
    let var_1 = Struct_1(firstTrailingBit(max(-var_0.e.x, var_0.e.x)) & (~max(var_0.e.x, 2147483647i) | u_input.d), vec4<bool>(arg_0.d.x, var_0.b.x, true, arg_1.x), arg_2, select(select(vec3<bool>(true, !var_0.b.x, any(vec2<bool>(var_0.d.x, true))), vec3<bool>(true, all(var_0.b.yyy), all(arg_1.wz)), vec3<bool>(arg_0.a >= -18969i, false, true)), vec3<bool>(true, any(!arg_0.b), !var_0.d.x), func_1()), vec4<i32>(~var_0.a, 1i, 1i, ~(-1i) & u_input.c.x));
    var var_2 = vec4<u32>(_wgslsmith_clamp_u32(23104u, 1u, _wgslsmith_mult_u32(~(~0u), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(~u_input.a, 8u)], _wgslsmith_add_u32(u_input.b, global0[_wgslsmith_index_u32(17749u, 8u)])))), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 8u)], 8u)], 1u, 82560u)), vec4<u32>(49165u, global0[_wgslsmith_index_u32(1u, 8u)], select(69782u, 8107u, true), ~32479u)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(func_3(var_1.e.wyw, 6439u, arg_1.wwy), 48560u, 0u), vec3<u32>(select(func_3(vec3<i32>(u_input.c.x, var_1.e.x, arg_0.a), u_input.b, vec3<bool>(false, true, true)), abs(global0[_wgslsmith_index_u32(u_input.a, 8u)]), true), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_4(-550f, vec4<bool>(true, true, true, var_0.d.x), u_input.a, vec3<u32>(global0[_wgslsmith_index_u32(50909u, 8u)], u_input.b, 4294967295u)).x, func_4(-223f, vec4<bool>(arg_0.d.x, var_1.d.x, true, false), u_input.b, vec3<u32>(u_input.b, 10387u, u_input.a)).x), 8u)], 1u)), 8u)], 1u);
    var var_3 = _wgslsmith_add_vec2_u32(~_wgslsmith_div_vec2_u32(var_2.yx, max(_wgslsmith_clamp_vec2_u32(var_2.xw, var_2.yz, vec2<u32>(u_input.b, 5633u)), reverseBits(var_2.yx))), ~(~var_2.xy));
    return func_2(Struct_1(_wgslsmith_add_i32(firstTrailingBit(~15002i), select(_wgslsmith_sub_i32(var_1.a, arg_0.e.x), ~var_1.a, arg_1.x)), var_1.b, arg_2, !vec3<bool>(all(var_1.b), any(var_1.b.xx), func_2(var_0, var_0, vec3<i32>(u_input.d, -74165i, arg_0.e.x), var_1).d.x), -select(max(var_1.e, var_1.e), vec4<i32>(-55879i, arg_0.e.x, 27253i, arg_0.e.x), arg_1)), Struct_1(_wgslsmith_dot_vec2_i32(min(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, arg_0.a), vec2<i32>(var_0.a, u_input.c.x), vec2<i32>(arg_0.e.x, var_0.a)), vec2<i32>(1i, 1i)), vec2<i32>(2147483647i, _wgslsmith_sub_i32(-1785i, -2147483647i))), vec4<bool>(false, arg_1.x, !any(vec2<bool>(false, var_1.b.x)), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.c, -1233f)))), var_1.d, ((var_1.e >> (vec4<u32>(5904u, var_2.x, global0[_wgslsmith_index_u32(1u, 8u)], u_input.b) % vec4<u32>(32u))) << ((vec4<u32>(var_3.x, var_3.x, global0[_wgslsmith_index_u32(4294967295u, 8u)], 1u) ^ vec4<u32>(61240u, 5180u, u_input.a, 4294967295u)) % vec4<u32>(32u))) << (vec4<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, var_3.x), var_2.xyw), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 54533u, var_3.x), vec4<u32>(var_3.x, 4294967295u, 4294967295u, 1u)), abs(u_input.b)) % vec4<u32>(32u))), -vec3<i32>(1i, ~(-u_input.d), _wgslsmith_sub_i32(1i, _wgslsmith_add_i32(arg_0.a, arg_0.a))), arg_0);
}

fn func_6(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = func_5(arg_0, vec4<bool>(_wgslsmith_sub_i32(arg_0.e.x, -arg_0.e.x) <= -abs(arg_0.e.x), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-436f, arg_0.c), -262f, any(vec2<bool>(true, true)))) > arg_0.c, arg_0.d.x, !(arg_0.c != _wgslsmith_f_op_f32(arg_0.c * arg_0.c))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.c))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1000f, 460f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(295f - _wgslsmith_f_op_f32(arg_0.c * arg_0.c))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(arg_0.c)), arg_0.c)));
    global0 = array<u32, 8>();
    var var_1 = _wgslsmith_f_op_f32(exp2(func_2(Struct_1(max(arg_1, 34530i), vec4<bool>(!var_0.d.x, true, var_0.b.x, true), func_2(Struct_1(-14853i, var_0.b, arg_0.c, var_0.b.zxz, arg_0.e), Struct_1(2885i, vec4<bool>(arg_0.d.x, true, arg_0.b.x, false), var_0.c, vec3<bool>(false, false, var_0.d.x), vec4<i32>(0i, -2147483647i, var_0.e.x, 0i)), _wgslsmith_div_vec3_i32(var_0.e.zyy, arg_0.e.yxz), func_5(var_0, vec4<bool>(arg_0.b.x, arg_0.d.x, false, var_0.d.x), var_0.c, arg_0.c)).c, vec3<bool>(true, arg_1 >= var_0.a, func_1()), var_0.e), var_0, vec3<i32>(-1i) * -func_5(arg_0, vec4<bool>(arg_0.d.x, false, arg_0.d.x, false), -557f, arg_0.c).e.wyw, var_0).c));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.c)));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1049f));
    return arg_0;
}

fn func_7(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec2<u32>) -> bool {
    let var_0 = vec3<bool>(true, true || arg_0.b.x, arg_1.x);
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(!(!func_1()), func_7(func_6(func_5(func_2(Struct_1(u_input.c.x, vec4<bool>(false, false, false, false), 840f, vec3<bool>(true, true, false), vec4<i32>(51428i, -9393i, u_input.c.x, 1i)), Struct_1(-14500i, vec4<bool>(false, true, false, true), -1000f, vec3<bool>(false, false, false), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.d)), vec3<i32>(u_input.c.x, -2147483647i, 37775i), Struct_1(u_input.c.x, vec4<bool>(true, true, false, true), -1428f, vec3<bool>(true, false, true), vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d))), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(abs(1403f)), _wgslsmith_f_op_f32(round(-508f))), ~(~u_input.c.x)), func_5(func_6(Struct_1(u_input.d, vec4<bool>(false, true, true, true), 1467f, vec3<bool>(true, false, true), vec4<i32>(u_input.c.x, u_input.c.x, 9993i, u_input.d)), func_6(Struct_1(u_input.c.x, vec4<bool>(false, true, true, true), -223f, vec3<bool>(false, false, false), vec4<i32>(92585i, u_input.c.x, u_input.c.x, -64242i)), 2147483647i).a), vec4<bool>(select(true, false, false), true, false, true), func_2(func_5(Struct_1(-17692i, vec4<bool>(true, false, true, false), -953f, vec3<bool>(false, false, false), vec4<i32>(u_input.d, 42592i, -1i, -2147483647i)), vec4<bool>(false, true, true, true), -814f, 807f), Struct_1(-83263i, vec4<bool>(false, true, true, false), -2544f, vec3<bool>(true, true, false), vec4<i32>(u_input.d, -43325i, -2147483647i, u_input.c.x)), vec3<i32>(1i, -48950i, u_input.d), func_2(Struct_1(u_input.d, vec4<bool>(false, false, false, true), -664f, vec3<bool>(false, true, false), vec4<i32>(u_input.d, -28981i, 22636i, u_input.d)), Struct_1(3163i, vec4<bool>(true, false, true, false), -2530f, vec3<bool>(true, true, true), vec4<i32>(-59714i, 0i, 1i, 35883i)), vec3<i32>(22811i, -19146i, u_input.d), Struct_1(-13449i, vec4<bool>(true, false, true, false), -1000f, vec3<bool>(true, true, true), vec4<i32>(u_input.d, 2147483647i, u_input.c.x, u_input.c.x)))).c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) + _wgslsmith_f_op_f32(abs(-342f)))).b, vec2<u32>(1u, ~select(30910u, 0u, true))));
    var var_1 = firstTrailingBit(_wgslsmith_dot_vec4_u32(select(min(~vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(54035u, 8u)], 8u)], 0u, u_input.b), vec4<u32>(33812u, 23151u, 0u, 4294967295u)), select(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 8u)], 8u)], 604u, u_input.a, u_input.b), vec4<u32>(1u, 1u, 41333u, 0u), true) >> (min(vec4<u32>(global0[_wgslsmith_index_u32(20808u, 8u)], u_input.a, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 8u)], 8u)]), vec4<u32>(u_input.b, 15140u, 1273u, 1u)) % vec4<u32>(32u)), !vec4<bool>(var_0.x, var_0.x, false, var_0.x)), ~(vec4<u32>(u_input.a, 47750u, 1u, global0[_wgslsmith_index_u32(u_input.b, 8u)]) ^ ~vec4<u32>(global0[_wgslsmith_index_u32(127198u, 8u)], u_input.a, u_input.b, u_input.a))));
    global0 = array<u32, 8>();
    var var_2 = Struct_1(-12152i, func_5(func_5(func_2(Struct_1(u_input.c.x, vec4<bool>(false, true, var_0.x, var_0.x), 979f, vec3<bool>(var_0.x, var_0.x, true), vec4<i32>(u_input.c.x, u_input.c.x, 74287i, -10990i)), Struct_1(-30194i, vec4<bool>(true, false, var_0.x, var_0.x), 1000f, vec3<bool>(var_0.x, var_0.x, true), vec4<i32>(u_input.d, u_input.c.x, -1i, 37630i)), vec3<i32>(-5936i, 2147483647i, u_input.c.x), Struct_1(u_input.d, vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), 762f, vec3<bool>(false, var_0.x, false), vec4<i32>(-1i, 1i, u_input.c.x, u_input.d))), func_5(Struct_1(u_input.c.x, vec4<bool>(false, var_0.x, false, var_0.x), 1000f, vec3<bool>(var_0.x, var_0.x, var_0.x), vec4<i32>(2147483647i, -24438i, u_input.d, u_input.d)), vec4<bool>(var_0.x, true, var_0.x, false), _wgslsmith_f_op_f32(f32(-1f) * -188f), _wgslsmith_f_op_f32(1143f - 622f)).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-912f * 813f)), _wgslsmith_f_op_f32(min(func_5(Struct_1(-2147483647i, vec4<bool>(true, var_0.x, var_0.x, true), -638f, vec3<bool>(var_0.x, var_0.x, var_0.x), vec4<i32>(u_input.d, 11117i, 0i, u_input.d)), vec4<bool>(var_0.x, var_0.x, var_0.x, false), 423f, 555f).c, _wgslsmith_f_op_f32(f32(-1f) * -1542f)))), !(!(!vec4<bool>(var_0.x, var_0.x, true, var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(f32(-1f) * -931f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-552f + -1444f)))))).b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-func_5(func_5(Struct_1(-41356i, vec4<bool>(var_0.x, false, var_0.x, false), -727f, vec3<bool>(true, var_0.x, false), vec4<i32>(-43361i, u_input.d, 2147483647i, -16502i)), vec4<bool>(var_0.x, var_0.x, true, true), 1000f, -249f), !vec4<bool>(false, var_0.x, true, true), func_5(Struct_1(2147483647i, vec4<bool>(false, var_0.x, var_0.x, var_0.x), 168f, vec3<bool>(var_0.x, var_0.x, false), vec4<i32>(u_input.c.x, u_input.c.x, u_input.d, -7487i)), vec4<bool>(var_0.x, var_0.x, var_0.x, false), -1202f, -255f).c, _wgslsmith_f_op_f32(f32(-1f) * -1087f)).c))), vec3<bool>(!(!var_0.x) & false, true, true), ~func_5(func_2(Struct_1(u_input.d, vec4<bool>(var_0.x, true, false, var_0.x), -250f, vec3<bool>(var_0.x, var_0.x, var_0.x), vec4<i32>(-2147483647i, 2147483647i, 1i, u_input.c.x)), Struct_1(u_input.d, vec4<bool>(var_0.x, true, false, true), -144f, vec3<bool>(var_0.x, true, false), vec4<i32>(u_input.d, 12868i, u_input.d, u_input.c.x)), vec3<i32>(-19557i, -2147483647i, -2147483647i), func_2(Struct_1(0i, vec4<bool>(true, var_0.x, var_0.x, false), 1503f, vec3<bool>(false, true, var_0.x), vec4<i32>(-2147483647i, u_input.c.x, u_input.d, 1380i)), Struct_1(u_input.c.x, vec4<bool>(var_0.x, true, false, var_0.x), 781f, vec3<bool>(true, var_0.x, var_0.x), vec4<i32>(58338i, -2147483647i, -1i, 31589i)), vec3<i32>(-16527i, u_input.d, u_input.d), Struct_1(u_input.d, vec4<bool>(false, var_0.x, var_0.x, var_0.x), -1000f, vec3<bool>(var_0.x, false, var_0.x), vec4<i32>(1i, u_input.d, 1344i, u_input.d)))), func_2(func_2(Struct_1(u_input.d, vec4<bool>(var_0.x, true, var_0.x, true), 554f, vec3<bool>(false, var_0.x, true), vec4<i32>(u_input.d, u_input.c.x, 1i, u_input.d)), Struct_1(2147483647i, vec4<bool>(true, false, var_0.x, true), 560f, vec3<bool>(var_0.x, false, var_0.x), vec4<i32>(10780i, u_input.d, u_input.c.x, u_input.d)), vec3<i32>(u_input.c.x, 0i, u_input.c.x), Struct_1(u_input.c.x, vec4<bool>(true, false, false, var_0.x), -884f, vec3<bool>(false, false, var_0.x), vec4<i32>(u_input.c.x, u_input.c.x, -45125i, u_input.c.x))), func_6(Struct_1(u_input.c.x, vec4<bool>(var_0.x, true, var_0.x, var_0.x), 924f, vec3<bool>(false, var_0.x, false), vec4<i32>(-2147483647i, -17635i, -37474i, 38995i)), u_input.d), abs(vec3<i32>(u_input.c.x, u_input.d, u_input.d)), Struct_1(0i, vec4<bool>(var_0.x, true, false, true), -498f, vec3<bool>(false, true, var_0.x), vec4<i32>(u_input.c.x, u_input.c.x, -57236i, u_input.d))).b, _wgslsmith_f_op_f32(-1f), -814f).e);
    let var_3 = -_wgslsmith_mod_i32((_wgslsmith_mult_i32(28290i, var_2.a) & 1i) | 5729i, func_2(Struct_1(1i, !var_2.b, var_2.c, !vec3<bool>(var_2.b.x, false, var_0.x), var_2.e), Struct_1(-u_input.d, vec4<bool>(true, false, true, var_0.x), _wgslsmith_div_f32(1000f, var_2.c), !vec3<bool>(true, var_2.b.x, var_2.d.x), _wgslsmith_mod_vec4_i32(var_2.e, var_2.e)), vec3<i32>(u_input.c.x, 1i, 1i), func_6(func_5(Struct_1(u_input.c.x, vec4<bool>(false, true, true, true), var_2.c, var_2.b.ywx, var_2.e), var_2.b, 1397f, 293f), var_2.a)).e.x);
    let var_4 = vec2<bool>(select(false, var_0.x, true), !func_6(func_2(Struct_1(-2147483647i, vec4<bool>(false, var_0.x, false, var_0.x), var_2.c, vec3<bool>(var_0.x, false, false), vec4<i32>(var_3, u_input.d, -24964i, u_input.d)), Struct_1(1i, vec4<bool>(var_0.x, false, true, var_2.b.x), -237f, var_2.d, vec4<i32>(var_2.e.x, -73490i, 0i, var_2.e.x)), var_2.e.zzz, Struct_1(var_2.e.x, var_2.b, 1434f, var_2.b.xwz, var_2.e)), func_6(Struct_1(var_3, var_2.b, -2261f, var_2.b.yzx, var_2.e), 2147483647i).e.x).d.x || true);
    var var_5 = min(vec2<i32>(var_2.e.x, 2147483647i), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(Struct_1(var_2.e.x, var_2.b, var_2.c, var_2.d, vec4<i32>(u_input.d, var_3, var_5.x, -119151i)), var_2.b, -681f, _wgslsmith_f_op_f32(var_2.c + -856f)).c * _wgslsmith_f_op_f32(var_2.c - _wgslsmith_f_op_f32(-var_2.c))) - 2422f), ~vec3<i32>((i32(-1i) * -48169i) >> (firstLeadingBit(86867u) % 32u), _wgslsmith_mod_i32(var_3, -1i), func_5(func_5(Struct_1(2147483647i, vec4<bool>(false, var_0.x, var_4.x, true), -1725f, vec3<bool>(true, var_2.d.x, false), vec4<i32>(u_input.c.x, u_input.d, u_input.c.x, u_input.c.x)), vec4<bool>(false, var_0.x, true, true), var_2.c, 854f), var_2.b, var_2.c, var_2.c).e.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(102f, -1000f, -621f, var_2.c) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c, -1310f, var_2.c, -285f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c, var_2.c, var_2.c, -434f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c, -333f, var_2.c, -1392f))))), _wgslsmith_sub_u32(u_input.b, _wgslsmith_mult_u32(1u, 4294967295u)) | 4294967295u);
}

