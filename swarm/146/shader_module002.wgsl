struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 18> = array<vec2<bool>, 18>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false));

var<private> global1: array<u32, 8> = array<u32, 8>(1u, 3199u, 4294967295u, 4294967295u, 12861u, 6641u, 1u, 0u);

var<private> global2: vec4<u32> = vec4<u32>(12766u, 4294967295u, 29445u, 23736u);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32) -> u32 {
    global2 = ~firstLeadingBit(~(~_wgslsmith_div_vec4_u32(vec4<u32>(43960u, u_input.d.x, global2.x, 1u), vec4<u32>(global2.x, 0u, 0u, 4294967295u))));
    var var_0 = vec2<f32>(_wgslsmith_div_f32(1354f, 1675f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -836f)));
    global2 = _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 1u, _wgslsmith_div_u32(1u, u_input.b.x ^ 47207u), _wgslsmith_mult_u32(0u, global2.x)), vec4<u32>(u_input.b.x, reverseBits(select(~u_input.d.x, 67783u, u_input.d.x == global2.x)), ~68225u, ~u_input.d.x));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(327f * _wgslsmith_f_op_f32(-1000f - 1476f)), vec3<bool>(true, false, true)), true, arg_0, select(max(vec4<u32>(~global1[_wgslsmith_index_u32(0u, 8u)], 4294967295u, ~4294967295u, ~0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 8u)], 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d.x, 8u)], 8u)], 36071u), vec4<u32>(global2.x, 1u, global2.x, 4294967295u), vec4<u32>(global2.x, u_input.d.x, 41349u, global2.x)) | ~vec4<u32>(52517u, 49092u, global2.x, 60322u)), vec4<u32>(4294967295u >> (global2.x % 32u), abs(global1[_wgslsmith_index_u32(global2.x, 8u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 4294967295u, global2.x), vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 8u)], u_input.b.x, u_input.d.x)), 0u) << (vec4<u32>(~global1[_wgslsmith_index_u32(46312u, 8u)], ~4294967295u, ~2995u, 72212u) % vec4<u32>(32u)), true), -238f);
    global0 = array<vec2<bool>, 18>();
    return ~global2.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: i32) -> Struct_1 {
    global1 = array<u32, 8>();
    global0 = array<vec2<bool>, 18>();
    global1 = array<u32, 8>();
    global2 = ~(vec4<u32>(reverseBits(~7371u), global2.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(0u, 8u)], global2.x, global1[_wgslsmith_index_u32(0u, 8u)]), ~vec3<u32>(1u, 0u, 3446u)), func_3(~arg_0.x)) & countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(69545u, global2.x, global2.x, 1u) << (vec4<u32>(20174u, 10157u, 34293u, global2.x) % vec4<u32>(32u)), select(vec4<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(335u, 8u)], 8u)], 1u, 12472u), vec4<u32>(global2.x, 42465u, 4294967295u, global2.x), vec4<bool>(false, true, true, false)), vec4<u32>(1u, 1u, 1u, 1u))));
    var var_0 = (~abs(_wgslsmith_div_u32(u_input.b.x, u_input.b.x)) & global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_mod_u32(global2.x, global1[_wgslsmith_index_u32(global2.x, 8u)] << (global1[_wgslsmith_index_u32(4294967295u, 8u)] % 32u))), 8u)]) ^ 11467u;
    return Struct_1(-1359f, vec3<bool>(true, false, true));
}

