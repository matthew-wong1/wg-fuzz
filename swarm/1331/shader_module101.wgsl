struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: bool,
    d: u32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec4<f32>) -> i32 {
    let var_0 = 0u;
    let var_1 = vec2<u32>(42488u, select(var_0, _wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.d, 0u), u_input.c.xx), var_0)), true));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.x)))), _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -860f))), any(select(!arg_0.b.xw, select(vec2<bool>(arg_0.c, true), arg_0.b.xz, arg_0.b.wx), select(arg_0.e.zy, arg_0.b.zy, vec2<bool>(arg_0.b.x, false)))))) - arg_2.x);
    var var_3 = true;
    var_3 = 4294967295u < _wgslsmith_mod_u32(u_input.c.x, u_input.c.x);
    return 0i;
}

fn func_2() -> f32 {
    let var_0 = Struct_1(vec3<i32>(_wgslsmith_sub_i32(func_3(Struct_1(vec3<i32>(u_input.a.x, u_input.b, -1i), vec4<bool>(true, false, false, true), true, u_input.c.x, vec4<bool>(false, true, true, true)), vec3<i32>(u_input.b, 8708i, 16483i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-271f, -227f, -888f, -1046f))), -1i), u_input.a.x, min(-u_input.a.x, _wgslsmith_sub_i32(reverseBits(-11339i), ~u_input.a.x))), select(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false)), !select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(false, all(vec4<bool>(true, true, true, true)), true, false)), true, _wgslsmith_mult_u32(u_input.c.x, ~4294967295u), !select(vec4<bool>(true, true, any(vec3<bool>(false, false, true)), true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true))));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1487f, _wgslsmith_f_op_f32(-1966f * 1219f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(730f, -1598f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-621f - -172f)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-357f, -1000f, -129f, 318f) - vec4<f32>(1410f, 783f, -543f, -113f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-606f, -1000f, 1240f, 154f))))))));
    let var_2 = Struct_1(abs(-(-var_0.a ^ ~vec3<i32>(var_0.a.x, 19584i, u_input.b))), select(var_0.e, !(!(!var_0.b)), vec4<bool>(any(var_0.e.zw), !any(var_0.e), all(vec2<bool>(true, true)), any(select(var_0.b, vec4<bool>(true, var_0.e.x, false, false), vec4<bool>(true, var_0.c, true, var_0.e.x))))), select(var_0.e.x, !(select(true, false, var_0.e.x) | var_0.b.x), var_1.x < _wgslsmith_f_op_f32(trunc(var_1.x))), 0u, vec4<bool>(true, true, var_0.c, !(select(false, var_0.e.x, true) & true)));
    var var_3 = 2147483647i;
    let var_4 = u_input.a.xz;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: f32, arg_3: vec4<i32>) -> Struct_1 {
    return Struct_1(vec3<i32>(~_wgslsmith_add_i32(_wgslsmith_div_i32(1i, 1i), arg_3.x), firstTrailingBit(abs(25989i)), 12218i), vec4<bool>(any(select(vec3<bool>(arg_0, false, true), select(vec3<bool>(arg_0, false, true), vec3<bool>(arg_0, arg_0, false), vec3<bool>(false, false, true)), true)), any(select(vec2<bool>(arg_0, false), !vec2<bool>(arg_0, false), arg_0 != arg_0)), !(!all(vec4<bool>(arg_0, arg_0, arg_0, arg_0))), true), select(all(select(vec4<bool>(arg_0, arg_0, true, false), select(vec4<bool>(arg_0, false, true, arg_0), vec4<bool>(arg_0, false, false, false), arg_0), !vec4<bool>(arg_0, false, arg_0, false))), true, true), reverseBits(u_input.c.x), !(!vec4<bool>(any(vec4<bool>(arg_0, false, true, true)), arg_0, true, arg_0 && arg_0)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_1 {
    return arg_1;
}

fn func_6(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool, arg_3: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(func_2());
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1324f - _wgslsmith_f_op_f32(f32(-1f) * -444f)), -633f)) - _wgslsmith_f_op_f32(sign(-328f))));
    var var_2 = func_5(func_4(false, 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - -798f))), -vec4<i32>(_wgslsmith_clamp_i32(2147483647i, 0i, 24101i), -2147483647i, -2147483647i, -2147483647i)), func_4(true, ~(~41936u), _wgslsmith_f_op_f32(f32(-1f) * -1891f), -_wgslsmith_mult_vec4_i32(vec4<i32>(61092i, arg_0.a.x, 0i, arg_3), ~vec4<i32>(arg_3, 2147483647i, 46786i, -2147483647i))), vec4<f32>(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2110f - var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(549f, var_1.x)), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(floor(var_1.x))));
    var var_3 = min(~abs(max(_wgslsmith_mod_u32(arg_0.d, var_2.d), select(0u, 17182u, true))), ~14748u);
    var var_4 = abs(u_input.b);
    return func_5(Struct_1(select(~select(var_2.a, arg_0.a, true), max(vec3<i32>(-39775i, arg_0.a.x, arg_0.a.x), ~arg_0.a), _wgslsmith_div_i32(arg_0.a.x, -31504i) <= u_input.b), vec4<bool>(true, all(select(vec3<bool>(true, true, arg_1.x), arg_0.e.ywy, false)), !arg_1.x, arg_2), !all(arg_1) || arg_0.e.x, ~_wgslsmith_dot_vec3_u32(u_input.c, u_input.c >> (u_input.c % vec3<u32>(32u))), arg_0.b), arg_0, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, 664f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1109f, 400f, 1381f, var_1.x), vec4<f32>(2014f, var_1.x, -271f, var_1.x)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, 1251f))))));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = arg_1;
    let var_2 = max(var_0.a.yx, -func_5(arg_0, func_4(!arg_0.b.x, arg_0.d, _wgslsmith_f_op_f32(f32(-1f) * -416f), vec4<i32>(u_input.a.x, var_1.a.x, 1i, var_0.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(443f, 794f, -1697f, 359f) + vec4<f32>(-550f, 342f, -448f, -604f)))).a.yy);
    var var_3 = Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(-10337i, i32(-1i) * -79328i, var_1.a.x), var_1.a), !arg_0.e, !arg_1.e.x, 0u, func_5(arg_1, func_4(!func_6(var_0, arg_1.b.xx, var_0.e.x, 1i).c, u_input.c.x << (_wgslsmith_mod_u32(46686u, u_input.c.x) % 32u), 449f, firstTrailingBit(vec4<i32>(arg_1.a.x, -2147483647i, 3262i, 20008i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-4207f, -248f, 995f, -1421f)))))).e);
    let var_4 = var_2;
    return func_6(Struct_1(vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a.x, -2147483647i), arg_1.a.x), -_wgslsmith_sub_i32(var_0.a.x, 2147483647i), -1i), func_4(var_0.c, 1u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(247f - 352f))), reverseBits(vec4<i32>(arg_0.a.x, var_3.a.x, 2147483647i, u_input.b))).e, false, func_6(Struct_1(var_3.a, var_0.e, false, arg_1.d, !var_1.b), var_1.e.yz, var_3.b.x, var_0.a.x).d, vec4<bool>(any(var_1.b.zz) || !arg_1.e.x, !any(var_0.e.yy), true, false)), select(var_1.e.wx, arg_0.b.yx, arg_0.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(0i & var_0.a.x, min(var_2.x, var_4.x)), arg_1.a.yz) > 3319i, -var_2.x & arg_1.a.x);
}

