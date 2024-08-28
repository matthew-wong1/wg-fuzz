struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: vec4<f32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32> = array<f32, 32>(-1627f, -1000f, -1283f, 933f, -1194f, 296f, 1000f, 576f, 437f, 681f, 1607f, 166f, -801f, 520f, -590f, 1561f, 384f, 431f, -395f, 1505f, 323f, -167f, -991f, -1000f, -1000f, 703f, 1905f, -520f, 800f, 716f, 242f, 1378f);

var<private> global1: f32;

var<private> global2: vec2<bool>;

var<private> global3: Struct_2;

var<private> global4: array<vec2<bool>, 20>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32) -> u32 {
    global4 = array<vec2<bool>, 20>();
    var var_0 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(global3.e, 32u)], -1639f)) - global3.c.x)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-329f + 602f)) - _wgslsmith_div_f32(-169f, global3.c.x)));
    global4 = array<vec2<bool>, 20>();
    let var_1 = global3.d;
    var var_2 = Struct_2(~global3.a, -2147483647i << (max(select(42879u, u_input.a.x, global3.a.x != global3.a.x), _wgslsmith_sub_u32(~37476u, ~global3.a.x)) % 32u), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(1u, 32u)], _wgslsmith_f_op_f32(max(605f, 1335f)), var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -1604f)), global3.c, false & all(vec4<bool>(false, global2.x, var_1.c.x, global2.x)))))), global3.d, _wgslsmith_mod_u32(countOneBits(~_wgslsmith_sub_u32(global3.e, global3.e)), 36319u));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a.x, firstLeadingBit(select(4294967295u, 0u, var_2.d.c.x)), 1u, var_2.a.x | 51909u), _wgslsmith_mod_vec4_u32(var_2.a, (vec4<u32>(u_input.c.x, 4294967295u, var_2.e, var_2.a.x) & var_2.a) | ~global3.a)) ^ ~(~abs(~global3.e));
}

fn func_4(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_2, arg_3: vec4<f32>) -> u32 {
    let var_0 = global3.d.c.x;
    global2 = vec2<bool>(true, true);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global3.d.b.x + global0[_wgslsmith_index_u32(min(max(4294967295u, arg_1), arg_1), 32u)]))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_3.x))))), -832f), !select(vec2<bool>(true | global2.x, global3.e >= global3.e), global3.d.c, select(!global3.d.c, global3.d.c, !vec2<bool>(arg_2.d.c.x, global2.x))));
    global0 = array<f32, 32>();
    global1 = _wgslsmith_f_op_f32(-arg_0.x);
    return 4294967295u;
}

