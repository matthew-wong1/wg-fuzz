struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<bool>,
    d: u32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1210f, -927f, 1453f, 407f);

var<private> global1: array<f32, 3> = array<f32, 3>(241f, 143f, -766f);

var<private> global2: u32 = 25143u;

var<private> global3: array<vec3<u32>, 18>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.xwz));
    var var_1 = -2147483647i;
    global3 = array<vec3<u32>, 18>();
    global3 = array<vec3<u32>, 18>();
    var var_2 = Struct_2(arg_2.a & arg_2.a, Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1261f, global1[_wgslsmith_index_u32(u_input.b.x, 3u)], -264f) - var_0) + var_0)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-arg_0.x)));
    return ~u_input.b.x ^ 4294967295u;
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_3, arg_3: vec4<bool>) -> vec4<f32> {
    global2 = u_input.c;
    var var_0 = ~((global3[_wgslsmith_index_u32(41119u, 18u)] >> (vec3<u32>(_wgslsmith_add_u32(arg_0.a.x, 4294967295u), arg_2.d, arg_0.a.x) % vec3<u32>(32u))) << (max(global3[_wgslsmith_index_u32(abs(1u), 18u)], max(~global3[_wgslsmith_index_u32(4294967295u, 18u)], vec3<u32>(u_input.c, 95888u, arg_0.d))) % vec3<u32>(32u)));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-979f, -113f, -1000f, 1000f)))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) + _wgslsmith_f_op_f32(max(arg_0.b.x, arg_0.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0.d, 3u)] * 299f), _wgslsmith_div_f32(global0.x, arg_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1126f + arg_1)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.b.x - global1[_wgslsmith_index_u32(arg_2.a.x, 3u)]), _wgslsmith_f_op_f32(sign(884f)))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, global1[_wgslsmith_index_u32(0u, 3u)], arg_0.b.x, arg_0.b.x), vec4<f32>(arg_1, -185f, global0.x, arg_1))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.b.x, -720f, arg_2.b.x, _wgslsmith_f_op_f32(floor(arg_0.b.x)))))));
    let var_1 = 17964u;
    var var_2 = min(arg_2.e.zx, vec2<i32>(arg_2.e.x, select(~arg_2.e.x, firstTrailingBit(-arg_0.e.x), !arg_3.x)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, global0.x, 1000f, -2015f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-523f, -986f, global1[_wgslsmith_index_u32(var_0.x, 3u)], arg_0.b.x))))), vec4<f32>(arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(36503u, 3u)] + global0.x), _wgslsmith_f_op_f32(-arg_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1849f, arg_2.b.x, arg_3.x)) * global0.x), 428f)) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-708f, 903f, global0.x, -1000f)) + vec4<f32>(1277f, _wgslsmith_f_op_f32(-1129f + global0.x), _wgslsmith_f_op_f32(arg_2.b.x - arg_2.b.x), _wgslsmith_f_op_f32(trunc(arg_2.b.x)))))));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: bool) -> Struct_3 {
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_3(~countOneBits(arg_2), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 1000f, arg_1.a.x)), !select(vec2<bool>(false, arg_3), vec2<bool>(true, false), false), ~func_3(vec3<f32>(global1[_wgslsmith_index_u32(59679u, 3u)], -763f, -335f), vec2<bool>(false, arg_3), Struct_2(true, Struct_1(vec3<f32>(arg_0.x, 595f, -1330f)), global0.x)), ~(-vec3<i32>(0i, -97763i, -2147483647i))), _wgslsmith_f_op_f32(f32(-1f) * -1115f), Struct_3(~(u_input.b << (vec2<u32>(4294967295u, arg_2.x) % vec2<u32>(32u))), global0.yyw, vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 3u)] == arg_1.a.x), 48408u, ~vec3<i32>(0i, 15803i, -8537i) >> (global3[_wgslsmith_index_u32(max(u_input.b.x, arg_2.x), 18u)] % vec3<u32>(32u))), vec4<bool>(true, false, any(vec3<bool>(arg_3, arg_3, arg_3)), ~4294967295u >= ~arg_2.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_3(arg_2, arg_1.a, vec2<bool>(arg_3, true), u_input.a, vec3<i32>(7686i, -2147483647i, -1i)), arg_1.a.x, Struct_3(u_input.b, vec3<f32>(1111f, global1[_wgslsmith_index_u32(1u, 3u)], arg_0.x), vec2<bool>(arg_3, false), 29552u, vec3<i32>(1i, -30458i, 1i)), !vec4<bool>(false, arg_3, arg_3, arg_3))) * vec4<f32>(_wgslsmith_f_op_f32(ceil(-159f)), arg_0.x, arg_0.x, arg_1.a.x)) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1849f, arg_0.x, arg_0.x, global0.x))))))));
    var var_0 = Struct_2(true, arg_1, arg_0.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, 376f, -1416f), arg_1.a)), _wgslsmith_f_op_vec3_f32(-global0.xwx)))) - vec3<f32>(_wgslsmith_f_op_vec4_f32(func_4(Struct_3(countOneBits(u_input.b), _wgslsmith_f_op_vec4_f32(func_4(Struct_3(vec2<u32>(u_input.b.x, u_input.c), global0.xyy, vec2<bool>(var_0.a, true), 21996u, vec3<i32>(-2147483647i, 19902i, 47262i)), -808f, Struct_3(arg_2, arg_1.a, vec2<bool>(var_0.a, arg_3), 1u, vec3<i32>(19357i, 1i, 3077i)), vec4<bool>(true, false, true, arg_3))).xwy, vec2<bool>(true, true), _wgslsmith_mod_u32(u_input.a, 1u), firstTrailingBit(vec3<i32>(-1i, 1i, -12594i))), -1076f, Struct_3(u_input.b, _wgslsmith_div_vec3_f32(var_0.b.a, vec3<f32>(800f, 1073f, -699f)), vec2<bool>(false, true), 34908u | arg_2.x, ~vec3<i32>(-94522i, 11073i, 0i)), select(select(vec4<bool>(var_0.a, arg_3, var_0.a, arg_3), vec4<bool>(var_0.a, arg_3, var_0.a, var_0.a), vec4<bool>(true, false, false, var_0.a)), !vec4<bool>(var_0.a, var_0.a, arg_3, arg_3), false))).x, -460f, _wgslsmith_f_op_f32(trunc(var_0.c))));
    global1 = array<f32, 3>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(969f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)), 1f, 1898f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, 879f, var_1.x, global0.x))))));
    return Struct_3(_wgslsmith_sub_vec2_u32(u_input.b, u_input.b), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(arg_1.a, vec3<f32>(-253f, -611f, arg_1.a.x), true)), _wgslsmith_f_op_vec3_f32(exp2(global0.yzz)), !vec3<bool>(var_0.a, arg_3, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, arg_1.a.x, global0.x) - var_1))), var_1)), vec2<bool>(false, false), _wgslsmith_sub_u32(u_input.a, _wgslsmith_clamp_u32(~_wgslsmith_mult_u32(u_input.a, u_input.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(25396u, arg_2.x, 4294967295u), global3[_wgslsmith_index_u32(0u & u_input.c, 18u)]), u_input.c)), vec3<i32>(1i, max(-2147483647i << (~u_input.b.x % 32u), reverseBits(0i)), countOneBits(abs(abs(-1i)))));
}

