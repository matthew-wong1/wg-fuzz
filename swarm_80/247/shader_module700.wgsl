struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<bool>,
    d: f32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 26>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> f32 {
    global0 = array<vec3<bool>, 26>();
    global0 = array<vec3<bool>, 26>();
    let var_0 = Struct_2(u_input.a, Struct_1(!(_wgslsmith_f_op_f32(-arg_2.c) != _wgslsmith_f_op_f32(680f * -748f)), _wgslsmith_add_vec4_u32(reverseBits(~arg_2.b), vec4<u32>(u_input.b.x ^ 53512u, ~0u, 4294967295u, 30341u)), _wgslsmith_div_f32(1328f, _wgslsmith_f_op_f32(abs(-316f)))), vec4<bool>(!any(!vec3<bool>(false, arg_1, false)), !arg_1, arg_2.a, !select(true | arg_2.a, any(vec3<bool>(false, false, arg_2.a)), !arg_2.a)), _wgslsmith_f_op_f32(round(arg_2.c)), _wgslsmith_div_vec2_i32(min(~vec2<i32>(u_input.a, u_input.a) & vec2<i32>(u_input.a, u_input.a), ~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(u_input.a, -1i))), vec2<i32>(u_input.a, ~_wgslsmith_dot_vec3_i32(vec3<i32>(3905i, u_input.a, 73407i), vec3<i32>(32614i, 2147483647i, -18720i)))));
    global0 = array<vec3<bool>, 26>();
    global0 = array<vec3<bool>, 26>();
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1467f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.c, var_0.d) + 1895f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.b.c + -1000f))), _wgslsmith_f_op_f32(exp2(arg_2.c))))), 1994f));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(~_wgslsmith_sub_i32(-13714i, 1i), Struct_1(!(_wgslsmith_f_op_f32(trunc(626f)) != _wgslsmith_f_op_f32(f32(-1f) * -208f)), countOneBits(abs(select(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 58455u), vec4<u32>(u_input.b.x, 46196u, u_input.b.x, u_input.b.x), true))), _wgslsmith_f_op_f32(max(493f, _wgslsmith_f_op_f32(func_3(vec2<u32>(0u, u_input.b.x), false, Struct_1(true, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), 1845f), ~59802u))))), !select(vec4<bool>(any(vec4<bool>(false, false, true, false)), all(vec4<bool>(true, true, true, true)), true, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(944f * _wgslsmith_f_op_f32(ceil(-859f)))), 1363f), -vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_sub_i32(-2147483647i << (u_input.b.x % 32u), ~(-1i))));
    global0 = array<vec3<bool>, 26>();
    global0 = array<vec3<bool>, 26>();
    let var_1 = select(~(~(-_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, var_0.e.x), vec2<i32>(-2147483647i, -49649i), vec2<i32>(-28146i, var_0.a)))), _wgslsmith_mod_vec2_i32(var_0.e, vec2<i32>(abs(var_0.a), 45149i ^ var_0.e.x) << (u_input.b.xx % vec2<u32>(32u))), select(false, _wgslsmith_f_op_f32(var_0.b.c + _wgslsmith_f_op_f32(f32(-1f) * -312f)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -434f) + _wgslsmith_div_f32(-1121f, var_0.d)), true));
    let var_2 = var_0.b;
    return var_0;
}

fn func_1() -> i32 {
    let var_0 = true;
    var var_1 = ~(67284u ^ u_input.b.x);
    var var_2 = ~_wgslsmith_add_u32(u_input.b.x, ~((u_input.b.x ^ 4294967295u) ^ 23189u));
    var var_3 = func_2();
    var var_4 = func_2();
    return _wgslsmith_div_i32(countOneBits(var_3.a), -_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-35710i, 2147483647i, var_3.a), -vec3<i32>(var_4.a, -10434i, var_3.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 26>();
    let var_0 = Struct_2(func_1(), Struct_1(true, ~(~(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u))), -2090f), !(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true)))), 1f, _wgslsmith_mod_vec2_i32(vec2<i32>(abs(u_input.a) ^ -u_input.a, ~u_input.a), vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, -49322i, 6037i), vec4<i32>(34469i, u_input.a, 20952i, -2147483647i)), vec4<i32>(33574i, 0i, 13661i, u_input.a)), 8242i)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-396f - var_0.b.c) < var_0.d, ~vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b.zx, vec2<u32>(46622u, 46715u)), 4708u, u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.b.x, 48027u, 4294967295u, 0u), vec4<u32>(20971u, u_input.b.x, var_0.b.b.x, u_input.b.x))) ^ (countOneBits(vec4<u32>(4294967295u, 77385u, var_0.b.b.x, u_input.b.x)) << (_wgslsmith_sub_vec4_u32(var_0.b.b, ~var_0.b.b) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-1006f - var_0.d));
    let var_2 = select(select(!(!(!var_0.c.wx)), func_2().c.zy, !var_0.b.a), vec2<bool>(true, false), !select(!(!var_0.c.zz), vec2<bool>(true, true), false || (var_1.c != 1379f)));
    var var_3 = -749f;
    var var_4 = var_0.b.b;
    var var_5 = ~(~(~var_0.b.b));
    var_5 = var_0.b.b & _wgslsmith_div_vec4_u32(~_wgslsmith_mod_vec4_u32(min(var_0.b.b, vec4<u32>(115040u, 51324u, 4294967295u, 8331u)), vec4<u32>(4294967295u, u_input.b.x, 1u, 0u)), abs(vec4<u32>(_wgslsmith_mod_u32(1u, 78595u), 1u, 4294967295u >> (u_input.b.x % 32u), var_0.b.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b.c)))), vec2<i32>(_wgslsmith_mult_i32(-17948i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(var_0.e.x, var_0.e.x, u_input.a), vec3<i32>(33916i, 14581i, u_input.a), var_1.a), reverseBits(vec3<i32>(u_input.a, var_0.e.x, 29286i)))), 12244i), abs(var_0.b.b));
}

