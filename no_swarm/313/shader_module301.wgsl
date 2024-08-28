struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 12> = array<vec3<u32>, 12>(vec3<u32>(4294967295u, 0u, 16135u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(0u, 42678u, 5437u), vec3<u32>(0u, 41002u, 0u), vec3<u32>(7965u, 14296u, 23803u), vec3<u32>(4294967295u, 29386u, 1u), vec3<u32>(27197u, 4294967295u, 1u), vec3<u32>(10460u, 4618u, 4294967295u), vec3<u32>(0u, 4294967295u, 73507u), vec3<u32>(21058u, 52550u, 44831u), vec3<u32>(18528u, 0u, 1u), vec3<u32>(23604u, 101757u, 2356u));

var<private> global1: array<Struct_3, 4>;

var<private> global2: array<vec2<bool>, 12> = array<vec2<bool>, 12>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global3: Struct_1;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(~(~(~_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(4294967295u, u_input.c.x, 1u, arg_0)) | ~(20284u ^ u_input.e.x))), 4u)];
    let var_1 = global3.b.x;
    global1 = array<Struct_3, 4>();
    var var_2 = Struct_2(Struct_1(~(~abs(global3.a)), _wgslsmith_f_op_vec2_f32(-global3.b)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.x + global3.b.x)))));
    let var_3 = var_2.a;
    return arg_0;
}

fn func_2() -> u32 {
    global3 = Struct_1(-global3.a, global3.b);
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(12124u, func_3(~3611u)), 4u)];
    let var_1 = vec4<i32>(_wgslsmith_add_i32(u_input.d.x, -12072i), abs(_wgslsmith_mult_i32(global3.a, -18491i)), select(~global3.a, 20044i, false), -_wgslsmith_add_i32(1i, -37541i));
    let var_2 = global2[_wgslsmith_index_u32(u_input.b.x, 12u)];
    var var_3 = -296f;
    return u_input.b.x;
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: vec4<f32>, arg_3: vec4<f32>) -> Struct_3 {
    var var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(7895i, u_input.d.x) | (u_input.d.x >> (0u % 32u)), u_input.d.x, _wgslsmith_add_i32(i32(-1i) * -2147483647i, -8094i)), u_input.d.x, _wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(-10336i, 51774i), min(global3.a, 2147483647i)), min(_wgslsmith_clamp_i32(u_input.d.x, u_input.d.x, u_input.d.x), 9578i | global3.a))), vec3<i32>(_wgslsmith_mod_i32(global3.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, global3.a, -2147483647i), u_input.a)), u_input.d.x ^ 2147483647i, 20980i));
    return global1[_wgslsmith_index_u32(81405u & _wgslsmith_add_u32(_wgslsmith_clamp_u32(~(~0u), 4294967295u, _wgslsmith_dot_vec4_u32(~u_input.e, vec4<u32>(4294967295u, 3378u, u_input.e.x, 1u))), ~_wgslsmith_mult_u32(func_3(arg_0.x), ~arg_0.x)), 4u)];
}

fn func_1(arg_0: vec4<i32>) -> vec3<i32> {
    var var_0 = Struct_2(Struct_1(u_input.d.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1908f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1187f, global3.b.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-820f, _wgslsmith_f_op_f32(global3.b.x - -1815f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.x)))))));
    var var_1 = func_4(_wgslsmith_add_vec3_u32(global0[_wgslsmith_index_u32(26203u, 12u)], vec3<u32>(func_2(), 80326u, u_input.c.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -740f)), var_0.b) * global3.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.x, var_0.a.b.x, -338f, -251f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.x, -131f, var_0.b, global3.b.x)))))), vec4<f32>(_wgslsmith_f_op_f32(round(var_0.a.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.b.x, -130f))))), 1061f));
    let var_2 = 28223u;
    let var_3 = var_0.a;
    var var_4 = !select(vec4<bool>(false, var_1.a, true, true), vec4<bool>(var_1.a, global3.a > countOneBits(arg_0.x), false, all(select(vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), vec4<bool>(false, true, var_1.a, var_1.a), false))), !select(vec4<bool>(var_1.a, true, var_1.a, false), vec4<bool>(true, var_1.a, false, var_1.a), var_1.a));
    return vec3<i32>(arg_0.x, _wgslsmith_div_i32(45543i, _wgslsmith_add_i32(~u_input.a.x, u_input.d.x)), abs(17289i));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(func_1(vec4<i32>(-2147483647i, 0i, 2147483647i, 1i)), _wgslsmith_sub_vec3_i32(abs(u_input.a.yzx), u_input.a.yzx)), vec3<i32>(global3.a, countOneBits(func_1(vec4<i32>(u_input.d.x, 0i, 0i, u_input.a.x)).x), _wgslsmith_add_i32(u_input.a.x, u_input.a.x))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-951f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(global3.b.x)), -1000f))), global3.b, all(vec2<bool>(-733f > global3.b.x, all(global2[_wgslsmith_index_u32(6546u, 12u)]))))));
    var var_0 = Struct_1(0i, global3.b);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b.x))), -895f)));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_0.b, global3.b))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b.x, var_0.b.x)), vec2<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), true))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b - var_0.b) + var_0.b) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(171f, global3.b.x) - vec2<f32>(-791f, global3.b.x)) + vec2<f32>(-881f, global3.b.x)))));
    var var_3 = !(!vec4<bool>(true, any(vec4<bool>(true, true, true, true)), true, all(vec3<bool>(false, true, true))));
    var var_4 = vec4<u32>(select(~_wgslsmith_sub_u32(u_input.e.x, _wgslsmith_clamp_u32(u_input.b.x, 0u, 1u)), u_input.b.x, any(global2[_wgslsmith_index_u32(u_input.b.x, 12u)])), reverseBits(u_input.c.x), u_input.c.x, u_input.b.x);
    var var_5 = Struct_1(u_input.d.x, vec2<f32>(_wgslsmith_f_op_f32(-1019f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1168f))))), var_0.b.x));
    var var_6 = vec4<u32>(~(~var_4.x), ~(~u_input.c.x), 56518u, 51530u);
    global3 = Struct_1(var_0.a, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_5.b.x)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.x, var_5.b.x) * var_0.b.x)), global3.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(-246f, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -1546f, -765f) + vec3<f32>(-1639f, 616f, var_2.x)), vec3<f32>(843f, 657f, 1468f)) + vec3<f32>(_wgslsmith_f_op_f32(round(global3.b.x)), _wgslsmith_f_op_f32(-462f * -206f), _wgslsmith_f_op_f32(-var_2.x))))), _wgslsmith_clamp_u32(5731u & _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(127381u, var_6.x, 0u), u_input.e.xwz), vec3<u32>(var_6.x, u_input.b.x, 81892u)), abs(4294967295u), ~(~_wgslsmith_add_u32(21385u, var_6.x))), vec3<u32>(var_4.x, u_input.e.x, _wgslsmith_dot_vec2_u32(vec2<u32>(func_3(58739u), 4294967295u), vec2<u32>(~18492u, var_4.x))), abs((_wgslsmith_div_vec3_i32(vec3<i32>(global3.a, 0i, global3.a), u_input.a.xzw) | (u_input.a.www << (vec3<u32>(var_4.x, 4294967295u, var_6.x) % vec3<u32>(32u)))) & firstTrailingBit(u_input.a.xzz)));
}

