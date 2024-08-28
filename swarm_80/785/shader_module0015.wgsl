struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<u32>,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 20>;

var<private> global1: array<vec3<f32>, 3>;

var<private> global2: f32;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    return select(u_input.d, _wgslsmith_add_u32(u_input.a.x, 16454u), all(select(select(select(arg_0, arg_0, vec3<bool>(arg_0.x, arg_0.x, true)), vec3<bool>(false, true, arg_0.x), select(vec3<bool>(false, false, arg_0.x), vec3<bool>(true, true, arg_0.x), false)), vec3<bool>(true, true, true), !any(vec2<bool>(arg_0.x, arg_0.x)))));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec4<i32>) -> vec2<f32> {
    var var_0 = arg_2.e;
    global1 = array<vec3<f32>, 3>();
    global2 = 103f;
    global0 = array<vec2<bool>, 20>();
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_2.b.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(3054f, var_0.a), _wgslsmith_f_op_f32(-arg_2.e.a), true)))))));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), var_1.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1034f) * _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(max(-531f, var_1.x)))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<bool>) -> f32 {
    global2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), -1027f) - _wgslsmith_f_op_f32(-arg_0.x))));
    global1 = array<vec3<f32>, 3>();
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-394f * arg_0.x));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(sign(arg_0.x))))) * arg_0.x);
    let var_0 = Struct_2(select(vec4<bool>(!arg_1.x, false, arg_1.x, !(!arg_1.x)), vec4<bool>(arg_1.x, _wgslsmith_f_op_f32(round(arg_0.x)) < _wgslsmith_div_f32(-2254f, -423f), true, !arg_1.x | select(true, arg_1.x, true)), vec4<bool>(true, false, true, !select(arg_1.x, false, arg_1.x))), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-253f, arg_0.x)))))), false, any(!global0[_wgslsmith_index_u32(u_input.a.x, 20u)]) && arg_1.x), _wgslsmith_div_vec3_u32(min(max(vec3<u32>(4294967295u, 1789u, 4294967295u), vec3<u32>(u_input.d, 73353u, 19355u)), vec3<u32>(u_input.d, u_input.d, 43852u)) >> (vec3<u32>(u_input.a.x, 23048u, u_input.a.x) % vec3<u32>(32u)), ~vec3<u32>(~u_input.d, 21065u, min(16569u, u_input.d))), firstLeadingBit(abs(countOneBits(vec3<i32>(u_input.c, 0i, u_input.c)))), Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(199f, _wgslsmith_f_op_f32(max(-1000f, -542f))), arg_0.x), false, false));
    return _wgslsmith_f_op_f32(floor(510f));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global2 = _wgslsmith_f_op_f32(1558f * _wgslsmith_f_op_f32(-1251f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.a))))));
    global1 = array<vec3<f32>, 3>();
    var var_0 = (-17727i ^ -u_input.c) ^ (u_input.c >> (abs(func_2(vec3<bool>(false, false, arg_1.c))) % 32u));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(~(-2147483647i), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.d) ^ vec4<u32>(22372u, u_input.d, u_input.a.x, 25809u), Struct_2(vec4<bool>(true, arg_1.b, arg_1.b, false), Struct_1(arg_1.a, true, arg_1.c), vec3<u32>(4294967295u, u_input.a.x, u_input.d), vec3<i32>(1i, 29051i, 1i), Struct_1(886f, arg_0.b, arg_1.c)), -vec4<i32>(-2147483647i, -2147483647i, u_input.b, u_input.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(600f, arg_0.a) - vec2<f32>(818f, 1569f)))), vec3<bool>(all(select(vec3<bool>(arg_0.b, arg_1.c, false), vec3<bool>(arg_1.c, true, true), vec3<bool>(arg_1.b, true, arg_0.b))), all(!vec3<bool>(false, arg_1.c, arg_1.c)), arg_1.c))), all(!(!(!vec4<bool>(false, arg_0.c, true, true)))), true);
    let var_2 = u_input.d;
    return Struct_1(arg_0.a, !any(!vec4<bool>(false, true, arg_0.b, false)), false);
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_2) -> i32 {
    global0 = array<vec2<bool>, 20>();
    global0 = array<vec2<bool>, 20>();
    global1 = array<vec3<f32>, 3>();
    global1 = array<vec3<f32>, 3>();
    var var_0 = ~vec2<i32>(~u_input.b, select(max(u_input.b, -arg_3.d.x), _wgslsmith_mod_i32(-18216i, ~2147483647i), arg_1.c));
    return var_0.x;
}

