struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: i32,
    d: f32,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(623f, true, -67483i, vec4<u32>(1u, 14514u, 5954u, 20971u), vec4<f32>(562f, 1166f, 593f, -539f));

var<private> global1: array<f32, 26> = array<f32, 26>(1054f, 1000f, 181f, 2089f, -972f, 944f, 990f, 693f, -1278f, -1254f, 541f, 426f, 239f, 737f, 524f, 634f, -1017f, -722f, 295f, -787f, -1345f, -238f, -1000f, -441f, 1072f, 1456f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> f32 {
    var var_0 = arg_3.wwx;
    var_0 = global0.e.wzw;
    let var_1 = arg_2.d.xx;
    let var_2 = !(!arg_2.b);
    let var_3 = ~(~(~select(~u_input.a, max(arg_2.d.x, 4294967295u), true)));
    return arg_1.e.x;
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_5, arg_3: vec3<i32>) -> u32 {
    let var_0 = -u_input.c;
    let var_1 = vec2<u32>(~_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a ^ global0.d.x, 1u), countOneBits(39971u)), ~reverseBits(18285u));
    let var_2 = _wgslsmith_div_u32(reverseBits(abs(~u_input.a >> (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_1.x), global0.d.wz) % 32u))), var_1.x);
    let var_3 = Struct_3(arg_3, Struct_1(global1[_wgslsmith_index_u32(49848u, 26u)], true, _wgslsmith_dot_vec2_i32(vec2<i32>(0i >> (u_input.a % 32u), _wgslsmith_clamp_i32(arg_3.x, -14129i, arg_2.a.x)), _wgslsmith_div_vec2_i32(arg_3.zx, -vec2<i32>(1i, 19700i))), select(~countOneBits(vec4<u32>(15469u, global0.d.x, var_1.x, 4294967295u)), ~global0.d, !vec4<bool>(false, true, global0.b, global0.b)), _wgslsmith_f_op_vec4_f32(sign(global0.e))));
    global0 = Struct_1(-124f, any(vec4<bool>(!all(vec4<bool>(var_3.b.b, global0.b, true, true)), !var_3.b.b, !select(false, var_3.b.b, global0.b), var_3.b.b | true)), ~global0.c, countOneBits(~vec4<u32>(~0u, 4294967295u, 4145u, var_3.b.d.x)), global0.e);
    return reverseBits(26843u);
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = vec2<u32>(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-547f, -1240f) * -2409f)), vec3<f32>(_wgslsmith_f_op_f32(func_3(countOneBits(vec4<i32>(-2147483647i, u_input.c.x, u_input.b, global0.c)), Struct_1(global0.e.x, global0.b, u_input.c.x, vec4<u32>(0u, 74976u, 6678u, u_input.a), vec4<f32>(130f, global1[_wgslsmith_index_u32(21965u, 26u)], arg_0, -173f)), Struct_1(550f, global0.b, -1i, global0.d, vec4<f32>(-382f, -229f, arg_0, 553f)), global0.e)), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(global0.a - 378f)), _wgslsmith_f_op_f32(ceil(-345f))), Struct_5(~vec4<i32>(0i, u_input.b, -3888i, 1i)), vec3<i32>(abs(u_input.c.x), _wgslsmith_dot_vec3_i32(abs(u_input.c.yzw), -u_input.c.yxx), u_input.c.x)), 0u);
    global0 = Struct_1(arg_0, true, -(abs(u_input.b) >> (var_0.x % 32u)), select(~vec4<u32>(abs(4294967295u), global0.d.x, ~1u, ~global0.d.x), global0.d, !vec4<bool>(global0.b, global0.b, any(vec3<bool>(true, global0.b, global0.b)), !global0.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(global0.e))))) - vec4<f32>(arg_0, _wgslsmith_f_op_f32(func_3(u_input.c, Struct_1(-664f, true, -2147483647i, global0.d, global0.e), Struct_1(global1[_wgslsmith_index_u32(1u, 26u)], global0.b, u_input.c.x, global0.d, vec4<f32>(2485f, -576f, global0.e.x, arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 447f, -313f, -857f)))), -770f, _wgslsmith_f_op_f32(func_3(~vec4<i32>(1i, -1i, 19104i, -1i), Struct_1(308f, false, global0.c, global0.d, global0.e), Struct_1(-1304f, true, u_input.b, global0.d, global0.e), _wgslsmith_div_vec4_f32(global0.e, vec4<f32>(global0.a, arg_0, 1465f, global1[_wgslsmith_index_u32(2788u, 26u)])))))));
    let var_1 = Struct_2(global0.b, Struct_1(-234f, any(vec4<bool>(true == global0.b, true, global0.b, false)), select(_wgslsmith_dot_vec3_i32(min(u_input.c.zyw, u_input.c.xwz), select(vec3<i32>(global0.c, 2147483647i, 5342i), u_input.c.www, global0.b)), -(~(-2147483647i)), true), global0.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-376f, arg_0, arg_0, global1[_wgslsmith_index_u32(var_0.x, 26u)]) * vec4<f32>(global1[_wgslsmith_index_u32(103101u, 26u)], arg_0, 1371f, 375f)))))), global0.b, Struct_1(_wgslsmith_f_op_f32(func_3(select(u_input.c, u_input.c | u_input.c, vec4<bool>(false, global0.b, false, true)), Struct_1(_wgslsmith_f_op_f32(func_3(u_input.c, Struct_1(2201f, false, 0i, global0.d, vec4<f32>(global0.a, arg_0, -1574f, 848f)), Struct_1(global0.a, true, -2147483647i, vec4<u32>(u_input.a, 1u, u_input.a, var_0.x), global0.e), vec4<f32>(arg_0, -2742f, 2228f, global1[_wgslsmith_index_u32(u_input.a, 26u)]))), select(true, global0.b, true), u_input.c.x, vec4<u32>(u_input.a, 22810u, var_0.x, 0u), vec4<f32>(-720f, -1864f, 1714f, arg_0)), Struct_1(global0.e.x, true, abs(34777i), vec4<u32>(8124u, u_input.a, 0u, var_0.x), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.a, arg_0, global1[_wgslsmith_index_u32(4294967295u, 26u)], arg_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.e)))), any(!select(vec2<bool>(global0.b, true), vec2<bool>(global0.b, false), global0.b)), 1i, vec4<u32>(global0.d.x >> (0u % 32u), 26214u, _wgslsmith_add_u32(global0.d.x, 0u), u_input.a) & global0.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1255f, arg_0, 1000f, global1[_wgslsmith_index_u32(0u, 26u)])))), 2147483647i);
    global0 = var_1.b;
    let var_2 = ~((u_input.c.wy & firstLeadingBit(vec2<i32>(42345i, -30405i))) << (firstTrailingBit(var_1.b.d.xw) % vec2<u32>(32u)));
    return _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(4294967295u, 26u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-399f * -626f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1742f - _wgslsmith_f_op_f32(max(arg_0, -1253f))), _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(var_1.d.d.x, 26u)], global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(28268u, global0.d.x, 4294967295u), 26u)], global0.b))))));
}

