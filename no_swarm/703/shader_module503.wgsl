struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: f32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: bool,
    d: Struct_3,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 15>;

var<private> global1: array<vec4<u32>, 3>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_5, arg_1: vec2<bool>) -> u32 {
    let var_0 = true;
    let var_1 = Struct_3(true, vec2<bool>(select(true, arg_0.a.x, (arg_1.x || arg_1.x) & !arg_1.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.b.x * 494f))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1490f * arg_0.b.x) + arg_0.b.x)), arg_0.b.x);
    var var_2 = Struct_4(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -57282i, 0i), vec3<i32>(17690i, 1i, -1i)), ~(-2147483647i), 18885i)), var_1, true, Struct_3(all(select(select(var_1.b, vec2<bool>(true, true), false), vec2<bool>(false, var_0), var_0)), select(vec2<bool>(!var_0, !arg_1.x), arg_1, select(arg_1, !vec2<bool>(var_0, false), all(vec2<bool>(false, false)))), 676f));
    global0 = array<Struct_5, 15>();
    let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_0.b), arg_0.b, -_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_2.a, 1i, var_2.a), select(vec4<i32>(7932i, var_2.a, var_2.a, 1i), vec4<i32>(var_2.a, var_2.a, var_2.a, var_2.a), false)) == var_2.a));
    return ~1u;
}

fn func_2(arg_0: bool) -> vec4<i32> {
    global1 = array<vec4<u32>, 3>();
    global0 = array<Struct_5, 15>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1000f * _wgslsmith_div_f32(989f, 304f)), -1908f, 170f) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1407f, 354f, 140f))))));
    let var_1 = Struct_2(Struct_1(468f, -countOneBits(-25480i) << (u_input.a % 32u), _wgslsmith_f_op_vec3_f32(max(var_0, var_0))), i32(-1i) * -75i, ~_wgslsmith_add_u32(~func_3(Struct_5(vec2<bool>(arg_0, false), vec2<f32>(280f, var_0.x)), vec2<bool>(false, true)), 4294967295u >> (max(u_input.a, u_input.a) % 32u)));
    let var_2 = -1i;
    return min(abs(_wgslsmith_sub_vec4_i32(select(vec4<i32>(var_1.a.b, var_2, var_2, -1i), vec4<i32>(28949i, var_1.b, -14485i, -2147483647i), true), -vec4<i32>(18689i, var_1.a.b, -40811i, 3853i))), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-37626i, -1i, 2147483647i), vec3<i32>(1i, var_1.b, 0i)), select(-42280i, var_2, arg_0), -1986i, var_2), vec4<i32>(_wgslsmith_mult_i32(var_1.a.b, 27454i), var_2, var_1.b, 15994i))) & -vec4<i32>(-21385i, ~var_2 & -var_1.a.b, _wgslsmith_mult_i32(1i, 2354i), ~1i);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_5, arg_2: i32) -> f32 {
    var var_0 = Struct_2(arg_0, firstLeadingBit(_wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(arg_2, -43768i, 29517i, 0i), vec4<i32>(arg_0.b, arg_2, 0i, arg_0.b))), func_2(!arg_1.a.x))), u_input.a);
    var var_1 = all(select(vec3<bool>(false, true, arg_1.a.x), vec3<bool>(true, true, arg_1.a.x), !arg_1.a.x));
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1580f)))), arg_2, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-715f, 615f, arg_0.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(arg_0.c)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.x, 1000f, arg_0.a) * arg_0.c)))), -2147483647i, var_0.c);
    let var_2 = Struct_2(var_0.a, ~abs(abs(1i)), u_input.a ^ 1u);
    let var_3 = ~(~(~(vec2<u32>(var_2.c, u_input.a) >> (vec2<u32>(0u, u_input.a) % vec2<u32>(32u)))) ^ vec2<u32>(var_0.c, var_2.c));
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(vec2<bool>(!(!all(vec4<bool>(false, false, false, false))), true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1709f * 3346f), _wgslsmith_f_op_f32(func_1(Struct_1(1238f, 1i, vec3<f32>(-181f, -728f, -601f)), global0[_wgslsmith_index_u32(4294967295u, 15u)], 9517i))), -749f)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(-(~2147483647i), abs(2147483647i), _wgslsmith_mult_i32(1i >> (u_input.a % 32u), ~11846i)), -vec3<i32>(1i, _wgslsmith_mod_i32(0i >> (0u % 32u), func_2(true).x), ~(~2147483647i)), func_2(var_0.a.x).x);
}

