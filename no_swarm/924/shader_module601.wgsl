struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1;

var<private> global2: f32 = 1019f;

var<private> global3: array<vec4<u32>, 20>;

var<private> global4: array<Struct_2, 6>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3) -> f32 {
    global2 = global1.d;
    global3 = array<vec4<u32>, 20>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)));
    var var_1 = ~1u;
    var var_2 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-557f, -1545f, global1.c))) - global1.d) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x + global1.d)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(arg_0.b, 1000f, false))))));
    return _wgslsmith_f_op_f32(-global1.d);
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> i32 {
    let var_0 = arg_1;
    global1 = arg_1;
    let var_1 = var_0.b.x;
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-418f * _wgslsmith_f_op_f32(abs(var_0.d))), 817f, _wgslsmith_f_op_f32(select(-793f, -465f, false)), _wgslsmith_f_op_f32(-1286f * _wgslsmith_f_op_f32(abs(global1.d)))))), _wgslsmith_f_op_f32(arg_1.d - global1.d), vec4<i32>(var_0.b.x, ~(-2147483647i), -_wgslsmith_mod_i32(-arg_1.b.x, countOneBits(-2147483647i)), global1.b.x));
    var_2 = Struct_3(var_2.a, _wgslsmith_f_op_f32(func_3(Struct_3(var_2.a, 434f, var_2.c))), -(~reverseBits(~var_0.b)));
    return -(~(-2147483647i));
}

fn func_1() -> i32 {
    global4 = array<Struct_2, 6>();
    global0 = false;
    global3 = array<vec4<u32>, 20>();
    var var_0 = Struct_1(true, select(~global1.b, _wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(i32(-1i) * -1i, func_2(global1.c, Struct_1(false, vec4<i32>(global1.b.x, global1.b.x, global1.b.x, global1.b.x), true, global1.d)), ~28499i, global1.b.x), vec4<i32>(-26012i, global1.b.x ^ global1.b.x, -11176i, -26001i)), vec4<bool>(select(select(global1.a, global1.c, global1.c), false, !global1.c), _wgslsmith_mult_i32(4001i, 6987i) >= global1.b.x, _wgslsmith_f_op_f32(select(2038f, global1.d, false)) < _wgslsmith_f_op_f32(f32(-1f) * -627f), false)), false, -708f);
    global0 = global1.a;
    return func_2(true == !all(vec2<bool>(var_0.c, true)), Struct_1(false, var_0.b, 1u != (select(4294967295u, 4294967295u, false) >> (max(8955u, 4199u) % 32u)), var_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_i32(~min(vec2<i32>(_wgslsmith_mod_i32(-2147483647i, 2147483647i), _wgslsmith_mult_i32(5774i, u_input.c)), vec2<i32>(func_1(), abs(u_input.b.x))), _wgslsmith_mult_vec2_i32(-u_input.b, vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(u_input.b.x, -2147483647i))));
    global0 = all(vec2<bool>(all(select(select(vec4<bool>(global1.c, global1.c, false, global1.c), vec4<bool>(true, global1.c, global1.a, false), false), !vec4<bool>(true, global1.a, true, true), false & global1.c)), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(93489u, 0u), vec2<u32>(1u, 5331u)), abs(vec2<u32>(70916u, 45509u))) >= 4294967295u));
    global3 = array<vec4<u32>, 20>();
    let var_1 = abs(min(max(vec2<u32>(1u, 1u), vec2<u32>(1u, ~1u)), vec2<u32>(~1u, 1u)));
    global3 = array<vec4<u32>, 20>();
    global2 = -1517f;
    let var_2 = (-_wgslsmith_dot_vec2_i32(var_0, var_0) | -_wgslsmith_clamp_i32(~global1.b.x, 0i, var_0.x)) << ((36127u | ~(var_1.x << (1u % 32u))) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1006f, global1.d)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-410f, 788f) + vec2<f32>(-612f, global1.d))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d, -507f)), ~var_1.x == (var_1.x ^ 1u)))));
}

