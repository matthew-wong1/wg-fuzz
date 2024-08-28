struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec4<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(vec3<u32>(0u, 0u, 0u), 1u, vec4<i32>(0i, 387i, 2147483647i, 2147483647i), Struct_1(vec4<bool>(true, false, false, false), 1499f, 388f, i32(-2147483648))), Struct_3(vec3<u32>(4294967295u, 0u, 27118u), 4294967295u, vec4<i32>(i32(-2147483648), 51720i, 33089i, 1i), Struct_1(vec4<bool>(false, false, true, false), 1000f, 1225f, 1i)), Struct_3(vec3<u32>(0u, 12682u, 0u), 35230u, vec4<i32>(43267i, 0i, i32(-2147483648), 2147483647i), Struct_1(vec4<bool>(false, false, true, true), -406f, 1722f, -97443i)), Struct_3(vec3<u32>(4103u, 4294967295u, 4767u), 17137u, vec4<i32>(2147483647i, 30951i, 0i, 2147483647i), Struct_1(vec4<bool>(false, true, true, false), 823f, -1000f, -1i)), Struct_3(vec3<u32>(4294967295u, 41810u, 4294967295u), 9797u, vec4<i32>(-22184i, 2147483647i, 23151i, -1i), Struct_1(vec4<bool>(false, false, true, false), 1852f, 633f, 18726i)), Struct_3(vec3<u32>(41371u, 47635u, 20840u), 46570u, vec4<i32>(16431i, -26816i, 6719i, 15868i), Struct_1(vec4<bool>(true, true, false, true), -813f, -433f, 0i)), Struct_3(vec3<u32>(4294967295u, 1u, 1u), 0u, vec4<i32>(19500i, 0i, 2147483647i, i32(-2147483648)), Struct_1(vec4<bool>(true, true, true, true), -213f, -305f, 1697i)), Struct_3(vec3<u32>(1u, 1u, 0u), 10081u, vec4<i32>(0i, i32(-2147483648), -1i, -30241i), Struct_1(vec4<bool>(false, false, false, false), -743f, 647f, 2147483647i)), Struct_3(vec3<u32>(29469u, 1u, 0u), 7010u, vec4<i32>(0i, -1i, 90723i, 27385i), Struct_1(vec4<bool>(true, true, true, false), 2003f, 1285f, -13809i)), Struct_3(vec3<u32>(63937u, 11470u, 1u), 1u, vec4<i32>(-13882i, 71053i, -45590i, i32(-2147483648)), Struct_1(vec4<bool>(false, true, false, true), 343f, 514f, 44542i)), Struct_3(vec3<u32>(0u, 4294967295u, 4294967295u), 0u, vec4<i32>(i32(-2147483648), 1340i, 23141i, -18329i), Struct_1(vec4<bool>(true, true, true, true), 376f, 1201f, 8452i)), Struct_3(vec3<u32>(15021u, 57276u, 4294967295u), 16689u, vec4<i32>(33797i, 2147483647i, i32(-2147483648), 0i), Struct_1(vec4<bool>(true, true, false, true), 1314f, 1000f, i32(-2147483648))), Struct_3(vec3<u32>(0u, 4294967295u, 1u), 17176u, vec4<i32>(84703i, 46384i, 22334i, 1117i), Struct_1(vec4<bool>(true, true, true, true), -758f, -693f, 0i)), Struct_3(vec3<u32>(2196u, 9310u, 0u), 28118u, vec4<i32>(i32(-2147483648), 19108i, -13787i, 28885i), Struct_1(vec4<bool>(false, false, false, false), -216f, -1000f, 18268i)), Struct_3(vec3<u32>(107356u, 48746u, 22623u), 4294967295u, vec4<i32>(-47685i, 8772i, 1i, 21598i), Struct_1(vec4<bool>(true, true, true, false), 1731f, 2224f, -25986i)), Struct_3(vec3<u32>(0u, 22409u, 4294967295u), 1648u, vec4<i32>(0i, 20711i, -22680i, -1i), Struct_1(vec4<bool>(false, false, false, false), -1000f, 298f, -17680i)));

var<private> global1: bool;