fn func_2() -> u32 {
    global3 = Struct_2(vec4<u32>(_wgslsmith_mult_u32(global3.a.x, u_input.a.x) >> (~26627u % 32u), ~4294967295u, min(_wgslsmith_dot_vec2_u32(~u_input.a, vec2<u32>(u_input.a.x, global3.e)), ~(~u_input.c.x)), 4294967295u), -u_input.d.x, vec4<f32>(-426f, global3.d.b.x, -459f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, global3.d.a)) - global3.d.b.x)), global3.d, func_4(vec3<f32>(_wgslsmith_f_op_f32(764f * global3.c.x), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~global3.a, global3.a), 32u)], global3.c.x), ~(~func_3(global3.b)), Struct_2(global3.a ^ ~vec4<u32>(1u, 132988u, global3.a.x, global3.e), -1414i, vec4<f32>(-370f, 364f, _wgslsmith_f_op_f32(-global3.d.a), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 32u)])), Struct_1(global3.c.x, vec2<f32>(-1711f, 1000f), select(vec2<bool>(false, global3.d.c.x), global4[_wgslsmith_index_u32(u_input.c.x, 20u)], vec2<bool>(global2.x, false))), ~global3.e >> (_wgslsmith_add_u32(global3.e, 44953u) % 32u)), _wgslsmith_f_op_vec4_f32(-global3.c)));
    global2 = global4[_wgslsmith_index_u32(4294967295u, 20u)];
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3.d.b.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -126f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-417f)) - _wgslsmith_f_op_f32(-global3.d.a)) + global0[_wgslsmith_index_u32(4294967295u, 32u)]), any(!vec2<bool>(global2.x, true)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(global3.c.x))))))));
    let var_1 = vec2<u32>(~global3.e, _wgslsmith_sub_u32(global3.e, global3.e)) << ((~(~u_input.a >> (~u_input.a % vec2<u32>(32u))) & u_input.a) % vec2<u32>(32u));
    global2 = !vec2<bool>(global3.d.c.x, all(!(!vec4<bool>(false, global2.x, true, true))));
    return _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(global3.a.yzz, global3.a.yzw), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(var_1.x, 4294967295u, global3.a.x), max(vec3<u32>(global3.a.x, 38593u, var_1.x), global3.a.zxx)) >> (vec3<u32>(_wgslsmith_mod_u32(4294967295u, 4294967295u), 9633u, func_4(global3.c.zxy, 1u, Struct_2(global3.a, -10461i, global3.c, global3.d, 30819u), global3.c)) % vec3<u32>(32u)), select(global3.a.zyy >> (vec3<u32>(global3.e, 40322u, 6552u) % vec3<u32>(32u)), ~global3.a.yyx, true) & (~vec3<u32>(u_input.a.x, u_input.c.x, var_1.x) << (vec3<u32>(u_input.c.x, u_input.a.x, 41431u) % vec3<u32>(32u)))));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: Struct_5, arg_3: vec4<bool>) -> Struct_3 {
    var var_0 = 81523u;
    global1 = _wgslsmith_f_op_f32(-150f + _wgslsmith_f_op_f32(ceil(arg_0.x)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(5084u, 32u)])) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-897f)) * _wgslsmith_f_op_f32(select(arg_1.x, 1379f, true)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.c.d.a))))));
    global3 = Struct_2(global3.a, _wgslsmith_sub_i32(u_input.b.x, -1i), _wgslsmith_f_op_vec4_f32(-global3.c), Struct_1(arg_0.x, arg_1.zz, select(vec2<bool>(global3.d.c.x != true, !arg_3.x), select(vec2<bool>(arg_3.x, false), arg_3.zx, false), arg_3.xz)), countOneBits(u_input.c.x));
    var var_1 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1482f, arg_1.x, arg_2.c.d.c.x)), _wgslsmith_div_f32(1000f, arg_2.c.d.a), arg_2.c.b < u_input.b.x))) < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.c.d.a, arg_2.c.c.x))))));
    return Struct_3(global3.c.x);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: u32) -> Struct_4 {
    let var_0 = func_5(global3.c, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(615f, 328f, global0[_wgslsmith_index_u32(func_2(), 32u)]))), arg_1.c.xyy, vec3<bool>(true, false, arg_0.x >= select(arg_2, arg_2, arg_1.d.c.x)))), Struct_5(_wgslsmith_div_vec4_i32(u_input.b, -_wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(36525i, u_input.b.x, 56828i, -79240i))), select(!vec2<bool>(global2.x, false), vec2<bool>(global3.d.c.x, true), false), Struct_2(vec4<u32>(arg_2, 0u, 1u, u_input.c.x), _wgslsmith_mult_i32(arg_1.b, ~(-2147483647i)), arg_1.c, arg_1.d, ~0u)), vec4<bool>(true, true, any(select(vec4<bool>(true, false, true, false), vec4<bool>(global3.d.c.x, false, arg_1.d.c.x, false), vec4<bool>(arg_1.d.c.x, global2.x, true, arg_1.d.c.x))) && any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.d.a)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 32u)]))));
    global1 = arg_1.d.a;
    let var_1 = -2147483647i;
    let var_2 = _wgslsmith_f_op_f32(sign(280f));
    global0 = array<f32, 32>();
    return Struct_4(global3.a.x, -2147483647i, _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.d.xy, vec2<i32>(7796i, var_1)), ~_wgslsmith_mult_vec2_i32(u_input.d.xz, vec2<i32>(-3036i, global3.b))), vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 31374i, var_1), u_input.d), 0i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 38873u), vec2<u32>(4294967295u, global3.e)) % 32u))), _wgslsmith_div_vec2_u32(arg_0.yy, ~vec2<u32>(1002u, ~arg_1.e)), arg_1);
}

fn func_6(arg_0: Struct_4, arg_1: bool, arg_2: u32) -> Struct_3 {
    global1 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_0.e.d.a, _wgslsmith_f_op_f32(f32(-1f) * -341f))));
    var var_0 = 41851u;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e.d.a + arg_0.e.d.b.x)))));
    var var_2 = var_1;
    var var_3 = true;
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~arg_2, 32u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1548f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.e.c.x)) * _wgslsmith_f_op_f32(f32(-1f) * -375f)))));
}

