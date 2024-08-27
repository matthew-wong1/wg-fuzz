struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = arg_0;
    global0 = array<f32, 27>();
    let var_1 = Struct_1(4294967295u, -1058f, ~(~_wgslsmith_dot_vec4_i32(u_input.a << (vec4<u32>(1u, 1u, 76149u, u_input.b) % vec4<u32>(32u)), vec4<i32>(arg_0.b.e.x, arg_0.b.c, -1181i, 0i))), u_input.b, arg_0.b.e);
    let var_2 = Struct_2(-168f, Struct_1(~var_0.b.d, arg_0.b.b, _wgslsmith_clamp_i32(1i, (arg_0.b.e.x >> (1u % 32u)) >> (35634u % 32u), 44449i), ~(1u | (arg_0.b.a << (var_0.b.a % 32u))), var_0.b.e), var_0.c);
    let var_3 = vec4<f32>(-757f, var_1.b, var_2.b.b, _wgslsmith_f_op_f32(var_1.b * 1f));
    return _wgslsmith_f_op_f32(ceil(-868f));
}

fn func_2(arg_0: bool) -> Struct_2 {
    global0 = array<f32, 27>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 27u)], global0[_wgslsmith_index_u32(u_input.b, 27u)], -1588f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0[_wgslsmith_index_u32(18277u, 27u)], global0[_wgslsmith_index_u32(u_input.b, 27u)], -1391f)))))))) * _wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 27u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(u_input.b, 27u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1344f)))), vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 27u)]), _wgslsmith_f_op_f32(func_3(Struct_2(global0[_wgslsmith_index_u32(u_input.b, 27u)], Struct_1(u_input.b, global0[_wgslsmith_index_u32(u_input.b, 27u)], u_input.d, u_input.b, u_input.e), true))), global0[_wgslsmith_index_u32(u_input.b, 27u)])));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_0.x, 674f) * vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 27u)], 459f, global0[_wgslsmith_index_u32(4294967295u, 27u)])) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(752f, global0[_wgslsmith_index_u32(u_input.b, 27u)], global0[_wgslsmith_index_u32(u_input.b, 27u)]) - vec3<f32>(283f, var_0.x, 323f)))))));
    global0 = array<f32, 27>();
    global0 = array<f32, 27>();
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1276f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(0u, 27u)])), _wgslsmith_f_op_f32(func_3(Struct_2(global0[_wgslsmith_index_u32(u_input.b, 27u)], Struct_1(4294967295u, -2302f, u_input.e.x, 4294967295u, vec3<i32>(u_input.d, 31383i, u_input.a.x)), arg_0))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), Struct_1(u_input.b, global0[_wgslsmith_index_u32(84613u, 27u)], u_input.c, 31630u, abs(vec3<i32>(-57176i, _wgslsmith_sub_i32(u_input.a.x, -1i), ~u_input.e.x))), select(arg_0, all(select(vec4<bool>(arg_0, arg_0, false, arg_0), select(vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(arg_0, false, false, false), vec4<bool>(false, arg_0, false, arg_0)), select(vec4<bool>(arg_0, false, arg_0, false), vec4<bool>(arg_0, false, true, false), vec4<bool>(arg_0, arg_0, true, arg_0)))), arg_0));
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    global0 = array<f32, 27>();
    let var_0 = -1i;
    global0 = array<f32, 27>();
    let var_1 = func_2(!arg_0.c);
    global0 = array<f32, 27>();
    return var_1.b;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> vec2<i32> {
    let var_0 = abs(vec4<i32>(~(~15419i) | arg_0.e.x, _wgslsmith_sub_i32(2147483647i, u_input.a.x), -u_input.a.x, -33644i));
    var var_1 = arg_2.b;
    let var_2 = !select(select(vec3<bool>(arg_0.c != arg_0.c, true, true), vec3<bool>(true, true, true), all(vec4<bool>(true, true, true, true))), select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, any(vec2<bool>(true, true))), true), true);
    let var_3 = reverseBits(26720i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.e.x >> (0u % 32u), _wgslsmith_mod_i32(-3325i, u_input.a.x)), min(select(vec2<i32>(16570i, -2147483647i), vec2<i32>(arg_2.c, var_0.x), vec2<bool>(false, var_2.x)), arg_2.e.yx)));
    let var_4 = func_4(Struct_2(_wgslsmith_f_op_f32(-arg_1.x), func_2(!select(var_2.x, false, false)).b, any(vec3<bool>(true, true, true))), ~arg_2.a);
    return _wgslsmith_mult_vec2_i32(vec2<i32>(min(arg_2.e.x, 3606i), 0i), ~(~_wgslsmith_div_vec2_i32(reverseBits(arg_2.e.yx), _wgslsmith_mod_vec2_i32(vec2<i32>(-49986i, 41690i), u_input.a.xw))));
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    global0 = array<f32, 27>();
    var var_0 = -select(func_5(Struct_1(~u_input.b, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0.x, 27u)] * global0[_wgslsmith_index_u32(u_input.b, 27u)]), -29905i >> (0u % 32u), 7247u, vec3<i32>(u_input.e.x, 8097i, 4696i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1734f, 1453f, global0[_wgslsmith_index_u32(4294967295u, 27u)])))), func_4(func_2(false), 11656u | u_input.b)), -u_input.a.zw, vec2<bool>(all(vec2<bool>(false, false)), 1f != _wgslsmith_f_op_f32(-1817f * global0[_wgslsmith_index_u32(u_input.b, 27u)])));
    global0 = array<f32, 27>();
    var var_1 = select(abs(u_input.a), countOneBits(u_input.a), true) >> (vec4<u32>(4294967295u, u_input.b, arg_0.x, 5522u) % vec4<u32>(32u));
    let var_2 = arg_0.xzy;
    return Struct_1(u_input.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(520f - global0[_wgslsmith_index_u32(var_2.x, 27u)]))), global0[_wgslsmith_index_u32(var_2.x, 27u)]) * 1000f), var_1.x, _wgslsmith_div_u32(~var_2.x, _wgslsmith_add_u32(~15736u, _wgslsmith_add_u32(4294967295u, _wgslsmith_sub_u32(4294967295u, var_2.x)))), var_1.yxz);
}

