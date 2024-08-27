struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: array<vec2<f32>, 7> = array<vec2<f32>, 7>(vec2<f32>(-1052f, -649f), vec2<f32>(795f, 766f), vec2<f32>(603f, -1013f), vec2<f32>(-1570f, -446f), vec2<f32>(221f, 841f), vec2<f32>(-1027f, -440f), vec2<f32>(-370f, 781f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: u32, arg_1: vec4<f32>) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(-u_input.c, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0, 0u, 0u), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.d), vec3<u32>(0u, arg_0, u_input.d))), 31661u)), arg_1.x, Struct_1(u_input.b, _wgslsmith_div_u32(~(63098u | arg_0), u_input.d)), vec2<i32>(firstLeadingBit(0i), -30993i));
    var var_1 = Struct_1(-10996i, ~(~u_input.d));
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, 725f) * arg_1.wx))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, 199f) + vec2<f32>(var_0.b, 1015f)))))))));
    global0 = array<Struct_1, 27>();
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(global1[_wgslsmith_index_u32(var_1.b, 7u)]));
    return Struct_2(Struct_1(-(var_1.a >> (select(u_input.d, 4294967295u, false) % 32u)), 4294967295u << (_wgslsmith_mult_u32(arg_0, firstLeadingBit(4294967295u)) % 32u)), -195f, global0[_wgslsmith_index_u32(u_input.d, 27u)], ~var_0.d);
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> f32 {
    global0 = array<Struct_1, 27>();
    return 247f;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = !(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false))));
    var var_1 = -1152f;
    global1 = array<vec2<f32>, 7>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-309f, 228f)) * _wgslsmith_f_op_f32(round(-596f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(!var_0.x, func_2(arg_1.b, vec4<f32>(-205f, 322f, 997f, -1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -1220f)), func_2(8525u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(604f, -646f, 1768f, 1683f))) * _wgslsmith_div_vec4_f32(vec4<f32>(535f, 340f, 1560f, 790f), vec4<f32>(970f, 517f, 1091f, -107f)))).b));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1089f)), var_2.x);
    return func_2(~(0u >> ((arg_0.b & 105035u) % 32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, var_2.x) + -1386f), -1418f, var_2.x, var_2.x))).a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 7>();
    global1 = array<vec2<f32>, 7>();
    global0 = array<Struct_1, 27>();
    var var_0 = Struct_2(Struct_1(u_input.c, _wgslsmith_div_u32(1u, 20852u)), _wgslsmith_div_f32(1368f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(770f)) - _wgslsmith_f_op_f32(ceil(1000f))))), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, _wgslsmith_clamp_i32(0i, 1i, -4023i), u_input.b), ~vec3<i32>(-9315i, 2147483647i, u_input.b) >> (~vec3<u32>(3487u, 4294967295u, u_input.a) % vec3<u32>(32u))), _wgslsmith_div_u32(u_input.d, ~(~4294967295u))), _wgslsmith_mod_vec2_i32(select(~(~vec2<i32>(u_input.b, -53460i)), vec2<i32>(u_input.c, max(2539i, 6061i)), vec2<bool>(true, true)), vec2<i32>(max(2147483647i, -7382i), -1i) & (vec2<i32>(-1i) * -vec2<i32>(u_input.c, u_input.c))));
    let var_1 = Struct_2(func_1(global0[_wgslsmith_index_u32(19465u, 27u)], global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_clamp_u32(var_0.c.b, var_0.a.b ^ u_input.a, ~0u)), 27u)]), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - var_0.b), 691f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b + -929f) - _wgslsmith_f_op_f32(-var_0.b)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1282f + 260f) * -184f)))), func_1(func_2(23932u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_0.b, var_0.b, var_0.b)))).c, func_1(Struct_1(1i, _wgslsmith_dot_vec2_u32(vec2<u32>(30471u, u_input.a), vec2<u32>(22292u, var_0.a.b))), var_0.a)), var_0.d);
    var var_2 = true;
    var_2 = any(!vec3<bool>(true && (u_input.a > 3718u), true | all(vec4<bool>(false, true, true, false)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(~vec4<u32>(36770u, var_0.c.b, u_input.a, var_0.c.b) >> ((vec4<u32>(u_input.a, var_0.a.b, u_input.a, var_1.a.b) ^ vec4<u32>(u_input.d, 19663u, u_input.a, 4294967295u)) % vec4<u32>(32u)), abs(vec4<u32>(1u, var_0.a.b, 0u, var_1.c.b))) >> (12604u % 32u), ~_wgslsmith_add_vec4_i32(vec4<i32>(var_0.d.x, _wgslsmith_dot_vec2_i32(var_1.d, vec2<i32>(var_1.a.a, -66982i)), abs(var_0.d.x), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c.a, 1i), var_1.d)), vec4<i32>(-27983i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 44603i, -5333i), vec3<i32>(var_1.a.a, -17486i, u_input.b)), 2147483647i, -2147483647i)), _wgslsmith_f_op_f32(f32(-1f) * -1383f), 1i, u_input.a);
}

