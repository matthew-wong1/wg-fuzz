struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<u32>,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec4<bool>,
    d: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<f32, 22>;

var<private> global2: vec3<bool>;

var<private> global3: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(67603u, false, vec4<u32>(0u, 75640u, 55696u, 18421u), 0i, vec3<bool>(false, true, false)), Struct_1(4294967295u, true, vec4<u32>(17595u, 4294967295u, 28292u, 0u), -92877i, vec3<bool>(true, false, false)), Struct_1(10332u, true, vec4<u32>(4294967295u, 65904u, 15620u, 0u), 1i, vec3<bool>(true, true, false)), Struct_1(4294967295u, false, vec4<u32>(31579u, 56317u, 1u, 0u), 9134i, vec3<bool>(true, false, false)), Struct_1(0u, false, vec4<u32>(0u, 23287u, 29652u, 16485u), -10257i, vec3<bool>(false, false, false)), Struct_1(20463u, true, vec4<u32>(7798u, 0u, 21178u, 1u), -1i, vec3<bool>(false, false, false)), Struct_1(22778u, false, vec4<u32>(587u, 4294967295u, 4294967295u, 49049u), 51190i, vec3<bool>(true, true, false)), Struct_1(5377u, false, vec4<u32>(4294967295u, 33362u, 4294967295u, 1279u), 42199i, vec3<bool>(false, false, false)), Struct_1(1u, false, vec4<u32>(545u, 1u, 6239u, 22607u), 2147483647i, vec3<bool>(false, true, false)), Struct_1(15330u, false, vec4<u32>(4294967295u, 15185u, 49426u, 1u), 0i, vec3<bool>(false, false, true)), Struct_1(0u, false, vec4<u32>(28700u, 1u, 1u, 8172u), -42286i, vec3<bool>(true, true, false)), Struct_1(4294967295u, false, vec4<u32>(0u, 4294967295u, 39855u, 0u), -15419i, vec3<bool>(false, true, true)), Struct_1(0u, false, vec4<u32>(0u, 45424u, 143234u, 95926u), i32(-2147483648), vec3<bool>(true, false, false)), Struct_1(1u, true, vec4<u32>(4294967295u, 0u, 1u, 26008u), -1i, vec3<bool>(false, false, false)), Struct_1(12516u, true, vec4<u32>(61729u, 1506u, 0u, 1u), -1i, vec3<bool>(true, false, false)));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec3<bool>) -> f32 {
    let var_0 = arg_0;
    global0 = arg_1.a;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.c.x))));
    var var_2 = Struct_5(global0.d, arg_1, Struct_4(arg_1.a, global1[_wgslsmith_index_u32(65721u, 22u)] > _wgslsmith_f_op_f32(-1250f - -1000f), select(!select(arg_1.c, vec4<bool>(arg_2.x, false, arg_0.b, arg_0.b), arg_0.e.x), !select(vec4<bool>(global0.a.b, false, global2.x, true), vec4<bool>(arg_1.a.a.b, arg_1.c.x, true, arg_0.e.x), arg_1.c), true), _wgslsmith_f_op_f32(-890f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(arg_1.a.d.a, 22u)])) * _wgslsmith_f_op_f32(-arg_1.a.c.x)))));
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-840f, 1516f, var_0.e.x)), arg_1.a.c.x, _wgslsmith_f_op_f32(round(var_2.c.d))))), global1[_wgslsmith_index_u32(32209u, 22u)], global3[_wgslsmith_index_u32(82585u, 15u)], abs(~arg_1.a.d.d), ~(~1u));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + var_3.b)))))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>) -> vec4<bool> {
    var var_0 = 40087u;
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1069f, arg_0.c.x)), _wgslsmith_f_op_f32(sign(-1837f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(arg_0.c.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.c.x, -821f, 902f))))))), -603f, global3[_wgslsmith_index_u32(u_input.a ^ _wgslsmith_add_u32(arg_1.x | arg_0.a.c.x, ~arg_1.x ^ 57745u), 15u)], -select(0i, global0.a.d, false), 27784u);
    let var_2 = select(vec3<bool>(countOneBits(global0.d.d) > _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-12172i, arg_0.d.d), arg_0.a.d, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.d.d, var_1.d, 0i), vec3<i32>(1i, 2147483647i, 883i))), (any(global2.zx) != true) | global0.d.e.x, all(arg_0.a.e.xy) & any(!var_1.c.e.yy)), !global0.d.e, vec3<bool>(!any(select(vec4<bool>(var_1.c.b, global0.d.b, true, true), vec4<bool>(arg_0.d.e.x, false, true, true), arg_0.a.e.x)), global0.d.e.x, all(vec4<bool>(global0.c.x >= global0.c.x, any(vec4<bool>(arg_0.a.b, arg_0.a.e.x, var_1.c.b, global0.a.e.x)), all(var_1.c.e.xz), var_1.c.b))));
    let var_3 = arg_0;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1911f - var_3.c.x)))));
    return select(vec4<bool>(arg_0.d.e.x, true, !global2.x, !(arg_1.x >= reverseBits(arg_1.x))), vec4<bool>(~30431i < _wgslsmith_div_i32(select(-30858i, 37891i, false), _wgslsmith_mod_i32(arg_0.a.d, 22719i)), global0.d.b, !(!(u_input.b.x > u_input.b.x)), true), _wgslsmith_div_i32(37096i, var_3.a.d) < _wgslsmith_dot_vec2_i32(vec2<i32>(global0.d.d, _wgslsmith_mult_i32(var_1.d, 140i)), _wgslsmith_mult_vec2_i32(select(vec2<i32>(-15367i, -28252i), vec2<i32>(var_3.d.d, arg_0.a.d), false), max(vec2<i32>(10537i, 0i), vec2<i32>(global0.a.d, 21715i)))));
}