var<private> global2: Struct_2 = Struct_2(-15707i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>) -> vec3<f32> {
    let var_0 = max(max(u_input.a.zyy, ((u_input.a.yxw >> (vec3<u32>(26221u, 16330u, arg_0.x) % vec3<u32>(32u))) << (_wgslsmith_sub_vec3_u32(arg_0.zxx, arg_0.xyw) % vec3<u32>(32u))) ^ vec3<i32>(global2.a, ~u_input.a.x, global2.a)), vec3<i32>(u_input.b, _wgslsmith_sub_i32(-global2.a & -66567i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), ~u_input.b)), 77566i));
    let var_1 = abs(-1i);
    global0 = array<Struct_3, 16>();
    var var_2 = false;
    var var_3 = vec3<bool>(true, !all(vec3<bool>(true, select(true, false, false), true)), select(true, 1161f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1564f)) - _wgslsmith_f_op_f32(f32(-1f) * -1988f)), true));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1791f)))), _wgslsmith_f_op_f32(-143f * -791f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(435f, 1464f)), _wgslsmith_f_op_f32(f32(-1f) * -701f))), -323f))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: u32, arg_3: vec2<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, 157f, -112f, _wgslsmith_f_op_f32(arg_1.b + -931f)));
    var var_1 = _wgslsmith_f_op_f32(trunc(arg_1.b));
    var var_2 = ~_wgslsmith_add_vec4_u32(~vec4<u32>(~858u, arg_2, arg_2 & u_input.c, 4294967295u), reverseBits(~(~vec4<u32>(arg_2, 5332u, u_input.c, arg_2))));
    var var_3 = ~(~1i | ~((u_input.a.x | arg_3.x) | _wgslsmith_dot_vec3_i32(vec3<i32>(12689i, -1i, 2147483647i), vec3<i32>(10306i, arg_1.d, -2147483647i))));
    var_3 = arg_3.x;
    return _wgslsmith_mult_u32(countOneBits(~arg_2) ^ u_input.c, firstLeadingBit(arg_2));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-789f)) - -977f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(615f, -541f)))))));
    var var_1 = !(true | any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var var_2 = Struct_2(global2.a);
    global1 = !(!all(vec2<bool>(true, true))) && false;
    var var_3 = (i32(-1i) * -(~(i32(-1i) * -19366i))) << (func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(u_input.c, 5180u, u_input.c, u_input.c))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(616f, -1097f, 600f))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-643f, 315f, 153f) - vec3<f32>(-425f, -485f, 1490f)), _wgslsmith_div_vec3_f32(vec3<f32>(-192f, -1000f, 3406f), vec3<f32>(1626f, -1802f, -1751f))))), Struct_1(select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), false), true), 1186f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-369f, 1348f)) + _wgslsmith_f_op_f32(ceil(-1627f))), max(3962i >> (0u % 32u), _wgslsmith_mult_i32(global2.a, 36846i))), _wgslsmith_mod_u32(48930u << (select(u_input.c, u_input.c, false) % 32u), ~(~u_input.c)), reverseBits(vec2<i32>(u_input.b, 24123i ^ global2.a))) % 32u);
    return Struct_1(vec4<bool>((~9989i == global2.a) || all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false)), !(!all(vec4<bool>(true, true, true, true))), true, !(u_input.c <= u_input.c) && true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1908f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(425f))))))), 1294f, var_2.a);
}

fn func_5(arg_0: Struct_1) -> f32 {
    global0 = array<Struct_3, 16>();
    var var_0 = !vec2<bool>(arg_0.a.x, !(!(!arg_0.a.x)));
    let var_1 = !select(select(arg_0.a, vec4<bool>(!arg_0.a.x, !arg_0.a.x, arg_0.a.x, false), var_0.x), select(select(func_2().a, func_2().a, vec4<bool>(arg_0.a.x, var_0.x, true, true)), vec4<bool>(150f == arg_0.b, all(arg_0.a.yw), !var_0.x, false), arg_0.a.x), all(select(select(arg_0.a.wy, arg_0.a.xz, vec2<bool>(false, arg_0.a.x)), !arg_0.a.wy, !var_0.x)));
    var var_2 = Struct_3(vec3<u32>(55734u, ~(~(~316u)), u_input.c), ~reverseBits(~firstLeadingBit(5414u)), ~(-((u_input.a & u_input.a) >> (~vec4<u32>(5235u, 29184u, 40361u, 21113u) % vec4<u32>(32u)))), func_2());
    var var_3 = _wgslsmith_f_op_f32(-var_2.d.c);
    return arg_0.c;
}

fn func_6(arg_0: f32, arg_1: f32, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_2(u_input.b);
    global2 = var_0;
    var var_1 = countOneBits(u_input.c);
    let var_2 = u_input.c;
    global1 = true;
    return func_2();
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> Struct_3 {
    global1 = !arg_1.x;
    global2 = Struct_2(_wgslsmith_add_i32(reverseBits(select(_wgslsmith_mult_i32(u_input.b, global2.a), ~global2.a, arg_1.x)), -14012i));
    var var_0 = Struct_1(select(vec4<bool>(all(vec4<bool>(arg_1.x, true, false, false)), true, true, arg_1.x), !select(vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), !vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x), !vec4<bool>(true, arg_1.x, true, arg_1.x)), !vec4<bool>(arg_1.x, arg_1.x, !arg_1.x, arg_1.x)), _wgslsmith_f_op_f32(round(-693f)), 1511f, select(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(1i, u_input.a.x, global2.a), -u_input.a.wzz), (vec3<i32>(317i, u_input.a.x, 46169i) << (vec3<u32>(u_input.c, 1u, arg_0) % vec3<u32>(32u))) >> (reverseBits(vec3<u32>(1u, u_input.c, 1u)) % vec3<u32>(32u))), ~((global2.a >> (arg_0 % 32u)) ^ global2.a), arg_1.x || arg_1.x));
    var_0 = func_6(var_0.c, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_2())))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.c)), _wgslsmith_f_op_f32(-1636f * -1069f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-971f + 2115f) * _wgslsmith_f_op_f32(-var_0.b)), var_0.c)), _wgslsmith_f_op_f32(var_0.c + -752f)));
    var var_1 = ~(vec2<u32>(arg_0 & u_input.c, ~u_input.c) ^ vec2<u32>(u_input.c, (u_input.c << (54752u % 32u)) >> ((arg_0 & arg_0) % 32u)));
    return global0[_wgslsmith_index_u32(u_input.c, 16u)];
}

