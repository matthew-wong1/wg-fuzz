struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_3,
    c: Struct_4,
    d: vec4<f32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(Struct_1(15714u, 0i, vec3<bool>(false, false, true)), vec4<i32>(-27374i, 31724i, 43749i, 0i)), Struct_3(Struct_1(0u, i32(-2147483648), vec3<bool>(false, true, true)), vec4<i32>(0i, 13545i, 29618i, -1i)), Struct_3(Struct_1(1u, -14411i, vec3<bool>(false, true, true)), vec4<i32>(1i, 2147483647i, i32(-2147483648), -1i)), Struct_3(Struct_1(16433u, 3535i, vec3<bool>(true, true, true)), vec4<i32>(25910i, 18310i, 30173i, -1i)), Struct_3(Struct_1(59141u, -52430i, vec3<bool>(false, false, false)), vec4<i32>(i32(-2147483648), 1i, 63749i, 47572i)), Struct_3(Struct_1(76169u, -1i, vec3<bool>(true, true, false)), vec4<i32>(-7167i, 4711i, 1i, -15494i)), Struct_3(Struct_1(20994u, -60929i, vec3<bool>(true, true, false)), vec4<i32>(-11184i, 1i, -72162i, 1i)), Struct_3(Struct_1(17742u, 22573i, vec3<bool>(false, false, false)), vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), -37644i)), Struct_3(Struct_1(22957u, -1i, vec3<bool>(true, true, true)), vec4<i32>(46036i, 2147483647i, -25140i, 2147483647i)), Struct_3(Struct_1(4294967295u, -1i, vec3<bool>(false, false, true)), vec4<i32>(2147483647i, 0i, i32(-2147483648), 2147483647i)), Struct_3(Struct_1(30958u, -29844i, vec3<bool>(true, true, true)), vec4<i32>(-33773i, 2147483647i, i32(-2147483648), 4003i)), Struct_3(Struct_1(38341u, 29493i, vec3<bool>(true, false, false)), vec4<i32>(2147483647i, 1i, -10228i, i32(-2147483648))), Struct_3(Struct_1(1u, -58949i, vec3<bool>(true, true, false)), vec4<i32>(1i, -33862i, -1i, -1i)), Struct_3(Struct_1(19531u, 2147483647i, vec3<bool>(false, true, false)), vec4<i32>(-1i, 48922i, 11628i, 1i)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<f32> {
    var var_0 = vec2<i32>(reverseBits(_wgslsmith_sub_i32(i32(-1i) * -23417i, 0i)), -u_input.d);
    return _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(min(1017f, _wgslsmith_f_op_f32(max(-447f, _wgslsmith_f_op_f32(675f - -1485f))))), -589f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1755f - _wgslsmith_f_op_f32(trunc(459f))) - _wgslsmith_f_op_f32(abs(-542f))))));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_2, arg_3: vec4<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.b)));
    var var_1 = true;
    var_1 = select(true, false, any(vec4<bool>(any(select(vec4<bool>(false, true, true, true), vec4<bool>(arg_2.a.c.x, arg_1, arg_1, true), vec4<bool>(arg_1, arg_1, false, true))), all(select(arg_2.a.c.xy, arg_2.a.c.xz, vec2<bool>(arg_1, false))), any(arg_2.a.c) & true, !(arg_2.b.x != 1026f))));
    var var_2 = arg_2;
    var var_3 = Struct_5(vec3<bool>(true, ~2147483647i >= _wgslsmith_div_i32(arg_2.a.b, 2147483647i), !any(vec2<bool>(arg_2.a.c.x, false))), global0[_wgslsmith_index_u32(arg_2.a.a, 14u)], Struct_4(reverseBits(-vec2<i32>(arg_2.a.b, arg_2.a.b) & vec2<i32>(u_input.d, u_input.b.x)), -270f, Struct_2(arg_2.a, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.b.x, -441f, -367f), vec3<f32>(var_2.b.x, arg_2.b.x, var_2.b.x), arg_2.a.c.x))))), arg_2), vec4<f32>(_wgslsmith_f_op_f32(arg_2.b.x + var_0.x), 132f, _wgslsmith_f_op_f32(trunc(var_2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.b.x * 1461f))))), Struct_4(select(-(u_input.b.yy << (arg_3.xy % vec2<u32>(32u))), vec2<i32>(_wgslsmith_div_i32(0i, -50000i), ~0i), var_2.a.c.yx), _wgslsmith_f_op_f32(ceil(var_2.b.x)), arg_2, Struct_2(arg_2.a, vec3<f32>(-617f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(trunc(256f))))));
    return any(vec2<bool>(all(vec4<bool>(arg_2.a.c.x, true, any(vec3<bool>(true, false, arg_2.a.c.x)), !arg_1)), arg_1));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>) -> Struct_1 {
    global0 = array<Struct_3, 14>();
    let var_0 = Struct_5(vec3<bool>(true, func_4(9024u, arg_0.x, Struct_2(Struct_1(u_input.a.x, 1i, vec3<bool>(false, true, true)), _wgslsmith_f_op_vec3_f32(func_3())), select(vec4<u32>(u_input.a.x, 1u, arg_1.x, arg_1.x), abs(vec4<u32>(4294967295u, arg_1.x, arg_1.x, u_input.a.x)), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3()).x * -1000f) > 1000f), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(~4294967295u, countOneBits(u_input.a.x) << (u_input.a.x % 32u)), ~arg_1.x, u_input.a.x << (~(u_input.a.x & u_input.a.x) % 32u)), 14u)], Struct_4(vec2<i32>(u_input.c, ~countOneBits(2147483647i)), _wgslsmith_f_op_f32(-1768f + -885f), Struct_2(Struct_1(61968u, u_input.d, !vec3<bool>(false, false, arg_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-984f, -112f, 504f))))), Struct_2(Struct_1(_wgslsmith_add_u32(0u, u_input.a.x), _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(-1i, u_input.b.x, u_input.b.x)), vec3<bool>(false, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-427f, -1243f, -1061f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(280f, 2058f, -885f) * vec3<f32>(103f, -1649f, 941f)), select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(false, true, arg_0.x), arg_0.x))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2315f * -279f), -1100f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2574f + -531f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3()).x * _wgslsmith_div_f32(-1197f, 1400f)), 1f))), Struct_4(u_input.b.yy, -202f, Struct_2(Struct_1(0u, u_input.b.x, select(vec3<bool>(false, true, true), vec3<bool>(arg_0.x, arg_0.x, true), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-989f, 421f, -244f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-972f, 321f, -1000f)))), Struct_2(Struct_1(~0u, _wgslsmith_sub_i32(u_input.d, -34024i), select(vec3<bool>(arg_0.x, true, false), vec3<bool>(arg_0.x, false, false), vec3<bool>(true, arg_0.x, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, var_0.e.b, -408f, 1804f))))) + vec4<f32>(456f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec3_f32(func_3()).x, _wgslsmith_f_op_f32(var_0.e.b - _wgslsmith_f_op_f32(var_0.d.x + 747f)))), -1000f, var_0.c.c.b.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c.c.b.zz))));
    global0 = array<Struct_3, 14>();
    return Struct_1(1u, ~(~_wgslsmith_clamp_i32(u_input.d, u_input.b.x, u_input.b.x)) ^ -40923i, select(select(!select(vec3<bool>(var_0.a.x, false, var_0.e.d.a.c.x), vec3<bool>(var_0.b.a.c.x, arg_0.x, true), vec3<bool>(false, true, false)), vec3<bool>(arg_0.x, false, true), true), !(!select(var_0.c.c.a.c, var_0.b.a.c, vec3<bool>(arg_0.x, arg_0.x, true))), !var_0.e.d.a.c));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: f32) -> f32 {
    var var_0 = Struct_5(select(arg_0.a.c, vec3<bool>(arg_0.a.c.x, !(false | arg_1.x), false), !(!select(vec3<bool>(arg_0.a.c.x, arg_1.x, arg_1.x), arg_0.a.c, arg_0.a.c))), global0[_wgslsmith_index_u32(0u, 14u)], Struct_4(~(~u_input.b.xx), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2))), Struct_2(arg_0.a, vec3<f32>(1707f, arg_2, arg_2)), Struct_2(arg_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, -442f, arg_2) * vec3<f32>(1000f, -304f, arg_2))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -458f), _wgslsmith_div_f32(-679f, -1323f), 934f, -435f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-984f, -714f, arg_2, arg_2))))) * vec4<f32>(-118f, arg_2, _wgslsmith_f_op_f32(567f * arg_2), 203f)), Struct_4(vec2<i32>(0i, -countOneBits(u_input.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), Struct_2(Struct_1(max(u_input.a.x, u_input.a.x), -1i, func_2(vec2<bool>(false, false), u_input.a.xy).c), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -1017f, arg_2)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(954f, arg_2, arg_2)))), Struct_2(arg_0.a, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -1020f, arg_2)))))));
    var_0 = Struct_5(arg_0.a.c, arg_0, var_0.e, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-966f, -563f, -949f, 1404f) * vec4<f32>(-1082f, -1028f, 2494f, -817f)) * _wgslsmith_f_op_vec4_f32(select(var_0.d, var_0.d, var_0.a.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(var_0.d))))), Struct_4(vec2<i32>(min(var_0.e.c.a.b | arg_0.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-19879i, u_input.c), var_0.c.a)), 0i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-819f + -169f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.e.d.b.x * -1000f), arg_2, all(vec4<bool>(true, var_0.c.c.a.c.x, var_0.a.x, arg_0.a.c.x))))), var_0.c.d, var_0.e.d));
    var var_1 = Struct_5(!(!(!select(vec3<bool>(arg_0.a.c.x, arg_0.a.c.x, true), arg_0.a.c, arg_0.a.c.x))), arg_0, Struct_4(arg_0.b.xz >> (abs(u_input.a.wz << (vec2<u32>(var_0.c.d.a.a, arg_0.a.a) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(915f)))), var_0.e.d, Struct_2(func_2(select(var_0.a.yz, arg_0.a.c.xz, arg_1.x), vec2<u32>(u_input.a.x, 1u)), var_0.c.c.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(var_0.d + vec4<f32>(1129f, var_0.d.x, arg_2, var_0.e.b)), var_0.d)) - _wgslsmith_f_op_vec4_f32(select(var_0.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.d * var_0.d) + _wgslsmith_f_op_vec4_f32(var_0.d - vec4<f32>(arg_2, arg_2, 886f, -660f))), vec4<bool>(true, false || arg_0.a.c.x, arg_0.a.c.x && var_0.a.x, u_input.a.x == arg_0.a.a)))), var_0.c);
    let var_2 = Struct_4(vec2<i32>(~firstTrailingBit(-var_0.c.c.a.b), min(var_0.b.b.x, abs(1i))), var_0.d.x, var_0.e.c, Struct_2(Struct_1(firstLeadingBit(abs(0u)), u_input.b.x ^ (var_1.c.a.x | var_1.b.b.x), arg_0.a.c), _wgslsmith_f_op_vec3_f32(select(var_1.e.d.b, var_1.e.d.b, func_2(select(var_0.a.zy, var_1.c.d.a.c.xz, true), vec2<u32>(var_0.e.c.a.a, var_1.e.d.a.a)).c))));
    var_1 = Struct_5(func_2(select(vec2<bool>(false | arg_0.a.c.x, arg_0.a.c.x && arg_1.x), func_2(vec2<bool>(true, arg_1.x), select(u_input.a.xw, u_input.a.yz, var_0.e.c.a.c.x)).c.xy, func_2(select(vec2<bool>(arg_0.a.c.x, arg_0.a.c.x), var_2.c.a.c.yy, arg_0.a.c.zy), ~u_input.a.zy).c.yz), vec2<u32>(79868u, ~(~4294967295u))).c, var_1.b, Struct_4(var_2.a, var_2.b, Struct_2(var_1.b.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.d.xzy * var_1.e.c.b))), Struct_2(var_2.c.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.c.b) - _wgslsmith_f_op_vec3_f32(abs(var_1.c.d.b))))), _wgslsmith_f_op_vec4_f32(-var_1.d), Struct_4(var_1.e.a, _wgslsmith_f_op_f32(floor(-1540f)), var_1.c.d, var_2.d));
    return arg_2;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<u32>) -> bool {
    var var_0 = vec2<u32>(27661u | select(u_input.a.x, 11316u, !(arg_1.x < 4294967295u)), abs(min(arg_1.x, u_input.a.x | abs(53663u))));
    var_0 = vec2<u32>(var_0.x, u_input.a.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1032f)), 348f, _wgslsmith_f_op_f32(func_5(Struct_3(func_2(vec2<bool>(true, true), arg_1), vec4<i32>(12294i, u_input.c, 36619i, u_input.b.x) << (u_input.a % vec4<u32>(32u))), select(func_2(vec2<bool>(false, true), vec2<u32>(15029u, var_0.x)).c.xz, vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x))))), -407f));
    var var_2 = vec3<i32>(min(~u_input.d, ~(~u_input.d)), ~u_input.d, countOneBits(-1i));
    var_0 = _wgslsmith_add_vec2_u32(~arg_1, arg_1);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(!(!vec3<bool>(func_1(vec3<f32>(-1000f, 125f, -448f), u_input.a.wx), true, func_1(vec3<f32>(686f, -647f, -573f), vec2<u32>(u_input.a.x, u_input.a.x)))), Struct_3(func_2(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), func_2(vec2<bool>(true, true), u_input.a.zx).c.xz, vec2<bool>(true, true)), vec2<u32>(func_2(vec2<bool>(false, false), vec2<u32>(1u, u_input.a.x)).a, u_input.a.x)), -(~(-vec4<i32>(u_input.d, u_input.c, u_input.b.x, u_input.d)))), Struct_4(abs(u_input.b.yy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(644f)) - -1000f) * _wgslsmith_f_op_f32(f32(-1f) * -502f)), Struct_2(func_2(func_2(vec2<bool>(true, false), u_input.a.yw).c.zy, u_input.a.yy), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1049f, 405f, -2060f)))), Struct_2(func_2(vec2<bool>(true, true), u_input.a.wy >> (vec2<u32>(4294967295u, 20287u) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_3()))))), vec4<f32>(1f, 1f, 1f, 1f), Struct_4(~(~abs(vec2<i32>(-2147483647i, -2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-415f * 902f) + -314f)), Struct_2(func_2(vec2<bool>(true, true), reverseBits(u_input.a.yy)), vec3<f32>(_wgslsmith_f_op_f32(min(1672f, -1076f)), -291f, _wgslsmith_f_op_f32(func_5(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], vec2<bool>(true, true), 721f)))), Struct_2(Struct_1(0u, 19473i, select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(207f, 1000f, 988f)))));
    let var_1 = global0[_wgslsmith_index_u32(13583u, 14u)];
    global0 = array<Struct_3, 14>();
    global0 = array<Struct_3, 14>();
    var_0 = Struct_5(vec3<bool>(var_0.c.c.a.c.x, !var_0.e.d.a.c.x, true), Struct_3(var_0.c.c.a, min(-_wgslsmith_mod_vec4_i32(var_1.b, var_0.b.b), _wgslsmith_mod_vec4_i32(firstTrailingBit(var_0.b.b), var_0.b.b))), Struct_4(vec2<i32>(_wgslsmith_div_i32(min(var_1.b.x, -3628i), 63820i), _wgslsmith_mod_i32(u_input.c, -u_input.d)), _wgslsmith_f_op_f32(select(453f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(705f * -776f) - -729f), var_0.a.x)), Struct_2(Struct_1(~var_0.e.d.a.a, var_1.a.b, var_0.b.a.c), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -501f), _wgslsmith_div_f32(-737f, var_0.c.b), _wgslsmith_f_op_f32(func_5(var_0.b, var_0.b.a.c.zz, 1880f)))), Struct_2(func_2(!var_0.c.c.a.c.yy, ~vec2<u32>(4294967295u, u_input.a.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-135f, 559f, var_0.c.c.b.x), var_0.d.xwy, var_1.a.c.x)), var_0.e.d.b))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_0.d))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(var_0.d - vec4<f32>(var_0.e.c.b.x, -700f, var_0.e.d.b.x, -550f)))), !select(vec4<bool>(true, var_1.a.c.x, var_0.b.a.c.x, false), vec4<bool>(true, var_0.c.d.a.c.x, true, var_1.a.c.x), vec4<bool>(var_0.a.x, true, false, var_0.b.a.c.x)))), _wgslsmith_f_op_vec4_f32(var_0.d * _wgslsmith_f_op_vec4_f32(-var_0.d)))), Struct_4(u_input.b.xy, 1f, Struct_2(var_1.a, var_0.e.d.b), Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(u_input.a.zw, u_input.a.yx), -var_1.a.b, select(vec3<bool>(var_1.a.c.x, true, var_0.a.x), vec3<bool>(false, true, var_0.e.c.a.c.x), true)), var_0.c.c.b)));
    let var_2 = -663f;
    var var_3 = u_input.a.zz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(-25474i, -u_input.d ^ (var_0.b.b.x & (i32(-1i) * -2147483647i))), ~vec2<u32>(firstTrailingBit(var_1.a.a), firstLeadingBit(~0u)));
}

