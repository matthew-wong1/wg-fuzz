struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 24> = array<Struct_4, 24>(Struct_4(vec3<u32>(20910u, 4294967295u, 4294967295u), Struct_1(1514f, true, vec3<bool>(true, true, false), 10200i), vec2<f32>(154f, 858f), true), Struct_4(vec3<u32>(50895u, 28770u, 17127u), Struct_1(-491f, false, vec3<bool>(false, false, true), 1i), vec2<f32>(229f, -362f), true), Struct_4(vec3<u32>(7369u, 0u, 4295u), Struct_1(352f, true, vec3<bool>(true, false, true), 14802i), vec2<f32>(-113f, 1046f), false), Struct_4(vec3<u32>(15956u, 9785u, 0u), Struct_1(1451f, true, vec3<bool>(true, false, true), -7254i), vec2<f32>(-1000f, 1000f), true), Struct_4(vec3<u32>(4294967295u, 1u, 8419u), Struct_1(1210f, false, vec3<bool>(true, true, true), 1i), vec2<f32>(-1000f, -186f), false), Struct_4(vec3<u32>(1u, 26029u, 41941u), Struct_1(169f, false, vec3<bool>(true, true, true), 78414i), vec2<f32>(1160f, -842f), false), Struct_4(vec3<u32>(15415u, 13349u, 1u), Struct_1(-430f, true, vec3<bool>(true, true, true), 1i), vec2<f32>(-141f, -509f), true), Struct_4(vec3<u32>(18502u, 31260u, 4294967295u), Struct_1(605f, true, vec3<bool>(true, true, false), -10475i), vec2<f32>(522f, -280f), false), Struct_4(vec3<u32>(1u, 0u, 0u), Struct_1(-1284f, false, vec3<bool>(false, true, true), -3931i), vec2<f32>(-405f, -160f), true), Struct_4(vec3<u32>(27743u, 1u, 0u), Struct_1(266f, false, vec3<bool>(false, true, true), i32(-2147483648)), vec2<f32>(1568f, -1657f), true), Struct_4(vec3<u32>(12448u, 4294967295u, 68895u), Struct_1(437f, false, vec3<bool>(true, false, false), 0i), vec2<f32>(576f, -1553f), false), Struct_4(vec3<u32>(16823u, 59836u, 44000u), Struct_1(-222f, true, vec3<bool>(true, true, false), 0i), vec2<f32>(979f, 302f), true), Struct_4(vec3<u32>(4294967295u, 42324u, 0u), Struct_1(-1118f, false, vec3<bool>(false, true, true), 34364i), vec2<f32>(-1618f, 279f), false), Struct_4(vec3<u32>(60663u, 1u, 0u), Struct_1(619f, false, vec3<bool>(false, false, true), -18792i), vec2<f32>(2217f, 587f), true), Struct_4(vec3<u32>(0u, 35863u, 4294967295u), Struct_1(2102f, true, vec3<bool>(true, false, true), -1i), vec2<f32>(1406f, 2215f), true), Struct_4(vec3<u32>(44172u, 34086u, 39964u), Struct_1(149f, false, vec3<bool>(false, true, false), 2147483647i), vec2<f32>(240f, 1063f), true), Struct_4(vec3<u32>(1u, 17195u, 1u), Struct_1(-1858f, true, vec3<bool>(true, true, false), -35323i), vec2<f32>(-1379f, -220f), false), Struct_4(vec3<u32>(0u, 4294967295u, 4294967295u), Struct_1(671f, false, vec3<bool>(true, false, false), -17624i), vec2<f32>(935f, -1000f), true), Struct_4(vec3<u32>(33206u, 1u, 4294967295u), Struct_1(2448f, false, vec3<bool>(false, true, false), -54487i), vec2<f32>(294f, -964f), false), Struct_4(vec3<u32>(1u, 15821u, 54686u), Struct_1(-646f, true, vec3<bool>(false, false, false), 43035i), vec2<f32>(270f, -1554f), false), Struct_4(vec3<u32>(35065u, 46914u, 25135u), Struct_1(-1990f, true, vec3<bool>(true, true, true), 39231i), vec2<f32>(-921f, -131f), true), Struct_4(vec3<u32>(59186u, 39197u, 0u), Struct_1(437f, false, vec3<bool>(false, false, false), 20954i), vec2<f32>(1131f, -467f), true), Struct_4(vec3<u32>(4294967295u, 0u, 15303u), Struct_1(374f, true, vec3<bool>(true, true, false), -1i), vec2<f32>(-1000f, -522f), false), Struct_4(vec3<u32>(4294967295u, 18490u, 57820u), Struct_1(2861f, true, vec3<bool>(true, false, false), -1i), vec2<f32>(-1313f, 1000f), true));

