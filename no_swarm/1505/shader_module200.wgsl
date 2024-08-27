struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(false, true, false, false, false, false, false, false, true, true, false, true, true, false, true, true, true, false, false, false, false, false, true, true, true, true, true, false, false, false, false, true);

var<private> global1: i32 = -37550i;

var<private> global2: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(372f, 1272f, -972f), vec3<f32>(1198f, 450f, 954f), vec3<f32>(-182f, -202f, -732f), vec3<f32>(-1380f, -439f, 617f), vec3<f32>(-1529f, 1035f, -376f), vec3<f32>(-391f, -361f, -1147f), vec3<f32>(-1073f, -1172f, 460f), vec3<f32>(164f, 893f, 1040f));

var<private> global3: Struct_3 = Struct_3(vec3<bool>(false, false, false), 123f, Struct_1(vec3<i32>(i32(-2147483648), 1i, -9196i), 70329u, true), Struct_1(vec3<i32>(23193i, i32(-2147483648), 2147483647i), 4294967295u, false));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: vec3<f32>) -> vec4<f32> {
    global2 = array<vec3<f32>, 8>();
    let var_0 = _wgslsmith_f_op_f32(-arg_2.x);
    var var_1 = any(!select(!select(vec4<bool>(false, global3.a.x, true, false), vec4<bool>(global3.c.c, global3.a.x, global3.d.c, false), vec4<bool>(false, global3.d.c, global0[_wgslsmith_index_u32(arg_0, 32u)], global0[_wgslsmith_index_u32(global3.d.b, 32u)])), vec4<bool>(false, all(vec4<bool>(true, global0[_wgslsmith_index_u32(2227u, 32u)], global0[_wgslsmith_index_u32(47091u, 32u)], global3.a.x)), any(vec4<bool>(global3.a.x, global0[_wgslsmith_index_u32(global3.c.b, 32u)], global3.c.c, global0[_wgslsmith_index_u32(global3.c.b, 32u)])), global3.d.c), !all(vec4<bool>(false, global0[_wgslsmith_index_u32(56556u, 32u)], true, global0[_wgslsmith_index_u32(arg_0, 32u)]))));
    let var_2 = Struct_2(!select(vec4<bool>(global0[_wgslsmith_index_u32(select(arg_0, 4294967295u, global3.d.c), 32u)], global0[_wgslsmith_index_u32(23755u, 32u)], false, global3.d.c), vec4<bool>(false, true, true, global3.c.c), global3.a.x), Struct_1(arg_1, ~(~26233u), all(vec2<bool>(global3.a.x, !global0[_wgslsmith_index_u32(global3.d.b, 32u)]))), all(!vec4<bool>(arg_0 >= arg_0, false, any(vec3<bool>(false, global3.c.c, global0[_wgslsmith_index_u32(1u, 32u)])), true)), Struct_1(-(vec3<i32>(1i, 0i, arg_1.x) | -arg_1), ~global3.d.b, all(!vec2<bool>(global0[_wgslsmith_index_u32(11256u, 32u)], global3.d.c))), global3.d);
    var var_3 = var_2;
    return _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1510f + arg_2.x) * _wgslsmith_f_op_f32(f32(-1f) * -1527f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-494f + 1645f))), _wgslsmith_f_op_f32(global3.b * _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(-var_0))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: vec2<bool>) -> bool {
    global1 = global3.d.a.x;
    var var_0 = 2147483647i;
    global0 = array<bool, 32>();
    global3 = Struct_3(arg_1.zyw, arg_0.x, Struct_1(global3.c.a, select(_wgslsmith_sub_u32(arg_2.e.b, ~4294967295u), arg_2.d.b, global3.d.c), true), Struct_1(u_input.c, reverseBits(global3.d.b), any(!(!vec4<bool>(false, arg_3.x, arg_3.x, global3.c.c)))));
    var_0 = abs(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(global3.d.a.xy ^ vec2<i32>(global3.c.a.x, 1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(16822i, 51418i), vec2<i32>(0i, 0i), global3.c.a.yx)), abs(select(arg_2.b.a.x, -1i, false))) ^ 1i);
    return all(select(global3.a, arg_1.yxw, select(global3.a, select(!arg_2.a.yyx, vec3<bool>(false, false, true), arg_2.a.yzz), vec3<bool>(false, false != global3.a.x, false))));
}

