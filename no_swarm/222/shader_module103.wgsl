struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<i32, 9> = array<i32, 9>(16925i, i32(-2147483648), 0i, -1i, 2147483647i, 0i, 1i, 2147483647i, 34896i);

var<private> global2: array<vec2<i32>, 3>;

var<private> global3: vec4<i32> = vec4<i32>(25515i, -1i, 2147483647i, 29675i);

var<private> global4: bool;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: bool, arg_3: vec4<bool>) -> vec4<bool> {
    var var_0 = _wgslsmith_sub_i32(-18628i, u_input.d.x);
    global3 = _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(~reverseBits(abs(vec4<i32>(global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(0u, 9u)], u_input.d.x, global1[_wgslsmith_index_u32(u_input.e.x, 9u)]))), vec4<i32>(global1[_wgslsmith_index_u32(~1u, 9u)], global3.x, u_input.a.x << (1u % 32u), max(~global3.x, -19290i))), select(max((vec4<i32>(u_input.a.x, u_input.d.x, global1[_wgslsmith_index_u32(38225u, 9u)], u_input.d.x) | vec4<i32>(-51590i, u_input.d.x, u_input.d.x, -11181i)) >> (vec4<u32>(57330u, u_input.c, u_input.e.x, 4294967295u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, global1[_wgslsmith_index_u32(u_input.b.x, 9u)], 0i), ~vec4<i32>(-55458i, -57588i, 3681i, 2147483647i))), -max(select(vec4<i32>(u_input.a.x, global1[_wgslsmith_index_u32(1u, 9u)], 2147483647i, -18609i), vec4<i32>(global3.x, u_input.a.x, -13125i, global3.x), arg_3), vec4<i32>(u_input.d.x, 9509i, global3.x, u_input.d.x)), !all(select(arg_3, vec4<bool>(arg_1.x, false, false, true), vec4<bool>(true, true, false, arg_3.x)))), ~_wgslsmith_add_vec4_i32(~(~vec4<i32>(global1[_wgslsmith_index_u32(0u, 9u)], 2147483647i, 1i, 45309i)), countOneBits(-vec4<i32>(global3.x, 46472i, u_input.a.x, global3.x))));
    let var_1 = -12579i;
    var var_2 = Struct_1(any(arg_3));
    var var_3 = abs(u_input.e.yz) & u_input.e.yy;
    return vec4<bool>(arg_0 >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1674f, 1695f) - _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(abs(arg_0)))), arg_3.x, !(-_wgslsmith_clamp_i32(global3.x, 31530i, global3.x) < ~(-global3.x)), select(true, var_1 <= 1i, true));
}

fn func_2(arg_0: vec4<f32>) -> Struct_2 {
    global0 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-746f))), global0.wz, global0.x | true, select(vec4<bool>(true, -1000f == _wgslsmith_f_op_f32(-arg_0.x), global0.x, false), vec4<bool>(global0.x, global0.x, true, !global0.x), vec4<bool>(any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, global0.x, global0.x, false), true)), true, true, arg_0.x <= arg_0.x)));
    let var_0 = !global0.zx;
    var var_1 = Struct_2(Struct_1(!(!any(global0.wyz))), _wgslsmith_mod_vec2_u32(u_input.e.zz, u_input.b >> (u_input.b % vec2<u32>(32u))), vec4<i32>(37008i, (0i & -u_input.a.x) << (u_input.c % 32u), -global3.x, 23783i), _wgslsmith_sub_u32(min(abs(u_input.e.x), _wgslsmith_div_u32(_wgslsmith_div_u32(0u, u_input.e.x), u_input.c)), _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b.x, u_input.c >> (0u % 32u)), 0u)));
    return Struct_2(Struct_1(all(func_3(150f, global0.ww, var_0.x, vec4<bool>(var_0.x, true, global0.x, false))) || !(!var_0.x)), ~(~var_1.b), max(var_1.c, abs(var_1.c)), _wgslsmith_mod_u32(0u, var_1.b.x) & _wgslsmith_div_u32(~28245u, ~u_input.e.x ^ u_input.e.x));
}