fn func_5(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_3) -> i32 {
    let var_0 = -802f;
    var var_1 = 2147483647i;
    let var_2 = vec3<i32>(-6145i, firstTrailingBit(~firstLeadingBit(20912i)), _wgslsmith_dot_vec4_i32(vec4<i32>(22913i, arg_2.e.x, ~arg_2.e.x | arg_2.e.x, _wgslsmith_mod_i32(2147483647i, -arg_2.e.x)), ~abs(vec4<i32>(9496i, arg_2.e.x, arg_2.e.x, 0i))));
    global0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(arg_2, _wgslsmith_f_op_f32(f32(-1f) * -1273f), Struct_3(u_input.b, global0.wyx, vec2<bool>(true, arg_1), arg_2.a.x, var_2), !vec4<bool>(true, false, false, arg_2.c.x))).x - _wgslsmith_f_op_f32(f32(-1f) * -519f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(570f * -193f))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-142f)))))));
    let var_3 = vec3<bool>(true, func_2(_wgslsmith_f_op_vec2_f32(arg_2.b.zy * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1433f, global1[_wgslsmith_index_u32(u_input.c, 3u)]))) - vec2<f32>(arg_2.b.x, global1[_wgslsmith_index_u32(u_input.c, 3u)]))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(56099u, 3u)], 1120f, global0.x))), ~reverseBits(~u_input.b), _wgslsmith_f_op_vec4_f32(func_4(arg_2, _wgslsmith_f_op_f32(exp2(global0.x)), func_2(arg_2.b.zz, Struct_1(arg_2.b), vec2<u32>(0u, 4294967295u), false), vec4<bool>(true, true, false, true))).x >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1630f)))).c.x, true);
    return arg_2.e.x;
}