fn func_6(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    var var_0 = ~_wgslsmith_mult_i32(_wgslsmith_mult_i32(9461i, _wgslsmith_add_i32(u_input.d, min(-2147483647i, u_input.c))), u_input.a.x);
    let var_1 = ~_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, arg_0.b.a, u_input.b, 0u), vec4<u32>(arg_0.b.d, 4294967295u, 13222u, 1u)) | vec4<u32>(arg_0.b.d, ~arg_0.b.d, 0u, 4294967295u), min(vec4<u32>(u_input.b, 20687u, arg_1, 52116u) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(6641u, 12055u, 1u, u_input.b), vec4<u32>(arg_1, 72250u, arg_1, u_input.b)) % vec4<u32>(32u)), vec4<u32>(1u, arg_0.b.a, 144915u, u_input.b) | ~vec4<u32>(60180u, arg_0.b.a, 1u, 4294967295u)));
    global0 = array<f32, 27>();
    global0 = array<f32, 27>();
    global0 = array<f32, 27>();
    return Struct_1(_wgslsmith_mod_u32(arg_1, 35052u), -975f, 2147483647i & _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(13972i, arg_0.b.c)), arg_0.b.e.zy), ~_wgslsmith_dot_vec2_u32(~abs(vec2<u32>(u_input.b, arg_1)), countOneBits(vec2<u32>(arg_1, u_input.b))), vec3<i32>(_wgslsmith_sub_i32(~2147483647i, ~(2147483647i << (arg_0.b.a % 32u))), arg_0.b.e.x, ~(~5597i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_2(global0[_wgslsmith_index_u32(50701u, 27u)], func_1(~(~vec4<u32>(1u, 0u, 1u, 4294967295u))), all(vec2<bool>(true, true))), _wgslsmith_add_u32(~func_4(func_2(true), u_input.b).a, u_input.b));
    global0 = array<f32, 27>();
    global0 = array<f32, 27>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * -1000f));
    var var_2 = u_input.d;
    var var_3 = func_2(all(select(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), -u_input.e.x >= var_0.c)));
    var var_4 = 10999i;
    var var_5 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), func_1(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_0.d, 69512u, 0u), vec4<u32>(var_3.b.d, 4294967295u, var_3.b.d, var_3.b.a)), vec4<u32>(var_3.b.a, 0u, 0u, 0u)), ~(vec4<u32>(4294967295u, 0u, 61790u, 0u) >> (vec4<u32>(30304u, var_3.b.d, var_3.b.d, var_0.a) % vec4<u32>(32u))))).b);
    global0 = array<f32, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(func_2(!(!var_3.c)).b.b, func_6(func_2(true), ~u_input.b).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a + 602f))), ~(~(~vec2<u32>(4294967295u, 3692u))), u_input.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 27u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), _wgslsmith_div_f32(var_3.a, -487f)), -1857f, 803f) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(round(-304f)), global0[_wgslsmith_index_u32(u_input.b | 50399u, 27u)], -830f, _wgslsmith_f_op_f32(-273f + 614f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-155f, var_1, 2166f, var_0.b), vec4<f32>(184f, -1551f, -116f, -202f))) * vec4<f32>(277f, 787f, global0[_wgslsmith_index_u32(var_3.b.d, 27u)], 343f))))), vec2<f32>(var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2759f, _wgslsmith_f_op_f32(-var_3.b.b))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + -1996f))));
}

