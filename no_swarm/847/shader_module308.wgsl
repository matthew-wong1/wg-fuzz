struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(u_input.b.x, arg_1.c.wx, !vec4<bool>(true, arg_3.c.x, all(arg_1.b), all(arg_3.c.zzz)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.d + _wgslsmith_f_op_f32(arg_3.d + -264f)), _wgslsmith_f_op_f32(arg_1.d - _wgslsmith_f_op_f32(-arg_1.d)), arg_3.b.x))), Struct_1(~abs(i32(-1i) * -1i), vec2<bool>(!arg_1.c.x, select(false & arg_0, arg_3.b.x, select(arg_0, arg_1.c.x, false))), !(!arg_1.c), -1834f), (arg_2 >> ((vec4<u32>(58373u, u_input.c.x, 1u, u_input.a) << (~vec4<u32>(u_input.a, 1641u, u_input.a, u_input.c.x) % vec4<u32>(32u))) % vec4<u32>(32u))) & arg_2, -243f, Struct_1((~(-10885i) >> (u_input.c.x % 32u)) << (u_input.a % 32u), !arg_1.c.wy, select(arg_1.c, select(!arg_1.c, !vec4<bool>(false, arg_3.b.x, true, false), u_input.a >= 14629u), 4294967295u >= firstTrailingBit(u_input.a)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_div_f32(1356f, 451f), _wgslsmith_f_op_f32(arg_3.d + -387f))))));
    let var_1 = Struct_2(Struct_1(select(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(arg_2.yz, vec2<i32>(-46997i, 34999i)), var_0.c.zz), 1i, arg_1.b.x), select(var_0.b.c.yx, vec2<bool>(!arg_3.b.x, all(vec3<bool>(arg_3.b.x, arg_3.b.x, true))), all(select(vec3<bool>(arg_3.b.x, var_0.b.b.x, false), vec3<bool>(false, arg_0, true), arg_1.c.xxy))), !select(select(vec4<bool>(false, arg_3.c.x, false, true), vec4<bool>(arg_0, true, true, false), vec4<bool>(true, var_0.b.c.x, arg_1.b.x, false)), select(var_0.a.c, vec4<bool>(var_0.e.b.x, var_0.b.b.x, arg_3.b.x, arg_3.b.x), vec4<bool>(false, arg_1.c.x, arg_0, false)), true), _wgslsmith_f_op_f32(_wgslsmith_div_f32(179f, _wgslsmith_f_op_f32(floor(var_0.a.d))) + var_0.a.d)), var_0.e, -var_0.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(arg_1.d)), _wgslsmith_f_op_f32(max(554f, arg_3.d))))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.d))))), Struct_1(_wgslsmith_div_i32(-(~u_input.b.x), arg_3.a), !select(select(vec2<bool>(true, true), vec2<bool>(arg_3.b.x, arg_3.b.x), vec2<bool>(true, var_0.e.c.x)), !var_0.a.c.wy, arg_1.b.x), select(!arg_3.c, arg_3.c, true), _wgslsmith_f_op_f32(-1721f - 2083f)));
    var var_2 = Struct_2(Struct_1(_wgslsmith_add_i32(max(arg_2.x ^ arg_1.a, _wgslsmith_mult_i32(u_input.b.x, 13894i)), -4540i), var_1.a.c.zw, select(select(!arg_3.c, !vec4<bool>(var_1.b.c.x, false, true, arg_0), var_0.b.c), vec4<bool>(false, arg_0, !var_0.b.c.x, false), any(select(vec2<bool>(false, arg_1.c.x), vec2<bool>(var_0.a.b.x, false), vec2<bool>(false, arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-361f - -399f)))), Struct_1(-14929i, !(!(!vec2<bool>(arg_0, false))), var_1.b.c, 225f), select(var_1.c, vec4<i32>(-1i) * -abs(var_0.c), any(select(var_1.b.c.wyy, arg_3.c.xww, arg_3.c.yyy)) | !(var_0.a.c.x || arg_3.c.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d))) * -1482f), arg_3);
    var_2 = var_1;
    let var_3 = -_wgslsmith_clamp_i32(2147483647i, 29055i, -24278i);
    return select(select(select(!(!var_0.a.c), select(vec4<bool>(false, arg_0, true, false), !vec4<bool>(true, true, var_1.e.b.x, var_2.a.c.x), arg_1.c), any(arg_1.c.ww)), vec4<bool>(!(arg_1.d <= 588f), select(false, true, true), var_1.e.c.x, any(!vec3<bool>(false, arg_3.b.x, false))), select(arg_1.c, var_2.e.c, select(vec4<bool>(var_0.b.c.x, var_2.b.b.x, var_0.b.c.x, false), !var_0.b.c, select(vec4<bool>(false, true, false, true), vec4<bool>(arg_0, true, false, true), var_1.b.c)))), select(vec4<bool>(all(!var_0.b.c), false, var_0.b.c.x, arg_3.b.x), select(!select(var_1.a.c, var_0.e.c, vec4<bool>(false, arg_0, var_0.a.c.x, false)), vec4<bool>(var_2.b.c.x, true, 1u < u_input.c.x, true), !vec4<bool>(false, var_1.e.b.x, true, false)), !arg_1.c), var_1.e.c);
}