fn func_1() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1366f), -1300f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 3144u, 83970u), global0.d.c.yyx), 15u)], Struct_4(Struct_2(global0.d, global0.d.c.xwx, vec2<f32>(977f, -723f), global3[_wgslsmith_index_u32(global0.d.c.x, 15u)]), true, vec4<bool>(global2.x, global0.a.b, true, true), global0.c.x), select(global0.d.e, global0.d.e, global2.x))) * global1[_wgslsmith_index_u32(u_input.a, 22u)])));
    let var_1 = Struct_4(Struct_2(global0.a, vec3<u32>(u_input.b.x, _wgslsmith_add_u32(u_input.a << (global0.b.x % 32u), 1u), firstLeadingBit(global0.b.x)), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-727f + _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(global0.d.c.x, 22u)])))), global3[_wgslsmith_index_u32(0u, 15u)]), any(global0.a.e.zy), select(!vec4<bool>(true, any(vec4<bool>(global0.a.e.x, true, true, global2.x)), true, true), func_3(Struct_2(global0.a, global0.b, global0.c, Struct_1(u_input.b.x, true, vec4<u32>(global0.a.c.x, 89193u, 0u, 1u), global0.d.d, global0.d.e)), ~(vec4<u32>(global0.b.x, 38985u, u_input.b.x, u_input.a) & global0.d.c)), !func_3(Struct_2(Struct_1(4294967295u, false, vec4<u32>(u_input.b.x, global0.b.x, 4294967295u, 5710u), global0.d.d, global0.a.e), global0.b, vec2<f32>(741f, global0.c.x), Struct_1(global0.d.a, false, global0.a.c, global0.d.d, global0.a.e)), ~vec4<u32>(34815u, u_input.a, 26546u, 0u))), -1319f);
    global0 = var_1.a;
    global0 = Struct_2(Struct_1(countOneBits(5207u), any(!(!global0.a.e.zx)), var_1.a.a.c, 1i, var_1.c.wyy), vec3<u32>(min(u_input.a, u_input.b.x), ~9866u, ~u_input.a), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1806f - var_0.x), global1[_wgslsmith_index_u32(~var_1.a.b.x, 22u)]) + _wgslsmith_f_op_vec2_f32(global0.c + _wgslsmith_f_op_vec2_f32(var_0.zy * var_1.a.c))))), Struct_1(abs(u_input.b.x), any(func_3(Struct_2(global3[_wgslsmith_index_u32(0u, 15u)], vec3<u32>(global0.d.a, var_1.a.b.x, var_1.a.b.x), global0.c, Struct_1(global0.d.a, true, global0.d.c, global0.a.d, var_1.c.xzy)), global0.d.c).xzw) && global2.x, min(vec4<u32>(_wgslsmith_clamp_u32(global0.b.x, 24955u, u_input.a), ~global0.d.a, ~1u, 62577u), abs(var_1.a.d.c ^ global0.d.c)), 1i, !(!global0.d.e)));
    let var_2 = _wgslsmith_mod_i32(2147483647i, ~(-12885i));
    return var_1;
}

