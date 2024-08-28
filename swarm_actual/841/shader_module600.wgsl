struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
    c: i32,
    d: vec2<f32>,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: i32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1333f, 496f);

var<private> global1: array<vec4<f32>, 17> = array<vec4<f32>, 17>(vec4<f32>(-1000f, 2017f, 1518f, -1014f), vec4<f32>(-1000f, -227f, 540f, -1042f), vec4<f32>(903f, -1349f, 1000f, -372f), vec4<f32>(2196f, 1000f, 1998f, -374f), vec4<f32>(-899f, 878f, 725f, -499f), vec4<f32>(-105f, 765f, 626f, -347f), vec4<f32>(133f, 550f, 409f, -302f), vec4<f32>(-509f, 347f, 943f, 984f), vec4<f32>(134f, 1893f, 1539f, 1323f), vec4<f32>(823f, 338f, -1000f, 226f), vec4<f32>(984f, -1117f, -205f, 279f), vec4<f32>(-1120f, 380f, -264f, 1288f), vec4<f32>(-189f, 325f, 833f, 808f), vec4<f32>(358f, -1070f, -582f, 217f), vec4<f32>(444f, -1433f, -1064f, -519f), vec4<f32>(568f, 1780f, 2176f, -1039f), vec4<f32>(1000f, -1153f, 563f, -1000f));

var<private> global2: array<f32, 15> = array<f32, 15>(-2202f, -697f, 486f, 1094f, -218f, -2136f, -573f, 108f, -1815f, 669f, 1515f, 401f, -1457f, 385f, 1267f);

