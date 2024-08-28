struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<f32>,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<u32>, 19>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>) -> vec4<f32> {
    var var_0 = !select(vec3<bool>(!(!global0.b), !(global0.b | false), select(global0.b, !global0.d, true)), select(!vec3<bool>(true, global0.d, false), !select(vec3<bool>(global0.b, global0.d, false), vec3<bool>(false, true, true), true), (4294967295u << (global0.e % 32u)) <= reverseBits(global0.e)), u_input.a.x <= reverseBits(arg_0.x));
    global1 = array<vec3<u32>, 19>();
    var var_1 = global0.c.yz;
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.c.wwz) - _wgslsmith_f_op_vec3_f32(max(global0.c.zwz, vec3<f32>(global0.a, global0.c.x, _wgslsmith_f_op_f32(select(global0.a, global0.a, var_2)))))), _wgslsmith_f_op_vec3_f32(min(global0.c.yxw, global0.c.wxz))));
    return vec4<f32>(1422f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-641f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1556f + var_3.x), _wgslsmith_f_op_f32(-global0.a)))), var_1.x)), _wgslsmith_f_op_f32(156f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-306f, global0.a)))))), -272f);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(680f, global0.a < _wgslsmith_f_op_f32(min(-670f, _wgslsmith_f_op_f32(arg_1.a - 187f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.c - _wgslsmith_f_op_vec4_f32(func_3(select(vec4<u32>(1u, 33636u, 4294967295u, 4294967295u), vec4<u32>(u_input.c, u_input.a.x, 73534u, 0u), vec4<bool>(arg_1.d, true, global0.d, global0.d)))))), u_input.b != -1i, 0u);
    let var_1 = -_wgslsmith_add_i32(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-15385i, -1i, 7840i), vec3<i32>(-1i, u_input.b, arg_0.x)) >> (u_input.a.x % 32u));
    let var_2 = _wgslsmith_div_vec3_i32(max(arg_0.yxz >> (_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a.x, arg_1.e, 10728u)), global1[_wgslsmith_index_u32(28129u, 19u)]) % vec3<u32>(32u)), -(vec3<i32>(arg_0.x, 0i, -1i) ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, arg_0.x, u_input.b), arg_0.ywz, vec3<i32>(arg_0.x, -48213i, -1i)))), ~(-arg_0.zzx));
    var var_3 = _wgslsmith_add_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(35603u, 4294967295u), ~u_input.a), ~reverseBits(14248u)), u_input.a);
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1431f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-682f, 696f) - _wgslsmith_f_op_f32(round(global0.a))), arg_1.c.x))));
    return arg_1;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_vec3_u32(global1[_wgslsmith_index_u32(4294967295u, 19u)], _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.e, 10703u, 2041u) ^ global1[_wgslsmith_index_u32(abs(global0.e), 19u)], _wgslsmith_div_vec3_u32(global1[_wgslsmith_index_u32(35484u, 19u)] >> (global1[_wgslsmith_index_u32(arg_0.e, 19u)] % vec3<u32>(32u)), ~vec3<u32>(19747u, arg_0.e, global0.e))), vec3<u32>(9612u, _wgslsmith_mult_u32(arg_0.e, func_2(vec4<i32>(0i, u_input.d, 47848i, -14364i), arg_0).e), ~1u)), _wgslsmith_add_vec3_u32(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0.e, 25214u), vec3<u32>(u_input.a.x, u_input.c, 4294967295u)), 19u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(23738u, u_input.a.x), 19u)]));
    global1 = array<vec3<u32>, 19>();
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1284f, -1355f, arg_0.d)) - _wgslsmith_f_op_f32(-arg_0.c.x)), 1612f, 1584f) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(arg_0.c.yzx * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, -1077f, global0.a))))));
    var var_2 = ((select(arg_0.b, any(vec2<bool>(global0.d, global0.d)), false) == !global0.b) && false) || (u_input.b >= -1i);
    global0 = arg_0;
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = func_2(min(_wgslsmith_sub_vec4_i32(abs(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.b, -2147483647i, u_input.b), vec4<i32>(1i, -3443i, u_input.d, arg_2))), countOneBits(~vec4<i32>(1i, 1i, u_input.d, 35249i))), ~(~_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -2732i, arg_2, u_input.d), vec4<i32>(u_input.d, u_input.d, arg_2, -2147483647i), vec4<i32>(u_input.b, arg_2, arg_2, -31200i)))), func_2(vec4<i32>(countOneBits(_wgslsmith_add_i32(-1i, -2147483647i)), 1i, _wgslsmith_mult_i32(-10471i, arg_2), 26227i), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) - global0.a), true, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(339f, arg_1.c.x, -719f, global0.c.x) - vec4<f32>(arg_0.a, arg_1.a, -1990f, -1000f)))), arg_2 < _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, -4118i, arg_2, 56829i), vec4<i32>(arg_2, arg_2, arg_2, 1929i)), 63776u)));
    global0 = func_2(-(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.b, 0i, u_input.b), vec4<i32>(-1756i, u_input.d, arg_2, u_input.b)), vec4<i32>(73729i, arg_2, 0i, 0i)) << (max(firstTrailingBit(vec4<u32>(arg_0.e, arg_0.e, var_0.e, u_input.a.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 60178u, 10816u), vec4<u32>(arg_0.e, u_input.c, 0u, 65697u), vec4<u32>(u_input.a.x, var_0.e, 74870u, 4294967295u))) % vec4<u32>(32u))), Struct_1(138f, var_0.b, func_4(Struct_1(arg_1.c.x, global0.b == true, arg_0.c, arg_1.d, ~4294967295u)).c, any(vec2<bool>(var_0.a == global0.a, false)), _wgslsmith_add_u32(_wgslsmith_clamp_u32(global0.e, var_0.e, 47825u), u_input.a.x << (0u % 32u)) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.e, global0.e, 0u, 40669u), vec4<u32>(0u, 124106u, var_0.e, arg_0.e)), firstLeadingBit(vec4<u32>(1u, global0.e, arg_1.e, global0.e))) % 32u)));
    let var_1 = _wgslsmith_mod_i32(2147483647i, max(0i, firstLeadingBit(u_input.d)));
    let var_2 = any(!select(vec3<bool>(true, true, true), vec3<bool>(true, select(arg_0.b, false, arg_0.d), true), (i32(-1i) * -1i) != arg_2));
    global1 = array<vec3<u32>, 19>();
    return arg_0;
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = !all(!select(select(vec4<bool>(arg_2.b, global0.b, arg_2.b, arg_2.b), vec4<bool>(arg_2.b, arg_2.d, global0.d, true), true), !vec4<bool>(false, arg_0.d, global0.d, arg_0.b), u_input.b <= 66842i));
    global0 = arg_2;
    var_0 = arg_0.b;
    global0 = func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 1408f) + _wgslsmith_f_op_f32(arg_0.c.x * 1000f))), all(vec3<bool>(false, global0.b, true)), arg_0.c, any(!(!vec3<bool>(true, false, global0.b))), ~(~_wgslsmith_add_u32(arg_2.e, arg_1))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(556f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.c.x, _wgslsmith_f_op_f32(ceil(-373f)))))), !(!global0.b | true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.c - _wgslsmith_f_op_vec4_f32(-arg_2.c))), arg_2.b, 15677u);
    return arg_2;
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_1 {
    global0 = func_5(func_2(-(~vec4<i32>(0i, u_input.d, u_input.d, u_input.d)) >> (select(vec4<u32>(arg_2.x, 1u, 54292u, arg_0.e), vec4<u32>(32936u, 0u, arg_2.x, 1u), global0.e != u_input.c) % vec4<u32>(32u)), Struct_1(global0.a, arg_1.b, global0.c, arg_0.d, _wgslsmith_clamp_u32(u_input.a.x, arg_1.e, 55572u) & func_6(Struct_1(-195f, arg_0.b, vec4<f32>(-1328f, arg_1.c.x, 953f, -642f), arg_0.b, 71440u), global0.e, Struct_1(arg_0.c.x, false, global0.c, arg_0.d, 26540u)).e)), arg_0, 6417i);
    let var_0 = u_input.b;
    global0 = arg_1;
    var var_1 = ~arg_2.x;
    var var_2 = _wgslsmith_clamp_vec2_i32(~(-(~vec2<i32>(var_0, 1i)) >> (vec2<u32>(10626u, u_input.a.x) % vec2<u32>(32u))), abs(~firstTrailingBit(vec2<i32>(u_input.d, 1i))), (min(vec2<i32>(u_input.b, 2147483647i), -vec2<i32>(-2147483647i, -12812i)) >> (_wgslsmith_mod_vec2_u32(u_input.a << (arg_2.xx % vec2<u32>(32u)), vec2<u32>(20706u, 102362u) | arg_2.xz) % vec2<u32>(32u))) << (arg_2.xy % vec2<u32>(32u)));
    return Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(global0.c.x)))), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(982f, _wgslsmith_div_f32(1013f, 1711f), -1121f, 467f)))), true, func_4(func_4(arg_1)).e);
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: f32) -> Struct_1 {
    global1 = array<vec3<u32>, 19>();
    var var_0 = ~(~(~(~(~u_input.a))));
    global0 = func_7(func_6(Struct_1(-501f, arg_1 >= _wgslsmith_f_op_f32(-arg_1), global0.c, true, u_input.c), ~(~global0.e), func_5(func_4(func_2(vec4<i32>(u_input.d, -1i, -1i, 2147483647i), Struct_1(-615f, global0.d, vec4<f32>(arg_1, global0.c.x, arg_2, arg_1), global0.b, var_0.x))), Struct_1(_wgslsmith_f_op_f32(round(arg_2)), !global0.d, global0.c, !global0.d, arg_0), 0i)), Struct_1(_wgslsmith_f_op_f32(-global0.c.x), select(!func_6(Struct_1(arg_2, global0.d, global0.c, false, 4294967295u), 1u, Struct_1(arg_1, global0.d, vec4<f32>(-1545f, -223f, arg_1, 885f), false, 4863u)).b, false, true), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(60475u, 4294967295u, 0u, global0.e))))), vec4<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(f32(-1f) * -2105f), _wgslsmith_f_op_f32(-arg_1), global0.c.x))), !global0.b, u_input.c), global1[_wgslsmith_index_u32(u_input.a.x, 19u)]);
    let var_1 = -1i;
    return func_5(Struct_1(arg_2, global0.b, _wgslsmith_f_op_vec4_f32(global0.c + _wgslsmith_f_op_vec4_f32(-func_6(Struct_1(global0.a, true, vec4<f32>(-933f, arg_2, arg_2, 2127f), false, arg_0), u_input.a.x, Struct_1(-1000f, global0.b, vec4<f32>(arg_1, 2048f, arg_2, -613f), global0.d, global0.e)).c)), false || func_2(firstLeadingBit(vec4<i32>(var_1, var_1, -1i, -9431i)), func_7(Struct_1(1000f, global0.b, vec4<f32>(669f, -896f, -551f, -365f), global0.d, var_0.x), Struct_1(arg_1, global0.b, global0.c, global0.d, 54479u), global1[_wgslsmith_index_u32(1u, 19u)])).b, ~arg_0), func_7(func_6(func_7(func_5(Struct_1(global0.c.x, false, global0.c, global0.d, 56233u), Struct_1(arg_2, global0.d, vec4<f32>(497f, 901f, arg_1, -330f), false, 4294967295u), 25376i), Struct_1(global0.c.x, global0.d, global0.c, true, arg_0), abs(global1[_wgslsmith_index_u32(0u, 19u)])), u_input.c >> (1u % 32u), Struct_1(arg_2, false, vec4<f32>(1551f, 1027f, arg_1, 1135f), !global0.d, func_2(vec4<i32>(1i, -5308i, var_1, -8528i), Struct_1(arg_1, global0.b, global0.c, true, var_0.x)).e)), func_5(func_2(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, var_1, var_1, 14100i), vec4<i32>(-2147483647i, var_1, 0i, u_input.d)), func_4(Struct_1(1733f, true, global0.c, false, 4294967295u))), func_5(func_4(Struct_1(-113f, global0.b, global0.c, false, 28112u)), Struct_1(1399f, global0.d, global0.c, false, 65667u), select(u_input.d, 0i, true)), var_1), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0, ~var_0.x), 19u)] & vec3<u32>(countOneBits(arg_0), global0.e | 0u, 0u)), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(-594f, any(select(select(vec3<bool>(global0.d, false, true), !vec3<bool>(global0.b, global0.d, global0.b), true), vec3<bool>(true, global0.d, select(false, true, global0.d)), !select(false, true, global0.b))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.c.x, -1000f, 341f, _wgslsmith_f_op_f32(f32(-1f) * -1210f)), vec4<f32>(_wgslsmith_f_op_f32(global0.c.x + global0.c.x), _wgslsmith_f_op_f32(abs(1698f)), _wgslsmith_f_op_f32(global0.c.x - global0.c.x), _wgslsmith_f_op_f32(ceil(global0.c.x))), all(vec4<bool>(global0.b, false, global0.b, true)))))), !global0.b, 4294967295u);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -553f))), all(!(!select(vec2<bool>(global0.b, true), vec2<bool>(false, false), vec2<bool>(false, true)))), global0.c, ~global0.e >= global0.e, 0u);
    var var_1 = vec3<f32>(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) * _wgslsmith_f_op_f32(-var_0.c.x)), var_0.a);
    let var_2 = var_0;
    let var_3 = !all(select(select(vec3<bool>(false, var_0.b, var_2.b), vec3<bool>(var_0.d, global0.b, var_0.d), vec3<bool>(var_2.b, global0.b, var_2.b)), select(vec3<bool>(true, false, var_0.b), vec3<bool>(var_0.b, false, global0.b), false), vec3<bool>(false, var_2.b, true))) || global0.d;
    global0 = func_1(~4294967295u, var_2.a, var_2.c.x);
    let var_4 = firstTrailingBit(14244i) & -1i;
    let var_5 = func_1(abs(34587u), _wgslsmith_f_op_f32(var_2.a * global0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(func_6(var_2, 1u, var_0).e, ~1u, ~4294967295u, reverseBits(18893u)))).x));
    var var_6 = var_0.e;
    let x = u_input.a;
    s_output = StorageBuffer(var_5.c.zww, 62135u, _wgslsmith_f_op_f32(-var_5.a));
}