fn func_2() -> vec3<u32> {
    var var_0 = global3.b;
    var var_1 = Struct_3(global3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(407f * global3.b) * _wgslsmith_f_op_f32(-global3.b)))), Struct_1(firstTrailingBit(_wgslsmith_mod_vec3_i32(global3.c.a, u_input.a.xxw) | (global3.c.a >> (vec3<u32>(57558u, global3.c.b, global3.d.b) % vec3<u32>(32u)))), global3.c.b, func_4(_wgslsmith_f_op_vec4_f32(func_3(~global3.c.b, global3.c.a, global2[_wgslsmith_index_u32(~3564u, 8u)])), select(!vec4<bool>(true, global3.a.x, global3.d.c, false), vec4<bool>(false, true, false, global3.d.c), vec4<bool>(global3.a.x, false, global3.a.x, global3.a.x)), Struct_2(vec4<bool>(true, global0[_wgslsmith_index_u32(global3.d.b, 32u)], false, true), global3.c, global3.c.c, global3.d, Struct_1(vec3<i32>(u_input.b, 13605i, -46588i), 0u, false)), global3.a.xy)), Struct_1(-_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, u_input.b, -63508i), global3.c.a) ^ vec3<i32>(reverseBits(-33i), global3.d.a.x, 48348i), _wgslsmith_sub_u32(1u, global3.c.b), global3.a.x && true));
    var var_2 = global3.c.c;
    var var_3 = true;
    var var_4 = Struct_3(select(var_1.a, global3.a, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1220f)), global3.d, var_1.d);
    return ~(max(~_wgslsmith_add_vec3_u32(vec3<u32>(var_4.c.b, global3.d.b, var_4.d.b), vec3<u32>(4294967295u, 4294967295u, 9725u)), ~(~vec3<u32>(global3.d.b, var_1.c.b, 46484u))) << ((vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(12223u, 1u, 63070u), vec3<u32>(1424u, var_1.c.b, 0u)), ~var_4.d.b, 4294967295u) & min(firstLeadingBit(vec3<u32>(var_4.c.b, 14322u, 46297u)), select(vec3<u32>(27322u, var_4.c.b, global3.c.b), vec3<u32>(global3.c.b, 1u, var_4.d.b), var_4.a))) % vec3<u32>(32u)));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_div_u32(global3.d.b, 15068u << (0u % 32u)), global3.d.b, ~_wgslsmith_dot_vec3_u32(vec3<u32>(48603u, 1u, global3.c.b), vec3<u32>(16362u, global3.c.b, global3.c.b))), func_2()), ~_wgslsmith_mod_vec3_u32(vec3<u32>(~global3.c.b, 5497u, _wgslsmith_add_u32(global3.d.b, global3.c.b)), firstLeadingBit(abs(vec3<u32>(26219u, global3.c.b, global3.c.b)))));
    let var_1 = select(vec3<bool>(all(select(vec4<bool>(true, true, true, true), !vec4<bool>(global0[_wgslsmith_index_u32(2568u, 32u)], true, true, false), true)), !(firstTrailingBit(u_input.c.x) >= (i32(-1i) * -1i)), global0[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(var_0.x, var_0.x)), 32u)]), global3.a, global3.c.c);
    let var_2 = var_0;
    let var_3 = global2[_wgslsmith_index_u32(var_2.x, 8u)];
    var var_4 = max(var_2.x & 28578u, func_2().x);
    return Struct_1(u_input.a.yyz, ~(~(~global3.d.b)) >> (var_0.x % 32u), false);
}

