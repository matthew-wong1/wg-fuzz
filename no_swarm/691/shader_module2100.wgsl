struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec2<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1410f, false, -837f);

var<private> global1: array<vec2<i32>, 19> = array<vec2<i32>, 19>(vec2<i32>(-1i, 29410i), vec2<i32>(8504i, -1i), vec2<i32>(0i, 0i), vec2<i32>(29709i, 2147483647i), vec2<i32>(i32(-2147483648), -3645i), vec2<i32>(67508i, -1299i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(59493i, 1i), vec2<i32>(0i, 26241i), vec2<i32>(16920i, 2147483647i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(2147483647i, -1i), vec2<i32>(-68473i, -15095i), vec2<i32>(0i, 745i), vec2<i32>(-41343i, 0i), vec2<i32>(13098i, -1i), vec2<i32>(i32(-2147483648), 38709i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(50777i, -29984i));

var<private> global2: array<bool, 25> = array<bool, 25>(true, true, false, true, true, true, true, false, false, false, true, false, true, false, true, false, false, false, false, false, false, true, true, true, false);

var<private> global3: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(1u, 4294967295u, 47064u), vec3<u32>(0u, 2579u, 54348u), vec3<u32>(4294967295u, 1u, 47828u), vec3<u32>(0u, 1u, 35307u), vec3<u32>(1u, 11883u, 6210u), vec3<u32>(4294967295u, 1u, 8481u), vec3<u32>(0u, 4294967295u, 61711u), vec3<u32>(1447u, 1u, 32313u), vec3<u32>(4294967295u, 0u, 19542u), vec3<u32>(50443u, 1u, 28272u), vec3<u32>(4294967295u, 16318u, 19637u), vec3<u32>(25939u, 12977u, 9678u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(0u, 1u, 0u), vec3<u32>(0u, 0u, 15317u), vec3<u32>(0u, 4294967295u, 43196u), vec3<u32>(0u, 78251u, 1u), vec3<u32>(88961u, 6965u, 57561u), vec3<u32>(4294967295u, 32822u, 10867u), vec3<u32>(0u, 1u, 1u), vec3<u32>(81812u, 0u, 4294967295u), vec3<u32>(4294967295u, 58496u, 1u), vec3<u32>(1u, 0u, 77086u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(66046u, 62808u, 4994u), vec3<u32>(18925u, 26967u, 29828u), vec3<u32>(4294967295u, 468u, 0u), vec3<u32>(0u, 93262u, 1193u), vec3<u32>(4294967295u, 56287u, 0u));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(-2427f, global2[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 66936u), vec2<u32>(1u, 11116u)))), 25u)], -1275f);
    global2 = array<bool, 25>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(969f))))), false, _wgslsmith_f_op_f32(f32(-1f) * -202f));
    let var_2 = select(countOneBits(~(-_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, u_input.a, u_input.a), vec3<i32>(2147483647i, -9972i, u_input.a)))), vec3<i32>(_wgslsmith_add_i32(-1i, firstLeadingBit(u_input.a)), 2147483647i & _wgslsmith_sub_i32(-u_input.a, 6128i), -7266i), true);
    var var_3 = vec2<i32>(2147483647i, ~var_2.x);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.a)));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.c, 380f))), !any(select(vec4<bool>(true, global0.b, global2[_wgslsmith_index_u32(arg_0.x, 25u)], false), vec4<bool>(global2[_wgslsmith_index_u32(arg_0.x, 25u)], global2[_wgslsmith_index_u32(arg_0.x, 25u)], global0.b, global0.b), vec4<bool>(false, global2[_wgslsmith_index_u32(54082u, 25u)], global0.b, true))) | false, _wgslsmith_f_op_f32(func_3()));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), global0.b, global0.c);
    let var_2 = !(!select(!(!vec3<bool>(var_0.b, var_1.b, true)), select(vec3<bool>(var_1.b, var_1.b, var_0.b), select(vec3<bool>(true, false, var_0.b), vec3<bool>(true, false, false), global0.b), var_0.b), (u_input.a >= u_input.a) & global2[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.x, arg_0.x), 25u)]));
    let var_3 = true;
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-438f + _wgslsmith_f_op_f32(f32(-1f) * -881f)))), global0.b, var_1.a);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec3<i32>) -> vec4<bool> {
    var var_0 = func_2(_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(max(~9826u, 1u), reverseBits(firstLeadingBit(4294967295u)), 1u, select(1u, 1u, all(vec3<bool>(true, global0.b, true))))));
    var var_1 = Struct_1(var_0.c, !any(vec4<bool>(func_2(vec4<u32>(1u, 4294967295u, 18270u, 10073u)).b, false, true, arg_0 > var_0.a)), -1000f);
    var var_2 = vec4<f32>(-523f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.c - 297f), -375f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1555f * 1000f))) * _wgslsmith_f_op_f32(-func_2(~vec4<u32>(0u, 1u, 1u, 88974u)).c)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(655f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(global0.c, global0.a), _wgslsmith_f_op_f32(step(340f, _wgslsmith_f_op_f32(global0.a + arg_1.c)))))));
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(1f)))), arg_1.a));
    global1 = array<vec2<i32>, 19>();
    return vec4<bool>(~(-max(u_input.a, -38089i)) <= u_input.a, true, func_2(select(~vec4<u32>(0u, 0u, 1u, 14778u), vec4<u32>(12712u, 63481u, 0u, 4294967295u), all(vec2<bool>(true, false))) & ~_wgslsmith_mult_vec4_u32(vec4<u32>(2187u, 42368u, 4507u, 0u), vec4<u32>(0u, 0u, 0u, 1u))).b, (i32(-1i) * -firstTrailingBit(u_input.a)) == -((u_input.a | arg_2.x) << (4294967295u % 32u)));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = 4294967295u;
    global1 = array<vec2<i32>, 19>();
    let var_1 = arg_2;
    var var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, countOneBits(~_wgslsmith_clamp_u32(4294967295u, 1u, 6501u)), ~109155u, _wgslsmith_clamp_u32(~(~var_0), var_0, arg_0.x)), ~vec4<u32>(~_wgslsmith_div_u32(var_0, var_0), _wgslsmith_add_u32(~147890u, 7022u), firstLeadingBit(min(var_0, 1u)), arg_0.x));
    var_2 = abs(~vec4<u32>(0u, arg_0.x, 10474u, arg_0.x | 1u)) ^ _wgslsmith_mod_vec4_u32(reverseBits(~firstTrailingBit(vec4<u32>(var_0, 0u, 23752u, 1u))), vec4<u32>(~0u, ~0u, 4294967295u, 1u) ^ ~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_0, var_2.x, 33496u), vec4<u32>(54078u, 63384u, arg_0.x, var_0)));
    return func_2(vec4<u32>(var_2.x, ~var_2.x, 4294967295u, ~abs(var_2.x) | 4294967295u));
}

