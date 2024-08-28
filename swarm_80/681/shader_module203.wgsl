struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec3<f32>(-170f, 841f, 495f), vec4<i32>(2147483647i, -1i, i32(-2147483648), -49439i), -23596i, -1i), Struct_1(vec3<f32>(862f, 969f, -1993f), vec4<i32>(-41942i, -1i, 1i, -1i), 21566i, i32(-2147483648)), Struct_1(vec3<f32>(244f, -1000f, -1157f), vec4<i32>(i32(-2147483648), 75990i, -1i, -1i), 37870i, -18877i), Struct_1(vec3<f32>(-796f, -443f, 296f), vec4<i32>(9705i, i32(-2147483648), 68751i, 0i), -1i, -19243i));

var<private> global1: Struct_2 = Struct_2(-499f, Struct_1(vec3<f32>(-863f, 235f, 478f), vec4<i32>(i32(-2147483648), i32(-2147483648), -21970i, -1i), i32(-2147483648), 1i), Struct_1(vec3<f32>(-1000f, 1103f, -2154f), vec4<i32>(1i, -11330i, 1i, -75983i), 0i, -23951i), Struct_1(vec3<f32>(435f, -1201f, 260f), vec4<i32>(19055i, -1i, -1985i, 1i), 1i, i32(-2147483648)), Struct_1(vec3<f32>(179f, -345f, -723f), vec4<i32>(1i, 14535i, 13111i, -1200i), -1i, 49144i));

var<private> global2: array<i32, 20> = array<i32, 20>(1i, 62544i, i32(-2147483648), 1425i, i32(-2147483648), 0i, i32(-2147483648), 2147483647i, -1i, -30435i, -1i, 1i, 5409i, -26732i, 0i, 2147483647i, 0i, 2147483647i, 19784i, -31423i);