fn func_2() -> Struct_2 {
    global0 = 0u;
    global0 = 17377u;
    let var_0 = Struct_1(u_input.d, vec2<bool>(select(all(vec4<bool>(false, true, false, true)), u_input.a < 0u, select(false, false, false)) || any(vec3<bool>(true, true, true)), -998f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1276f)))), vec4<bool>(_wgslsmith_mult_i32(u_input.d, u_input.b.x) == firstLeadingBit(-2147483647i), all(vec4<bool>(true, true, all(vec4<bool>(false, false, false, false)), true)), any(func_3(true, Struct_1(u_input.b.x, vec2<bool>(false, false), vec4<bool>(true, true, false, false), 577f), -vec4<i32>(-11190i, u_input.d, u_input.b.x, -11941i), Struct_1(2147483647i, vec2<bool>(false, false), vec4<bool>(true, false, true, false), 1723f))), ((u_input.d != 63775i) | true) || true), 389f);
    global0 = u_input.a;
    let var_1 = firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 0i, 1i, var_0.a), vec4<i32>(38917i, 32187i, u_input.d, 9248i)), vec4<i32>(-46811i, -48358i, 0i, 75136i)) >> (63068u % 32u), _wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_mult_i32(var_0.a, -15131i)), 1i), abs(u_input.b.x), -u_input.b.x));
    return Struct_2(var_0, Struct_1(var_1.x, select(var_0.b, select(vec2<bool>(true, true), func_3(var_0.c.x, Struct_1(var_0.a, vec2<bool>(var_0.b.x, var_0.c.x), vec4<bool>(false, var_0.b.x, false, var_0.b.x), var_0.d), var_1, Struct_1(var_1.x, vec2<bool>(var_0.c.x, true), var_0.c, var_0.d)).zw, var_0.c.yz), var_0.b.x), var_0.c, -706f), var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1207f), _wgslsmith_f_op_f32(select(var_0.d, -943f, true)))), -384f)) + 1749f), var_0);
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = 54541u;
    let var_1 = Struct_2(arg_3.b, func_2().b, arg_0, -363f, Struct_1(select(1i, _wgslsmith_add_i32(u_input.d, arg_1 >> (0u % 32u)), func_3(!arg_3.a.c.x, func_2().e, _wgslsmith_mult_vec4_i32(arg_3.c, arg_3.c), func_2().e).x), !vec2<bool>(u_input.a > arg_2.x, func_2().b.b.x), arg_3.e.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.d))));
    global0 = arg_2.x;
    var var_2 = !(!arg_3.a.c.yzw);
    return Struct_1(18832i, !(!vec2<bool>(var_1.e.b.x, arg_3.e.d < -1035f)), !(!func_2().e.c), var_1.a.d);
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> u32 {
    var var_0 = vec2<u32>(u_input.a, u_input.c.x) ^ u_input.c.zy;
    let var_1 = Struct_1(_wgslsmith_div_i32(arg_0, 2147483647i), vec2<bool>(true, !(arg_0 == (arg_2.a | 48507i))), arg_2.c, arg_2.d);
    var var_2 = Struct_1(arg_2.a ^ abs(min(u_input.d, arg_0)), vec2<bool>(true, var_1.b.x), select(vec4<bool>(true, all(!var_1.c.zyy), countOneBits(var_0.x) >= var_0.x, true), !arg_2.c, var_1.c.x && ((1000f > var_1.d) & true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2.d)) * -293f));
    let var_3 = 4294967295u;
    var var_4 = ~4294967295u;
    return 4294967295u;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec2<f32>, arg_3: Struct_1) -> f32 {
    var var_0 = 1u >> (u_input.c.x % 32u);
    var var_1 = vec2<u32>(4294967295u, countOneBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(5626u, 4294967295u, u_input.a), vec3<u32>(~82041u, firstTrailingBit(u_input.a), _wgslsmith_mult_u32(37698u, 1u)))));
    var_1 = _wgslsmith_sub_vec2_u32(~_wgslsmith_clamp_vec2_u32(u_input.c.xy, max(~u_input.c.yy, ~u_input.c.yz), vec2<u32>(var_1.x, 1927u)), u_input.c.yz);
    global0 = _wgslsmith_sub_u32(979u, _wgslsmith_mult_u32(func_5(arg_0.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.x))), func_4(vec4<i32>(14968i, arg_0.a, 0i, u_input.b.x), 0i, vec2<u32>(35199u, 82676u) << (u_input.c.yy % vec2<u32>(32u)), func_2())), 1u));
    let var_2 = _wgslsmith_f_op_f32(ceil(-160f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(-690f + _wgslsmith_f_op_f32(-func_2().a.d))));
}