fn func_5(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    var var_0 = Struct_2(select(vec4<bool>(func_1().c, !global3.d.c, true, !(!arg_3.c)), arg_3.a, !arg_2.c), global3.c, !global3.c.c, arg_2, Struct_1(~arg_2.a, arg_1.x ^ 1u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), ~(vec2<u32>(arg_2.b, arg_2.b) | arg_1)), 32u)]));
    var var_1 = _wgslsmith_f_op_f32(-global3.b);
    var var_2 = global3.b;
    var var_3 = _wgslsmith_f_op_vec4_f32(func_3(~(~_wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(47291u, arg_2.b)) | _wgslsmith_clamp_u32(global3.d.b & 56354u, reverseBits(arg_3.e.b), ~4294967295u)), arg_2.a, vec3<f32>(-391f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1336f, global3.b, true))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global3.b)) - _wgslsmith_f_op_f32(-global3.b))), _wgslsmith_div_f32(-1299f, _wgslsmith_f_op_f32(-global3.b))))).yy;
    var var_4 = arg_3;
    return Struct_1(vec3<i32>(i32(-1i) * -12682i, _wgslsmith_mult_i32(i32(-1i) * -227i, _wgslsmith_mult_i32(~var_4.e.a.x, ~(-2147483647i))), min(u_input.b, -1i)), arg_3.e.b, abs(firstTrailingBit(max(-2147483647i, arg_3.e.a.x))) > func_1().a.x);
}