fn func_1(arg_0: bool, arg_1: vec3<bool>) -> Struct_2 {
    let var_0 = func_2(~select(vec3<i32>(abs(11031i), u_input.a.x, u_input.e), -(vec3<i32>(u_input.a.x, u_input.c.x, -10152i) & vec3<i32>(-2147483647i, -2147483647i, u_input.c.x)), arg_1.x), ~(-2147483647i));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))), arg_1);
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(28251u), u_input.d.x), 8u)] << (u_input.d.x % 32u);
    global0 = array<vec2<bool>, 18>();
    var var_3 = Struct_2(func_2(_wgslsmith_add_vec3_i32(abs(vec3<i32>(1i, u_input.c.x, u_input.a.x)) | select(vec3<i32>(u_input.a.x, u_input.c.x, u_input.e), vec3<i32>(u_input.a.x, u_input.e, -25450i), var_0.b), vec3<i32>(17584i & u_input.a.x, 18661i, -u_input.a.x)), ~_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.e, u_input.a.x, 38561i)), vec3<i32>(0i, u_input.c.x, -1i) ^ vec3<i32>(u_input.c.x, -4504i, u_input.e))), (u_input.d.x <= ~_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(25364u, 8u)], 8u)], global2.x, global1[_wgslsmith_index_u32(36969u, 8u)]), vec3<u32>(9318u, global1[_wgslsmith_index_u32(0u, 8u)], 39220u))) || (arg_0 == !(!var_1.b.x)), min(12456i, ~u_input.c.x), ~vec4<u32>(~(~u_input.d.x), 6748u, var_2, _wgslsmith_div_u32(u_input.b.x, 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -741f))))));
    return Struct_2(func_2(_wgslsmith_div_vec3_i32(vec3<i32>(var_3.c, var_3.c, var_3.c), (vec3<i32>(u_input.a.x, -28181i, -35717i) & vec3<i32>(u_input.c.x, -2147483647i, 32507i)) ^ vec3<i32>(u_input.e, 1i, 2147483647i)), _wgslsmith_add_i32(max(0i, 2147483647i) ^ _wgslsmith_add_i32(-1i, var_3.c), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, u_input.c.x, -2147483647i, var_3.c), vec4<i32>(var_3.c, u_input.c.x, -2147483647i, -6028i)))), arg_1.x, u_input.c.x, _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_2, 15274u, var_3.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 53742u, var_3.d.x, 1u), var_3.d)), var_3.d, var_3.d), 747f);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: u32) -> i32 {
    let var_0 = any(!(!(!vec2<bool>(arg_0.a.b.x, arg_0.b)))) | func_2(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(2147483647i, u_input.e, u_input.c.x), -1i), -countOneBits(98926i), -2147483647i), u_input.e).b.x;
    global0 = array<vec2<bool>, 18>();
    var var_1 = _wgslsmith_mult_i32(15326i, _wgslsmith_add_i32(-(~u_input.c.x), u_input.c.x)) << (arg_0.d.x % 32u);
    var var_2 = _wgslsmith_f_op_f32(673f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-755f, _wgslsmith_f_op_f32(-arg_0.e))))))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.e)))), vec3<bool>(true && arg_0.a.b.x, any(vec4<bool>(true, var_0, true & arg_0.a.b.x, select(false, var_0, false))), false));
    return 4966i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -821f), vec3<bool>(true, true, true)), (_wgslsmith_add_u32(40410u, _wgslsmith_add_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)], 1u)) >> (abs(~global2.x) % 32u)) < 22072u, func_4(func_1(true, select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false), vec3<bool>(false, false, true))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(372f, 133f, -149f) + vec3<f32>(-175f, -1000f, 580f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, 718f, 1000f)))))), 1u), ~(~(vec4<u32>(1u, global2.x, u_input.d.x, 9939u) | min(vec4<u32>(u_input.d.x, 25999u, 52334u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d.x, 8u)], 8u)], 8u)]), vec4<u32>(0u, 48239u, 0u, u_input.d.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(func_1(true, select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true))).e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(false, vec3<bool>(false, false, true)).a.a)))));
    let var_1 = global1[_wgslsmith_index_u32(abs(4444u), 8u)];
    global0 = array<vec2<bool>, 18>();
    var var_2 = var_0.e;
    var var_3 = func_1(true, select(!var_0.a.b, vec3<bool>(global2.x == abs(var_0.d.x), true, ~global2.x < firstLeadingBit(34769u)), false)).c;
    var var_4 = ~(~var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.e, 140f), -216f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.e, 1000f, var_0.e), vec3<f32>(var_0.e, -606f, var_0.e)))) * vec3<f32>(func_2(vec3<i32>(47661i, 0i, u_input.a.x), 0i).a, var_0.a.a, var_0.a.a)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.a, 1875f, -733f)), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.a, var_0.a.a, var_0.e), vec3<f32>(298f, var_0.a.a, 196f)), false)))), vec3<i32>(~(~u_input.e), var_0.c, ~var_0.c));
}