fn func_1() -> Struct_2 {
    global1 = array<f32, 3>();
    var var_0 = abs(vec4<i32>(_wgslsmith_div_i32(func_5(vec2<bool>(true, true), true, func_2(global0.wy, Struct_1(vec3<f32>(global0.x, -108f, 1635f)), vec2<u32>(94078u, 25721u), false)), ~min(1i, 17737i)), firstLeadingBit(-12195i), -2147483647i, -func_2(global0.wz, Struct_1(global0.xwy), u_input.b << (u_input.b % vec2<u32>(32u)), true).e.x));
    var var_1 = vec4<bool>(true, false, false, !(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 3u)], global0.x)), Struct_1(global0.xyx), u_input.b, var_0.x != var_0.x).c.x || any(vec2<bool>(true, true))));
    let var_2 = ~(~(_wgslsmith_add_vec2_u32(vec2<u32>(49650u, 1u), _wgslsmith_sub_vec2_u32(u_input.b, u_input.b)) & vec2<u32>(77758u, abs(4294967295u))));
    let var_3 = vec4<bool>(false || func_2(global0.xy, Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, global0.x, global0.x)))), ~var_2 | ~vec2<u32>(u_input.c, 0u), select(true, !var_1.x, !var_1.x)).c.x, all(!select(vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(var_1.x, var_1.x, false, false), select(vec4<bool>(true, var_1.x, var_1.x, true), vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(var_1.x, true, true, var_1.x)))), true, var_0.x >= var_0.x);
    return Struct_2(all(select(select(select(var_1.zyy, vec3<bool>(true, true, false), var_3.x), vec3<bool>(var_3.x, true, true), var_3.x), var_1.zxx, !select(vec3<bool>(false, var_1.x, false), var_3.ywy, var_1.xww))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.xyy) + _wgslsmith_f_op_vec4_f32(func_4(Struct_3(vec2<u32>(1u, 14538u), vec3<f32>(704f, 444f, global0.x), vec2<bool>(var_3.x, var_3.x), var_2.x, var_0.zww), -1433f, Struct_3(var_2, vec3<f32>(-644f, 381f, -585f), vec2<bool>(true, var_1.x), var_2.x, vec3<i32>(-18351i, var_0.x, -2147483647i)), var_3)).ywx) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(var_2.x, 3u)], -980f, -1316f)))), global0.x);
}

