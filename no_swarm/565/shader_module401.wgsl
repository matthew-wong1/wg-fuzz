struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

var<private> global1: array<bool, 6> = array<bool, 6>(false, false, true, true, true, true);

var<private> global2: array<vec4<i32>, 28>;

var<private> global3: Struct_1 = Struct_1(vec3<f32>(1289f, 416f, -198f), vec4<u32>(4294967295u, 31005u, 41617u, 67964u), vec4<bool>(true, false, false, false));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: vec4<bool>) -> vec3<i32> {
    var var_0 = select(arg_0.xx, arg_0.xy, global1[_wgslsmith_index_u32(countOneBits(global3.b.x), 6u)]);
    return firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(abs(i32(-1i) * -5705i), _wgslsmith_sub_i32(0i, -32615i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), _wgslsmith_div_vec3_i32(vec3<i32>(28520i, -5688i, -44497i), vec3<i32>(11422i, 32676i, -45773i)))), reverseBits(~(~vec3<i32>(28857i, 2147483647i, -2147483647i)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec3<u32>) -> f32 {
    var var_0 = _wgslsmith_sub_vec4_i32(select(~vec4<i32>(_wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(1u, 28u)], global2[_wgslsmith_index_u32(62327u, 28u)]), 1i, select(-16930i, -2147483647i, arg_0.c.x), 1i), select(abs(global2[_wgslsmith_index_u32(87342u, 28u)] & global2[_wgslsmith_index_u32(u_input.d, 28u)]), global2[_wgslsmith_index_u32(~(0u >> (arg_0.b.x % 32u)), 28u)], arg_1), select(!vec4<bool>(global3.c.x, global1[_wgslsmith_index_u32(4294967295u, 6u)], arg_1.x, global1[_wgslsmith_index_u32(arg_2.x, 6u)]), select(arg_1, global3.c, all(vec3<bool>(global1[_wgslsmith_index_u32(1u, 6u)], true, false))), abs(4294967295u) < (arg_2.x >> (arg_2.x % 32u)))), global2[_wgslsmith_index_u32(71800u, 28u)]);
    global1 = array<bool, 6>();
    global3 = arg_0;
    global1 = array<bool, 6>();
    var var_1 = var_0.wyy;
    return _wgslsmith_f_op_f32(step(1647f, -1000f));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_1) -> u32 {
    return ~22738u;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<u32>) -> f32 {
    global2 = array<vec4<i32>, 28>();
    global0 = array<u32, 15>();
    var var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.x - global3.a.x) + 667f)), global3.a.x, 398f, 534f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1484f, global3.a.x, 683f)), vec4<f32>(1325f, global3.a.x, 652f, global3.a.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(605f, 770f, 1918f, global3.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(218f, global3.a.x, 422f, global3.a.x) - vec4<f32>(global3.a.x, 1803f, -1158f, 771f)))))), vec4<bool>(true, arg_0.x, global3.c.x, (_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, 2147483647i, -2147483647i), vec4<i32>(-1i, 4261i, 2147483647i, 10708i)) << (4294967295u % 32u)) != ~(-45932i))));
    var var_1 = ~(-_wgslsmith_div_vec3_i32(vec3<i32>(~(-34868i), -1987i, -80513i), vec3<i32>(countOneBits(-2147483647i), -2147483647i, -1i << (arg_1.x % 32u))));
    let var_2 = vec3<u32>(0u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(min(vec2<u32>(45031u, global3.b.x), ~arg_1), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.x, 3414u), select(vec2<u32>(11728u, 4294967295u), u_input.a.yy, vec2<bool>(arg_0.x, arg_0.x)))), 15u)] | firstLeadingBit(_wgslsmith_mult_u32(global3.b.x, ~global3.b.x)), global0[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1775f, 303f, var_0.x), vec3<f32>(global3.a.x, -315f, var_0.x))), ~global3.b, select(global3.c, global3.c, vec4<bool>(false, true, true, false))), vec4<bool>(global3.c.x, any(vec4<bool>(arg_0.x, arg_0.x, global3.c.x, false)), arg_0.x, true), select(vec3<u32>(40853u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.b.x, 15u)], 15u)]), vec3<u32>(0u, 4294967295u, global3.b.x), vec3<bool>(false, true, false)) ^ (vec3<u32>(u_input.d, global0[_wgslsmith_index_u32(global3.b.x, 15u)], u_input.b.x) >> (u_input.a % vec3<u32>(32u))))), _wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, var_1.x, var_1.x), vec3<i32>(var_1.x, var_1.x, var_1.x)), abs(var_1.x)), 11440i), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.x, global3.a.x, var_0.x, -1287f)))))), Struct_1(global3.a, max(u_input.c, vec4<u32>(global3.b.x, 4294967295u, global3.b.x, global0[_wgslsmith_index_u32(arg_1.x, 15u)])) ^ _wgslsmith_clamp_vec4_u32(global3.b, u_input.c, vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], 4294967295u, 4294967295u, 0u)), !(!vec4<bool>(false, global1[_wgslsmith_index_u32(arg_1.x, 6u)], false, arg_0.x)))), 15u)]);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -418f) - _wgslsmith_f_op_f32(var_0.x + global3.a.x))) * _wgslsmith_f_op_f32(f32(-1f) * -1471f)) * global3.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 39568i, 1i, -1i), vec4<i32>(5533i, -70882i, 0i, 1i)), 53902i) & ~max(vec3<i32>(16223i, -2147483647i, -18811i), vec3<i32>(1i, 1i, 1i)), max(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(2147483647i, 2147483647i, -2147483647i), i32(-1i) * -2147483647i, 1i), firstTrailingBit(vec3<i32>(1i, 1i, 1i)), func_1(global3.c)), vec3<i32>(firstLeadingBit(firstTrailingBit(52888i)), min(select(11795i, -2147483647i, global1[_wgslsmith_index_u32(93434u, 6u)]), 1i), ~(-36055i))));
    var var_1 = _wgslsmith_div_vec4_u32((max(vec4<u32>(global3.b.x, 4294967295u, global3.b.x, u_input.b.x) << (vec4<u32>(120898u, global0[_wgslsmith_index_u32(1u, 15u)], global3.b.x, 42518u) % vec4<u32>(32u)), vec4<u32>(11829u, 4294967295u, 0u, 1u) & vec4<u32>(global3.b.x, u_input.d, u_input.c.x, global0[_wgslsmith_index_u32(0u, 15u)])) << (firstLeadingBit(abs(u_input.c)) % vec4<u32>(32u))) & min(vec4<u32>(_wgslsmith_mult_u32(0u, 24504u), 45395u, u_input.d, ~u_input.a.x), u_input.c ^ (vec4<u32>(global3.b.x, 38519u, 4294967295u, global3.b.x) << (global3.b % vec4<u32>(32u)))), vec4<u32>(u_input.d, ~(~4294967295u) << (global3.b.x % 32u), ~global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x, global0[_wgslsmith_index_u32(1u, 15u)]), 15u)] | ~(72633u ^ global0[_wgslsmith_index_u32(31942u, 15u)]), _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(~max(global3.b.x, global3.b.x), 15u)], 61467u)));
    var_1 = ~(~_wgslsmith_mod_vec4_u32(select(global3.b, firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(23881u, 15u)], u_input.d, global3.b.x, global3.b.x)), !global3.c), vec4<u32>(0u, 1u, reverseBits(var_1.x), var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.x) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1221f * -389f) + _wgslsmith_f_op_f32(func_2(global3.c.zyw, global3.b.yz)))))), ~(~vec4<u32>(global0[_wgslsmith_index_u32(global3.b.x, 15u)] & u_input.a.x, reverseBits(25494u), 81913u, var_1.x)), (_wgslsmith_div_vec2_u32(vec2<u32>(8576u, global3.b.x), ~vec2<u32>(global3.b.x, 4294967295u)) << (~_wgslsmith_mult_vec2_u32(global3.b.zy, vec2<u32>(global3.b.x, global0[_wgslsmith_index_u32(4294967295u, 15u)])) % vec2<u32>(32u))) ^ _wgslsmith_sub_vec2_u32(u_input.c.yz, _wgslsmith_div_vec2_u32(countOneBits(var_1.yy), ~vec2<u32>(u_input.c.x, 16164u))), -1211f);
}

