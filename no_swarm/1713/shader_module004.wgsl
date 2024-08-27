struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<u32, 4> = array<u32, 4>(4294967295u, 0u, 4294967295u, 1u);

var<private> global2: f32 = 963f;

var<private> global3: array<bool, 23>;

var<private> global4: array<i32, 1> = array<i32, 1>(-8669i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(738f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1909f, -940f) - _wgslsmith_f_op_f32(150f - 662f)), 1f, all(select(vec3<bool>(global0.x, global0.x, global3[_wgslsmith_index_u32(0u, 23u)]), vec3<bool>(false, false, global0.x), vec3<bool>(false, true, false))))), 1300f)));
    let var_1 = var_0.x;
    let var_2 = ~(-u_input.b >> (~(~(arg_1.a.x << (1u % 32u))) % 32u));
    global4 = array<i32, 1>();
    var var_3 = arg_0;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(-962f, -258f));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec2<f32>) -> u32 {
    let var_0 = arg_3.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-871f, arg_3.x, 1199f, arg_3.x) * vec4<f32>(arg_3.x, 774f, 1000f, arg_2.e)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1053f, -314f, var_0, var_0))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, 942f, arg_3.x, arg_3.x), vec4<f32>(arg_3.x, -2226f, 266f, var_0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 262f, 591f, arg_2.e)))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -533f), arg_3.x, _wgslsmith_f_op_f32(max(arg_2.e, _wgslsmith_f_op_f32(-var_0))), _wgslsmith_div_f32(-447f, _wgslsmith_f_op_f32(f32(-1f) * -1127f))))));
    var var_2 = u_input.b;
    var var_3 = ~_wgslsmith_mult_vec3_u32(arg_1.xww, ~vec3<u32>(abs(0u), arg_1.x, firstLeadingBit(arg_0.a.x)));
    let var_4 = arg_0;
    return _wgslsmith_div_u32(4294967295u, ~5691u);
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = Struct_3(Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 4u)], 4u)], 4u)], 4294967295u) ^ ~global1[_wgslsmith_index_u32(18771u, 4u)], 4u)], _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(0u, 4u)], 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 4u)], 4u)], 4u)], 4u)], 4u)]), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 4u)], 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)])), ~vec3<u32>(38772u, 4294967295u, 0u)), func_4(Struct_1(vec2<u32>(0u, 128084u)), vec4<u32>(10888u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 4u)], 4u)], 4u)], 4u)], 4u)], 4u)], 4u)], 0u), Struct_2(true, Struct_1(vec2<u32>(37675u, 64810u)), Struct_1(vec2<u32>(2158u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 4u)], 4u)], 4u)])), vec4<u32>(59113u, global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 4u)], 4u)]), -934f), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 4u)], 4u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28974u, 4u)], 4u)], 4u)])), Struct_1(vec2<u32>(17791u, global1[_wgslsmith_index_u32(1u, 4u)])))))), 23u)], Struct_1(~max(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7524u, 4u)], 4u)], 4u)], 4u)], 1u), vec2<u32>(global1[_wgslsmith_index_u32(1u, 4u)], 0u))), Struct_1(vec2<u32>(global1[_wgslsmith_index_u32(~0u, 4u)], _wgslsmith_dot_vec4_u32(vec4<u32>(26232u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(66956u, 4u)], 4u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(19275u, 4u)], 4u)], 4u)], 4u)], 4u)], 4u)], 1u), vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(63618u, 4u)], 4u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 34095u)))), vec4<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global1[_wgslsmith_index_u32(4294967295u, 4u)], 1u) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), select(vec3<u32>(32961u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 4u)], 4u)], 4u)], 11576u), vec3<u32>(0u, 0u, 1u), vec3<bool>(global0.x, true, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 4u)], 23u)]))), countOneBits(abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 4u)], 4u)])), 54368u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1368f * -833f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(765f)), _wgslsmith_div_f32(-960f, -372f)))))));
    var_0 = Struct_3(Struct_2(!(!(var_0.a.e > var_0.a.e)), Struct_1(vec2<u32>(firstLeadingBit(14836u), global1[_wgslsmith_index_u32(1u, 4u)])), var_0.a.b, ~(~_wgslsmith_mod_vec4_u32(var_0.a.d, var_0.a.d)), var_0.a.e));
    let var_1 = var_0.a.e;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a.e)));
    let var_2 = -1i;
    return global0.x;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: f32) -> i32 {
    global3 = array<bool, 23>();
    global3 = array<bool, 23>();
    let var_0 = Struct_2(func_2(-1i), Struct_1(vec2<u32>(4294967295u, arg_1)), Struct_1(vec2<u32>(40013u, ~51350u | reverseBits(global1[_wgslsmith_index_u32(arg_1, 4u)]))), _wgslsmith_sub_vec4_u32(select(vec4<u32>(countOneBits(arg_1), ~arg_1, ~global1[_wgslsmith_index_u32(20445u, 4u)], ~0u), vec4<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 4u)], 0u, arg_1) & ~vec4<u32>(global1[_wgslsmith_index_u32(arg_1, 4u)], 17606u, 848u, global1[_wgslsmith_index_u32(arg_1, 4u)]), true), vec4<u32>(~_wgslsmith_add_u32(arg_1, global1[_wgslsmith_index_u32(arg_1, 4u)]), arg_1, _wgslsmith_dot_vec2_u32(select(vec2<u32>(0u, 5231u), vec2<u32>(arg_1, 1u), vec2<bool>(true, true)), ~vec2<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 4u)], 4u)])), ~abs(0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(arg_2 * arg_2))))));
    global4 = array<i32, 1>();
    let var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(firstLeadingBit(50411u), abs(abs(arg_1)), 17035u), var_0.d.wzy);
    return -(~global4[_wgslsmith_index_u32(select(0u, abs(0u), (-2147483647i & global4[_wgslsmith_index_u32(0u, 1u)]) != _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global4[_wgslsmith_index_u32(69954u, 1u)], u_input.c.x, global4[_wgslsmith_index_u32(arg_1, 1u)]), vec4<i32>(-2147483647i, -29762i, 1i, 18756i))), 1u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(u_input.c.x, min(~global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(51473u, 4u)], 4u)], 4u)], 4u)], 4u)], 4u)], global1[_wgslsmith_index_u32(68835u, 4u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(112456u, 4u)], 4u)]), vec3<u32>(global1[_wgslsmith_index_u32(7522u, 4u)], global1[_wgslsmith_index_u32(50927u, 4u)], 70185u)), _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(4294967295u, 4u)], 39098u)), 1u)], -11494i), ~_wgslsmith_add_i32(u_input.c.x & func_1(global3[_wgslsmith_index_u32(1u, 23u)], 4294967295u, -472f), countOneBits(abs(u_input.a.x))), i32(-1i) * -2147483647i);
    let var_1 = 2147483647i;
    global0 = select(!select(vec2<bool>(true, global0.x & global0.x), select(!vec2<bool>(global0.x, global3[_wgslsmith_index_u32(22811u, 23u)]), !vec2<bool>(true, global0.x), false), global0.x), select(!vec2<bool>(!global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(31485u, 4u)], 4u)], 23u)], true), select(vec2<bool>(true, false), select(vec2<bool>(global3[_wgslsmith_index_u32(49620u, 23u)], true), !vec2<bool>(global0.x, true), !vec2<bool>(false, global0.x)), !select(vec2<bool>(global0.x, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 4u)], 4u)], 4u)], 23u)]), vec2<bool>(false, false), global3[_wgslsmith_index_u32(1u, 23u)])), all(select(vec3<bool>(global3[_wgslsmith_index_u32(20019u, 23u)], false, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28332u, 4u)], 23u)]), vec3<bool>(true, false, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(107u, 4u)], 4u)], 4u)], 23u)]), select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(true, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 23u)], global3[_wgslsmith_index_u32(0u, 23u)]), vec3<bool>(false, global0.x, global3[_wgslsmith_index_u32(0u, 23u)]))))), vec2<bool>(true, !global0.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(735f, -1000f, -1231f, 701f)))))));
    let var_3 = Struct_1(vec2<u32>(27855u, 0u));
    global2 = _wgslsmith_f_op_f32(987f + 696f);
    var var_4 = Struct_3(Struct_2(global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u, max(global1[_wgslsmith_index_u32(var_3.a.x, 4u)], 32752u)), 23u)], var_3, Struct_1(vec2<u32>(~42477u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), var_3.a))), min(~(~vec4<u32>(4294967295u, 67117u, 23256u, 6280u)), ~vec4<u32>(81152u, var_3.a.x, 1u, 3621u)), 1209f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4.a.e * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1769f))), var_4.a.e), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -117f), 2147f, -1205f), ~abs(var_4.a.d & vec4<u32>(var_4.a.b.a.x, global1[_wgslsmith_index_u32(var_4.a.c.a.x, 4u)], global1[_wgslsmith_index_u32(27200u, 4u)], 1540u)), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_3.a.x, 4u)], 4u)], var_3.a.x), firstTrailingBit(vec2<u32>(var_4.a.b.a.x, var_3.a.x))));
}

