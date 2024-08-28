struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec4<bool>,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
    c: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_3 = Struct_3(Struct_1(vec3<f32>(-1044f, 107f, -1157f), vec4<f32>(-1476f, 430f, 292f, -954f), vec4<bool>(true, false, false, true), 4294967295u, vec2<f32>(-429f, -398f)), Struct_1(vec3<f32>(563f, -725f, -187f), vec4<f32>(1378f, 1322f, -130f, 454f), vec4<bool>(true, true, false, true), 5586u, vec2<f32>(723f, 452f)), Struct_2(vec4<bool>(false, true, false, true), Struct_1(vec3<f32>(765f, 1000f, -335f), vec4<f32>(-1764f, -974f, -1908f, -1000f), vec4<bool>(false, true, false, false), 35663u, vec2<f32>(1419f, -586f)), Struct_1(vec3<f32>(-1000f, -495f, -2885f), vec4<f32>(-1072f, 888f, 223f, -2458f), vec4<bool>(true, true, false, false), 1u, vec2<f32>(1235f, 1545f)), Struct_1(vec3<f32>(-2235f, 547f, -1000f), vec4<f32>(798f, -233f, 1368f, -1351f), vec4<bool>(true, false, false, false), 1u, vec2<f32>(-247f, -1115f)), 2147483647i), Struct_2(vec4<bool>(false, true, false, false), Struct_1(vec3<f32>(-590f, 314f, 108f), vec4<f32>(-179f, -348f, 825f, 103f), vec4<bool>(true, false, true, false), 43287u, vec2<f32>(-702f, -1672f)), Struct_1(vec3<f32>(1050f, 2032f, 958f), vec4<f32>(2091f, 1000f, -1069f, -1092f), vec4<bool>(false, false, false, false), 60291u, vec2<f32>(-1000f, 1468f)), Struct_1(vec3<f32>(579f, -482f, -1938f), vec4<f32>(322f, 1415f, -953f, 511f), vec4<bool>(true, true, false, false), 74867u, vec2<f32>(-1822f, -315f)), 0i));

var<private> global2: Struct_1;

