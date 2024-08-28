struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: i32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, true);

var<private> global1: array<Struct_1, 18>;

var<private> global2: f32;

var<private> global3: array<vec4<u32>, 18>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -589f));
    var var_1 = arg_1.x;
    var var_2 = vec4<f32>(-220f, -2791f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-219f * -687f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(217f * -1000f))))), _wgslsmith_f_op_f32(-2068f * _wgslsmith_f_op_f32(step(1209f, -3039f))));
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(693f))));
    global1 = array<Struct_1, 18>();
    return firstLeadingBit(4294967295u);
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: Struct_1) -> Struct_5 {
    global3 = array<vec4<u32>, 18>();
    global2 = arg_0.c;
    let var_0 = abs(u_input.a.x);
    var var_1 = ~func_3(_wgslsmith_f_op_f32(-arg_0.c) <= _wgslsmith_f_op_f32(-arg_2.d), select(~vec2<u32>(14795u, 22922u), ~vec2<u32>(24788u, 32620u), arg_0.d.c.a) & ~countOneBits(vec2<u32>(4294967295u, 0u)));
    global2 = arg_0.a;
    return Struct_5(Struct_3(_wgslsmith_div_f32(-2699f, arg_2.b), Struct_1(any(select(global0.yy, vec2<bool>(false, true), global0.ww)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.d, arg_0.e.c.d)) + arg_0.a), select(select(-899i, 1i, false), u_input.a.x, arg_0.e.c.a), -102f), -1622f, arg_0.e, arg_0.e));
}

