struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: f32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 17> = array<vec3<u32>, 17>(vec3<u32>(78184u, 0u, 5528u), vec3<u32>(44399u, 0u, 44347u), vec3<u32>(46943u, 0u, 105310u), vec3<u32>(25599u, 1u, 4294967295u), vec3<u32>(4294967295u, 30772u, 1u), vec3<u32>(57118u, 43180u, 1u), vec3<u32>(9295u, 0u, 0u), vec3<u32>(0u, 4294967295u, 30240u), vec3<u32>(4294967295u, 1u, 33570u), vec3<u32>(1u, 24967u, 40900u), vec3<u32>(10764u, 52621u, 1u), vec3<u32>(1u, 1u, 27847u), vec3<u32>(2357u, 4294967295u, 0u), vec3<u32>(1u, 0u, 0u), vec3<u32>(0u, 0u, 0u), vec3<u32>(38782u, 0u, 4294967295u), vec3<u32>(6730u, 88706u, 4294967295u));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: vec2<i32>) -> bool {
    global0 = array<vec3<u32>, 17>();
    global0 = array<vec3<u32>, 17>();
    var var_0 = !(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true))));
    let var_1 = Struct_4(vec3<bool>(firstTrailingBit(_wgslsmith_mod_u32(0u, 4294967295u)) > ~u_input.a.x, false != any(!vec4<bool>(false, var_0.x, var_0.x, false)), var_0.x));
    var_0 = !vec3<bool>(true, var_1.a.x, !(!(1u == u_input.a.x)));
    return select(false, var_1.a.x, (_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(arg_0, arg_0), u_input.b.yx), arg_2) >> (arg_1.x % 32u)) >= abs(~arg_0));
}

fn func_3(arg_0: bool, arg_1: bool) -> f32 {
    var var_0 = Struct_3(Struct_1(~(~53209u), countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, u_input.c, -60121i), vec3<i32>(u_input.b.x, -1i, u_input.c))) ^ firstLeadingBit(vec3<i32>(-19492i, u_input.b.x, 33199i))), !vec3<bool>(arg_0, true, ~u_input.b.x != 49567i));
    var var_1 = Struct_4(var_0.b);
    var var_2 = Struct_4(!(!(!vec3<bool>(true, var_1.a.x, true))));
    let var_3 = u_input.a.x;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-900f - -678f) - 1095f)), 2251f) * -1000f);
    return var_4;
}

fn func_4(arg_0: f32, arg_1: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0, arg_0, 1723f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1147f, arg_0, 257f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 315f, arg_0)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0, _wgslsmith_f_op_f32(arg_0 - 683f), arg_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-478f, -285f, 925f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1171f, arg_0))))), any(!(!vec4<bool>(arg_1, true, arg_1, arg_1))))));
    var var_1 = select(vec4<bool>(~u_input.c == (i32(-1i) * -27522i), !any(select(vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(arg_1, true, arg_1, true), vec4<bool>(false, arg_1, false, false))), ~u_input.a.x < ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 62669u, 0u), global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), select(true, 1127f == arg_0, (u_input.c <= u_input.c) != true)), !select(!vec4<bool>(arg_1, arg_1, false, true), vec4<bool>(1i >= u_input.b.x, all(vec4<bool>(arg_1, false, true, arg_1)), false, arg_1), select(select(vec4<bool>(true, false, arg_1, arg_1), vec4<bool>(true, arg_1, arg_1, true), false), vec4<bool>(true, false, arg_1, arg_1), true)), !select(vec4<bool>(all(vec4<bool>(arg_1, false, arg_1, arg_1)), arg_1 && false, arg_1, true), !vec4<bool>(arg_1, false, arg_1, arg_1), select(4294967295u, 3078u, false) < (u_input.a.x ^ u_input.a.x)));
    var var_2 = arg_1;
    var var_3 = u_input.a.x != (~7030u ^ _wgslsmith_mod_u32(1u, 1u >> (abs(u_input.a.x) % 32u)));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_0.zz)));
    return true;
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec2<u32>) -> bool {
    global0 = array<vec3<u32>, 17>();
    let var_0 = Struct_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-174f, 2439f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1580f), -358f))))), vec2<f32>(226f, -475f), select(~vec3<u32>(arg_0.a.a, 0u, _wgslsmith_add_u32(0u, u_input.a.x)), ~(~(~vec3<u32>(1u, 22125u, 4294967295u))), select(arg_0.b, vec3<bool>(false, arg_1.x, true), select(vec3<bool>(true, true, false), arg_0.b, arg_0.b.x))), arg_1.x);
    let var_1 = var_0.b;
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1));
    return all(arg_0.b.yy);
}

fn func_1() -> bool {
    let var_0 = Struct_4(select(select(vec3<bool>(false, func_2(u_input.b.x, u_input.a, u_input.b.zx), true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)))));
    global0 = array<vec3<u32>, 17>();
    var var_1 = Struct_3(Struct_1(u_input.a.x, vec3<i32>(firstLeadingBit(u_input.b.x), max(1i, _wgslsmith_sub_i32(1i, u_input.c)), u_input.b.x)), var_0.a);
    var_1 = Struct_3(Struct_1(~var_1.a.a, ~u_input.b), !var_0.a);
    let var_2 = abs(12422u);
    return func_5(Struct_3(var_1.a, !vec3<bool>(true, var_0.a.x, !var_1.b.x)), vec2<bool>(func_4(_wgslsmith_f_op_f32(func_3(true, any(vec3<bool>(true, var_0.a.x, var_0.a.x)))), true), true), ~firstTrailingBit(firstTrailingBit(u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(true, !(!(!select(true, true, false))), true);
    var var_1 = true;
    let var_2 = -1i;
    let var_3 = Struct_4(vec3<bool>(false, !any(vec4<bool>(true, true, false, false)), true));
    var var_4 = countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(6313u, 0u), u_input.a));
    var_0 = select(true, var_3.a.x && func_1(), true);
    var var_5 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b | vec3<i32>(~4893i, max(_wgslsmith_dot_vec3_i32(vec3<i32>(-11550i, u_input.b.x, var_2), vec3<i32>(var_2, u_input.c, -4158i)), _wgslsmith_dot_vec4_i32(vec4<i32>(15175i, u_input.c, var_2, 0i), vec4<i32>(-2147483647i, var_2, 19713i, 1i))), -1i), _wgslsmith_add_vec2_i32(vec2<i32>(1i, -9731i ^ -var_2), reverseBits(vec2<i32>(-37811i, u_input.c))), 1u & firstTrailingBit(firstLeadingBit(u_input.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
}

