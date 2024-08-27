struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec3<bool>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec3<f32>, 6> = array<vec3<f32>, 6>(vec3<f32>(206f, 498f, -984f), vec3<f32>(-952f, -771f, 1175f), vec3<f32>(-150f, 923f, -1996f), vec3<f32>(1000f, 2140f, 1025f), vec3<f32>(-269f, 811f, -1000f), vec3<f32>(-456f, -367f, -585f));

var<private> global2: array<bool, 8> = array<bool, 8>(true, true, true, true, false, true, true, false);

var<private> global3: u32;

var<private> global4: bool = true;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    global3 = reverseBits(0u);
    var var_0 = select(arg_1.a, global2[_wgslsmith_index_u32(u_input.a, 8u)], global2[_wgslsmith_index_u32(arg_0.a, 8u)]);
    global3 = abs(u_input.e.x & 964u);
    global4 = true;
    let var_1 = arg_1;
    return !all(!select(var_1.c.xy, vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 8u)], false), !arg_1.c.zx));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec3<f32>) -> Struct_2 {
    let var_0 = 0i > u_input.b.x;
    var var_1 = !select(!vec4<bool>(false, true, -2147483647i <= u_input.c.x, all(vec4<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 8u)], arg_1, var_0, false))), !vec4<bool>(arg_1 | true, func_3(Struct_2(u_input.a, vec4<f32>(arg_2.x, arg_2.x, 201f, -442f)), Struct_1(arg_1, vec2<i32>(0i, 1i), vec3<bool>(true, false, false), -1i, var_0)), !arg_0.e, any(arg_0.c.zz)), all(select(arg_0.c.xz, select(arg_0.c.zz, arg_0.c.xx, vec2<bool>(false, arg_1)), arg_0.c.zz)));
    var var_2 = 1i;
    let var_3 = _wgslsmith_mult_u32(~(4294967295u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, 24584u) | vec4<u32>(7001u, u_input.a, u_input.e.x, 1u), abs(vec4<u32>(64031u, 4294967295u, 33158u, 1u))) % 32u)), 17272u);
    let var_4 = vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.x, _wgslsmith_f_op_f32(396f + arg_2.x))) + 433f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.x + arg_2.x), _wgslsmith_div_f32(arg_2.x, 924f))), all(select(vec3<bool>(true, var_0, arg_1), !arg_0.c, !arg_0.c.x)))), arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-818f * 742f)));
    return Struct_2(countOneBits(33823u), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + var_4.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(trunc(302f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-347f))), arg_2.x));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = vec3<u32>(~_wgslsmith_div_u32(48801u, _wgslsmith_clamp_u32(u_input.a, 1u, 2838u)), 0u, 0u) | u_input.e;
    var var_1 = func_2(Struct_1(true, u_input.d.zz, vec3<bool>(false, true || global2[_wgslsmith_index_u32(20836u, 8u)], true), ~select(u_input.b.x, ~u_input.b.x, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(54764u, var_0.x), 8u)]), false), true, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(arg_0.b.x, -462f), -1126f, arg_0.b.x))), _wgslsmith_f_op_vec3_f32(arg_0.b.wyz * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-592f, arg_0.b.x, 324f), global1[_wgslsmith_index_u32(19841u, 6u)])))), !(!vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 8u)], false, global2[_wgslsmith_index_u32(u_input.e.x, 8u)])))));
    global0 = func_2(Struct_1(global2[_wgslsmith_index_u32(var_0.x, 8u)], -abs(u_input.b.wx), !vec3<bool>(global2[_wgslsmith_index_u32(1u, 8u)], false, global2[_wgslsmith_index_u32(8862u, 8u)]), -48651i, global2[_wgslsmith_index_u32(abs(var_0.x), 8u)]), true, global1[_wgslsmith_index_u32(4294967295u, 6u)]).b.x < _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b.x, _wgslsmith_f_op_f32(trunc(arg_0.b.x))) * arg_0.b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1194f))))));
    return Struct_2(arg_0.a & 0u, var_1.b);
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    let var_0 = Struct_1(true, _wgslsmith_add_vec2_i32(u_input.c, u_input.b.xw), !vec3<bool>(!(global2[_wgslsmith_index_u32(99864u, 8u)] & global2[_wgslsmith_index_u32(arg_0.a, 8u)]), any(select(vec2<bool>(global2[_wgslsmith_index_u32(0u, 8u)], true), vec2<bool>(global2[_wgslsmith_index_u32(arg_0.a, 8u)], false), vec2<bool>(global2[_wgslsmith_index_u32(0u, 8u)], global2[_wgslsmith_index_u32(88472u, 8u)]))), true), -_wgslsmith_dot_vec2_i32(vec2<i32>(-994i, -2147483647i) >> (u_input.e.zx % vec2<u32>(32u)), -u_input.d.zx & reverseBits(vec2<i32>(-1i, 1i))), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, u_input.c.x, u_input.c.x) ^ vec4<i32>(u_input.b.x, -68874i, 1i, u_input.b.x), u_input.b) == -(~(u_input.b.x ^ 1i)));
    global2 = array<bool, 8>();
    let var_1 = ~vec3<u32>(_wgslsmith_dot_vec2_u32(~select(vec2<u32>(arg_0.a, arg_0.a), u_input.e.yy, var_0.c.zz), u_input.e.yx), select(min(~u_input.e.x, 1u), 0u, global2[_wgslsmith_index_u32(func_2(var_0, false && global2[_wgslsmith_index_u32(u_input.a, 8u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1621f, 901f, -485f))).a, 8u)]), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(8855u, 4294967295u, arg_0.a, u_input.e.x), vec4<u32>(arg_0.a, arg_0.a, u_input.a, arg_0.a), vec4<u32>(33101u, u_input.a, u_input.e.x, u_input.a)), vec4<u32>(4598u, 30351u, 4294967295u, 60441u)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a, arg_0.a, arg_0.a) & vec4<u32>(u_input.a, 12512u, 0u, u_input.a), vec4<u32>(2063u, u_input.e.x, arg_0.a, 4294967295u))));
    var var_2 = arg_0.b;
    let var_3 = arg_0.b.x;
    return Struct_1(any(select(!vec4<bool>(var_0.a, var_0.a, global2[_wgslsmith_index_u32(0u, 8u)], false), select(vec4<bool>(var_0.c.x, true, var_0.e, var_0.a), select(vec4<bool>(false, var_0.c.x, false, var_0.e), vec4<bool>(global2[_wgslsmith_index_u32(1u, 8u)], var_0.a, true, true), global2[_wgslsmith_index_u32(34142u, 8u)]), var_0.d == -41169i), !(!vec4<bool>(global2[_wgslsmith_index_u32(0u, 8u)], false, var_0.c.x, false)))), firstLeadingBit(firstTrailingBit(u_input.b.xz)), select(vec3<bool>(global2[_wgslsmith_index_u32(~0u, 8u)] & all(vec4<bool>(var_0.e, var_0.e, var_0.a, false)), any(var_0.c), var_0.c.x & true), select(!var_0.c, var_0.c, var_0.c.x), all(vec3<bool>(u_input.b.x == -3058i, any(vec4<bool>(false, true, var_0.c.x, global2[_wgslsmith_index_u32(var_1.x, 8u)])), all(var_0.c)))), _wgslsmith_mult_i32(var_0.b.x, ~(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x), vec2<i32>(-52710i, 2147483647i)))), false && any(vec3<bool>(var_3 >= arg_0.b.x, true | var_0.a, !var_0.e)));
}

