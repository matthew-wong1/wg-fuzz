struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32) -> vec4<u32> {
    var var_0 = u_input.b.x;
    let var_1 = select(abs(min(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.c, 77817u))), select(~vec2<u32>(1u, u_input.c), vec2<u32>(u_input.c, 1u), vec2<bool>(false, true)))), firstTrailingBit(~max(~vec2<u32>(u_input.c, u_input.c), firstLeadingBit(vec2<u32>(u_input.c, 42098u)))), ~_wgslsmith_dot_vec2_i32(u_input.a.zy, ~vec2<i32>(-1i, u_input.a.x)) > _wgslsmith_mod_i32(u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.b.x, u_input.b.x), u_input.b.www)));
    var var_2 = Struct_2(arg_0, Struct_1(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.b.ww & vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(2147483647i, u_input.a.x)), -8783i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, global0.x), _wgslsmith_div_vec2_f32(vec2<f32>(1758f, arg_0), vec2<f32>(global0.x, -920f))))), ~4294967295u, _wgslsmith_div_f32(2900f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1347f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(round(arg_0))))));
    global0 = var_2.b.b;
    global0 = var_2.b.b;
    return vec4<u32>(5635u & _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, u_input.c, u_input.c, u_input.c), vec4<u32>(20941u, u_input.c, 1u, 61677u), ~vec4<u32>(u_input.c, var_2.c, 0u, 4294967295u)), select(vec4<u32>(33670u, var_2.c, u_input.c, 34653u), _wgslsmith_mult_vec4_u32(vec4<u32>(88592u, 4294967295u, var_2.c, u_input.c), vec4<u32>(76u, u_input.c, 1u, var_2.c)), all(vec2<bool>(false, true)))), var_2.c, ~1u, select(u_input.c, _wgslsmith_add_u32(firstTrailingBit(_wgslsmith_mod_u32(1u, u_input.c)), var_1.x | countOneBits(var_2.c)), all(vec2<bool>(1u == var_1.x, false))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = u_input.a.x;
    var var_1 = vec2<bool>(false, all(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true))));
    var var_2 = Struct_2(arg_0.b.x, Struct_1(u_input.b.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -155f)), _wgslsmith_f_op_f32(max(global0.x, -344f)))), 66095u, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x + -1333f))))));
    var var_3 = ~u_input.c;
    let var_4 = _wgslsmith_dot_vec4_u32(vec4<u32>(abs(~15792u), _wgslsmith_div_u32(u_input.c, reverseBits(~u_input.c)), 0u, _wgslsmith_mod_u32(var_2.c, ~u_input.c)), ~func_3(var_2.d));
    return arg_0;
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-global0.x)))), global0.x)), func_2(Struct_1(2147483647i, vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(1265f + global0.x)))), _wgslsmith_mod_u32(u_input.c, u_input.c), global0.x);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -241f)) - _wgslsmith_f_op_f32(global0.x - global0.x))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x))) - var_0.d);
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(-289f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-296f + var_0.b.b.x)))));
    var var_2 = ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, arg_0, var_0.c, u_input.c), vec4<u32>(4294967295u, 4294967295u, arg_0, 33569u)), arg_0) ^ (_wgslsmith_add_vec2_u32(select(~vec2<u32>(0u, arg_0), vec2<u32>(1u, 1u), any(vec3<bool>(var_1, false, var_1))), (vec2<u32>(var_0.c, var_0.c) << (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u))) & max(vec2<u32>(2912u, u_input.c), vec2<u32>(4294967295u, 1u))) >> ((func_3(1000f).xx << (firstTrailingBit(vec2<u32>(35439u, 41514u) | vec2<u32>(u_input.c, 0u)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var_2 = abs(select(select(vec2<u32>(arg_0, arg_0), ~_wgslsmith_add_vec2_u32(vec2<u32>(var_0.c, 1u), vec2<u32>(var_0.c, var_0.c)), !select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, false), vec2<bool>(var_1, var_1))), vec2<u32>(4294967295u, 0u), var_1));
    return Struct_1(firstTrailingBit(1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(max(1372f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), func_1(_wgslsmith_mult_u32(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(13313u, 0u), vec2<u32>(u_input.c, 74556u)) & ~u_input.c), _wgslsmith_sub_i32(u_input.b.x, u_input.a.x)), var_0, _wgslsmith_f_op_f32(-global0.x));
    var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-729f + global0.x)))), _wgslsmith_f_op_f32(abs(2154f))), Struct_1(85386i, _wgslsmith_f_op_vec2_f32(-var_1.b.b)), ~6186u, global0.x);
    global0 = _wgslsmith_f_op_vec2_f32(-var_1.b.b);
    var var_2 = func_2(Struct_1(0i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.b.b)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.b.b, vec2<f32>(var_1.b.b.x, 1000f)) + _wgslsmith_f_op_vec2_f32(max(var_1.b.b, vec2<f32>(global0.x, global0.x)))))));
    global0 = _wgslsmith_f_op_vec2_f32(-var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec4_u32(vec4<u32>(firstLeadingBit(27759u), ~4294967295u, 4294967295u, 22755u >> (1u % 32u)), ~vec4<u32>(u_input.c, 1u, u_input.c, var_0)), reverseBits(i32(-1i) * -1i), vec2<u32>(~(~1u), var_0), _wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, -109f), _wgslsmith_f_op_f32(exp2(var_1.a))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.b.x - 587f), 1008f)));
}

