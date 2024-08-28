struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 8> = array<vec3<bool>, 8>(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> Struct_4 {
    let var_0 = _wgslsmith_mod_vec2_i32(abs(_wgslsmith_add_vec2_i32(-u_input.d.xw, u_input.b)), vec2<i32>(-1i) * -firstLeadingBit(~vec2<i32>(-19139i, arg_3)));
    var var_1 = Struct_4(Struct_2(-240f));
    let var_2 = vec3<f32>(-1154f, arg_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-113f * _wgslsmith_f_op_f32(trunc(1000f))) + arg_2.a.x));
    var var_3 = true;
    let var_4 = Struct_4(var_1.a);
    return var_4;
}

fn func_2(arg_0: vec2<bool>, arg_1: bool, arg_2: i32, arg_3: Struct_4) -> vec2<f32> {
    let var_0 = 0u;
    global0 = array<vec3<bool>, 8>();
    let var_1 = all(!select(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(47444u, var_0), 8u)], !vec3<bool>(true, true, arg_1), true));
    global0 = array<vec3<bool>, 8>();
    var var_2 = true;
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a.a, arg_3.a.a))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1534f, arg_3.a.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(610f, arg_3.a.a)), ~arg_2 >= (arg_2 & arg_2))))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1) -> f32 {
    global0 = array<vec3<bool>, 8>();
    global0 = array<vec3<bool>, 8>();
    let var_0 = ~_wgslsmith_mod_i32(u_input.b.x & u_input.c, ~_wgslsmith_mult_i32(_wgslsmith_sub_i32(43783i, 42733i), abs(u_input.d.x)));
    var var_1 = u_input.d.x;
    let var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(1u, _wgslsmith_add_u32(10068u, 1u)) & ~vec2<u32>(u_input.e.x, u_input.e.x), u_input.e.wz | (vec2<u32>(u_input.e.x, 1u) >> (~vec2<u32>(25109u, u_input.a) % vec2<u32>(32u)))) & _wgslsmith_sub_vec2_u32(abs(vec2<u32>(53645u, countOneBits(1u))), _wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, u_input.e.x), u_input.e.zw, select(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), u_input.e.xx), select(vec2<u32>(u_input.e.x, u_input.e.x), u_input.e.yw, vec2<bool>(false, arg_1.c)), select(vec2<bool>(arg_1.c, false), vec2<bool>(arg_1.c, arg_1.c), vec2<bool>(false, arg_1.b)))));
    return _wgslsmith_f_op_f32(arg_1.a.x * arg_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 8>();
    global0 = array<vec3<bool>, 8>();
    let var_0 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-378f)), 299f), _wgslsmith_f_op_vec2_f32(func_2(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), all(select(vec3<bool>(false, true, false), global0[_wgslsmith_index_u32(4294967295u, 8u)], true)), u_input.d.x << ((u_input.a << (u_input.e.x % 32u)) % 32u), func_1(Struct_1(vec2<f32>(-746f, 1000f), false, false), Struct_1(vec2<f32>(-1614f, 251f), true, false), Struct_1(vec2<f32>(-1829f, -641f), true, true), max(593i, u_input.b.x))))), true, true);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_4(Struct_2(456f)), var_0)), _wgslsmith_f_op_f32(var_0.a.x + -713f)) - _wgslsmith_f_op_f32(func_3(Struct_4(Struct_2(var_0.a.x)), var_0))), var_0.a.x)));
    var var_2 = vec4<i32>(u_input.c, u_input.d.x, u_input.b.x, -(~abs(-1i)));
    let x = u_input.a;
    s_output = StorageBuffer(~max(_wgslsmith_clamp_vec3_u32(~u_input.e.yzx, min(vec3<u32>(96578u, 0u, 4294967295u), u_input.e.zwx), u_input.e.xxy >> (u_input.e.xww % vec3<u32>(32u))), abs(~vec3<u32>(u_input.e.x, u_input.e.x, u_input.a))), -_wgslsmith_sub_i32(i32(-1i) * -16118i, 1i), _wgslsmith_mod_i32(firstLeadingBit(var_2.x), var_2.x ^ countOneBits(abs(u_input.c))), max(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, 2147483647i, u_input.d.x), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, -12710i, 15028i), vec3<i32>(u_input.d.x, -51740i, 2147483647i)))), 14087i), var_0.a.x);
}

