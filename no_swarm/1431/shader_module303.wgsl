struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19>;

var<private> global1: array<vec3<bool>, 10>;

var<private> global2: vec3<bool>;

var<private> global3: Struct_1 = Struct_1(vec3<f32>(933f, 973f, 1000f), vec4<f32>(1016f, -1494f, -1387f, -837f), false);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(339f - -2620f), -852f, _wgslsmith_f_op_f32(trunc(792f))))), _wgslsmith_f_op_vec4_f32(global3.b - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.b))), true), arg_0.x, Struct_1(vec3<f32>(_wgslsmith_div_f32(552f, global3.a.x), 1000f, -936f), global3.b, any(select(!vec3<bool>(false, global3.c, false), select(global1[_wgslsmith_index_u32(34268u, 10u)], global1[_wgslsmith_index_u32(23988u, 10u)], global3.c), select(global1[_wgslsmith_index_u32(u_input.c, 10u)], vec3<bool>(global3.c, global2.x, false), global1[_wgslsmith_index_u32(28778u, 10u)])))), Struct_1(global3.b.xzw, global3.b, any(!vec4<bool>(true, global3.c, global2.x, global2.x)) && (_wgslsmith_sub_i32(23924i, 1i) < u_input.e)), vec3<i32>(~u_input.b.x, u_input.e, ~(-2147483647i)));
    let var_1 = !(!select(select(!vec4<bool>(true, false, false, global2.x), select(vec4<bool>(global3.c, true, global3.c, var_0.a.c), vec4<bool>(true, global2.x, true, false), false), true), vec4<bool>(global3.c && var_0.c.c, false, select(false, var_0.a.c, var_0.c.c), global2.x && false), true));
    global2 = global1[_wgslsmith_index_u32(1u, 10u)];
    var var_2 = !global3.c;
    var_0 = Struct_2(Struct_1(vec3<f32>(1000f, -1070f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global3.a.x, global3.b.x)))), var_0.a.b, global3.c), var_0.b, var_0.d, var_0.a, firstLeadingBit(select(-u_input.b.yxx, vec3<i32>(-2147483647i, 3257i, var_0.e.x), global1[_wgslsmith_index_u32(firstLeadingBit(0u), 10u)]) | u_input.b.wzy));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.x + -1564f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-783f - _wgslsmith_f_op_f32(ceil(-1572f))), 1399f, var_1.x)))));
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: vec4<bool>, arg_3: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-global3.b);
    var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(global3.a.x + -1204f), _wgslsmith_f_op_f32(floor(arg_1.x)), 717f)), vec4<f32>(1574f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(227f - arg_0))), arg_0, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-1261f + 666f))), vec4<bool>(true, all(!vec4<bool>(false, false, global3.c, arg_2.x)), arg_2.x, !global3.c))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -798f), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<u32>(31193u, u_input.c, 4294967295u))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(func_3(vec3<u32>(18556u, 0u, 4294967295u)))))))));
    let var_1 = arg_3;
    let var_2 = _wgslsmith_f_op_f32(max(-1020f, -1009f));
    global3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(1000f + 856f), global3.a.x, 1f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, global3.b.x, -784f))))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + arg_0) + _wgslsmith_f_op_f32(min(-1000f, -909f))), -996f, 393f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2 + arg_1.x))), _wgslsmith_f_op_f32(round(-607f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -922f)), 566f) - _wgslsmith_f_op_vec4_f32(global3.b - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-295f, -841f, global3.a.x, -917f), vec4<f32>(var_1, arg_0, 131f, 1011f), global2.x)) * global3.b))), any(arg_2));
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(step(var_0.x, global3.b.x))))), _wgslsmith_f_op_f32(select(346f, 392f, !all(arg_2))), 478f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1102f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1796f))), -1000f, -464f) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + -754f), -1165f, arg_3, _wgslsmith_f_op_f32(select(-108f, _wgslsmith_f_op_f32(-arg_0), !arg_2.x)))), any(vec3<bool>(false, select(!global3.c, !global2.x, true), 52365u >= select(2561u, u_input.d, true))));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> Struct_2 {
    var var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(~reverseBits(u_input.e), -(-2147483647i & u_input.e)), -2147483647i, -2147483647i), -u_input.b.wxw);
    let var_1 = vec4<i32>(-1i, var_0.x, select(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, -2147483647i, var_0.x, 0i), u_input.b), vec4<i32>(select(var_0.x, u_input.b.x, global2.x), u_input.b.x, -var_0.x, _wgslsmith_dot_vec2_i32(u_input.b.ww, vec2<i32>(1i, var_0.x)))), _wgslsmith_add_i32((u_input.e << (u_input.c % 32u)) << (arg_1 % 32u), _wgslsmith_clamp_i32(u_input.e, min(48390i, -24007i), var_0.x)), ((45981u > u_input.d) & any(vec4<bool>(global2.x, false, false, global2.x))) & any(!vec4<bool>(true, global3.c, arg_0.c, false))), -47714i);
    var var_2 = ~(~(~47304u));
    global1 = array<vec3<bool>, 10>();
    var var_3 = arg_1;
    return Struct_2(arg_0, u_input.a, func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(801f - -394f)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(func_2(global3.a.x, arg_0.a, vec4<bool>(global2.x, false, false, global3.c), 471f).a.x)), global3.b.x, global3.b.x), select(vec4<bool>(false, false, all(vec3<bool>(false, global2.x, global2.x)), !global3.c), vec4<bool>(!arg_0.c, all(vec4<bool>(false, arg_0.c, true, false)), func_2(arg_0.a.x, global3.b.yyy, vec4<bool>(arg_0.c, false, false, true), -1056f).c, all(vec4<bool>(arg_0.c, global3.c, arg_0.c, global2.x))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, arg_0.c, false, true), global3.c), select(vec4<bool>(true, global3.c, global2.x, false), vec4<bool>(false, global3.c, global3.c, true), global2.x), arg_0.c)), -912f), arg_0, firstTrailingBit(countOneBits(vec3<i32>(10403i, var_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-55140i, var_0.x, -50175i, var_1.x), vec4<i32>(2147483647i, u_input.e, -10138i, var_1.x))))));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = func_4(arg_1.d, 32372u);
    let var_1 = 998u;
    global2 = vec3<bool>(arg_0.x >= (17018i | (-arg_1.e.x ^ 66086i)), arg_1.a.c, all(global1[_wgslsmith_index_u32(41503u, 10u)]));
    return var_0.c;
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = ~arg_1 != u_input.a;
    global2 = global1[_wgslsmith_index_u32(u_input.d, 10u)];
    var var_1 = u_input.e == u_input.e;
    global0 = array<Struct_2, 19>();
    var var_2 = Struct_1(vec3<f32>(arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(vec3<u32>(0u, u_input.a, u_input.d)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(993f)) - arg_2.a.x) * arg_0.b.x)), _wgslsmith_f_op_vec4_f32(global3.b * _wgslsmith_div_vec4_f32(arg_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.x, -1848f, -524f, global3.b.x))))), !(func_4(Struct_1(vec3<f32>(177f, arg_3.b.x, arg_2.b.x), arg_2.b, true), ~u_input.c).c.c || (arg_2.c & arg_0.c)));
    return arg_1;
}

