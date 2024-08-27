struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec4<bool>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(1073i, i32(-2147483648));

var<private> global1: u32 = 4294967295u;

var<private> global2: array<vec4<i32>, 30>;

var<private> global3: array<u32, 16> = array<u32, 16>(25347u, 16150u, 29737u, 4294967295u, 17336u, 18239u, 1u, 99358u, 4294967295u, 68357u, 6035u, 14701u, 43501u, 4294967295u, 5087u, 16375u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    global2 = array<vec4<i32>, 30>();
    global2 = array<vec4<i32>, 30>();
    let var_0 = min(max(~(~abs(u_input.a)), ~(~u_input.a << (select(u_input.b.x, 1u, false) % 32u))), u_input.a);
    let var_1 = arg_0;
    var var_2 = false;
    return arg_0;
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2) -> vec3<bool> {
    let var_0 = u_input.a;
    let var_1 = 1i >> (_wgslsmith_mod_u32(u_input.a, var_0) % 32u);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(arg_1.a.b, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2185f, arg_1.a.b.x, arg_1.a.b.x, arg_1.a.b.x))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(207f, 2184f))), arg_1.a.a.x, _wgslsmith_f_op_f32(1057f + 1508f), 295f) - arg_1.a.b));
    let var_3 = reverseBits(u_input.e);
    global1 = 89338u;
    return vec3<bool>((_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(977f + -808f))) >= _wgslsmith_f_op_f32(floor(-1948f))) || true, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1119f - var_2.x)) <= _wgslsmith_div_f32(var_2.x, -1012f)), arg_1.a.e);
}

fn func_4(arg_0: bool) -> Struct_1 {
    let var_0 = !(!(!select(vec4<bool>(true, arg_0, arg_0, arg_0), !vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(true, true, true, true))));
    let var_1 = abs(-2147483647i);
    var var_2 = Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1135f, 180f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(307f, -522f), vec2<f32>(-1319f, 2097f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(786f, -661f)))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1787f, 291f, -756f, 1706f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2262f, 722f, -1061f, -942f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1873f, -293f, -345f, -1056f) + vec4<f32>(1000f, -275f, -1000f, 266f))))), var_0, var_0.x, false));
    let var_3 = Struct_2(var_2.a);
    let var_4 = abs(vec3<u32>(global3[_wgslsmith_index_u32(abs(~(41279u >> (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(12747u, 16u)], 16u)] % 32u))), 16u)], 1u, u_input.c.x | ~global3[_wgslsmith_index_u32(~u_input.b.x, 16u)]));
    return var_2.a;
}

fn func_1() -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-472f, _wgslsmith_div_f32(689f, 363f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1f - -1117f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(735f - -2388f) - _wgslsmith_f_op_f32(floor(617f))), -185f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), !vec4<bool>(true, true, u_input.a <= (57574u >> (u_input.b.x % 32u)), true), !all(vec3<bool>(true, true, true)), !any(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    global3 = array<u32, 16>();
    var var_1 = func_4(all(func_3(vec4<bool>(any(var_0.c.xwy), var_0.c.x, true, !var_0.d), Struct_2(func_2(Struct_1(var_0.a, var_0.b, var_0.c, var_0.c.x, false), Struct_2(Struct_1(var_0.a, vec4<f32>(var_0.b.x, var_0.a.x, var_0.a.x, 498f), var_0.c, false, var_0.e)))))));
    global1 = abs(_wgslsmith_mult_u32(~14741u, ~global3[_wgslsmith_index_u32(51248u, 16u)]) ^ 1u) | 92607u;
    let var_2 = Struct_2(func_2(func_4(-global0.x == _wgslsmith_sub_i32(u_input.d.x, u_input.e.x)), Struct_2(func_4(var_1.d && false))));
    return _wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) + _wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(sign(1737f)))) + var_2.a.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1056f, -196f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-1040f, 1172f)), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(abs(381f)), _wgslsmith_f_op_f32(-1000f - -927f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-402f, 439f, -1338f, 317f) * vec4<f32>(988f, -585f, -520f, 570f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1423f, 388f, -1452f, 574f), vec4<f32>(1495f, -1000f, -1188f, -504f)))), vec4<f32>(-504f, func_2(Struct_1(vec2<f32>(1317f, -1000f), vec4<f32>(1407f, -251f, -291f, 1176f), vec4<bool>(true, true, true, false), false, true), Struct_2(Struct_1(vec2<f32>(-1808f, -517f), vec4<f32>(-624f, 1373f, 467f, -261f), vec4<bool>(true, true, true, true), true, false))).b.x, _wgslsmith_f_op_f32(floor(-874f)), 1153f))), vec4<bool>((0u < u_input.a) | true, true, !func_3(vec4<bool>(true, true, false, false), Struct_2(Struct_1(vec2<f32>(1000f, 958f), vec4<f32>(977f, -855f, 520f, 1070f), vec4<bool>(true, true, false, true), true, true))).x, u_input.c.x <= 0u))), !(!func_4(true).c), true, any(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), func_3(vec4<bool>(false, true, true, false), Struct_2(Struct_1(vec2<f32>(-1924f, -820f), vec4<f32>(1743f, -421f, -1222f, -644f), vec4<bool>(true, false, true, false), false, true))))));
    let var_1 = -2147483647i;
    var var_2 = -1i;
    let var_3 = Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1434f, var_0.a.x, 185f, -987f), _wgslsmith_f_op_vec4_f32(-var_0.b))))), vec4<bool>(select(func_4(var_0.c.x == false).e, true, false), var_0.d, (~global0.x | 294i) == (i32(-1i) * -global0.x), var_0.e), true, var_0.e);
    var var_4 = Struct_2(var_3);
    global1 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(4294967295u, 16u)], global3[_wgslsmith_index_u32(u_input.b.x, 16u)]), global3[_wgslsmith_index_u32(u_input.c.x, 16u)]))), ~countOneBits(firstLeadingBit(u_input.c.x)));
    var var_5 = ~_wgslsmith_mod_vec2_i32((vec2<i32>(17742i, 1i) | u_input.e.yz) & vec2<i32>(global0.x, u_input.e.x), reverseBits(reverseBits(vec2<i32>(var_1, global0.x)))) << ((min(vec2<u32>(42682u, _wgslsmith_dot_vec4_u32(u_input.c, u_input.c)), max(u_input.c.zw, vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(3335u, 16u)], 16u)], 2039u))) | vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1400u, 16u)], 16u)]), u_input.c.wxz), u_input.a)) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, ~83333u);
}

