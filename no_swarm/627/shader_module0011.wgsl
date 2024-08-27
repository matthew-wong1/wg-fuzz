struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: bool,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29>;

var<private> global1: Struct_1;

var<private> global2: f32;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global1.d, vec2<f32>(global1.a, global0[_wgslsmith_index_u32(u_input.a.x, 29u)])) * _wgslsmith_f_op_vec2_f32(global1.d - vec2<f32>(global1.d.x, global0[_wgslsmith_index_u32(20283u, 29u)]))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(global1.d))))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + global1.a)), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.a.x, 29u)])) + 492f) + global0[_wgslsmith_index_u32(u_input.a.x, 29u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(4264u, 29u)], -1073f)) * var_0.x))));
    global2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(539f, _wgslsmith_div_f32(var_1.x, global0[_wgslsmith_index_u32(u_input.a.x, 29u)])) * global1.d.x)))));
    var var_2 = -_wgslsmith_clamp_vec2_i32(-min(vec2<i32>(-4488i, 1i), -vec2<i32>(-19085i, -1i)), -(vec2<i32>(-918i, 0i) << (vec2<u32>(u_input.a.x, 19376u) % vec2<u32>(32u))) ^ vec2<i32>(1i, -1i), vec2<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 43861i, -8733i) >> (u_input.a % vec3<u32>(32u)), vec3<i32>(2147483647i, 2147483647i, -2147483647i) >> (u_input.a % vec3<u32>(32u)))));
    var var_3 = false;
    return global1.e.x;
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    var var_0 = func_3();
    let var_1 = -min(-_wgslsmith_div_vec2_i32(vec2<i32>(-22159i, 1837i), vec2<i32>(28893i, -63514i)), vec2<i32>(1i, 1i)) >> (vec2<u32>(u_input.a.x, 57009u) % vec2<u32>(32u));
    let var_2 = -abs(0i);
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.a, -2021f, -988f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, 109f, global0[_wgslsmith_index_u32(u_input.a.x, 29u)]))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -511f), _wgslsmith_f_op_f32(global1.a * -134f), 1443f)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1813f, -1363f, 2125f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.a, arg_1.d.x, 2122f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.x, 1000f, arg_1.a)) - vec3<f32>(374f, 1294f, arg_1.d.x)))))));
    var var_4 = arg_1;
    return Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(746f, -2138f)))), global1.a)), select(global1.b, vec3<bool>(true, any(global1.e), false), !all(arg_1.b.zx)), arg_0, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(-848f, _wgslsmith_div_f32(636f, -1960f)), var_4.d.x))), vec4<bool>(!arg_1.b.x, true, global1.e.x, arg_1.e.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    global0 = array<f32, 29>();
    global1 = Struct_1(global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec3_u32(u_input.a, ~(~u_input.a))), 29u)], select(select(vec3<bool>(true, true, true), vec3<bool>(true, !arg_1.c, true), vec3<bool>(arg_2.e.x, arg_2.e.x, arg_0.e.x)), !(!vec3<bool>(arg_1.e.x, arg_2.b.x, arg_1.b.x)), true), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-2884f, 709f))) - _wgslsmith_f_op_vec2_f32(-arg_0.d)), func_2(global1.c, arg_0).e);
    global1 = func_2(true, arg_2);
    global1 = Struct_1(arg_1.a, !arg_2.b, true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.d) - vec2<f32>(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.x * global0[_wgslsmith_index_u32(u_input.a.x, 29u)])))), vec4<bool>(!global1.e.x, any(select(!vec3<bool>(arg_1.c, false, arg_1.b.x), vec3<bool>(global1.e.x, true, false), arg_0.c)), global0[_wgslsmith_index_u32(~1u, 29u)] <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a * -1453f)), func_3()));
    var var_0 = arg_0;
    return Struct_2(!(arg_0.b.x != all(select(vec3<bool>(true, arg_2.e.x, true), vec3<bool>(true, true, arg_1.b.x), global1.e.wzz))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    global1 = arg_1;
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.x, global1.d.x, arg_1.d.x, global0[_wgslsmith_index_u32(u_input.a.x, 29u)])))) + vec4<f32>(_wgslsmith_f_op_f32(select(arg_1.a, -929f, arg_0.a)), _wgslsmith_f_op_f32(floor(global1.a)), global1.d.x, 1f)) + vec4<f32>(1f, -806f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -492f))), 123f)) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(754f, global1.d.x, global1.d.x, global1.d.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1415f, global1.d.x, -765f, 1799f)), arg_1.e))))));
    let var_1 = func_2(arg_2.a, func_2(true, arg_1));
    let var_2 = func_2(true, Struct_1(1745f, !arg_1.e.xyz, func_2(true, func_2(!arg_1.b.x, var_1)).c, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.a))), _wgslsmith_f_op_f32(select(func_2(arg_2.a, Struct_1(755f, vec3<bool>(arg_0.a, arg_1.c, arg_0.a), false, vec2<f32>(global1.d.x, var_0.x), vec4<bool>(global1.b.x, false, arg_2.a, arg_0.a))).a, -623f, var_1.b.x && global1.b.x))), vec4<bool>(false, any(vec3<bool>(true, true, false)), true, true)));
    global0 = array<f32, 29>();
    return arg_0;
}