fn func_1() -> vec2<bool> {
    let var_0 = ~firstLeadingBit(~firstTrailingBit(~vec3<u32>(30071u, 4294967295u, u_input.c)));
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(global3.a));
    global2 = select(global1[_wgslsmith_index_u32(0u, 10u)], vec3<bool>(!(!(global3.c && true)), -1182f > var_1.x, all(!vec4<bool>(global2.x, global2.x, true, false)) != true), global3.c);
    var var_2 = any(global1[_wgslsmith_index_u32(func_6(func_5(~(u_input.b ^ u_input.b), func_4(func_2(global3.a.x, global3.a, vec4<bool>(global3.c, false, true, false), var_1.x), var_0.x), func_2(_wgslsmith_f_op_f32(417f + 597f), _wgslsmith_f_op_vec3_f32(global3.b.wyy + global3.a), !vec4<bool>(false, global2.x, global2.x, global2.x), -791f), u_input.b.wyy >> (var_0 % vec3<u32>(32u))), 9800u, func_2(_wgslsmith_div_f32(global3.b.x, _wgslsmith_f_op_f32(-global3.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global3.b.xxx - vec3<f32>(-702f, 1442f, global3.b.x)) - global3.b.xzx), vec4<bool>(select(true, false, false), global2.x, true && global2.x, all(vec3<bool>(true, global3.c, global3.c))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.x + var_1.x), global3.a.x))), Struct_1(global3.b.xyw, _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b.x, var_1.x, 710f, -1000f) * vec4<f32>(var_1.x, -1000f, -1635f, 241f)), (false && global2.x) & true)), 10u)]);
    let var_3 = vec2<u32>(_wgslsmith_mod_u32(var_0.x, _wgslsmith_mod_u32(var_0.x, (1u | var_0.x) >> (var_0.x % 32u))), 0u << (_wgslsmith_mult_u32(19298u, (1u >> (0u % 32u)) ^ func_4(Struct_1(vec3<f32>(global3.b.x, 1789f, -1056f), vec4<f32>(var_1.x, -1979f, -898f, 726f), global3.c), u_input.c).b) % 32u));
    return !(!(!select(vec2<bool>(global3.c, global3.c), select(global2.zy, vec2<bool>(global2.x, global3.c), vec2<bool>(true, true)), vec2<bool>(true, true))));
}

