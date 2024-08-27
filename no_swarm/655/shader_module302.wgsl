struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<u32>,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: u32,
    d: bool,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20> = array<u32, 20>(4294967295u, 0u, 0u, 21675u, 1u, 1u, 4294967295u, 4294967295u, 8357u, 35268u, 104272u, 26649u, 0u, 0u, 83085u, 0u, 0u, 0u, 0u, 29257u);

var<private> global1: i32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(arg_1.e, arg_3.a)))), vec3<u32>(28950u, 1u, arg_1.c.x), select(~u_input.b, arg_2.c.x, true & ((1i & arg_0.x) <= 2147483647i)), true, vec2<i32>(1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(-u_input.c, vec3<i32>(59920i, u_input.c.x, arg_3.e.x)), _wgslsmith_div_i32(1i, _wgslsmith_add_i32(7243i, 57339i)))));
    global0 = array<u32, 20>();
    var var_1 = -33034i & reverseBits(_wgslsmith_mod_i32(-19105i, _wgslsmith_mult_i32(_wgslsmith_add_i32(var_0.e.x, arg_3.e.x), -1i)));
    let var_2 = 11102u;
    var var_3 = var_0.e.x;
    return !select(select(select(!vec3<bool>(true, var_0.d, arg_1.b), select(vec3<bool>(true, arg_3.d, arg_3.d), vec3<bool>(true, true, true), arg_2.b), false || arg_1.d), !vec3<bool>(arg_3.d, var_0.d, arg_1.d), true), !vec3<bool>(all(vec3<bool>(arg_1.b, arg_2.d, arg_1.b)), !arg_1.d, true), arg_1.d);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = u_input.c.x >> (~global0[_wgslsmith_index_u32(~(~4294967295u), 20u)] % 32u);
    let var_1 = select(func_3(vec3<i32>(-select(u_input.c.x, u_input.c.x, arg_0.d), u_input.c.x, -3157i), arg_0, Struct_1(firstLeadingBit(vec3<u32>(4294967295u, 0u, global0[_wgslsmith_index_u32(u_input.a.x, 20u)])), false, min(select(arg_0.a.yz, u_input.a, true), ~u_input.a), arg_0.b, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-arg_0.e), arg_0.e))), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-976f, -1662f)) + vec2<f32>(890f, 262f)), vec3<u32>(10303u, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(4294967295u, 20u)], arg_0.a.x), 1u), 25720u, true, u_input.c.zz)), select(select(vec3<bool>(arg_0.b, true, arg_0.b | true), select(!vec3<bool>(true, arg_0.d, arg_0.b), vec3<bool>(arg_0.b, false, true), vec3<bool>(arg_0.b, false, arg_0.d)), vec3<bool>(arg_0.d, arg_0.d, false)), vec3<bool>(true, arg_0.b, (arg_0.e.x <= arg_0.e.x) == true), true), !(!select(select(vec3<bool>(true, arg_0.d, arg_0.b), vec3<bool>(true, arg_0.b, true), false), !vec3<bool>(false, true, arg_0.b), arg_0.d)));
    global1 = u_input.c.x;
    var var_2 = Struct_1(~vec3<u32>(~27970u, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(~arg_0.a.x, 20u)], firstLeadingBit(arg_0.a.x)), _wgslsmith_div_u32(countOneBits(global0[_wgslsmith_index_u32(arg_0.c.x, 20u)]), 45896u)), true, vec2<u32>(countOneBits(arg_0.c.x), global0[_wgslsmith_index_u32(arg_0.c.x ^ abs(u_input.b & 1u), 20u)]), _wgslsmith_clamp_i32(u_input.c.x, abs(abs(2147483647i)), -1i) > -u_input.c.x, arg_0.e);
    var var_3 = Struct_2(arg_0.e, ~arg_0.a, (max(u_input.b, ~0u) << (~45273u % 32u)) & ~arg_0.a.x, !(arg_0.a.x != _wgslsmith_clamp_u32(~27151u, 24702u, 15321u)), select(u_input.c.xz, -(vec2<i32>(1i, u_input.c.x) | _wgslsmith_add_vec2_i32(u_input.c.yz, vec2<i32>(u_input.c.x, -23817i))), !func_3(~vec3<i32>(u_input.c.x, 19429i, u_input.c.x), arg_0, arg_0, Struct_2(var_2.e, var_2.a, global0[_wgslsmith_index_u32(0u, 20u)], var_1.x, vec2<i32>(0i, 14357i))).zy));
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = u_input.c.x;
    var var_1 = func_2(arg_0);
    let var_2 = arg_0;
    global1 = -12960i;
    var_1 = arg_0;
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(step(var_2.e.x, arg_0.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1311f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e.x)))), vec3<u32>(firstLeadingBit(reverseBits(var_1.a.x)), arg_0.c.x, var_2.c.x) >> (arg_0.a % vec3<u32>(32u)), 58931u, true, vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(u_input.c.x, u_input.c.x), _wgslsmith_mult_vec2_i32(u_input.c.zy, vec2<i32>(37438i, u_input.c.x))), ~u_input.c.xy | u_input.c.xx), _wgslsmith_add_i32(min(~11165i, abs(1i)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 1i, 2147483647i), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> StorageBuffer {
    let var_0 = Struct_1(abs(~(~(vec3<u32>(arg_0.b.x, 0u, 52548u) >> (arg_1.b % vec3<u32>(32u))))), arg_1.d, ~_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 1u), u_input.a), vec2<u32>(0u, ~arg_1.c)), _wgslsmith_mod_i32(~_wgslsmith_mult_i32(u_input.c.x, arg_0.e.x), ~u_input.c.x) > -1i, _wgslsmith_f_op_vec2_f32(arg_1.a * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_1.a, vec2<f32>(arg_1.a.x, -963f), arg_0.d)) * _wgslsmith_f_op_vec2_f32(arg_0.a * vec2<f32>(-1000f, 137f))))));
    let var_1 = vec2<u32>(~global0[_wgslsmith_index_u32(0u, 20u)], 1u >> ((_wgslsmith_div_u32(arg_1.c, arg_1.c) | 4294967295u) % 32u));
    var var_2 = var_0;
    var var_3 = arg_1.a.x;
    let var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.a.x)) * -1655f), -1000f) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_0.a), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1050f, 291f)))))), arg_1.b, _wgslsmith_div_u32(countOneBits(_wgslsmith_mult_u32(_wgslsmith_div_u32(7086u, 75115u), countOneBits(25427u))), _wgslsmith_sub_u32(6771u, 1u)), !(!select(any(vec4<bool>(true, true, arg_1.d, false)), var_2.b && true, func_3(vec3<i32>(arg_0.e.x, 46162i, 1i), Struct_1(arg_1.b, var_0.b, vec2<u32>(u_input.b, global0[_wgslsmith_index_u32(26139u, 20u)]), arg_0.d, arg_0.a), var_0, arg_1).x)), vec2<i32>((i32(-1i) * -2147483647i) ^ u_input.c.x, -1i) ^ -vec2<i32>(abs(arg_1.e.x), _wgslsmith_div_i32(-6335i, arg_1.e.x)));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(183f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-662f + -1365f), -198f)), ~_wgslsmith_mult_i32(arg_0.e.x, ~_wgslsmith_dot_vec2_i32(u_input.c.yy, var_4.e)), -662f, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 20>();
    var var_0 = u_input.a.x | abs(4294967295u);
    global0 = array<u32, 20>();
    var var_1 = _wgslsmith_mult_vec3_u32(~(~vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], u_input.a.x, 0u) | (vec3<u32>(16829u, global0[_wgslsmith_index_u32(4294967295u, 20u)], 1u) ^ vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(32264u, 20u)], u_input.b))), vec3<u32>(~1u, u_input.a.x, countOneBits(1u)) | vec3<u32>(0u, _wgslsmith_div_u32(0u, 4294967295u), global0[_wgslsmith_index_u32(countOneBits(global0[_wgslsmith_index_u32(6199u, 20u)]), 20u)])) >> ((vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global0[_wgslsmith_index_u32(u_input.a.x, 20u)]), u_input.a), abs(u_input.b), _wgslsmith_add_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9560u, 20u)], 20u)], 20u)], 0u)) ^ vec3<u32>(15631u, global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(u_input.b, 1u)), 20u)], 20u)])) % vec3<u32>(32u));
    global0 = array<u32, 20>();
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-855f, -1384f, 2045f), vec3<f32>(-780f, 300f, 595f), vec3<bool>(true, true, false))) - _wgslsmith_div_vec3_f32(vec3<f32>(-803f, 635f, -638f), vec3<f32>(1000f, 903f, 111f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1448f, 326f, 1228f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1187f, 511f, 1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(640f, 483f, 790f) + vec3<f32>(-1000f, 1509f, 314f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 183f, 1507f))), vec3<bool>(true, true, true))))));
    let x = u_input.a;
    s_output = func_4(Struct_2(vec2<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -932f)), ~(~(vec3<u32>(65860u, var_1.x, 1u) << (vec3<u32>(var_1.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(47188u, 20u)], 20u)], u_input.b) % vec3<u32>(32u)))), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, var_1.x), vec2<u32>(u_input.b, var_1.x)), 0u), true, ~(~u_input.c.yx)), func_1(Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(38451u, 14641u, 4294967295u), abs(vec3<u32>(var_1.x, 62220u, global0[_wgslsmith_index_u32(var_1.x, 20u)])), vec3<u32>(global0[_wgslsmith_index_u32(27259u, 20u)], var_1.x, u_input.b)), true, vec2<u32>(u_input.a.x | 39442u, ~global0[_wgslsmith_index_u32(4294967295u, 20u)]), true, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.x, 1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(449f, var_2.x))))), vec2<bool>(true, true), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, ~var_1.x), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 21868u, 2622u), vec4<u32>(20508u, 3529u, u_input.a.x, u_input.b)), var_1.x))));
}

