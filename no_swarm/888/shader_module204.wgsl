struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(16595u, false), Struct_2(11896u, true), Struct_2(35679u, false), Struct_2(12159u, false), Struct_2(65473u, false), Struct_2(62374u, true));

var<private> global1: vec3<u32> = vec3<u32>(58628u, 0u, 28323u);

var<private> global2: array<i32, 10>;

var<private> global3: vec2<u32> = vec2<u32>(91592u, 36495u);

var<private> global4: array<vec4<i32>, 8>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> u32 {
    global4 = array<vec4<i32>, 8>();
    var var_0 = all(vec3<bool>(true, true, true));
    let var_1 = global0[_wgslsmith_index_u32(global1.x, 6u)];
    var var_2 = Struct_2(var_1.a, !(!(!(!var_1.b))));
    var var_3 = Struct_2(~_wgslsmith_mod_u32(countOneBits(4294967295u), ~38291u), true);
    return 9629u;
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_1(vec4<u32>(0u, ~(~1u | global1.x), 65921u, _wgslsmith_add_u32(global1.x, ~(~u_input.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(835f - -210f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1052f - 393f)) - _wgslsmith_f_op_f32(-1212f - _wgslsmith_f_op_f32(f32(-1f) * -187f)))), _wgslsmith_div_u32(1u, 50041u));
    let var_1 = u_input.a.xxy;
    var var_2 = global2[_wgslsmith_index_u32(global3.x, 10u)];
    var var_3 = _wgslsmith_f_op_f32(select(-638f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -926f))), arg_0.x));
    var var_4 = Struct_1(vec4<u32>(4294967295u, func_3(), 13580u, func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-280f, 893f, !all(vec2<bool>(arg_0.x, arg_0.x))))), global1.x);
    return Struct_1(vec4<u32>(var_0.c, u_input.d.x, _wgslsmith_mod_u32(var_4.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, var_0.c), _wgslsmith_mult_vec3_u32(vec3<u32>(16587u, global1.x, u_input.d.x), var_4.a.xxz))), 1u), 246f, min(select(firstLeadingBit(143873u), firstLeadingBit(var_4.c), -240f <= var_0.b) | func_3(), 0u));
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> u32 {
    var var_0 = vec3<u32>(1u, 6781u, 32252u) | countOneBits(u_input.d.wzx);
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.b, arg_1.b)))))));
    let var_2 = arg_1;
    var var_3 = any(select(vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), true, !all(vec4<bool>(true, true, false, true))), vec3<bool>(select(true, true, true), all(vec2<bool>(false, true)) || false, true), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)))));
    global4 = array<vec4<i32>, 8>();
    return ~(~_wgslsmith_add_u32(var_2.a.x | 25995u, 15104u)) >> (4294967295u % 32u);
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(506f, _wgslsmith_f_op_f32(-633f - -608f))), 964f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(564f + -426f), _wgslsmith_f_op_f32(-1038f + 1475f))))), vec3<f32>(-2038f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -1244f)));
    let var_1 = !(-global2[_wgslsmith_index_u32(~(~global1.x), 10u)] <= (_wgslsmith_dot_vec3_i32(u_input.a.wwz, vec3<i32>(2147483647i, 6221i, global2[_wgslsmith_index_u32(18998u, 10u)])) ^ -1i));
    let var_2 = u_input.a.zwx;
    var var_3 = Struct_2(~_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.d.x, global3.x) << (66925u % 32u), u_input.e), (var_2.x != _wgslsmith_clamp_i32(-29827i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, 1i, global2[_wgslsmith_index_u32(11087u, 10u)], 41835i), vec4<i32>(global2[_wgslsmith_index_u32(62833u, 10u)], 65494i, 2147483647i, var_2.x)), min(var_2.x, global2[_wgslsmith_index_u32(global1.x, 10u)]))) | var_1);
    var var_4 = global0[_wgslsmith_index_u32(max(reverseBits(func_4(var_0.x, func_2(vec4<bool>(var_3.b, true, true, true)))), abs(global3.x)), 6u)];
    return ~(~36894u);
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1, arg_3: vec3<i32>) -> bool {
    global1 = vec3<u32>(firstLeadingBit(arg_1), global3.x, _wgslsmith_mod_u32(arg_0.a, ~firstTrailingBit(0u)));
    global3 = arg_2.a.wx;
    let var_0 = ~(countOneBits(min(u_input.d.x, arg_0.a)) | ~global1.x);
    var var_1 = any(select(!vec3<bool>(arg_0.b, false, true), !vec3<bool>(true, arg_0.b, arg_0.b), arg_3.x > (global2[_wgslsmith_index_u32(arg_2.a.x, 10u)] & u_input.a.x))) | !any(select(!vec3<bool>(arg_0.b, true, false), select(vec3<bool>(false, true, arg_0.b), vec3<bool>(arg_0.b, arg_0.b, true), arg_0.b), !vec3<bool>(arg_0.b, arg_0.b, true)));
    global3 = vec2<u32>(select(var_0, ~84980u, arg_0.b), select(firstTrailingBit(14852u), u_input.d.x, !all(!vec4<bool>(arg_0.b, arg_0.b, true, arg_0.b))));
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 220f;
    let var_1 = -global2[_wgslsmith_index_u32(~(_wgslsmith_mod_u32(1u, global1.x) & global1.x) >> (select(global1.x ^ u_input.e, global1.x, !all(vec3<bool>(false, false, true))) % 32u), 10u)];
    global2 = array<i32, 10>();
    var var_2 = 9151u;
    let var_3 = func_5(Struct_2(func_1(), all(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))), global1.x, func_2(vec4<bool>(all(vec2<bool>(true, true)), true, true, all(vec4<bool>(false, false, false, false)))), -u_input.b);
    var var_4 = ~abs(0i);
    var_4 = u_input.b.x;
    global2 = array<i32, 10>();
    let var_5 = Struct_2(u_input.d.x, !var_3);
    let x = u_input.a;
    s_output = StorageBuffer(1317f, 1000f);
}

