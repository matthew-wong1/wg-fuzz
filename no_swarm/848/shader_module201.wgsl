struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: f32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-29113i, -3244i, i32(-2147483648));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-397f, 532f, 1000f, -317f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1217f, 2092f, 1920f, 1926f) + vec4<f32>(-1000f, -189f, 282f, -1326f))))), -global0.x <= u_input.d.x, ~(u_input.d.x << (~4294967295u % 32u))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -362f), _wgslsmith_f_op_f32(round(817f)), 911f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1611f, -861f, 925f) * _wgslsmith_div_vec3_f32(vec3<f32>(1000f, 937f, -291f), vec3<f32>(-781f, 274f, 1381f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(465f, -881f, -800f)))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1393f))))), Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(460f, 170f, 1085f, 328f) * vec4<f32>(-171f, -727f, 1550f, -899f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, -599f, -981f, -197f)))), vec4<f32>(_wgslsmith_div_f32(-1693f, 1885f), _wgslsmith_f_op_f32(-890f - 1373f), _wgslsmith_f_op_f32(f32(-1f) * -1620f), _wgslsmith_f_op_f32(-706f * -459f)))), any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))), 32031i), reverseBits(1827i));
    let var_1 = vec4<bool>(select(false, !any(select(vec4<bool>(true, var_0.a.b, var_0.a.b, var_0.a.b), vec4<bool>(var_0.a.b, var_0.a.b, var_0.a.b, false), vec4<bool>(var_0.a.b, var_0.a.b, true, var_0.a.b))), true), var_0.d.b, true, false);
    var_0 = Struct_2(var_0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_0.c)))), _wgslsmith_f_op_f32(round(1990f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -347f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-874f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.x))), var_0.d, max(~(-7064i), ~global0.x << (~4294967295u % 32u)));
    var_0 = Struct_2(Struct_1(var_0.a.a, var_0.d.b, 5814i), var_0.b, 1398f, var_0.a, ~abs(-_wgslsmith_mult_i32(32133i, 0i)));
    var var_2 = any(vec2<bool>(all(!(!vec3<bool>(true, false, var_0.a.b))), false));
    return (_wgslsmith_mod_u32(reverseBits(u_input.a.x), u_input.b) >> (67433u % 32u)) ^ u_input.a.x;
}