fn func_1(arg_0: i32) -> bool {
    var var_0 = Struct_1(global0.c, true, _wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(max(559f, global0.a))));
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2884f, global0.a, 872f, global0.c) + vec4<f32>(-1000f, -1268f, var_0.c, global0.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(965f, 972f, -1050f, -1487f), vec4<f32>(-378f, 1609f, var_0.a, var_0.a), vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 25u)], false, false))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1823f, 1387f, -937f, var_0.a), vec4<f32>(-2198f, global0.c, -232f, var_0.c)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(floor(global0.a)), -967f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c * -713f) * 1456f))))));
    var var_2 = func_5(vec2<u32>(56438u, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(10464u, 0u), vec2<u32>(0u, 0u)))), func_4(_wgslsmith_f_op_f32(round(var_0.c)), func_2(~vec4<u32>(1u, 1u, 1u, 1u)), select(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(4899i, u_input.a, arg_0), vec3<i32>(arg_0, u_input.a, u_input.a)), max(vec3<i32>(-2147483647i, -17754i, u_input.a), vec3<i32>(arg_0, u_input.a, arg_0)), abs(vec3<i32>(-15906i, u_input.a, u_input.a))), reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, 40091i, arg_0), vec3<i32>(1i, u_input.a, 1i), vec3<i32>(63446i, arg_0, arg_0))), any(!vec4<bool>(false, false, global2[_wgslsmith_index_u32(5729u, 25u)], global2[_wgslsmith_index_u32(612u, 25u)])))), Struct_1(196f, global2[_wgslsmith_index_u32(~(~reverseBits(2605u)), 25u)], _wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(-326f * _wgslsmith_f_op_f32(func_3())))), Struct_1(var_1.x, !global2[_wgslsmith_index_u32(0u, 25u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global0.c))))))));
    var_2 = Struct_1(_wgslsmith_f_op_f32(select(-867f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1305f) - _wgslsmith_div_f32(var_0.c, 1912f)) - -1655f), true)), false == !all(select(vec4<bool>(true, false, var_0.b, true), vec4<bool>(global2[_wgslsmith_index_u32(18150u, 25u)], false, true, var_2.b), false)), -609f);
    global0 = Struct_1(_wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-422f - 117f)))), any(!vec3<bool>(all(vec2<bool>(global0.b, global2[_wgslsmith_index_u32(4294967295u, 25u)])), global2[_wgslsmith_index_u32(4922u, 25u)], false)), var_0.a);
    return !var_2.b;
}

