struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(vec2<i32>(33762i, -13761i), vec3<i32>(14033i, 47909i, 2147483647i), Struct_1(vec3<f32>(654f, -1429f, 539f), vec4<i32>(2147483647i, 0i, 18584i, -1i), vec2<i32>(i32(-2147483648), i32(-2147483648)), true, vec4<i32>(41320i, -23818i, 5978i, i32(-2147483648)))), Struct_2(vec2<i32>(14348i, -1i), vec3<i32>(1i, 36288i, -22910i), Struct_1(vec3<f32>(196f, -414f, 819f), vec4<i32>(-1i, -16130i, 428i, 35344i), vec2<i32>(42237i, 650i), false, vec4<i32>(6766i, 51973i, 26636i, 1i))), Struct_2(vec2<i32>(17229i, -2494i), vec3<i32>(9022i, -1381i, 2147483647i), Struct_1(vec3<f32>(-593f, -2512f, 590f), vec4<i32>(1i, 2147483647i, 1i, -1i), vec2<i32>(38669i, 33002i), true, vec4<i32>(2147483647i, 0i, 0i, -19346i))), Struct_2(vec2<i32>(-38022i, 1i), vec3<i32>(-6808i, 0i, -1i), Struct_1(vec3<f32>(-203f, 574f, -2625f), vec4<i32>(0i, -74175i, 14417i, -9249i), vec2<i32>(-54434i, -25407i), true, vec4<i32>(-13160i, i32(-2147483648), 11282i, 1i))), Struct_2(vec2<i32>(2147483647i, 62234i), vec3<i32>(0i, 28591i, 2147483647i), Struct_1(vec3<f32>(1435f, -1207f, 1153f), vec4<i32>(i32(-2147483648), i32(-2147483648), -1197i, 33008i), vec2<i32>(-12770i, 60410i), true, vec4<i32>(-37288i, -24216i, -54331i, -26864i))), Struct_2(vec2<i32>(42103i, 22997i), vec3<i32>(-26589i, 30597i, -26891i), Struct_1(vec3<f32>(1690f, -1241f, -1778f), vec4<i32>(-56913i, -43771i, -1i, 30022i), vec2<i32>(-6374i, 35714i), false, vec4<i32>(31847i, 54890i, 2147483647i, 3070i))), Struct_2(vec2<i32>(0i, 0i), vec3<i32>(-15423i, 25398i, i32(-2147483648)), Struct_1(vec3<f32>(-182f, 209f, -1195f), vec4<i32>(-18036i, -20246i, 0i, -1i), vec2<i32>(i32(-2147483648), 67246i), true, vec4<i32>(-21760i, -35335i, 27966i, -26616i))), Struct_2(vec2<i32>(-1i, -31109i), vec3<i32>(i32(-2147483648), -31535i, 76086i), Struct_1(vec3<f32>(661f, 427f, -1408f), vec4<i32>(i32(-2147483648), -23081i, 2147483647i, i32(-2147483648)), vec2<i32>(-1i, 1i), false, vec4<i32>(i32(-2147483648), -1i, 2147483647i, 4987i))), Struct_2(vec2<i32>(2147483647i, 1i), vec3<i32>(1i, 2147483647i, 38638i), Struct_1(vec3<f32>(-672f, 822f, -800f), vec4<i32>(1i, 1i, i32(-2147483648), -1i), vec2<i32>(826i, 7940i), false, vec4<i32>(2147483647i, 0i, 0i, 1704i))), Struct_2(vec2<i32>(1939i, -1i), vec3<i32>(-5478i, 2147483647i, 0i), Struct_1(vec3<f32>(1000f, 2185f, -140f), vec4<i32>(3225i, -75425i, -641i, i32(-2147483648)), vec2<i32>(0i, -1i), true, vec4<i32>(1i, 4235i, 8906i, 8766i))), Struct_2(vec2<i32>(5574i, -49403i), vec3<i32>(-33676i, 312i, -1i), Struct_1(vec3<f32>(1290f, -1405f, -1000f), vec4<i32>(2147483647i, 10182i, -42581i, 8947i), vec2<i32>(2147483647i, 0i), true, vec4<i32>(1i, -9759i, 0i, -27153i))), Struct_2(vec2<i32>(2147483647i, 0i), vec3<i32>(-1i, -1i, i32(-2147483648)), Struct_1(vec3<f32>(296f, -1075f, 1000f), vec4<i32>(i32(-2147483648), -35662i, 2147483647i, -18043i), vec2<i32>(i32(-2147483648), 10078i), true, vec4<i32>(i32(-2147483648), 35612i, 29207i, 31603i))), Struct_2(vec2<i32>(i32(-2147483648), 1i), vec3<i32>(1i, -78580i, 2147483647i), Struct_1(vec3<f32>(1603f, 836f, -898f), vec4<i32>(2147483647i, -12807i, i32(-2147483648), -5503i), vec2<i32>(i32(-2147483648), 37234i), true, vec4<i32>(-22444i, 18868i, -1i, 0i))));

var<private> global1: vec2<bool>;