var<private> global3: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = vec3<u32>(u_input.b.x, 9212u, 30836u);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(step(241f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)) - _wgslsmith_f_op_f32(floor(global1.b.a.x))))), Struct_1(global1.d.a, (global1.b.b & global1.c.b) | _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(global1.c.b, vec4<i32>(36927i, 0i, -9758i, -46213i)), _wgslsmith_sub_vec4_i32(global1.d.b, global1.e.b)), 2044i, global1.c.d), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-808f, global1.b.a.x, -1734f)) + vec3<f32>(_wgslsmith_div_f32(-586f, -2569f), -1086f, _wgslsmith_f_op_f32(1479f - 1000f))), ~(-global1.b.b), i32(-1i) * -select(13681i, global1.c.b.x, global3.x), min(abs(-1i), global1.c.d)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global1.e.a, global1.b.a, true)) - vec3<f32>(-401f, global1.c.a.x, global1.e.a.x))), global1.e.b, global2[_wgslsmith_index_u32(29733u, 20u)], max(global1.b.c, _wgslsmith_add_i32(-1i, 1i))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~var_0.x), ~_wgslsmith_mod_u32(u_input.b.x, u_input.a)) ^ 0u, 4u)]);
    global3 = vec3<bool>(all(!vec2<bool>(global3.x, global3.x)) & !(~u_input.c < _wgslsmith_add_i32(48691i, -62512i)), !select(true, -53367i == ~u_input.c, global3.x), any(select(select(vec4<bool>(false, true, false, false), select(vec4<bool>(global3.x, true, false, false), vec4<bool>(false, false, global3.x, true), vec4<bool>(global3.x, true, true, false)), -409f > var_1.c.a.x), !(!vec4<bool>(false, false, global3.x, global3.x)), (u_input.a < 25458u) & global3.x)));
    let var_2 = Struct_2(624f, global0[_wgslsmith_index_u32(0u, 4u)], Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.a.x), var_1.a, -1476f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(344f, 169f, global1.b.a.x) + vec3<f32>(global1.e.a.x, var_1.c.a.x, var_1.c.a.x)) - _wgslsmith_f_op_vec3_f32(max(global1.b.a, var_1.d.a)))), -_wgslsmith_mod_vec4_i32(global1.e.b, ~var_1.b.b), ~(-42037i), -1i), global1.e, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.d.a.x), var_1.d.a.x, _wgslsmith_f_op_f32(-var_1.b.a.x)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(var_1.c.a)), _wgslsmith_f_op_vec3_f32(abs(var_1.b.a)), global3.x))), abs(~(vec4<i32>(-1i, var_1.d.d, global2[_wgslsmith_index_u32(0u, 20u)], 27041i) << (u_input.b % vec4<u32>(32u)))), 1i, 1i));
    global3 = select(select(select(!select(vec3<bool>(true, global3.x, global3.x), vec3<bool>(false, global3.x, global3.x), vec3<bool>(true, global3.x, true)), vec3<bool>(global1.c.a.x > var_1.b.a.x, !global3.x, true), vec3<bool>(global3.x, true, false)), !vec3<bool>(!global3.x, false, 0u < var_0.x), !select(vec3<bool>(true, false, global3.x), !vec3<bool>(global3.x, global3.x, global3.x), false)), !(!(!select(vec3<bool>(global3.x, false, global3.x), vec3<bool>(false, global3.x, global3.x), vec3<bool>(global3.x, true, global3.x)))), vec3<bool>(any(global3.yx), false, global3.x));
    return select(false, any(vec4<bool>(global3.x, !(!global3.x), !all(vec3<bool>(false, true, global3.x)), true)), true);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<bool>) -> Struct_2 {
    global3 = vec3<bool>(all(arg_1.xz), !func_3(), !arg_1.x);
    let var_0 = vec3<bool>(all(select(arg_1.zx, global3.zx, global3.x)), true, arg_1.x);
    global3 = select(vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1116f) + -148f) > _wgslsmith_f_op_f32(max(1680f, _wgslsmith_f_op_f32(-global1.a))), any(select(!vec3<bool>(global3.x, var_0.x, false), var_0, false)), var_0.x), vec3<bool>(true, 1000f <= _wgslsmith_f_op_f32(global1.c.a.x - _wgslsmith_f_op_f32(floor(global1.c.a.x))), any(!(!vec3<bool>(arg_1.x, arg_1.x, var_0.x)))), vec3<bool>(!(global1.d.a.x >= -1470f) & (false || var_0.x), !var_0.x, true));
    var var_1 = _wgslsmith_f_op_f32(ceil(-1331f));
    let var_2 = global1.c.c;
    return Struct_2(-1216f, Struct_1(global1.e.a, _wgslsmith_clamp_vec4_i32(global1.d.b, countOneBits(global1.d.b), global1.e.b), -(~8519i), _wgslsmith_clamp_i32(min(-39635i, -2147483647i), u_input.c, 2147483647i)), global0[_wgslsmith_index_u32(47727u, 4u)], global1.e, global0[_wgslsmith_index_u32(42973u, 4u)]);
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    var var_0 = global3.x;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(min(arg_0.e.a, _wgslsmith_f_op_vec3_f32(floor(global1.d.a)))), firstTrailingBit(abs(_wgslsmith_div_vec4_i32(-global1.d.b, _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, arg_0.b.b.x, 13247i, 1i), global1.e.b)))), global2[_wgslsmith_index_u32(33881u, 20u)], reverseBits(-73091i));
    var var_2 = reverseBits(_wgslsmith_mod_u32(4294967295u, _wgslsmith_div_u32(~u_input.b.x >> (17677u % 32u), _wgslsmith_add_u32(~4294967295u, ~u_input.b.x))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-603f, _wgslsmith_f_op_f32(select(arg_0.a, _wgslsmith_f_op_f32(abs(arg_0.e.a.x)), select(true, false, global3.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.e.a.x, arg_0.e.a.x) - _wgslsmith_f_op_f32(-global1.b.a.x)))), select(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1, var_1.d, u_input.c, arg_1), vec4<i32>(u_input.c, arg_1, arg_1, 43908i), vec4<i32>(-49723i, 1i, 2147483647i, u_input.c)), abs(global1.e.b)), _wgslsmith_add_vec4_i32(global1.d.b, vec4<i32>(1628i, arg_1, 2147483647i, -1i)), select(vec4<bool>(global3.x, true, global3.x, false), !vec4<bool>(global3.x, global3.x, global3.x, global3.x), vec4<bool>(false, true, global3.x, global3.x))) >> (countOneBits(vec4<u32>(_wgslsmith_div_u32(0u, u_input.a), 45221u, _wgslsmith_add_u32(63162u, u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 34639u, 4294967295u, u_input.b.x), vec4<u32>(32366u, 0u, 1u, 1u)))) % vec4<u32>(32u)), min(i32(-1i) * -6955i, abs(-abs(global2[_wgslsmith_index_u32(u_input.a, 20u)]))), max(-36613i, ~u_input.c));
    let var_4 = abs(1i);
    return func_2((~select(vec2<i32>(59642i, -36463i), global1.e.b.yy, false) >> (~vec2<u32>(47916u, 0u) % vec2<u32>(32u))) & (vec2<i32>(-1i, var_3.b.x) | firstLeadingBit(~arg_0.d.b.xw)), vec4<bool>(true, global3.x, any(!select(vec4<bool>(true, true, global3.x, false), vec4<bool>(global3.x, true, false, true), global3.x)), global3.x)).b;
}