fn func_1() -> Struct_1 {
    var var_0 = func_7(func_6(func_5(Struct_1(vec3<i32>(1i, 2147483647i, u_input.b), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true)), all(vec3<bool>(false, true, true)), 65024u, vec4<bool>(true, true, true, true)), func_4(false, u_input.c.x >> (4294967295u % 32u), _wgslsmith_f_op_f32(func_2()), vec4<i32>(1643i, 1i, 90657i, -31810i)), vec4<f32>(_wgslsmith_f_op_f32(step(-1662f, -960f)), _wgslsmith_f_op_f32(f32(-1f) * -222f), -1181f, _wgslsmith_f_op_f32(796f - 121f))), vec2<bool>(any(vec2<bool>(true, true)), true), all(vec4<bool>(false, true, any(vec3<bool>(true, true, false)), true)), u_input.b), Struct_1(u_input.a, vec4<bool>(!all(vec4<bool>(false, true, true, true)), false, u_input.a.x >= 2419i, true), !func_6(Struct_1(vec3<i32>(-2147483647i, -1i, u_input.b), vec4<bool>(false, false, true, false), false, 1u, vec4<bool>(true, true, true, false)), vec2<bool>(true, false), false, u_input.b).c, u_input.c.x, func_4(false, ~_wgslsmith_sub_u32(u_input.c.x, u_input.c.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1752f))), select(vec4<i32>(u_input.b, u_input.b, 45510i, 16016i), countOneBits(vec4<i32>(32833i, 2147483647i, -2147483647i, -21421i)), vec4<bool>(true, true, true, true))).e));
    var var_1 = _wgslsmith_add_i32(min(~(~(u_input.b & -15895i)), 2147483647i), i32(-1i) * -1i);
    var var_2 = Struct_1(_wgslsmith_mult_vec3_i32(-(~_wgslsmith_div_vec3_i32(vec3<i32>(var_0.a.x, var_0.a.x, 47544i), u_input.a)), vec3<i32>(-(2147483647i << (u_input.c.x % 32u)), func_3(func_7(Struct_1(u_input.a, vec4<bool>(false, var_0.c, var_0.e.x, true), var_0.c, u_input.c.x, vec4<bool>(var_0.e.x, var_0.e.x, var_0.b.x, false)), Struct_1(u_input.a, var_0.e, var_0.b.x, u_input.c.x, vec4<bool>(var_0.c, false, var_0.b.x, true))), vec3<i32>(u_input.b, 1i, -2147483647i), vec4<f32>(832f, -1531f, -147f, -332f)), ~(-32735i >> (1u % 32u)))), !func_6(Struct_1(_wgslsmith_mod_vec3_i32(u_input.a, var_0.a), select(vec4<bool>(true, var_0.b.x, true, false), var_0.b, vec4<bool>(false, var_0.c, var_0.b.x, false)), func_6(Struct_1(vec3<i32>(-47835i, -2147483647i, var_0.a.x), var_0.b, var_0.c, 37325u, var_0.b), vec2<bool>(var_0.c, var_0.c), var_0.e.x, var_0.a.x).c, firstTrailingBit(1u), vec4<bool>(false, true, false, false)), vec2<bool>(func_5(Struct_1(vec3<i32>(52286i, var_0.a.x, -2147483647i), var_0.e, var_0.c, u_input.c.x, var_0.b), Struct_1(vec3<i32>(var_0.a.x, u_input.a.x, u_input.b), var_0.b, var_0.b.x, 39350u, var_0.b), vec4<f32>(-1080f, 557f, -795f, 257f)).b.x, true), true || (var_0.c | true), -14753i).e, true, 4294967295u, func_6(Struct_1(_wgslsmith_mult_vec3_i32(var_0.a, -vec3<i32>(u_input.b, -2004i, -13269i)), func_6(func_7(Struct_1(var_0.a, var_0.b, var_0.c, 1u, var_0.b), Struct_1(vec3<i32>(27690i, var_0.a.x, u_input.b), var_0.e, var_0.c, 14697u, var_0.b)), !vec2<bool>(true, var_0.e.x), func_5(Struct_1(u_input.a, vec4<bool>(var_0.c, var_0.e.x, true, false), true, 45461u, vec4<bool>(var_0.e.x, var_0.b.x, var_0.b.x, var_0.b.x)), Struct_1(u_input.a, vec4<bool>(true, true, false, var_0.e.x), var_0.c, 0u, var_0.b), vec4<f32>(-1000f, -1000f, -269f, 1000f)).c, -47236i).e, (27651u > u_input.c.x) || var_0.e.x, func_4(all(vec4<bool>(true, true, var_0.e.x, var_0.b.x)), var_0.d << (87196u % 32u), _wgslsmith_div_f32(-2245f, 1111f), vec4<i32>(4108i, 0i, u_input.b, 26371i)).d, var_0.e), !(!select(vec2<bool>(true, var_0.b.x), var_0.e.zy, var_0.c)), var_0.b.x, 3841i << (func_4(true, ~39756u, _wgslsmith_f_op_f32(f32(-1f) * -272f), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.a.x, u_input.b, var_0.a.x), vec4<i32>(-7919i, 18061i, 2147483647i, var_0.a.x), vec4<i32>(var_0.a.x, -2147483647i, u_input.b, var_0.a.x))).d % 32u)).e);
    var_1 = _wgslsmith_div_i32(func_3(func_4(var_0.e.x, 66493u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(303f * 1120f), -1119f)), ~vec4<i32>(-60384i, var_2.a.x, 2763i, var_2.a.x)), vec3<i32>(reverseBits(u_input.a.x), reverseBits(select(u_input.a.x, var_0.a.x, false)), func_5(func_7(Struct_1(vec3<i32>(u_input.a.x, 2147483647i, 21170i), var_2.b, false, 4294967295u, var_2.b), Struct_1(vec3<i32>(var_0.a.x, -39081i, var_2.a.x), var_2.b, true, 0u, var_0.b)), func_4(true, 36909u, 195f, vec4<i32>(-1i, -19058i, u_input.b, -50327i)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-955f, 379f, 106f, -1785f)))).a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(802f, -1216f, -1000f, 2477f)))), _wgslsmith_mult_i32(_wgslsmith_sub_i32(-4148i, _wgslsmith_mult_i32(func_3(Struct_1(vec3<i32>(u_input.a.x, var_2.a.x, -1i), var_0.e, false, var_2.d, var_2.e), vec3<i32>(var_0.a.x, u_input.a.x, u_input.b), vec4<f32>(2014f, -243f, 646f, -1667f)), _wgslsmith_mod_i32(2147483647i, var_0.a.x))), -(var_0.a.x ^ var_0.a.x)));
    return Struct_1(u_input.a, vec4<bool>(!(!var_0.b.x), !(var_0.c || true), var_2.e.x, false), var_0.c, abs(~(~_wgslsmith_clamp_u32(var_0.d, var_0.d, var_2.d))), var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1246f))) - -313f));
    let var_1 = func_1();
    var var_2 = Struct_1(u_input.a, var_1.e, var_1.c, 1u, !vec4<bool>(all(var_1.e.xzz), (i32(-1i) * -1i) >= -var_1.a.x, !func_4(var_1.c, u_input.c.x, -1317f, vec4<i32>(u_input.b, u_input.b, u_input.b, -19780i)).c, false));
    var_2 = func_4(false, _wgslsmith_add_u32(0u, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, u_input.c.x, var_2.d, u_input.c.x)), select(vec4<u32>(1u, var_1.d, 23584u, 4294967295u), vec4<u32>(var_1.d, var_2.d, 63554u, var_1.d), var_2.b) ^ _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, var_1.d, u_input.c.x, var_1.d), vec4<u32>(101684u, u_input.c.x, 47217u, u_input.c.x)))), var_0, -(~abs(vec4<i32>(var_1.a.x, -42648i, var_2.a.x, var_1.a.x)) << (vec4<u32>(4294967295u, var_1.d, reverseBits(var_2.d), var_1.d) % vec4<u32>(32u))));
    let var_3 = ~(u_input.c.xx | (vec2<u32>(65352u >> (var_1.d % 32u), 0u) >> (~u_input.c.xy % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(var_0, var_0)), -(vec4<i32>(~var_2.a.x, ~55660i, -27296i, -43514i) << (vec4<u32>(~40712u, ~47382u, 46025u, countOneBits(var_3.x)) % vec4<u32>(32u))), vec3<u32>(_wgslsmith_add_u32(select(var_1.d, var_2.d, all(var_2.e.xyw)), func_4(all(vec4<bool>(true, false, false, false)), _wgslsmith_add_u32(var_1.d, var_2.d), _wgslsmith_f_op_f32(f32(-1f) * -734f), vec4<i32>(var_2.a.x, u_input.b, -2147483647i, var_2.a.x) << (vec4<u32>(var_1.d, var_3.x, 1u, 4294967295u) % vec4<u32>(32u))).d), firstTrailingBit(var_1.d), max(~u_input.c.x, func_5(Struct_1(u_input.a, var_1.e, true, 21496u, vec4<bool>(true, var_1.b.x, var_1.c, var_2.c)), Struct_1(var_2.a, var_1.e, var_2.e.x, var_1.d, vec4<bool>(var_2.c, true, var_2.e.x, var_2.b.x)), vec4<f32>(var_0, var_0, -812f, 1137f)).d | _wgslsmith_dot_vec2_u32(var_3, var_3))));
}

