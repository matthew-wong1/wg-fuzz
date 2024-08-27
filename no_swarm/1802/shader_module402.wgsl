struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec2<bool>,
    d: i32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20> = array<bool, 20>(false, true, true, false, false, true, false, true, true, true, true, true, false, true, false, false, false, true, true, false);

var<private> global1: vec4<bool>;

var<private> global2: array<bool, 15>;

var<private> global3: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec4<bool>(false, false, false, false), -1i, vec4<i32>(-1i, 2147483647i, -1i, 1i), vec2<i32>(0i, 476i), vec2<u32>(29209u, 43628u)), Struct_1(vec4<bool>(true, true, true, false), -1i, vec4<i32>(90334i, i32(-2147483648), 58748i, i32(-2147483648)), vec2<i32>(-1i, 0i), vec2<u32>(0u, 1u)));

var<private> global4: i32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: bool) -> f32 {
    var var_0 = select(min(vec3<u32>(1u, 1u, 1u) & _wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 49697u, 0u), firstLeadingBit(vec3<u32>(1u, 33227u, 4294967295u)), vec3<u32>(1u, 1u, 1u)), ~vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u << (~4294967295u % 32u), countOneBits(_wgslsmith_add_u32(1u, 76817u)), ~(~73684u)), true);
    let var_1 = ~u_input.a;
    let var_2 = firstTrailingBit(~u_input.b);
    var_0 = abs(~(~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(1u, 35617u, 40125u))));
    global2 = array<bool, 15>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1895f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -734f), 1310f)), _wgslsmith_f_op_f32(f32(-1f) * -1409f)))) + _wgslsmith_f_op_f32(floor(-417f)));
}

fn func_2(arg_0: Struct_3) -> f32 {
    global4 = 2147483647i;
    global2 = array<bool, 15>();
    global4 = -16946i;
    global2 = array<bool, 15>();
    let var_0 = Struct_2(global3[_wgslsmith_index_u32(4294967295u, 2u)]);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.b.zwz, firstLeadingBit(arg_0.c.d.x) <= _wgslsmith_add_i32(~u_input.b.x, u_input.a))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1490f + _wgslsmith_f_op_f32(251f - -430f))))));
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0 + 427f))), 230f, 580f, _wgslsmith_f_op_f32(func_2(Struct_3(vec3<u32>(1u, 4294967295u, 4294967295u), u_input.b.yyz, Struct_1(vec4<bool>(global1.x, true, global2[_wgslsmith_index_u32(0u, 15u)], false), 0i, vec4<i32>(u_input.b.x, u_input.a, 0i, -2147483647i), vec2<i32>(u_input.b.x, -14219i), vec2<u32>(4294967295u, 29473u)))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(610f, -2280f, 1009f, 196f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0, arg_0, arg_0, arg_0))), any(vec4<bool>(global2[_wgslsmith_index_u32(1352u, 15u)], false, global2[_wgslsmith_index_u32(21288u, 15u)], global0[_wgslsmith_index_u32(40616u, 20u)])))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -680f, arg_0, arg_0) + vec4<f32>(arg_0, 827f, arg_0, -1302f))))));
    let var_1 = Struct_4(Struct_2(Struct_1(!(!vec4<bool>(false, global0[_wgslsmith_index_u32(29039u, 20u)], false, global0[_wgslsmith_index_u32(4294967295u, 20u)])), _wgslsmith_dot_vec3_i32(~u_input.b.www, ~u_input.b.zxz), vec4<i32>(20366i, select(2147483647i, -24483i, false), ~u_input.b.x, countOneBits(u_input.a)), vec2<i32>(i32(-1i) * -2272i, _wgslsmith_dot_vec3_i32(u_input.b.yzy, vec3<i32>(u_input.a, u_input.b.x, u_input.a))), vec2<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(32221u, 0u), vec2<u32>(61236u, 0u))))), select(~vec2<u32>(6841u, 4294967295u), firstTrailingBit(vec2<u32>(4294967295u, 17720u)), vec2<bool>(all(vec4<bool>(global1.x, global2[_wgslsmith_index_u32(85944u, 15u)], global1.x, true)), global0[_wgslsmith_index_u32(0u, 20u)] || true)) & ~firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 1u))), vec2<bool>(true, true), firstLeadingBit(_wgslsmith_mod_i32(-21655i, (u_input.b.x << (1u % 32u)) << (31275u % 32u))));
    let var_2 = -11978i;
    var var_3 = Struct_4(Struct_2(Struct_1(vec4<bool>(var_1.a.a.a.x, global0[_wgslsmith_index_u32(15436u << (var_1.a.a.e.x % 32u), 20u)], any(vec4<bool>(global1.x, true, var_1.a.a.a.x, global2[_wgslsmith_index_u32(var_1.b.x, 15u)])), !global0[_wgslsmith_index_u32(1u, 20u)]), ~(~var_2), firstTrailingBit(u_input.b), min(var_1.a.a.c.xx << (var_1.b % vec2<u32>(32u)), vec2<i32>(u_input.a, var_1.a.a.d.x)), vec2<u32>(17377u, firstLeadingBit(59826u)))), abs(var_1.b), var_1.a.a.a.wx, 39212i);
    var_3 = Struct_4(Struct_2(global3[_wgslsmith_index_u32(~((var_1.b.x >> (var_1.a.a.e.x % 32u)) ^ var_3.b.x), 2u)]), ~reverseBits(_wgslsmith_mod_vec2_u32(var_1.a.a.e, ~vec2<u32>(6726u, 0u))), global1.wx, _wgslsmith_add_i32(-abs(var_1.a.a.d.x >> (0u % 32u)), _wgslsmith_dot_vec4_i32(firstTrailingBit(select(var_3.a.a.c, vec4<i32>(11769i, -7023i, -11217i, var_1.a.a.c.x), var_3.a.a.a)), ~u_input.b)));
    return ~var_3.a.a.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(func_1(_wgslsmith_f_op_f32(-981f + _wgslsmith_f_op_f32(sign(-450f)))), select(~u_input.b, max(_wgslsmith_div_vec4_i32(u_input.b, u_input.b) & ~vec4<i32>(u_input.b.x, u_input.b.x, 0i, -2147483647i), vec4<i32>(-1i, u_input.a << (0u % 32u), u_input.b.x, 1i)), select(global1.x, !(!global0[_wgslsmith_index_u32(0u, 20u)]), any(vec3<bool>(global0[_wgslsmith_index_u32(14178u, 20u)], global2[_wgslsmith_index_u32(21901u, 15u)], global1.x)))));
}

