struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>) -> vec4<f32> {
    let var_0 = vec2<u32>(1u, 1u);
    let var_1 = Struct_2(Struct_1(!(!select(vec2<bool>(false, true), vec2<bool>(true, false), true)), all(vec4<bool>(all(vec3<bool>(true, true, true)), true, all(vec2<bool>(false, false)), any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_sub_vec4_i32(vec4<i32>(~(-1i), 0i ^ u_input.a, _wgslsmith_add_i32(1i, arg_0), arg_0), -abs(vec4<i32>(u_input.a, arg_0, -2147483647i, u_input.a)))), 0i, vec2<bool>(true, true != !(arg_1.x <= arg_1.x)));
    var var_2 = vec3<f32>(var_1.a.c, 1000f, -218f);
    var var_3 = vec4<f32>(arg_1.x, var_1.a.c, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -863f));
    var var_4 = select(select(!vec4<bool>(select(var_1.a.a.x, var_1.a.b, false), all(vec4<bool>(var_1.c.x, true, true, var_1.a.b)), true, true), !vec4<bool>(any(var_1.c), !var_1.c.x, !var_1.c.x, var_1.c.x & var_1.c.x), true), vec4<bool>(_wgslsmith_f_op_f32(step(arg_1.x, 1f)) > _wgslsmith_f_op_f32(-var_1.a.c), !(-1077f == _wgslsmith_f_op_f32(round(2577f))), ~arg_0 != -(arg_0 >> (7392u % 32u)), !(_wgslsmith_div_f32(arg_1.x, var_3.x) >= _wgslsmith_f_op_f32(-1993f * -1257f))), var_1.a.b);
    return vec4<f32>(_wgslsmith_f_op_f32(124f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + arg_1.x)), 1084f, var_1.a.c, _wgslsmith_f_op_f32(-1302f * 913f));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_3) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(-arg_1.c)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.c)))));
    var var_1 = Struct_2(arg_3.a, 1i, !vec2<bool>(arg_1.c >= _wgslsmith_f_op_f32(abs(arg_0.x)), any(arg_3.a.a)));
    var var_2 = ~firstLeadingBit(reverseBits(-2147483647i));
    var_1 = Struct_2(arg_3.a, countOneBits(arg_2), arg_3.b.zy);
    var var_3 = arg_1;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(-458f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(-var_3.c)) + vec3<f32>(_wgslsmith_div_f32(arg_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -946f) - 354f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-743f + arg_1.c)) + arg_1.c), 1783f));
}

