struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 28>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32) -> bool {
    var var_0 = vec2<i32>(u_input.a ^ (u_input.a | max(1i, -1i)), u_input.a);
    global0 = array<vec4<i32>, 28>();
    let var_1 = Struct_2(vec4<bool>(true || !arg_0.x, arg_0.x, true, any(vec2<bool>(0u > arg_1, true))), ~_wgslsmith_div_vec2_i32(abs(firstLeadingBit(vec2<i32>(var_0.x, 21479i))), select(~vec2<i32>(var_0.x, var_0.x), abs(vec2<i32>(2147483647i, -8401i)), true)));
    var var_2 = vec3<i32>(-var_1.b.x, -14051i, var_1.b.x);
    var var_3 = -814f;
    return !(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-840f * 1259f)), _wgslsmith_f_op_f32(trunc(1333f)), var_1.a.x)) >= -899f);
}

fn func_2(arg_0: vec2<u32>) -> vec4<bool> {
    global0 = array<vec4<i32>, 28>();
    global0 = array<vec4<i32>, 28>();
    var var_0 = true;
    global0 = array<vec4<i32>, 28>();
    let var_1 = Struct_2(select(vec4<bool>(true, all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), func_3(vec3<bool>(true, true, true), _wgslsmith_sub_u32(u_input.b, u_input.b)), select(true, true, all(vec3<bool>(true, true, true)))), select(vec4<bool>(true, false, 4294967295u == arg_0.x, u_input.a < u_input.a), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))), vec4<bool>(true, true, true, true)), vec2<i32>(2147483647i, _wgslsmith_dot_vec3_i32(~select(vec3<i32>(u_input.a, u_input.a, -6143i), vec3<i32>(-975i, u_input.a, u_input.a), vec3<bool>(true, true, true)), -vec3<i32>(13993i, -18870i, 1i) >> ((vec3<u32>(1u, arg_0.x, arg_0.x) >> (vec3<u32>(arg_0.x, arg_0.x, arg_0.x) % vec3<u32>(32u))) % vec3<u32>(32u)))));
    return vec4<bool>(!(var_1.a.x || all(vec3<bool>(var_1.a.x, var_1.a.x, true))), all(select(!var_1.a.xx, var_1.a.xz, select(true, true, u_input.b > arg_0.x))), true, var_1.a.x);
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: bool) -> Struct_2 {
    let var_0 = -471f;
    let var_1 = firstTrailingBit(vec2<i32>(reverseBits(1i), i32(-1i) * -(u_input.a >> (arg_1 % 32u))));
    var var_2 = vec2<i32>(-3516i, u_input.a);
    let var_3 = var_2.x;
    global0 = array<vec4<i32>, 28>();
    return Struct_2(arg_0, _wgslsmith_sub_vec2_i32(vec2<i32>(i32(-1i) * -var_1.x, ~7455i), var_1));
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    global0 = array<vec4<i32>, 28>();
    let var_0 = _wgslsmith_div_vec2_i32(arg_0.b, select(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b.x, arg_0.b.x, -7595i), max(vec3<i32>(-3908i, arg_0.b.x, -1i), vec3<i32>(u_input.a, -2147483647i, 2147483647i))), ~reverseBits(arg_0.b.x)), vec2<i32>(u_input.a, -2147483647i) >> ((select(vec2<u32>(56676u, u_input.b), vec2<u32>(u_input.b, 0u), vec2<bool>(false, true)) ^ vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u)), arg_0.a.yw));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1277f, 1405f))) * _wgslsmith_div_vec2_f32(vec2<f32>(-1100f, -821f), vec2<f32>(-1240f, 1000f)))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1112f, -1733f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(614f, 2516f) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-232f, -724f))))))));
    let var_2 = func_4(select(!arg_0.a, func_2(~(~vec2<u32>(21353u, u_input.b))), vec4<bool>(all(select(vec3<bool>(true, arg_0.a.x, arg_0.a.x), vec3<bool>(true, arg_0.a.x, false), true)), false, true, !arg_0.a.x && (1552f >= var_1.x))), 0u, any(func_2(vec2<u32>(141226u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 77985u), vec2<u32>(u_input.b, u_input.b)))).xyy));
    let var_3 = true || !arg_0.a.x;
    return Struct_3(arg_0);
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_3) -> vec3<u32> {
    var var_0 = arg_1.a;
    let var_1 = vec2<bool>(1i != _wgslsmith_mult_i32(abs(arg_1.a.b.x), -628i), var_0.a.x);
    let var_2 = u_input.b;
    var_0 = func_1(func_4(var_0.a, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.b, 0u, 1u), vec3<u32>(76462u, u_input.b, var_2), vec3<bool>(arg_1.a.a.x, var_1.x, var_1.x)), select(vec3<u32>(u_input.b, u_input.b, 91680u), vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<bool>(arg_1.a.a.x, true, var_1.x))), 106047u), !arg_0.x)).a;
    var var_3 = vec3<i32>(var_0.b.x, var_0.b.x, arg_1.a.b.x);
    return vec3<u32>(1u, ~1u, 1u ^ _wgslsmith_mult_u32(var_2, 1u));
}

fn func_6(arg_0: bool, arg_1: vec3<u32>, arg_2: vec4<f32>) -> Struct_2 {
    global0 = array<vec4<i32>, 28>();
    let var_0 = !(!vec3<bool>(false, any(select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(true, true, arg_0), vec3<bool>(true, arg_0, false))), arg_0));
    let var_1 = true;
    global0 = array<vec4<i32>, 28>();
    let var_2 = ~arg_1;
    return Struct_2(!func_4(func_1(Struct_2(vec4<bool>(true, false, var_1, var_1), vec2<i32>(-2147483647i, 0i))).a.a, ~4294967295u, func_1(func_4(vec4<bool>(var_1, false, arg_0, true), 10401u, var_0.x)).a.a.x).a, -(vec2<i32>(1i, u_input.a) | min(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(u_input.a, -1i)), -vec2<i32>(u_input.a, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 28>();
    var var_0 = Struct_3(func_6(select(true || any(vec3<bool>(true, true, true)), true, (i32(-1i) * -1i) != reverseBits(u_input.a)), _wgslsmith_mult_vec3_u32(func_5(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false)), func_1(Struct_2(vec4<bool>(false, false, true, true), vec2<i32>(u_input.a, 0i)))), ~(~vec3<u32>(0u, u_input.b, 0u))), vec4<f32>(-304f, 675f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2455f - 1000f)), _wgslsmith_f_op_f32(-1f))));
    global0 = array<vec4<i32>, 28>();
    var var_1 = _wgslsmith_div_u32(firstTrailingBit(~(~_wgslsmith_mod_u32(1u, u_input.b))), u_input.b >> (4294967295u % 32u));
    var var_2 = ~vec3<u32>(_wgslsmith_div_u32(72737u, ~(u_input.b & 0u)), 54905u, 17226u);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 1f, 1f))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-2108f)), -1768f)), -389f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-124f))))), 282f, _wgslsmith_f_op_f32(abs(120f))));
    var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_3.x, var_3.x, 1122f, 1751f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x - var_3.x) - -1515f), var_3.x, _wgslsmith_f_op_f32(-2547f + _wgslsmith_f_op_f32(sign(1738f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.x)))))));
    let var_4 = 1i;
    var_1 = ~var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-268f, -928f, -826f, var_3.x))))), u_input.b ^ var_2.x, var_2.x);
}

