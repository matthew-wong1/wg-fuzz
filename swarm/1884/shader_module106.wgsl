struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 23> = array<vec4<u32>, 23>(vec4<u32>(1u, 0u, 26322u, 1u), vec4<u32>(1u, 69255u, 71182u, 4294967295u), vec4<u32>(6449u, 0u, 0u, 1u), vec4<u32>(12811u, 2724u, 0u, 35698u), vec4<u32>(4294967295u, 1u, 1u, 1u), vec4<u32>(104303u, 30861u, 28528u, 73590u), vec4<u32>(26421u, 37390u, 106382u, 84029u), vec4<u32>(39122u, 64366u, 0u, 13163u), vec4<u32>(25296u, 0u, 69997u, 44822u), vec4<u32>(43176u, 4294967295u, 1u, 1u), vec4<u32>(11724u, 23820u, 42293u, 1u), vec4<u32>(1u, 21179u, 14046u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 0u, 18225u), vec4<u32>(42377u, 80971u, 4294967295u, 4294967295u), vec4<u32>(6463u, 30200u, 70619u, 1u), vec4<u32>(1u, 43441u, 1u, 0u), vec4<u32>(0u, 0u, 1u, 1u), vec4<u32>(1u, 53788u, 0u, 42110u), vec4<u32>(0u, 4294967295u, 1u, 67659u), vec4<u32>(4294967295u, 23768u, 0u, 1u), vec4<u32>(1u, 40755u, 28734u, 30779u), vec4<u32>(48733u, 90035u, 1u, 57045u), vec4<u32>(65387u, 52859u, 14046u, 0u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32) -> u32 {
    global0 = array<vec4<u32>, 23>();
    global0 = array<vec4<u32>, 23>();
    let var_0 = !vec3<bool>(!(!all(vec4<bool>(true, true, false, true))), true, true);
    let var_1 = _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.c.x, u_input.b.x), vec2<u32>(~63838u, ~0u), u_input.b.zy), vec2<u32>(0u, firstTrailingBit(10974u << (u_input.b.x % 32u)))) << (~_wgslsmith_sub_vec2_u32(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.c.x), u_input.c)), ~(vec2<u32>(7812u, u_input.b.x) >> (u_input.c % vec2<u32>(32u)))) % vec2<u32>(32u));
    global0 = array<vec4<u32>, 23>();
    return ~(4151u >> (_wgslsmith_mult_u32(4294967295u, var_1.x ^ var_1.x) % 32u));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    global0 = array<vec4<u32>, 23>();
    let var_0 = (((_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_0.a.b.x, u_input.c.x), vec3<u32>(arg_0.a.b.x, 4294967295u, arg_0.a.b.x)) << (~38255u % 32u)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(46900u, u_input.b.x, arg_0.a.b.x, arg_1.a.b.x), vec4<u32>(u_input.c.x, 1756u, arg_0.a.b.x, 1u) | global0[_wgslsmith_index_u32(90408u, 23u)]) % 32u)) >> (u_input.b.x % 32u)) << (~func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1049f + 266f))) % 32u);
    return arg_0;
}

fn func_4(arg_0: Struct_2) -> i32 {
    var var_0 = firstTrailingBit(_wgslsmith_mult_u32(4294967295u, ~_wgslsmith_mod_u32(~0u, _wgslsmith_mult_u32(u_input.c.x, u_input.c.x))));
    let var_1 = func_2(arg_0, arg_0).a;
    var var_2 = firstTrailingBit(~(u_input.d.x | _wgslsmith_dot_vec2_i32(u_input.d, ~u_input.d)));
    var_0 = _wgslsmith_div_u32(0u, ((~arg_0.a.b.x ^ _wgslsmith_sub_u32(4294967295u, u_input.b.x)) << (_wgslsmith_mod_u32(min(u_input.b.x, 0u), var_1.b.x) % 32u)) | 4294967295u);
    var_0 = 67044u;
    return _wgslsmith_clamp_i32(u_input.d.x, _wgslsmith_add_i32(u_input.d.x, u_input.d.x), u_input.a.x);
}

fn func_5(arg_0: i32, arg_1: vec3<i32>, arg_2: u32) -> Struct_1 {
    let var_0 = i32(-1i) * -1i;
    global0 = array<vec4<u32>, 23>();
    let var_1 = 1u;
    let var_2 = Struct_1(-128f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(306f - 1396f) - 1434f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1450f, 113f, false)) + _wgslsmith_div_f32(177f, -730f))), ~(~(~abs(global0[_wgslsmith_index_u32(1u, 23u)]))), -1726f);
    var var_3 = reverseBits(-(_wgslsmith_mod_i32(-2147483647i, arg_0) << (31252u % 32u)));
    return Struct_1(var_2.a, global0[_wgslsmith_index_u32(var_1, 23u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(250f + var_2.c))) * _wgslsmith_div_f32(-403f, var_2.c))));
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    global0 = array<vec4<u32>, 23>();
    global0 = array<vec4<u32>, 23>();
    global0 = array<vec4<u32>, 23>();
    global0 = array<vec4<u32>, 23>();
    var var_0 = true;
    return func_5(0i, vec3<i32>(_wgslsmith_clamp_i32(func_4(func_2(Struct_2(Struct_1(false, vec4<u32>(1u, u_input.c.x, u_input.c.x, u_input.b.x), 494f)), Struct_2(Struct_1(true, global0[_wgslsmith_index_u32(u_input.c.x, 23u)], 464f)))), ~(-u_input.a.x), ~firstTrailingBit(-26952i)), 1i, _wgslsmith_dot_vec3_i32(abs(~vec3<i32>(arg_0.x, arg_0.x, u_input.a.x)), abs(u_input.a))), u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(34952i, _wgslsmith_mult_i32(1i, u_input.a.x) | u_input.a.x), u_input.a.zy);
    var var_1 = func_1(~max(vec3<i32>(u_input.d.x, u_input.a.x >> (4294967295u % 32u), _wgslsmith_sub_i32(u_input.d.x, u_input.a.x)), countOneBits(vec3<i32>(0i, u_input.a.x, -10041i))));
    var_0 = 0i;
    var var_2 = all(!(!select(!vec3<bool>(var_1.a, var_1.a, var_1.a), !vec3<bool>(var_1.a, var_1.a, var_1.a), var_1.a)));
    var var_3 = select(vec3<bool>(true, !any(vec4<bool>(true, true, true, true)), false), !(!vec3<bool>(select(var_1.a, var_1.a, true), select(var_1.a, var_1.a, var_1.a), all(vec3<bool>(false, var_1.a, true)))), select(vec3<bool>(false, true, var_1.a), select(select(select(vec3<bool>(var_1.a, var_1.a, false), vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(true, var_1.a, true)), !vec3<bool>(var_1.a, true, var_1.a), var_1.a), vec3<bool>(var_1.a, all(vec2<bool>(true, false)), false), var_1.a), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(true, var_1.a, var_1.a), vec3<bool>(true, var_1.a, true)))));
    var var_4 = var_1.a;
    var var_5 = u_input.a;
    let var_6 = u_input.c.x;
    let var_7 = -1845f;
    let x = u_input.a;
    s_output = StorageBuffer(~global0[_wgslsmith_index_u32(~min(1u, 0u), 23u)], _wgslsmith_f_op_f32(f32(-1f) * -360f), var_7, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.c, -289f, 1119f), vec3<f32>(_wgslsmith_f_op_f32(-var_7), var_1.c, _wgslsmith_f_op_f32(floor(var_1.c))), var_3.x)))));
}

