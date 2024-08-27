struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: i32,
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

var<private> global0: array<f32, 4>;

var<private> global1: array<vec2<u32>, 8> = array<vec2<u32>, 8>(vec2<u32>(1u, 1u), vec2<u32>(44831u, 61543u), vec2<u32>(1u, 109908u), vec2<u32>(46620u, 0u), vec2<u32>(0u, 74622u), vec2<u32>(0u, 37537u), vec2<u32>(4294967295u, 1584u), vec2<u32>(37057u, 14334u));

var<private> global2: Struct_1 = Struct_1(1u, 2147483647i, vec4<u32>(0u, 1u, 4294967295u, 4294967295u));

var<private> global3: Struct_1;

var<private> global4: array<bool, 27>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec4<i32>) -> vec4<i32> {
    let var_0 = arg_0;
    let var_1 = 383f;
    global4 = array<bool, 27>();
    var var_2 = ~u_input.a;
    global1 = array<vec2<u32>, 8>();
    return arg_2;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec2<f32>) -> f32 {
    global2 = arg_0;
    let var_0 = arg_0;
    global1 = array<vec2<u32>, 8>();
    global4 = array<bool, 27>();
    let var_1 = -_wgslsmith_mod_vec4_i32(~(-(vec4<i32>(0i, -2147483647i, global2.b, u_input.a) << (global2.c % vec4<u32>(32u)))), select(min(func_2(Struct_1(u_input.b.x, var_0.b, vec4<u32>(global3.a, 4294967295u, u_input.d, global3.a)), vec4<i32>(arg_0.b, 8175i, u_input.a, u_input.c.x), vec4<i32>(u_input.c.x, 0i, var_0.b, -2147483647i)), -vec4<i32>(-31671i, global2.b, -1i, -1i)), select(vec4<i32>(34265i, 2147483647i, global2.b, arg_0.b), vec4<i32>(var_0.b, global3.b, global2.b, 0i), true) & vec4<i32>(1i, arg_0.b, global3.b, global3.b), true));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1084f * arg_2.x));
}