fn func_5(arg_0: f32, arg_1: bool) -> Struct_4 {
    global0 = Struct_1(_wgslsmith_f_op_f32(sign(-246f)), arg_1, firstLeadingBit(global0.c), global0.d, global0.e);
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(global0.e.x)), _wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 26u)])))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global0.e.xy)) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(32418u, 26u)]), _wgslsmith_f_op_f32(230f * global0.e.x)), -1359f)));
    var var_1 = Struct_4(Struct_2(!arg_1 || true, Struct_1(-1622f, !any(vec2<bool>(arg_1, false)), abs(global0.c), ~(~global0.d), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(962f, 349f, -1162f, global1[_wgslsmith_index_u32(3310u, 26u)]))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1214f, 254f, global0.a, 867f)))))), true, Struct_1(global0.e.x, !(false & arg_1), global0.c, global0.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.e))), ~abs(global0.c)), Struct_3(u_input.c.zyy, Struct_1(_wgslsmith_f_op_f32(-1f), all(select(vec4<bool>(global0.b, true, arg_1, false), vec4<bool>(arg_1, false, global0.b, arg_1), vec4<bool>(true, false, false, false))), 0i, global0.d, _wgslsmith_div_vec4_f32(vec4<f32>(2362f, 1507f, arg_0, global0.a), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1[_wgslsmith_index_u32(global0.d.x, 26u)], 1036f, 244f, global0.e.x)))))), _wgslsmith_mod_i32(u_input.c.x, _wgslsmith_clamp_i32(-19498i | firstTrailingBit(u_input.b), _wgslsmith_add_i32(_wgslsmith_div_i32(14664i, global0.c), i32(-1i) * -2147483647i), ~u_input.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<i32>(global0.c, u_input.c.x, u_input.c.x, 11145i), Struct_1(205f, arg_1, -1i, global0.d, vec4<f32>(global0.e.x, 983f, var_0.x, 579f)), Struct_1(global1[_wgslsmith_index_u32(u_input.a, 26u)], global0.b, u_input.b, vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec4<f32>(370f, global1[_wgslsmith_index_u32(33167u, 26u)], 1000f, global0.a)), vec4<f32>(561f, arg_0, -321f, global1[_wgslsmith_index_u32(global0.d.x, 26u)]))) + _wgslsmith_f_op_f32(-var_0.x))), arg_0));
    let var_2 = var_1.b;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global0.e)));
    return Struct_4(Struct_2(all(!select(vec4<bool>(var_1.b.b.b, var_2.b.b, true, true), vec4<bool>(global0.b, global0.b, false, false), false)), var_2.b, var_1.a.b.b && !(!var_1.b.b.b), Struct_1(-1533f, var_1.b.b.b, ~_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(-1i, 73569i, u_input.c.x, -2147483647i)), global0.d, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1162f, 720f, var_3.x, -910f))), _wgslsmith_f_op_vec4_f32(min(var_2.b.e, vec4<f32>(arg_0, 1540f, -192f, var_0.x))))), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(select(var_1.b.a, u_input.c.zxy, global0.b), vec3<i32>(2147483647i, 48035i, global0.c)), 1i)), var_1.b, _wgslsmith_sub_i32(_wgslsmith_div_i32(i32(-1i) * -1595i, firstTrailingBit(firstLeadingBit(var_1.c))), u_input.b), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.x), 1822f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(arg_0, global1[_wgslsmith_index_u32(global0.d.x & 58152u, 26u)]))))));
}

