struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 55661u;

var<private> global1: Struct_1 = Struct_1(-531f, 2147483647i, true, 41573u, vec2<i32>(2147483647i, 0i));

var<private> global2: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(-761f, -49415i, false, 1u, vec2<i32>(1994i, -60106i)), Struct_1(-939f, i32(-2147483648), false, 1u, vec2<i32>(3632i, i32(-2147483648))), Struct_1(1098f, 1i, false, 0u, vec2<i32>(9771i, -8639i)), Struct_1(-358f, 2147483647i, false, 100885u, vec2<i32>(-61089i, 1i)), Struct_1(511f, 34721i, true, 1u, vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(-172f, -1i, false, 4294967295u, vec2<i32>(0i, 49910i)), Struct_1(901f, -1i, false, 35785u, vec2<i32>(-40144i, 51759i)), Struct_1(779f, 0i, false, 17002u, vec2<i32>(-1i, -12118i)), Struct_1(-674f, 26978i, false, 5996u, vec2<i32>(-26603i, -51947i)), Struct_1(541f, 5437i, false, 4294967295u, vec2<i32>(i32(-2147483648), 0i)), Struct_1(805f, 34472i, false, 74027u, vec2<i32>(61607i, 2147483647i)), Struct_1(1000f, 14857i, true, 1u, vec2<i32>(-1i, 0i)), Struct_1(-526f, -4058i, true, 4294967295u, vec2<i32>(2147483647i, -1i)), Struct_1(429f, i32(-2147483648), false, 32425u, vec2<i32>(1i, 0i)), Struct_1(-313f, 2147483647i, true, 4294967295u, vec2<i32>(0i, -1i)));