fn func_6(arg_0: Struct_2, arg_1: bool) -> Struct_2 {
    let var_0 = func_2(any(global1.b.xx), func_2(!func_4(Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 29u)], global1.e.wyw, global1.c, vec2<f32>(-473f, -786f), global1.e), func_2(true, Struct_1(-1005f, vec3<bool>(global1.c, global1.e.x, arg_1), arg_0.a, vec2<f32>(-905f, global0[_wgslsmith_index_u32(u_input.a.x, 29u)]), global1.e)), Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 29u)], vec3<bool>(arg_0.a, arg_1, true), arg_1, global1.d, vec4<bool>(true, arg_0.a, true, true))).a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 29u)])), !vec3<bool>(arg_0.a, global1.c, true), func_3() & all(vec3<bool>(true, arg_1, arg_0.a)), global1.d, !(!vec4<bool>(arg_1, true, true, arg_0.a)))));
    let var_1 = arg_0;
    let var_2 = arg_0;
    var var_3 = vec2<i32>(firstLeadingBit(i32(-1i) * -5806i), _wgslsmith_mod_i32(1i, 1i));
    var var_4 = vec4<f32>(global1.a, _wgslsmith_f_op_f32(f32(-1f) * -1077f), _wgslsmith_f_op_f32(abs(var_0.d.x)), global0[_wgslsmith_index_u32(3392u, 29u)]);
    return func_4(var_0, func_2(false, func_2(!var_0.e.x, Struct_1(_wgslsmith_f_op_f32(-160f + -2335f), var_0.b, !global1.e.x, global1.d, func_2(true, Struct_1(-1000f, global1.e.zxw, var_0.c, var_4.zw, vec4<bool>(true, var_1.a, false, global1.e.x))).e))), var_0);
}

fn func_7(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: vec4<u32>) -> Struct_2 {
    global1 = Struct_1(674f, !select(select(!arg_2.www, vec3<bool>(true, arg_0.a, true), func_5(Struct_2(global1.e.x), Struct_1(1212f, arg_2.yyz, true, global1.d, arg_2), Struct_2(false)).a), !vec3<bool>(true, true, arg_0.a), _wgslsmith_f_op_f32(1662f - global0[_wgslsmith_index_u32(arg_3.x, 29u)]) >= _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(4294967295u, 29u)]))), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global1.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(50129u, 29u)], -829f), global1.d, arg_2.wy)))))), !select(vec4<bool>(true, true, 531f <= global1.a, func_3()), arg_2, !global1.e));
    let var_0 = func_2(arg_2.x, func_2(true, func_2(func_3(), Struct_1(1293f, func_2(true, Struct_1(-1248f, arg_2.zyz, global1.c, vec2<f32>(-408f, global1.d.x), vec4<bool>(global1.b.x, false, arg_2.x, arg_0.a))).e.wwx, false, global1.d, !arg_2))));
    let var_1 = 0u;
    global0 = array<f32, 29>();
    global0 = array<f32, 29>();
    return func_4(var_0, Struct_1(_wgslsmith_f_op_f32(max(var_0.a, global1.d.x)), select(arg_2.zwy, var_0.b, true), false, vec2<f32>(-1434f, 226f), global1.e), var_0);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = arg_1.e.yxz;
    let var_1 = arg_1.e.wyy;
    var var_2 = func_7(func_6(func_5(func_4(func_2(true, arg_1), arg_1, arg_0), Struct_1(_wgslsmith_f_op_f32(-global1.a), !global1.b, select(var_1.x, true, false), _wgslsmith_f_op_vec2_f32(global1.d * arg_0.d), vec4<bool>(true, var_1.x, false, true)), Struct_2(any(arg_0.e))), arg_0.e.x && false), ~abs(_wgslsmith_div_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-2147483647i, 1i)) >> (_wgslsmith_mod_vec2_u32(u_input.a.zy, vec2<u32>(u_input.a.x, 0u)) % vec2<u32>(32u))), vec4<bool>(true, true != arg_0.b.x, global1.e.x, func_6(func_5(func_4(Struct_1(1149f, var_0, false, global1.d, arg_1.e), Struct_1(358f, global1.e.zzy, var_1.x, arg_1.d, vec4<bool>(false, false, false, true)), Struct_1(1000f, var_1, global1.c, global1.d, vec4<bool>(true, false, arg_0.e.x, arg_1.c))), Struct_1(-871f, var_1, false, arg_1.d, vec4<bool>(false, arg_1.c, var_0.x, arg_1.b.x)), func_5(Struct_2(var_0.x), arg_1, Struct_2(arg_0.e.x))), false).a), vec4<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(select(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), u_input.a, arg_1.b)), abs(~u_input.a)), 1u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.a.x, 4294967295u, u_input.a.x), ~6005u) & _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), 56395u), firstTrailingBit(u_input.a.x)));
    let var_3 = -_wgslsmith_mod_vec2_i32(vec2<i32>(1i, firstLeadingBit(max(2147483647i, -39320i))), vec2<i32>(-1i) * -(~vec2<i32>(1090i, 1i)));
    let var_4 = 78007u;
    return u_input.a.xy;
}