fn func_2(arg_0: f32, arg_1: Struct_3) -> Struct_1 {
    var var_0 = arg_1.a.d.xyw;
    var var_1 = _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1.a.c * 1282f), _wgslsmith_f_op_f32(arg_0 + arg_1.a.c), arg_0, arg_0) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_3(-30281i, vec2<f32>(-1000f, arg_1.a.c)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), arg_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -495f))), 493f))), arg_1.a, ~(-countOneBits(arg_1.a.d.x & 1i)), Struct_3(Struct_1(select(select(arg_1.b.xz, vec2<bool>(false, true), true), select(vec2<bool>(arg_1.b.x, arg_1.b.x), arg_1.b.yy, arg_1.a.b), arg_1.a.b), true, arg_1.a.c, vec4<i32>(abs(arg_1.a.d.x), 1i, -arg_1.a.d.x, _wgslsmith_mod_i32(arg_1.a.d.x, u_input.a))), vec3<bool>(true & !arg_1.b.x, true, select(select(arg_1.b.x, arg_1.b.x, false), true, false | arg_1.a.a.x)))));
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -252f), 1097f, -816f));
    let var_2 = !vec4<bool>(true, arg_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1184f - -888f)) != _wgslsmith_f_op_f32(-var_1.x), true);
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(516f, arg_0, -1000f) + vec3<f32>(-952f, -687f, 1289f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-186f, var_1.x, arg_0) * vec3<f32>(327f, 156f, var_1.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, arg_0, arg_0))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1111f, 878f, arg_1.a.c) * vec3<f32>(-805f, -1439f, -1170f))))))), true));
    return arg_1.a;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3) -> Struct_1 {
    var var_0 = func_2(-971f, arg_1);
    let var_1 = all(func_2(500f, Struct_3(Struct_1(arg_1.a.a, false, arg_0.c, vec4<i32>(-2147483647i, 2147483647i, arg_1.a.d.x, arg_1.a.d.x)), !arg_1.b)).a) || !var_0.b;
    return func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-func_2(-438f, arg_1).c))))), arg_1);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_3 {
    return Struct_3(func_1(Struct_1(func_1(Struct_1(vec2<bool>(true, arg_1.b), false, 972f, arg_1.d), Struct_3(Struct_1(arg_0.a, arg_1.a.x, -533f, arg_1.d), vec3<bool>(arg_1.b, false, arg_0.a.x))).a, select(true, true, func_2(arg_0.c, Struct_3(Struct_1(arg_1.a, arg_0.a.x, -1246f, vec4<i32>(19650i, arg_0.d.x, u_input.a, arg_0.d.x)), vec3<bool>(arg_1.b, false, false))).b), -830f, abs(~vec4<i32>(-73400i, -1i, arg_0.d.x, arg_1.d.x))), Struct_3(func_2(1650f, Struct_3(Struct_1(arg_1.a, arg_1.b, 362f, vec4<i32>(1i, arg_0.d.x, u_input.a, arg_0.d.x)), vec3<bool>(arg_0.b, arg_1.b, arg_0.b))), select(vec3<bool>(true, false, false), vec3<bool>(arg_1.b, arg_0.a.x, true), select(vec3<bool>(arg_1.b, true, false), vec3<bool>(false, arg_0.b, arg_1.b), false)))), select(select(!(!vec3<bool>(false, true, arg_1.b)), select(select(vec3<bool>(arg_0.b, true, arg_1.b), vec3<bool>(arg_0.a.x, arg_0.b, true), vec3<bool>(arg_1.a.x, arg_1.b, true)), select(vec3<bool>(false, true, arg_0.b), vec3<bool>(arg_1.b, true, arg_1.a.x), vec3<bool>(false, true, arg_0.a.x)), func_1(arg_0, Struct_3(Struct_1(arg_1.a, true, -500f, arg_1.d), vec3<bool>(arg_1.a.x, arg_1.b, arg_1.b))).a.x), 27803u > _wgslsmith_clamp_u32(1u, 91856u, 33683u)), vec3<bool>(arg_1.b, !all(vec3<bool>(arg_1.a.x, true, true)), true), select(select(select(vec3<bool>(arg_1.b, true, arg_0.a.x), vec3<bool>(arg_1.b, arg_0.a.x, false), false), vec3<bool>(false, arg_0.b, arg_1.b), vec3<bool>(arg_0.b, false, false)), vec3<bool>(false, false, func_1(Struct_1(arg_1.a, true, arg_0.c, vec4<i32>(5069i, -72046i, -1i, u_input.a)), Struct_3(Struct_1(arg_1.a, arg_1.b, arg_1.c, vec4<i32>(-2147483647i, u_input.a, 0i, arg_1.d.x)), vec3<bool>(arg_1.a.x, arg_0.a.x, arg_1.a.x))).a.x), false)));
}

