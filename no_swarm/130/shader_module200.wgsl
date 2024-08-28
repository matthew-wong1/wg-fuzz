struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec3<bool>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12> = array<i32, 12>(-2705i, -35295i, i32(-2147483648), -1i, 16028i, 51005i, 29844i, i32(-2147483648), 1i, -18499i, -28281i, -67459i);

var<private> global1: bool;

var<private> global2: array<Struct_2, 21>;

var<private> global3: u32;

var<private> global4: array<vec3<i32>, 20> = array<vec3<i32>, 20>(vec3<i32>(-51861i, -23495i, -40986i), vec3<i32>(i32(-2147483648), 0i, -3131i), vec3<i32>(1i, 0i, 27297i), vec3<i32>(20215i, 2147483647i, 22657i), vec3<i32>(-60470i, -38575i, 2147483647i), vec3<i32>(0i, 180i, 77933i), vec3<i32>(-38820i, 0i, -5255i), vec3<i32>(2147483647i, -26997i, i32(-2147483648)), vec3<i32>(0i, -1i, 0i), vec3<i32>(0i, 6253i, 13082i), vec3<i32>(2147483647i, 57584i, 2147483647i), vec3<i32>(-1i, 20114i, -1i), vec3<i32>(-57952i, i32(-2147483648), 1i), vec3<i32>(40366i, -1i, 0i), vec3<i32>(-1i, i32(-2147483648), 0i), vec3<i32>(29832i, -35158i, 9653i), vec3<i32>(1i, 13177i, 27786i), vec3<i32>(-2038i, 38453i, -1i), vec3<i32>(2147483647i, 982i, 1i), vec3<i32>(0i, -1i, 11002i));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-792f * arg_0.b.b.x) * _wgslsmith_f_op_f32(-arg_0.c.b.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.b.x - 505f)))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.b.x))), _wgslsmith_f_op_f32(-arg_0.b.b.x), arg_0.b.b.x, _wgslsmith_f_op_f32(f32(-1f) * -960f)) - vec4<f32>(755f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.b.x) + _wgslsmith_f_op_f32(min(1000f, 905f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(639f, arg_1.b.b.x, false)))), -144f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.b.x + arg_0.b.b.x) + _wgslsmith_f_op_f32(trunc(arg_1.b.b.x))))));
    global0 = array<i32, 12>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.b.x));
    return _wgslsmith_add_u32(reverseBits(u_input.c.x), _wgslsmith_add_u32((arg_0.c.a | u_input.a) ^ ~(~u_input.a), 4294967295u));
}