fn func_8(arg_0: vec2<u32>, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = -_wgslsmith_div_i32(_wgslsmith_div_i32(-abs(-20762i), 1i), (_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -60070i, -2147483647i), vec3<i32>(-21913i, 0i, -2147483647i)) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(67281i, -1i), vec2<i32>(-9346i, -2147483647i))) & ~(-23807i >> (u_input.a.x % 32u)));
    let var_1 = max(select(vec4<u32>(countOneBits(~1u), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(arg_0.x, 29040u, u_input.a.x)), ~u_input.a), ~1u, 1u), ~min(select(vec4<u32>(0u, arg_0.x, 1u, 15541u), vec4<u32>(arg_0.x, 1u, 4294967295u, u_input.a.x), global1.c), ~vec4<u32>(6132u, 25607u, arg_0.x, arg_0.x)), !arg_1.x), vec4<u32>(arg_0.x << ((_wgslsmith_sub_u32(4294967295u, arg_0.x) >> (22770u % 32u)) % 32u), 22568u, ~min(43856u, arg_0.x), 4294967295u));
    global2 = global1.d.x;
    global0 = array<f32, 29>();
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(1u, 29u)], -975f)), func_2(arg_1.x, Struct_1(global0[_wgslsmith_index_u32(var_1.x, 29u)], global1.e.xxy, false, vec2<f32>(2016f, global0[_wgslsmith_index_u32(var_1.x, 29u)]), global1.e)).a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(57715u, 29u)] * global1.d.x)), 543f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(15157u, 29u)], global1.a, global0[_wgslsmith_index_u32(var_1.x, 29u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1141f, global0[_wgslsmith_index_u32(var_1.x, 29u)], -1244f) - vec3<f32>(865f, 223f, 312f)), arg_1.zzx)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(357f, -1000f, 829f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(f32(-1f) * -586f), _wgslsmith_f_op_f32(-355f + global1.d.x)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1703f, 1156f, global1.d.x), vec3<f32>(-1284f, 1594f, -337f))), vec3<f32>(500f, 1112f, 285f), arg_1.x || arg_1.x)))));
    return Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a - 559f)), global0[_wgslsmith_index_u32(1u, 29u)])))), !arg_1.xyy, true, vec2<f32>(global1.a, global1.a), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_8(_wgslsmith_add_vec2_u32(func_1(Struct_1(global1.d.x, global1.e.ywy, all(vec2<bool>(true, false)), _wgslsmith_f_op_vec2_f32(round(global1.d)), vec4<bool>(false, true, global1.c, global1.b.x)), Struct_1(-876f, select(vec3<bool>(global1.b.x, global1.e.x, global1.c), global1.e.yzw, global1.b.x), false, _wgslsmith_f_op_vec2_f32(-global1.d), vec4<bool>(true, true, true, true))), vec2<u32>(select(u_input.a.x, _wgslsmith_mod_u32(39750u, 3502u), global1.c), abs(33953u))), !select(global1.e, global1.e, vec4<bool>(!global1.c, func_3(), true, false)));
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_0.d)));
    global2 = 2182f;
    var var_2 = Struct_2(!var_0.e.x);
    global2 = _wgslsmith_f_op_f32(-var_0.d.x);
    var var_3 = ~abs(_wgslsmith_clamp_i32(1i, _wgslsmith_clamp_i32(-2147483647i, abs(1i), select(0i, 8127i, global1.b.x)), _wgslsmith_clamp_i32(~(-16105i), abs(-19628i), -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(-28146i));
}