var<private> global1: array<Struct_1, 11>;

var<private> global2: u32;

var<private> global3: array<bool, 13> = array<bool, 13>(true, true, false, false, false, false, false, true, true, true, false, false, true);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(825f, 417f, -1477f, -388f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(579f, arg_0.x, arg_0.x, 600f))), vec4<f32>(-1160f, arg_0.x, _wgslsmith_div_f32(-1932f, arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -2925f)))))));
    let var_1 = u_input.c.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(-var_0.yx);
    var var_3 = !select(!select(select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.e, 13u)], global3[_wgslsmith_index_u32(11443u, 13u)], true, false), vec4<bool>(false, global3[_wgslsmith_index_u32(var_1, 13u)], false, true), false), vec4<bool>(global3[_wgslsmith_index_u32(1u, 13u)], false, global3[_wgslsmith_index_u32(u_input.d.x, 13u)], false), true), select(!vec4<bool>(global3[_wgslsmith_index_u32(var_1, 13u)], global3[_wgslsmith_index_u32(27143u, 13u)], global3[_wgslsmith_index_u32(var_1, 13u)], global3[_wgslsmith_index_u32(var_1, 13u)]), vec4<bool>(false, global3[_wgslsmith_index_u32(var_1 << (var_1 % 32u), 13u)], any(vec4<bool>(global3[_wgslsmith_index_u32(1u, 13u)], false, true, global3[_wgslsmith_index_u32(var_1, 13u)])), true), _wgslsmith_f_op_f32(step(var_2.x, -102f)) <= _wgslsmith_f_op_f32(step(var_0.x, -457f))), !vec4<bool>(true, global3[_wgslsmith_index_u32(~u_input.a.x, 13u)], true != global3[_wgslsmith_index_u32(42568u, 13u)], global3[_wgslsmith_index_u32(var_1, 13u)]));
    let var_4 = abs(1u);
    return _wgslsmith_f_op_f32(min(-732f, 239f));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: i32, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(u_input.c, abs(u_input.c) >> (vec4<u32>(u_input.e, arg_1.a.x, u_input.c.x, 43996u) % vec4<u32>(32u))), ~max(vec4<u32>(0u, 131299u, 0u, arg_1.a.x), u_input.a)), vec4<u32>(_wgslsmith_mult_u32(30158u, _wgslsmith_add_u32(~4294967295u, u_input.e)), arg_1.a.x, u_input.c.x, 4294967295u), ~u_input.c >> (vec4<u32>(_wgslsmith_mod_u32(arg_1.a.x, ~31757u), ~u_input.e, 37932u >> (u_input.e % 32u), u_input.c.x) % vec4<u32>(32u)));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.a - arg_3.a.a))), arg_0.a.c.x, !select(arg_1.b.c, !vec3<bool>(arg_1.b.c.x, true, global3[_wgslsmith_index_u32(77913u, 13u)]), true), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(-1324i, arg_1.b.d, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, arg_0.a.d)), vec3<i32>(-3172i, arg_0.a.d, -1i) & vec3<i32>(arg_3.a.d, -1i, u_input.b.x))));
    let var_2 = any(select(!(!arg_3.a.c), !(!vec3<bool>(var_1.a.b, arg_0.a.c.x, arg_1.d)), !select(!arg_0.a.c, select(arg_3.a.c, arg_0.a.c, vec3<bool>(false, arg_0.a.c.x, arg_3.a.c.x)), arg_1.d)));
    var_0 = select(vec4<u32>(var_0.x, _wgslsmith_clamp_u32(var_0.x, _wgslsmith_mod_u32(reverseBits(arg_1.a.x), countOneBits(arg_1.a.x)), _wgslsmith_mult_u32(countOneBits(27269u), ~arg_1.a.x)), 0u, _wgslsmith_clamp_u32(firstTrailingBit(_wgslsmith_add_u32(arg_1.a.x, u_input.a.x)), firstTrailingBit(~1u), _wgslsmith_add_u32(11407u, 35200u))), max(vec4<u32>(arg_1.a.x, max(var_0.x, reverseBits(14644u)), ~(367u | var_0.x), u_input.c.x), ~vec4<u32>(~4294967295u, firstTrailingBit(4294967295u), var_0.x, ~1u)), !(!(!(!vec4<bool>(var_1.a.c.x, false, true, true)))));
    return !select(vec4<bool>(!any(vec2<bool>(var_1.a.b, arg_0.a.c.x)), arg_3.a.b, !var_1.a.c.x, true), vec4<bool>(true, true, var_0.x <= _wgslsmith_div_u32(arg_1.a.x, 46248u), select(false, arg_3.a.b, global3[_wgslsmith_index_u32(arg_1.a.x, 13u)]) && true), true && any(select(vec4<bool>(true, arg_1.b.c.x, global3[_wgslsmith_index_u32(108089u, 13u)], true), vec4<bool>(false, global3[_wgslsmith_index_u32(11690u, 13u)], arg_1.d, false), arg_3.a.b)));
}

