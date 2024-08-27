struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: vec2<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21> = array<f32, 21>(-183f, 1539f, -1231f, 859f, 879f, -559f, 920f, 874f, 330f, 541f, -236f, -543f, 410f, 1000f, -1563f, 1354f, 1078f, 395f, -1239f, 1039f, -310f);

var<private> global1: array<vec3<u32>, 18> = array<vec3<u32>, 18>(vec3<u32>(27199u, 4294967295u, 22423u), vec3<u32>(6308u, 80511u, 1u), vec3<u32>(1u, 1u, 89377u), vec3<u32>(1u, 15785u, 76541u), vec3<u32>(43593u, 1u, 102255u), vec3<u32>(89876u, 41341u, 99740u), vec3<u32>(12760u, 45146u, 116895u), vec3<u32>(4294967295u, 0u, 38469u), vec3<u32>(4294967295u, 4294967295u, 16303u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 4294967295u, 5907u), vec3<u32>(27793u, 16178u, 4294967295u), vec3<u32>(852u, 47371u, 34828u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(0u, 32959u, 1u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(4294967295u, 40365u, 1u));

var<private> global2: array<Struct_3, 9>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: Struct_2) -> bool {
    let var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(arg_1.x, 21u)], 1076f, var_0.a.b, arg_2.a.b) + vec4<f32>(-745f, -1375f, var_0.b.b, global0[_wgslsmith_index_u32(arg_1.x, 21u)]))))) * vec4<f32>(_wgslsmith_f_op_f32(-3062f - -1063f), _wgslsmith_f_op_f32(abs(532f)), arg_2.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(429f)))))));
    global2 = array<Struct_3, 9>();
    var var_2 = vec2<u32>(abs(25663u), arg_1.x | _wgslsmith_mult_u32(~arg_1.x, ~arg_1.x)) | ~(~(vec2<u32>(4294967295u, 0u) & max(arg_1.zx, arg_1.zy)));
    var var_3 = Struct_3(71318u);
    return false;
}

fn func_3(arg_0: vec3<i32>) -> bool {
    let var_0 = Struct_4(Struct_1(false && any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-966f - -942f)), Struct_1(38183i != u_input.b, _wgslsmith_f_op_f32(f32(-1f) * -1431f)));
    global1 = array<vec3<u32>, 18>();
    global1 = array<vec3<u32>, 18>();
    let var_1 = var_0.a.a;
    global1 = array<vec3<u32>, 18>();
    return func_1(~((-arg_0 & min(arg_0, arg_0)) >> ((~global1[_wgslsmith_index_u32(0u, 18u)] ^ ~vec3<u32>(19441u, 1u, 15135u)) % vec3<u32>(32u))), ~(firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)) & vec4<u32>(9654u << (0u % 32u), ~4294967295u, _wgslsmith_mod_u32(1u, 991u), ~0u)), Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(var_0.b.b)) != _wgslsmith_f_op_f32(min(657f, global0[_wgslsmith_index_u32(129069u, 21u)])), global0[_wgslsmith_index_u32(25816u, 21u)]), var_0.b));
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    global1 = array<vec3<u32>, 18>();
    global0 = array<f32, 21>();
    let var_0 = -1089f;
    var var_1 = all(vec4<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false))), all(vec2<bool>(true, false)) && true, false, true)) | true;
    let var_2 = !vec4<bool>(true, func_3(abs(vec3<i32>(u_input.a, 40155i, 5165i))), !select(false, true, true), -(~u_input.b) < 2147483647i);
    return -1036f;
}

fn func_4(arg_0: f32, arg_1: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(3064u, 21u)]);
    global2 = array<Struct_3, 9>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1, 21u)])))))), 1171f);
    let var_2 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(max(vec4<i32>(-1i) * -vec4<i32>(1i, u_input.c.x, u_input.a, -61234i), abs(vec4<i32>(-22794i, u_input.a, u_input.c.x, u_input.b))), vec4<i32>(2147483647i, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 33826i, 21673i), vec3<i32>(-1i, -1i, u_input.b)), u_input.b, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, -27590i, 0i), vec3<i32>(u_input.a, u_input.b, 12393i)), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 16352i, u_input.b), vec3<i32>(u_input.b, u_input.a, 2147483647i))))), ~(i32(-1i) * -abs(-2147483647i)));
    let var_3 = vec3<bool>(all(vec3<bool>(func_1(vec3<i32>(0i, 1i, var_2) | vec3<i32>(u_input.b, 18066i, var_2), vec4<u32>(arg_1, arg_1, arg_1, arg_1) >> (vec4<u32>(0u, arg_1, 0u, arg_1) % vec4<u32>(32u)), Struct_2(Struct_1(true, 703f), Struct_1(true, var_1.x))), (var_1.x < 648f) | true, any(vec3<bool>(true, true, true)))), !(!all(vec3<bool>(false, true, false))), true);
    return Struct_2(Struct_1(true, -1418f), Struct_1(~(~arg_1) == 4937u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1352f * -412f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 21>();
    global0 = array<f32, 21>();
    var var_0 = 0u;
    var_0 = 1u;
    let var_1 = firstLeadingBit(1u);
    let var_2 = select(select(vec4<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), true, false, !(-1000f != global0[_wgslsmith_index_u32(var_1, 21u)])), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true))), select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, false, false)), false), !vec4<bool>(true, true, select(false, true, false), true)), select(vec4<bool>(true, all(vec2<bool>(true, true)), true, func_1(vec3<i32>(u_input.b, -45662i, u_input.b), vec4<u32>(0u, var_1, var_1, 1u), Struct_2(Struct_1(false, global0[_wgslsmith_index_u32(var_1, 21u)]), Struct_1(true, -1000f))) && false), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true)), true), vec4<bool>(!(var_1 < 476u), false, true, _wgslsmith_mod_i32(u_input.a, -50933i) <= 1i)), vec4<bool>(true, true, true, true));
    var var_3 = Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-160f)))));
    var var_4 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(max(60649u, 14182u), 18u)]))) - var_3.b), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.b, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(0u & var_1, 21u)], var_3.b)), _wgslsmith_div_f32(-325f, _wgslsmith_div_f32(830f, global0[_wgslsmith_index_u32(var_1, 21u)]))), -199f, global0[_wgslsmith_index_u32(47043u, 21u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -390f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_3.b)) - _wgslsmith_f_op_f32(var_3.b * -1000f)))), min(vec2<i32>(abs(firstTrailingBit(u_input.c.x)), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.a, u_input.a, u_input.b), vec4<i32>(u_input.a, u_input.b, 0i, u_input.a))), _wgslsmith_mod_vec2_i32(u_input.c, vec2<i32>(_wgslsmith_sub_i32(1i, u_input.a), reverseBits(-15959i)))), -abs(firstLeadingBit(vec3<i32>(u_input.b, u_input.b, 9735i))));
}

