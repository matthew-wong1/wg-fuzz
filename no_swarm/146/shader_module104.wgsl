struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: f32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20>;

var<private> global1: array<Struct_3, 7>;

var<private> global2: array<vec4<i32>, 16>;

var<private> global3: i32;

var<private> global4: u32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2() -> u32 {
    global0 = array<bool, 20>();
    global0 = array<bool, 20>();
    let var_0 = 1i;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1f, -339f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -786f), vec2<f32>(-663f, 2112f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(674f, -100f), vec2<f32>(1000f, -477f), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 20u)]))))) * vec2<f32>(_wgslsmith_f_op_f32(round(-416f)), _wgslsmith_f_op_f32(f32(-1f) * -478f)))));
    global1 = array<Struct_3, 7>();
    return 57152u;
}

fn func_3() -> vec4<bool> {
    var var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.a.x, _wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x))), ~vec3<u32>(~_wgslsmith_add_u32(22315u, u_input.a.x), ~(~14730u), _wgslsmith_div_u32(1u, u_input.a.x)));
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1138f, _wgslsmith_f_op_f32(select(174f, -368f, global0[_wgslsmith_index_u32(25370u, 20u)])))), _wgslsmith_f_op_f32(min(-501f, 302f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(-639f - _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(369f * 474f))))), 9129i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1457f, _wgslsmith_f_op_f32(step(-220f, -207f))))), abs(vec4<i32>(-1i, select(u_input.b, 2147483647i, global0[_wgslsmith_index_u32(14985u, 20u)]) << (1u % 32u), reverseBits(-31271i), -u_input.b)), !vec3<bool>(!(false & global0[_wgslsmith_index_u32(0u, 20u)]), true, !(!global0[_wgslsmith_index_u32(u_input.a.x, 20u)])));
    let var_2 = max(firstLeadingBit(vec4<u32>(~(30937u ^ u_input.a.x), ~(~1u), firstLeadingBit(8806u), u_input.a.x)), ~vec4<u32>(var_0.x, _wgslsmith_mod_u32(u_input.a.x, 4294967295u), u_input.a.x | (var_0.x & var_0.x), _wgslsmith_mult_u32(1u, 11075u)));
    var var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, var_1.a.x, -261f, 840f))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, -736f, var_1.c, var_1.a.x))))), Struct_2(firstTrailingBit(min(~u_input.a.yyx, firstTrailingBit(vec3<u32>(34668u, u_input.a.x, u_input.a.x))))), any(!(!(!vec2<bool>(var_1.e.x, true)))));
    var var_4 = Struct_1(vec3<f32>(-968f, var_1.c, _wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(trunc(-1637f)))), 39406i, _wgslsmith_f_op_f32(sign(var_1.a.x)), select(_wgslsmith_mult_vec4_i32(-global2[_wgslsmith_index_u32(1u, 16u)], global2[_wgslsmith_index_u32(u_input.a.x | ~var_0.x, 16u)]), vec4<i32>(-1i) * -global2[_wgslsmith_index_u32(var_3.b.a.x, 16u)], var_1.e.x), var_1.e);
    return vec4<bool>(!(!all(select(vec4<bool>(true, false, true, true), vec4<bool>(var_1.e.x, global0[_wgslsmith_index_u32(16060u, 20u)], true, var_1.e.x), var_1.e.x))), true, false, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~var_3.b.a.x, _wgslsmith_dot_vec2_u32(max(vec2<u32>(var_3.b.a.x, var_0.x), u_input.a.xy), vec2<u32>(1u, 1u))), 20u)] || true);
}

fn func_1(arg_0: f32) -> f32 {
    global0 = array<bool, 20>();
    var var_0 = i32(-1i) * -9982i;
    var var_1 = vec3<u32>(27476u & u_input.a.x, func_2(), u_input.a.x) & u_input.a.xzw;
    let var_2 = select(select(select(!vec2<bool>(global0[_wgslsmith_index_u32(var_1.x, 20u)], true), !vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 20u)]), !(!vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 20u)]))), vec2<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(1u, 20u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 20u)])), global0[_wgslsmith_index_u32(4294967295u, 20u)]), !global0[_wgslsmith_index_u32(~func_2(), 20u)]), !vec2<bool>(all(func_3()), true), select(!vec2<bool>(!global0[_wgslsmith_index_u32(var_1.x, 20u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.wxw, u_input.a.wzy), 20u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], true), global0[_wgslsmith_index_u32(32143u >> (_wgslsmith_mod_u32(var_1.x << (4294967295u % 32u), var_1.x) % 32u), 20u)]));
    var var_3 = vec4<bool>(global0[_wgslsmith_index_u32(0u >> (reverseBits(~var_1.x) % 32u), 20u)] || true, true, all(!(!vec4<bool>(false, true, false, var_2.x))), false);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 59039i;
    global1 = array<Struct_3, 7>();
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(_wgslsmith_f_op_f32(round(-2674f)), _wgslsmith_f_op_f32(abs(-299f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(853f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2628f * 1027f), 805f)))))));
    let var_2 = Struct_2(_wgslsmith_add_vec3_u32(vec3<u32>(~u_input.a.x, 31859u, ~u_input.a.x), u_input.a.wzy | select(u_input.a.zwz, vec3<u32>(4294967295u, 0u, 86350u) ^ vec3<u32>(37262u, 1u, u_input.a.x), select(vec3<bool>(global0[_wgslsmith_index_u32(61773u, 20u)], true, false), vec3<bool>(global0[_wgslsmith_index_u32(18914u, 20u)], false, false), global0[_wgslsmith_index_u32(4294967295u, 20u)]))));
    global1 = array<Struct_3, 7>();
    var var_3 = Struct_3(~_wgslsmith_div_vec4_i32(firstTrailingBit(global2[_wgslsmith_index_u32(~16821u, 16u)]), -global2[_wgslsmith_index_u32(4294967295u, 16u)] ^ vec4<i32>(-24972i, 0i, 14299i, 0i)), var_1.xxw, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(147f - _wgslsmith_f_op_f32(func_1(-1395f)))))), ~(~_wgslsmith_sub_vec3_u32(~vec3<u32>(var_2.a.x, 28191u, u_input.a.x), _wgslsmith_clamp_vec3_u32(u_input.a.yyz, var_2.a, var_2.a))), firstTrailingBit(global2[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x >> (u_input.a.x % 32u)), 16u)]));
    var var_4 = !((all(select(vec2<bool>(global0[_wgslsmith_index_u32(var_3.d.x, 20u)], true), vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 20u)]), global0[_wgslsmith_index_u32(65761u, 20u)])) && false) & true);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-35775i, -1i, 45220i, ~_wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_3.a.x, var_3.a.x), firstLeadingBit(17876i), 1i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.zz - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_3.b.x, var_3.c))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_3.b.x, -488f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.x, var_1.x, var_3.b.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-947f, var_1.x, 359f), vec3<f32>(var_1.x, 2159f, var_1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(302f, var_3.b.x, 2265f) * var_1.yyw), var_3.e.x <= var_0))))));
}