var<private> global2: Struct_1 = Struct_1(vec3<f32>(781f, 394f, -186f), vec4<i32>(-1i, i32(-2147483648), 2147483647i, 2147483647i), vec2<i32>(i32(-2147483648), 35294i), true, vec4<i32>(1i, 0i, -1i, 5532i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_3) -> vec3<f32> {
    var var_0 = ~firstLeadingBit(_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(-global2.b.zz, countOneBits(global2.b.zw)), -arg_0.b.zz));
    let var_1 = _wgslsmith_mod_vec3_u32(~(firstTrailingBit(~arg_1) & u_input.e), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~arg_1, vec3<u32>(4294967295u, u_input.a, arg_1.x)), vec3<u32>(1u, u_input.c, 1u)));
    var var_2 = firstTrailingBit(~(~select(vec4<u32>(49797u, arg_1.x, arg_1.x, arg_1.x) & vec4<u32>(arg_1.x, u_input.a, 4294967295u, 55843u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, var_1.x, 101453u, 2421u), vec4<u32>(12534u, 0u, var_1.x, var_1.x), vec4<u32>(4294967295u, 10689u, 80477u, u_input.c)), !global1.x)));
    let var_3 = 4294967295u;
    global0 = array<Struct_2, 13>();
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global2.a, vec3<f32>(arg_2.b.c.a.x, _wgslsmith_f_op_f32(select(-981f, global2.a.x, arg_2.c.c.a.x != -141f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1942f)), _wgslsmith_f_op_f32(1000f - -1246f)))), vec3<bool>(!(!global1.x), _wgslsmith_f_op_f32(f32(-1f) * -371f) == _wgslsmith_f_op_f32(-arg_0.a.x), all(!vec4<bool>(true, false, global1.x, global1.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a.x, -148f, 104f), arg_0.a) - vec3<f32>(446f, arg_0.a.x, -173f)))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32, arg_3: vec3<f32>) -> vec4<bool> {
    var var_0 = arg_1.e;
    var var_1 = firstLeadingBit(u_input.d.x);
    global0 = array<Struct_2, 13>();
    var var_2 = vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(~u_input.a, ~arg_2, 1u, reverseBits(19977u)), vec4<u32>(47311u, _wgslsmith_clamp_u32(u_input.c, 8063u, 44646u), 28657u, _wgslsmith_dot_vec4_u32(vec4<u32>(3582u, u_input.c, arg_2, u_input.c), vec4<u32>(u_input.e.x, 7350u, arg_2, 1u)))), ~(select(vec4<u32>(arg_2, arg_2, 0u, 26254u), vec4<u32>(arg_2, arg_2, arg_2, 15439u), vec4<bool>(true, true, false, global1.x)) << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 27610u, 10567u, 56424u), vec4<u32>(67805u, arg_2, u_input.a, arg_2)) % vec4<u32>(32u)))), ~u_input.c, _wgslsmith_dot_vec4_u32(countOneBits(abs(~vec4<u32>(29395u, u_input.e.x, u_input.c, 6914u))), _wgslsmith_add_vec4_u32(~firstLeadingBit(vec4<u32>(0u, 1u, 1u, u_input.e.x)), vec4<u32>(u_input.a, 0u, 26354u, u_input.a) ^ ~vec4<u32>(0u, 0u, u_input.a, arg_2))), _wgslsmith_dot_vec4_u32(vec4<u32>(min(1u, arg_2), reverseBits(1u), _wgslsmith_mult_u32(1u, arg_2), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, arg_2, 4294967295u), vec4<u32>(47588u, 17677u, 46031u, u_input.e.x))) & ~(~vec4<u32>(1u, arg_2, arg_2, u_input.c)), vec4<u32>(arg_2, ~abs(u_input.a), firstLeadingBit(arg_2 >> (4294967295u % 32u)), 4294967295u)));
    var var_3 = select(!(!vec4<bool>(global2.d, any(vec3<bool>(true, false, true)), !arg_1.d, !global2.d)), select(!vec4<bool>(true, var_2.x != var_2.x, false, global2.d), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, arg_1.d, global2.d, arg_1.d), global1.x || global1.x), vec4<bool>(!global2.d, select(global2.d, global1.x, true), any(vec3<bool>(global2.d, false, global2.d)), arg_1.d || true), true), select(vec4<bool>(!global1.x, select(arg_1.d, true, true), !global1.x, !global2.d), vec4<bool>(false, !global1.x, !arg_1.d, !global2.d), any(vec3<bool>(arg_1.d, true, arg_1.d)))), select(select(vec4<bool>(!arg_1.d, false || global1.x, false, global2.d), select(vec4<bool>(true, true, true, true), select(vec4<bool>(global2.d, false, arg_1.d, false), vec4<bool>(global1.x, false, true, global2.d), vec4<bool>(false, false, false, false)), vec4<bool>(global1.x, false, true, true)), vec4<bool>(true, global2.d, true, global1.x)), !select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, false, global1.x, arg_1.d), vec4<bool>(global2.d, true, global2.d, global1.x), true), false), !(!(!vec4<bool>(global2.d, false, true, global1.x)))));
    return !vec4<bool>(true, global2.d, all(select(var_3.xyy, !var_3.www, var_3.xyz)), true);
}