fn func_2(arg_0: vec4<f32>) -> f32 {
    var var_0 = func_4(Struct_2(global1[_wgslsmith_index_u32(u_input.e, 11u)]), Struct_4(u_input.a.zww & u_input.d.wyx, global1[_wgslsmith_index_u32(u_input.a.x, 11u)], vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.x, -143f), arg_0.wy))))), (any(vec2<bool>(global3[_wgslsmith_index_u32(1u, 13u)], true)) || false) != select(u_input.b.x > 2147483647i, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d.x, u_input.a.x), 13u)], global3[_wgslsmith_index_u32(firstLeadingBit(57182u), 13u)])), _wgslsmith_sub_i32(_wgslsmith_sub_i32(firstTrailingBit(-1i) & 1i, 1i), -_wgslsmith_dot_vec2_i32(u_input.b << (vec2<u32>(u_input.d.x, 0u) % vec2<u32>(32u)), vec2<i32>(u_input.b.x, 12206i))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-1446f + _wgslsmith_f_op_f32(701f - 945f)), global3[_wgslsmith_index_u32(~(12990u >> (u_input.a.x % 32u)), 13u)], !vec3<bool>(false, global3[_wgslsmith_index_u32(0u, 13u)], global3[_wgslsmith_index_u32(u_input.c.x, 13u)]), -u_input.b.x)));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(arg_0.x)), select(!var_0.x, 81906u < _wgslsmith_dot_vec4_u32(vec4<u32>(90150u, u_input.a.x, u_input.c.x, 0u), vec4<u32>(u_input.a.x, u_input.e, 49805u, 17623u)), all(!vec4<bool>(var_0.x, false, false, global3[_wgslsmith_index_u32(u_input.c.x, 13u)]))), !select(vec3<bool>(var_0.x, global3[_wgslsmith_index_u32(44966u, 13u)], var_0.x), var_0.zyy, var_0.wwz), ~(-_wgslsmith_mult_i32(u_input.b.x, -2147483647i))));
    var_0 = select(vec4<bool>(var_0.x, !select(!var_1.a.b, true, 1u > u_input.e), true, !all(select(vec2<bool>(true, var_0.x), var_0.xw, vec2<bool>(true, var_0.x)))), vec4<bool>(!global3[_wgslsmith_index_u32(1u, 13u)], global3[_wgslsmith_index_u32(4294967295u, 13u)], var_1.a.c.x & any(!vec4<bool>(global3[_wgslsmith_index_u32(0u, 13u)], true, var_1.a.c.x, global3[_wgslsmith_index_u32(u_input.d.x, 13u)])), _wgslsmith_f_op_f32(max(-1214f, 762f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.a.a)))), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 13u)] & func_4(Struct_2(Struct_1(arg_0.x, false, vec3<bool>(false, true, true), -10779i)), Struct_4(vec3<u32>(u_input.c.x, u_input.a.x, 0u), Struct_1(1657f, false, vec3<bool>(var_0.x, true, global3[_wgslsmith_index_u32(5045u, 13u)]), u_input.b.x), arg_0.ww, var_1.a.b), 29351i, Struct_2(Struct_1(1271f, true, vec3<bool>(false, true, var_1.a.c.x), u_input.b.x))).x, global3[_wgslsmith_index_u32(~(~u_input.e | (u_input.a.x << (2134u % 32u))), 13u)], !(var_0.x && any(vec3<bool>(var_0.x, true, var_0.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1135f, 890f, global3[_wgslsmith_index_u32(u_input.c.x, 13u)])))) != var_1.a.a));
    let var_2 = 4294967295u;
    let var_3 = Struct_2(global1[_wgslsmith_index_u32(~1u, 11u)]);
    return var_1.a.a;
}

