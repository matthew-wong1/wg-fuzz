struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<i32> = vec3<i32>(i32(-2147483648), -40016i, 1i);

var<private> global2: array<bool, 13> = array<bool, 13>(true, false, false, false, true, true, false, true, true, true, true, true, false);

var<private> global3: bool;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_2 {
    global1 = vec3<i32>(-2147483647i, _wgslsmith_mod_i32(-66419i, 1i), ~(-arg_1 << (u_input.b % 32u))) & (vec3<i32>(-1i) * -vec3<i32>(arg_0.c >> (u_input.c.x % 32u), -16256i, -2147483647i));
    let var_0 = arg_0.a.yxy;
    let var_1 = Struct_1(vec4<bool>(true, false, !all(!arg_0.a), true), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)))), _wgslsmith_div_i32(-arg_1, -2147483647i), vec2<f32>(arg_0.d.x, arg_0.d.x));
    global3 = true;
    global3 = true;
    return Struct_2(~_wgslsmith_add_vec3_u32(u_input.c.xzw, u_input.c.wzz), arg_0);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> Struct_3 {
    let var_0 = !select(select(!(!vec3<bool>(arg_0.b.a.x, false, arg_0.b.a.x)), select(arg_0.b.a.zyw, select(vec3<bool>(arg_0.b.a.x, true, true), arg_1.b.a.zxy, vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 13u)], global2[_wgslsmith_index_u32(u_input.b, 13u)], arg_1.b.a.x)), vec3<bool>(arg_0.b.a.x, arg_0.b.a.x, false)), any(!arg_0.b.a.yz)), arg_0.b.a.xzz, vec3<bool>(global2[_wgslsmith_index_u32(0u, 13u)] & true, !(!arg_0.b.a.x), !arg_0.b.a.x | global2[_wgslsmith_index_u32(arg_0.a.x, 13u)]));
    var var_1 = Struct_2(u_input.a, Struct_1(vec4<bool>(all(!vec3<bool>(var_0.x, true, arg_1.b.a.x)), !arg_0.b.a.x, false, false), _wgslsmith_div_f32(_wgslsmith_div_f32(-626f, _wgslsmith_div_f32(-726f, 365f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.b + arg_0.b.b) + _wgslsmith_f_op_f32(abs(arg_1.b.b)))), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-39476i, global1.x, 34718i, 0i), _wgslsmith_mult_vec4_i32(vec4<i32>(global1.x, 2147483647i, 49814i, global1.x), vec4<i32>(arg_1.b.c, arg_0.b.c, global1.x, -2147483647i))), select(_wgslsmith_div_vec4_i32(vec4<i32>(0i, arg_0.b.c, 2147483647i, global1.x), vec4<i32>(arg_0.b.c, -59335i, arg_0.b.c, 2354i)), -vec4<i32>(global1.x, arg_0.b.c, arg_1.b.c, arg_0.b.c), !arg_1.b.a)), vec2<f32>(-552f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2053f * arg_0.b.b))))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -267f) * -600f);
    var var_3 = 81255u;
    var var_4 = any(vec3<bool>(any(func_2(var_1.b, _wgslsmith_add_i32(-1i, global1.x)).b.a.xx), false, true));
    return Struct_3(func_2(arg_1.b, reverseBits(-arg_1.b.c) ^ _wgslsmith_mult_i32(45736i, -1i)).b, select(_wgslsmith_f_op_f32(select(809f, arg_1.b.b, any(var_1.b.a))) <= -577f, all(var_0.zy), all(select(select(vec3<bool>(arg_1.b.a.x, global2[_wgslsmith_index_u32(u_input.c.x, 13u)], true), vec3<bool>(arg_0.b.a.x, true, false), vec3<bool>(var_0.x, arg_1.b.a.x, var_0.x)), select(vec3<bool>(false, false, global2[_wgslsmith_index_u32(u_input.c.x, 13u)]), vec3<bool>(true, true, true), arg_1.b.a.xwy), true || var_0.x))));
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> i32 {
    global0 = ~(~countOneBits(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(41840u, 1u, 1057u, 8807u), u_input.c))));
    global0 = (4294967295u & _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, u_input.c.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, 1492u), vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.b, 36615u)), ~u_input.a.yy), ~vec2<u32>(0u, u_input.b) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(0u, 1u)))) & 4294967295u;
    let var_0 = ~vec2<u32>(u_input.b, _wgslsmith_mult_u32(~1u, u_input.a.x));
    global0 = 1u;
    global3 = !global2[_wgslsmith_index_u32(firstLeadingBit(select(u_input.c.x, 1u, all(vec3<bool>(arg_1.a.a.x, arg_1.b, false)))), 13u)];
    return i32(-1i) * -_wgslsmith_clamp_i32(0i, 0i, arg_0);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> vec2<u32> {
    var var_0 = arg_0.a.x >> (max(arg_3, u_input.c.x) % 32u);
    let var_1 = func_4(0i, func_3(Struct_2(u_input.a, arg_0.b), func_2(Struct_1(arg_1.a, -838f, select(-1412i, arg_0.b.c, false), arg_1.d), arg_0.b.c)));
    let var_2 = arg_0.b.d.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(-arg_1.d);
    let var_4 = func_3(arg_0, arg_0);
    return _wgslsmith_mod_vec2_u32(vec2<u32>(arg_3, ~1u), ~(~vec2<u32>(arg_0.a.x, ~u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    global0 = 51417u & ~u_input.a.x;
    global0 = _wgslsmith_dot_vec2_u32(u_input.a.xx, ~select(reverseBits(func_1(Struct_2(u_input.a, Struct_1(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 13u)], global2[_wgslsmith_index_u32(1u, 13u)], global2[_wgslsmith_index_u32(1u, 13u)]), 553f, 43060i, vec2<f32>(908f, -547f))), Struct_1(vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 13u)], global2[_wgslsmith_index_u32(u_input.a.x, 13u)], false), -1000f, 1i, vec2<f32>(778f, -524f)), false, u_input.b)), ~(~vec2<u32>(u_input.b, u_input.a.x)), false));
    var var_1 = func_3(Struct_2(func_2(func_2(Struct_1(vec4<bool>(global2[_wgslsmith_index_u32(1u, 13u)], global2[_wgslsmith_index_u32(u_input.a.x, 13u)], global2[_wgslsmith_index_u32(63424u, 13u)], true), -2185f, global1.x, vec2<f32>(573f, -808f)), ~0i).b, ~(~(-41415i))).a, Struct_1(func_3(Struct_2(vec3<u32>(u_input.c.x, 4294967295u, 0u), Struct_1(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 13u)], global2[_wgslsmith_index_u32(24951u, 13u)], global2[_wgslsmith_index_u32(1u, 13u)], true), -448f, global1.x, vec2<f32>(158f, 1390f))), Struct_2(u_input.a, Struct_1(vec4<bool>(global2[_wgslsmith_index_u32(0u, 13u)], false, global2[_wgslsmith_index_u32(u_input.c.x, 13u)], false), -1661f, -31508i, vec2<f32>(-501f, -1087f)))).a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -826f)), -1i, _wgslsmith_f_op_vec2_f32(vec2<f32>(-682f, 1000f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(634f, -185f) + vec2<f32>(-1005f, 365f))))), Struct_2(vec3<u32>(0u << (abs(u_input.a.x) % 32u), _wgslsmith_sub_u32(u_input.b, ~1u), 67765u), Struct_1(vec4<bool>(any(vec4<bool>(false, true, true, false)), global2[_wgslsmith_index_u32(~58435u, 13u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c.ww, u_input.a.zz), 13u)], true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(230f - 932f)), _wgslsmith_mult_i32(global1.x, var_0), vec2<f32>(-130f, -291f)))).a;
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-386f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.d.x, _wgslsmith_f_op_f32(-1299f + 631f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.b)))))));
    global3 = var_1.a.x;
    let var_3 = func_3(func_2(Struct_1(var_1.a, _wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(select(-114f, 1938f, false))), select(-var_1.c, var_0, true), var_1.d), -(-global1.x & func_2(Struct_1(var_1.a, var_1.d.x, -13515i, var_1.d), -2147483647i).b.c)), Struct_2(u_input.c.zyy, Struct_1(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1312f, -199f)) * var_1.d.x), ~global1.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-178f, 591f))))).a;
    global1 = vec3<i32>(-1812i, min(1i, var_0), 1i);
    var_1 = func_3(Struct_2(~vec3<u32>(abs(4294967295u), ~4294967295u, abs(u_input.a.x)), Struct_1(select(vec4<bool>(false, false, var_3.a.x, false), vec4<bool>(true, var_1.a.x, true, var_1.a.x), select(var_1.a, vec4<bool>(false, true, var_3.a.x, false), var_1.a.x)), 1f, max(max(var_0, var_0), 1i), vec2<f32>(_wgslsmith_f_op_f32(-1214f - var_1.b), -350f))), Struct_2(u_input.a << (~vec3<u32>(0u, 14294u, u_input.b) % vec3<u32>(32u)), func_3(Struct_2(~vec3<u32>(7984u, 4294967295u, u_input.a.x), var_3), func_2(func_3(Struct_2(u_input.a, Struct_1(vec4<bool>(var_1.a.x, global2[_wgslsmith_index_u32(u_input.b, 13u)], var_1.a.x, true), var_3.d.x, 2147483647i, var_1.d)), Struct_2(u_input.a, Struct_1(var_3.a, -1805f, var_3.c, var_3.d))).a, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c, 16253i, global1.x), vec3<i32>(-2147483647i, 1i, global1.x)))).a)).a;
    let x = u_input.a;
    s_output = StorageBuffer(max(1u, ~(~_wgslsmith_mult_u32(75380u, u_input.c.x))), ~(~u_input.a.yz) & ~firstLeadingBit(max(vec2<u32>(u_input.a.x, 67227u), vec2<u32>(u_input.b, 62507u))), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(global1.yz, vec2<i32>(var_0, -1i)), vec2<i32>(-11157i, var_3.c) & global1.yz) << (vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), 0u) % vec2<u32>(32u)), ~_wgslsmith_sub_vec2_i32(min(global1.xy, vec2<i32>(var_1.c, 24100i)), -global1.xx)), ~23749u);
}