fn func_6(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = ~vec3<u32>(countOneBits(u_input.a.x), ~32666u & _wgslsmith_clamp_u32(max(57423u, u_input.d), 1u, 83059u), u_input.d);
    let var_1 = Struct_2(!arg_0, func_1(func_1(func_1(func_1(Struct_1(-991f, arg_0.x, false), Struct_1(-1000f, arg_0.x, arg_0.x)), func_1(Struct_1(arg_2.x, arg_0.x, false), Struct_1(-284f, false, false))), Struct_1(_wgslsmith_f_op_f32(-arg_2.x), select(arg_0.x, true, false), false)), func_1(func_1(func_1(Struct_1(arg_2.x, false, arg_0.x), Struct_1(arg_2.x, true, false)), func_1(Struct_1(622f, arg_0.x, arg_0.x), Struct_1(504f, arg_0.x, false))), func_1(Struct_1(2062f, arg_0.x, true), Struct_1(-1456f, arg_0.x, true)))), vec3<u32>(4294967295u, func_2(!arg_0.zxz), 1u), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, u_input.c, -46285i), vec3<i32>(1i, -1i, u_input.c)), vec3<i32>(arg_1.x, -2147483647i, u_input.c) << (vec3<u32>(1u, 4294967295u, u_input.a.x) % vec3<u32>(32u))), (vec3<i32>(-1i, 41810i, u_input.c) << (firstTrailingBit(vec3<u32>(88872u, 0u, 1u)) % vec3<u32>(32u))) << (_wgslsmith_mult_vec3_u32(var_0, vec3<u32>(119476u, 0u, u_input.a.x)) % vec3<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(1100f + _wgslsmith_f_op_f32(max(arg_2.x, arg_2.x))), all(vec2<bool>(arg_0.x, true)), arg_0.x));
    var var_2 = var_1;
    var_2 = var_1;
    let var_3 = select(-vec4<i32>(var_2.d.x, -var_2.d.x, -select(1i, 0i, var_1.a.x), ~0i), min(min(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, var_1.d.x, 10782i, var_1.d.x), vec4<i32>(22499i, -4132i, -18606i, -6478i)), vec4<i32>(u_input.c, 52164i, u_input.c, 86827i) | vec4<i32>(-32319i, -1i, var_1.d.x, arg_1.x)), select(-vec4<i32>(var_1.d.x, arg_1.x, -36585i, -2147483647i), reverseBits(vec4<i32>(-45010i, arg_1.x, -3329i, -12295i)), vec4<bool>(var_1.a.x, arg_0.x, arg_0.x, var_2.a.x))) & select((vec4<i32>(-14482i, -37145i, var_1.d.x, -10315i) | vec4<i32>(-2147483647i, var_2.d.x, -2147483647i, u_input.b)) >> (abs(vec4<u32>(4294967295u, 24676u, var_0.x, var_1.c.x)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(1158i, var_2.d.x, var_1.d.x, var_2.d.x), ~vec4<i32>(u_input.c, -8310i, -40306i, var_1.d.x), min(vec4<i32>(var_1.d.x, u_input.c, -744i, arg_1.x), vec4<i32>(11126i, 8368i, 0i, -26238i))), true), !select(select(var_2.a, arg_0, arg_0.x), !(!var_1.a), all(select(vec2<bool>(true, arg_0.x), vec2<bool>(var_2.e.b, arg_0.x), var_2.a.wy))));
    return var_2.b;
}

