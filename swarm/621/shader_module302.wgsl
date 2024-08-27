struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: array<Struct_1, 1>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: vec3<u32>) -> f32 {
    let var_0 = _wgslsmith_add_vec2_i32(firstLeadingBit(_wgslsmith_add_vec2_i32(-_wgslsmith_add_vec2_i32(vec2<i32>(29530i, 55534i), u_input.a.zw), ~abs(vec2<i32>(arg_0.b, -2147483647i)))), u_input.a.ww);
    let var_1 = -714f;
    let var_2 = arg_0;
    let var_3 = 1i;
    let var_4 = _wgslsmith_add_i32(var_2.b, select(countOneBits(-1i), -1i, !(arg_2 <= _wgslsmith_div_u32(var_2.a.x, 9206u))));
    return 829f;
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(861f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec2<u32>(arg_0, 1u), u_input.a.x), global1[_wgslsmith_index_u32(46761u, 1u)], arg_0, vec3<u32>(arg_0, arg_0, arg_0))) * 1f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-124f, 1000f), vec2<f32>(2167f, -1643f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-971f, 1096f) * vec2<f32>(-1000f, 1879f)))), vec2<bool>(true, true)))));
    let var_1 = false;
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    let var_2 = _wgslsmith_div_vec2_i32(~(vec2<i32>(-1i) * -vec2<i32>(8655i, 43164i)), _wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(69241i, u_input.a.x)), vec2<i32>(14908i, _wgslsmith_add_i32(-1i, 1i)))) & vec2<i32>(-u_input.a.x, u_input.a.x);
    return arg_0;
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.a.x;
    global0 = array<Struct_1, 9>();
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(-40203i, var_0, u_input.a.x), -(~u_input.a.wzx) ^ vec3<i32>(2147483647i, -u_input.a.x, u_input.a.x | -2147483647i)) << (_wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, ~4294967295u), func_2(~_wgslsmith_div_u32(16967u, 37704u))) % 32u);
    let var_2 = vec2<u32>(_wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(50910u, 0u), vec2<u32>(1u, 1u)), firstLeadingBit(vec2<u32>(66621u, 1u)), countOneBits(vec2<u32>(1u, 1u))), firstLeadingBit(vec2<u32>(699u, 1u)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)))), 0u);
    let var_3 = global1[_wgslsmith_index_u32(1u, 1u)];
    return Struct_1(countOneBits(~reverseBits(~var_3.a)), (i32(-1i) * -(u_input.a.x ^ 0i)) >> (~var_2.x % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec2<i32>, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = arg_0.a.x;
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    var var_1 = Struct_1(~min(~max(arg_0.a, arg_3.a), vec2<u32>(20273u, 1u)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 26846i), ~vec2<i32>(9483i, u_input.a.x)), -2147483647i, 2147483647i) << (arg_3.a.x % 32u));
    return vec2<u32>(var_0 ^ 72895u, 4294967295u);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> StorageBuffer {
    let var_0 = 1184f;
    var var_1 = all(select(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(select(true, true, true), any(vec4<bool>(false, true, false, true)), true, true), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), false)), any(vec2<bool>(true, true))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(613f, -167f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_2, -347f), vec2<f32>(-341f, 717f))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_2, 652f), vec2<f32>(arg_2, 666f)))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(461f, arg_2)) + vec2<f32>(932f, var_0)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(var_0 + -1853f)) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1931f, -135f) - vec2<f32>(1000f, -613f)))))));
    var var_3 = func_1();
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -418f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + arg_2)) + _wgslsmith_f_op_f32(floor(-651f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-var_0)))));
    return StorageBuffer(_wgslsmith_div_f32(var_2.x, arg_2), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_2, -517f), vec2<f32>(var_0, 1000f)))))))), _wgslsmith_mod_vec2_u32(abs(_wgslsmith_add_vec2_u32(~vec2<u32>(35857u, 49000u), _wgslsmith_div_vec2_u32(vec2<u32>(19792u, arg_1.a.x), arg_0.a))), _wgslsmith_clamp_vec2_u32(vec2<u32>(~4001u, ~arg_0.a.x), ~vec2<u32>(var_3.a.x, var_3.a.x) ^ ~vec2<u32>(1u, arg_1.a.x), vec2<u32>(arg_1.a.x & var_3.a.x, 11582u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-214f, 944f))))), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_u32(~(~reverseBits(~vec2<u32>(4294967295u, 72536u))), vec2<u32>(1u, 1u));
    global0 = array<Struct_1, 9>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32((4294967295u ^ select(var_0 & 15972u, ~8956u, false)) & ~(~_wgslsmith_mult_u32(var_0, 0u)), ~(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0, var_0, 34764u, var_0), ~vec4<u32>(0u, 4294967295u, 0u, 29385u)) >> (var_0 % 32u))), 9u)];
    var_1 = Struct_1(firstTrailingBit(var_1.a), firstLeadingBit(-38268i));
    let var_2 = !vec3<bool>(false, _wgslsmith_sub_u32(~var_0, var_1.a.x) == ~(~0u), true);
    global1 = array<Struct_1, 1>();
    let x = u_input.a;
    s_output = func_5(Struct_1(~max(vec2<u32>(4294967295u, var_0), var_1.a), -12587i), Struct_1(_wgslsmith_sub_vec2_u32(func_4(func_1(), _wgslsmith_f_op_vec2_f32(vec2<f32>(410f, -1374f) - vec2<f32>(1903f, 471f)), vec2<i32>(var_1.b, 2147483647i), func_1()), _wgslsmith_mod_vec2_u32(abs(var_1.a), abs(vec2<u32>(var_1.a.x, var_1.a.x)))), ~u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(226f))))) + 2199f));
}