var<private> global3: array<bool, 32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<f32>) -> vec2<f32> {
    let var_0 = true;
    global1 = arg_1;
    global2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.d.c.a - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-293f, -105f, arg_0.c.a.x) + global2.a)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(117f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, arg_1.c.c.b.x))), _wgslsmith_div_f32(arg_1.d.d.a.x, _wgslsmith_f_op_f32(sign(arg_1.d.c.e.x))), -974f) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-205f - arg_0.c.e.x), _wgslsmith_f_op_f32(-global1.d.b.b.x), _wgslsmith_f_op_f32(-800f + arg_2.x), -1070f), _wgslsmith_f_op_vec4_f32(floor(global2.b))))), !(!(!select(vec4<bool>(false, arg_1.a.c.x, true, true), vec4<bool>(global1.c.d.c.x, var_0, false, arg_0.a.x), false))), ~arg_0.b.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.d.b.b.x, global0.a.b.x), global0.d.b.a.xx) * arg_2.xz) * vec2<f32>(arg_1.a.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0.b.b.x, -852f), _wgslsmith_f_op_f32(global1.a.a.x - arg_0.d.a.x))))));
    global2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-201f, 1000f, 622f))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(-1277f, _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-1874f * -658f), _wgslsmith_f_op_f32(-global0.b.e.x)), vec4<f32>(493f, 136f, _wgslsmith_f_op_f32(arg_2.x * 357f), _wgslsmith_f_op_f32(sign(-1675f)))), arg_0.d.b)), arg_1.d.a, global0.d.b.d, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-288f, -831f), vec2<f32>(global2.a.x, 2258f)) - _wgslsmith_f_op_vec2_f32(-arg_1.b.b.ww))), arg_1.c.b.b.zy)));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.x)))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1011f, -542f)), _wgslsmith_f_op_vec2_f32(-global2.e))) - arg_2.zz));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec2<i32>) -> i32 {
    var var_0 = !(!(!(!all(vec3<bool>(true, false, true)))));
    var_0 = false;
    var_0 = all(vec2<bool>(!global1.c.c.c.x, global0.b.c.x));
    let var_1 = Struct_3(Struct_1(vec3<f32>(global2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -169f), _wgslsmith_f_op_f32(-568f + global2.e.x)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(global0.c.c.b)))), !global1.a.c, ~select(4294967295u, ~50810u, global3[_wgslsmith_index_u32(global2.d, 32u)]), _wgslsmith_f_op_vec2_f32(func_3(Struct_2(vec4<bool>(false, global3[_wgslsmith_index_u32(global1.a.d, 32u)], true, false), Struct_1(global2.a, global1.a.b, global0.b.c, 1u, vec2<f32>(global2.a.x, -593f)), Struct_1(global0.c.b.b.wwz, vec4<f32>(3207f, global0.d.b.b.x, 240f, arg_0), global2.c, 59045u, vec2<f32>(1505f, global2.a.x)), Struct_1(global0.b.a, vec4<f32>(-1552f, 1415f, global0.b.b.x, 1979f), global1.d.b.c, 4294967295u, vec2<f32>(global2.a.x, arg_0)), 1i), Struct_3(Struct_1(global2.b.yyx, global1.a.b, vec4<bool>(true, global1.b.c.x, false, global3[_wgslsmith_index_u32(global2.d, 32u)]), global0.c.b.d, global0.d.d.e), global1.a, global1.c, Struct_2(vec4<bool>(true, false, global1.c.d.c.x, true), Struct_1(vec3<f32>(576f, global0.c.b.b.x, 2110f), vec4<f32>(-1097f, global0.b.a.x, global1.d.b.e.x, -550f), vec4<bool>(false, true, false, global0.d.c.c.x), 40839u, vec2<f32>(global2.e.x, arg_0)), global1.d.d, Struct_1(global2.a, vec4<f32>(-203f, 135f, -627f, 562f), global1.a.c, 1u, vec2<f32>(-983f, 1070f)), -2362i)), global0.c.b.a))), Struct_1(_wgslsmith_f_op_vec3_f32(-global2.b.xww), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1257f, _wgslsmith_f_op_f32(abs(-627f)), _wgslsmith_f_op_f32(f32(-1f) * -1459f), 641f)), !(!vec4<bool>(global3[_wgslsmith_index_u32(u_input.e, 32u)], global3[_wgslsmith_index_u32(u_input.a.x, 32u)], arg_1, global3[_wgslsmith_index_u32(62005u, 32u)])), 59214u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.c.b.e))), global0.c, Struct_2(global1.b.c, Struct_1(global2.b.yzy, global1.d.c.b, select(global1.a.c, vec4<bool>(arg_1, global3[_wgslsmith_index_u32(1u, 32u)], false, true), select(global1.d.a, vec4<bool>(arg_1, arg_1, global2.c.x, global3[_wgslsmith_index_u32(54758u, 32u)]), false)), _wgslsmith_mult_u32(11751u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 960u, global0.b.d), vec3<u32>(u_input.e, 1105u, global1.a.d))), global0.a.a.xy), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.a.b.wyy - global1.d.d.a)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(688f, global0.c.c.e.x, global1.a.a.x, -460f), global1.b.b, true)), vec4<bool>(true, true, true, true), ~14338u, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.e.x, global2.e.x), global0.d.b.b.zx, false))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1244f, 623f, -927f)), vec4<f32>(_wgslsmith_f_op_f32(min(2360f, global1.a.a.x)), _wgslsmith_f_op_f32(-global1.c.c.e.x), _wgslsmith_f_op_f32(global1.d.b.a.x + 280f), -1645f), vec4<bool>(false, global0.b.c.x, true | arg_1, global1.a.c.x), countOneBits(global0.d.d.d), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global1.a.e + vec2<f32>(global0.c.b.e.x, global0.b.b.x))))), global0.c.e));
    var var_2 = arg_2;
    return 9562i | select(max(abs(arg_2.x), ~1i << (select(var_1.c.b.d, global0.c.b.d, true) % 32u)), _wgslsmith_mod_i32(firstTrailingBit(u_input.c), ~select(global0.c.e, -46283i, global3[_wgslsmith_index_u32(92397u, 32u)])), var_1.a.c.x);
}