fn func_7(arg_0: Struct_3) -> Struct_2 {
    var var_0 = arg_0.d;
    var var_1 = _wgslsmith_f_op_f32(-arg_0.d.c);
    global0 = array<Struct_3, 16>();
    var_1 = arg_0.d.c;
    var_0 = func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 619f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.d.b, -384f, _wgslsmith_f_op_f32(func_5(Struct_1(vec4<bool>(true, arg_0.d.a.x, false, var_0.a.x), arg_0.d.b, var_0.b, -112421i)))), vec3<f32>(_wgslsmith_div_f32(var_0.b, -496f), arg_0.d.b, _wgslsmith_f_op_f32(select(var_0.c, arg_0.d.c, true)))))));
    return Struct_2(0i);
}

fn func_8(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    let var_0 = abs((_wgslsmith_div_vec2_i32(abs(u_input.a.xz), _wgslsmith_sub_vec2_i32(u_input.a.wx, vec2<i32>(2147483647i, u_input.a.x))) ^ u_input.a.wx) >> (vec2<u32>(67595u, _wgslsmith_mult_u32(0u, u_input.c)) % vec2<u32>(32u)));
    var var_1 = min(abs(~vec3<u32>(u_input.c, ~0u, ~u_input.c)), max(vec3<u32>(u_input.c, _wgslsmith_add_u32(53990u, _wgslsmith_sub_u32(u_input.c, 166u)), ~1u), ~vec3<u32>(_wgslsmith_div_u32(u_input.c, u_input.c), firstLeadingBit(1u), u_input.c)));
    var var_2 = ~1u;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -680f);
    global1 = true;
    return func_1(u_input.c, vec2<bool>(false, !(arg_2 != true))).d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_8(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * vec2<f32>(513f, _wgslsmith_f_op_f32(-1868f - -1305f)))), func_7(func_1(46761u, vec2<bool>(true, true))), true);
    global1 = !var_0.a.x;
    let var_1 = _wgslsmith_div_vec2_u32(reverseBits(~(select(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(0u, u_input.c), var_0.a.zz) & vec2<u32>(12686u, u_input.c))), _wgslsmith_div_vec2_u32(((vec2<u32>(u_input.c, 44543u) ^ vec2<u32>(u_input.c, u_input.c)) ^ (vec2<u32>(u_input.c, 0u) << (vec2<u32>(u_input.c, 53485u) % vec2<u32>(32u)))) << (min(vec2<u32>(26022u, u_input.c), select(vec2<u32>(51554u, 40122u), vec2<u32>(u_input.c, 0u), false)) % vec2<u32>(32u)), firstTrailingBit(_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(0u, u_input.c)), vec2<u32>(u_input.c, 76097u), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 1u), vec2<u32>(u_input.c, 0u), vec2<u32>(35590u, 1u))))));
    let var_2 = u_input.b;
    global2 = Struct_2(-2147483647i);
    let var_3 = var_1;
    var var_4 = func_1(1u, vec2<bool>(var_0.a.x, -_wgslsmith_dot_vec2_i32(u_input.a.xz, u_input.a.wz) >= var_0.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1227f, 1289f)), var_4.d.c)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(627f, var_4.d.b)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.d.b)), func_8(vec2<f32>(var_4.d.b, var_4.d.c), Struct_2(var_2), true).b)), vec3<i32>(_wgslsmith_clamp_i32(~(-23888i), i32(-1i) * -var_2, -31639i), firstLeadingBit(select(_wgslsmith_dot_vec2_i32(vec2<i32>(4930i, 1i), u_input.a.zz), 12185i, var_4.d.a.x && var_0.a.x)), 2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, var_0.b, var_0.b, var_0.b) * vec4<f32>(var_4.d.b, var_0.b, var_4.d.b, var_4.d.c))) - vec4<f32>(-1236f, var_4.d.b, var_4.d.c, _wgslsmith_div_f32(1002f, var_4.d.c)))), max(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 42056u, u_input.c, 0u), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(5016u, var_4.a.x, var_4.b, 4294967295u)), firstLeadingBit(vec4<u32>(u_input.c, 9774u, var_1.x, 1844u)), ~vec4<u32>(var_4.b, 12651u, var_1.x, 4294967295u))), (firstLeadingBit(vec4<u32>(1u, 0u, 4294967295u, 4294967295u)) << (firstTrailingBit(vec4<u32>(var_3.x, 39411u, 24500u, 78911u)) % vec4<u32>(32u))) | ~vec4<u32>(var_4.b, var_4.b, 4294967295u, 0u)));
}

