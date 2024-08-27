struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<vec2<bool>, 20> = array<vec2<bool>, 20>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global2: f32;

var<private> global3: array<i32, 7> = array<i32, 7>(0i, 1i, 11111i, -44049i, -46738i, 1i, -1i);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_2) -> Struct_4 {
    global2 = global0.x;
    let var_0 = Struct_1(u_input.b << (max(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, u_input.c << (u_input.c % 32u))) % 32u));
    global1 = array<vec2<bool>, 20>();
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1283f, 1223f, arg_0.c) - vec3<f32>(global0.x, 1151f, -1000f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-544f, global0.x, -493f)))) + vec3<f32>(arg_0.c, -123f, _wgslsmith_f_op_f32(arg_0.c * 1444f)))));
    let var_2 = arg_0;
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -372f)));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<bool>) -> f32 {
    global0 = vec2<f32>(-293f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a + func_2(Struct_2(Struct_1(u_input.b), u_input.a.x, arg_0.a, Struct_1(18548i))).a)));
    global3 = array<i32, 7>();
    let var_0 = Struct_2(Struct_1(~u_input.b), u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1141f * -926f)), Struct_1(~abs(_wgslsmith_sub_i32(-23134i, -15988i))));
    let var_1 = var_0;
    let var_2 = func_2(Struct_2(Struct_1(var_0.a.a), ~16526u, 789f, Struct_1(12819i)));
    return _wgslsmith_f_op_f32(-411f * _wgslsmith_f_op_f32(440f + -506f));
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> bool {
    global3 = array<i32, 7>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-276f))), _wgslsmith_f_op_f32(-arg_0.c));
    var var_1 = vec3<bool>(arg_1, arg_1, (_wgslsmith_f_op_f32(f32(-1f) * -857f) < _wgslsmith_f_op_f32(func_3(func_2(arg_0), vec2<bool>(false, arg_1)))) && arg_1);
    let var_2 = Struct_2(arg_0.d, ~u_input.c, _wgslsmith_f_op_f32(arg_0.c * _wgslsmith_f_op_f32(func_3(func_2(Struct_2(arg_0.a, 1u, var_0.x, arg_0.d)), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(8852u, arg_0.b ^ arg_0.b), 20u)]))), Struct_1(((arg_0.a.a << (arg_0.b % 32u)) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(arg_0.b, 7u)], 2147483647i, -2147483647i), vec3<i32>(arg_0.d.a, arg_0.d.a, -1i))) >> (abs(u_input.c | arg_0.b) % 32u)));
    var var_3 = Struct_2(Struct_1(firstTrailingBit(-var_2.d.a)), _wgslsmith_mult_u32(u_input.c, u_input.a.x), var_0.x, arg_0.a);
    return any(select(vec4<bool>(all(!vec3<bool>(false, arg_1, false)), _wgslsmith_div_f32(var_0.x, -1000f) > global0.x, false, var_1.x | false), !select(vec4<bool>(arg_1, false, true, arg_1), vec4<bool>(var_1.x, false, var_1.x, var_1.x), any(vec2<bool>(false, arg_1))), !(any(vec4<bool>(arg_1, var_1.x, true, var_1.x)) | any(vec3<bool>(true, true, arg_1)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: vec4<bool>) -> f32 {
    global3 = array<i32, 7>();
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))));
    global1 = array<vec2<bool>, 20>();
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1471f + _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-global0.x));
    var var_0 = global1[_wgslsmith_index_u32(u_input.c | ~(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 72372u, u_input.c, 49145u) ^ vec4<u32>(arg_2.x, 37920u, arg_2.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 20891u, arg_2.x)) << (4294967295u % 32u)), 20u)];
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1218f) * 1373f)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global0.x;
    global2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(func_4(vec3<bool>(true, true, true), select(vec2<bool>(any(vec4<bool>(false, true, true, true)), func_1(Struct_2(Struct_1(-1i), u_input.c, global0.x, Struct_1(global3[_wgslsmith_index_u32(u_input.c, 7u)])), true)), vec2<bool>(select(false, true, true), true), vec2<bool>(true, true)), u_input.a, select(vec4<bool>(u_input.c >= u_input.c, true, true, 1000f >= global0.x), vec4<bool>(true, true, true, true), func_1(Struct_2(Struct_1(global3[_wgslsmith_index_u32(0u, 7u)]), 3611u, global0.x, Struct_1(1i)), 0u <= u_input.c))))));
    let var_0 = Struct_1(u_input.b);
    let var_1 = ~(~u_input.c);
    global3 = array<i32, 7>();
    var var_2 = ~(var_1 ^ var_1);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~abs(~var_1)), ~(~reverseBits(1u)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), -1520f)), -157f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -252f)))) + vec2<f32>(1f, 1f))), vec4<f32>(_wgslsmith_f_op_f32(func_4(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), global1[_wgslsmith_index_u32(1u, 20u)], _wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(u_input.a.x, 1u, u_input.c)), vec3<u32>(u_input.a.x, 1u, 19941u), u_input.a), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(exp2(global0.x)), global0.x, -1034f), _wgslsmith_dot_vec2_i32(select(vec2<i32>(1i, global3[_wgslsmith_index_u32(firstTrailingBit(u_input.c), 7u)]), vec2<i32>(u_input.b, var_0.a), vec2<bool>(true, all(vec3<bool>(false, false, false)))), ~abs(-vec2<i32>(37654i, 46797i))));
}