fn func_1() -> i32 {
    global1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(298f, _wgslsmith_f_op_f32(-global1.d.a.x)) * global1.d.a.x), func_4(func_2(global1.b.b.xw, select(vec4<bool>(true, global3.x, global3.x, true), vec4<bool>(true, true, true, true), !global3.x)), -67136i), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.a.x, 1000f, 939f))), min(-func_4(Struct_2(global1.a, global1.d, Struct_1(vec3<f32>(-392f, -648f, global1.a), vec4<i32>(-1i, global2[_wgslsmith_index_u32(113600u, 20u)], 1i, global2[_wgslsmith_index_u32(u_input.b.x, 20u)]), -20762i, global2[_wgslsmith_index_u32(4294967295u, 20u)]), Struct_1(vec3<f32>(-1018f, global1.d.a.x, global1.d.a.x), vec4<i32>(70574i, 2147483647i, 0i, 1i), 1i, 34471i), Struct_1(vec3<f32>(global1.b.a.x, global1.c.a.x, -383f), global1.c.b, u_input.c, -2752i)), -2147483647i).b, -abs(vec4<i32>(-2147483647i, -64372i, u_input.c, -793i))), u_input.c, global1.e.d), func_4(Struct_2(func_4(Struct_2(global1.b.a.x, global1.e, global0[_wgslsmith_index_u32(4294967295u, 4u)], Struct_1(vec3<f32>(-1000f, -761f, -271f), global1.e.b, -37687i, global2[_wgslsmith_index_u32(0u, 20u)]), Struct_1(global1.d.a, vec4<i32>(0i, global1.d.d, 1i, 67501i), global1.b.b.x, -288i)), _wgslsmith_mod_i32(global1.e.c, 1i)).a.x, Struct_1(func_4(Struct_2(global1.d.a.x, global1.b, Struct_1(vec3<f32>(global1.d.a.x, global1.d.a.x, global1.d.a.x), vec4<i32>(global1.e.c, global1.b.b.x, u_input.c, u_input.c), u_input.c, u_input.c), global0[_wgslsmith_index_u32(0u, 4u)], global1.e), -50215i).a, -vec4<i32>(global1.e.c, global2[_wgslsmith_index_u32(u_input.a, 20u)], -33188i, 2147483647i), u_input.c, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, 65328u), 20u)]), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(global1.d.a.x, global1.b.a.x, 479f), vec3<f32>(global1.b.a.x, global1.b.a.x, global1.d.a.x)), vec4<i32>(-4607i, 21951i, -1i, 1i), u_input.c, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, u_input.a), 20u)]), global1.c, global1.c), 15542i), global1.c);
    var var_0 = func_2(countOneBits(global1.c.b.xy), vec4<bool>(true, all(vec4<bool>(global3.x, global3.x, false | global3.x, !global3.x)), false, !(!global3.x | global3.x)));
    let var_1 = var_0.d.a.x;
    global0 = array<Struct_1, 4>();
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1094f), _wgslsmith_f_op_f32(sign(-705f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.a, 346f))))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(var_0.a, global1.e.a.x), global1.b.a.x)))));
    return -_wgslsmith_div_i32(-_wgslsmith_sub_i32(global1.e.d, -1i), u_input.c) << (_wgslsmith_mod_u32(_wgslsmith_mod_u32(~u_input.b.x, firstLeadingBit(u_input.a)) >> (u_input.b.x % 32u), u_input.a) % 32u);
}