var<private> global3: array<vec2<i32>, 2> = array<vec2<i32>, 2>(vec2<i32>(1i, 1i), vec2<i32>(2147483647i, -1i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<i32>) -> i32 {
    let var_0 = -(~(~select(arg_0, arg_0, vec4<bool>(false, true, false, false)) >> (~(~vec4<u32>(u_input.b.x, 60645u, u_input.b.x, u_input.b.x)) % vec4<u32>(32u))));
    let var_1 = vec4<u32>(u_input.b.x, u_input.b.x, ~(~u_input.b.x), 14493u);
    var var_2 = true;
    global3 = array<vec2<i32>, 2>();
    let var_3 = Struct_4(!select(vec3<bool>(true, any(vec4<bool>(true, false, false, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true)))), 1i, arg_0.x | -2147483647i, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global2[_wgslsmith_index_u32(33970u, 15u)], -1559f)))))), Struct_2(Struct_1(all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))), ~0u, -113f, u_input.a.wz, -9882i), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.b.x ^ (25638u | u_input.b.x), 15u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(countOneBits(1u), 15u)] + global0.x)), ~(-34846i), global2[_wgslsmith_index_u32(1u, 15u)]));
    return i32(-1i) * -2147483647i;
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = arg_0.a;
    global2 = array<f32, 15>();
    global3 = array<vec2<i32>, 2>();
    let var_1 = Struct_4(select(vec3<bool>(all(!vec4<bool>(false, false, arg_0.a, arg_0.a)), arg_0.a, all(vec2<bool>(true, true))), select(vec3<bool>(all(vec4<bool>(arg_0.a, arg_0.a, true, true)), arg_0.a, false), !(!vec3<bool>(false, arg_0.a, true)), !select(vec3<bool>(arg_0.a, false, true), vec3<bool>(false, false, true), true)), !select(vec3<bool>(arg_0.a, false, true), vec3<bool>(arg_0.a, false, true), vec3<bool>(true, arg_0.a, true))), -1i & -_wgslsmith_mult_i32(~u_input.a.x, min(2147483647i, arg_0.d.x)), -2147483647i, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 146f) - vec2<f32>(1686f, 213f)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1080f, -786f)))))))), Struct_2(arg_0, _wgslsmith_f_op_f32(trunc(-2089f)), _wgslsmith_mult_i32(1i, _wgslsmith_div_i32(u_input.a.x, u_input.a.x & arg_0.d.x)), _wgslsmith_f_op_f32(round(-336f))));
    let var_2 = var_1.a;
    return Struct_2(Struct_1(var_1.e.a.a, 4294967295u << (~var_1.e.a.b % 32u), _wgslsmith_f_op_f32(2621f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(arg_0.c))))), ~((vec2<i32>(1i, -35576i) ^ u_input.a.yy) ^ select(vec2<i32>(16621i, 2147483647i), var_1.e.a.d, var_2.x)), func_3(u_input.a, vec4<i32>(u_input.a.x, 0i, firstLeadingBit(2147483647i), max(1i, 1i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(arg_0.c)))), 1274f))), u_input.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.c, arg_0.c))), true)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> Struct_1 {
    let var_0 = arg_0.a.a;
    let var_1 = select(select(!select(!vec2<bool>(false, var_0.a), select(vec2<bool>(var_0.a, false), vec2<bool>(var_0.a, var_0.a), vec2<bool>(false, arg_1.a.a)), true), select(select(!vec2<bool>(false, arg_0.b.a.a), vec2<bool>(true, true), vec2<bool>(arg_0.a.a.a, true)), select(vec2<bool>(true, true), select(vec2<bool>(var_0.a, arg_1.a.a), vec2<bool>(arg_0.b.a.a, true), vec2<bool>(false, arg_1.a.a)), vec2<bool>(true, true)), all(vec2<bool>(true, var_0.a))), any(!select(vec4<bool>(false, true, false, false), vec4<bool>(arg_1.a.a, var_0.a, false, var_0.a), true))), select(select(vec2<bool>(any(vec2<bool>(var_0.a, arg_1.a.a)), any(vec3<bool>(arg_0.a.a.a, arg_1.a.a, arg_0.a.a.a))), vec2<bool>(func_2(var_0).a.a, true), 21552i >= -var_0.d.x), vec2<bool>(arg_1.a.a, true), !(all(vec2<bool>(arg_0.a.a.a, var_0.a)) == any(vec2<bool>(var_0.a, arg_1.a.a)))), all(select(select(select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(false, arg_1.a.a), vec2<bool>(true, true)), vec2<bool>(arg_0.a.a.a, arg_1.a.a), select(vec2<bool>(true, arg_1.a.a), vec2<bool>(false, arg_1.a.a), false)), vec2<bool>(any(vec2<bool>(false, arg_1.a.a)), true), select(!vec2<bool>(arg_0.b.a.a, true), select(vec2<bool>(arg_0.a.a.a, arg_1.a.a), vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, arg_1.a.a)), !vec2<bool>(var_0.a, var_0.a)))));
    global1 = array<vec4<f32>, 17>();
    var var_2 = func_2(Struct_1(all(vec2<bool>(var_0.a, false)) & func_2(func_2(arg_0.a.a).a).a.a, countOneBits(arg_1.a.b), 1116f, u_input.a.wz, -func_3(vec4<i32>(-2147483647i, -1i, arg_1.c, u_input.a.x), u_input.a)));
    let var_3 = arg_0.a;
    return var_0;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec2<bool>, arg_3: vec3<i32>) -> f32 {
    let var_0 = Struct_2(func_4(Struct_3(func_2(Struct_1(arg_2.x, arg_0, global2[_wgslsmith_index_u32(arg_0, 15u)], vec2<i32>(47181i, arg_3.x), arg_3.x)), func_2(Struct_1(false, u_input.b.x, global2[_wgslsmith_index_u32(47404u, 15u)], vec2<i32>(-40926i, 1i), arg_1)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1158f, -2050f, -1103f, global2[_wgslsmith_index_u32(arg_0, 15u)])), global1[_wgslsmith_index_u32(1u, 17u)])), Struct_2(Struct_1(func_2(Struct_1(false, u_input.b.x, 263f, vec2<i32>(arg_1, u_input.a.x), arg_1)).a.a, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, u_input.b.x, arg_0, 25658u), vec4<u32>(u_input.b.x, u_input.b.x, 12578u, 0u)), _wgslsmith_f_op_f32(select(-296f, 1374f, false)), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), 2u)], _wgslsmith_mod_i32(1541i, u_input.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -392f), 59650i, 551f)), 2178f, 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -385f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.x)) * -278f) * 2065f)));
    let var_1 = !(!(!vec3<bool>(true, var_0.a.a, var_0.d >= global0.x)));
    let var_2 = Struct_3(func_2(Struct_1(var_0.a.a, ~var_0.a.b & 4294967295u, _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.a.c, -680f), _wgslsmith_f_op_f32(f32(-1f) * -881f)), reverseBits(u_input.a.yw), 1i)), func_2(func_2(Struct_1(arg_2.x && var_1.x, 1u, 1000f, -vec2<i32>(2147483647i, -6266i), 0i)).a), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.d, global0.x, func_4(Struct_3(var_0, var_0, vec4<f32>(global2[_wgslsmith_index_u32(12714u, 15u)], var_0.b, global0.x, 1077f)), var_0).c, global0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(17071u, 17u)]) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.c, 877f, 1000f, global0.x) - vec4<f32>(global2[_wgslsmith_index_u32(22409u, 15u)], -1127f, global2[_wgslsmith_index_u32(1u, 15u)], global2[_wgslsmith_index_u32(1u, 15u)]))) - global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.a.b, ~var_0.a.b), 17u)]))));
    let var_3 = !vec3<bool>(!(var_0.a.a | var_0.a.a), global2[_wgslsmith_index_u32(u_input.b.x, 15u)] > var_2.a.a.c, false);
    let var_4 = !(!any(var_3));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) * 884f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(Struct_1(true, 7772u, -316f, u_input.a.zz, -1139i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.b.x, -47856i, select(vec2<bool>(false, false), vec2<bool>(true, false), false), u_input.a.zxz))), u_input.a.x, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b.x, 15u)] - _wgslsmith_f_op_f32(func_1(~4294967295u, -u_input.a.x, vec2<bool>(true, true), -u_input.a.zzx)))), Struct_2(Struct_1(!func_4(Struct_3(Struct_2(Struct_1(true, u_input.b.x, global0.x, vec2<i32>(2147483647i, u_input.a.x), u_input.a.x), -855f, u_input.a.x, 706f), Struct_2(Struct_1(true, 1u, global0.x, global3[_wgslsmith_index_u32(u_input.b.x, 2u)], u_input.a.x), global0.x, u_input.a.x, global0.x), global1[_wgslsmith_index_u32(0u, 17u)]), Struct_2(Struct_1(true, 50700u, 591f, global3[_wgslsmith_index_u32(u_input.b.x, 2u)], u_input.a.x), -148f, -43800i, global2[_wgslsmith_index_u32(1u, 15u)])).a, ~1u, 984f, vec2<i32>(func_3(u_input.a, u_input.a), u_input.a.x), firstTrailingBit(2147483647i)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.x)) * _wgslsmith_div_f32(global0.x, global2[_wgslsmith_index_u32(1u, 15u)])))), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(u_input.a.yww, u_input.a.zxy), ~(-1i), _wgslsmith_sub_i32(0i, -19804i)), -24758i, 1i ^ _wgslsmith_div_i32(36407i, u_input.a.x)), global0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global1[_wgslsmith_index_u32(firstLeadingBit(~u_input.b.x), 17u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(447f, global0.x, 276f, global2[_wgslsmith_index_u32(u_input.b.x, 15u)])))));
    var var_1 = func_4(Struct_3(Struct_2(func_2(var_0.b.a).a, var_0.b.b, ~(i32(-1i) * -33966i), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 15u)])), Struct_2(Struct_1(true, 23540u << (var_0.b.a.b % 32u), -713f, _wgslsmith_clamp_vec2_i32(vec2<i32>(-22142i, 15343i), u_input.a.xy, global3[_wgslsmith_index_u32(23221u, 2u)]), u_input.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(925f, global0.x))), countOneBits(max(var_0.b.a.e, 2147483647i)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.b.a.b, 68839u), 15u)] + global2[_wgslsmith_index_u32(1u, 15u)])), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_0.b.a.b, 15u)] - 1738f) - -430f), _wgslsmith_f_op_f32(round(1768f)), var_0.b.d, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(0u, 15u)], var_0.a.b) + _wgslsmith_f_op_f32(var_0.b.b * -2577f)))), func_2(Struct_1(false && var_0.a.a.a, var_0.b.a.b, _wgslsmith_f_op_f32(-var_0.b.b), min(global3[_wgslsmith_index_u32(~1u, 2u)], u_input.a.xz), _wgslsmith_div_i32(var_0.a.a.d.x, i32(-1i) * -26673i))));
    global1 = array<vec4<f32>, 17>();
    var var_2 = abs(~_wgslsmith_sub_i32(_wgslsmith_add_i32(-10938i, u_input.a.x), max(var_1.e, var_0.a.c))) | -12229i;
    var var_3 = vec3<i32>(-5077i, 83507i, _wgslsmith_mult_i32(-reverseBits(u_input.a.x), u_input.a.x)) & u_input.a.zyx;
    var var_4 = Struct_3(Struct_2(var_0.b.a, global0.x, -23408i >> (_wgslsmith_add_u32(var_1.b, var_1.b) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_1.c)), _wgslsmith_f_op_f32(f32(-1f) * -928f)))), var_0.b, global1[_wgslsmith_index_u32(~(var_0.a.a.b << (1u % 32u)), 17u)]);
    var var_5 = false;
    let var_6 = min(-26554i, reverseBits(var_0.a.a.e));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-func_2(var_4.a.a).b), vec3<f32>(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-357f * _wgslsmith_div_f32(-1136f, 2216f)), var_4.b.a.c), _wgslsmith_f_op_f32(-global0.x)), ~select(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, var_4.b.a.b, 4294967295u, var_0.b.a.b), vec4<u32>(var_0.b.a.b, 0u, 37163u, 4294967295u), vec4<u32>(u_input.b.x, var_0.b.a.b, var_1.b, var_4.a.a.b)), vec4<u32>(u_input.b.x, ~var_0.a.a.b, u_input.b.x, ~0u), select(vec4<bool>(true, true, true, true), vec4<bool>(false, var_4.a.a.a, var_0.a.a.a, var_4.b.a.a), var_4.a.a.a)));
}

