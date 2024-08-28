struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 21>;

var<private> global1: Struct_1 = Struct_1(56390u, false, true, vec4<i32>(-78788i, 24223i, -15540i, 35740i));

var<private> global2: array<u32, 5>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> f32 {
    let var_0 = !(~countOneBits(countOneBits(32397u)) <= _wgslsmith_dot_vec3_u32(min(vec3<u32>(0u, 4294967295u, 0u), ~vec3<u32>(1597u, global2[_wgslsmith_index_u32(10165u, 5u)], 9698u)), ~(~vec3<u32>(global1.a, global2[_wgslsmith_index_u32(1u, 5u)], 48362u))));
    let var_1 = var_0;
    global0 = array<vec2<u32>, 21>();
    global2 = array<u32, 5>();
    var var_2 = select(vec3<bool>(any(select(!vec4<bool>(var_1, false, true, var_0), vec4<bool>(false, true, var_0, var_1), vec4<bool>(global1.b, var_1, var_1, var_0))), global1.b, !(!global1.b)), select(vec3<bool>(1u == global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 5u)], 5u)] | global1.a, 5u)], !var_0, !all(vec4<bool>(false, var_1, false, global1.c))), select(vec3<bool>(!var_1, 1i < global1.d.x, var_1), !select(vec3<bool>(global1.c, true, var_1), vec3<bool>(false, global1.b, true), vec3<bool>(var_1, global1.b, global1.b)), vec3<bool>(global1.c, any(vec4<bool>(true, global1.c, global1.c, true)), !global1.c)), var_1), vec3<bool>(!global1.c, all(select(vec3<bool>(var_0, false, true), !vec3<bool>(true, global1.c, var_0), select(vec3<bool>(global1.c, false, global1.b), vec3<bool>(var_1, false, var_0), vec3<bool>(true, true, var_1)))), !(global1.a >= 1u) | (global2[_wgslsmith_index_u32(14861u, 5u)] > ~global2[_wgslsmith_index_u32(global1.a, 5u)])));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-269f - -241f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-423f)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1369f)) - _wgslsmith_f_op_f32(ceil(-3108f)))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -283f)))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: Struct_2) -> u32 {
    let var_0 = arg_2.d;
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.d, 365f, -983f, var_0) * vec4<f32>(1597f, var_0, arg_2.d, var_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-177f, -926f, arg_2.d, -1136f) + vec4<f32>(760f, -883f, -363f, arg_2.d)), !vec4<bool>(global1.c, true, false, true))), vec4<f32>(arg_2.d, _wgslsmith_f_op_f32(min(arg_2.d, -819f)), _wgslsmith_f_op_f32(285f * var_0), _wgslsmith_f_op_f32(-var_0))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-557f))), 410f, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-474f + _wgslsmith_f_op_f32(f32(-1f) * -231f)) + _wgslsmith_f_op_f32(func_3()))));
    var var_2 = Struct_1(23243u, !any(!(!vec2<bool>(true, arg_2.a))), !any(select(vec4<bool>(arg_2.b.b, global1.c, true, false), vec4<bool>(false, false, arg_0.x, arg_0.x), true)) && false, vec4<i32>(~min(1i, global1.d.x), abs(global1.d.x) | _wgslsmith_mod_i32(u_input.a, -65837i), ~(i32(-1i) * -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(10073i, u_input.a, global1.d.x, 2147483647i), ~arg_2.b.d)) << (arg_1 % vec4<u32>(32u)));
    var var_3 = Struct_1(var_2.a, false, false, arg_2.b.d);
    let var_4 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.d - _wgslsmith_f_op_f32(max(arg_2.d, _wgslsmith_f_op_f32(select(-438f, 1709f, arg_0.x))))), _wgslsmith_f_op_f32(ceil(var_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -335f))), -1265f), 430f, _wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-489f, -1273f)), -737f) + _wgslsmith_f_op_f32(sign(1548f))))));
    return arg_1.x;
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: vec3<u32>) -> u32 {
    var var_0 = vec2<u32>(arg_1.b.a >> (arg_1.b.a % 32u), _wgslsmith_dot_vec2_u32(arg_3.xx, arg_3.yx) | 4294967295u);
    var var_1 = arg_2.x;
    var var_2 = firstLeadingBit(0i);
    var_1 = arg_2.x;
    var var_3 = -2147483647i;
    return min(func_2(select(vec2<bool>(global1.b, arg_1.a), !arg_1.c, global1.b), _wgslsmith_add_vec4_u32(vec4<u32>(arg_1.b.a, 118715u, global1.a, global1.a) >> (vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 5u)], arg_0, 1u, 0u) % vec4<u32>(32u)), abs(vec4<u32>(19539u, global2[_wgslsmith_index_u32(arg_0, 5u)], 4294967295u, 1u))), Struct_2(false, arg_1.b, arg_1.c, _wgslsmith_f_op_f32(arg_2.x - arg_1.d), ~arg_0)), global2[_wgslsmith_index_u32(max(~(~global1.a), _wgslsmith_mult_u32(~var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 0u), vec2<u32>(1u, 96842u)))), 5u)]) >> (((firstLeadingBit(~global2[_wgslsmith_index_u32(7762u, 5u)]) >> (global2[_wgslsmith_index_u32(43763u, 5u)] % 32u)) << (max(_wgslsmith_add_u32(114691u, _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], arg_3.zz)), global1.a) % 32u)) % 32u);
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = true;
    var_0 = !any(arg_0.c);
    var_0 = any(!select(select(select(vec3<bool>(global1.c, global1.b, true), vec3<bool>(true, true, false), vec3<bool>(arg_0.c.x, true, global1.c)), select(vec3<bool>(false, true, global1.c), vec3<bool>(false, arg_0.c.x, global1.c), global1.b), false), select(select(vec3<bool>(false, false, false), vec3<bool>(arg_0.c.x, arg_0.a, arg_0.c.x), global1.b), select(vec3<bool>(false, global1.b, false), vec3<bool>(arg_0.a, global1.c, false), vec3<bool>(false, true, arg_0.b.c)), !vec3<bool>(true, arg_0.c.x, global1.c)), vec3<bool>(global1.b, true, true)));
    var var_1 = arg_0.b;
    var_1 = Struct_1(var_1.a, all(select(arg_0.c, !(!arg_0.c), select(!arg_0.c, vec2<bool>(var_1.b, var_1.b), !arg_0.c))), all(select(vec4<bool>(true, any(arg_0.c), true, !arg_0.a), vec4<bool>(!arg_0.b.b, var_1.b, global1.d.x >= global1.d.x, true), !any(vec4<bool>(true, arg_0.b.c, arg_0.b.c, true)))), _wgslsmith_add_vec4_i32(reverseBits(reverseBits(vec4<i32>(-2147483647i, 9894i, 0i, global1.d.x))), firstLeadingBit(vec4<i32>(_wgslsmith_div_i32(101966i, arg_0.b.d.x), _wgslsmith_clamp_i32(arg_0.b.d.x, global1.d.x, global1.d.x), abs(-1i), 1i))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2590u;
    let var_1 = select(!select(vec4<bool>(any(vec4<bool>(true, true, global1.b, true)), true, !global1.b, global1.c), !select(vec4<bool>(false, false, global1.b, global1.c), vec4<bool>(global1.b, global1.c, false, false), vec4<bool>(global1.c, false, true, global1.c)), !(!global1.c)), !vec4<bool>(!(45006i > global1.d.x), true, global1.b, false || !global1.b), true);
    var var_2 = -_wgslsmith_add_vec3_i32(global1.d.wwy, select(_wgslsmith_sub_vec3_i32(-vec3<i32>(1i, 28437i, global1.d.x), global1.d.zxz), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, -13889i, u_input.b), ~global1.d.zwy), all(var_1)));
    var var_3 = _wgslsmith_div_vec2_i32(min(-vec2<i32>(-u_input.b, global1.d.x), countOneBits(global1.d.yz ^ -global1.d.yw)), global1.d.ww);
    var var_4 = global1.d.xyz;
    let var_5 = func_4(Struct_2(any(var_1) && false, Struct_1(select(1u, max(0u, 1u), all(var_1)), global1.b, _wgslsmith_clamp_i32(var_3.x, 1i, var_2.x) <= u_input.b, _wgslsmith_add_vec4_i32(~global1.d, global1.d)), !select(var_1.wz, var_1.wx, vec2<bool>(true, global1.c)), _wgslsmith_f_op_f32(ceil(1632f)), ~_wgslsmith_clamp_u32(func_1(global1.a, Struct_2(true, Struct_1(28812u, false, false, vec4<i32>(var_4.x, var_2.x, -54263i, 0i)), var_1.wz, -876f, 6850u), vec4<f32>(-398f, 511f, -1000f, 111f), vec3<u32>(global1.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 5u)], 5u)], 27270u)), select(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], global1.a, var_1.x), 4294967295u | global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(64949u, 5u)], 5u)])));
    let var_6 = ~_wgslsmith_clamp_u32(countOneBits(~1u ^ ~global1.a), ~var_5.e, _wgslsmith_sub_u32(4294967295u, 1u) | ((40413u | var_5.b.a) << (23881u % 32u)));
    var_0 = ~_wgslsmith_sub_u32(~_wgslsmith_add_u32(35959u, global1.a) >> (1u % 32u), _wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, var_6) << (var_6 % 32u), 32602u >> (~4294967295u % 32u)));
    var var_7 = select(_wgslsmith_add_vec2_i32(~var_4.zx, ~vec2<i32>(var_4.x, 0i) ^ -global1.d.yy), ~(~var_2.zx), vec2<bool>(all(vec3<bool>(var_5.b.b, false, true)), false)) | select(-_wgslsmith_div_vec2_i32(vec2<i32>(var_4.x, u_input.a), ~var_5.b.d.wx), _wgslsmith_mod_vec2_i32(~(-vec2<i32>(2147483647i, 2147483647i)), var_2.zy), !(all(vec3<bool>(true, false, false)) && (var_5.d > -1396f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_5.d, -374f, _wgslsmith_f_op_f32(trunc(var_5.d)), _wgslsmith_f_op_f32(-var_5.d)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.d, -1000f, 1715f, 960f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_5.d, var_5.d, var_5.d, var_5.d)))), select(select(vec4<bool>(false, var_1.x, false, true), vec4<bool>(true, false, true, false), var_5.a), vec4<bool>(false, global1.c, var_5.a, var_1.x), select(var_1.x, var_5.b.b, var_1.x))))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32((vec3<u32>(4294967295u, 0u, 0u) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_6, 1u, 76900u), vec3<u32>(84257u, global1.a, 37876u), vec3<u32>(var_6, 4294967295u, global1.a)) % vec3<u32>(32u))) & vec3<u32>(21457u, global1.a, global2[_wgslsmith_index_u32(0u, 5u)] | global2[_wgslsmith_index_u32(var_6, 5u)]), vec3<u32>(var_6, 1u, func_4(var_5).b.a ^ ~3018u)), 21u)], var_6, vec4<u32>(4294967295u, _wgslsmith_mult_u32(var_6, 0u << (func_4(Struct_2(var_5.c.x, Struct_1(global1.a, true, global1.c, global1.d), var_1.yw, -535f, 54069u)).e % 32u)), ~(~1u), var_5.b.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_5.d)))));
}