fn func_6(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: i32) -> Struct_1 {
    global2 = array<bool, 25>();
    global2 = array<bool, 25>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + global0.a));
    let var_1 = func_5(~vec2<u32>(~1u, max(countOneBits(21397u), _wgslsmith_add_u32(0u, 44278u))), func_4(_wgslsmith_f_op_f32(select(arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-925f + -304f)), arg_0.b)), func_5(~(~vec2<u32>(58065u, 50187u)), arg_1, Struct_1(_wgslsmith_div_f32(arg_0.a, arg_0.a), !global0.b, -2161f), func_5(vec2<u32>(1u, 1u), !arg_1, Struct_1(-867f, global2[_wgslsmith_index_u32(8815u, 25u)], global0.a), arg_0)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, -u_input.a, ~(-16725i)), select(vec3<i32>(arg_2, -26856i, -15151i) >> (global3[_wgslsmith_index_u32(57032u, 29u)] % vec3<u32>(32u)), vec3<i32>(arg_2, u_input.a, u_input.a) ^ vec3<i32>(arg_2, 1i, u_input.a), !vec3<bool>(global2[_wgslsmith_index_u32(25532u, 25u)], false, false)))), arg_0, func_5(vec2<u32>(_wgslsmith_add_u32(0u, 4294967295u), ~firstTrailingBit(20445u)), vec4<bool>(all(vec2<bool>(false, global2[_wgslsmith_index_u32(18124u, 25u)])), true, func_5(select(vec2<u32>(80114u, 22561u), vec2<u32>(50482u, 52184u), arg_0.b), vec4<bool>(global2[_wgslsmith_index_u32(1u, 25u)], false, false, arg_1.x), func_5(vec2<u32>(105753u, 0u), vec4<bool>(global0.b, false, true, arg_0.b), Struct_1(arg_0.a, true, global0.a), arg_0), Struct_1(-1000f, arg_0.b, -1094f)).b, true), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-512f - 1068f) + global0.c), _wgslsmith_div_f32(-875f, global0.a) > _wgslsmith_f_op_f32(f32(-1f) * -456f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - global0.a))), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.c))), arg_1.x, _wgslsmith_f_op_f32(select(global0.c, _wgslsmith_f_op_f32(round(arg_0.c)), true)))));
    var var_2 = arg_2;
    return func_2((vec4<u32>(_wgslsmith_div_u32(1u, 4294967295u), 1u, 1u, 128816u) << (select(vec4<u32>(11696u, 7955u, 4294967295u, 0u), vec4<u32>(65175u, 4294967295u, 0u, 1u), vec4<bool>(arg_1.x, arg_1.x, var_1.b, var_1.b)) % vec4<u32>(32u))) & select(abs(max(vec4<u32>(62370u, 1u, 29246u, 89154u), vec4<u32>(4294967295u, 4294967295u, 120542u, 32993u))), abs(select(vec4<u32>(0u, 2048u, 0u, 18659u), vec4<u32>(62493u, 28242u, 1u, 28033u), arg_1.x)), global0.b));
}

