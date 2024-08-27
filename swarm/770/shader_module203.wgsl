struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: Struct_1,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2>;

var<private> global1: array<Struct_2, 7>;

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(12547i, 851f, vec2<i32>(0i, 1i)), Struct_1(-29892i, 607f, vec2<i32>(0i, i32(-2147483648))), Struct_1(-91735i, -441f, vec2<i32>(2147483647i, 2147483647i)), Struct_1(-6244i, 1130f, vec2<i32>(17910i, -1149i)), Struct_1(75608i, -1000f, vec2<i32>(0i, -1i)), Struct_1(2147483647i, -1231f, vec2<i32>(-1i, -1i)), Struct_1(-1i, -851f, vec2<i32>(-79127i, -1i)), Struct_1(0i, -1393f, vec2<i32>(25182i, -1i)), Struct_1(i32(-2147483648), -580f, vec2<i32>(-29495i, 2147483647i)));

var<private> global3: array<Struct_2, 2>;

var<private> global4: array<f32, 3>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_1(~0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-914f - _wgslsmith_f_op_f32(select(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 2u)], 2u)], 3u)], global4[_wgslsmith_index_u32(u_input.a.x, 3u)], true)))) * 1000f), vec2<i32>(1i, u_input.b.x));
    let var_1 = vec3<bool>(true, false, false);
    global2 = array<Struct_1, 9>();
    global0 = array<u32, 2>();
    var var_2 = global2[_wgslsmith_index_u32(~(~(~global0[_wgslsmith_index_u32(reverseBits(global0[_wgslsmith_index_u32(7192u, 2u)]) & 12333u, 2u)])), 9u)];
    return var_1.zx;
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(1u, 7u)];
    var var_1 = u_input.c.wyy;
    var var_2 = select(!select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), func_3()), vec2<bool>(any(vec2<bool>(func_3().x, true)), arg_1.b < arg_0), true);
    global0 = array<u32, 2>();
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-241f, _wgslsmith_f_op_f32(min(371f, 530f)), _wgslsmith_div_f32(var_0.a.x, var_0.c.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.a.x, -2776f, arg_1.b)))))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_0.a)))))), var_0.b, Struct_1(-22735i, 591f, min(reverseBits(-arg_1.c), -arg_1.c)), vec3<i32>(1i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(19071i, 0i, -1i, var_0.c.a), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -1i, -1i, 2147483647i), vec4<i32>(2147483647i, -1i, -2147483647i, var_0.c.a))), -vec4<i32>(arg_1.a, arg_1.a, 2147483647i, 2147483647i) & max(vec4<i32>(-10253i, -27198i, u_input.b.x, arg_1.a), vec4<i32>(arg_1.a, 1i, -1i, 1i))), _wgslsmith_mult_i32(~_wgslsmith_div_i32(1i, -18388i), _wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.b), vec3<i32>(u_input.b.x, var_0.c.a, 24563i)))));
    return Struct_1(max(var_0.d.x, i32(-1i) * -5112i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(sign(625f)))) * 797f), _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.c.c.x, 20435i), arg_1.c), ~_wgslsmith_div_vec2_i32(firstTrailingBit(arg_1.c), _wgslsmith_mod_vec2_i32(var_0.c.c, var_0.d.zx))));
}

fn func_1(arg_0: vec3<bool>) -> i32 {
    let var_0 = arg_0.x;
    var var_1 = reverseBits(u_input.a);
    let var_2 = Struct_1(abs(firstTrailingBit(17973i) >> (~reverseBits(41721u) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - global4[_wgslsmith_index_u32(var_1.x, 3u)]))), u_input.b.yy);
    global0 = array<u32, 2>();
    let var_3 = func_2(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.a.x, 3u)] + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(503f, global4[_wgslsmith_index_u32(4294967295u, 3u)]), _wgslsmith_div_f32(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 2u)], 3u)], global4[_wgslsmith_index_u32(u_input.c.x, 3u)]))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.a.x, 3u)]) - _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 2u)], 3u)] * global4[_wgslsmith_index_u32(1u, 3u)])))), Struct_1(-_wgslsmith_mod_i32(-var_2.c.x, -18335i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b))), _wgslsmith_div_vec2_i32(vec2<i32>(max(var_2.c.x, -1i), firstLeadingBit(var_2.c.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.b.x, 62919i))))));
    return -36561i >> (~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.c.x, global0[_wgslsmith_index_u32(min(1u, u_input.c.x), 2u)]), 2u)], 2u)]) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 9>();
    var var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(0u, 3u)])) + global4[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 2u)], 2u)], 3u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(~77131u, 3u)])), -839f), _wgslsmith_dot_vec3_i32(-(vec3<i32>(u_input.b.x, 8415i, 2147483647i) ^ u_input.b) & u_input.b, vec3<i32>(~(-2147483647i), -(~u_input.b.x), func_1(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false))))), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global4[_wgslsmith_index_u32(18101u, 3u)], global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 2u)], 3u)])) + 1000f) * global4[_wgslsmith_index_u32(13232u, 3u)]), func_2(global4[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(max(global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(u_input.a.x, 2u)]), 2u)]), 3u)], func_2(_wgslsmith_f_op_f32(min(-312f, global4[_wgslsmith_index_u32(5988u, 3u)])), func_2(-1438f, Struct_1(-5883i, global4[_wgslsmith_index_u32(4294967295u, 3u)], u_input.b.zy))))), vec3<i32>(u_input.b.x, abs(-u_input.b.x), u_input.b.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(u_input.c.x, 3u)], 1394f, -2252f, var_0.c.b), vec4<f32>(760f, global4[_wgslsmith_index_u32(u_input.a.x, 3u)], var_0.a.x, 647f))))))));
    let var_2 = vec3<u32>(_wgslsmith_sub_u32(~abs(25091u), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], ~u_input.a.x)), 42265u, _wgslsmith_dot_vec4_u32(u_input.c >> (vec4<u32>(~global0[_wgslsmith_index_u32(1u, 2u)], _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(u_input.a.x, 2u)], 742u, 0u), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 3977u), 2u)], _wgslsmith_add_u32(48841u, u_input.a.x)) % vec4<u32>(32u)), u_input.c));
    var var_3 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 2u)], var_2.x, u_input.c.x, 1u), u_input.c), countOneBits(~vec4<u32>(global0[_wgslsmith_index_u32(var_2.x, 2u)], 19132u, var_2.x, u_input.a.x)))), 71779u);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<i32>(-var_0.b, ~u_input.b.x, ~(-7340i)) | var_0.d), u_input.c.x, 10572u, ~select(6091i, -var_0.d.x >> (~3811u % 32u), true), -(~(~vec3<i32>(4885i, -1i, 2147483647i))));
}

