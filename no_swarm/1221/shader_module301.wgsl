struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: u32,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: Struct_1,
    d: u32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: u32,
    c: vec4<bool>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: i32,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<f32, 4>;

var<private> global2: u32;

var<private> global3: i32;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: vec2<bool>) -> vec2<bool> {
    let var_0 = vec4<i32>(arg_1.d.x, -3332i, ~0i, -1i);
    let var_1 = !arg_1.c.e;
    var var_2 = _wgslsmith_div_vec3_f32(global0.yxx, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.x), -1000f, _wgslsmith_f_op_f32(global0.x * -838f))))));
    let var_3 = Struct_4(_wgslsmith_clamp_vec2_i32(arg_1.d, min(_wgslsmith_clamp_vec2_i32(-vec2<i32>(var_0.x, var_0.x), countOneBits(vec2<i32>(arg_1.d.x, u_input.b.x)), vec2<i32>(arg_1.d.x, 2147483647i) & vec2<i32>(u_input.b.x, -1i)), _wgslsmith_add_vec2_i32(vec2<i32>(var_0.x, u_input.b.x), vec2<i32>(14778i, 0i))), -select(-arg_1.d, reverseBits(vec2<i32>(var_0.x, -2147483647i)), vec2<bool>(false, false))), ~_wgslsmith_mod_u32(arg_1.c.c, ~arg_0 << (u_input.d % 32u)), !(!vec4<bool>(all(vec3<bool>(arg_2.x, var_1.x, var_1.x)), true, arg_2.x || true, !var_1.x)));
    global2 = arg_1.c.a >> (countOneBits(abs(~1u)) % 32u);
    return vec2<bool>(any(arg_1.a.d), abs(1u) < ~countOneBits(firstTrailingBit(arg_1.c.c)));
}

fn func_2() -> Struct_5 {
    global0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1[_wgslsmith_index_u32(u_input.d, 4u)], 2109f, global1[_wgslsmith_index_u32(u_input.d, 4u)], -1000f), vec4<f32>(global1[_wgslsmith_index_u32(1u, 4u)], global0.x, global0.x, global0.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1621f, -1419f, 725f, -639f) * vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], -1083f, global0.x, 198f))))))));
    let var_0 = Struct_1(_wgslsmith_sub_u32(1u, u_input.a.x), select(func_3(~67793u, Struct_3(Struct_1(11994u, vec2<bool>(true, true), 4294967295u, vec3<bool>(false, false, false), vec3<bool>(true, false, false)), false, Struct_1(u_input.d, vec2<bool>(false, true), 140255u, vec3<bool>(true, false, true), vec3<bool>(true, false, true)), min(u_input.c, u_input.b.ww)), !select(vec2<bool>(false, false), vec2<bool>(false, false), false)), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(u_input.d >= u_input.d, true), all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), true)))), 0u, select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), vec3<bool>(all(vec2<bool>(false, false)), true, true), vec3<bool>(true, func_3(12925u, Struct_3(Struct_1(u_input.a.x, vec2<bool>(true, true), u_input.a.x, vec3<bool>(false, true, true), vec3<bool>(true, true, false)), true, Struct_1(u_input.d, vec2<bool>(true, false), 82338u, vec3<bool>(true, false, true), vec3<bool>(false, false, true)), u_input.c), vec2<bool>(true, false)).x, false)), !select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), vec3<bool>(false, true, true)), true), !select(vec3<bool>(true, func_3(0u, Struct_3(Struct_1(u_input.a.x, vec2<bool>(true, false), 1u, vec3<bool>(true, true, true), vec3<bool>(true, true, false)), false, Struct_1(0u, vec2<bool>(true, false), 4294967295u, vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec2<i32>(-30211i, u_input.b.x)), vec2<bool>(false, true)).x, u_input.a.x < 1u), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), true));
    var var_1 = vec2<i32>(_wgslsmith_mult_i32(u_input.c.x, i32(-1i) * -10058i), -u_input.c.x & u_input.c.x);
    var var_2 = vec4<bool>(any(select(vec3<bool>(-1i == u_input.b.x, true, false && var_0.b.x), var_0.e, any(vec4<bool>(var_0.e.x, var_0.e.x, var_0.e.x, var_0.b.x)))), select(select(any(vec2<bool>(true, var_0.b.x)), false, var_0.b.x != var_0.d.x), true, var_0.e.x) && !(select(0u, 1u, true) > 23133u), firstLeadingBit(-367i) != _wgslsmith_div_i32(11988i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_1.x), vec2<i32>(1i, 0i))), all(!var_0.e));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -2864f);
    return Struct_5(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-631f, 540f, global0.x))), global0.xww), global0.yyy), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-234f, global1[_wgslsmith_index_u32(u_input.a.x, 4u)], global1[_wgslsmith_index_u32(u_input.d, 4u)]) + global0.xzz)), vec3<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 4u)] * global0.x), -694f, _wgslsmith_f_op_f32(select(var_3, -318f, var_2.x)))), vec3<bool>(!select(false, var_0.d.x, true), _wgslsmith_clamp_i32(var_1.x, u_input.c.x, 2147483647i) != -u_input.b.x, var_2.x))), u_input.c, -15139i, Struct_3(Struct_1(var_0.a, vec2<bool>(false, var_0.d.x | var_0.b.x), _wgslsmith_add_u32(60926u, min(var_0.a, 23484u)), vec3<bool>(var_2.x, !var_0.e.x, var_0.e.x), !(!var_0.d)), !any(var_2.yxw), Struct_1(4294967295u, select(vec2<bool>(var_2.x, false), var_2.yy, var_2.wx), firstLeadingBit(~1u), !vec3<bool>(true, false, var_2.x), var_0.d), _wgslsmith_div_vec2_i32(~select(u_input.c, vec2<i32>(0i, var_1.x), var_2.yx), u_input.b.yz)), Struct_1(888u, !var_0.b, ~abs(5603u), select(select(select(vec3<bool>(var_2.x, var_0.e.x, var_0.d.x), var_2.yzx, vec3<bool>(var_2.x, true, var_2.x)), !var_0.e, select(var_2.x, true, true)), var_0.e, !(!vec3<bool>(false, true, var_2.x))), !var_0.d));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: Struct_5, arg_3: f32) -> bool {
    global0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(arg_2.e.c, 4u)])))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-504f, -1002f), -1219f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-410f * global0.x), -1045f)), global0.x), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(arg_2.a.x, 1955f, arg_2.d.c.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1156f * -1605f)), _wgslsmith_f_op_f32(f32(-1f) * -236f), arg_3), select(!(!vec4<bool>(arg_0.c.x, true, arg_0.c.x, false)), select(select(vec4<bool>(true, arg_0.c.x, arg_0.c.x, true), arg_0.c, arg_0.c.x), vec4<bool>(true, false, arg_0.c.x, false), true), vec4<bool>(arg_0.a.x != arg_0.a.x, all(vec3<bool>(arg_2.e.e.x, arg_2.e.d.x, true)), true, arg_0.c.x))))));
    var var_0 = u_input.a.xx;
    global3 = ~(-20588i);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -538f) + arg_2.a.x)))));
    var var_2 = _wgslsmith_mod_i32(~(-_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.c, arg_2.d.d.x, u_input.b.x), u_input.b.xzw) | -u_input.c.x), ~(~_wgslsmith_mod_i32(_wgslsmith_div_i32(22224i, arg_0.a.x), ~1i)));
    return !arg_0.c.x;
}