fn func_1(arg_0: vec2<bool>, arg_1: f32, arg_2: i32) -> Struct_2 {
    var var_0 = u_input.e.wz;
    var var_1 = -198f;
    return func_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_1, arg_1, arg_1) + vec4<f32>(arg_1, 1000f, 826f, arg_1)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1, -505f, arg_1, -1056f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, -542f, -490f))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: Struct_2) -> Struct_1 {
    global2 = array<vec2<i32>, 3>();
    global3 = arg_2.c;
    global3 = _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(-(-vec4<i32>(global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(u_input.e.x, 9u)], global3.x, 17482i) | vec4<i32>(global3.x, 44413i, -25957i, u_input.a.x)), arg_2.c, arg_2.c), max(~arg_2.c, arg_2.c));
    let var_0 = arg_2.a;
    var var_1 = func_1(global0.yx, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(675f)), _wgslsmith_f_op_f32(f32(-1f) * -420f))), func_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-837f, _wgslsmith_f_op_f32(arg_0.x + arg_0.x), -621f, _wgslsmith_f_op_f32(floor(arg_0.x)))))).c.x).c.zzw;
    return arg_2.a;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_2) -> vec3<f32> {
    var var_0 = arg_1;
    var var_1 = Struct_2(Struct_1(false), vec2<u32>(_wgslsmith_mod_u32(~arg_2.d, ~0u) | ~(~1u), arg_0.d << ((1u << (countOneBits(arg_0.d) % 32u)) % 32u)), arg_0.c, arg_0.d);
    var var_2 = arg_2;
    var_2 = func_2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-187f + arg_1.x), var_0.x, 1157f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 823f, -997f, var_0.x)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(527f, 378f, var_0.x, 1644f) * vec4<f32>(arg_1.x, 397f, 1000f, 1250f)), vec4<f32>(arg_1.x, var_0.x, arg_1.x, arg_1.x), all(vec4<bool>(false, var_1.a.a, var_2.a.a, true)))))));
    var var_3 = arg_2.a;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(681f, -727f, -289f), vec3<f32>(1452f, arg_1.x, var_0.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(854f, 222f, -1287f) - vec3<f32>(var_0.x, -1000f, 1150f)))), vec3<f32>(_wgslsmith_div_f32(-437f, -788f), var_0.x, -1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_5(Struct_2(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1077f, -442f, 447f, -589f) + vec4<f32>(-556f, -242f, 854f, 284f))), global0.wyy, func_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(max(-1000f, 1000f)), global1[_wgslsmith_index_u32(u_input.c, 9u)])), vec2<u32>(min(~u_input.b.x, 12377u), 74218u), max(countOneBits(firstTrailingBit(vec4<i32>(-2147483647i, global3.x, 55801i, global3.x))), ~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, global3.x, -43809i, global3.x), vec4<i32>(global1[_wgslsmith_index_u32(u_input.e.x, 9u)], global3.x, -1i, -28699i))), firstLeadingBit(u_input.b.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -832f), _wgslsmith_f_op_f32(f32(-1f) * -2464f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-186f, -721f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-549f, 627f), vec2<f32>(-170f, 1461f)))))), Struct_2(Struct_1(!all(global0.wzz)), func_1(global0.zx, _wgslsmith_div_f32(1379f, _wgslsmith_f_op_f32(sign(-471f))), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), _wgslsmith_add_i32(40013i, -58433i))).b, vec4<i32>(-1i, 11114i, ~(-global1[_wgslsmith_index_u32(18519u, 9u)]), reverseBits(-38946i)), 1u)));
    global0 = vec4<bool>(true, global0.x, _wgslsmith_add_i32((u_input.a.x | -1i) | firstLeadingBit(-35276i), ~global1[_wgslsmith_index_u32(u_input.e.x, 9u)] | -1i) < abs(-64944i), global0.x);
    global3 = -_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(-1i, u_input.d.x, global1[_wgslsmith_index_u32(22474u, 9u)], 1i)) ^ firstLeadingBit(-vec4<i32>(2147483647i, -45985i, global1[_wgslsmith_index_u32(u_input.c, 9u)], 1i)), _wgslsmith_clamp_vec4_i32(~select(vec4<i32>(u_input.d.x, 25703i, -23127i, 2147483647i), vec4<i32>(u_input.d.x, u_input.a.x, -2147483647i, 2147483647i), global0.x), -(~vec4<i32>(-2059i, global3.x, -147i, u_input.a.x)), vec4<i32>(global3.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, -61341i, 0i, u_input.d.x), vec4<i32>(-2147483647i, 22623i, global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(u_input.c, 9u)])), _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(4294967295u, 9u)], 0i), ~1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))) - -2436f));
}

