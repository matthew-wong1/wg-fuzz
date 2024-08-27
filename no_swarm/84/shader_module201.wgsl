struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
    c: i32,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10> = array<bool, 10>(false, true, true, false, false, false, false, false, false, false);

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 18>;

var<private> global3: array<i32, 24> = array<i32, 24>(-36979i, 2147483647i, 1i, -5794i, -9273i, 1i, 23422i, 1i, 2147483647i, -56770i, 54239i, 2147483647i, 11794i, 0i, 27556i, 0i, 51809i, -35004i, -30145i, i32(-2147483648), -5749i, 17446i, i32(-2147483648), 22076i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: Struct_1, arg_3: vec4<f32>) -> vec3<u32> {
    let var_0 = _wgslsmith_sub_vec2_i32(-(~reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, global3[_wgslsmith_index_u32(u_input.a, 24u)]), vec2<i32>(69997i, arg_2.c)))), vec2<i32>(-1i, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.c.x, arg_0.b.x), 43317u), 24u)] ^ max(_wgslsmith_clamp_i32(-27908i, u_input.b, arg_2.b), 48257i)));
    global2 = array<Struct_2, 18>();
    global3 = array<i32, 24>();
    let var_1 = Struct_3(select(!(!vec4<bool>(false, false, global1.a, false)), vec4<bool>(!arg_0.d.a & any(arg_0.e.c.zy), global1.a, global1.a, !any(arg_0.a.a)), select(true, !global0[_wgslsmith_index_u32(~32083u, 10u)], false)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>((u_input.d.x << (1u % 32u)) >> (48276u % 32u), min(~1u, u_input.c.x), arg_0.b.x), _wgslsmith_clamp_vec3_u32(u_input.d, vec3<u32>(_wgslsmith_div_u32(arg_0.b.x, 1u), u_input.a, reverseBits(4294967295u)), vec3<u32>(select(arg_0.b.x, 1u, arg_0.a.c.x), arg_0.b.x, 84583u))), 18u)], !arg_0.e.a.wyw);
    global1 = arg_0.a.b.b;
    return ~(vec3<u32>(1u, _wgslsmith_add_u32(firstLeadingBit(u_input.c.x), arg_0.b.x), countOneBits(u_input.c.x)) | _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(arg_0.b.x, u_input.c.x, 1u), u_input.d ^ vec3<u32>(u_input.d.x, u_input.a, u_input.a)), ~(~u_input.d)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: f32) -> Struct_3 {
    let var_0 = true;
    var var_1 = reverseBits(select(func_3(Struct_4(Struct_3(vec4<bool>(var_0, arg_1.x, false, global1.a), Struct_2(961f, arg_0), vec3<bool>(false, false, arg_1.x)), u_input.d.yx, ~0i, Struct_1(true, u_input.b, 4732i), Struct_3(vec4<bool>(true, false, false, true), Struct_2(arg_2, arg_0), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 10u)], var_0, global1.a))), _wgslsmith_f_op_f32(f32(-1f) * -815f), arg_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-977f, arg_2, -771f, -168f) * vec4<f32>(-1317f, -148f, arg_2, arg_2)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(696f, arg_2, -714f, 559f)))), firstLeadingBit(firstTrailingBit(vec3<u32>(u_input.a, u_input.a, u_input.c.x)) & ~u_input.d), !(!vec3<bool>(true, global1.a, false))));
    let var_2 = !((_wgslsmith_f_op_f32(round(arg_2)) < _wgslsmith_f_op_f32(select(-302f, arg_2, true))) && arg_1.x);
    var var_3 = 26481u;
    var var_4 = 4294967295u;
    return Struct_3(vec4<bool>(all(!select(vec3<bool>(true, arg_0.a, true), vec3<bool>(global1.a, true, false), vec3<bool>(var_2, false, true))), (_wgslsmith_div_u32(5618u, u_input.d.x) ^ ~0u) == 4650u, global0[_wgslsmith_index_u32(u_input.c.x, 10u)], var_2), global2[_wgslsmith_index_u32(20076u, 18u)], !select(vec3<bool>(false, arg_0.a, true), select(!vec3<bool>(var_0, arg_1.x, global1.a), select(vec3<bool>(true, true, var_0), vec3<bool>(true, arg_0.a, global0[_wgslsmith_index_u32(var_1.x, 10u)]), var_0), !vec3<bool>(true, arg_1.x, var_0)), true));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: Struct_4) -> i32 {
    let var_0 = func_2(arg_1.a.b.b, select(vec2<bool>(!arg_1.d.a, true), arg_1.a.c.xy, !vec2<bool>(!arg_1.d.a, !global0[_wgslsmith_index_u32(120367u, 10u)])), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -224f)))).b;
    global2 = array<Struct_2, 18>();
    global1 = func_2(arg_1.a.b.b, func_2(arg_2.e.b.b, vec2<bool>(true, select(true, false, var_0.b.a)), 329f).c.yy, arg_2.a.b.a).b.b;
    return global3[_wgslsmith_index_u32(1u, 24u)];
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec4<bool>) -> f32 {
    var var_0 = arg_1.b;
    global1 = Struct_1(_wgslsmith_f_op_f32(select(arg_1.a, -117f, arg_2.x)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a, arg_1.a) - -1651f)), ~(-_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b, global3[_wgslsmith_index_u32(u_input.d.x, 24u)], -2147483647i), vec3<i32>(1i, arg_1.b.c, arg_1.b.c))) | func_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-840f, arg_1.a, 201f, arg_1.a) - vec4<f32>(-363f, arg_1.a, arg_1.a, 1570f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, 882f, arg_1.a, 1000f)))), Struct_4(func_2(arg_1.b, vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 10u)]), arg_1.a), vec2<u32>(u_input.a, u_input.a) ^ u_input.d.zz, _wgslsmith_mod_i32(var_0.b, arg_0.x), arg_1.b, func_2(Struct_1(true, 28295i, -15902i), vec2<bool>(false, true), 470f)), Struct_4(func_2(Struct_1(global1.a, 0i, 0i), vec2<bool>(true, true), arg_1.a), u_input.c, abs(0i), Struct_1(global0[_wgslsmith_index_u32(40671u, 10u)], 1i, var_0.b), Struct_3(arg_2, Struct_2(1772f, arg_1.b), vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.c.x, 10u)])))), ~arg_1.b.b);
    var var_1 = max(~(~u_input.a), ~(~0u));
    global0 = array<bool, 10>();
    global1 = arg_1.b;
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-343f)), -1480f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec4<i32>(global1.c, u_input.b, 0i, global3[_wgslsmith_index_u32(u_input.c.x, 24u)]), global2[_wgslsmith_index_u32(u_input.a, 18u)], vec4<bool>(global0[_wgslsmith_index_u32(29321u, 10u)], global1.a, global0[_wgslsmith_index_u32(2039u, 10u)], global0[_wgslsmith_index_u32(u_input.c.x, 10u)]))), -251f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1340f), -964f, _wgslsmith_f_op_f32(round(-439f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-924f, 352f))), 158f, _wgslsmith_f_op_f32(sign(1092f))), select(vec3<bool>(true, true, any(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 10u)], global1.a, global0[_wgslsmith_index_u32(u_input.c.x, 10u)], global1.a), vec4<bool>(global0[_wgslsmith_index_u32(23032u, 10u)], false, global1.a, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 10u)], global0[_wgslsmith_index_u32(u_input.d.x, 10u)], global0[_wgslsmith_index_u32(u_input.c.x, 10u)], global0[_wgslsmith_index_u32(34615u, 10u)])))), !vec3<bool>(false, global1.a, func_2(Struct_1(global1.a, 17856i, global1.b), vec2<bool>(false, false), 581f).b.b.a), any(!vec3<bool>(true, global0[_wgslsmith_index_u32(40921u, 10u)], global1.a)) || all(!vec3<bool>(true, true, global1.a)))));
    var var_1 = Struct_4(func_2(Struct_1(true, -1i, reverseBits(_wgslsmith_add_i32(global1.c, u_input.b))), select(func_2(func_2(Struct_1(true, 1i, -2147483647i), vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 10u)], global1.a), var_0.x).b.b, !vec2<bool>(false, global1.a), _wgslsmith_f_op_f32(ceil(var_0.x))).a.yx, select(select(vec2<bool>(global1.a, false), vec2<bool>(global1.a, global1.a), global0[_wgslsmith_index_u32(0u, 10u)]), !vec2<bool>(global1.a, global0[_wgslsmith_index_u32(4294967295u, 10u)]), global1.a), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))))), func_3(Struct_4(Struct_3(func_2(Struct_1(global0[_wgslsmith_index_u32(4294967295u, 10u)], 29408i, u_input.b), vec2<bool>(global1.a, global1.a), var_0.x).a, func_2(Struct_1(global0[_wgslsmith_index_u32(u_input.c.x, 10u)], global1.c, global3[_wgslsmith_index_u32(u_input.c.x, 24u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 10u)], global0[_wgslsmith_index_u32(u_input.c.x, 10u)]), 620f).b, vec3<bool>(global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(u_input.d.x, 10u)], true)), u_input.c, global3[_wgslsmith_index_u32(u_input.d.x, 24u)], func_2(Struct_1(false, 22580i, -9443i), vec2<bool>(false, global1.a), _wgslsmith_f_op_f32(-405f - 826f)).b.b, Struct_3(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, global1.a, global0[_wgslsmith_index_u32(1u, 10u)]), false), func_2(Struct_1(false, u_input.b, -37386i), vec2<bool>(false, true), 1000f).b, select(vec3<bool>(global0[_wgslsmith_index_u32(15614u, 10u)], global1.a, global1.a), vec3<bool>(global1.a, global1.a, false), vec3<bool>(false, false, global1.a)))), -1634f, func_2(Struct_1(true, _wgslsmith_dot_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(23657u, 24u)], 1i, global1.c, 85201i), vec4<i32>(global1.b, -2147483647i, u_input.b, 1i)), u_input.b), !func_2(Struct_1(false, global1.b, global1.c), vec2<bool>(global1.a, global1.a), -1023f).a.ww, -136f).b.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -2273f, -193f, 232f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, -795f, var_0.x, -1105f)))), !vec4<bool>(global1.a, global0[_wgslsmith_index_u32(0u, 10u)], true, global0[_wgslsmith_index_u32(u_input.c.x, 10u)])))).xx, u_input.b, Struct_1(_wgslsmith_f_op_f32(-118f + var_0.x) < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1478f + var_0.x))), ~u_input.b, ~countOneBits(global3[_wgslsmith_index_u32(u_input.c.x, 24u)]) | 8184i), func_2(Struct_1(~(-12267i) > (global3[_wgslsmith_index_u32(u_input.a, 24u)] << (u_input.a % 32u)), -13328i, abs(~2809i)), !vec2<bool>(!global1.a, all(vec3<bool>(global0[_wgslsmith_index_u32(19438u, 10u)], global1.a, global0[_wgslsmith_index_u32(0u, 10u)]))), -1367f));
    global3 = array<i32, 24>();
    var var_2 = -1000f;
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-6616i, 1i, u_input.b, global1.c), reverseBits(vec4<i32>(2147483647i, -3657i, -31429i, -2147483647i)))), var_1.a.b, var_1.a.a)) - _wgslsmith_f_op_f32(-var_1.e.b.a));
    global3 = array<i32, 24>();
    var_1 = Struct_4(func_2(func_2(var_1.e.b.b, !(!vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 10u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1.a.b.a)), 818f)).b.b, !select(func_2(Struct_1(false, global1.b, -45833i), vec2<bool>(var_1.e.b.b.a, true), var_0.x).a.xz, var_1.a.c.zx, true), var_1.a.b.a), vec2<u32>(max(var_1.b.x | 4987u, func_3(Struct_4(Struct_3(vec4<bool>(true, false, var_1.e.c.x, global0[_wgslsmith_index_u32(14432u, 10u)]), var_1.e.b, var_1.a.c), u_input.d.zx, 28792i, Struct_1(false, var_1.c, global1.c), Struct_3(vec4<bool>(global0[_wgslsmith_index_u32(9934u, 10u)], var_1.e.c.x, false, global1.a), global2[_wgslsmith_index_u32(64129u, 18u)], var_1.e.c)), var_1.e.b.a, Struct_1(global0[_wgslsmith_index_u32(var_1.b.x, 10u)], 0i, u_input.b), vec4<f32>(var_0.x, var_0.x, 660f, var_0.x)).x) << (1532u % 32u), reverseBits(~firstLeadingBit(1u))), -reverseBits(-16622i), Struct_1(global1.a, var_1.e.b.b.b, -(~(-global3[_wgslsmith_index_u32(1u, 24u)]))), Struct_3(func_2(var_1.d, !(!var_1.a.c.zz), var_1.e.b.a).a, Struct_2(-1690f, var_1.e.b.b), select(var_1.e.c, !func_2(var_1.a.b.b, vec2<bool>(var_1.d.a, global0[_wgslsmith_index_u32(4294967295u, 10u)]), 1000f).c, all(vec4<bool>(false, var_1.e.a.x, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(func_2(func_2(func_2(Struct_1(global1.a, -9617i, var_1.c), vec2<bool>(false, var_1.e.b.b.a), var_0.x).b.b, select(vec2<bool>(false, global1.a), var_1.e.c.yz, var_1.e.c.zz), _wgslsmith_f_op_f32(f32(-1f) * -512f)).b.b, vec2<bool>(true, var_1.e.b.b.a), 608f).b.a, -390f, var_1.a.b.a));
}

