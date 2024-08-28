struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5> = array<u32, 5>(32714u, 4294967295u, 86932u, 0u, 4294967295u);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<i32>) -> Struct_2 {
    global0 = array<u32, 5>();
    var var_0 = firstLeadingBit(~2147483647i);
    var var_1 = true;
    let var_2 = arg_1.a.wz;
    global0 = array<u32, 5>();
    return arg_2;
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>) -> bool {
    global0 = array<u32, 5>();
    var var_0 = ~vec2<i32>(u_input.c, firstTrailingBit(-16835i));
    var_0 = arg_1.zx;
    var_0 = _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(~abs(vec2<i32>(u_input.c, 1i)), vec2<i32>(~1i, _wgslsmith_mod_i32(arg_1.x | u_input.c, 2212i))), ~(-vec2<i32>(u_input.a.x, 11331i) ^ vec2<i32>(~arg_1.x, var_0.x)));
    var var_1 = arg_1.yy;
    return arg_0.c.c;
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: vec4<i32>) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1060f, arg_1, arg_1, 1564f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1426f, arg_1, arg_1, -1012f) + vec4<f32>(arg_1, arg_1, arg_1, -2241f)))), vec4<f32>(_wgslsmith_f_op_f32(-547f + -918f), _wgslsmith_f_op_f32(arg_1 * arg_1), 1000f, _wgslsmith_div_f32(-576f, -358f)), true)))), vec2<bool>(func_2(arg_1, Struct_1(vec4<f32>(arg_1, arg_1, -307f, -687f), vec2<bool>(false, true), true), func_2(2226f, Struct_1(vec4<f32>(arg_1, arg_1, 694f, -354f), vec2<bool>(true, true), false), Struct_2(vec3<u32>(8860u, global0[_wgslsmith_index_u32(0u, 5u)], 0u), Struct_1(vec4<f32>(107f, -559f, arg_1, arg_1), vec2<bool>(false, true), false), Struct_1(vec4<f32>(arg_1, arg_1, -338f, -723f), vec2<bool>(false, true), true), vec4<i32>(0i, -1975i, arg_2.x, u_input.c)), vec4<i32>(8782i, arg_2.x, 0i, 2147483647i)), vec4<i32>(1i, -20763i, arg_2.x, 2147483647i)).b.c | true, -1010f >= arg_1), _wgslsmith_div_u32(u_input.b.x, 62623u) > countOneBits(firstLeadingBit(~66270u)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a.yz, u_input.a.xy, u_input.a.zy) & func_2(-2329f, arg_0, Struct_2(vec3<u32>(u_input.d, 1u, global0[_wgslsmith_index_u32(16140u, 5u)]), Struct_1(vec4<f32>(-807f, -413f, arg_1.a.x, arg_0.a.x), vec2<bool>(arg_0.c, false), false), Struct_1(vec4<f32>(arg_0.a.x, -108f, -1000f, -1000f), arg_1.b, true), vec4<i32>(-15742i, u_input.a.x, u_input.e, u_input.e)), vec4<i32>(2147483647i, u_input.a.x, u_input.e, u_input.a.x)).d.xz, u_input.a.yz), u_input.e), vec2<i32>(_wgslsmith_sub_i32(-45093i, ~u_input.c), select(-(~u_input.a.x), max(-2147483647i, u_input.a.x), !(u_input.a.x <= 49677i))), vec2<i32>(13706i, 18174i));
    let var_1 = Struct_2(vec3<u32>(func_2(arg_0.a.x, func_4(u_input.b.zz, _wgslsmith_f_op_f32(min(993f, 557f)), vec4<i32>(u_input.c, var_0.x, 2147483647i, u_input.c)), Struct_2(vec3<u32>(u_input.b.x, u_input.d, global0[_wgslsmith_index_u32(58031u, 5u)]), arg_1, arg_0, vec4<i32>(-38900i, u_input.a.x, var_0.x, 30790i)), vec4<i32>(-u_input.a.x, 4013i, ~u_input.a.x, var_0.x)).a.x, 14498u, 0u), arg_1, func_2(-210f, Struct_1(vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(trunc(arg_1.a.x)), 573f, 366f), arg_0.b, any(select(vec3<bool>(arg_0.c, true, false), vec3<bool>(arg_0.b.x, true, arg_1.b.x), arg_1.b.x))), Struct_2(vec3<u32>(u_input.d, firstLeadingBit(191u), 4294967295u), Struct_1(vec4<f32>(1203f, arg_0.a.x, arg_1.a.x, arg_2.x), !vec2<bool>(arg_0.c, true), arg_0.c), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a.x, -2425f, -776f, -135f), arg_1.a), vec2<bool>(true, arg_1.b.x), true), vec4<i32>(var_0.x | var_0.x, ~var_0.x, var_0.x, var_0.x)), vec4<i32>(~var_0.x, _wgslsmith_mult_i32(var_0.x, u_input.a.x) | func_2(arg_2.x, Struct_1(arg_0.a, arg_0.b, true), Struct_2(u_input.b, Struct_1(vec4<f32>(arg_1.a.x, arg_1.a.x, 1961f, -321f), vec2<bool>(true, arg_0.b.x), arg_0.c), Struct_1(arg_0.a, vec2<bool>(false, false), true), vec4<i32>(0i, 4574i, var_0.x, 20326i)), vec4<i32>(5793i, u_input.c, 36207i, -8344i)).d.x, -(~u_input.c), abs(-var_0.x))).c, select(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.c, 16668i, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(var_0.x, -2147483647i, var_0.x))), ~(~vec4<i32>(u_input.c, -40318i, -2147483647i, u_input.a.x))), max(vec4<i32>(-15665i, 1i, -1i, ~u_input.c), vec4<i32>(u_input.a.x, min(u_input.e, 1i), var_0.x, u_input.c & -10169i)), (true && (true != arg_1.c)) & any(vec2<bool>(arg_0.c, arg_0.b.x))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-func_2(-598f, func_2(-118f, Struct_1(arg_1.a, arg_1.b, false), Struct_2(var_1.a, Struct_1(arg_1.a, vec2<bool>(arg_1.b.x, arg_1.b.x), true), var_1.c, var_1.d), var_1.d).b, Struct_2(var_1.a, Struct_1(vec4<f32>(-759f, var_1.b.a.x, arg_2.x, arg_0.a.x), vec2<bool>(var_1.b.b.x, var_1.b.b.x), true), Struct_1(arg_1.a, var_1.b.b, true), vec4<i32>(var_1.d.x, -2147483647i, 2147483647i, 2147483647i)), max(var_1.d, var_1.d)).b.a)), !(!arg_0.b), func_4(~_wgslsmith_add_vec2_u32(u_input.b.yx, var_1.a.xz), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -235f))), var_1.d).c & (~_wgslsmith_sub_u32(25823u, var_1.a.x) == 0u));
    var var_3 = firstLeadingBit(~abs(4606i));
    let var_4 = _wgslsmith_f_op_f32(var_2.a.x * arg_2.x);
    return var_1;
}