fn func_6(arg_0: Struct_1) -> f32 {
    var var_0 = vec4<bool>(true, all(select(select(vec4<bool>(arg_0.a, false, true, arg_0.a), vec4<bool>(arg_0.c.x, arg_0.e, arg_0.a, true), vec4<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 8u)], arg_0.c.x, false, arg_0.e)), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 8u)], true, global2[_wgslsmith_index_u32(48994u, 8u)], false), vec4<bool>(arg_0.e, arg_0.c.x, global2[_wgslsmith_index_u32(10534u, 8u)], true), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 8u)], false, false, global2[_wgslsmith_index_u32(1u, 8u)])), vec4<bool>(true, global2[_wgslsmith_index_u32(25177u, 8u)], arg_0.a, arg_0.e))) | global2[_wgslsmith_index_u32(27995u, 8u)], _wgslsmith_sub_u32(_wgslsmith_mult_u32(65235u, u_input.a >> (u_input.e.x % 32u)), select(10043u, 36424u, arg_0.a)) == u_input.e.x, all(select(!arg_0.c, !arg_0.c, (arg_0.e && arg_0.c.x) != false)));
    let var_1 = func_3(func_4(func_4(Struct_2(_wgslsmith_mult_u32(0u, 0u), _wgslsmith_f_op_vec4_f32(vec4<f32>(112f, -2424f, -2044f, 820f) - vec4<f32>(557f, 975f, -179f, 1893f))))), Struct_1(true, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.d, u_input.b.x, 24957i, -1695i), abs(vec4<i32>(1i, -41144i, arg_0.b.x, u_input.d.x))), -1i), vec3<bool>(true, all(!vec2<bool>(false, var_0.x)), false), _wgslsmith_mod_i32(-(~18361i), ~_wgslsmith_div_i32(-2147483647i, arg_0.b.x)), any(arg_0.c.zz)));
    let var_2 = Struct_1(!(((30387i > arg_0.d) != arg_0.a) & any(!vec4<bool>(false, arg_0.c.x, global2[_wgslsmith_index_u32(u_input.a, 8u)], false))), ~arg_0.b, !(!vec3<bool>(func_5(Struct_2(u_input.e.x, vec4<f32>(1162f, 102f, -627f, -494f))).e, false, any(vec2<bool>(global2[_wgslsmith_index_u32(111211u, 8u)], true)))), -arg_0.d, true);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(500f)))))) * _wgslsmith_f_op_f32(select(func_4(Struct_2(u_input.a, vec4<f32>(-686f, -278f, -1000f, 908f))).b.x, _wgslsmith_f_op_f32(-816f * _wgslsmith_f_op_f32(-832f + -1344f)), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(574f - _wgslsmith_f_op_f32(min(-734f, -836f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(u_input.e.x, vec4<f32>(291f, 456f, -683f, -232f))).b.x - 1093f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-763f, _wgslsmith_f_op_f32(f32(-1f) * -602f))));
    var var_4 = Struct_1(true, vec2<i32>(_wgslsmith_add_i32(~arg_0.b.x, u_input.d.x), _wgslsmith_clamp_i32(~var_2.d, var_2.d, _wgslsmith_add_i32(0i, ~arg_0.d))), !var_0.wyw, u_input.d.x, var_2.a);
    return _wgslsmith_f_op_f32(step(-324f, var_3.x));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(func_6(func_5(func_4(func_2(Struct_1(global2[_wgslsmith_index_u32(u_input.e.x, 8u)], u_input.b.xx, vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 8u)], global2[_wgslsmith_index_u32(59194u, 8u)], true), -2147483647i, true), global2[_wgslsmith_index_u32(u_input.e.x, 8u)], global1[_wgslsmith_index_u32(u_input.e.x << (0u % 32u), 6u)])))));
    global2 = array<bool, 8>();
    global0 = func_3(func_2(func_5(func_4(Struct_2(u_input.e.x, vec4<f32>(var_0, var_0, -1034f, var_0)))), !global2[_wgslsmith_index_u32(0u, 8u)], _wgslsmith_div_vec3_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~u_input.e.yy, ~u_input.e.xz), 6u)], vec3<f32>(_wgslsmith_f_op_f32(1000f - -392f), _wgslsmith_f_op_f32(f32(-1f) * -171f), _wgslsmith_f_op_f32(var_0 + var_0)))), Struct_1(true, -abs(u_input.d.zy), select(func_5(func_2(Struct_1(true, u_input.c, vec3<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 8u)], global2[_wgslsmith_index_u32(1u, 8u)]), 0i, global2[_wgslsmith_index_u32(u_input.a, 8u)]), true, vec3<f32>(var_0, var_0, 1057f))).c, !vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 8u)], global2[_wgslsmith_index_u32(u_input.e.x, 8u)], global2[_wgslsmith_index_u32(648u, 8u)]), any(func_5(Struct_2(24273u, vec4<f32>(var_0, -2035f, var_0, var_0))).c.zx)), ~(-abs(u_input.b.x)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.e, vec3<u32>(0u, u_input.a, u_input.e.x), u_input.e), vec3<u32>(u_input.a, 91685u, 39175u)), 8u)] & global2[_wgslsmith_index_u32(u_input.e.x, 8u)]));
    var var_1 = vec3<u32>(u_input.a, 0u << (_wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(u_input.e, u_input.e), 4294967295u) % 32u), _wgslsmith_mult_u32(~(u_input.a ^ ~24201u), abs(u_input.e.x)));
    global4 = global2[_wgslsmith_index_u32(u_input.a, 8u)];
    return func_4(Struct_2(26276u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, -1514f, -1000f) * vec4<f32>(var_0, var_0, 178f, var_0)), _wgslsmith_div_vec4_f32(vec4<f32>(-1055f, var_0, 621f, -1000f), vec4<f32>(-346f, -1610f, var_0, 1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global2[_wgslsmith_index_u32(20176u, 8u)], firstTrailingBit(vec2<i32>(1765i, u_input.d.x)), select(!(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)], global2[_wgslsmith_index_u32(u_input.e.x, 8u)])), vec3<bool>(all(!vec4<bool>(true, false, global2[_wgslsmith_index_u32(58590u, 8u)], false)), true, true), vec3<bool>(_wgslsmith_div_u32(0u, u_input.e.x) <= (u_input.e.x & u_input.e.x), global2[_wgslsmith_index_u32(4398u, 8u)] | true, u_input.d.x <= u_input.b.x)), ~_wgslsmith_dot_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, u_input.b.x, u_input.c.x), vec3<i32>(-60389i, -2147483647i, u_input.b.x)), vec3<i32>(_wgslsmith_mult_i32(u_input.d.x, u_input.b.x), i32(-1i) * -1i, 0i)), u_input.a > 4294967295u);
    let var_1 = func_1();
    var var_2 = vec3<u32>(48326u, 4294967295u, _wgslsmith_dot_vec2_u32(abs(u_input.e.xx), _wgslsmith_sub_vec2_u32(u_input.e.zz, u_input.e.zx)));
    let var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(firstTrailingBit(~_wgslsmith_mod_vec4_u32(vec4<u32>(106946u, u_input.e.x, 0u, u_input.e.x), vec4<u32>(var_3.a, var_1.a, 0u, 61554u)))), 1449i ^ max(u_input.d.x, var_0.d), ~_wgslsmith_add_vec2_i32(-(var_0.b & var_0.b), _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, -1i), var_0.b)));
}

