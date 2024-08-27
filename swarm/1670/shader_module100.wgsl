struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(-1519f, -687f, vec4<f32>(212f, -228f, -586f, 794f), vec2<i32>(-2275i, -1i), 15212i), Struct_1(-284f, 2421f, vec4<f32>(-1241f, -1585f, 1000f, -403f), vec2<i32>(i32(-2147483648), i32(-2147483648)), -9048i), Struct_1(-2323f, -1915f, vec4<f32>(2078f, -156f, 1277f, 1566f), vec2<i32>(i32(-2147483648), -17115i), 63570i), Struct_1(-392f, -462f, vec4<f32>(-1011f, 960f, 1302f, -1019f), vec2<i32>(-6386i, i32(-2147483648)), -14206i), Struct_1(-682f, -389f, vec4<f32>(-965f, 278f, -1000f, -736f), vec2<i32>(-36933i, -56046i), -6295i), Struct_1(-1434f, -493f, vec4<f32>(2175f, -1000f, -155f, 575f), vec2<i32>(1i, i32(-2147483648)), 2245i), Struct_1(488f, 3219f, vec4<f32>(366f, -404f, -1188f, -730f), vec2<i32>(0i, 0i), i32(-2147483648)), Struct_1(-275f, 2149f, vec4<f32>(792f, -137f, -1295f, 815f), vec2<i32>(-37044i, 2147483647i), 71699i), Struct_1(335f, -1173f, vec4<f32>(-1113f, 316f, -2131f, -1486f), vec2<i32>(-18825i, 2377i), -26568i), Struct_1(-343f, -817f, vec4<f32>(-1178f, 331f, -2115f, 246f), vec2<i32>(-36108i, 36559i), -1i), Struct_1(432f, -2539f, vec4<f32>(-727f, -1113f, 490f, -1000f), vec2<i32>(-32667i, i32(-2147483648)), -2349i), Struct_1(-1569f, 257f, vec4<f32>(1772f, 299f, -969f, 1949f), vec2<i32>(i32(-2147483648), -48813i), 1i), Struct_1(1094f, -499f, vec4<f32>(-819f, 1000f, -190f, 2293f), vec2<i32>(2147483647i, 2147483647i), 2147483647i), Struct_1(879f, 518f, vec4<f32>(-876f, -480f, 1872f, 2007f), vec2<i32>(1i, -9098i), -18644i), Struct_1(1750f, -1000f, vec4<f32>(-328f, -289f, 825f, 1029f), vec2<i32>(i32(-2147483648), -4976i), 93219i), Struct_1(510f, 1655f, vec4<f32>(1568f, 478f, 1513f, -250f), vec2<i32>(-9418i, -3468i), 14096i), Struct_1(-1001f, 1019f, vec4<f32>(1357f, -197f, 1448f, -110f), vec2<i32>(-31544i, 0i), -22817i), Struct_1(-572f, 563f, vec4<f32>(154f, 579f, -687f, 812f), vec2<i32>(1i, 0i), 2147483647i), Struct_1(706f, 2067f, vec4<f32>(-489f, -1760f, 954f, 164f), vec2<i32>(0i, 1i), 60270i), Struct_1(-367f, 210f, vec4<f32>(842f, 901f, -1854f, -165f), vec2<i32>(-42736i, 1i), -24966i), Struct_1(-612f, -2011f, vec4<f32>(-556f, -765f, -359f, 579f), vec2<i32>(i32(-2147483648), 1i), 16072i), Struct_1(-1000f, -2267f, vec4<f32>(-1511f, -1660f, 2988f, 349f), vec2<i32>(8114i, -33531i), i32(-2147483648)));

var<private> global1: vec4<f32> = vec4<f32>(516f, -249f, 1000f, -470f);

var<private> global2: array<bool, 1> = array<bool, 1>(true);