fn func_6(arg_0: vec3<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(arg_0))));
    global0 = u_input.a;
    let var_1 = func_2();
    let var_2 = select(~firstTrailingBit(~u_input.c), vec3<u32>(51694u, u_input.c.x, u_input.c.x), !(!var_1.e.c.zww));
    let var_3 = Struct_2(var_1.a, var_1.b, abs(var_1.c), 1000f, var_1.b);
    return (u_input.a >> (_wgslsmith_dot_vec3_u32(u_input.c | vec3<u32>(35664u, var_2.x, var_2.x), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(33664u, var_2.x, u_input.a), vec3<u32>(u_input.c.x, 90009u, 48432u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(16249u, var_2.x, 75107u)))) % 32u)) ^ var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1060f)) + _wgslsmith_f_op_f32(func_1(Struct_1(-13492i, vec2<bool>(true, false), vec4<bool>(true, true, false, false), -349f), _wgslsmith_f_op_f32(-495f - 407f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-641f, -983f) * vec2<f32>(1454f, 1669f)), Struct_1(u_input.d, vec2<bool>(false, true), vec4<bool>(true, false, false, false), -394f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1476f)))), -1898f));
    global0 = var_0;
    var var_1 = ~reverseBits(~(12033u << (_wgslsmith_sub_u32(var_0, u_input.a) % 32u)));
    var var_2 = vec4<i32>(~(_wgslsmith_clamp_i32(~(-7905i), u_input.b.x, u_input.d) << (_wgslsmith_mult_u32(var_0, ~1u) % 32u)), -u_input.b.x, -u_input.b.x, u_input.d);
    var var_3 = max(vec4<i32>(abs(_wgslsmith_add_i32(~(-5497i), ~u_input.b.x)), -_wgslsmith_add_i32(18954i, 1i), ~(-1i), 11637i), _wgslsmith_add_vec4_i32(vec4<i32>(-var_2.x, 1i, 0i, ~(~12310i)), countOneBits(~_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.x, var_2.x, -10216i, 26849i), vec4<i32>(47703i, 1i, 0i, -89324i), vec4<i32>(var_2.x, u_input.b.x, -12442i, u_input.b.x)))));
    var_3 = firstTrailingBit(max(vec4<i32>(reverseBits(select(var_2.x, 0i, true)), var_3.x, -1i, u_input.d), -(vec4<i32>(u_input.d, 0i, u_input.b.x, var_3.x) | vec4<i32>(0i, u_input.d, -14197i, -2147483647i))));
    var var_4 = _wgslsmith_dot_vec3_i32(select(min(~var_2.xwy, var_2.yww), _wgslsmith_div_vec3_i32(vec3<i32>(0i, var_2.x, var_3.x), vec3<i32>(var_3.x, var_3.x, -1i)), func_2().e.b.x), vec3<i32>(2147483647i, u_input.b.x, _wgslsmith_mod_i32(u_input.d, var_2.x))) < countOneBits(func_4(vec4<i32>(20566i, var_3.x, var_2.x, 1i), -11025i, u_input.c.xx, Struct_2(Struct_1(var_2.x, vec2<bool>(true, true), vec4<bool>(false, false, true, false), -313f), Struct_1(var_2.x, vec2<bool>(false, true), vec4<bool>(false, true, false, true), 2049f), vec4<i32>(-1i, var_2.x, -2147483647i, 21799i), 1309f, Struct_1(3664i, vec2<bool>(false, false), vec4<bool>(false, true, false, false), -2528f))).a >> ((var_0 << (~u_input.c.x % 32u)) % 32u));
    var var_5 = func_2();
    var var_6 = func_4(-countOneBits(vec4<i32>(u_input.b.x, abs(var_5.b.a), min(var_2.x, -13077i), var_5.e.a)), u_input.b.x, _wgslsmith_div_vec2_u32(~(u_input.c.zy | (vec2<u32>(4294967295u, var_0) | u_input.c.zx)), u_input.c.yx), Struct_2(Struct_1(_wgslsmith_clamp_i32(func_4(var_5.c, 32391i, u_input.c.yx, Struct_2(Struct_1(var_3.x, vec2<bool>(true, true), vec4<bool>(var_5.b.b.x, var_5.a.c.x, false, false), 970f), var_5.e, vec4<i32>(var_5.a.a, u_input.d, var_3.x, u_input.b.x), var_5.a.d, Struct_1(34735i, vec2<bool>(false, true), vec4<bool>(var_5.a.b.x, var_5.a.c.x, false, true), -556f))).a, var_3.x, -5418i), vec2<bool>(var_0 > 42995u, true), !select(vec4<bool>(var_5.e.b.x, true, false, var_5.b.c.x), vec4<bool>(true, var_5.a.c.x, var_5.e.b.x, var_5.a.c.x), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.d))), Struct_1(_wgslsmith_mult_i32(0i, 0i) ^ _wgslsmith_mod_i32(-2147483647i, u_input.b.x), var_5.e.c.xw, select(!var_5.a.c, vec4<bool>(var_5.e.b.x, false, false, var_5.b.c.x), var_5.b.c), _wgslsmith_f_op_f32(var_5.b.d - _wgslsmith_f_op_f32(abs(var_5.e.d)))), _wgslsmith_mult_vec4_i32(var_5.c, vec4<i32>(1i | var_5.b.a, var_5.b.a, -1i, -2147483647i)), _wgslsmith_f_op_f32(-var_5.d), Struct_1(var_3.x, var_5.b.b, vec4<bool>(false, false && var_5.b.c.x, true, var_5.b.c.x), 144f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_add_u32(1520u, func_5(u_input.d, -1000f, var_5.e)), _wgslsmith_dot_vec3_u32(vec3<u32>(45512u, 1u, var_0), reverseBits(u_input.c))) >> (countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 4294967295u), ~u_input.c.xx)) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(var_6.d, var_6.d)), var_6.d, var_6.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(950f + var_5.d))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-316f, 2043f, var_5.d, 1423f), _wgslsmith_div_vec4_f32(vec4<f32>(var_6.d, var_6.d, var_5.e.d, var_5.a.d), vec4<f32>(634f, var_6.d, -1944f, 1000f)))))));
}