fn func_6(arg_0: Struct_4, arg_1: f32, arg_2: Struct_5) -> Struct_2 {
    global0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + global0.a))), global0.e.x)), !(!global0.b), ~arg_2.a.x, vec4<u32>(~select(1u, ~arg_0.b.b.d.x, select(arg_0.a.d.b, false, true)), 0u, ~(~_wgslsmith_dot_vec2_u32(global0.d.xw, vec2<u32>(arg_0.a.d.d.x, 3992u))), ~(~u_input.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(global0.e)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1000f, -188f, 958f) + arg_0.b.b.e))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1, arg_0.d, 739f, -894f))))));
    let var_0 = func_5(_wgslsmith_f_op_f32(sign(-683f)), _wgslsmith_dot_vec4_i32(arg_2.a, vec4<i32>(22420i, arg_2.a.x, global0.c, min(global0.c, global0.c))) <= 1i).b;
    global1 = array<f32, 26>();
    global0 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(round(884f)))) + _wgslsmith_f_op_f32(1000f + arg_1)), true).a.d;
    var var_1 = func_5(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1541f, _wgslsmith_f_op_f32(f32(-1f) * -277f)), arg_1)))), any(select(vec2<bool>(var_0.b.b, arg_0.b.b.b), vec2<bool>(false, !global0.b), select(u_input.b > arg_0.a.b.c, u_input.b == u_input.c.x, false))));
    return func_5(var_1.a.d.a, any(!select(vec3<bool>(false, true, var_0.b.b), vec3<bool>(arg_0.a.a, false, global0.b), true))).a;
}

