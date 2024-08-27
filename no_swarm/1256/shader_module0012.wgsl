struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: array<vec3<i32>, 15> = array<vec3<i32>, 15>(vec3<i32>(-12726i, 47981i, 0i), vec3<i32>(-1i, 2147483647i, -1i), vec3<i32>(-23739i, 2147483647i, -5780i), vec3<i32>(0i, -3016i, -30851i), vec3<i32>(-1i, -55747i, i32(-2147483648)), vec3<i32>(2147483647i, -1i, -1i), vec3<i32>(-44083i, -1i, -1i), vec3<i32>(21114i, 2147483647i, 15553i), vec3<i32>(0i, -1i, -6113i), vec3<i32>(i32(-2147483648), 13332i, 35689i), vec3<i32>(-40696i, -3123i, 1i), vec3<i32>(19042i, -1i, 1i), vec3<i32>(i32(-2147483648), 1i, -25994i), vec3<i32>(2147483647i, -15102i, -1i), vec3<i32>(36679i, 0i, 2147483647i));

var<private> global2: array<vec3<u32>, 8>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> i32 {
    global2 = array<vec3<u32>, 8>();
    global2 = array<vec3<u32>, 8>();
    var var_0 = !select(vec2<bool>(true, true), select(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)))), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), true));
    let var_1 = ~u_input.a.x;
    global0 = array<Struct_1, 8>();
    return 27538i;
}

fn func_2() -> Struct_4 {
    global2 = array<vec3<u32>, 8>();
    let var_0 = -891f;
    var var_1 = -vec3<i32>(func_3(_wgslsmith_div_f32(-797f, var_0)) & -firstLeadingBit(u_input.a.x), reverseBits(u_input.a.x << (_wgslsmith_add_u32(u_input.c.x, u_input.b.x) % 32u)), u_input.a.x);
    var var_2 = !(!(!select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)))));
    let var_3 = vec2<bool>(var_2.x, true);
    return Struct_4(31733u, vec2<bool>(false, !any(select(vec4<bool>(true, true, var_3.x, var_2.x), vec4<bool>(true, true, false, var_3.x), vec4<bool>(var_2.x, var_2.x, false, var_2.x)))));
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: vec3<bool>) -> Struct_4 {
    global0 = array<Struct_1, 8>();
    global2 = array<vec3<u32>, 8>();
    global0 = array<Struct_1, 8>();
    global0 = array<Struct_1, 8>();
    global1 = array<vec3<i32>, 15>();
    return func_2();
}

fn func_4(arg_0: f32, arg_1: Struct_4) -> f32 {
    let var_0 = Struct_1(_wgslsmith_mod_vec3_i32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(countOneBits(arg_1.a | u_input.b.x), ~u_input.c.x), 15u)], ~global1[_wgslsmith_index_u32(~(~u_input.b.x), 15u)]), reverseBits(~(countOneBits(u_input.a) & u_input.a)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-638f, _wgslsmith_f_op_f32(-arg_0)))));
    var var_1 = var_0.c;
    var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -968f) + _wgslsmith_f_op_vec2_f32(sign(var_0.c))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_1.x)), 930f), var_0.c))));
    var var_2 = u_input.b.yz;
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.c.x)), -1643f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, var_1.x))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.c.x, -1533f, -639f), vec3<f32>(var_1.x, var_0.c.x, 1306f))) - vec3<f32>(-1323f, 146f, 449f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1329f, var_0.c.x, var_1.x) + vec3<f32>(249f, 589f, 644f)))))), firstTrailingBit(u_input.c.zx), global0[_wgslsmith_index_u32(4294967295u, 8u)], var_0.c.x);
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(floor(-1189f)), func_1(Struct_4(1u, vec2<bool>(true, true)), 35260i, vec3<bool>(false, false, false))))), 1430f, _wgslsmith_f_op_f32(f32(-1f) * -692f)), vec2<u32>(1283u, u_input.c.x) << (~(vec2<u32>(u_input.b.x, 151687u) ^ ~u_input.b.xz) % vec2<u32>(32u)), Struct_1(-_wgslsmith_div_vec3_i32(global1[_wgslsmith_index_u32(4294967295u, 15u)], _wgslsmith_mult_vec3_i32(vec3<i32>(18840i, u_input.a.x, -2147483647i), global1[_wgslsmith_index_u32(u_input.c.x, 15u)])), u_input.a, vec2<f32>(_wgslsmith_f_op_f32(select(-1011f, 1f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-608f * 951f)))), 439f);
    let var_1 = var_0.c;
    let var_2 = any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), !(var_0.c.c.x <= 259f)), vec2<bool>(all(func_2().b), false), false));
    let var_3 = var_0;
    global0 = array<Struct_1, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(55921i);
}