fn func_6(arg_0: Struct_3) -> i32 {
    var var_0 = Struct_1(!(!(!vec2<bool>(arg_0.b.x, arg_0.a.b))), true, func_1(Struct_1(vec2<bool>(arg_0.a.a.x, true), func_5(arg_0.a, arg_0.a).a.a.x, _wgslsmith_f_op_f32(841f - _wgslsmith_f_op_f32(sign(arg_0.a.c))), ~max(arg_0.a.d, arg_0.a.d)), arg_0).c, vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.a, arg_0.a.d.x, u_input.a), func_5(Struct_1(arg_0.b.yy, true, arg_0.a.c, vec4<i32>(9267i, u_input.a, arg_0.a.d.x, 1i)), arg_0.a).a.d));
    var_0 = func_5(func_1(Struct_1(func_2(_wgslsmith_f_op_f32(-var_0.c), arg_0).a, all(arg_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1354f, arg_0.a.c))), _wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.a, u_input.a, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(63966i, -49795i, var_0.d.x, 1i), arg_0.a.d))), Struct_3(func_1(func_2(var_0.c, arg_0), arg_0), arg_0.b)), arg_0.a).a;
    let var_1 = Struct_2(Struct_1(vec2<bool>(_wgslsmith_f_op_f32(-arg_0.a.c) <= func_1(Struct_1(arg_0.b.zz, arg_0.a.a.x, arg_0.a.c, arg_0.a.d), Struct_3(Struct_1(vec2<bool>(arg_0.b.x, true), false, arg_0.a.c, var_0.d), vec3<bool>(var_0.a.x, false, arg_0.b.x))).c, false), !func_2(_wgslsmith_div_f32(-1025f, var_0.c), arg_0).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - 1f)), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(func_1(arg_0.a, Struct_3(arg_0.a, vec3<bool>(var_0.b, var_0.a.x, var_0.a.x))).d, arg_0.a.d), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(var_0.d, vec4<i32>(arg_0.a.d.x, 1i, var_0.d.x, var_0.d.x)), _wgslsmith_div_vec4_i32(vec4<i32>(22770i, -22855i, u_input.a, arg_0.a.d.x), var_0.d)))), firstLeadingBit(arg_0.a.d.x ^ _wgslsmith_clamp_i32(firstTrailingBit(-1i), select(-2147483647i, var_0.d.x, false), _wgslsmith_div_i32(var_0.d.x, arg_0.a.d.x))), !vec2<bool>(var_0.a.x, arg_0.a.b));
    var var_2 = _wgslsmith_f_op_f32(-arg_0.a.c);
    var var_3 = -5400i;
    return func_2(-288f, func_5(Struct_1(arg_0.a.a, true, _wgslsmith_f_op_f32(ceil(-174f)), select(~vec4<i32>(9470i, -2147483647i, 47132i, -1782i), select(arg_0.a.d, var_1.a.d, vec4<bool>(true, true, true, false)), !var_1.c.x)), arg_0.a)).d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(~1u, firstTrailingBit(_wgslsmith_sub_u32(1u, 1u))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-990f, -2809f, -2112f) * vec3<f32>(172f, 1434f, 161f)), vec3<f32>(-1225f, -705f, -441f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-656f, 652f, 2274f) * _wgslsmith_div_vec3_f32(vec3<f32>(976f, -378f, 1979f), vec3<f32>(1194f, 250f, 488f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1677f, -1424f, 642f)), vec3<f32>(-1814f, _wgslsmith_f_op_f32(floor(432f)), _wgslsmith_f_op_f32(sign(377f))))), (select(~vec2<u32>(0u, 12843u), select(vec2<u32>(86024u, 0u), vec2<u32>(4294967295u, 1u), var_0), false & var_0) >> (vec2<u32>(1u, _wgslsmith_div_u32(23934u, 63574u)) % vec2<u32>(32u))) & ~firstLeadingBit(vec2<u32>(1u, 1u)), func_6(func_5(Struct_1(!vec2<bool>(var_0, true), var_0, -1111f, max(vec4<i32>(u_input.a, u_input.a, u_input.a, -13999i), vec4<i32>(u_input.a, 15039i, 0i, 0i))), func_1(Struct_1(vec2<bool>(var_0, true), var_0, -900f, vec4<i32>(u_input.a, u_input.a, -1i, -2147483647i)), Struct_3(Struct_1(vec2<bool>(true, true), false, 471f, vec4<i32>(-2147483647i, -45698i, -1i, -1i)), vec3<bool>(var_0, var_0, true))))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2052f + -146f)), _wgslsmith_f_op_f32(-601f + _wgslsmith_f_op_f32(select(-1904f, 679f, false)))))));
}

