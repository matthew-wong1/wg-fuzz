struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: bool,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: bool,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: f32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 18> = array<vec2<bool>, 18>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false));

var<private> global1: array<i32, 16>;

var<private> global2: i32 = -1i;

var<private> global3: array<f32, 13>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<f32> {
    var var_0 = (vec4<i32>(-1i) * -max(abs(vec4<i32>(u_input.a, u_input.a, global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(15197u, 16u)])), -vec4<i32>(51491i, 1i, global1[_wgslsmith_index_u32(31819u, 16u)], global1[_wgslsmith_index_u32(4294967295u, 16u)]))) | select(vec4<i32>(0i, u_input.a, global1[_wgslsmith_index_u32(~(~22507u), 16u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(0u, 4294967295u, 1u)), 16u)]), ~reverseBits(vec4<i32>(global1[_wgslsmith_index_u32(9312u, 16u)], -22970i, u_input.a, u_input.a)), !select(all(vec4<bool>(true, false, true, false)), false, true));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-582f, global3[_wgslsmith_index_u32(50284u, 13u)], global3[_wgslsmith_index_u32(4294967295u, 13u)]) * vec3<f32>(global3[_wgslsmith_index_u32(33057u, 13u)], -1149f, -198f)), _wgslsmith_div_vec3_f32(vec3<f32>(153f, global3[_wgslsmith_index_u32(4294967295u, 13u)], global3[_wgslsmith_index_u32(893u, 13u)]), vec3<f32>(global3[_wgslsmith_index_u32(2953u, 13u)], 1000f, global3[_wgslsmith_index_u32(27184u, 13u)]))))))));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = firstLeadingBit(~(~0u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 2852u), vec3<u32>(0u, 4294967295u, 4294967295u)) % 32u))) == (1u | select(abs(10320u), 1u, !arg_0));
    var var_1 = ~4294967295u;
    var var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, ~2500u, 59051u >> (0u % 32u), 1u)), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(1u, 33973u, 4294967295u, 40708u)), vec4<u32>(1u, 1u, 1u, 1u))), 18u)];
    var_0 = true;
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(38770u, 13u)], global3[_wgslsmith_index_u32(43095u, 13u)], global3[_wgslsmith_index_u32(0u, 13u)]), vec3<f32>(379f, global3[_wgslsmith_index_u32(1u, 13u)], -103f)) * _wgslsmith_f_op_vec3_f32(func_3())))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1261f, global3[_wgslsmith_index_u32(4294967295u, 13u)], -331f)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3[_wgslsmith_index_u32(50633u, 13u)], -973f, global3[_wgslsmith_index_u32(1u, 13u)])))))), select(select(vec2<bool>(!arg_0, true), vec2<bool>(var_2.x, any(vec3<bool>(arg_0, var_2.x, true))), all(select(vec3<bool>(arg_0, var_2.x, arg_0), vec3<bool>(true, false, false), vec3<bool>(arg_0, true, var_2.x)))), global0[_wgslsmith_index_u32(~(~55755u), 18u)], select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1365u, 28227u)), 18u)], !global0[_wgslsmith_index_u32(~0u, 18u)], vec2<bool>(true, true))), !arg_0, min(abs(0i), -_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(1u, 16u)]), vec2<i32>(-45530i, 2147483647i) & vec2<i32>(global1[_wgslsmith_index_u32(1u, 16u)], 23427i))), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 13u)] - -316f));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    global1 = array<i32, 16>();
    var var_0 = _wgslsmith_div_f32(global3[_wgslsmith_index_u32(71683u, 13u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, 15260u << (arg_1 % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, arg_1, arg_1, 0u), vec4<u32>(arg_1, 32589u, 41558u, 96996u))), countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1, 66198u, arg_1), vec3<u32>(1u, arg_1, 1u)))), 13u)]) >= -297f;
    var_0 = any(select(select(!select(vec3<bool>(arg_0.c, arg_0.b.x, true), vec3<bool>(arg_0.c, false, true), arg_0.b.x), select(!vec3<bool>(false, arg_0.b.x, arg_0.b.x), !vec3<bool>(false, arg_0.b.x, arg_0.b.x), vec3<bool>(true, arg_0.c, true)), all(select(vec4<bool>(arg_0.b.x, true, true, true), vec4<bool>(false, arg_0.c, true, false), true))), select(select(vec3<bool>(arg_0.c, false, arg_0.b.x), !vec3<bool>(true, arg_0.c, false), select(vec3<bool>(arg_0.b.x, arg_0.c, false), vec3<bool>(false, false, true), arg_0.c)), !vec3<bool>(arg_0.b.x, true, arg_0.c), select(vec3<bool>(arg_0.b.x, true, false), select(vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x), vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.c), arg_0.b.x), true)), arg_0.c));
    var var_1 = arg_1;
    global3 = array<f32, 13>();
    return Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.a * _wgslsmith_f_op_vec3_f32(-arg_0.a)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(arg_0.a, vec3<f32>(182f, 1170f, -1014f)))))), vec2<bool>(func_2(arg_0.c).b.x, true), false | !all(select(arg_0.b, vec2<bool>(arg_0.c, arg_0.c), arg_0.b)), -_wgslsmith_sub_i32(_wgslsmith_add_i32(-1i, 63170i), -47750i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(false).e - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-661f)), _wgslsmith_f_op_f32(max(arg_0.e, -136f))))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: vec4<i32>) -> vec4<bool> {
    let var_0 = true;
    var var_1 = (i32(-1i) * -(u_input.a | 0i)) ^ arg_0.d;
    let var_2 = vec2<u32>(45576u, ~46030u);
    global2 = -_wgslsmith_mult_i32(arg_3.x, arg_3.x);
    let var_3 = Struct_4(arg_2.b, Struct_1(arg_2.a.a, arg_0.b, true, u_input.a, _wgslsmith_f_op_f32(max(131f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1021f + -276f)))))));
    return !vec4<bool>(all(arg_0.b), false, (reverseBits(arg_1.x) < (var_2.x | arg_1.x)) && any(vec4<bool>(arg_2.b.a.x, true, arg_2.d, true)), true);
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_5, arg_2: vec4<i32>, arg_3: vec2<u32>) -> vec4<f32> {
    let var_0 = Struct_4(Struct_2(arg_0.xyy), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(558f, arg_1.b, arg_1.b))), !func_4(Struct_1(vec3<f32>(global3[_wgslsmith_index_u32(arg_3.x, 13u)], -584f, -624f), global0[_wgslsmith_index_u32(arg_3.x, 18u)], true, 0i, 436f), ~8558u).b, !(arg_1.d.x || all(global0[_wgslsmith_index_u32(47364u, 18u)])), func_4(Struct_1(vec3<f32>(1960f, global3[_wgslsmith_index_u32(arg_3.x, 13u)], 1433f), select(vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(arg_0.x, false), vec2<bool>(false, true)), all(arg_0), u_input.a, arg_1.c), 65308u).d, global3[_wgslsmith_index_u32(~23539u, 13u)]));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.a.x, -429f, 117f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.a.x, var_0.b.a.x, -511f) - var_0.b.a)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(func_2(func_2(false).b.x).a.zz, _wgslsmith_f_op_vec2_f32(exp2(var_1.xz)), arg_1.a)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(1u, 13u)], 217f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(997f, var_1.x))) - _wgslsmith_f_op_vec3_f32(func_3()).zx), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.xx + _wgslsmith_f_op_vec2_f32(trunc(var_1.zy))) * vec2<f32>(var_1.x, _wgslsmith_f_op_f32(step(var_1.x, var_1.x)))), arg_1.d.x && any(vec3<bool>(false, arg_1.d.x, true)))));
    let var_3 = ~arg_2.wxz & max(-_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, arg_2.x, -42777i), min(vec3<i32>(var_0.b.d, 2147483647i, 12607i), vec3<i32>(29828i, 11155i, -1i))), arg_2.yyx);
    global1 = array<i32, 16>();
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(424f, -1217f, var_0.b.a.x, 1686f))), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, 563f, 1277f, global3[_wgslsmith_index_u32(arg_3.x, 13u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1218f, var_0.b.a.x, -756f, arg_1.b)))))))));
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_6(select(func_5(func_4(func_2(true), _wgslsmith_add_u32(arg_0, 6467u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, arg_0, arg_0, 4294967295u) ^ vec4<u32>(arg_0, arg_0, 4294967295u, 4294967295u), ~vec4<u32>(arg_0, arg_0, 0u, 16749u), vec4<u32>(7159u, 1u, 1u, 1u) & vec4<u32>(4294967295u, 34310u, arg_0, arg_0)), Struct_3(func_4(Struct_1(vec3<f32>(global3[_wgslsmith_index_u32(51394u, 13u)], global3[_wgslsmith_index_u32(4294967295u, 13u)], global3[_wgslsmith_index_u32(22201u, 13u)]), global0[_wgslsmith_index_u32(0u, 18u)], false, global1[_wgslsmith_index_u32(4294967295u, 16u)], -736f), 22194u), Struct_2(vec3<bool>(false, false, true)), true, true, _wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(arg_0, 13u)], -1242f) * vec2<f32>(global3[_wgslsmith_index_u32(108663u, 13u)], 320f))), vec4<i32>(i32(-1i) * -8639i, min(-2147483647i, 0i), u_input.a, 13538i >> (arg_0 % 32u))), vec4<bool>(any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true))), func_5(func_4(Struct_1(vec3<f32>(global3[_wgslsmith_index_u32(1u, 13u)], 1114f, -273f), global0[_wgslsmith_index_u32(0u, 18u)], true, global1[_wgslsmith_index_u32(arg_0, 16u)], global3[_wgslsmith_index_u32(5979u, 13u)]), arg_0), vec4<u32>(arg_0, 17163u, 4294967295u, 1u), Struct_3(Struct_1(vec3<f32>(global3[_wgslsmith_index_u32(56900u, 13u)], global3[_wgslsmith_index_u32(arg_0, 13u)], global3[_wgslsmith_index_u32(82211u, 13u)]), global0[_wgslsmith_index_u32(4294967295u, 18u)], false, 16864i, -126f), Struct_2(vec3<bool>(true, true, true)), true, true, vec2<f32>(global3[_wgslsmith_index_u32(arg_0, 13u)], -568f)), min(vec4<i32>(global1[_wgslsmith_index_u32(arg_0, 16u)], -26003i, -27719i, -14970i), vec4<i32>(38112i, 1i, 1i, 27684i))).x, true, true), func_5(func_4(Struct_1(vec3<f32>(-1000f, global3[_wgslsmith_index_u32(1u, 13u)], 1608f), global0[_wgslsmith_index_u32(89897u, 18u)], true, 34498i, 1126f), arg_0), vec4<u32>(0u, arg_0, 1u, 4294967295u), Struct_3(Struct_1(vec3<f32>(-2868f, 893f, global3[_wgslsmith_index_u32(arg_0, 13u)]), vec2<bool>(false, true), false, global1[_wgslsmith_index_u32(arg_0, 16u)], -2817f), Struct_2(vec3<bool>(false, true, false)), true, false, vec2<f32>(-1001f, global3[_wgslsmith_index_u32(24947u, 13u)])), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, -72941i, global1[_wgslsmith_index_u32(arg_0, 16u)], global1[_wgslsmith_index_u32(arg_0, 16u)]), vec4<i32>(u_input.a, 0i, -2147483647i, u_input.a))).x != true), Struct_5(func_2(firstLeadingBit(2147483647i) >= u_input.a).b.x, 788f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(466f, 317f))))), vec4<bool>(func_2(func_4(Struct_1(vec3<f32>(746f, -811f, -923f), global0[_wgslsmith_index_u32(50973u, 18u)], false, 32554i, global3[_wgslsmith_index_u32(34042u, 13u)]), arg_0).c).b.x, ~1u >= _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0, arg_0), vec3<u32>(arg_0, arg_0, arg_0)), any(vec3<bool>(false, true, false)), any(vec3<bool>(false, true, false)))), abs(-(-vec4<i32>(global1[_wgslsmith_index_u32(arg_0, 16u)], 10116i, -1i, global1[_wgslsmith_index_u32(arg_0, 16u)]) << (~vec4<u32>(arg_0, 41037u, arg_0, arg_0) % vec4<u32>(32u)))), min(~abs(vec2<u32>(100514u, arg_0)), abs(min(firstTrailingBit(vec2<u32>(1u, arg_0)), vec2<u32>(19907u, 4294967295u) << (vec2<u32>(arg_0, 4294967295u) % vec2<u32>(32u)))))));
    var var_1 = abs(vec4<i32>(-1i, u_input.a, global1[_wgslsmith_index_u32(arg_0, 16u)], func_2(true).d));
    let var_2 = min(vec3<i32>(global1[_wgslsmith_index_u32(reverseBits(~4294967295u), 16u)], -4957i, global1[_wgslsmith_index_u32(~1u, 16u)]), _wgslsmith_div_vec3_i32(abs(max(vec3<i32>(u_input.a, global1[_wgslsmith_index_u32(arg_0, 16u)], 1i), vec3<i32>(var_1.x, var_1.x, u_input.a)) >> ((vec3<u32>(arg_0, arg_0, arg_0) ^ vec3<u32>(27847u, 18093u, arg_0)) % vec3<u32>(32u))), select(vec3<i32>(-1i, var_1.x, u_input.a), var_1.yzx, true) >> (abs(vec3<u32>(arg_0, arg_0, 1u)) % vec3<u32>(32u))));
    global3 = array<f32, 13>();
    let var_3 = func_5(Struct_1(var_0.yzw, global0[_wgslsmith_index_u32(arg_0, 18u)], true, reverseBits(u_input.a | u_input.a) & -_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_2.x, var_1.x, 2147483647i), vec4<i32>(-2147483647i, u_input.a, var_1.x, var_1.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(893f + global3[_wgslsmith_index_u32(arg_0, 13u)]), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(416f + var_0.x) - var_0.x)))), vec4<u32>(~arg_0, 0u, _wgslsmith_div_u32(firstTrailingBit(26557u), _wgslsmith_clamp_u32(arg_0, _wgslsmith_clamp_u32(76175u, 56178u, arg_0), ~arg_0)), select(_wgslsmith_div_u32(arg_0, 1u), _wgslsmith_add_u32(min(arg_0, arg_0), arg_0 & 13235u), select(false, func_2(false).c, true))), Struct_3(func_2(true), Struct_2(vec3<bool>(true, all(vec2<bool>(false, false)), false)), true, false, _wgslsmith_f_op_vec2_f32(var_0.zz - var_0.wy)), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(arg_0, 16u)], 14563i, -15400i, var_2.x), vec4<i32>(2147483647i, -2966i, -30941i, 2147483647i) << (vec4<u32>(4294967295u, 70850u, arg_0, 35916u) % vec4<u32>(32u))), -_wgslsmith_dot_vec2_i32(vec2<i32>(-53271i, u_input.a), var_1.yx), -44710i, global1[_wgslsmith_index_u32(1u, 16u)]), ~(~vec4<i32>(0i, u_input.a, -1i, 1i)) >> (_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_0, arg_0, arg_0, arg_0), select(vec4<u32>(arg_0, arg_0, 46673u, arg_0), vec4<u32>(4294967295u, 67512u, 4294967295u, arg_0), vec4<bool>(true, false, true, false)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, arg_0, 71522u, 4294967295u), vec4<u32>(0u, arg_0, 4294967295u, 19660u))) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_add_i32(21364i, -1i), 4859i, ~(i32(-1i) * -45573i), max(19402i, firstTrailingBit(var_2.x))))).xzw;
    return ~arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(false, any(global0[_wgslsmith_index_u32(firstLeadingBit(12427u) << (~4294967295u % 32u), 18u)]), ~max(81755u, 16379u) == func_1(33574u), true);
    let var_1 = Struct_5(var_0.x & true, global3[_wgslsmith_index_u32(4294967295u, 13u)], _wgslsmith_f_op_f32(ceil(1807f)), select(select(select(vec4<bool>(true, var_0.x, true, var_0.x), !vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(true, false, true, true)), !select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(false, false, var_0.x, true), vec4<bool>(var_0.x, false, var_0.x, false)), !select(false, true, var_0.x)), vec4<bool>(var_0.x, var_0.x, false, func_2(true | var_0.x).b.x), vec4<bool>(true, true || var_0.x, !var_0.x, true)));
    var_0 = func_5(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 13u)]))), var_1.b, var_1.b), func_2(true).b, false, -39053i, var_1.c), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(~4294967295u, 0u, ~17720u, _wgslsmith_mult_u32(1u, 0u)), countOneBits(vec4<u32>(1u, _wgslsmith_mod_u32(58768u, 47150u), _wgslsmith_dot_vec2_u32(vec2<u32>(9428u, 0u), vec2<u32>(4294967295u, 0u)), reverseBits(2209u)))), Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 190f, 642f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-445f, 137f, global3[_wgslsmith_index_u32(0u, 13u)]) - vec3<f32>(1488f, var_1.c, -376f))), vec2<bool>(false, false | var_1.a), all(!vec4<bool>(false, var_1.d.x, false, true)), -u_input.a >> (~1u % 32u), 1143f), Struct_2(var_0.wzw), (_wgslsmith_f_op_f32(-var_1.c) < _wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(29531u, 13u)], -1426f))) | !select(var_0.x, false, false), func_2(var_1.d.x).c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1360f, -728f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(0u, 13u)], global3[_wgslsmith_index_u32(2435u, 13u)]), vec2<f32>(global3[_wgslsmith_index_u32(75917u, 13u)], -509f))))), -(~(vec4<i32>(u_input.a, 11803i, global1[_wgslsmith_index_u32(46176u, 16u)], u_input.a) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-func_4(Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-399f, 601f, -1000f))), vec2<bool>(true, var_0.x), true, 1i, 1173f), _wgslsmith_dot_vec3_u32(~vec3<u32>(71273u, 51120u, 4294967295u), min(vec3<u32>(1u, 0u, 9920u), vec3<u32>(21482u, 4294967295u, 0u)))).a), vec2<bool>(all(vec4<bool>(var_1.d.x, false, func_2(var_0.x).c, all(vec4<bool>(var_0.x, var_1.d.x, false, var_1.a)))), true), !any(!select(vec4<bool>(var_1.d.x, true, var_0.x, true), var_1.d, vec4<bool>(var_1.d.x, var_1.d.x, true, var_1.a))), _wgslsmith_dot_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(0u, 16u)], -32577i), vec2<i32>(global1[_wgslsmith_index_u32(0u, 16u)], u_input.a)) << (vec2<u32>(max(1u, 2621u), countOneBits(35054u)) % vec2<u32>(32u)), vec2<i32>(u_input.a, u_input.a) | -select(vec2<i32>(u_input.a, -34835i), vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(0u, 16u)]), var_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c, var_1.b)));
    global2 = u_input.a;
    var_0 = func_5(var_2, _wgslsmith_div_vec4_u32(min(~vec4<u32>(1u, 50591u, 4294967295u, 0u), firstTrailingBit(abs(vec4<u32>(4294967295u, 4294967295u, 57063u, 1u)))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, 4294967295u), vec4<u32>(4294967295u, 1u, 22679u, 1u), vec4<u32>(1u, 10677u, 43081u, 1u)) << (~vec4<u32>(4294967295u, 44215u, 0u, 129531u) % vec4<u32>(32u))), Struct_3(var_2, Struct_2(vec3<bool>(var_1.a, func_2(var_0.x).c, any(vec2<bool>(false, true)))), (max(74704u, 4294967295u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 48708u, 39664u), vec4<u32>(4294967295u, 4294967295u, 26306u, 20795u)) % 32u)) < 0u, var_1.d.x, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_2.a.xz - vec2<f32>(-572f, -2190f)), _wgslsmith_f_op_vec2_f32(min(var_2.a.yy, var_2.a.xz))))), vec4<i32>(func_4(var_2, reverseBits(0u)).d, min(min(-2147483647i, global1[_wgslsmith_index_u32(1u, 16u)]), 40696i), firstLeadingBit(_wgslsmith_clamp_i32(u_input.a, -24912i, var_2.d)), -_wgslsmith_div_i32(-4594i, u_input.a)) & ~abs(min(vec4<i32>(global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(5073u, 16u)], var_2.d, var_2.d), vec4<i32>(2147483647i, var_2.d, 0i, global1[_wgslsmith_index_u32(20493u, 16u)]))));
    global3 = array<f32, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(49996u, max(~countOneBits(32313u), ~max(35788u, 0u)), 1u), 1u, _wgslsmith_mult_u32(firstTrailingBit(select(10359u, 4294967295u, var_0.x)) & 68289u, 19586u), firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(25088u, 16u)], -18602i, var_2.d, u_input.a), vec4<i32>(u_input.a, 19238i, -1i, global1[_wgslsmith_index_u32(60445u, 16u)])) | ~vec4<i32>(u_input.a, -1i, -2147483647i, u_input.a)) & _wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, 23780i, 50227i, -1i), ~(~vec4<i32>(0i, -2147483647i, -14593i, global1[_wgslsmith_index_u32(67767u, 16u)]))));
}