fn func_4(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_5, arg_3: Struct_2) -> u32 {
    global3 = array<vec4<u32>, 18>();
    let var_0 = arg_2.a.e.c;
    var var_1 = 1f;
    global0 = vec4<bool>(!(arg_2.a.e.c.a & false), select(false, arg_3.c.a, any(global0.www)), any(select(select(select(vec4<bool>(global0.x, arg_2.a.d.c.a, true, var_0.a), vec4<bool>(false, true, false, var_0.a), true), vec4<bool>(false, false, false, false), vec4<bool>(var_0.a, true, var_0.a, true)), vec4<bool>(false, true, !global0.x, all(vec4<bool>(arg_2.a.d.a.x, global0.x, false, false))), _wgslsmith_f_op_f32(-930f - arg_2.a.c) >= _wgslsmith_f_op_f32(ceil(var_0.d)))), !arg_2.a.b.a);
    var var_2 = Struct_1(func_2(Struct_3(_wgslsmith_div_f32(-583f, arg_3.d.x), global1[_wgslsmith_index_u32(firstLeadingBit(0u), 18u)], 1050f, Struct_2(vec2<bool>(arg_3.a.x, arg_3.c.a), vec2<i32>(-11225i, u_input.b), var_0, vec4<f32>(var_0.b, 410f, -1000f, -1493f)), Struct_2(vec2<bool>(true, true), vec2<i32>(var_0.c, -30683i), global1[_wgslsmith_index_u32(15574u, 18u)], arg_3.d)), false, global1[_wgslsmith_index_u32(u_input.d, 18u)]).a.b.a & (arg_3.d.x != _wgslsmith_f_op_f32(arg_2.a.d.c.b * var_0.b)), _wgslsmith_f_op_f32(arg_2.a.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -764f) - var_0.d)), var_0.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c.d)))), _wgslsmith_f_op_f32(-var_0.d), false)));
    return u_input.d;
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: vec2<i32>) -> vec4<f32> {
    let var_0 = ~u_input.a.x >> (u_input.d % 32u);
    var var_1 = reverseBits(abs(vec2<u32>(func_4(-vec4<i32>(0i, 20318i, var_0, -22515i), _wgslsmith_mod_u32(u_input.d, u_input.d), func_2(Struct_3(143f, Struct_1(global0.x, arg_0, 0i, -1344f), arg_0, Struct_2(vec2<bool>(false, global0.x), vec2<i32>(arg_2.x, arg_2.x), global1[_wgslsmith_index_u32(u_input.d, 18u)], arg_1), Struct_2(vec2<bool>(false, global0.x), vec2<i32>(-2147483647i, 17632i), global1[_wgslsmith_index_u32(4294967295u, 18u)], vec4<f32>(-218f, 633f, 1422f, arg_1.x))), true, Struct_1(true, arg_1.x, -1508i, -566f)), func_2(Struct_3(arg_0, global1[_wgslsmith_index_u32(u_input.d, 18u)], 670f, Struct_2(vec2<bool>(true, true), vec2<i32>(45866i, 2147483647i), Struct_1(false, 262f, var_0, arg_0), arg_1), Struct_2(global0.zw, arg_2, global1[_wgslsmith_index_u32(21826u, 18u)], arg_1)), global0.x, Struct_1(global0.x, 562f, arg_2.x, 1246f)).a.d), _wgslsmith_mod_u32(u_input.d, _wgslsmith_div_u32(u_input.d, u_input.d)))));
    let var_2 = global1[_wgslsmith_index_u32(func_3(!global0.x, ~(~(vec2<u32>(var_1.x, 32629u) << (max(vec2<u32>(0u, 49178u), vec2<u32>(u_input.d, 47713u)) % vec2<u32>(32u))))), 18u)];
    let var_3 = u_input.d;
    let var_4 = func_2(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-arg_1.x)) + _wgslsmith_f_op_f32(366f + -867f)), func_2(func_2(Struct_3(arg_1.x, Struct_1(true, 1229f, -3432i, var_2.b), -1000f, Struct_2(global0.yz, u_input.a.ww, Struct_1(global0.x, -941f, arg_2.x, var_2.d), arg_1), Struct_2(vec2<bool>(var_2.a, false), arg_2, Struct_1(var_2.a, -1000f, 2147483647i, arg_0), arg_1)), select(global0.x, true, var_2.a), func_2(Struct_3(var_2.d, global1[_wgslsmith_index_u32(u_input.d, 18u)], arg_0, Struct_2(global0.yy, vec2<i32>(arg_2.x, var_2.c), global1[_wgslsmith_index_u32(var_1.x, 18u)], arg_1), Struct_2(global0.wx, vec2<i32>(u_input.b, -54546i), Struct_1(global0.x, 701f, arg_2.x, 1462f), vec4<f32>(arg_1.x, 905f, -1000f, arg_0))), global0.x, global1[_wgslsmith_index_u32(var_1.x, 18u)]).a.d.c).a, !select(var_2.a, true, global0.x), global1[_wgslsmith_index_u32(abs(15799u), 18u)]).a.b, arg_1.x, func_2(Struct_3(arg_1.x, global1[_wgslsmith_index_u32(firstTrailingBit(1u), 18u)], 207f, func_2(Struct_3(479f, global1[_wgslsmith_index_u32(26116u, 18u)], -167f, Struct_2(vec2<bool>(global0.x, true), vec2<i32>(var_0, u_input.a.x), Struct_1(var_2.a, -2401f, var_2.c, arg_0), arg_1), Struct_2(global0.zw, u_input.a.ww, Struct_1(false, -389f, -2147483647i, -188f), vec4<f32>(var_2.d, arg_1.x, var_2.d, arg_1.x))), global0.x, global1[_wgslsmith_index_u32(u_input.d, 18u)]).a.e, func_2(Struct_3(var_2.d, Struct_1(var_2.a, var_2.b, var_2.c, arg_0), arg_1.x, Struct_2(vec2<bool>(var_2.a, var_2.a), vec2<i32>(-34588i, 44786i), Struct_1(var_2.a, 1774f, var_2.c, 2197f), vec4<f32>(arg_1.x, 268f, var_2.b, 543f)), Struct_2(global0.zx, arg_2, global1[_wgslsmith_index_u32(var_3, 18u)], vec4<f32>(arg_0, 240f, arg_1.x, 1005f))), var_2.a, global1[_wgslsmith_index_u32(0u, 18u)]).a.d), !any(vec4<bool>(var_2.a, var_2.a, var_2.a, var_2.a)), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 4294967295u, 11871u), vec3<u32>(var_1.x, 4294967295u, var_3)), 18u)]).a.e, func_2(func_2(Struct_3(498f, global1[_wgslsmith_index_u32(45083u, 18u)], -1190f, Struct_2(vec2<bool>(global0.x, false), vec2<i32>(arg_2.x, var_0), global1[_wgslsmith_index_u32(48558u, 18u)], arg_1), Struct_2(vec2<bool>(var_2.a, global0.x), arg_2, global1[_wgslsmith_index_u32(78749u, 18u)], arg_1)), global0.x, global1[_wgslsmith_index_u32(abs(var_1.x), 18u)]).a, all(!global0.xxx), Struct_1(-3302i < var_0, _wgslsmith_f_op_f32(-var_2.b), var_2.c | 1i, _wgslsmith_f_op_f32(-arg_1.x))).a.e), !(!(var_2.a || (global0.x && global0.x))), Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-297f - var_2.d) - _wgslsmith_f_op_f32(min(arg_1.x, -454f)))), var_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.d))))))).a.e.c;
    return func_2(func_2(Struct_3(-129f, Struct_1(var_3 == var_1.x, arg_1.x, -13722i, -797f), arg_1.x, func_2(func_2(Struct_3(-675f, Struct_1(true, arg_1.x, var_4.c, var_4.b), 477f, Struct_2(global0.yw, vec2<i32>(var_2.c, -29975i), Struct_1(true, 960f, u_input.a.x, 1013f), vec4<f32>(791f, arg_1.x, 438f, -1454f)), Struct_2(global0.zz, arg_2, Struct_1(global0.x, 241f, var_2.c, -405f), vec4<f32>(arg_0, arg_0, var_4.b, 1207f))), var_2.a, Struct_1(var_4.a, 1000f, var_4.c, arg_1.x)).a, var_4.b > arg_1.x, func_2(Struct_3(153f, Struct_1(false, -425f, -2485i, 209f), arg_1.x, Struct_2(global0.xx, vec2<i32>(-1i, -2147483647i), var_4, arg_1), Struct_2(vec2<bool>(global0.x, true), vec2<i32>(1i, 1i), var_4, vec4<f32>(946f, 1785f, -2288f, -216f))), false, var_4).a.d.c).a.e, Struct_2(!vec2<bool>(var_4.a, global0.x), ~vec2<i32>(u_input.c.x, -2147483647i), func_2(Struct_3(arg_0, global1[_wgslsmith_index_u32(u_input.d, 18u)], arg_1.x, Struct_2(vec2<bool>(global0.x, false), vec2<i32>(-1i, var_4.c), global1[_wgslsmith_index_u32(var_3, 18u)], vec4<f32>(var_2.d, var_4.d, var_4.b, 997f)), Struct_2(vec2<bool>(var_4.a, true), arg_2, global1[_wgslsmith_index_u32(1u, 18u)], arg_1)), false, global1[_wgslsmith_index_u32(21800u, 18u)]).a.e.c, _wgslsmith_f_op_vec4_f32(arg_1 + arg_1))), var_4.a, Struct_1(all(!vec3<bool>(false, var_2.a, true)), var_2.d, _wgslsmith_add_i32(-38307i >> (u_input.d % 32u), var_2.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-947f * var_4.b) + _wgslsmith_f_op_f32(ceil(-1134f))))).a, var_2.a, func_2(func_2(func_2(Struct_3(815f, global1[_wgslsmith_index_u32(4294967295u, 18u)], -1000f, Struct_2(global0.zw, vec2<i32>(var_4.c, u_input.b), Struct_1(false, 1414f, var_4.c, var_4.b), vec4<f32>(arg_0, var_4.d, var_2.d, arg_0)), Struct_2(vec2<bool>(true, false), u_input.a.zx, var_4, vec4<f32>(var_4.d, arg_0, arg_0, var_4.d))), global0.x, global1[_wgslsmith_index_u32(var_1.x | 1u, 18u)]).a, any(select(vec4<bool>(global0.x, var_4.a, var_2.a, false), vec4<bool>(true, global0.x, true, var_2.a), vec4<bool>(var_2.a, true, false, false))), var_4).a, select(global0.x, !any(global0.wxx), true), func_2(Struct_3(_wgslsmith_f_op_f32(-var_2.d), func_2(Struct_3(arg_0, var_4, 995f, Struct_2(vec2<bool>(global0.x, var_4.a), vec2<i32>(2147483647i, u_input.c.x), Struct_1(false, var_4.d, -42758i, 614f), arg_1), Struct_2(global0.yz, vec2<i32>(1i, -1i), Struct_1(var_2.a, -1829f, var_0, 1385f), vec4<f32>(-618f, var_2.d, 622f, var_4.d))), true, Struct_1(var_4.a, var_4.b, 32960i, arg_1.x)).a.e.c, arg_1.x, Struct_2(vec2<bool>(var_2.a, var_4.a), vec2<i32>(var_2.c, arg_2.x), Struct_1(var_4.a, 261f, 1i, -887f), arg_1), func_2(Struct_3(arg_0, Struct_1(true, var_2.d, var_4.c, 1633f), 839f, Struct_2(vec2<bool>(var_2.a, var_4.a), vec2<i32>(-19862i, var_4.c), var_4, vec4<f32>(var_2.d, var_4.d, -868f, -524f)), Struct_2(global0.zx, u_input.c, Struct_1(false, 940f, 0i, -517f), arg_1)), false, var_4).a.d), var_4.a, Struct_1(var_2.a, 806f, ~0i, _wgslsmith_f_op_f32(f32(-1f) * -809f))).a.d.c).a.b).a.d.d;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: Struct_3, arg_3: u32) -> Struct_1 {
    var var_0 = select(!select(vec4<bool>(true, !global0.x, false, arg_1.c > 1316i), !(!vec4<bool>(false, arg_2.b.a, false, false)), !(arg_2.e.c.c >= u_input.b)), select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, arg_1.a.c.a, false, false), arg_1.a.c.d >= arg_1.a.c.d), vec4<bool>(!global0.x, false, any(vec4<bool>(arg_2.d.c.a, false, arg_1.a.c.a, arg_1.a.a.x)), 4842u != arg_3), !select(vec4<bool>(false, true, false, global0.x), vec4<bool>(arg_2.b.a, arg_2.d.a.x, true, false), vec4<bool>(false, false, false, false))), vec4<bool>(!all(vec4<bool>(true, arg_1.a.c.a, true, true)), true, arg_2.d.c.a, arg_1.a.a.x), vec4<bool>(true, true, false, global0.x || true)), false);
    var_0 = !select(vec4<bool>(!arg_2.e.c.a, arg_2.b.a, true, true), vec4<bool>(any(select(var_0.xx, arg_2.d.a, vec2<bool>(false, arg_2.b.a))), false, arg_1.a.c.a, false), vec4<bool>(arg_1.a.c.a, _wgslsmith_div_f32(arg_0.x, -426f) < _wgslsmith_f_op_f32(-arg_1.a.c.d), global0.x, true));
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(Struct_3(arg_2.a, global1[_wgslsmith_index_u32(4294967295u, 18u)], -587f, Struct_2(arg_1.a.a, vec2<i32>(arg_1.c, 49229i), Struct_1(arg_2.d.a.x, arg_1.a.d.x, 2147483647i, arg_0.x), vec4<f32>(671f, arg_1.a.d.x, arg_0.x, arg_2.d.c.d)), Struct_2(vec2<bool>(global0.x, arg_2.d.a.x), arg_2.d.b, Struct_1(false, -539f, -27669i, 331f), arg_1.a.d)), arg_1.a.c.a, arg_2.d.c).a.a - _wgslsmith_f_op_f32(arg_2.b.b - arg_0.x)))), 664f, -1300f)));
    let var_2 = reverseBits(~vec3<u32>(firstLeadingBit(u_input.d), ~0u, func_3(var_0.x, arg_1.b)) & vec3<u32>(arg_1.b.x, 1u ^ ~u_input.d, arg_3));
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-788f * 723f)), -326f, func_2(func_2(func_2(arg_2, var_0.x, Struct_1(false, arg_0.x, u_input.c.x, -308f)).a, arg_1.a.a.x, Struct_1(true, arg_1.a.c.d, 2147483647i, var_1.x)).a, true, func_2(Struct_3(arg_2.e.d.x, arg_1.a.c, -1085f, arg_2.e, arg_1.a), true, arg_2.e.c).a.b).a.b.d));
    return Struct_1(global0.x | !global0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(281f * 1551f), arg_0.x, all(vec3<bool>(true, !arg_1.a.a.x, all(var_0.wxy))))), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_1.a.b.x, 0i, -2147483647i, 0i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-46424i, -9668i, u_input.a.x, -33939i), u_input.a)), ~17523i) >> (0u % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.c.d) - _wgslsmith_f_op_f32(sign(-348f))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-772f, _wgslsmith_f_op_f32(f32(-1f) * -1022f)) - -1360f)));
    var var_0 = func_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(-714f * -313f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(960f, -664f, -226f, 2127f)), _wgslsmith_mult_vec2_i32(u_input.a.zw, u_input.a.yz)))), vec4<f32>(389f, -143f, _wgslsmith_f_op_f32(-300f - _wgslsmith_f_op_f32(720f * 1453f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1638f)))))), Struct_4(func_2(Struct_3(_wgslsmith_div_f32(-357f, -2807f), Struct_1(false, 465f, u_input.c.x, -353f), 448f, Struct_2(global0.xx, vec2<i32>(u_input.c.x, u_input.a.x), global1[_wgslsmith_index_u32(u_input.d, 18u)], vec4<f32>(-170f, -862f, 1277f, 1475f)), Struct_2(global0.zz, u_input.c, global1[_wgslsmith_index_u32(u_input.d, 18u)], vec4<f32>(338f, 615f, 1041f, -2124f))), -u_input.c.x <= func_2(Struct_3(-143f, Struct_1(true, -1552f, -1i, -1756f), -102f, Struct_2(global0.xw, vec2<i32>(14070i, u_input.c.x), Struct_1(false, -1655f, -2147483647i, 440f), vec4<f32>(282f, -1000f, -1000f, 575f)), Struct_2(vec2<bool>(true, global0.x), vec2<i32>(u_input.c.x, u_input.c.x), global1[_wgslsmith_index_u32(u_input.d, 18u)], vec4<f32>(388f, 343f, 1622f, 1296f))), true, Struct_1(false, 304f, u_input.a.x, 1000f)).a.b.c, func_2(Struct_3(874f, Struct_1(global0.x, 619f, 2147483647i, 1487f), -1685f, Struct_2(global0.xz, u_input.a.wx, global1[_wgslsmith_index_u32(2383u, 18u)], vec4<f32>(-761f, -261f, 263f, 997f)), Struct_2(global0.xy, vec2<i32>(-2147483647i, 0i), Struct_1(global0.x, -147f, -6769i, 287f), vec4<f32>(-457f, -1237f, 988f, -1633f))), false && global0.x, global1[_wgslsmith_index_u32(~u_input.d, 18u)]).a.d.c).a.d, ~(vec2<u32>(u_input.d, 53333u) << (countOneBits(vec2<u32>(u_input.d, u_input.d)) % vec2<u32>(32u))), -38449i), func_2(Struct_3(-786f, Struct_1(global0.x, _wgslsmith_div_f32(-1293f, 235f), -1i, 1424f), -2559f, Struct_2(select(global0.zz, vec2<bool>(false, global0.x), true), vec2<i32>(22443i, -52614i), func_2(Struct_3(603f, global1[_wgslsmith_index_u32(0u, 18u)], 1181f, Struct_2(global0.wy, u_input.a.ww, Struct_1(global0.x, -671f, u_input.b, 1000f), vec4<f32>(-433f, -328f, 2177f, 1000f)), Struct_2(vec2<bool>(false, global0.x), u_input.a.zx, Struct_1(true, -812f, -1i, -1552f), vec4<f32>(269f, -351f, -1000f, 377f))), global0.x, global1[_wgslsmith_index_u32(59549u, 18u)]).a.d.c, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1138f, -782f, -1000f, 1319f), vec4<f32>(-1712f, 1000f, -1013f, 960f), global0.x))), Struct_2(global0.wx, -vec2<i32>(u_input.a.x, 110722i), func_2(Struct_3(499f, global1[_wgslsmith_index_u32(39047u, 18u)], -368f, Struct_2(vec2<bool>(global0.x, true), vec2<i32>(u_input.a.x, 2742i), Struct_1(true, 525f, u_input.c.x, 1000f), vec4<f32>(144f, -385f, 534f, -1853f)), Struct_2(vec2<bool>(global0.x, false), u_input.c, global1[_wgslsmith_index_u32(64203u, 18u)], vec4<f32>(-1017f, -1149f, -788f, 118f))), true, global1[_wgslsmith_index_u32(u_input.d, 18u)]).a.d.c, _wgslsmith_div_vec4_f32(vec4<f32>(1663f, -931f, -344f, 2235f), vec4<f32>(-445f, -132f, -1616f, 1000f)))), select(func_2(Struct_3(936f, Struct_1(false, 798f, u_input.c.x, -678f), 1910f, Struct_2(vec2<bool>(global0.x, false), vec2<i32>(-2147483647i, -40793i), global1[_wgslsmith_index_u32(u_input.d, 18u)], vec4<f32>(-1379f, -408f, 1029f, -920f)), Struct_2(global0.wx, u_input.a.ww, Struct_1(global0.x, -1854f, 2147483647i, -1188f), vec4<f32>(871f, -1000f, -1421f, 607f))), !global0.x, Struct_1(true, 1125f, u_input.c.x, 1000f)).a.b.a, (false && global0.x) || (-19307i < u_input.a.x), !all(vec4<bool>(global0.x, global0.x, true, false))), func_2(func_2(func_2(Struct_3(1000f, global1[_wgslsmith_index_u32(u_input.d, 18u)], 688f, Struct_2(global0.zy, vec2<i32>(u_input.b, u_input.a.x), global1[_wgslsmith_index_u32(38232u, 18u)], vec4<f32>(-496f, -385f, -266f, 1766f)), Struct_2(global0.wx, u_input.a.wz, global1[_wgslsmith_index_u32(41033u, 18u)], vec4<f32>(-1000f, 366f, -763f, -273f))), false, Struct_1(global0.x, 228f, u_input.c.x, 429f)).a, true, Struct_1(false, 1160f, u_input.c.x, -649f)).a, any(select(global0.wxx, global0.zxy, vec3<bool>(global0.x, true, global0.x))), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(0u, u_input.d), func_3(global0.x, vec2<u32>(4294967295u, u_input.d)), u_input.d), 18u)]).a.d.c).a, 1u);
    global1 = array<Struct_1, 18>();
    let var_1 = Struct_3(func_5(vec4<f32>(var_0.b, _wgslsmith_f_op_f32(abs(var_0.b)), 1715f, var_0.d), Struct_4(Struct_2(global0.zz, vec2<i32>(7819i, u_input.c.x), func_5(vec4<f32>(243f, var_0.b, -814f, var_0.b), Struct_4(Struct_2(global0.yz, u_input.a.yx, global1[_wgslsmith_index_u32(4294967295u, 18u)], vec4<f32>(var_0.d, var_0.b, var_0.b, 802f)), vec2<u32>(0u, 44338u), 3194i), Struct_3(var_0.d, Struct_1(global0.x, var_0.b, u_input.a.x, var_0.b), var_0.d, Struct_2(global0.wx, vec2<i32>(52901i, 48106i), global1[_wgslsmith_index_u32(u_input.d, 18u)], vec4<f32>(-335f, var_0.b, var_0.b, var_0.d)), Struct_2(vec2<bool>(global0.x, global0.x), vec2<i32>(22467i, var_0.c), global1[_wgslsmith_index_u32(u_input.d, 18u)], vec4<f32>(-962f, var_0.d, -374f, 1546f))), 4294967295u), vec4<f32>(var_0.d, -1056f, var_0.b, var_0.d)), abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, 0u), vec2<u32>(0u, u_input.d), vec2<u32>(u_input.d, 0u))), ~var_0.c), func_2(Struct_3(1572f, func_5(vec4<f32>(var_0.b, var_0.b, -244f, 1117f), Struct_4(Struct_2(global0.zz, vec2<i32>(11255i, var_0.c), Struct_1(true, -775f, 4105i, var_0.d), vec4<f32>(var_0.b, var_0.b, 977f, 1287f)), vec2<u32>(u_input.d, u_input.d), u_input.b), Struct_3(-1000f, Struct_1(var_0.a, var_0.d, var_0.c, 1399f), -315f, Struct_2(global0.xz, u_input.c, Struct_1(false, var_0.b, u_input.a.x, -670f), vec4<f32>(-1000f, 1737f, -740f, 1000f)), Struct_2(vec2<bool>(false, false), u_input.a.zx, global1[_wgslsmith_index_u32(u_input.d, 18u)], vec4<f32>(var_0.b, -1000f, var_0.d, var_0.d))), 4294967295u), _wgslsmith_f_op_f32(select(var_0.b, var_0.b, global0.x)), func_2(Struct_3(var_0.d, Struct_1(true, -335f, u_input.c.x, -1545f), -644f, Struct_2(global0.wy, u_input.a.yy, global1[_wgslsmith_index_u32(0u, 18u)], vec4<f32>(-620f, var_0.b, var_0.d, var_0.d)), Struct_2(vec2<bool>(var_0.a, var_0.a), vec2<i32>(-32076i, 46265i), global1[_wgslsmith_index_u32(0u, 18u)], vec4<f32>(-1160f, -1097f, 316f, var_0.b))), false, global1[_wgslsmith_index_u32(0u, 18u)]).a.e, func_2(Struct_3(1000f, global1[_wgslsmith_index_u32(u_input.d, 18u)], -658f, Struct_2(global0.wx, vec2<i32>(u_input.b, u_input.a.x), Struct_1(var_0.a, -945f, 2147483647i, var_0.b), vec4<f32>(1829f, var_0.d, var_0.d, -1291f)), Struct_2(global0.ww, u_input.a.zz, global1[_wgslsmith_index_u32(u_input.d, 18u)], vec4<f32>(var_0.b, -1062f, var_0.b, 1741f))), var_0.a, global1[_wgslsmith_index_u32(13745u, 18u)]).a.d), (u_input.d <= 24430u) & (u_input.a.x == u_input.b), Struct_1(false, -1848f, ~29752i, 952f)).a, 1u).d, func_5(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d - var_0.b)), _wgslsmith_f_op_f32(round(-1249f)), -571f, -1000f), Struct_4(Struct_2(global0.ww, vec2<i32>(-56776i, u_input.b), global1[_wgslsmith_index_u32(~4294967295u, 18u)], _wgslsmith_div_vec4_f32(vec4<f32>(781f, -214f, 830f, var_0.b), vec4<f32>(var_0.b, -312f, -712f, var_0.d))), vec2<u32>(~46489u, u_input.d), -func_2(Struct_3(1692f, global1[_wgslsmith_index_u32(u_input.d, 18u)], -175f, Struct_2(vec2<bool>(var_0.a, true), vec2<i32>(u_input.c.x, u_input.c.x), Struct_1(false, var_0.d, u_input.b, -1394f), vec4<f32>(var_0.b, var_0.b, 137f, var_0.d)), Struct_2(vec2<bool>(var_0.a, true), vec2<i32>(u_input.c.x, var_0.c), global1[_wgslsmith_index_u32(3883u, 18u)], vec4<f32>(-1038f, var_0.b, -588f, var_0.d))), true, global1[_wgslsmith_index_u32(u_input.d, 18u)]).a.b.c), Struct_3(_wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(trunc(var_0.b))), global1[_wgslsmith_index_u32(firstTrailingBit(u_input.d | u_input.d), 18u)], _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(ceil(-885f))), Struct_2(vec2<bool>(true, true), u_input.a.xy, func_2(Struct_3(var_0.d, global1[_wgslsmith_index_u32(1u, 18u)], var_0.b, Struct_2(vec2<bool>(var_0.a, true), u_input.c, global1[_wgslsmith_index_u32(15143u, 18u)], vec4<f32>(var_0.d, var_0.b, var_0.d, 440f)), Struct_2(global0.xw, u_input.c, Struct_1(true, -650f, u_input.c.x, var_0.d), vec4<f32>(1435f, var_0.d, var_0.b, var_0.d))), global0.x, global1[_wgslsmith_index_u32(58209u, 18u)]).a.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-212f, -1371f, var_0.d, 1621f))), Struct_2(select(vec2<bool>(false, true), global0.ww, global0.xz), reverseBits(vec2<i32>(var_0.c, 12981i)), Struct_1(true, -222f, var_0.c, -867f), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.b, var_0.d, var_0.d, -176f), vec4<f32>(2284f, 357f, 1000f, -1000f)))), abs(794u)), -426f, Struct_2(global0.zx, ~(reverseBits(vec2<i32>(-56207i, u_input.b)) >> (abs(vec2<u32>(u_input.d, u_input.d)) % vec2<u32>(32u))), func_2(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1053f), global1[_wgslsmith_index_u32(30032u, 18u)], _wgslsmith_f_op_f32(-1000f - 509f), Struct_2(global0.xz, u_input.a.yx, global1[_wgslsmith_index_u32(u_input.d, 18u)], vec4<f32>(var_0.d, -561f, -671f, var_0.d)), func_2(Struct_3(var_0.b, global1[_wgslsmith_index_u32(u_input.d, 18u)], var_0.b, Struct_2(vec2<bool>(var_0.a, false), u_input.a.ww, global1[_wgslsmith_index_u32(32139u, 18u)], vec4<f32>(var_0.d, var_0.b, 185f, -987f)), Struct_2(vec2<bool>(false, global0.x), u_input.a.zx, Struct_1(global0.x, -246f, -50507i, -639f), vec4<f32>(var_0.d, 471f, var_0.d, -100f))), global0.x, global1[_wgslsmith_index_u32(u_input.d, 18u)]).a.e), global0.x, func_2(Struct_3(1802f, global1[_wgslsmith_index_u32(u_input.d, 18u)], 1095f, Struct_2(vec2<bool>(true, var_0.a), vec2<i32>(1i, -17865i), Struct_1(var_0.a, var_0.b, u_input.c.x, var_0.b), vec4<f32>(1251f, var_0.b, -874f, var_0.b)), Struct_2(global0.yw, vec2<i32>(var_0.c, u_input.b), Struct_1(global0.x, var_0.d, var_0.c, var_0.d), vec4<f32>(-630f, 1017f, -324f, var_0.d))), func_5(vec4<f32>(var_0.b, 104f, 736f, var_0.d), Struct_4(Struct_2(vec2<bool>(var_0.a, var_0.a), u_input.c, global1[_wgslsmith_index_u32(39117u, 18u)], vec4<f32>(1000f, var_0.b, -978f, var_0.b)), vec2<u32>(u_input.d, 1u), 15631i), Struct_3(280f, global1[_wgslsmith_index_u32(4294967295u, 18u)], 1842f, Struct_2(vec2<bool>(false, true), vec2<i32>(u_input.c.x, u_input.b), global1[_wgslsmith_index_u32(u_input.d, 18u)], vec4<f32>(var_0.d, var_0.b, -2245f, var_0.b)), Struct_2(global0.wz, u_input.c, global1[_wgslsmith_index_u32(0u, 18u)], vec4<f32>(var_0.d, 490f, var_0.b, var_0.b))), 6121u).a, global1[_wgslsmith_index_u32(u_input.d, 18u)]).a.d.c).a.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -763f), _wgslsmith_f_op_f32(var_0.d - -1000f), -192f, _wgslsmith_div_f32(var_0.b, -901f)))), func_2(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -168f) + 486f), global1[_wgslsmith_index_u32(4294967295u, 18u)], _wgslsmith_f_op_vec4_f32(func_1(-751f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-206f, var_0.b, var_0.d, var_0.b)), select(vec2<i32>(u_input.b, 2147483647i), u_input.c, true))).x, Struct_2(select(vec2<bool>(global0.x, true), vec2<bool>(var_0.a, true), var_0.a), u_input.c, Struct_1(false, -341f, -1i, 1103f), vec4<f32>(600f, var_0.b, 1641f, var_0.b)), Struct_2(!vec2<bool>(false, var_0.a), -vec2<i32>(-63092i, 2147483647i), global1[_wgslsmith_index_u32(~u_input.d, 18u)], _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(112f, -316f, -637f, var_0.b))))), global0.x, global1[_wgslsmith_index_u32(u_input.d << ((~u_input.d & _wgslsmith_add_u32(u_input.d, 36163u)) % 32u), 18u)]).a.e);
    var var_2 = select(~firstLeadingBit(abs(vec2<i32>(var_1.d.b.x, var_1.d.b.x))), -vec2<i32>(~var_0.c, _wgslsmith_mult_i32(var_0.c << (63357u % 32u), _wgslsmith_div_i32(u_input.a.x, u_input.b))), global0.zw);
    let var_3 = var_1;
    global3 = array<vec4<u32>, 18>();
    let var_4 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d.d.wzz, abs(var_4), vec3<i32>(0i, var_3.b.c >> (var_4 % 32u), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(u_input.a << (global3[_wgslsmith_index_u32(0u, 18u)] % vec4<u32>(32u)), u_input.a), 2147483647i)), 48891u);
}