fn func_7(arg_0: Struct_3, arg_1: u32, arg_2: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a, func_5(global3.c, vec3<f32>(global0[_wgslsmith_index_u32(64941u, 32u)], global3.d.a, 275f), Struct_5(vec4<i32>(u_input.b.x, global3.b, -18277i, 11000i), global3.d.c, Struct_2(vec4<u32>(69573u, arg_1, 1u, 1u), 1i, vec4<f32>(-1104f, -1518f, global3.c.x, arg_0.a), Struct_1(global0[_wgslsmith_index_u32(1u, 32u)], global3.d.b, global3.d.c), 32127u)), !vec4<bool>(global2.x, global2.x, false, true)).a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -425f))));
    let var_1 = Struct_5(u_input.b, !vec2<bool>(true, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 32u)]) >= _wgslsmith_f_op_f32(f32(-1f) * -926f)), func_1(vec3<u32>(~0u, u_input.c.x, u_input.c.x), func_1(vec3<u32>(20958u, 4882u, 0u) ^ global3.a.yxx, func_1(vec3<u32>(19017u, arg_1, u_input.a.x), Struct_2(global3.a, -59891i, global3.c, global3.d, 0u), _wgslsmith_add_u32(arg_1, 43384u)).e, _wgslsmith_clamp_u32(~15801u, func_3(global3.b), min(31954u, arg_1))).e, ~_wgslsmith_sub_u32(u_input.a.x, ~arg_1)).e);
    let var_2 = global3.d.c.x;
    let var_3 = vec4<f32>(global3.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(func_1(var_1.c.a.zwy, func_1(global3.a.zyy, Struct_2(global3.a, u_input.d.x, vec4<f32>(-105f, var_0, global0[_wgslsmith_index_u32(global3.a.x, 32u)], global0[_wgslsmith_index_u32(u_input.a.x, 32u)]), Struct_1(555f, var_1.c.d.b, global3.d.c), 0u), 11501u).e, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c.a.x, var_1.c.a.x, 4294967295u), var_1.c.a.xwy)).e.c.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.c.d.a - global0[_wgslsmith_index_u32(u_input.c.x, 32u)]), _wgslsmith_f_op_f32(global3.c.x + var_1.c.d.b.x))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.d.b.x) - -631f)))), global3.c.x);
    let var_4 = true;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(false && global2.x);
    var var_1 = _wgslsmith_dot_vec4_u32(global3.a, vec4<u32>(global3.a.x, 12932u, ~1u, 0u));
    var var_2 = func_7(func_6(func_1(~(~global3.a.zyz), Struct_2(vec4<u32>(u_input.c.x, 84253u, 37940u, global3.a.x), 0i, _wgslsmith_f_op_vec4_f32(-global3.c), Struct_1(-690f, vec2<f32>(1620f, global3.c.x), vec2<bool>(true, global3.d.c.x)), _wgslsmith_sub_u32(90464u, 31120u)), _wgslsmith_mod_u32(min(24550u, global3.a.x), ~61992u)), false || all(global4[_wgslsmith_index_u32(51192u, 20u)]), 1u), ~(countOneBits(u_input.a.x) & global3.a.x), func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global3.c * global3.c) * _wgslsmith_f_op_vec4_f32(exp2(global3.c)))), _wgslsmith_f_op_vec3_f32(global3.c.zyx - global3.c.wwx), Struct_5(-u_input.b, select(vec2<bool>(global2.x, true), select(global4[_wgslsmith_index_u32(4294967295u, 20u)], global4[_wgslsmith_index_u32(1u, 20u)], true), true), func_1(~global3.a.yxy, Struct_2(vec4<u32>(global3.a.x, u_input.c.x, u_input.a.x, 153704u), u_input.d.x, vec4<f32>(global3.c.x, global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(global3.e, 32u)], -1498f), global3.d, 103872u), func_4(vec3<f32>(727f, -1361f, global3.d.b.x), global3.a.x, Struct_2(vec4<u32>(1u, global3.e, u_input.a.x, u_input.a.x), 1i, global3.c, global3.d, global3.e), vec4<f32>(-530f, 1092f, global3.c.x, 807f))).e), select(!vec4<bool>(false, global3.d.c.x, global3.d.c.x, var_0), vec4<bool>(global3.b == global3.b, any(vec3<bool>(true, true, global3.d.c.x)), all(vec2<bool>(false, global2.x)), 34945u >= u_input.c.x), vec4<bool>(all(vec2<bool>(false, global3.d.c.x)), !var_0, global3.d.c.x, true))));
    var_2 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1282f));
    var var_3 = !vec3<bool>(global2.x, !func_1(vec3<u32>(79908u, 25124u, 1u), Struct_2(global3.a, -2147483647i, vec4<f32>(global3.c.x, var_2.a, -1736f, 1231f), Struct_1(-352f, vec2<f32>(-1074f, var_2.a), global3.d.c), 0u), ~0u).e.d.c.x, all(vec2<bool>(any(vec4<bool>(global3.d.c.x, global3.d.c.x, global3.d.c.x, global2.x)), global2.x)));
    var var_4 = vec2<i32>(reverseBits(1i), countOneBits(global3.b));
    let var_5 = select(vec2<u32>(global3.a.x << (u_input.c.x % 32u), func_2()), ~_wgslsmith_div_vec2_u32(u_input.c, _wgslsmith_sub_vec2_u32(vec2<u32>(17063u, 54785u), u_input.c)), select(!select(global3.d.c, !vec2<bool>(var_0, false), !global3.d.c), vec2<bool>(var_0, !var_3.x), true));
    var_3 = vec3<bool>(1033f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.a))), any(vec3<bool>(true | all(vec2<bool>(global3.d.c.x, var_3.x)), global3.c.x < -1294f, true)), var_0);
    var var_6 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec3<u32>(0u, u_input.c.x, 65186u))) ^ vec3<u32>(~u_input.a.x << (0u % 32u), ~40099u, ~1u));
}