fn func_6(arg_0: f32, arg_1: Struct_3) -> Struct_3 {
    let var_0 = Struct_2(select(vec4<bool>(false, all(arg_1.a), any(!vec4<bool>(global0[_wgslsmith_index_u32(arg_1.d.b, 32u)], false, false, global0[_wgslsmith_index_u32(arg_1.c.b, 32u)])), !global3.c.c), vec4<bool>(2002f > _wgslsmith_f_op_f32(floor(global3.b)), true, false, (global3.c.a.x >> (arg_1.c.b % 32u)) == -1i), vec4<bool>(firstLeadingBit(arg_1.d.a.x) > -u_input.b, !(!global0[_wgslsmith_index_u32(global3.c.b, 32u)]), global0[_wgslsmith_index_u32(36698u, 32u)] || true, _wgslsmith_mod_i32(-2147483647i, arg_1.c.a.x) >= -15268i)), Struct_1(arg_1.d.a, arg_1.d.b, global0[_wgslsmith_index_u32(global3.c.b, 32u)]), true, func_1(), func_5(~arg_1.d.a.x, min(select(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, arg_1.c.b), vec2<u32>(40406u, 17471u)), countOneBits(vec2<u32>(4294967295u, 5141u)), true), ~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.d.b, 0u), vec2<u32>(31702u, 4294967295u))), Struct_1(arg_1.d.a, abs(1u), true), Struct_2(select(vec4<bool>(false, false, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, global3.c.c, arg_1.c.c, global3.d.c), arg_1.c.c), select(vec4<bool>(false, true, global3.c.c, global3.a.x), vec4<bool>(true, false, global0[_wgslsmith_index_u32(global3.d.b, 32u)], false), arg_1.a.x)), Struct_1(-u_input.a.zwz, ~34092u, true), !func_1().c, global3.c, arg_1.d)));
    let var_1 = _wgslsmith_sub_vec3_i32(min(-max(vec3<i32>(u_input.c.x, u_input.c.x, var_0.d.a.x), global3.c.a), vec3<i32>(min(2147483647i, reverseBits(-1i)), 25475i, ~_wgslsmith_mod_i32(0i, 16642i))), vec3<i32>(_wgslsmith_sub_i32(var_0.b.a.x, global3.c.a.x & (i32(-1i) * -68523i)), var_0.b.a.x, reverseBits(_wgslsmith_div_i32(select(30858i, 0i, true), 1i))));
    global3 = Struct_3(vec3<bool>(false, !select(all(vec2<bool>(var_0.e.c, false)), true, false), var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-955f + -307f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0)) - -961f)), func_5(-1i, max(select(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, arg_1.c.b), vec2<u32>(global3.c.b, arg_1.c.b)), vec2<u32>(1u, var_0.b.b), vec2<bool>(true, true)), select(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.d.b, var_0.e.b), vec2<u32>(var_0.e.b, global3.c.b)), vec2<u32>(0u, 16557u), !arg_1.c.c)), func_5(-8528i, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.c.b, 4294967295u), vec2<u32>(var_0.b.b, 2233u), vec2<u32>(global3.d.b, arg_1.d.b)), Struct_1(vec3<i32>(2147483647i, global3.d.a.x, var_0.d.a.x) | vec3<i32>(arg_1.d.a.x, 1i, 2147483647i), ~global3.d.b, false), var_0), Struct_2(select(select(var_0.a, var_0.a, true), var_0.a, true), Struct_1(vec3<i32>(var_0.b.a.x, u_input.a.x, 6684i), 30770u, var_0.a.x), func_1().c & true, func_1(), Struct_1(select(vec3<i32>(global3.c.a.x, 2147483647i, var_0.e.a.x), vec3<i32>(-2147483647i, 29016i, u_input.c.x), vec3<bool>(false, var_0.e.c, true)), ~arg_1.c.b, !arg_1.a.x))), var_0.b);
    global0 = array<bool, 32>();
    global2 = array<vec3<f32>, 8>();
    return Struct_3(!select(vec3<bool>(false, false, false), !(!global3.a), vec3<bool>(true, !var_0.d.c, arg_1.d.c)), arg_1.b, global3.c, func_5(arg_1.d.a.x, ~(~abs(vec2<u32>(4294967295u, global3.c.b))), func_1(), var_0));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_6(885f, Struct_3(!(!vec3<bool>(global3.d.c, global3.d.c, false)), global3.b, func_5(19193i, select(_wgslsmith_mod_vec2_u32(vec2<u32>(global3.d.b, global3.d.b), vec2<u32>(global3.d.b, 1u)), ~vec2<u32>(global3.c.b, 22301u), !global3.a.xz), func_1(), Struct_2(!vec4<bool>(true, global0[_wgslsmith_index_u32(global3.c.b, 32u)], global3.a.x, global3.c.c), func_1(), global3.c.c, global3.c, func_1())), Struct_1(vec3<i32>(1i, 49485i, -2147483647i) & (global3.d.a ^ global3.c.a), func_2().x, true)));
    let var_0 = global3.c;
    var var_1 = vec2<bool>(all(!global3.a.xz), global3.d.c);
    let var_2 = Struct_2(!(!(!select(vec4<bool>(true, var_1.x, global0[_wgslsmith_index_u32(var_0.b, 32u)], global3.a.x), vec4<bool>(global0[_wgslsmith_index_u32(var_0.b, 32u)], false, false, var_0.c), false))), Struct_1(max(firstTrailingBit(global3.c.a), vec3<i32>(var_0.a.x, 2147483647i, _wgslsmith_sub_i32(var_0.a.x, 28885i))), _wgslsmith_mult_u32(var_0.b >> (var_0.b % 32u), var_0.b) << (~41182u % 32u), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.b, 76432u, 17933u, 50610u) | vec4<u32>(var_0.b, var_0.b, 53524u, global3.c.b), reverseBits(vec4<u32>(13705u, 69103u, 0u, 13519u))), vec4<u32>(~global3.d.b, _wgslsmith_mod_u32(var_0.b, 6585u), global3.d.b ^ var_0.b, ~56195u)), 32u)]), true, global3.d, global3.c);
    global0 = array<bool, 32>();
    let var_3 = Struct_3(vec3<bool>(all(vec2<bool>(true, var_1.x)), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.b, global3.b, true))) <= global3.b), -1873f, func_1(), Struct_1(vec3<i32>(func_1().a.x, u_input.c.x, -8198i), var_2.e.b ^ 41408u, true));
    var var_4 = func_5(~var_3.d.a.x, ~vec2<u32>(var_0.b, 4294967295u), func_1(), Struct_2(vec4<bool>(true, true, true, true), Struct_1(vec3<i32>(~global3.d.a.x, var_0.a.x, ~(-2147483647i)), 0u, true), global0[_wgslsmith_index_u32(firstTrailingBit(var_2.e.b), 32u)], Struct_1(firstLeadingBit(var_0.a), ~var_2.b.b, false), func_5(_wgslsmith_dot_vec3_i32(~var_0.a, ~var_0.a), (vec2<u32>(1u, var_0.b) << (vec2<u32>(var_0.b, var_3.d.b) % vec2<u32>(32u))) & abs(vec2<u32>(25701u, 58719u)), func_1(), var_2))).c;
    var_1 = var_3.a.yy;
    var var_5 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(489f))), -1345f, var_3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(countOneBits(~global3.c.b), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_3.c.a.x, var_3.d.a.x, 30641i), var_3.c.a), u_input.a.wzy), vec3<f32>(_wgslsmith_f_op_f32(1836f + var_3.b), _wgslsmith_f_op_f32(trunc(var_3.b)), _wgslsmith_f_op_f32(-global3.b)))).x));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~137154u), var_5.zx);
}