fn func_1(arg_0: vec3<bool>) -> vec4<bool> {
    global0 = array<u32, 5>();
    let var_0 = func_5(func_4(select(u_input.b.zy | _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, 106057u), vec2<u32>(global0[_wgslsmith_index_u32(46604u, 5u)], 1u), u_input.b.zy), vec2<u32>(firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 5u)]), _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 5u)], 53314u), u_input.b.xx)), func_3(func_2(-1086f, Struct_1(vec4<f32>(1705f, -1579f, -965f, -263f), vec2<bool>(arg_0.x, false), arg_0.x), Struct_2(vec3<u32>(66377u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 5u)], 5u)], global0[_wgslsmith_index_u32(17098u, 5u)]), Struct_1(vec4<f32>(-736f, 1981f, -1173f, -399f), arg_0.zx, arg_0.x), Struct_1(vec4<f32>(-2757f, 112f, 247f, -512f), vec2<bool>(true, arg_0.x), arg_0.x), vec4<i32>(u_input.a.x, u_input.a.x, -10758i, u_input.c)), vec4<i32>(6236i, u_input.e, 0i, u_input.e)), vec3<i32>(-16726i, -2147483647i, u_input.e))), 1829f, abs(vec4<i32>(func_2(1628f, Struct_1(vec4<f32>(-392f, 593f, -600f, 749f), vec2<bool>(true, arg_0.x), arg_0.x), Struct_2(u_input.b, Struct_1(vec4<f32>(747f, 389f, -1000f, -1000f), vec2<bool>(true, true), false), Struct_1(vec4<f32>(-1367f, 379f, 913f, 749f), vec2<bool>(arg_0.x, false), true), vec4<i32>(u_input.e, -65239i, u_input.c, -1i)), vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, -2147483647i)).d.x, u_input.a.x, min(u_input.e, 8429i), -2230i))), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(190f, 1348f, arg_0.x)) * _wgslsmith_div_f32(984f, 416f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1413f, 455f)) + _wgslsmith_f_op_f32(ceil(-2630f)))), func_4(vec2<u32>(global0[_wgslsmith_index_u32(u_input.d, 5u)] & global0[_wgslsmith_index_u32(1u, 5u)], _wgslsmith_sub_u32(u_input.b.x, global0[_wgslsmith_index_u32(1u, 5u)])), -653f, max(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.c, u_input.a.x), vec4<i32>(-18898i, -42918i, 54355i, 11725i)), max(vec4<i32>(-1627i, u_input.e, 1i, -1i), vec4<i32>(u_input.c, u_input.c, 12731i, 7758i)))), Struct_2(_wgslsmith_clamp_vec3_u32(reverseBits(u_input.b), vec3<u32>(4294967295u, 69028u, u_input.b.x), u_input.b), func_4(~vec2<u32>(13542u, 131019u), 2296f, select(vec4<i32>(0i, u_input.a.x, u_input.e, u_input.a.x), vec4<i32>(u_input.e, u_input.e, u_input.c, 2961i), vec4<bool>(true, false, arg_0.x, true))), Struct_1(vec4<f32>(235f, -3437f, 827f, 1838f), !arg_0.zz, !arg_0.x), -firstLeadingBit(vec4<i32>(u_input.e, 2147483647i, 1i, u_input.e))), -vec4<i32>(62115i, u_input.e, ~2147483647i, -41286i << (1u % 32u))).c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1305f, -631f, 1131f))), vec3<f32>(-998f, -331f, 821f)) - vec3<f32>(_wgslsmith_f_op_f32(floor(596f)), _wgslsmith_f_op_f32(f32(-1f) * -278f), _wgslsmith_f_op_f32(step(-220f, 213f))))));
    let var_1 = 28061i;
    let var_2 = func_4(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, ~var_0.a.x, ~4294967295u), 29763u), _wgslsmith_div_u32(firstLeadingBit(81884u), 24713u)), _wgslsmith_f_op_f32(-var_0.b.a.x), vec4<i32>(var_1, 2147483647i & var_1, func_2(var_0.b.a.x, func_5(var_0.b, var_0.b, _wgslsmith_f_op_vec3_f32(-var_0.c.a.wzx)).c, func_5(func_4(vec2<u32>(4294967295u, var_0.a.x), -879f, vec4<i32>(var_0.d.x, -6033i, 31097i, u_input.e)), var_0.c, _wgslsmith_f_op_vec3_f32(ceil(var_0.b.a.xzz))), -vec4<i32>(-2147483647i, var_0.d.x, -3909i, var_1)).d.x, var_0.d.x));
    var var_3 = select(!arg_0, select(arg_0, !arg_0, arg_0), arg_0);
    return !select(select(select(vec4<bool>(arg_0.x, false, var_2.c, var_3.x), vec4<bool>(true, true, var_3.x, arg_0.x), vec4<bool>(var_0.c.b.x, true, arg_0.x, var_3.x)), !(!vec4<bool>(true, false, var_0.c.c, true)), var_3.x), vec4<bool>(!(!var_3.x), arg_0.x, (i32(-1i) * -1i) < abs(var_0.d.x), true), vec4<bool>(true, arg_0.x | true, true, !var_3.x));
}