fn func_2() -> Struct_1 {
    global0 = array<i32, 12>();
    let var_0 = global2[_wgslsmith_index_u32(~(func_3(Struct_2(u_input.b << (0u % 32u), Struct_1(u_input.c.x, vec3<f32>(733f, -1830f, -702f), vec3<bool>(false, false, false), vec4<i32>(u_input.d.x, 0i, u_input.d.x, -2147483647i), vec4<i32>(1i, global0[_wgslsmith_index_u32(u_input.c.x, 12u)], 0i, u_input.d.x)), Struct_1(6492u, vec3<f32>(-415f, 1000f, -385f), vec3<bool>(false, true, false), vec4<i32>(2147483647i, u_input.b, -2147483647i, u_input.b), vec4<i32>(u_input.b, u_input.b, 2147483647i, -1108i)), _wgslsmith_clamp_vec4_u32(vec4<u32>(82767u, 2375u, u_input.c.x, 7322u), vec4<u32>(u_input.a, 62716u, u_input.c.x, u_input.c.x), vec4<u32>(27884u, u_input.a, 40936u, u_input.a))), Struct_2(~(-44566i), Struct_1(0u, vec3<f32>(705f, 2355f, -1340f), vec3<bool>(false, true, false), vec4<i32>(0i, global0[_wgslsmith_index_u32(u_input.a, 12u)], global0[_wgslsmith_index_u32(u_input.a, 12u)], global0[_wgslsmith_index_u32(u_input.c.x, 12u)]), vec4<i32>(u_input.d.x, 42897i, -2429i, global0[_wgslsmith_index_u32(u_input.a, 12u)])), Struct_1(4294967295u, vec3<f32>(803f, -1484f, -253f), vec3<bool>(false, false, false), vec4<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 12u)], 1445i, global0[_wgslsmith_index_u32(4294967295u, 12u)], -2147483647i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 12u)], 56190i, -2147483647i, 11537i)), countOneBits(vec4<u32>(0u, u_input.a, 88915u, 0u))), global4[_wgslsmith_index_u32(~1u, 20u)], firstTrailingBit(u_input.c)) | (u_input.a | u_input.a)), 21u)];
    global4 = array<vec3<i32>, 20>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c.b), _wgslsmith_f_op_vec3_f32(var_0.c.b + var_0.c.b)))));
    let var_2 = _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u >> (var_0.c.a % 32u), u_input.a << (u_input.a % 32u)), 20u)], -var_0.b.d.wwz) ^ _wgslsmith_clamp_vec3_i32(~(-var_0.b.d.zww), vec3<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 12u)], -global0[_wgslsmith_index_u32(18740u, 12u)], 2147483647i), _wgslsmith_clamp_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(var_0.c.a, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)], -2147483647i) | global4[_wgslsmith_index_u32(u_input.c.x, 20u)], vec3<i32>(47947i, var_0.a, 37915i), select(vec3<i32>(u_input.b, 44536i, -25508i), global4[_wgslsmith_index_u32(7060u, 20u)], vec3<bool>(false, var_0.b.c.x, false)))), firstLeadingBit(global4[_wgslsmith_index_u32(24593u, 20u)]));
    return Struct_1(var_0.d.x, vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.b.b.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b.b.x, -479f))))), var_1.x), select(vec3<bool>(false, !var_0.b.c.x, global0[_wgslsmith_index_u32(71927u, 12u)] == firstTrailingBit(0i)), !(!var_0.b.c), !var_0.c.c), abs(~(-vec4<i32>(var_2.x, global0[_wgslsmith_index_u32(33349u, 12u)], var_0.b.e.x, var_0.b.e.x) | firstLeadingBit(vec4<i32>(var_2.x, u_input.d.x, var_0.b.e.x, 46635i)))), var_0.b.d);
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec3<u32>) -> u32 {
    var var_0 = Struct_2(1i, func_2(), func_2(), (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 16824u, u_input.c.x, arg_2.x) >> (vec4<u32>(47174u, arg_2.x, arg_1, 0u) % vec4<u32>(32u)), select(vec4<u32>(9283u, arg_2.x, 4294967295u, arg_2.x), vec4<u32>(0u, 9181u, u_input.c.x, 36050u), vec4<bool>(true, false, false, false))) & firstTrailingBit(~vec4<u32>(19483u, 4294967295u, arg_1, 0u))) | ~_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(arg_1, 32456u, arg_1, u_input.a)), ~vec4<u32>(0u, 0u, 1u, arg_2.x), vec4<u32>(arg_1, arg_1, arg_2.x, arg_2.x) >> (vec4<u32>(12595u, 84176u, 87504u, arg_1) % vec4<u32>(32u))));
    let var_1 = ~abs(var_0.c.e);
    var var_2 = vec4<u32>(func_2().a, firstLeadingBit(reverseBits(~4294967295u)), ~(~arg_2.x), ~(~arg_1 | reverseBits(13679u))) ^ abs(vec4<u32>(~(~arg_2.x), arg_2.x, 0u, ~(~0u)));
    var_2 = var_0.d;
    var var_3 = _wgslsmith_f_op_vec3_f32(-var_0.c.b);
    return ((_wgslsmith_div_u32(arg_2.x, var_0.d.x) ^ 47386u) | _wgslsmith_add_u32(select(var_0.d.x, var_0.b.a & u_input.a, all(var_0.b.c)), ~max(var_0.d.x, 1u))) & ~(~9538u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~_wgslsmith_div_u32(~_wgslsmith_mod_u32(10570u, u_input.c.x), u_input.c.x >> (func_1(-1224f, u_input.a, vec3<u32>(42307u, 967u, 57825u)) % 32u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-119f, 585f, 1108f))), vec3<bool>(true, true, true))), select(select(vec3<bool>(u_input.b == global0[_wgslsmith_index_u32(9932u, 12u)], true, false), vec3<bool>(true, true, true), true), select(vec3<bool>(true, any(vec2<bool>(false, false)), func_2().c.x), vec3<bool>(all(vec4<bool>(true, false, true, true)), true, all(vec2<bool>(true, true))), true), false), vec4<i32>(i32(-1i) * -67973i, u_input.d.x, _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.c.x, 12u)], -33582i ^ u_input.b) | -31900i, ~(-(2147483647i >> (u_input.c.x % 32u)))), vec4<i32>(func_2().d.x, firstLeadingBit(-22582i), countOneBits(81410i), -_wgslsmith_clamp_i32(select(-1i, u_input.d.x, false), u_input.b & u_input.d.x, u_input.b)));
    let var_1 = 561f;
    var var_2 = u_input.c;
    global4 = array<vec3<i32>, 20>();
    var var_3 = u_input.a;
    global0 = array<i32, 12>();
    var var_4 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_2.x, 7502u) & var_0.a, 21u)];
    var var_5 = all(select(!vec4<bool>(var_0.c.x, 0u > var_4.d.x, var_0.c.x, all(vec2<bool>(false, false))), vec4<bool>(var_0.c.x, false, true, !(!var_0.c.x)), true));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec4_u32(~select(vec4<u32>(4294967295u, u_input.a, 4294967295u, var_4.b.a), var_4.d, true), vec4<u32>(var_0.a, 1u << (var_4.d.x % 32u), var_2.x | 4294967295u, ~var_2.x)));
}