fn func_6(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec2<bool>, arg_3: u32) -> u32 {
    let var_0 = true;
    let var_1 = 9445u;
    global0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -748f), -1166f, !(firstLeadingBit(arg_1.x) != _wgslsmith_sub_i32(arg_1.x, -73107i)))), _wgslsmith_f_op_f32(arg_0.c - _wgslsmith_f_op_f32(-arg_0.c)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-528f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0.b.a.x, global0.x))))));
    let var_2 = ~(-vec3<i32>(arg_1.x, _wgslsmith_add_i32(_wgslsmith_add_i32(arg_1.x, arg_1.x), arg_1.x ^ -1i), _wgslsmith_clamp_i32(-1i, arg_1.x, countOneBits(-2147483647i))));
    let var_3 = Struct_1(arg_0.b.a);
    return 1u;
}

fn func_7(arg_0: u32, arg_1: Struct_2, arg_2: u32, arg_3: Struct_3) -> Struct_1 {
    global2 = ~(1u << (~(~_wgslsmith_mult_u32(1u, arg_0)) % 32u));
    var var_0 = select(vec3<bool>(all(select(vec3<bool>(arg_1.a, false, false), !vec3<bool>(arg_3.c.x, false, false), select(vec3<bool>(true, arg_1.a, true), vec3<bool>(arg_1.a, true, false), true))), true, false), vec3<bool>(arg_3.c.x, true, false), arg_1.a);
    global0 = vec4<f32>(arg_1.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1075f), _wgslsmith_div_f32(global0.x, global0.x), 321f);
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(arg_2, 3u)], 1000f, 314f, arg_1.c)) - _wgslsmith_div_vec4_f32(vec4<f32>(-1823f, 118f, arg_1.c, arg_3.b.x), vec4<f32>(-466f, arg_1.b.a.x, 283f, arg_1.c))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1082f), arg_3.b.x, _wgslsmith_f_op_f32(f32(-1f) * -127f), _wgslsmith_f_op_f32(-global0.x)))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.b.a.x, _wgslsmith_div_f32(-797f, _wgslsmith_f_op_f32(min(-176f, global0.x))), -1139f, func_2(_wgslsmith_div_vec2_f32(vec2<f32>(276f, 1873f), vec2<f32>(arg_1.b.a.x, 297f)), arg_1.b, arg_3.a ^ vec2<u32>(4294967295u, 0u), true).b.x))));
    let var_1 = arg_1;
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.b.a.x, 981f, 656f), func_1().b.a, vec3<bool>(false, true, true))), _wgslsmith_f_op_vec4_f32(func_4(arg_3, _wgslsmith_div_f32(250f, -589f), func_2(global0.xz, Struct_1(vec3<f32>(var_1.b.a.x, -1089f, 1000f)), arg_3.a, true), !vec4<bool>(false, var_0.x, false, true))).xzx) + var_1.b.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, !(!any(vec4<bool>(true, false, true, true))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.yxz * _wgslsmith_f_op_vec3_f32(global0.wyx - global0.yyw)) * global0.xyw);
    global1 = array<f32, 3>();
    var var_2 = 1950i;
    var var_3 = func_7(func_6(func_1(), vec3<i32>(~abs(0i), 1i, -25225i), vec2<bool>(var_0.x, all(vec4<bool>(var_0.x, var_0.x, true, var_0.x))), _wgslsmith_clamp_u32(firstLeadingBit(~1u), u_input.a, ~1u)), Struct_2(var_0.x, Struct_1(global0.wxz), _wgslsmith_f_op_f32(var_1.x * global1[_wgslsmith_index_u32(~23012u, 3u)])), ~896u, func_2(vec2<f32>(-252f, _wgslsmith_f_op_f32(func_2(vec2<f32>(global0.x, -1226f), Struct_1(global0.zzx), vec2<u32>(4340u, 4294967295u), false).b.x + _wgslsmith_f_op_f32(global0.x - var_1.x))), func_1().b, ~(~u_input.b), all(!vec2<bool>(false, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(290f))) + func_1().c)), -(_wgslsmith_add_i32(_wgslsmith_clamp_i32(-2147483647i, 2147483647i, 2147483647i), func_2(global0.yw, Struct_1(var_3.a), u_input.b, var_0.x).e.x) | 1i), var_1.x, u_input.b);
}