fn func_1() -> f32 {
    var var_0 = u_input.b;
    var var_1 = !func_4(Struct_4(var_0.wy & select(vec2<i32>(-18208i, 56744i), var_0.zx, vec2<bool>(false, false)), 0u, vec4<bool>(true, true, true, true)), global0.ywy, func_2(), -686f);
    let var_2 = true;
    var_0 = select(min(u_input.b, _wgslsmith_mult_vec4_i32(~reverseBits(vec4<i32>(2147483647i, -29691i, u_input.c.x, -42406i)), vec4<i32>(~u_input.c.x, i32(-1i) * -1i, var_0.x, 65734i))), -abs(u_input.b), vec4<bool>(func_2().d.a.b.x, true, _wgslsmith_f_op_f32(-global0.x) <= -1652f, var_2));
    let var_3 = func_2().d.c;
    return _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-141f * global1[_wgslsmith_index_u32(abs(var_3.a), 4u)]), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - global0.x) + _wgslsmith_f_op_f32(f32(-1f) * -390f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1264f)) * global1[_wgslsmith_index_u32(0u, 4u)]))))));
}

fn func_5(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: bool) -> Struct_1 {
    global2 = u_input.a.x;
    let var_0 = u_input.a.x | _wgslsmith_mod_u32(~firstTrailingBit(arg_2.b), arg_2.b);
    var var_1 = func_2().d;
    global1 = array<f32, 4>();
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -424f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))));
    return func_2().d.c;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: vec3<f32>) -> Struct_5 {
    var var_0 = Struct_2(all(vec3<bool>(false, any(!arg_0.d), !arg_0.e.x)), vec4<bool>(arg_3.x >= -647f, all(func_3(1u, Struct_3(arg_1, false, arg_1, u_input.b.zy), vec2<bool>(true, arg_1.e.x))), func_3(~arg_0.a, Struct_3(func_5(1622f, vec4<bool>(arg_0.e.x, false, false, true), Struct_4(u_input.b.ww, arg_1.c, vec4<bool>(false, true, false, true)), true), arg_1.a < 12146u, func_5(1785f, vec4<bool>(true, arg_0.d.x, false, arg_0.b.x), Struct_4(vec2<i32>(u_input.b.x, u_input.c.x), arg_1.a, vec4<bool>(arg_0.e.x, arg_1.b.x, false, arg_0.e.x)), arg_0.e.x), select(u_input.b.yw, u_input.c, arg_1.e.x)), vec2<bool>(true, true)).x, true), Struct_1(_wgslsmith_clamp_u32(~(~4294967295u), select(_wgslsmith_add_u32(arg_0.a, u_input.d), ~0u, true), _wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, 11566u), arg_1.c)), func_3(16400u, Struct_3(Struct_1(0u, vec2<bool>(false, false), 23876u, vec3<bool>(false, arg_0.d.x, arg_0.d.x), arg_0.e), !arg_1.e.x, arg_1, countOneBits(u_input.c)), !(!arg_0.b)), countOneBits(_wgslsmith_clamp_u32(arg_0.a, u_input.d, 1u) & _wgslsmith_add_u32(arg_1.c, arg_1.a)), select(arg_1.e, arg_0.e, false), vec3<bool>(arg_1.b.x, true, func_2().d.b)), u_input.a.x, ~vec3<u32>(~_wgslsmith_mult_u32(arg_0.a, 4294967295u), _wgslsmith_add_u32(1u, 61051u), 26189u));
    var var_1 = 1u;
    let var_2 = u_input.c.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(~abs(arg_0.a), 4u)], arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(arg_2 + 300f)));
    var var_4 = !var_0.a || (func_3(min(~2755u, 0u), func_2().d, vec2<bool>(false, false)).x || (_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3.x))) != -867f));
    return Struct_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0.x, global1[_wgslsmith_index_u32(18882u, 4u)], false)), arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x * 1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(floor(396f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 903f, global1[_wgslsmith_index_u32(arg_1.a, 4u)]) - vec3<f32>(2128f, -1000f, var_3.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(173f, 368f, -1000f))))), u_input.c, 11636i, Struct_3(func_2().d.a, arg_1.d.x, var_0.c, -vec2<i32>(var_2, ~var_2)), func_5(1240f, !select(var_0.b, vec4<bool>(true, arg_1.d.x, true, var_0.a), arg_1.d.x || true), Struct_4(vec2<i32>(_wgslsmith_div_i32(0i, u_input.c.x), -u_input.c.x), max(_wgslsmith_clamp_u32(49996u, u_input.a.x, arg_1.a), firstTrailingBit(arg_0.c)), select(select(vec4<bool>(arg_0.e.x, false, arg_0.e.x, var_0.a), var_0.b, vec4<bool>(true, true, var_0.a, var_0.a)), var_0.b, true)), any(!(!vec3<bool>(arg_1.e.x, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(func_1()), select(true, false, true)))), select(vec4<bool>(any(vec4<bool>(false, false, false, true)), any(vec2<bool>(true, false)), any(vec3<bool>(false, false, true)), all(vec3<bool>(true, false, false))), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, false, true, false)), func_2().d.a.e.x), Struct_4(_wgslsmith_clamp_vec2_i32(~u_input.b.ww, vec2<i32>(u_input.b.x, -35932i), _wgslsmith_mod_vec2_i32(u_input.c, vec2<i32>(1i, u_input.c.x))), 1u, vec4<bool>(true, any(vec3<bool>(true, true, true)), true, false)), false), Struct_1(u_input.a.x, !select(vec2<bool>(true, true), vec2<bool>(true, true), select(true, true, false)), u_input.d, vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), 1000f, vec3<f32>(global1[_wgslsmith_index_u32(u_input.d, 4u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -794f) + _wgslsmith_div_f32(global0.x, -1896f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x))) - _wgslsmith_f_op_f32(-global0.x))));
    global2 = 39395u;
    let var_1 = Struct_4(vec2<i32>(u_input.c.x, ~(var_0.d.d.x & (i32(-1i) * -2559i))), 9129u, vec4<bool>(!(!any(var_0.e.d.xx)), var_0.e.e.x, false & any(func_5(global0.x, vec4<bool>(false, var_0.e.b.x, var_0.e.e.x, var_0.e.b.x), Struct_4(u_input.b.ww, 1u, vec4<bool>(false, var_0.d.c.e.x, var_0.d.b, var_0.d.c.b.x)), false).d), var_0.e.d.x & var_0.d.a.e.x));
    var var_2 = !(!vec2<bool>(var_0.d.a.d.x, true));
    let var_3 = ~(1u & select(u_input.d, ~u_input.a.x >> (~var_0.d.a.c % 32u), var_2.x));
    let var_4 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(max(vec2<i32>(-1i) * -(~u_input.b.xz), vec2<i32>(~(i32(-1i) * -16635i), -58948i)));
}

