struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32) -> vec4<bool> {
    var var_0 = Struct_4(select(vec3<bool>(select(arg_0.x & arg_0.x, false, !arg_0.x), arg_0.x, !(arg_0.x && false)), select(select(!vec3<bool>(arg_0.x, arg_0.x, true), select(vec3<bool>(false, true, arg_0.x), vec3<bool>(arg_0.x, true, false), vec3<bool>(arg_0.x, true, false)), !vec3<bool>(false, false, arg_0.x)), vec3<bool>(all(arg_0), select(arg_0.x, arg_0.x, arg_0.x), all(vec3<bool>(true, true, false))), !vec3<bool>(false, arg_0.x, arg_0.x)), select(!select(vec3<bool>(arg_0.x, true, true), vec3<bool>(true, false, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, true)), !vec3<bool>(arg_0.x, arg_0.x, arg_0.x), !select(vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, false, false), false))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1277f, -538f, -741f), vec3<f32>(-1000f, -116f, 642f), vec3<bool>(var_0.a.x, arg_0.x, true))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-638f, -423f, 397f) + vec3<f32>(1000f, -1000f, 107f))) + vec3<f32>(_wgslsmith_f_op_f32(-1010f + -375f), _wgslsmith_div_f32(-251f, -555f), _wgslsmith_f_op_f32(-793f + -157f)))));
    return !select(vec4<bool>(!arg_0.x, all(arg_0), !(true & var_0.a.x), !(!var_0.a.x)), vec4<bool>(false, all(!var_0.a), any(!var_0.a.xz), (u_input.b != 1u) | var_0.a.x), vec4<bool>(!(u_input.c >= -6839i), _wgslsmith_f_op_f32(var_1.x - var_1.x) >= _wgslsmith_f_op_f32(-var_1.x), arg_0.x, !var_0.a.x));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: f32) -> u32 {
    global0 = array<Struct_2, 31>();
    var var_0 = Struct_3(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(14058u, 12258u), 31u)], vec4<bool>(false, false, true, true), Struct_1(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(select(u_input.d, u_input.d, false), u_input.d), _wgslsmith_mod_i32(arg_1.x, -arg_1.x)), -742f, _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(0i, 26854i, arg_1.x), _wgslsmith_div_vec3_i32(u_input.d.yzz, vec3<i32>(10591i, arg_1.x, 50444i))), _wgslsmith_add_vec3_i32(u_input.d.zyx << (u_input.e % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(u_input.d.xzx, vec3<i32>(1i, arg_1.x, u_input.c)))), firstLeadingBit(_wgslsmith_sub_u32(arg_0.a, _wgslsmith_div_u32(4294967295u, arg_2.a)))));
    let var_1 = global0[_wgslsmith_index_u32(0u, 31u)];
    global0 = array<Struct_2, 31>();
    var_0 = Struct_3(Struct_2(arg_0.a), func_3(select(var_0.b.wy, vec2<bool>(var_0.b.x, u_input.b < arg_2.a), true), arg_1.x), Struct_1(var_0.c.a, _wgslsmith_f_op_f32(1012f + _wgslsmith_f_op_f32(ceil(1070f))), ~_wgslsmith_div_vec3_i32(u_input.d.xxx, var_0.c.c), ~var_0.a.a));
    return var_1.a;
}

fn func_1() -> Struct_2 {
    var var_0 = ~u_input.d;
    var_0 = u_input.d;
    var var_1 = _wgslsmith_div_u32(0u, (~0u >> (~u_input.b % 32u)) >> (u_input.e.x % 32u)) <= _wgslsmith_mult_u32(func_2(Struct_2(u_input.e.x), -vec2<i32>(-14038i, u_input.c), global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.e.x, 112u), 31u)], _wgslsmith_f_op_f32(trunc(1046f))), abs(~49190u));
    var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(-(var_0.x << (41744u % 32u)), max(_wgslsmith_mod_i32(-var_0.x, u_input.a), _wgslsmith_div_i32(1i ^ var_0.x, -2147483647i)), -1i, var_0.x), _wgslsmith_sub_vec4_i32(u_input.d & select(u_input.d, _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, 17616i, -16792i, var_0.x), vec4<i32>(var_0.x, -45530i, -1i, 43569i)), all(vec2<bool>(false, true))), _wgslsmith_clamp_vec4_i32(-vec4<i32>(-56532i, var_0.x, -1i, var_0.x), max(u_input.d, u_input.d), _wgslsmith_add_vec4_i32(~vec4<i32>(var_0.x, var_0.x, u_input.a, var_0.x), ~u_input.d))));
    let var_2 = ~(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, 62054u, 13119u), vec4<u32>(36079u, u_input.e.x, u_input.e.x, u_input.b)), ~vec4<u32>(0u, 1u, 0u, 4294967295u)), 1u, u_input.e.x) | firstTrailingBit(~u_input.e));
    return Struct_2(u_input.e.x ^ ~(var_2.x << (var_2.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-265f, 748f, 1561f, 1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(725f, 1777f, 977f, -268f))) * vec4<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_div_f32(-535f, 987f), _wgslsmith_f_op_f32(step(1482f, 130f)), _wgslsmith_f_op_f32(round(-876f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-739f, 1611f, -226f, 603f) + vec4<f32>(-448f, 380f, 162f, 186f))))), _wgslsmith_f_op_f32(min(-434f, _wgslsmith_f_op_f32(round(625f)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(164f))))));
}