var<private> global3: i32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    let var_0 = vec3<bool>(any(vec4<bool>(!(!global2[_wgslsmith_index_u32(4294967295u, 1u)]), any(!vec2<bool>(global2[_wgslsmith_index_u32(27623u, 1u)], global2[_wgslsmith_index_u32(0u, 1u)])), select(true, true, false), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(22276u, 23896u) >> (1u % 32u), 1u)])), !global2[_wgslsmith_index_u32(0u, 1u)], !(!any(vec4<bool>(global2[_wgslsmith_index_u32(0u, 1u)], global2[_wgslsmith_index_u32(4294967295u, 1u)], global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(4294967295u, 1u)]))));
    global3 = _wgslsmith_dot_vec4_i32(u_input.a, abs(vec4<i32>(min(abs(arg_2.a), 2147483647i), firstTrailingBit(-2147483647i), -21269i, select(-1675i, -1i, !global2[_wgslsmith_index_u32(1u, 1u)]))));
    let var_1 = Struct_2(arg_1.a, 2180f, ~0i, Struct_1(_wgslsmith_f_op_f32(abs(arg_1.d.c.x)), arg_2.b, _wgslsmith_f_op_vec4_f32(-arg_0.c), abs(-select(vec2<i32>(arg_0.d.x, 69393i), arg_2.d.d, var_0.x)), ~reverseBits(u_input.a.x & -43747i)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), 22u)]);
    var var_2 = !vec4<bool>(!var_0.x, all(vec4<bool>(true, all(var_0.yy), true, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 68893u), 1u)])), false, var_0.x);
    let var_3 = arg_1.e;
    return ~1u;
}