fn func_7(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = vec3<i32>(firstLeadingBit(u_input.a | reverseBits(u_input.a)), ~u_input.a, firstLeadingBit(_wgslsmith_clamp_i32(-u_input.a, -1i, select(1i | u_input.a, u_input.a, !global2[_wgslsmith_index_u32(1u, 25u)]))));
    let var_1 = vec4<u32>(1u, 0u, ~countOneBits(68769u), ~(~1u));
    global2 = array<bool, 25>();
    let var_2 = !vec4<bool>(!arg_2.b, true, global2[_wgslsmith_index_u32(18992u, 25u)], func_5(~vec2<u32>(4294967295u, var_1.x) & abs(var_1.yy), !(!vec4<bool>(global2[_wgslsmith_index_u32(45752u, 25u)], true, arg_0.b, true)), func_6(func_6(Struct_1(1087f, global0.b, -1041f), vec4<bool>(false, false, true, true), 8746i), func_4(-267f, Struct_1(402f, false, 922f), var_0), u_input.a), func_2(vec4<u32>(var_1.x, 9887u, var_1.x, var_1.x) >> (var_1 % vec4<u32>(32u)))).b);
    global0 = Struct_1(-772f, arg_1, -1128f);
    return -26926i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), any(select(vec4<bool>(false, true, global0.b, global0.b), vec4<bool>(false, false, false, false), global2[_wgslsmith_index_u32(1u, 25u)])), -1000f), !vec4<bool>(global0.b || global2[_wgslsmith_index_u32(4294967295u, 25u)], func_1(u_input.a), true, !global2[_wgslsmith_index_u32(64691u, 25u)]), abs(1i)), false, Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.c))), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~41719u, abs(14458u), firstLeadingBit(~1u)), 25u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a))), func_6(Struct_1(_wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(step(-496f, -497f))), global0.b, global0.c), !(!select(vec4<bool>(global0.b, global0.b, global0.b, global2[_wgslsmith_index_u32(28002u, 25u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(43993u, 25u)], global2[_wgslsmith_index_u32(65651u, 25u)], global0.b), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 25u)], true, false, false))), 7734i));
    let var_1 = vec3<bool>(global2[_wgslsmith_index_u32(1u, 25u)] != !func_5(vec2<u32>(0u, 57274u), func_4(global0.a, Struct_1(global0.c, global2[_wgslsmith_index_u32(50729u, 25u)], 854f), vec3<i32>(u_input.a, -1i, var_0)), func_6(Struct_1(global0.c, true, -723f), vec4<bool>(false, global2[_wgslsmith_index_u32(70535u, 25u)], global0.b, global2[_wgslsmith_index_u32(0u, 25u)]), u_input.a), Struct_1(1000f, true, 161f)).b, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(2066f, global0.a))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * global0.a), false, 193f), vec3<i32>(-(~4759i), u_input.a >> (_wgslsmith_sub_u32(3994u, 1u) % 32u), max(_wgslsmith_mod_i32(u_input.a, var_0), -2147483647i))).x, true | all(func_4(_wgslsmith_f_op_f32(272f + global0.c), func_6(Struct_1(global0.c, global0.b, 440f), vec4<bool>(false, false, global2[_wgslsmith_index_u32(4448u, 25u)], false), var_0), -vec3<i32>(-2147483647i, var_0, var_0)).xyx));
    var var_2 = (u_input.a & 1i) == ~max(7401i, ~0i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(797f - global0.c)), ~(~min(1u, 4294967295u)), _wgslsmith_div_u32(1u, ~(~(~13041u))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1019f, global0.c), vec2<f32>(global0.a, global0.c))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-331f, -1224f, global0.a, global0.c))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, global0.a, global0.a, 1000f)))))));
}