fn func_7(arg_0: bool, arg_1: vec2<f32>, arg_2: vec2<f32>) -> Struct_1 {
    global2 = select(select(!vec3<bool>(true, global3.c, global2.x & arg_0), vec3<bool>(arg_0, true, !global3.c), any(!vec2<bool>(arg_0, global3.c))), vec3<bool>(arg_0 || global2.x, !(!global3.c), func_1().x), !vec3<bool>(false, u_input.e > ~2147483647i, ~u_input.d == 0u));
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<u32>(u_input.d, u_input.c, u_input.d))) + 1089f) - arg_1.x), func_2(_wgslsmith_f_op_f32(func_5(vec4<i32>(u_input.e, u_input.b.x, u_input.e, u_input.b.x), global0[_wgslsmith_index_u32(1u, 19u)], Struct_1(vec3<f32>(1355f, -775f, global3.a.x), vec4<f32>(-810f, -134f, -626f, -445f), global2.x), u_input.b.wyz).b.x + _wgslsmith_f_op_f32(1500f + arg_1.x)), vec3<f32>(1183f, arg_1.x, _wgslsmith_f_op_f32(-1216f * arg_1.x)), select(vec4<bool>(global2.x, true, arg_0, arg_0), !vec4<bool>(arg_0, true, false, true), global3.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(537f)) * _wgslsmith_f_op_f32(-arg_2.x))).a.x) * arg_1);
    global0 = array<Struct_2, 19>();
    return func_2(_wgslsmith_f_op_f32(-1337f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(func_2(-1000f, vec3<f32>(arg_1.x, -1457f, 542f), vec4<bool>(global3.c, global3.c, global3.c, false), global3.a.x).b.x))))), func_2(arg_2.x, global3.b.zyy, vec4<bool>(!(false & arg_0), true, 1i > u_input.b.x, func_2(global3.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, 221f, 393f)), select(vec4<bool>(true, global2.x, global3.c, false), vec4<bool>(true, true, global3.c, global2.x), true), _wgslsmith_f_op_f32(1460f * -1073f)).c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - 638f)).b.zwz, !(!(!select(vec4<bool>(global3.c, true, arg_0, false), vec4<bool>(false, global2.x, arg_0, true), false))), _wgslsmith_f_op_f32(-global3.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.x;
    let var_1 = -382f;
    var var_2 = Struct_2(func_7(any(func_1()), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(var_1, -1297f), _wgslsmith_f_op_f32(-global3.b.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -917f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global3.a.zy))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-441f, -1000f) * global3.b.wx), global3.b.xx))), u_input.d, Struct_1(global3.b.zwy, global3.b, global2.x || global3.c), func_7(~u_input.b.x > -(-1i ^ u_input.e), _wgslsmith_div_vec2_f32(func_4(Struct_1(global3.a, vec4<f32>(global3.b.x, var_1, -437f, global3.b.x), global3.c), u_input.d ^ u_input.a).c.a.yy, vec2<f32>(_wgslsmith_f_op_f32(-global3.a.x), func_2(717f, vec3<f32>(-413f, 1312f, 1149f), vec4<bool>(false, global3.c, global2.x, global2.x), -716f).b.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.a.x, global3.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + -975f) - global3.a.x))), min(reverseBits(_wgslsmith_div_vec3_i32(u_input.b.wwx, vec3<i32>(u_input.e, 49i, u_input.e))), -abs(vec3<i32>(u_input.e, u_input.e, u_input.b.x))) ^ reverseBits(~_wgslsmith_mult_vec3_i32(u_input.b.wyy, vec3<i32>(u_input.e, -1i, u_input.b.x))));
    let var_3 = !func_7(any(!(!vec4<bool>(true, true, var_2.d.c, false))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-548f, 1075f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1143f, var_1))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.a.zx) * vec2<f32>(_wgslsmith_f_op_f32(var_1 + var_1), _wgslsmith_f_op_f32(round(894f))))).c;
    var var_4 = -reverseBits(-(1i >> (var_2.b % 32u)));
    var var_5 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global3.a.x - global3.a.x), -196f, 879f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3.a.x, var_2.c.b.x, global3.b.x, 1408f)))))), true);
    var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~select(~_wgslsmith_div_vec3_u32(vec3<u32>(23472u, u_input.c, u_input.a), vec3<u32>(var_2.b, u_input.a, var_2.b)), ~reverseBits(vec3<u32>(var_2.b, u_input.a, 4294967295u)), vec3<bool>(true, true, any(vec4<bool>(var_5.c, global2.x, global3.c, var_2.d.c)))), var_2.b, select(u_input.b, _wgslsmith_mult_vec4_i32(u_input.b, u_input.b), !select(vec4<bool>(var_2.a.c, true, false, false), !vec4<bool>(false, true, global3.c, true), vec4<bool>(var_2.c.c, true, false, var_5.c))), reverseBits(~vec2<u32>(_wgslsmith_mult_u32(64053u, 0u), ~4294967295u)), 1080f);
}