fn func_5(arg_0: i32, arg_1: vec2<bool>, arg_2: u32, arg_3: vec3<i32>) -> bool {
    global3 = vec3<bool>(arg_1.x, any(vec3<bool>(global3.x, !(!global3.x), arg_1.x)), false);
    var var_0 = vec4<bool>(true, true, all(!select(!vec3<bool>(arg_1.x, global3.x, global3.x), !vec3<bool>(arg_1.x, global3.x, global3.x), select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(false, false, global3.x), true))), all(vec4<bool>(!arg_1.x, !(false != global3.x), !(arg_1.x || false), true)));
    var var_1 = ~u_input.b.ww & ~(~vec2<u32>(_wgslsmith_div_u32(u_input.a, 76149u), _wgslsmith_add_u32(arg_2, arg_2)));
    global0 = array<Struct_1, 4>();
    var var_2 = !vec2<bool>(true, !any(vec2<bool>(var_0.x, arg_1.x)));
    return global3.x;
}

fn func_6(arg_0: u32, arg_1: i32, arg_2: vec3<bool>) -> Struct_1 {
    global1 = Struct_2(1190f, global1.e, global1.b, global1.e, Struct_1(vec3<f32>(global1.e.a.x, 144f, 610f), ~select(global1.e.b, vec4<i32>(global1.e.b.x, global1.d.c, global1.e.c, -24730i), select(vec4<bool>(false, true, false, false), vec4<bool>(false, arg_2.x, true, arg_2.x), vec4<bool>(false, global3.x, true, arg_2.x))), ~global1.c.b.x, ~global1.e.b.x));
    global2 = array<i32, 20>();
    var var_0 = func_4(Struct_2(_wgslsmith_f_op_f32(-global1.a), global0[_wgslsmith_index_u32(1u, 4u)], Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1334f, 1143f, 901f)), global1.d.a), global1.d.b ^ global1.d.b, global1.c.b.x, firstTrailingBit(_wgslsmith_add_i32(2147483647i, -16347i))), Struct_1(_wgslsmith_f_op_vec3_f32(trunc(global1.e.a)), global1.c.b, -global2[_wgslsmith_index_u32(1u, 20u)], func_4(func_2(global1.e.b.xx, vec4<bool>(false, false, false, false)), -global1.b.d).b.x), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(2608f, 140f, 416f))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.b.a.x, global1.c.a.x, global1.a)))), func_2(global1.b.b.yw, vec4<bool>(false, false, false, false)).d.b ^ global1.c.b, firstTrailingBit(_wgslsmith_mod_i32(38798i, global2[_wgslsmith_index_u32(1u, 20u)])), -29457i)), 2869i);
    global3 = vec3<bool>(select(func_3(), any(select(!vec2<bool>(true, global3.x), global3.yx, true)), arg_2.x), any(!vec2<bool>(false, !global3.x)), arg_2.x);
    let var_1 = vec3<bool>(false, arg_2.x, true);
    return func_4(func_2(vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 20u)] & max(global1.e.b.x, u_input.c), global1.c.b.x), select(select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false), vec4<bool>(arg_2.x, var_1.x, arg_2.x, var_1.x), any(vec2<bool>(var_1.x, true))), !vec4<bool>(true, false, global3.x, arg_2.x), !func_3())), i32(-1i) * -21349i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(u_input.b.x, -1i, vec3<bool>(all(!vec3<bool>(true, global3.x, global3.x)), func_5(i32(-1i) * -4526i, vec2<bool>(!global3.x, 8458i > u_input.c), _wgslsmith_dot_vec3_u32(u_input.b.yzw, u_input.b.xww), vec3<i32>(func_1(), _wgslsmith_mult_i32(global1.d.c, 1i), global2[_wgslsmith_index_u32(29110u, 20u)] ^ -37173i)), all(vec3<bool>(any(vec3<bool>(global3.x, global3.x, global3.x)), !global3.x, global3.x & global3.x))));
    global2 = array<i32, 20>();
    global0 = array<Struct_1, 4>();
    var var_1 = global1.c;
    let var_2 = Struct_2(332f, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, _wgslsmith_f_op_f32(sign(global1.e.a.x)), -1335f) * vec3<f32>(func_6(u_input.b.x, var_0.d, vec3<bool>(global3.x, false, global3.x)).a.x, _wgslsmith_f_op_f32(global1.c.a.x * 1060f), _wgslsmith_div_f32(var_0.a.x, var_0.a.x))), select(vec4<i32>(-var_1.d, 74952i, ~(-24353i), var_1.b.x), _wgslsmith_sub_vec4_i32(var_0.b, vec4<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 20u)], 0i, var_1.b.x, 33321i)) ^ select(vec4<i32>(var_0.b.x, var_1.d, -1i, -9676i), var_1.b, vec4<bool>(global3.x, global3.x, false, global3.x)), select(!vec4<bool>(false, true, false, global3.x), select(vec4<bool>(global3.x, false, global3.x, true), vec4<bool>(global3.x, global3.x, global3.x, false), vec4<bool>(false, global3.x, false, global3.x)), select(vec4<bool>(true, true, true, global3.x), vec4<bool>(global3.x, true, false, true), global3.x))), -(~(~var_1.d)), func_2(vec2<i32>(_wgslsmith_dot_vec3_i32(var_1.b.zzz, vec3<i32>(0i, -2147483647i, var_1.b.x)), -2147483647i), select(!vec4<bool>(global3.x, false, global3.x, true), select(vec4<bool>(true, false, global3.x, true), vec4<bool>(true, global3.x, true, global3.x), vec4<bool>(global3.x, global3.x, false, false)), vec4<bool>(global3.x, global3.x, global3.x, global3.x))).d.d), global0[_wgslsmith_index_u32(~(u_input.b.x >> (~u_input.b.x % 32u)), 4u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(~select(0u, 10185u, true), _wgslsmith_div_u32(u_input.b.x, abs(u_input.b.x))), u_input.a), 4u)], func_2(var_0.b.zx, select(!select(vec4<bool>(global3.x, false, true, false), vec4<bool>(global3.x, global3.x, global3.x, global3.x), false), vec4<bool>(true, any(vec4<bool>(true, true, global3.x, global3.x)), func_3(), u_input.b.x < u_input.b.x), vec4<bool>(true, true, true, true))).c);
    let var_3 = ~min(vec4<u32>(_wgslsmith_mult_u32(u_input.b.x, 1u), 30273u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 54726u, 6310u, 567u), u_input.b) >> (_wgslsmith_sub_u32(u_input.b.x, u_input.b.x) % 32u), u_input.a), vec4<u32>(~u_input.a, ~u_input.b.x ^ ~1u, ~(~u_input.b.x), abs(u_input.a)));
    let var_4 = 810i;
    let var_5 = ~(_wgslsmith_sub_u32(0u, select(_wgslsmith_mult_u32(var_3.x, var_3.x), var_3.x & 1u, true)) | abs(u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(1u, _wgslsmith_div_u32(min(27204u, ~52536u), select(1u, _wgslsmith_dot_vec2_u32(var_3.yw, u_input.b.wx), global2[_wgslsmith_index_u32(var_3.x, 20u)] >= 2147483647i))), i32(-1i) * -func_1(), ~u_input.b.wyz);
}

