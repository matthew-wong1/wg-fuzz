struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: vec3<i32>,
    d: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 27> = array<vec3<f32>, 27>(vec3<f32>(-1418f, 674f, -1000f), vec3<f32>(-1235f, 1402f, 1188f), vec3<f32>(133f, 190f, -149f), vec3<f32>(170f, 470f, -886f), vec3<f32>(425f, -428f, 391f), vec3<f32>(1000f, -1000f, 675f), vec3<f32>(-2983f, -303f, -673f), vec3<f32>(-289f, 299f, 848f), vec3<f32>(-1966f, 1223f, 1108f), vec3<f32>(725f, 311f, -955f), vec3<f32>(933f, -708f, 576f), vec3<f32>(687f, 1210f, -1116f), vec3<f32>(876f, -138f, 1430f), vec3<f32>(-641f, 1147f, -387f), vec3<f32>(165f, -140f, 977f), vec3<f32>(-318f, 1000f, -2333f), vec3<f32>(316f, -1700f, 1662f), vec3<f32>(-1305f, 828f, -2337f), vec3<f32>(798f, -550f, -726f), vec3<f32>(1111f, 521f, 1000f), vec3<f32>(-683f, 1000f, 1084f), vec3<f32>(-341f, -1000f, -865f), vec3<f32>(168f, -1128f, 1080f), vec3<f32>(-1325f, 2343f, -187f), vec3<f32>(-1000f, -1162f, -821f), vec3<f32>(1158f, 383f, -733f), vec3<f32>(-104f, 594f, -1649f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec4<f32> {
    global0 = array<vec3<f32>, 27>();
    var var_0 = ~u_input.b;
    var var_1 = Struct_1(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1240f)) * -314f))));
    var var_2 = true;
    var_1 = Struct_1(abs(-2147483647i ^ _wgslsmith_dot_vec3_i32(~u_input.a.yyw, _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 43229i, u_input.a.x), vec3<i32>(0i, var_1.a, -418i)))), var_1.b);
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(829f, var_1.b, -513f, var_1.b) * vec4<f32>(var_1.b, -839f, var_1.b, -857f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, -780f, var_1.b, var_1.b) + vec4<f32>(-657f, -1701f, var_1.b, var_1.b))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-468f, 399f, 258f, 231f), vec4<f32>(1967f, var_1.b, -999f, -1401f)))))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<i32>) -> f32 {
    let var_0 = Struct_2(Struct_1(countOneBits(1112i), arg_0.x));
    global0 = array<vec3<f32>, 27>();
    var var_1 = Struct_3(u_input.c);
    let var_2 = false;
    global0 = array<vec3<f32>, 27>();
    return _wgslsmith_f_op_f32(trunc(var_0.a.b));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: i32, arg_3: vec4<u32>) -> Struct_4 {
    let var_0 = Struct_1(7222i, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1546f, 1425f, 2586f, 643f), vec4<f32>(967f, -227f, -634f, -417f))) + _wgslsmith_f_op_vec4_f32(func_3())), abs(vec3<i32>(-1i) * -vec3<i32>(-17906i, arg_1.c.x, u_input.a.x)))));
    global0 = array<vec3<f32>, 27>();
    global0 = array<vec3<f32>, 27>();
    var var_1 = arg_1;
    var var_2 = u_input.b;
    return arg_1;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> f32 {
    let var_0 = arg_0.c;
    global0 = array<vec3<f32>, 27>();
    let var_1 = vec2<bool>(select(true, any(!vec4<bool>(arg_0.b, false, true, false)), (arg_2.a.b <= _wgslsmith_f_op_f32(floor(-1000f))) | (all(vec4<bool>(false, false, arg_0.b, true)) && select(arg_0.b, true, false))), false);
    global0 = array<vec3<f32>, 27>();
    global0 = array<vec3<f32>, 27>();
    return _wgslsmith_f_op_vec4_f32(func_3()).x;
}