fn func_7(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: bool) -> Struct_1 {
    global0 = array<vec2<bool>, 20>();
    var var_0 = select(vec4<u32>(10856u >> (1u % 32u), ~u_input.d << (4294967295u % 32u), u_input.d, u_input.d), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(78509u, 0u, arg_2.c.x, 45198u)), _wgslsmith_div_vec4_u32(vec4<u32>(11697u, 1u, arg_2.c.x, 0u), vec4<u32>(arg_2.c.x, 1u, 0u, 49225u)) >> (~vec4<u32>(u_input.d, arg_2.c.x, u_input.d, 1u) % vec4<u32>(32u))), select(vec4<u32>(27749u, arg_2.c.x, 1u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(42053u, 1u, 24487u, arg_2.c.x), vec4<u32>(26755u, arg_2.c.x, 13451u, arg_2.c.x), vec4<u32>(arg_2.c.x, arg_2.c.x, 62210u, arg_2.c.x)), 4294967295u > u_input.a.x) | ~vec4<u32>(u_input.d, u_input.a.x, arg_2.c.x, 4294967295u), select(~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.c.x, 8716u, arg_2.c.x, arg_2.c.x), vec4<u32>(arg_2.c.x, u_input.a.x, 4294967295u, 4294967295u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 0u, arg_2.c.x), vec4<u32>(12022u, 4294967295u, u_input.a.x, u_input.a.x)), 0u, _wgslsmith_sub_u32(34778u, 16248u), _wgslsmith_div_u32(8539u, u_input.a.x)), vec4<bool>(true, true, true, true))), arg_2.a);
    var var_1 = func_6(select(vec4<bool>(true, all(vec3<bool>(true, arg_2.e.c, false)), 1i > ~arg_2.d.x, arg_2.b.c), select(vec4<bool>(false, any(vec4<bool>(false, arg_1.b, arg_1.c, arg_1.c)), true, u_input.c > 1298i), select(vec4<bool>(true, true, arg_2.e.c, false), vec4<bool>(arg_2.a.x, arg_1.c, arg_1.b, arg_3), true), all(arg_2.a)), !arg_3), arg_2.d.yy, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.e.a, arg_2.b.a) - vec2<f32>(-810f, 714f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.e.a, arg_1.a), vec2<f32>(361f, arg_1.a))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, -1251f)))), arg_2.a.zy)), select(global0[_wgslsmith_index_u32(57718u, 20u)], select(vec2<bool>(false, true), !global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(var_0.x, 20u)]), any(select(arg_2.a.xzy, arg_2.a.yxw, true))))));
    var var_2 = arg_2.a;
    global0 = array<vec2<bool>, 20>();
    return Struct_1(-539f, func_6(vec4<bool>(any(vec2<bool>(arg_3, arg_2.b.c)), !arg_3, true, !arg_1.b), _wgslsmith_mult_vec2_i32(arg_2.d.yx, vec2<i32>(arg_2.d.x, u_input.c)) | vec2<i32>(u_input.b, u_input.c), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(409f, arg_2.e.a))))).c & !all(select(vec4<bool>(var_1.c, var_1.b, arg_1.b, false), arg_2.a, arg_2.a)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(u_input.c, func_6(select(vec4<bool>(true, true, true, u_input.c >= -2147483647i), vec4<bool>(true, true, true, true), all(global0[_wgslsmith_index_u32(u_input.d, 20u)])), vec2<i32>(u_input.b, func_5(true, func_1(Struct_1(1335f, true, false), Struct_1(1000f, false, true)), vec3<u32>(u_input.a.x, 1u, 0u), Struct_2(vec4<bool>(false, false, true, true), Struct_1(684f, true, true), vec3<u32>(0u, 0u, u_input.d), vec3<i32>(-1i, 23471i, u_input.c), Struct_1(353f, true, false)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(131f, 446f)), vec2<f32>(846f, -709f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-220f, 297f), vec2<f32>(1000f, -166f), true)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1497f, -946f) * vec2<f32>(-1000f, 402f))))), Struct_2(vec4<bool>(true, ~u_input.d != 5274u, true, true), func_6(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, false, true), true), _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, u_input.c), vec2<i32>(1i, u_input.c), vec2<i32>(u_input.c, -4770i)) << (u_input.a % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(635f, -517f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2492f, 507f)))), countOneBits(abs(vec3<u32>(u_input.d, u_input.a.x, u_input.a.x))), vec3<i32>(-1i) * -countOneBits(vec3<i32>(u_input.c, -2147483647i, u_input.c)), func_6(vec4<bool>(true, true, true, true), max(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, 0i), vec2<i32>(2147483647i, -20474i)), -vec2<i32>(u_input.c, 1i)), vec2<f32>(1f, 1f))), !(!(~u_input.b <= reverseBits(31242i))));
    global2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_add_i32(21355i, u_input.c), ~firstTrailingBit(select(vec4<u32>(u_input.d, u_input.a.x, 16488u, 59121u), vec4<u32>(1u, 12471u, u_input.d, 1u), var_0.c)), Struct_2(!vec4<bool>(false, var_0.c, true, false), Struct_1(var_0.a, true, true), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, u_input.d, 4294967295u), vec3<u32>(u_input.a.x, u_input.d, u_input.a.x), vec3<u32>(u_input.a.x, 1u, u_input.a.x)), abs(select(vec3<i32>(u_input.c, -55323i, 2147483647i), vec3<i32>(u_input.b, u_input.c, -2147483647i), var_0.c)), func_1(Struct_1(239f, var_0.b, var_0.c), var_0)), ~vec4<i32>(2147483647i, -934i, _wgslsmith_mult_i32(u_input.c, 9273i), u_input.b))).x, var_0.a));
    global1 = array<vec3<f32>, 3>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_0.a) * vec2<f32>(1582f, 1964f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, 742f))))))));
    var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 475f))) - vec2<f32>(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -108f)), var_1.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-442f)))), _wgslsmith_f_op_f32(abs(func_1(Struct_1(var_0.a, var_0.c, false), var_0).a))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b & u_input.c, 1i & u_input.b), firstLeadingBit(vec2<i32>(u_input.b, -1i)))), -441f);
}