fn func_7(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: vec4<f32>, arg_3: i32) -> Struct_2 {
    return arg_1.a;
}

fn func_1() -> Struct_2 {
    global1 = array<f32, 26>();
    global1 = array<f32, 26>();
    var var_0 = select(all(vec2<bool>(global0.b, !(!global0.b))), false, false);
    var_0 = true;
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-587f + 1000f)))))), global0.b, ~global0.c, ~(~vec4<u32>(min(4294967295u, u_input.a), 1u, ~global0.d.x, global0.d.x ^ u_input.a)), _wgslsmith_f_op_vec4_f32(global0.e - _wgslsmith_f_op_vec4_f32(ceil(global0.e))));
    return func_7(global0.e.yx, Struct_4(func_6(func_5(_wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(3614u, 26u)])), true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.e.x))), Struct_5(vec4<i32>(15984i, -2147483647i, -1086i, 15519i))), Struct_3(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.c.xzw, u_input.c.yzw), u_input.c.xxw), Struct_1(838f, 4294967295u >= u_input.a, 60808i & global0.c, _wgslsmith_add_vec4_u32(vec4<u32>(43433u, 51682u, 4294967295u, 1u), global0.d), vec4<f32>(-628f, global0.e.x, global0.a, 366f))), _wgslsmith_mod_i32(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.b, global0.c) & vec3<i32>(u_input.c.x, -2147483647i, global0.c), select(vec3<i32>(global0.c, 5247i, u_input.c.x), u_input.c.wyw, global0.b))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, u_input.a), 26u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(global0.e, global0.e), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1031f, global1[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(u_input.a, 26u)], 1450f) - global0.e))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.e.x, global0.a, global0.e.x, 587f) - vec4<f32>(global1[_wgslsmith_index_u32(6431u, 26u)], -640f, global0.e.x, -745f)))), 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_1(), Struct_3(u_input.c.zyz, Struct_1(1455f, global0.d.x == _wgslsmith_div_u32(4294967295u, global0.d.x), -28815i, ~global0.d, global0.e)), _wgslsmith_mult_i32(~0i, u_input.c.x), global0.e.x);
    var var_1 = var_0.b;
    let var_2 = var_0.b.b.e.zwx;
    var var_3 = func_5(_wgslsmith_f_op_f32(291f * 592f), (~firstLeadingBit(global0.d.x) | 1u) >= (~_wgslsmith_add_u32(var_1.b.d.x, 1u) << (4294967295u % 32u)));
    let var_4 = func_5(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(u_input.a, 26u)], var_0.d, any(vec2<bool>(true, all(vec3<bool>(false, var_3.b.b.b, var_0.b.b.b)))))), true);
    let var_5 = -(~countOneBits(~vec3<i32>(var_4.c, -6053i, 0i)) | vec3<i32>(firstTrailingBit(-1055i), ~(12044i >> (var_0.a.d.d.x % 32u)), var_1.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.b.d, vec2<i32>(~var_3.a.b.c, _wgslsmith_add_i32(-(~(-1i)), -20624i)), vec3<u32>(13998u, var_1.b.d.x, firstTrailingBit(global0.d.x ^ _wgslsmith_dot_vec2_u32(global0.d.zx, var_3.b.b.d.yw))), var_1.b.e.xww);
}