fn func_4(arg_0: Struct_4) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1475f, 114f, -339f))))) * vec3<f32>(_wgslsmith_f_op_f32(round(global0.c.x)), global1[_wgslsmith_index_u32(arg_0.a.b.x << (global0.a.c.x % 32u), 22u)], _wgslsmith_div_f32(-424f, 121f))))), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(11450u, 22u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_div_u32(global0.a.a, global0.d.a)), 22u)]))), global0.a, 1i << (_wgslsmith_dot_vec2_u32(func_1().a.b.zz, u_input.b) % 32u), arg_0.a.b.x);
    var_0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1020f)), _wgslsmith_f_op_f32(step(-2715f, -237f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.c.x - -852f), arg_0.d), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(566f + arg_0.d), _wgslsmith_f_op_f32(func_2(var_0.c, Struct_4(Struct_2(Struct_1(arg_0.a.a.a, true, vec4<u32>(arg_0.a.d.c.x, 1u, arg_0.a.a.a, u_input.a), arg_0.a.d.d, vec3<bool>(arg_0.b, false, global2.x)), arg_0.a.a.c.wxz, global0.c, Struct_1(21124u, arg_0.c.x, vec4<u32>(7502u, 45911u, 8231u, arg_0.a.a.a), -18321i, arg_0.a.d.e)), false, arg_0.c, arg_0.a.c.x), arg_0.a.d.e))))))), 2506f, Struct_1(u_input.a, !(!global2.x) | any(func_1().a.d.e), var_0.c.c, firstTrailingBit(firstTrailingBit(global0.a.d) | arg_0.a.a.d), vec3<bool>(!arg_0.c.x & (2309f >= var_0.a.x), true, var_0.c.e.x)), -_wgslsmith_mod_i32(-60195i, ~(-2147483647i)), 48515u);
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(551f, 1458f)), func_1().a.c.x, -275f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-571f, global0.c.x, 2029f)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.a.x, -291f, global1[_wgslsmith_index_u32(u_input.b.x, 22u)])))))), arg_0.d, var_0.c, 1i, arg_0.a.b.x);
    global3 = array<Struct_1, 15>();
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.a.x))) - arg_0.a.c.x)));
    return var_1.c;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec2<f32>, arg_3: vec2<i32>) -> Struct_3 {
    var var_0 = arg_1;
    let var_1 = Struct_3(vec3<f32>(-967f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1115f))))), _wgslsmith_f_op_f32(f32(-1f) * -699f)), _wgslsmith_f_op_f32(abs(593f)), Struct_1(_wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, var_0.a.d.c.x), 11865u) >> (4294967295u % 32u), any(select(vec4<bool>(true, false, arg_1.a.d.b, false), select(vec4<bool>(var_0.b, false, arg_1.b, false), arg_1.c, global0.a.e.x), var_0.c)), vec4<u32>(0u, 13095u, var_0.a.d.a, select(func_1().a.d.c.x, func_4(Struct_4(var_0.a, arg_0.e.x, vec4<bool>(arg_0.b, arg_1.b, arg_1.a.a.e.x, true), arg_1.a.c.x)).a, false)), -arg_1.a.d.d, vec3<bool>(true, func_3(Struct_2(Struct_1(0u, arg_1.a.a.b, vec4<u32>(1u, 34798u, 4294967295u, u_input.b.x), 17797i, arg_1.a.a.e), global0.a.c.zwx, arg_2, global0.d), arg_1.a.d.c >> (arg_1.a.d.c % vec4<u32>(32u))).x, arg_0.e.x)), _wgslsmith_mod_i32(func_4(arg_1).d, firstTrailingBit(~(~(-1i)))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(arg_1.a.b, reverseBits(vec3<u32>(5333u, 98673u, 0u))) & (_wgslsmith_add_u32(12259u, 0u) >> (abs(global0.a.c.x) % 32u)), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(arg_1.a.b.x, arg_0.a, arg_1.a.a.c.x) ^ select(var_0.a.d.c.x, 87892u, var_0.a.a.e.x), func_4(Struct_4(arg_1.a, global0.a.e.x, vec4<bool>(global0.d.e.x, global0.a.b, var_0.a.a.b, false), -287f)).a), arg_0.c.x));
    global2 = !func_1().a.d.e;
    var var_2 = global0.d.d;
    var var_3 = var_1;
    return Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b)), global1[_wgslsmith_index_u32(reverseBits(~33186u | (var_3.c.c.x ^ 0u)), 22u)], -2332f), -1117f, var_0.a.d, -2147483647i, abs(~77292u | _wgslsmith_sub_u32(_wgslsmith_mod_u32(84641u, arg_0.a), ~arg_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(func_1()), Struct_4(Struct_2(Struct_1(reverseBits(u_input.a), global1[_wgslsmith_index_u32(30847u, 22u)] == global1[_wgslsmith_index_u32(0u, 22u)], global0.a.c, global0.a.d, vec3<bool>(false, global0.a.e.x, false)), vec3<u32>(~38650u, 84949u, _wgslsmith_clamp_u32(1u, 28921u, u_input.a)), vec2<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(79946u, true, global0.d.c, 1i, vec3<bool>(global0.d.e.x, global2.x, global2.x)), Struct_4(Struct_2(Struct_1(u_input.b.x, global0.a.b, global0.d.c, 0i, global0.d.e), vec3<u32>(u_input.b.x, 0u, 95737u), global0.c, global3[_wgslsmith_index_u32(u_input.b.x, 15u)]), false, vec4<bool>(true, true, global2.x, true), 543f), global0.a.e)), global1[_wgslsmith_index_u32(~1u, 22u)]), func_4(Struct_4(Struct_2(Struct_1(0u, global2.x, vec4<u32>(0u, 0u, u_input.b.x, 4294967295u), global0.a.d, global0.d.e), global0.b, vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 22u)], -651f), Struct_1(91892u, global2.x, vec4<u32>(65342u, global0.d.c.x, 49501u, u_input.b.x), 1011i, global0.d.e)), true, vec4<bool>(true, true, true, false), global0.c.x))), any(func_4(Struct_4(Struct_2(global0.a, global0.b, vec2<f32>(969f, global1[_wgslsmith_index_u32(global0.d.c.x, 22u)]), global0.a), false, vec4<bool>(global2.x, true, true, global2.x), global0.c.x)).e.xx), vec4<bool>(true, true | func_4(Struct_4(Struct_2(global3[_wgslsmith_index_u32(4294967295u, 15u)], global0.a.c.wxz, vec2<f32>(global0.c.x, 985f), global0.a), false, vec4<bool>(false, true, global0.a.b, false), -111f)).b, global2.x, 102178u <= (u_input.a >> (global0.d.a % 32u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(22835u, 22u)] - global0.c.x)), global1[_wgslsmith_index_u32(4294967295u, 22u)], all(vec4<bool>(true, global0.d.b, global0.a.b, global2.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.c.x, global1[_wgslsmith_index_u32(19047u, 22u)])))) * vec2<f32>(-813f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 22u)] + global1[_wgslsmith_index_u32(global0.a.a, 22u)]), _wgslsmith_f_op_f32(201f - 532f)))), ~vec2<i32>(abs(-14716i), 16308i));
    let var_1 = func_5(func_5(global3[_wgslsmith_index_u32(min(4294967295u, var_0.c.a), 15u)], func_1(), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1879f, _wgslsmith_f_op_f32(-var_0.b)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(var_0.e, 22u)], global1[_wgslsmith_index_u32(var_0.e, 22u)]), global0.c, global2.x))), vec2<i32>(var_0.c.d | 56211i, -1i)).c, Struct_4(Struct_2(Struct_1(global0.d.a, any(vec4<bool>(false, false, var_0.c.e.x, var_0.c.e.x)), countOneBits(var_0.c.c), -59006i << (1u % 32u), vec3<bool>(var_0.c.b, false, false)), firstLeadingBit(vec3<u32>(u_input.b.x, 0u, u_input.a)), vec2<f32>(-1585f, _wgslsmith_f_op_f32(global0.c.x - 1617f)), Struct_1(u_input.b.x, all(var_0.c.e), reverseBits(vec4<u32>(global0.a.a, 15873u, var_0.e, 60024u)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.d, var_0.c.d, -21969i, -1i), vec4<i32>(24632i, 0i, var_0.d, -1i)), vec3<bool>(false, global2.x, global2.x))), !all(var_0.c.e), select(vec4<bool>(false, any(global0.d.e), true, global2.x & true), !select(vec4<bool>(false, true, true, global2.x), vec4<bool>(true, true, false, global2.x), true), !vec4<bool>(true, global2.x, global0.d.e.x, false)), global0.c.x), _wgslsmith_f_op_vec2_f32(-global0.c), -(~select(reverseBits(vec2<i32>(-10256i, 21203i)), abs(vec2<i32>(-28264i, global0.a.d)), false))).c.e.zz;
    global0 = func_1().a;
    global2 = func_3(Struct_2(global3[_wgslsmith_index_u32(global0.d.a, 15u)], ~global0.a.c.xwz | ~(~var_0.c.c.yxz), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.c.x, global1[_wgslsmith_index_u32(6796u, 22u)]))))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(var_0.c.a, 22u)], global1[_wgslsmith_index_u32(52581u, 22u)]))))), func_1().a.d), vec4<u32>(_wgslsmith_dot_vec4_u32(func_5(func_4(Struct_4(Struct_2(global3[_wgslsmith_index_u32(71655u, 15u)], vec3<u32>(0u, global0.d.a, var_0.c.a), global0.c, global0.d), false, vec4<bool>(global0.d.e.x, true, global0.a.b, true), var_0.b)), Struct_4(Struct_2(Struct_1(1u, var_0.c.b, vec4<u32>(0u, 38465u, global0.a.c.x, 0u), -2147483647i, var_0.c.e), var_0.c.c.yxx, global0.c, global3[_wgslsmith_index_u32(global0.a.a, 15u)]), false, vec4<bool>(true, var_1.x, var_1.x, var_1.x), -961f), vec2<f32>(global1[_wgslsmith_index_u32(1u, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)]), vec2<i32>(1i, -14206i)).c.c, reverseBits(vec4<u32>(global0.b.x, global0.d.c.x, u_input.b.x, var_0.e) >> (vec4<u32>(56440u, u_input.a, 4294967295u, global0.b.x) % vec4<u32>(32u)))), u_input.b.x >> (_wgslsmith_sub_u32(~0u, ~global0.b.x) % 32u), reverseBits(var_0.e), _wgslsmith_mult_u32(~_wgslsmith_mult_u32(u_input.b.x, 33394u), var_0.e))).wxw;
    var var_2 = func_5(global0.a, func_1(), vec2<f32>(669f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-var_0.a.x)))))), _wgslsmith_clamp_vec2_i32(min(vec2<i32>(reverseBits(global0.a.d), -2147483647i), max(vec2<i32>(var_0.c.d, global0.d.d) | vec2<i32>(var_0.d, 0i), vec2<i32>(var_0.d, global0.a.d))), vec2<i32>(-2147483647i >> ((var_0.e | 10188u) % 32u), 2147483647i), vec2<i32>(select(-1i, 1i, true), global0.a.d))).c;
    var var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(global0.c.x, var_0.a);
}