fn func_1() -> vec3<f32> {
    let var_0 = Struct_3(global1[_wgslsmith_index_u32(u_input.c.x, 11u)]);
    global2 = u_input.c.x;
    global1 = array<Struct_1, 11>();
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.a, 139f, var_0.a.a, var_0.a.a), vec4<f32>(var_0.a.a, 520f, -160f, 105f)) - vec4<f32>(625f, -1289f, var_0.a.a, 293f)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, _wgslsmith_f_op_f32(func_2(vec4<f32>(-1050f, var_0.a.a, -1128f, -782f))), var_0.a.a, -1446f), vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.a), -131f, var_0.a.a, _wgslsmith_f_op_f32(trunc(388f))))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.a), _wgslsmith_f_op_f32(f32(-1f) * -1465f), -1185f, _wgslsmith_f_op_f32(var_0.a.a * var_0.a.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.a.a, 1809f, 382f, 203f), vec4<f32>(-1556f, var_0.a.a, -722f, var_0.a.a)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.a, -1000f, var_0.a.a, -327f) + vec4<f32>(var_0.a.a, -3088f, -2470f, 384f)), vec4<f32>(557f, 144f, var_0.a.a, var_0.a.a))))));
    let var_2 = u_input.a.x != ~_wgslsmith_div_u32(u_input.d.x, abs(1u));
    return vec3<f32>(_wgslsmith_div_f32(-1233f, _wgslsmith_div_f32(var_0.a.a, -532f)), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))))), -847f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32((u_input.d.x << (_wgslsmith_mult_u32(select(u_input.e, 0u, global3[_wgslsmith_index_u32(26607u, 13u)]), u_input.a.x << (48547u % 32u)) % 32u)) ^ ~firstLeadingBit(10237u), 4294967295u), 11u)];
    var_0 = global1[_wgslsmith_index_u32(35293u, 11u)];
    global2 = 71133u << (~u_input.a.x % 32u);
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(ceil(var_0.a))))));
    var var_2 = vec3<u32>(max(1045u, _wgslsmith_add_u32(u_input.e, u_input.e)), ~(~u_input.a.x), 2247u);
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_2.x, 0u, ~1u, 4294967295u), _wgslsmith_f_op_vec3_f32(func_1()), select(~vec3<u32>(firstLeadingBit(0u), var_2.x, 0u), ~u_input.c.xxw, true), firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, countOneBits(-27413i)), u_input.b)));
}

