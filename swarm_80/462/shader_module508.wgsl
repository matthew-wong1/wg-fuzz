struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec3<bool>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: u32,
    d: f32,
    e: Struct_2,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec2<u32>(7339u, 15433u)), Struct_2(vec2<u32>(35577u, 4294967295u)), Struct_2(vec2<u32>(28132u, 23095u)), Struct_2(vec2<u32>(47264u, 55975u)), Struct_2(vec2<u32>(57344u, 43002u)), Struct_2(vec2<u32>(35458u, 0u)), Struct_2(vec2<u32>(0u, 4294967295u)), Struct_2(vec2<u32>(0u, 86014u)), Struct_2(vec2<u32>(79328u, 52577u)), Struct_2(vec2<u32>(10987u, 1u)), Struct_2(vec2<u32>(40390u, 0u)), Struct_2(vec2<u32>(0u, 18844u)), Struct_2(vec2<u32>(17279u, 75667u)), Struct_2(vec2<u32>(4294967295u, 7753u)), Struct_2(vec2<u32>(23254u, 1792u)), Struct_2(vec2<u32>(0u, 0u)), Struct_2(vec2<u32>(4294967295u, 28401u)), Struct_2(vec2<u32>(18150u, 0u)), Struct_2(vec2<u32>(59434u, 0u)), Struct_2(vec2<u32>(10220u, 0u)), Struct_2(vec2<u32>(2925u, 22212u)), Struct_2(vec2<u32>(53253u, 1098u)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: f32) -> vec4<u32> {
    global0 = array<Struct_2, 22>();
    var var_0 = !(!select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(all(vec3<bool>(true, true, true)), true), any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false))));
    return ~_wgslsmith_div_vec4_u32(~vec4<u32>(_wgslsmith_sub_u32(u_input.b.x, 1u), 1u, 1u, ~arg_1), ~(~vec4<u32>(arg_1, arg_1, arg_1, u_input.b.x) | ~vec4<u32>(4294967295u, u_input.b.x, 0u, u_input.b.x)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec2<bool>) -> bool {
    global0 = array<Struct_2, 22>();
    let var_0 = _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a << (u_input.b.x % 32u), ~u_input.a), select(vec2<i32>(~28923i, ~u_input.a), ~_wgslsmith_mult_vec2_i32(vec2<i32>(11975i, -34283i), vec2<i32>(-24950i, u_input.a)), all(select(vec4<bool>(arg_2.x, true, true, arg_2.x), vec4<bool>(arg_1, arg_2.x, arg_2.x, false), vec4<bool>(arg_1, arg_2.x, false, arg_2.x))))) << (~u_input.b.x % 32u);
    global0 = array<Struct_2, 22>();
    global0 = array<Struct_2, 22>();
    global0 = array<Struct_2, 22>();
    return select(any(select(!select(vec4<bool>(true, arg_2.x, arg_1, false), vec4<bool>(true, true, arg_2.x, false), vec4<bool>(arg_2.x, arg_1, arg_2.x, false)), !(!vec4<bool>(arg_2.x, true, arg_2.x, false)), vec4<bool>(all(vec2<bool>(arg_2.x, false)), var_0 < var_0, true, all(vec2<bool>(false, arg_1))))), arg_2.x, false);
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: vec3<bool>) -> bool {
    var var_0 = Struct_5(vec3<u32>(30782u, max(u_input.b.x, _wgslsmith_sub_u32(60312u | u_input.b.x, ~u_input.b.x)), ~u_input.b.x), !vec3<bool>(true, select(false, arg_2.x, arg_2.x) == true, !(!arg_2.x)), select(!vec4<bool>(arg_2.x, func_3(u_input.b.x, false, arg_2.yx), true, !arg_2.x), select(select(select(vec4<bool>(arg_2.x, true, false, true), vec4<bool>(false, arg_2.x, false, arg_2.x), arg_2.x), select(vec4<bool>(arg_2.x, true, arg_2.x, false), vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, false, false, false)), !vec4<bool>(false, false, false, arg_2.x)), select(!vec4<bool>(arg_2.x, true, false, arg_2.x), vec4<bool>(false, arg_2.x, true, arg_2.x), true), vec4<bool>(true, true, !arg_2.x, arg_2.x)), vec4<bool>(u_input.b.x != u_input.b.x, all(select(vec3<bool>(arg_2.x, false, false), vec3<bool>(true, true, arg_2.x), vec3<bool>(arg_2.x, false, arg_2.x))), any(vec3<bool>(true, true, true)), false)));
    let var_1 = _wgslsmith_sub_vec4_u32(max(vec4<u32>(_wgslsmith_sub_u32(1u, var_0.a.x), func_1(_wgslsmith_f_op_vec3_f32(-arg_1.ywy), _wgslsmith_add_u32(u_input.b.x, u_input.b.x), arg_1.x).x, _wgslsmith_clamp_u32(~u_input.b.x, countOneBits(var_0.a.x), 848u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, var_0.a.x), vec2<u32>(var_0.a.x, 61834u))), _wgslsmith_div_vec4_u32(~(~vec4<u32>(var_0.a.x, u_input.b.x, 0u, 56997u)), ~abs(vec4<u32>(u_input.b.x, 0u, 0u, 4294967295u)))), ~select(~countOneBits(vec4<u32>(u_input.b.x, u_input.b.x, var_0.a.x, u_input.b.x)), select(~vec4<u32>(1u, var_0.a.x, u_input.b.x, 54899u), ~vec4<u32>(41654u, var_0.a.x, 3781u, u_input.b.x), true), false));
    var_0 = Struct_5(~vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.b.x, var_1.x), 4294967295u), var_0.a.x >> (~23754u % 32u), 95473u), select(var_0.c.zzx, arg_2, !var_0.c.x), vec4<bool>(true, true & select(all(var_0.b), true, false == var_0.b.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(min(arg_1.x, -212f)))) != arg_0, any(vec4<bool>(arg_2.x || arg_2.x, true, true, var_0.c.x))));
    let var_2 = ~_wgslsmith_dot_vec4_u32(~(var_1 << (var_1 % vec4<u32>(32u))) & var_1, _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_div_u32(var_1.x, 28014u), _wgslsmith_dot_vec3_u32(var_0.a, vec3<u32>(82380u, u_input.b.x, 14680u)), 0u, select(58971u, u_input.b.x, true)), vec4<u32>(var_1.x << (18685u % 32u), var_1.x, ~var_1.x, 106086u)));
    return var_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(~func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(303f, -1710f, 109f), vec3<f32>(-158f, -666f, -466f), vec3<bool>(true, true, true)))), abs(~u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-325f + -143f) + _wgslsmith_f_op_f32(min(218f, 259f)))));
    let var_1 = Struct_4(~_wgslsmith_mult_u32(~u_input.b.x, ~4294967295u), Struct_3(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), func_2(1401f, vec4<f32>(-1451f, 438f, -1908f, 576f), vec3<bool>(true, false, false))), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true))), global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.b.x | var_0.x, u_input.b.x), 22u)], select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false), vec3<bool>(24606u != var_0.x, -10936i < u_input.a, all(vec3<bool>(false, true, true))), true), _wgslsmith_div_vec4_f32(vec4<f32>(-2388f, _wgslsmith_f_op_f32(-1179f * 1126f), _wgslsmith_f_op_f32(step(1251f, 1449f)), _wgslsmith_div_f32(370f, -258f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(601f, -1640f, 570f, 762f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-310f, -612f, -602f, 681f))))), ~var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-982f + -1061f), 2127f)), global0[_wgslsmith_index_u32(u_input.b.x, 22u)]);
    global0 = array<Struct_2, 22>();
    let var_2 = select(vec2<bool>(var_1.b.a.x, any(var_1.b.a)), !vec2<bool>(!select(false, var_1.b.c.x, false), true), (((384f > var_1.d) | var_1.b.a.x) || func_3(abs(4294967295u), select(var_1.b.c.x, var_1.b.a.x, false), !vec2<bool>(var_1.b.c.x, var_1.b.a.x))) || var_1.b.c.x);
    global0 = array<Struct_2, 22>();
    let var_3 = var_1.e.a.x;
    var var_4 = var_1.e.a;
    var_4 = min(~var_0.zx, ~vec2<u32>(1u, ~var_0.x));
    global0 = array<Struct_2, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(37592u, ~31778u, _wgslsmith_dot_vec2_u32(u_input.b, ~(u_input.b ^ var_1.e.a))));
}