fn func_2() -> f32 {
    var var_0 = Struct_3(_wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(9548u, 1u, 24853u, 4294967295u))), vec4<u32>(0u, func_3(global0[_wgslsmith_index_u32(0u, 22u)], Struct_2(u_input.a.x, -237f, -1i, Struct_1(global1.x, global1.x, vec4<f32>(global1.x, global1.x, 1000f, 236f), u_input.a.wx, u_input.a.x), global0[_wgslsmith_index_u32(0u, 22u)]), Struct_2(u_input.a.x, global1.x, u_input.a.x, Struct_1(global1.x, global1.x, vec4<f32>(global1.x, global1.x, 1568f, global1.x), vec2<i32>(8088i, 19502i), 2147483647i), Struct_1(-1306f, global1.x, vec4<f32>(global1.x, 760f, global1.x, -1040f), u_input.a.xy, u_input.a.x))) & (1u >> (1u % 32u)), 33389u, ~select(30835u, 34598u, global2[_wgslsmith_index_u32(4294967295u, 1u)]))), global1.x);
    let var_1 = ~_wgslsmith_clamp_u32(4294967295u, var_0.a, var_0.a);
    global1 = vec4<f32>(_wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(sign(global1.x))), 764f, global1.x, _wgslsmith_f_op_f32(max(-2283f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -431f)))));
    let var_2 = !(!select(vec4<bool>(true, true, true, select(true, global2[_wgslsmith_index_u32(var_1, 1u)], global2[_wgslsmith_index_u32(var_0.a, 1u)])), !select(vec4<bool>(true, false, global2[_wgslsmith_index_u32(var_0.a, 1u)], true), vec4<bool>(false, true, global2[_wgslsmith_index_u32(var_0.a, 1u)], global2[_wgslsmith_index_u32(var_0.a, 1u)]), true), !select(vec4<bool>(global2[_wgslsmith_index_u32(var_0.a, 1u)], global2[_wgslsmith_index_u32(var_0.a, 1u)], false, true), vec4<bool>(global2[_wgslsmith_index_u32(0u, 1u)], false, true, true), global2[_wgslsmith_index_u32(33562u, 1u)])));
    var var_3 = _wgslsmith_f_op_f32(-var_0.b);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -414f), _wgslsmith_f_op_f32(abs(1083f)), select(false, var_2.x, false))))))));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = !all(!vec3<bool>(true, !global2[_wgslsmith_index_u32(arg_0.a, 1u)], true));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * -1353f)) - 2033f), global1.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.c) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(f32(-1f) * -551f), 893f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(763f, global1.x, -1000f, -690f) + _wgslsmith_f_op_vec4_f32(-arg_2.c)))), u_input.a.wx, 1i);
    let var_2 = _wgslsmith_sub_vec2_i32(abs(u_input.a.ww), arg_2.d);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2()))), -1447f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(306f, var_1.a))), -530f))));
    let var_4 = vec4<u32>(~arg_1.x, 35422u, _wgslsmith_div_u32(func_3(Struct_1(global1.x, 330f, vec4<f32>(arg_2.a, 1521f, arg_2.b, 567f), u_input.a.wx, u_input.a.x), Struct_2(-27621i, -1228f, 35581i, global0[_wgslsmith_index_u32(arg_1.x, 22u)], arg_2), Struct_2(arg_2.e, var_1.c.x, 0i, Struct_1(arg_2.b, arg_0.b, vec4<f32>(382f, arg_2.c.x, var_3.x, var_3.x), vec2<i32>(u_input.a.x, arg_2.d.x), u_input.a.x), arg_2)), _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.a, 10199u), ~vec2<u32>(25329u, 4294967295u))), ~arg_0.a) & ~vec4<u32>(37878u, arg_1.x, _wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_1.x, arg_1.x), arg_1.x), _wgslsmith_mod_u32(~arg_1.x, 6214u << (arg_1.x % 32u)));
    return arg_2;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: i32, arg_3: bool) -> i32 {
    let var_0 = func_1(Struct_3(~_wgslsmith_clamp_u32(max(0u, 44449u), 1u, reverseBits(22158u)), arg_0), ~(~_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(47649u, 1u, 0u), vec3<u32>(12015u, 4294967295u, 5010u), vec3<u32>(4294967295u, 1098u, 1u)), vec3<u32>(35229u, 1u, 1u))), arg_1.d, vec3<bool>(any(select(!vec4<bool>(true, arg_3, arg_3, arg_3), !vec4<bool>(arg_3, true, global2[_wgslsmith_index_u32(4294967295u, 1u)], false), true)), select(all(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 1u)], false)), true, false) != all(!vec4<bool>(false, global2[_wgslsmith_index_u32(100111u, 1u)], arg_3, arg_3)), all(select(select(vec3<bool>(false, arg_3, true), vec3<bool>(true, true, false), true), select(vec3<bool>(false, false, global2[_wgslsmith_index_u32(4294967295u, 1u)]), vec3<bool>(arg_3, arg_3, true), vec3<bool>(arg_3, true, true)), vec3<bool>(true, true, global2[_wgslsmith_index_u32(97218u, 1u)])))));
    var var_1 = ~(~15485u);
    var var_2 = ~select(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 54741u, 0u, 0u), vec4<u32>(1u, 7107u, 16268u, 1u)), vec4<u32>(80168u, 1u, _wgslsmith_clamp_u32(31078u, 17626u, 4294967295u), 1u), vec4<bool>(select(false, false, global2[_wgslsmith_index_u32(1u, 1u)]), global2[_wgslsmith_index_u32(0u, 1u)] && arg_3, all(vec2<bool>(true, arg_3)), select(false, global2[_wgslsmith_index_u32(12043u, 1u)], true))) << (_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(~1u, 16256u, abs(17947u), ~0u), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(0u, 17891u, 9945u, 1u)), vec4<u32>(1u, 1u, 1u, 1u))) % vec4<u32>(32u));
    var var_3 = 1u;
    global2 = array<bool, 1>();
    return ~_wgslsmith_mod_i32(u_input.a.x & var_0.e, min(firstLeadingBit(i32(-1i) * -28624i), 2147483647i));
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: vec3<bool>) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(13338u, 22u)];
    let var_1 = ~6762u;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(314f, _wgslsmith_f_op_f32(var_0.b * global1.x), _wgslsmith_f_op_f32(min(-969f, -1527f)), _wgslsmith_f_op_f32(min(-783f, arg_1)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.c * vec4<f32>(arg_1, -512f, -1499f, 838f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(746f, var_0.a, var_0.b, -1485f) - vec4<f32>(global1.x, -831f, -1742f, 448f))), var_0.c, any(select(arg_2.zy, arg_2.yx, false))))));
    global3 = -((-24965i | arg_0) ^ -var_0.e) >> (_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(max(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1, var_1, var_1, 1u), vec4<u32>(4294967295u, 0u, 4294967295u, var_1)), vec4<u32>(1u, var_1, var_1, var_1)), vec4<u32>(min(var_1, var_1), select(var_1, 65950u, true), 21758u, ~var_1)), _wgslsmith_dot_vec3_u32(select(firstLeadingBit(vec3<u32>(var_1, 4294967295u, 27901u)), ~vec3<u32>(var_1, var_1, var_1), global2[_wgslsmith_index_u32(countOneBits(var_1), 1u)]), ~firstLeadingBit(vec3<u32>(4294967295u, 79399u, 1u))), var_1) % 32u);
    var var_2 = func_1(Struct_3(firstLeadingBit(min(_wgslsmith_add_u32(var_1, 0u), var_1)), global1.x), ~(~firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(var_1, 4294967295u, var_1), vec3<u32>(var_1, var_1, 4294967295u)))), func_1(Struct_3(~0u, arg_1), ~vec3<u32>(func_3(Struct_1(arg_1, arg_1, vec4<f32>(var_0.c.x, var_0.a, -300f, -1000f), vec2<i32>(arg_0, var_0.d.x), 0i), Struct_2(21306i, var_0.a, u_input.a.x, global0[_wgslsmith_index_u32(var_1, 22u)], Struct_1(-1887f, global1.x, vec4<f32>(global1.x, -340f, global1.x, 1000f), u_input.a.yz, u_input.a.x)), Struct_2(-49795i, var_0.b, -1i, Struct_1(194f, 698f, vec4<f32>(-1147f, global1.x, var_0.a, arg_1), u_input.a.zx, 1i), Struct_1(-963f, global1.x, vec4<f32>(var_0.b, -316f, -593f, -143f), vec2<i32>(-44255i, var_0.e), var_0.d.x))), 4294967295u, 0u), func_1(Struct_3(var_1, _wgslsmith_div_f32(global1.x, -290f)), ~(~vec3<u32>(var_1, 4294967295u, 0u)), func_1(Struct_3(29862u, 130f), _wgslsmith_mult_vec3_u32(vec3<u32>(var_1, 0u, 4294967295u), vec3<u32>(1u, 58323u, 54450u)), global0[_wgslsmith_index_u32(4294967295u, 22u)], !arg_2), vec3<bool>(!global2[_wgslsmith_index_u32(var_1, 1u)], false, arg_2.x)), arg_2), vec3<bool>(_wgslsmith_add_i32(-1i >> (var_1 % 32u), max(u_input.a.x, var_0.d.x)) == var_0.d.x, true, select(any(select(vec4<bool>(false, true, arg_2.x, true), vec4<bool>(true, false, arg_2.x, global2[_wgslsmith_index_u32(var_1, 1u)]), global2[_wgslsmith_index_u32(63707u, 1u)])), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_1, 0u, var_1, 20701u), vec4<u32>(0u, var_1, var_1, 25757u)), vec4<u32>(20193u, var_1, 17364u, var_1) | vec4<u32>(15710u, 4294967295u, var_1, var_1)), 1u)], true))).e;
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = max(u_input.a.x, func_5(func_4(global1.x, Struct_2(-1i >> (1u % 32u), 1274f, select(23834i, u_input.a.x, global2[_wgslsmith_index_u32(43983u, 1u)]), func_1(Struct_3(4294967295u, 1728f), vec3<u32>(4294967295u, 476u, 0u), Struct_1(337f, global1.x, vec4<f32>(global1.x, -559f, global1.x, global1.x), vec2<i32>(0i, -8921i), u_input.a.x), vec3<bool>(global2[_wgslsmith_index_u32(0u, 1u)], false, true)), Struct_1(606f, global1.x, vec4<f32>(-540f, 716f, -291f, -1080f), u_input.a.ww, 0i)), u_input.a.x, true), _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(f32(-1f) * -592f)), select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, global2[_wgslsmith_index_u32(4995u, 1u)], true)), select(select(vec3<bool>(true, false, global2[_wgslsmith_index_u32(4294967295u, 1u)]), vec3<bool>(global2[_wgslsmith_index_u32(88586u, 1u)], global2[_wgslsmith_index_u32(20717u, 1u)], true), global2[_wgslsmith_index_u32(7846u, 1u)]), select(vec3<bool>(false, true, false), vec3<bool>(global2[_wgslsmith_index_u32(0u, 1u)], true, global2[_wgslsmith_index_u32(0u, 1u)]), vec3<bool>(global2[_wgslsmith_index_u32(0u, 1u)], false, global2[_wgslsmith_index_u32(4294967295u, 1u)])), vec3<bool>(global2[_wgslsmith_index_u32(101355u, 1u)], global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(3684u, 1u)])), false)));
    let var_2 = Struct_1(global1.x, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(469f, -441f, 1434f, global1.x) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1294f, 610f, -290f, -981f), vec4<f32>(global1.x, -703f, -823f, 615f)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1753f, global1.x, 1917f, 1035f))))))), u_input.a.xw, u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(-444f)), global1.x, ~firstLeadingBit(min(-var_2.e, _wgslsmith_sub_i32(-49866i, var_2.e))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-561f * global1.x))), -776f, _wgslsmith_f_op_f32(step(-853f, _wgslsmith_f_op_f32(-770f * 102f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.a, var_2.a, global1.x, var_2.c.x), vec4<f32>(346f, 474f, -812f, 975f)), vec4<f32>(154f, var_2.c.x, -874f, 746f), vec4<bool>(true, true, true, true))))));
}