fn func_2() -> vec4<bool> {
    var var_0 = _wgslsmith_clamp_vec2_i32(abs(u_input.d.xw), firstLeadingBit(u_input.d.zw), -u_input.d.yy) >> (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u));
    var var_1 = func_4(vec2<i32>(0i, firstTrailingBit(u_input.b >> (41611u % 32u))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_1(global2.a, vec4<i32>(u_input.d.x, u_input.d.x, -15131i, -38404i), vec2<i32>(0i, global2.e.x), global1.x, vec4<i32>(global2.b.x, 0i, -1i, var_0.x)), vec3<u32>(u_input.e.x, 15644u, 73135u), Struct_3(global0[_wgslsmith_index_u32(63942u, 13u)], global0[_wgslsmith_index_u32(1u, 13u)], Struct_2(global2.c, global2.e.xxy, Struct_1(global2.a, global2.e, vec2<i32>(u_input.b, var_0.x), global1.x, global2.e)))))), global2.e, select(_wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(u_input.b, u_input.d.x)), reverseBits(u_input.d.wx)), -vec2<i32>(2147483647i, -39289i), -37459i < _wgslsmith_mod_i32(u_input.b, -22673i)), false, vec4<i32>(-1i) * -(~u_input.d)), countOneBits(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(9060u, 1u), 4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 0u, u_input.a, 1u), vec4<u32>(u_input.c, u_input.a, 16715u, 4294967295u)), vec4<u32>(9876u, u_input.e.x, 4294967295u, u_input.c)))), global2.a);
    let var_2 = global0[_wgslsmith_index_u32(min(67314u, ~u_input.c), 13u)];
    global2 = Struct_1(var_2.c.a, _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(abs(var_2.c.e), reverseBits(vec4<i32>(var_0.x, 14203i, -2147483647i, var_2.a.x))), global2.e), vec4<i32>(-56060i, -2147483647i, 34279i, ~(~var_2.b.x))), _wgslsmith_mod_vec2_i32(abs(u_input.d.zw), select(~vec2<i32>(var_0.x, var_0.x), -var_2.c.e.zx, !func_4(var_2.a, Struct_1(vec3<f32>(var_2.c.a.x, global2.a.x, -621f), vec4<i32>(-3350i, -2147483647i, -2147483647i, var_2.c.c.x), global2.c, global2.d, u_input.d), 98131u, global2.a).wy)), true, reverseBits(u_input.d));
    let var_3 = !(!(!((global1.x || global2.d) | (global2.a.x > 935f))));
    return !vec4<bool>(any(vec3<bool>(func_4(global2.e.xx, var_2.c, 4294967295u, var_2.c.a).x, var_3, true)), var_2.c.d, all(!var_1.yw), global1.x);
}

fn func_1() -> StorageBuffer {
    var var_0 = !(!func_2());
    var var_1 = Struct_3(global0[_wgslsmith_index_u32(9942u, 13u)], Struct_2(global2.e.yw, abs(vec3<i32>(_wgslsmith_sub_i32(-12869i, 3524i), 105131i, ~global2.b.x)), Struct_1(global2.a, global2.e >> (vec4<u32>(7796u, 1u, u_input.a, u_input.a) % vec4<u32>(32u)), u_input.d.yw, global1.x, u_input.d)), Struct_2(abs(global2.e.zy), abs(_wgslsmith_sub_vec3_i32(global2.b.zzz, u_input.d.zyz)), Struct_1(global2.a, u_input.d & global2.e, u_input.d.zw, true & (true & global2.d), abs(global2.e) >> (~vec4<u32>(1u, 42909u, u_input.a, u_input.c) % vec4<u32>(32u)))));
    let var_2 = select(vec3<u32>(u_input.a, reverseBits(~61582u), _wgslsmith_add_u32(21094u, ~u_input.e.x)), u_input.e, func_2().x);
    var var_3 = u_input.d.yzw;
    var var_4 = Struct_3(Struct_2(vec2<i32>(~var_3.x, -537i), _wgslsmith_clamp_vec3_i32(u_input.d.zzz, vec3<i32>(min(6732i, var_1.c.a.x), countOneBits(17728i), ~global2.b.x), select(_wgslsmith_mult_vec3_i32(vec3<i32>(global2.b.x, 11045i, 2147483647i), u_input.d.wxx), vec3<i32>(0i, global2.c.x, var_3.x), vec3<bool>(true, false, global1.x))), var_1.a.c), Struct_2(vec2<i32>(~var_3.x, max(-20714i, u_input.b ^ global2.c.x)), vec3<i32>(u_input.b, var_3.x, -52445i), var_1.c.c), Struct_2(var_3.yy | _wgslsmith_mult_vec2_i32(vec2<i32>(var_3.x, global2.c.x), vec2<i32>(var_1.c.b.x, -3248i)), firstLeadingBit(vec3<i32>(u_input.d.x >> (1u % 32u), u_input.b, var_1.b.a.x)), var_1.a.c));
    return StorageBuffer(vec4<u32>(~u_input.c, ~(~(~1u)), 20715u, ~var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

