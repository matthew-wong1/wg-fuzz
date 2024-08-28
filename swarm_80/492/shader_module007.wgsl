struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec2<bool>,
    d: i32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 29>;

var<private> global1: array<vec4<f32>, 21>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> u32 {
    var var_0 = vec3<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, u_input.a.x > 7178i, true))), true, !all(vec4<bool>(true, true, true, true)));
    var_0 = vec3<bool>(false, true, all(vec2<bool>(var_0.x, var_0.x)));
    global1 = array<vec4<f32>, 21>();
    global1 = array<vec4<f32>, 21>();
    var_0 = vec3<bool>(var_0.x, false, false);
    return 0u;
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = -664f;
    let var_1 = firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(firstLeadingBit(arg_0.x), func_3(), 1u), arg_0));
    var var_2 = true;
    var_2 = false;
    var var_3 = u_input.a.x;
    return Struct_1(~_wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(var_1.x, 1u) << (vec2<u32>(arg_0.x, arg_0.x) % vec2<u32>(32u))), arg_0.yx), !vec2<bool>(!all(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true))), vec3<i32>(abs(-1i << (var_1.x % 32u)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(-6603i, u_input.b & u_input.a.x), 2656i), _wgslsmith_mult_i32(u_input.b, 0i)));
}

fn func_1(arg_0: vec4<f32>) -> Struct_3 {
    global1 = array<vec4<f32>, 21>();
    global1 = array<vec4<f32>, 21>();
    global1 = array<vec4<f32>, 21>();
    let var_0 = func_2(_wgslsmith_div_vec3_u32(~firstLeadingBit(vec3<u32>(1u, 1u, 1u)), ~vec3<u32>(min(4294967295u, 0u), 1u, 0u)));
    return Struct_3(var_0.b.x, Struct_2(var_0.c.yx | -vec2<i32>(30909i, 29931i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(359f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x * -893f), 271f, -666f, _wgslsmith_div_f32(1365f, 1016f)) - _wgslsmith_f_op_vec4_f32(arg_0 + _wgslsmith_f_op_vec4_f32(max(arg_0, arg_0))))), var_0.b, 13883i, ~select(vec4<i32>(1i, var_0.c.x | 49081i, -2147483647i, abs(var_0.c.x)), _wgslsmith_div_vec4_i32(~vec4<i32>(9753i, 22255i, -2147483647i, u_input.a.x), firstTrailingBit(vec4<i32>(u_input.a.x, u_input.a.x, 1i, -1i))), all(select(vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, true), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, false), var_0.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 21>();
    global1 = array<vec4<f32>, 21>();
    let var_0 = func_1(global1[_wgslsmith_index_u32(34609u, 21u)]);
    global0 = array<vec4<u32>, 29>();
    let var_1 = -_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.a.x, ~u_input.a.x, 4672i, -u_input.a.x), firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(6115i, -44402i, var_0.b.a.x, -2147483647i) << (vec4<u32>(64568u, 1u, 19686u, 29089u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(22216i, var_0.e.x, 53007i, u_input.a.x), var_0.e))));
    let var_2 = !all(!vec4<bool>(true, var_0.a, var_0.a, any(vec3<bool>(var_0.a, true, false))));
    global1 = array<vec4<f32>, 21>();
    let var_3 = select(select(vec4<bool>(all(!vec4<bool>(var_0.a, false, var_2, true)), var_0.c.x, true, var_2), vec4<bool>(false, any(select(vec4<bool>(false, true, false, var_0.a), vec4<bool>(var_0.a, var_2, var_0.c.x, true), var_0.a)), true, !any(vec4<bool>(true, var_2, var_2, false))), select(!(!vec4<bool>(true, false, true, var_2)), select(!vec4<bool>(var_2, false, true, var_2), vec4<bool>(true, var_2, var_0.c.x, var_2), select(var_0.c.x, true, true)), true)), vec4<bool>(!var_2, false, false, var_0.c.x), all(var_0.c));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-339f + var_0.b.b), 372f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1622f + var_0.b.c.x) + -913f)))));
}