fn func_3(arg_0: vec2<f32>) -> vec3<i32> {
    global3 = Struct_1(min(abs(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(global2.c.ywz, global2.c.xwz), global2.c.yzx)), firstTrailingBit(global2.c.x)), -_wgslsmith_dot_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(global3.b, 1i, 15614i, u_input.c.x), vec4<i32>(0i, u_input.c.x, -2147483647i, global3.b)), reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(global2.b, global2.b, -77342i, -1i), vec4<i32>(u_input.c.x, 32616i, -1i, 1i)))), vec4<u32>(78550u, global2.a, global2.a, countOneBits((global2.a << (6025u % 32u)) | _wgslsmith_sub_u32(global3.c.x, u_input.d))));
    global1 = array<vec2<u32>, 8>();
    let var_0 = Struct_1(_wgslsmith_mult_u32(global3.a, ~abs(global3.a)), reverseBits(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global2.b, u_input.a), vec3<i32>(-1i, u_input.a, -1i)), -1i) ^ -23544i), ~_wgslsmith_add_vec4_u32(global2.c, _wgslsmith_sub_vec4_u32(abs(vec4<u32>(global3.a, global2.c.x, 4294967295u, global3.c.x)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 75490u, u_input.b.x, 1u), vec4<u32>(u_input.b.x, global3.c.x, 35067u, 6433u)))));
    global0 = array<f32, 4>();
    let var_1 = global3.c | _wgslsmith_div_vec4_u32(vec4<u32>(57633u, var_0.c.x, _wgslsmith_sub_u32(global2.a, 4294967295u), 80936u) ^ vec4<u32>(~global2.c.x, global2.a, max(global3.a, u_input.b.x), 66057u), ~vec4<u32>(u_input.d, ~var_0.c.x, global3.c.x << (1u % 32u), ~4294967295u));
    return _wgslsmith_sub_vec3_i32(min(-_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global3.b, var_0.b, 0i), vec3<i32>(-43436i, 0i, 48779i)), countOneBits(vec3<i32>(2147483647i, -1426i, global2.b))), vec3<i32>(var_0.b, i32(-1i) * -var_0.b, -global3.b)), max(~vec3<i32>(9654i, global2.b, global3.b), select(~vec3<i32>(u_input.a, global3.b, 35361i), vec3<i32>(global2.b, global3.b, 13395i), false)) >> (vec3<u32>(abs(var_1.x), var_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(106815u, 50462u, u_input.b.x, 9186u), var_1)) % vec3<u32>(32u)));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: vec3<i32>) -> vec4<bool> {
    return !vec4<bool>(false, true, any(arg_1.zw), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global3.c.x, 4u)]), global0[_wgslsmith_index_u32(135713u, 4u)])) > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(613f + global0[_wgslsmith_index_u32(4294967295u, 4u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 4u)] + -492f), global0[_wgslsmith_index_u32(global2.c.x, 4u)] < 1655f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 4>();
    global1 = array<vec2<u32>, 8>();
    global2 = Struct_1(0u, reverseBits(0i & global3.b), global3.c);
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.d, 4u)], -1403f), 1420f, _wgslsmith_f_op_f32(func_1(Struct_1(u_input.b.x, -2147483647i, vec4<u32>(global3.c.x, u_input.d, 0u, global3.a)), false, vec2<f32>(global0[_wgslsmith_index_u32(0u, 4u)], -797f))), -209f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(global2.c.x, 4u)])), 430f, global0[_wgslsmith_index_u32(global3.a, 4u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(52724u, 4u)] * -311f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(global2.c.x, 4u)], -453f, global0[_wgslsmith_index_u32(1u, 4u)], 1000f)), (global0[_wgslsmith_index_u32(global3.a, 4u)] != -453f) | all(vec2<bool>(false, false)))))), func_4(_wgslsmith_add_vec2_u32(vec2<u32>(7507u << (global3.a % 32u), ~28428u), max(~global2.c.zw, ~global3.c.ww)), vec4<bool>(!global4[_wgslsmith_index_u32(global3.c.x, 27u)] && (global4[_wgslsmith_index_u32(1u, 27u)] || global4[_wgslsmith_index_u32(0u, 27u)]), all(select(vec2<bool>(global4[_wgslsmith_index_u32(54736u, 27u)], global4[_wgslsmith_index_u32(global2.a, 27u)]), vec2<bool>(true, true), false)), true, !global4[_wgslsmith_index_u32(19065u, 27u)] && global4[_wgslsmith_index_u32(~56644u, 27u)]), _wgslsmith_sub_vec3_i32(vec3<i32>(global2.b, 1i, u_input.c.x << (29233u % 32u)), func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1497f, 511f)))))));
    let var_1 = !select(!select(vec3<bool>(global4[_wgslsmith_index_u32(1u, 27u)], false, global4[_wgslsmith_index_u32(global2.c.x, 27u)]), !vec3<bool>(global4[_wgslsmith_index_u32(50021u, 27u)], global4[_wgslsmith_index_u32(1u, 27u)], global4[_wgslsmith_index_u32(global3.c.x, 27u)]), all(vec4<bool>(false, global4[_wgslsmith_index_u32(27707u, 27u)], true, false))), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, global4[_wgslsmith_index_u32(36411u, 27u)], false), vec3<bool>(false, global4[_wgslsmith_index_u32(96354u, 27u)], global4[_wgslsmith_index_u32(global3.c.x, 27u)]), false), func_4(global2.c.wy, vec4<bool>(true, global4[_wgslsmith_index_u32(71076u, 27u)], false, true), vec3<i32>(-33866i, 32138i, 2147483647i)).xzw), global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(global2.c.wxz, global2.c.zyy), 27u)]);
    let var_2 = Struct_1((global2.a ^ _wgslsmith_mod_u32(~u_input.d, 64877u)) >> (0u % 32u), u_input.c.x, _wgslsmith_sub_vec4_u32(select(global2.c, global2.c, select(vec4<bool>(global4[_wgslsmith_index_u32(9643u, 27u)], var_1.x, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, global4[_wgslsmith_index_u32(u_input.d, 27u)], false, true))), global3.c) << (countOneBits(~vec4<u32>(38635u, u_input.d, u_input.d, 53127u)) % vec4<u32>(32u)));
    var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(1336f, -293f), -1909f, global0[_wgslsmith_index_u32(select(72639u, min(_wgslsmith_dot_vec3_u32(vec3<u32>(29796u, 1u, u_input.d), var_2.c.yzx), 1u), global4[_wgslsmith_index_u32(22841u, 27u)]), 4u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(39077u, 4u)], -581f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 4u)]))))));
    let x = u_input.a;
    s_output = StorageBuffer(1909f);
}