fn func_6(arg_0: vec4<bool>, arg_1: i32, arg_2: vec2<u32>, arg_3: u32) -> Struct_1 {
    var var_0 = func_5(func_4(_wgslsmith_mod_vec2_u32(vec2<u32>(23393u, u_input.b.x), vec2<u32>(13173u, arg_3) >> (vec2<u32>(arg_2.x, global0[_wgslsmith_index_u32(4294967295u, 5u)]) % vec2<u32>(32u))) & ~(~vec2<u32>(u_input.b.x, 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-515f * -1258f)), vec4<i32>(-1i, -min(u_input.a.x, arg_1), -2147483647i, reverseBits(u_input.a.x) & -23323i)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_1(vec4<f32>(-832f, -572f, 912f, -809f), arg_0.ww, arg_0.x), Struct_1(vec4<f32>(141f, -482f, -385f, -1149f), arg_0.xy, false), vec3<f32>(691f, 1121f, 1000f)).b.a.x - _wgslsmith_f_op_f32(trunc(1190f)))), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1302f, -532f, -345f, -535f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-478f, -665f, -1214f, -1282f)))), !(!arg_0.xz), arg_0.x), func_5(func_5(Struct_1(vec4<f32>(995f, -1000f, -1000f, -1434f), vec2<bool>(false, arg_0.x), false), Struct_1(vec4<f32>(166f, -135f, -162f, -1000f), arg_0.zx, arg_0.x), vec3<f32>(1075f, 619f, 321f)).c, Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1150f, 2829f, -1680f, 1000f), vec4<f32>(914f, -623f, -1605f, -572f))), func_1(arg_0.wwx).zy, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(1357f, -813f, 1795f) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(135f, -2349f, 1371f), vec3<f32>(-430f, -600f, 194f))))), vec4<i32>(-1i) * -vec4<i32>(-28628i, 0i, -3688i, -2147483647i)).b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -466f), _wgslsmith_f_op_f32(135f + 2586f), _wgslsmith_f_op_f32(-207f * 1930f)))) * _wgslsmith_f_op_vec3_f32(-func_5(Struct_1(vec4<f32>(369f, 177f, -988f, 1000f), vec2<bool>(true, arg_0.x), arg_0.x), func_4(arg_2, -473f, vec4<i32>(1i, 1i, 2147483647i, u_input.e)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-566f, -394f, 1000f)))).c.a.zww)));
    var var_1 = u_input.a.x;
    var var_2 = vec4<u32>(arg_2.x, arg_3, abs(arg_2.x), var_0.a.x);
    var var_3 = !arg_0.yzz;
    var var_4 = Struct_2(_wgslsmith_sub_vec3_u32(~var_0.a, vec3<u32>(~10236u, global0[_wgslsmith_index_u32(arg_2.x | global0[_wgslsmith_index_u32(40755u, 5u)], 5u)] << (reverseBits(28658u) % 32u), ~_wgslsmith_sub_u32(u_input.d, var_2.x))), var_0.b, var_0.c, firstLeadingBit(-var_0.d));
    return func_5(Struct_1(func_5(Struct_1(vec4<f32>(var_0.b.a.x, var_0.c.a.x, 1679f, var_4.b.a.x), vec2<bool>(true, false), select(true, true, arg_0.x)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-909f, 749f, var_0.b.a.x, 967f)), !var_4.b.b, all(arg_0.wzz)), vec3<f32>(_wgslsmith_f_op_f32(-661f + var_0.b.a.x), var_4.b.a.x, 1840f)).b.a, func_2(1f, func_5(func_5(var_4.b, Struct_1(vec4<f32>(-577f, -955f, var_0.c.a.x, 814f), arg_0.ww, true), var_0.b.a.xzz).b, Struct_1(vec4<f32>(var_4.b.a.x, 195f, var_0.c.a.x, 411f), var_3.zx, var_3.x), vec3<f32>(var_4.b.a.x, -205f, 3132f)).c, Struct_2(vec3<u32>(129848u, 65463u, 1u), Struct_1(vec4<f32>(var_0.c.a.x, -1717f, -655f, -1000f), vec2<bool>(true, true), true), func_2(-1000f, Struct_1(var_0.c.a, vec2<bool>(var_4.c.b.x, var_4.b.b.x), true), Struct_2(vec3<u32>(var_0.a.x, global0[_wgslsmith_index_u32(u_input.b.x, 5u)], u_input.b.x), var_0.b, var_0.b, var_0.d), vec4<i32>(u_input.e, 4171i, -138898i, 0i)).b, vec4<i32>(var_4.d.x, var_0.d.x, u_input.c, u_input.a.x) << (vec4<u32>(52191u, 0u, 12517u, 4294967295u) % vec4<u32>(32u))), var_0.d).b.b, false), var_0.b, _wgslsmith_div_vec3_f32(var_4.b.a.wxy, func_4(~(~var_2.zy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.b.a.x, var_0.c.a.x, false))), -abs(vec4<i32>(arg_1, var_0.d.x, 20134i, 5812i))).a.zwy)).c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 5>();
    var var_0 = func_6(select(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false)), func_1(vec3<bool>(true, false, false)), func_1(vec3<bool>(true, false, false))), !vec4<bool>(true, 1u > global0[_wgslsmith_index_u32(0u, 5u)], select(false, true, true), any(vec2<bool>(false, false))), select(vec4<bool>(true, true, func_5(Struct_1(vec4<f32>(-1000f, -1063f, -760f, -733f), vec2<bool>(false, true), false), Struct_1(vec4<f32>(-1331f, 737f, -230f, 646f), vec2<bool>(false, true), true), vec3<f32>(-387f, -1143f, 2356f)).b.c, u_input.c < -9888i), func_1(func_1(vec3<bool>(true, false, true)).yww), true)), _wgslsmith_add_i32(-1i, func_5(func_5(Struct_1(vec4<f32>(-551f, -705f, 321f, 416f), vec2<bool>(false, false), false), Struct_1(vec4<f32>(-238f, 715f, -142f, 1356f), vec2<bool>(true, true), false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1491f, -1014f))).b, func_4(u_input.b.yx, _wgslsmith_f_op_f32(f32(-1f) * -395f), vec4<i32>(u_input.e, u_input.c, -2147483647i, u_input.e)), vec3<f32>(1683f, _wgslsmith_f_op_f32(1000f * -483f), _wgslsmith_f_op_f32(round(815f)))).d.x), abs(vec2<u32>(u_input.b.x, u_input.b.x)) ^ (vec2<u32>(countOneBits(74996u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37763u, 5u)] ^ 1u, 5u)]) | ~vec2<u32>(53542u, u_input.b.x)), global0[_wgslsmith_index_u32(u_input.d, 5u)]);
    let var_1 = ~u_input.b;
    let var_2 = func_5(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + 368f)) - var_0.a.x), func_4(vec2<u32>(~var_1.x, abs(0u)), _wgslsmith_div_f32(-400f, -782f), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.e, -1i, -1i, -27563i), vec4<i32>(1i, u_input.c, 25417i, -1i)), _wgslsmith_add_vec4_i32(vec4<i32>(6909i, -10217i, u_input.e, 33951i), vec4<i32>(36732i, u_input.a.x, 17584i, u_input.c)), ~vec4<i32>(u_input.e, -1i, u_input.a.x, 9416i))), Struct_2(var_1, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(945f, 229f, 889f, 380f) + vec4<f32>(-729f, var_0.a.x, var_0.a.x, var_0.a.x)), func_6(vec4<bool>(var_0.c, true, false, var_0.b.x), -14308i, vec2<u32>(4294967295u, u_input.b.x), 67591u).b, false), func_6(vec4<bool>(false, false, var_0.c, false), -1i, func_2(623f, Struct_1(vec4<f32>(887f, var_0.a.x, var_0.a.x, var_0.a.x), var_0.b, false), Struct_2(u_input.b, Struct_1(vec4<f32>(-1915f, -1140f, -453f, var_0.a.x), var_0.b, false), Struct_1(var_0.a, var_0.b, var_0.c), vec4<i32>(1i, -11833i, u_input.a.x, -1i)), vec4<i32>(u_input.e, u_input.e, u_input.e, -11773i)).a.xx, 61652u), countOneBits(func_2(var_0.a.x, Struct_1(vec4<f32>(var_0.a.x, -551f, 964f, 923f), var_0.b, var_0.c), Struct_2(vec3<u32>(0u, 4294967295u, global0[_wgslsmith_index_u32(var_1.x, 5u)]), Struct_1(vec4<f32>(-1963f, 854f, var_0.a.x, -698f), vec2<bool>(false, var_0.b.x), false), Struct_1(vec4<f32>(-150f, 2539f, -254f, var_0.a.x), vec2<bool>(var_0.c, var_0.c), true), vec4<i32>(0i, u_input.e, 18062i, u_input.a.x)), vec4<i32>(-23971i, -45865i, 22504i, u_input.c)).d)), vec4<i32>(-u_input.e | 31066i, firstLeadingBit(u_input.c), 12066i, _wgslsmith_add_i32(u_input.a.x, -1i))).c, func_4(vec2<u32>(~7047u, max(_wgslsmith_sub_u32(var_1.x, var_1.x), select(0u, 61778u, var_0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * -1520f)) - _wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x))), abs(vec4<i32>(u_input.c, _wgslsmith_clamp_i32(0i, 9924i, 0i), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), -u_input.a.x))), var_0.a.wwz);
    global0 = array<u32, 5>();
    var var_3 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(~(var_1.x & _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_2.a.x, 1u, var_1.x), u_input.b), u_input.b & var_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(613f * var_3.a.x), _wgslsmith_f_op_f32(var_3.a.x - _wgslsmith_f_op_f32(507f + 555f))), ~u_input.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_3.a.x)))), 0i);
}