fn func_4(arg_0: u32, arg_1: vec3<i32>) -> vec2<bool> {
    global0 = reverseBits(-vec3<i32>(firstTrailingBit(2147483647i), reverseBits(u_input.d.x), _wgslsmith_div_i32(min(global0.x, global0.x), 2147483647i)));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-307f)), _wgslsmith_f_op_f32(-762f + 981f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-528f, -1619f) * 929f)), _wgslsmith_f_op_f32(-1f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(987f, 1000f))))), -1846f));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(129f, -573f, 399f, -413f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(363f, 1795f, var_0, 318f) * vec4<f32>(var_0, 1000f, 129f, -260f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(364f, -490f, var_0, 2070f), vec4<f32>(var_0, 539f, -597f, 1006f)))), all(vec3<bool>(true, true, true)), 2147483647i), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1042f, var_0, var_0, -749f), vec4<f32>(1042f, var_0, var_0, -372f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0, 317f, var_0, var_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, var_0)) - vec4<f32>(var_0, var_0, -487f, var_0)), true)), -1476f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0)) + -798f), arg_1.x), _wgslsmith_div_u32(~arg_0 ^ abs(u_input.a.x), 56497u) << (~(arg_0 << (~1u % 32u)) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(f32(-1f) * -1634f))), ~abs(u_input.a.zw));
    var var_2 = var_1.b.b;
    let var_3 = any(select(!vec2<bool>(!var_1.a.b, all(vec3<bool>(var_1.b.b, var_1.b.b, var_1.a.b))), vec2<bool>(var_1.a.b, _wgslsmith_mult_u32(u_input.c, 47340u) > _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 4294967295u, 4294967295u), u_input.a.yxy)), vec2<bool>(!(var_1.a.b | var_1.a.b), var_0 == var_0)));
    return select(select(select(select(!vec2<bool>(var_1.a.b, var_1.a.b), !vec2<bool>(var_1.b.b, true), select(vec2<bool>(var_1.b.b, true), vec2<bool>(var_1.b.b, var_3), var_1.a.b)), select(!vec2<bool>(true, var_3), vec2<bool>(false, true), false), any(select(vec3<bool>(false, true, false), vec3<bool>(true, var_1.b.b, var_3), vec3<bool>(true, var_3, var_1.a.b)))), vec2<bool>(select(var_1.b.b, var_1.b.b, arg_0 == arg_0), false), !(var_0 <= _wgslsmith_f_op_f32(1453f * -1018f))), !(!select(select(vec2<bool>(false, var_3), vec2<bool>(true, var_3), false), select(vec2<bool>(true, var_3), vec2<bool>(var_3, false), var_1.b.b), all(vec3<bool>(var_1.b.b, var_3, var_3)))), vec2<bool>(true, true));
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: vec2<u32>, arg_3: i32) -> Struct_3 {
    global0 = arg_0.xxy;
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-348f, 232f, true)), _wgslsmith_f_op_f32(ceil(-2189f)), _wgslsmith_f_op_f32(f32(-1f) * -482f), 857f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-2026f, -1884f, _wgslsmith_f_op_f32(1047f + 403f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1150f, -1391f, -242f, 1372f), vec4<f32>(1082f, 891f, 807f, 751f), vec4<bool>(true, true, false, true)))))), true, -14772i);
    var var_1 = select(select(!(!vec2<bool>(false, var_0.b)), func_4(countOneBits(func_3()), ~_wgslsmith_add_vec3_i32(arg_0.wyx, vec3<i32>(-9428i, arg_3, arg_3))), select(func_4(_wgslsmith_mult_u32(arg_2.x, 8484u), abs(vec3<i32>(2147483647i, 0i, u_input.d.x))), vec2<bool>(func_4(49225u, vec3<i32>(global0.x, arg_1, 1i)).x, var_0.b), var_0.b)), select(vec2<bool>(true && var_0.b, var_0.b), vec2<bool>(true, !(var_0.b != true)), select(select(vec2<bool>(true, true), !vec2<bool>(var_0.b, var_0.b), vec2<bool>(true, true)), vec2<bool>(true, any(vec3<bool>(var_0.b, var_0.b, var_0.b))), select(vec2<bool>(true, var_0.b), !vec2<bool>(true, var_0.b), !vec2<bool>(true, var_0.b)))), vec2<bool>(var_0.b, var_0.b));
    let var_2 = ~(~u_input.d.x);
    var var_3 = ~(-2147483647i);
    return Struct_3(var_0, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-443f, _wgslsmith_f_op_f32(select(-633f, var_0.a.x, false)), _wgslsmith_f_op_f32(f32(-1f) * -1206f), _wgslsmith_f_op_f32(120f - var_0.a.x))), true, min(u_input.d.x, reverseBits(34710i))), ~11374u, _wgslsmith_f_op_f32(var_0.a.x - var_0.a.x), vec2<u32>(arg_2.x, _wgslsmith_div_u32(4294967295u, 89340u)));
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    let var_0 = 110791u;
    global0 = ~vec3<i32>(firstTrailingBit(-max(-18583i, global0.x)), global0.x, 57877i);
    let var_1 = arg_0.a.b;
    var var_2 = ~(u_input.a.x << (func_3() % 32u));
    global0 = _wgslsmith_add_vec3_i32(vec3<i32>(-countOneBits(-54503i) << (u_input.a.x % 32u), _wgslsmith_dot_vec2_i32(global0.zy, global0.zz), u_input.d.x), abs(min(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.b.c, -25938i, u_input.d.x), vec3<i32>(-2147483647i, -68947i, u_input.d.x)), vec3<i32>(-18555i, -1i, arg_0.b.c)), select(-vec3<i32>(u_input.d.x, arg_0.a.c, u_input.d.x), vec3<i32>(u_input.d.x, u_input.d.x, arg_0.b.c), true))));
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.a.x, _wgslsmith_div_f32(arg_0.a.a.x, 591f))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1190f + _wgslsmith_f_op_f32(-arg_0.a.a.x))), -1481f), any(!(!select(vec4<bool>(arg_0.b.b, arg_0.b.b, var_1, true), vec4<bool>(arg_0.a.b, arg_0.a.b, true, false), var_1))), ~arg_0.a.c);
}