fn func_1(arg_0: Struct_5) -> Struct_4 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-arg_0.e.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(func_2(vec4<u32>(45498u, 4294967295u, 56340u, arg_0.d), Struct_4(arg_0.b.x, false, vec3<i32>(arg_0.c, 31932i, 32680i), Struct_3(1u)), 1i, vec4<u32>(arg_0.b.x, u_input.b.x, 0u, u_input.b.x)), arg_0.e, Struct_2(Struct_1(26549i, -335f)), u_input.c)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-583f * arg_0.e.b), arg_0.e.b)))));
    let var_1 = arg_0.b << (arg_0.b % vec4<u32>(32u));
    let var_2 = var_1.x;
    global0 = array<vec3<f32>, 27>();
    var var_3 = arg_0;
    return Struct_4(_wgslsmith_sub_u32(var_1.x, arg_0.d), false, countOneBits(vec3<i32>(u_input.a.x, 1i, _wgslsmith_mod_i32(_wgslsmith_add_i32(var_3.e.a, -1i), min(arg_0.e.a, 0i)))), func_2(_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(var_2, arg_0.d, 51316u, 30776u)), vec4<u32>(var_1.x, 3608u, var_2, arg_0.b.x)) >> ((var_3.b & _wgslsmith_sub_vec4_u32(var_1, vec4<u32>(95199u, u_input.b.x, u_input.c, var_2))) % vec4<u32>(32u)), func_2(countOneBits(abs(var_1)), func_2(var_3.b, func_2(var_1, Struct_4(var_2, false, vec3<i32>(1i, u_input.a.x, arg_0.c), Struct_3(var_1.x)), var_3.e.a, var_3.b), -1i, vec4<u32>(var_1.x, 1u, var_3.b.x, var_2)), ~(-12243i) ^ arg_0.e.a, ~vec4<u32>(var_1.x, arg_0.b.x, 41385u, arg_0.b.x) << ((arg_0.b ^ vec4<u32>(var_2, 4294967295u, 2955u, u_input.c)) % vec4<u32>(32u))), i32(-1i) * -arg_0.c, vec4<u32>(_wgslsmith_clamp_u32(u_input.c << (var_1.x % 32u), _wgslsmith_mult_u32(var_3.d, var_1.x), _wgslsmith_sub_u32(arg_0.b.x, 0u)), ~u_input.c, _wgslsmith_sub_u32(0u, _wgslsmith_clamp_u32(var_2, 0u, u_input.c)), 0u)).d);
}

fn func_6(arg_0: Struct_4) -> Struct_1 {
    let var_0 = ~u_input.b;
    global0 = array<vec3<f32>, 27>();
    global0 = array<vec3<f32>, 27>();
    global0 = array<vec3<f32>, 27>();
    var var_1 = Struct_2(Struct_1(abs(-5426i), -192f));
    return Struct_1(_wgslsmith_clamp_i32(-12579i, _wgslsmith_clamp_i32(-2147483647i, -(var_1.a.a >> (arg_0.a % 32u)), -1i), -2328i), -1000f);
}

fn func_7(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(u_input.b.x, 27u)] + global0[_wgslsmith_index_u32(0u, 27u)]))))));
    var var_1 = Struct_2(arg_0);
    var_1 = Struct_2(arg_0);
    global0 = array<vec3<f32>, 27>();
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) == _wgslsmith_f_op_f32(-var_0.x);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_7(func_6(func_1(Struct_5(-5815i, vec4<u32>(18219u, 10247u, u_input.c, u_input.b.x), u_input.a.x, 107906u, Struct_1(2369i, -1000f)))), vec4<bool>(all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true)), any(vec4<bool>(true, true, true, true)), true, true), 0u >= u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.a.b, var_0.a.b, 2326f, 348f), vec4<f32>(-531f, var_0.a.b, 609f, var_0.a.b))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.a.b, var_0.a.b, var_0.a.b, 275f), vec4<f32>(var_0.a.b, 422f, 1350f, 823f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b, 162f, -779f, var_0.a.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-281f, 935f, var_0.a.b, 1000f))))))), vec2<i32>(-1i, 1429i), vec4<f32>(var_0.a.b, var_0.a.b, -157f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1263f))))));
}

