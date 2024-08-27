struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 7> = array<bool, 7>(true, true, false, true, false, true, false);

var<private> global2: f32 = 502f;

var<private> global3: array<i32, 26> = array<i32, 26>(1i, 21290i, 44232i, 2147483647i, i32(-2147483648), -6428i, -65534i, -782i, -1i, 2147483647i, -23424i, 2147483647i, 60764i, i32(-2147483648), -9769i, -1i, 5083i, 11126i, -18119i, 25933i, -18018i, 2147483647i, -1i, 0i, i32(-2147483648), 1i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: bool) -> vec4<f32> {
    var var_0 = ~(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), u_input.c.zx) << (~(~31019u) % 32u));
    let var_1 = _wgslsmith_div_f32(-219f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(309f, 1863f))))));
    global3 = array<i32, 26>();
    global2 = 351f;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-var_1), 105820u, vec4<f32>(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-2051f, var_1)), _wgslsmith_f_op_f32(-global0.c.x), false & arg_2))), _wgslsmith_f_op_f32(select(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -581f) - _wgslsmith_div_f32(1000f, -1233f)), true)), _wgslsmith_div_f32(-526f, var_1)), countOneBits(global0.b) != global0.e, u_input.c.x);
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(245f + _wgslsmith_f_op_f32(var_1 + -1561f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_2.a, -1269f)))), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1356f) + 122f), -225f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(-var_2.a)))))));
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    var var_0 = u_input.a;
    global2 = _wgslsmith_f_op_f32(-global0.c.x);
    let var_1 = !(-609f == _wgslsmith_div_f32(global0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + _wgslsmith_f_op_f32(min(global0.c.x, global0.a)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_3(global3[_wgslsmith_index_u32(global0.b, 26u)], ~13255u, global0.d)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-170f, -1878f, 198f, global0.c.x) + global0.c))) + vec4<f32>(_wgslsmith_f_op_f32(-global0.c.x), global0.c.x, global0.a, global0.a)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_mult_i32(global3[_wgslsmith_index_u32(u_input.b.x, 26u)], global3[_wgslsmith_index_u32(0u, 26u)]), var_0.x, global0.d)))), arg_0.x));
    var var_3 = abs(firstLeadingBit(max(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(global3[_wgslsmith_index_u32(var_0.x, 26u)], global3[_wgslsmith_index_u32(global0.e, 26u)], global3[_wgslsmith_index_u32(global0.b, 26u)])), min(vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 26u)], global3[_wgslsmith_index_u32(var_0.x, 26u)], -2147483647i), vec3<i32>(global3[_wgslsmith_index_u32(12980u, 26u)], 1i, 0i))), max(firstLeadingBit(vec3<i32>(1i, -40951i, global3[_wgslsmith_index_u32(5827u, 26u)])), ~vec3<i32>(-1i, 1i, global3[_wgslsmith_index_u32(var_0.x, 26u)])))));
    return 0u;
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_1) -> vec2<f32> {
    global0 = arg_3;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec4_f32(func_3(~firstTrailingBit(arg_2), min(func_2(vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 7u)], global0.d, global0.d)), u_input.b.x), any(!(!vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 7u)], false))))).yw - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.zz * global0.c.yw), vec2<f32>(arg_1.x, 802f)) + vec2<f32>(-750f, _wgslsmith_f_op_f32(-arg_1.x)))));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = vec4<i32>(-2147483647i, -_wgslsmith_clamp_i32(max(abs(global3[_wgslsmith_index_u32(arg_0.x, 26u)]), firstTrailingBit(46917i)), 0i, ~(-11630i) | global3[_wgslsmith_index_u32(arg_0.x, 26u)]), _wgslsmith_add_i32(~(~9286i) ^ _wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(41355u, 26u)], max(global3[_wgslsmith_index_u32(8230u, 26u)], 0i), _wgslsmith_dot_vec2_i32(vec2<i32>(-10346i, -1i), vec2<i32>(-2147483647i, global3[_wgslsmith_index_u32(global0.e, 26u)]))), global3[_wgslsmith_index_u32(arg_3.b, 26u)]), firstLeadingBit(~19760i));
    var var_1 = 55441u;
    let var_2 = _wgslsmith_mod_i32(firstTrailingBit(-1i), ~(~(~(-2147483647i))));
    let var_3 = global3[_wgslsmith_index_u32(arg_3.e, 26u)];
    global3 = array<i32, 26>();
    return Struct_2(vec4<i32>(-global3[_wgslsmith_index_u32(arg_1.e, 26u)], -2147483647i >> (min(abs(2544u), u_input.b.x) % 32u), countOneBits(global3[_wgslsmith_index_u32(countOneBits(global0.b), 26u)] << ((arg_1.b & arg_0.x) % 32u)), ~_wgslsmith_dot_vec4_i32(var_0, vec4<i32>(global3[_wgslsmith_index_u32(1u, 26u)], var_2, -2147483647i, 1i))), Struct_1(_wgslsmith_div_f32(444f, 1f), 1u, vec4<f32>(_wgslsmith_f_op_f32(arg_3.c.x * arg_3.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(125f, arg_3.a))), _wgslsmith_f_op_f32(step(arg_3.a, arg_3.c.x)), arg_2.x), arg_1.d, ~(arg_0.x | arg_0.x)), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -285f), _wgslsmith_div_f32(984f, _wgslsmith_f_op_f32(-global0.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1608f) > _wgslsmith_f_op_f32(trunc(1480f)))), _wgslsmith_dot_vec4_u32(vec4<u32>(~4954u, arg_3.b, 1u, arg_3.e), ~(~arg_0)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(280f, arg_3.a, arg_3.a, -1000f)), vec4<f32>(arg_3.c.x, -1179f, global0.c.x, -141f), false)))), !((global0.e & 118522u) != _wgslsmith_add_u32(arg_1.b, arg_0.x)), ~(~arg_3.b) & (global0.e | ~0u)), !select(select(!vec2<bool>(global0.d, arg_3.d), vec2<bool>(arg_1.d, global1[_wgslsmith_index_u32(57607u, 7u)]), vec2<bool>(arg_1.d, false)), vec2<bool>(false, select(true, arg_3.d, global1[_wgslsmith_index_u32(1u, 7u)])), select(select(vec2<bool>(true, false), vec2<bool>(global0.d, true), true), !vec2<bool>(global0.d, true), all(vec4<bool>(arg_1.d, arg_1.d, arg_3.d, false)))), _wgslsmith_div_i32(-2147483647i, -8477i));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> Struct_2 {
    let var_0 = func_5(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x | _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.e, 4294967295u, 4294967295u, u_input.a.x), u_input.a), u_input.b.x, u_input.c.x, u_input.c.x), abs(max(~vec4<u32>(arg_1.e, arg_1.e, 10288u, 1u), ~vec4<u32>(global0.b, 58800u, arg_1.b, arg_1.b)))), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(round(arg_2)), global1[_wgslsmith_index_u32(12276u, 7u)])))), global0.e, _wgslsmith_f_op_vec4_f32(-arg_1.c), (true & all(vec4<bool>(arg_1.d, true, false, global1[_wgslsmith_index_u32(arg_1.e, 7u)]))) && true, ~46985u ^ abs(arg_1.e)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(global1[_wgslsmith_index_u32(func_2(vec4<bool>(global1[_wgslsmith_index_u32(global0.b, 7u)], arg_1.d, global1[_wgslsmith_index_u32(global0.e, 7u)], global1[_wgslsmith_index_u32(4294967295u, 7u)])), 7u)] || any(vec4<bool>(true, arg_1.d, true, arg_1.d)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1004f, arg_1.c.x, global0.c.x)))), countOneBits(global3[_wgslsmith_index_u32(25386u, 26u)]), Struct_1(_wgslsmith_f_op_f32(413f + global0.c.x), 83455u, vec4<f32>(-963f, 960f, arg_2, arg_2), true, _wgslsmith_sub_u32(global0.e, global0.b))))), arg_1);
    let var_1 = _wgslsmith_mod_u32(1u, firstTrailingBit(abs(~u_input.c.x))) != _wgslsmith_add_u32(0u, 1u);
    global3 = array<i32, 26>();
    var var_2 = vec2<f32>(-667f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1041f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-187f)), -1674f), !all(vec2<bool>(false, var_0.b.d)))), 777f));
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.c.wy)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.a))), -1597f) + 2125f), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(global0.a, _wgslsmith_f_op_f32(floor(-683f)))))), ~_wgslsmith_dot_vec4_u32(~u_input.a, u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(global0.c)))), false, 78572u), _wgslsmith_f_op_f32(step(1441f, -124f)));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(func_4(global0.d, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b.c.yzx), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c.c.xxz * vec3<f32>(1535f, -1000f, 411f)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2807f, 1000f, var_0.c.c.x))))), _wgslsmith_sub_i32(0i, global3[_wgslsmith_index_u32(~var_0.c.e, 26u)]), func_5(vec4<u32>(~var_0.b.b, ~u_input.a.x, u_input.a.x, 0u), Struct_1(var_0.b.a, 33311u ^ u_input.c.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, 260f, var_0.c.a, global0.c.x) + vec4<f32>(-1000f, var_0.c.a, -771f, -1000f)), var_0.b.d, ~var_0.c.e), global0.c.wy, Struct_1(_wgslsmith_f_op_f32(global0.c.x + -1107f), ~30044u, _wgslsmith_f_op_vec4_f32(-global0.c), !global0.d, 0u)).c)).x, 1u, var_0.b.c, any(var_0.d), ~_wgslsmith_mod_u32(u_input.a.x << (var_0.b.b % 32u), ~47606u) >> (4294967295u % 32u));
    global1 = array<bool, 7>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1255f, var_0.c.c.x, var_0.b.a));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -388f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) * _wgslsmith_f_op_f32(global0.c.x - 671f))), _wgslsmith_f_op_f32(var_0.c.a - _wgslsmith_div_f32(-726f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -854f) * _wgslsmith_f_op_f32(var_0.b.c.x - var_1.x)))));
    global1 = array<bool, 7>();
    global2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2011f + var_2.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.b.a + -519f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + global0.a))))) - -1516f);
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -552f) - var_1.x)) - func_5(select(~vec4<u32>(0u, 6534u, global0.b, global0.b), _wgslsmith_mult_vec4_u32(vec4<u32>(46861u, u_input.a.x, var_0.b.e, var_0.c.e), u_input.a), vec4<bool>(true, var_0.c.d, var_0.c.d, true)), var_0.b, vec2<f32>(2321f, var_0.b.a), var_0.c).c.a), _wgslsmith_f_op_f32(f32(-1f) * -809f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b.a))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(func_5(abs(vec4<u32>(4294967295u, 1u, 4294967295u, 5832u)), func_5(u_input.a, Struct_1(566f, 1u, var_0.c.c, true, var_0.c.e), vec2<f32>(-1000f, var_1.x), Struct_1(var_1.x, 50468u, var_0.c.c, true, 22781u)).c, global0.c.zy, var_0.b).b.a, 1330f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(2147483647i & global3[_wgslsmith_index_u32(u_input.c.x, 26u)], min(global0.b, 52436u), true)).x)));
}