fn func_1() -> vec2<bool> {
    var var_0 = Struct_3(func_5(func_2(-vec4<i32>(u_input.d.x, global0.x, u_input.d.x, 2147483647i), reverseBits(_wgslsmith_add_i32(u_input.d.x, -28898i)), ~u_input.a.wz, global0.x)), func_2(reverseBits(vec4<i32>(22982i, func_2(vec4<i32>(-735i, 1i, 0i, -55340i), u_input.d.x, vec2<u32>(41470u, 7623u), global0.x).b.c, 2147483647i, -19096i)), -((46149i >> (u_input.c % 32u)) << (u_input.b % 32u)), max(vec2<u32>(u_input.c, 1u), vec2<u32>(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, u_input.c))), -47967i).b, 1u, 1809f, vec2<u32>(max(u_input.a.x, ~1u), _wgslsmith_div_u32(~(~4294967295u), _wgslsmith_mod_u32(u_input.a.x | u_input.c, u_input.c | 4294967295u))));
    var_0 = Struct_3(Struct_1(var_0.a.a, all(select(vec2<bool>(true, var_0.b.b), vec2<bool>(false, var_0.a.b), false)) == true, _wgslsmith_add_i32(1i, _wgslsmith_mod_i32(var_0.b.c, 1i) << (_wgslsmith_mod_u32(5204u, 4294967295u) % 32u))), func_5(func_2(min(vec4<i32>(1i, 0i, global0.x, global0.x), -vec4<i32>(var_0.b.c, -70730i, global0.x, global0.x)), 1i, u_input.a.yy, _wgslsmith_dot_vec3_i32(~vec3<i32>(83942i, 38161i, -5541i), max(vec3<i32>(2147483647i, u_input.d.x, var_0.b.c), vec3<i32>(var_0.a.c, u_input.d.x, u_input.d.x))))), var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.b.a.x, var_0.d)) - 675f))), ~var_0.e);
    var var_1 = -1i;
    var_0 = Struct_3(func_2(~(~(vec4<i32>(1i, u_input.d.x, var_0.b.c, -43179i) ^ vec4<i32>(27668i, var_0.b.c, var_0.b.c, 1224i))), -58824i, u_input.a.zx, -26008i).a, func_2(vec4<i32>(-23019i << (~u_input.b % 32u), var_0.a.c, -func_5(Struct_3(Struct_1(vec4<f32>(var_0.b.a.x, -1561f, 1487f, 276f), true, global0.x), var_0.b, var_0.c, var_0.b.a.x, vec2<u32>(var_0.e.x, 10136u))).c, _wgslsmith_mod_i32(_wgslsmith_div_i32(-812i, 1i), -var_0.a.c)), 71685i, ~var_0.e, 80880i).b, 1u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.b.a.x, _wgslsmith_f_op_f32(min(1f, var_0.d)))), _wgslsmith_f_op_f32(step(-662f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -558f))))), reverseBits(_wgslsmith_add_vec2_u32(u_input.a.yx, vec2<u32>(_wgslsmith_mult_u32(1u, 38212u), u_input.c))));
    var_0 = func_2(vec4<i32>(u_input.d.x, u_input.d.x, _wgslsmith_add_i32(func_5(Struct_3(var_0.b, Struct_1(var_0.b.a, var_0.a.b, 9570i), var_0.e.x, var_0.d, vec2<u32>(u_input.a.x, 1u))).c, -1i) | countOneBits(~0i), ~(-1i)), var_0.a.c, func_2(firstLeadingBit(vec4<i32>(-1i, global0.x, -14435i, global0.x) << (vec4<u32>(var_0.e.x, u_input.c, 0u, u_input.a.x) % vec4<u32>(32u))), global0.x, ~vec2<u32>(4294967295u, var_0.e.x), var_0.a.c).e & u_input.a.zz, -1i);
    return vec2<bool>(any(vec2<bool>(!var_0.b.b, var_0.e.x < 14286u)) || var_0.a.b, var_0.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = abs(~_wgslsmith_add_vec3_i32(-vec3<i32>(-891i, 68333i, 1i), (vec3<i32>(global0.x, 2147483647i, 16432i) & vec3<i32>(-17914i, global0.x, global0.x)) & -vec3<i32>(-54061i, u_input.d.x, u_input.d.x)));
    var var_0 = all(select(func_1(), vec2<bool>(true, _wgslsmith_dot_vec2_i32(global0.xx, vec2<i32>(-1i, global0.x)) <= global0.x), true));
    let var_1 = Struct_2(Struct_1(func_5(Struct_3(func_5(Struct_3(Struct_1(vec4<f32>(181f, 101f, -409f, 1000f), false, -2147483647i), Struct_1(vec4<f32>(-480f, -286f, -1156f, 1787f), false, global0.x), 1u, 325f, u_input.a.zz)), Struct_1(vec4<f32>(1000f, 1580f, -1140f, -974f), true, 2147483647i), firstTrailingBit(u_input.b), _wgslsmith_f_op_f32(f32(-1f) * -811f), vec2<u32>(1u, u_input.a.x))).a, any(vec4<bool>(true, true, true, true)), -1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), vec3<f32>(-1481f, func_2(vec4<i32>(u_input.d.x, -29419i, 48530i, global0.x), -40075i, u_input.a.wy, global0.x).b.a.x, _wgslsmith_div_f32(293f, 1069f)), vec3<bool>(func_4(38124u, vec3<i32>(0i, u_input.d.x, 8486i)).x, false, true))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-396f, 1003f))), -126f, func_5(func_2(vec4<i32>(1i, u_input.d.x, -23816i, -2147483647i), 13715i, vec2<u32>(u_input.a.x, u_input.c), global0.x)).a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1683f, 1000f) * -397f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1327f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1821f))))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(477f, -382f, 1021f, 613f), vec4<f32>(477f, 1071f, -1383f, -854f))) + vec4<f32>(_wgslsmith_f_op_f32(-478f * 521f), _wgslsmith_f_op_f32(-106f * 2127f), _wgslsmith_div_f32(-670f, 1690f), -646f)), any(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)))), ~_wgslsmith_div_i32(global0.x, select(u_input.d.x, u_input.d.x, true))), u_input.d.x);
    var_0 = var_1.a.b;
    var var_2 = any(vec2<bool>(!(!all(vec3<bool>(var_1.a.b, true, true))), true));
    let var_3 = 11461i;
    global0 = vec3<i32>(_wgslsmith_mult_i32(var_3, 59220i) ^ var_1.a.c, _wgslsmith_clamp_i32(-1i, ~(~(2147483647i << (0u % 32u))), u_input.d.x), var_1.a.c);
    let var_4 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), _wgslsmith_clamp_vec2_u32(u_input.a.xw, ~(~u_input.a.zw), vec2<u32>(4294967295u, u_input.b)), 33976u, -1i);
}