var<private> global3: array<bool, 2> = array<bool, 2>(true, false);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec4<u32>) -> vec2<u32> {
    let var_0 = vec2<u32>(~(~48988u), min(arg_2.x, arg_2.x)) << (_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(1u, 0u), _wgslsmith_sub_u32(global1.d, arg_0.d)), abs(countOneBits(arg_2.yx & vec2<u32>(global1.d, arg_2.x)))) % vec2<u32>(32u));
    var var_1 = abs(vec4<i32>(_wgslsmith_sub_i32(arg_1.x, _wgslsmith_div_i32(-1i, -7066i)), _wgslsmith_sub_i32(u_input.b, 65647i), i32(-1i) * -(~0i), min(~arg_0.e.x, _wgslsmith_mod_i32(global1.b, arg_0.e.x << (4294967295u % 32u)))));
    global1 = global2[_wgslsmith_index_u32(71157u, 15u)];
    global1 = Struct_1(_wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(select(842f, arg_0.a, all(vec3<bool>(global1.c, true, true))))), 94745i << (arg_2.x % 32u), true, _wgslsmith_clamp_u32(4294967295u, ~_wgslsmith_mult_u32(var_0.x, arg_2.x ^ 35385u), ~reverseBits(~1u)), vec2<i32>(u_input.b, 10346i) & vec2<i32>(-51414i, abs(arg_0.e.x)));
    let var_2 = arg_0;
    return ~abs(~abs(arg_2.yw)) ^ _wgslsmith_clamp_vec2_u32(~(~var_0), vec2<u32>(7754u, var_2.d), vec2<u32>(_wgslsmith_div_u32(var_2.d, _wgslsmith_dot_vec2_u32(arg_2.ww, arg_2.zw)), global1.d));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = 18575i;
    let var_1 = global2[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(firstLeadingBit(60389u), global1.d)), 15u)];
    let var_2 = _wgslsmith_div_vec2_u32(firstLeadingBit(func_3(global2[_wgslsmith_index_u32(var_1.d, 15u)], var_1.e, vec4<u32>(global1.d, 4294967295u, 1u, 21013u))), vec2<u32>(func_3(Struct_1(arg_0.x, -1i, global3[_wgslsmith_index_u32(global1.d, 2u)], 53495u, vec2<i32>(-2147483647i, -97408i)), global1.e, ~vec4<u32>(var_1.d, 50920u, 1u, global1.d)).x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.d, 7345u, 0u), vec3<u32>(global1.d, global1.d, var_1.d) << (vec3<u32>(4294967295u, var_1.d, var_1.d) % vec3<u32>(32u))))) ^ vec2<u32>(var_1.d, ~firstTrailingBit(31144u));
    var var_3 = global2[_wgslsmith_index_u32(var_2.x & global1.d, 15u)];
    global2 = array<Struct_1, 15>();
    return Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_0.x - var_3.a)))), ~(~(~(u_input.a.x & -2147483647i))), true, 0u, _wgslsmith_add_vec2_i32(-vec2<i32>(11273i, ~var_1.e.x), ~_wgslsmith_div_vec2_i32(var_1.e, min(vec2<i32>(2147483647i, global1.e.x), vec2<i32>(-1i, var_1.b)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    global1 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(368f, 322f, 1000f))))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a + 865f) - _wgslsmith_f_op_f32(f32(-1f) * -707f)), global1.a, arg_1.a)));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -942f), 0i, func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-1403f, 684f, -1302f), vec3<f32>(arg_0.a, 388f, -228f)), vec3<f32>(global1.a, 1043f, -630f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, arg_1.a, arg_1.a))), vec3<bool>(any(vec3<bool>(false, global1.c, global3[_wgslsmith_index_u32(arg_1.d, 2u)])), all(vec2<bool>(arg_1.c, arg_1.c)), arg_1.c)))).c, global1.d, arg_0.e);
    let var_1 = 28992i;
    var var_2 = vec2<bool>(arg_1.c && true, false);
    var var_3 = all(!vec4<bool>(any(!vec4<bool>(global3[_wgslsmith_index_u32(0u, 2u)], true, true, var_0.c)), arg_0.c != true, !(false || arg_1.c), true));
    return arg_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.a * -1839f))), firstTrailingBit(_wgslsmith_div_i32(-24371i, _wgslsmith_clamp_i32(countOneBits(2147483647i), 10107i, ~u_input.a.x))), !(-2147483647i != _wgslsmith_clamp_i32(-24672i, reverseBits(global1.b), global1.e.x)), global1.d, reverseBits(select(min(_wgslsmith_add_vec2_i32(u_input.a.zy, global1.e), vec2<i32>(u_input.a.x, 17084i) >> (vec2<u32>(0u, global1.d) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_clamp_i32(59827i, 0i, global1.e.x), ~(-6004i)), global3[_wgslsmith_index_u32(func_1(global2[_wgslsmith_index_u32(30631u, 15u)], global2[_wgslsmith_index_u32(select(global1.d, global1.d, global1.c), 15u)]), 2u)])));
    global1 = func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.a, global1.a, -806f))), vec3<f32>(_wgslsmith_f_op_f32(-global1.a), global1.a, _wgslsmith_f_op_f32(-562f - 411f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.a, global1.a, global1.a), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.a, -657f, 298f))), all(vec2<bool>(global1.c, false)))))), !(!select(vec3<bool>(true, false, global1.c), vec3<bool>(global3[_wgslsmith_index_u32(global1.d, 2u)], global1.c, false), vec3<bool>(global1.c, false, true))))));
    let var_0 = Struct_1(817f, -432i, all(vec2<bool>(all(vec2<bool>(true, global3[_wgslsmith_index_u32(global1.d, 2u)])), true)) && global3[_wgslsmith_index_u32(87871u, 2u)], reverseBits(func_1(global2[_wgslsmith_index_u32(~global1.d, 15u)], func_2(vec3<f32>(1092f, global1.a, global1.a)))), vec2<i32>(u_input.a.x, -(30566i ^ u_input.b) << (abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, global1.d, global1.d), vec4<u32>(1u, 4294967295u, 1u, global1.d))) % 32u)));
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-583f)), var_0.a, 449f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, global1.a, 141f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, -1148f, -1000f)))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(194f, var_0.a, -126f, var_1.a), vec4<f32>(-1832f, var_0.a, 1733f, -1328f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, -1000f, -143f, var_1.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(2262f, global1.a, 1161f, var_0.a), vec4<f32>(global1.a, -803f, global1.a, var_1.a)))), true)) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1000f, global1.a, global1.a, -237f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1604f, -949f, -1273f, var_0.a) * vec4<f32>(var_1.a, global1.a, 921f, -1668f)), vec4<bool>(var_0.c, global1.c, true, global3[_wgslsmith_index_u32(var_0.d, 2u)])))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.a, var_1.a, global1.a, 444f))), vec4<f32>(-957f, -939f, var_1.a, 1410f)))))));
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.wx) * vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a), -142f)), var_0.a)), var_2.xy);
    var var_4 = all(select(!select(vec3<bool>(true, true, true), !vec3<bool>(true, global1.c, true), any(vec2<bool>(var_1.c, var_0.c))), !(!select(vec3<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 2u)], true), vec3<bool>(false, global1.c, var_0.c), var_0.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), 497f) > -163f));
    var var_5 = select(~reverseBits(reverseBits(vec2<u32>(global1.d, var_1.d))), ~(~(~select(vec2<u32>(global1.d, var_0.d), vec2<u32>(24032u, 0u), vec2<bool>(global3[_wgslsmith_index_u32(10681u, 2u)], global1.c)))), !(!global1.c));
    var_4 = all(!(!vec3<bool>(false, global1.c | false, var_0.c)));
    let x = u_input.a;
    s_output = StorageBuffer(233f);
}