fn func_1(arg_0: f32) -> Struct_3 {
    var var_0 = _wgslsmith_clamp_vec4_i32(abs(~(~select(vec4<i32>(-27319i, -34395i, -2147483647i, 1i), vec4<i32>(u_input.d, 2147483647i, u_input.c, 2147483647i), global3[_wgslsmith_index_u32(global0.a.d, 32u)]))), vec4<i32>(u_input.b, global1.c.e, _wgslsmith_dot_vec4_i32(vec4<i32>(-62704i, func_2(global0.a.a.x, true, vec2<i32>(0i, -2147483647i)), 1i, 15837i), vec4<i32>(reverseBits(62834i), _wgslsmith_mod_i32(2147483647i, 2147483647i), global1.c.e, global1.d.e)), global0.d.e), firstTrailingBit(vec4<i32>(u_input.b, 32144i, -2147483647i, u_input.d) | _wgslsmith_div_vec4_i32(vec4<i32>(global1.d.e, 23306i, -2147483647i, global0.d.e), vec4<i32>(u_input.d, -44421i, u_input.d, global0.c.e))) >> (countOneBits(u_input.a) % vec4<u32>(32u)));
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-global2.a.x), arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global2.e.x, _wgslsmith_f_op_f32(max(-762f, arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1724f * global1.a.a.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.b * vec4<f32>(-795f, 1082f, -253f, arg_0))))) + global0.d.b.b), global2.c, _wgslsmith_sub_u32(reverseBits(select(~u_input.a.x, 43042u << (global1.c.b.d % 32u), global1.d.c.c.x)), _wgslsmith_add_u32(global0.c.d.d, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 65956u, global1.a.d), u_input.a >> (u_input.a % vec4<u32>(32u))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(global0.a.a.yy, vec2<f32>(_wgslsmith_f_op_f32(select(-2520f, global1.a.a.x, true)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_2 = Struct_2(vec4<bool>(true, all(!(!vec2<bool>(global2.c.x, var_1.c.x))), true, !all(global1.a.c)), global0.a, global1.a, global1.d.d, _wgslsmith_mult_i32(abs(_wgslsmith_mult_i32(-18098i, ~1i)), var_0.x));
    let var_3 = global2.d;
    let var_4 = Struct_3(global0.c.d, var_2.c, var_2, Struct_2(!select(var_2.a, !vec4<bool>(false, global1.c.b.c.x, false, false), !var_2.a.x), Struct_1(vec3<f32>(-1240f, _wgslsmith_f_op_f32(min(global2.b.x, 1084f)), -981f), vec4<f32>(1064f, _wgslsmith_div_f32(global1.d.b.e.x, 1736f), arg_0, _wgslsmith_f_op_f32(-var_2.c.b.x)), !global0.b.c, global2.d << ((u_input.a.x << (var_2.c.d % 32u)) % 32u), global1.d.d.a.yy), var_2.b, global0.a, (countOneBits(u_input.d) & ~global0.c.e) << (0u % 32u)));
    return var_4;
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> Struct_3 {
    var var_0 = vec3<i32>(select(func_2(global0.b.e.x, all(global0.a.c.xzw), _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(global1.d.e, global0.c.e)), -vec2<i32>(global0.c.e, 1i), vec2<i32>(arg_0.d.e, global0.c.e) >> (vec2<u32>(69546u, global1.a.d) % vec2<u32>(32u)))), _wgslsmith_mod_i32(12921i, -u_input.d), all(!(!vec4<bool>(true, true, true, arg_0.c.b.c.x)))), select(-func_2(_wgslsmith_f_op_f32(trunc(arg_1)), any(arg_0.a.c.yx), -vec2<i32>(1i, global0.c.e)), _wgslsmith_clamp_i32(2147483647i, reverseBits(global1.d.e ^ u_input.d), _wgslsmith_dot_vec4_i32(-vec4<i32>(-1713i, global0.d.e, global0.c.e, u_input.d), select(vec4<i32>(-19390i, u_input.b, -1i, 1i), vec4<i32>(arg_0.d.e, 0i, u_input.c, 0i), global3[_wgslsmith_index_u32(22301u, 32u)]))), global1.d.b.c.x), _wgslsmith_dot_vec3_i32(min(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, global1.c.e, 9612i), _wgslsmith_add_vec3_i32(vec3<i32>(global0.c.e, 0i, global1.d.e), vec3<i32>(u_input.d, 0i, global0.c.e))), firstTrailingBit(max(vec3<i32>(arg_0.c.e, 33233i, -7458i), vec3<i32>(u_input.c, global0.c.e, -1i)))), vec3<i32>((global1.d.e & -1i) & abs(arg_0.d.e), _wgslsmith_div_i32(_wgslsmith_div_i32(23944i, u_input.b), i32(-1i) * -2147483647i), -14952i)));
    let var_1 = _wgslsmith_dot_vec3_u32(firstLeadingBit(countOneBits(~vec3<u32>(u_input.e, global0.b.d, global2.d))), _wgslsmith_clamp_vec3_u32(u_input.a.zyw, ~firstLeadingBit(u_input.a.xxx), firstTrailingBit(~vec3<u32>(9094u, 0u, 34504u) ^ u_input.a.yzz)));
    let var_2 = ~1u;
    var_0 = vec3<i32>(-_wgslsmith_sub_i32(u_input.d, global0.d.e), 16046i, global1.c.e);
    var var_3 = Struct_5(Struct_2(global0.c.c.c, Struct_1(vec3<f32>(func_1(-1219f).c.c.e.x, arg_0.b.b.x, -319f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(775f, arg_0.d.b.a.x, global0.d.d.a.x, -551f)))), arg_0.d.c.c, _wgslsmith_div_u32(global2.d, var_2), _wgslsmith_f_op_vec2_f32(vec2<f32>(-676f, global0.c.b.e.x) * func_1(1000f).b.e)), arg_0.d.d, arg_0.d.d, _wgslsmith_mod_i32(0i, func_2(_wgslsmith_f_op_f32(arg_1 - global0.d.c.e.x), true, vec2<i32>(-1i, global1.c.e)))), Struct_4(~(~14232u), _wgslsmith_f_op_vec4_f32(-global1.c.d.b), arg_0.d.e), arg_0.c.c, Struct_1(arg_0.b.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1046f, arg_1, arg_1, 1650f)))), select(arg_0.d.a, !(!vec4<bool>(false, arg_0.c.c.c.x, false, global1.c.c.c.x)), all(!vec2<bool>(global3[_wgslsmith_index_u32(global1.c.d.d, 32u)], true))), global1.a.d, _wgslsmith_f_op_vec2_f32(global1.b.e + vec2<f32>(_wgslsmith_f_op_f32(-global0.d.b.b.x), 318f))));
    return func_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.a.b.x)))), _wgslsmith_f_op_vec2_f32(func_3(var_3.a, Struct_3(Struct_1(global1.a.a, vec4<f32>(-1295f, global2.a.x, 346f, arg_0.a.e.x), vec4<bool>(global2.c.x, false, true, true), 4294967295u, vec2<f32>(global1.b.e.x, -1531f)), global1.b, Struct_2(global0.b.c, arg_0.a, arg_0.d.b, var_3.c, global1.c.e), func_1(global2.e.x).d), _wgslsmith_f_op_vec3_f32(-global1.b.a))).x)));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<u32>) -> Struct_3 {
    global0 = arg_0;
    global1 = arg_0;
    let var_0 = global0.d;
    let var_1 = 428f;
    global2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0.c.b.b.x)), -519f, global0.c.c.e.x), _wgslsmith_div_vec4_f32(global1.b.b, global0.d.d.b), vec4<bool>(!(arg_0.a.e.x <= -748f), global2.c.x, all(!vec4<bool>(var_0.a.x, true, false, false)), all(func_4(arg_0, var_0.d.a.x).b.c.xyz)), ~0u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global0.a.e))));
    return Struct_3(Struct_1(_wgslsmith_div_vec3_f32(global0.d.c.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.d.e.x, global0.c.c.e.x, global1.c.d.e.x))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global2.a.x)))), var_1, 381f, _wgslsmith_f_op_f32(var_1 * func_4(arg_0, var_1).d.d.a.x)), vec4<bool>(arg_0.c.c.a.x != -1937f, false, !arg_0.a.c.x, all(global0.b.c.xx)), 36742u, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(var_0.c.e.x, -706f), -536f)))), global0.c.d, func_1(global0.a.a.x).c, func_1(_wgslsmith_f_op_f32(global2.b.x * -827f)).d);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 32>();
    global1 = func_5(func_4(func_1(_wgslsmith_f_op_f32(f32(-1f) * -2514f)), _wgslsmith_f_op_f32(-global2.a.x)), u_input.a.zxw);
    let x = u_input.a;
    s_output = StorageBuffer(abs(func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1010f, global2.b.x))).c.e), 2463f);
}

