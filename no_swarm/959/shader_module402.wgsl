struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 808f;

var<private> global1: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(false, Struct_1(-391f), vec3<bool>(false, true, true)), Struct_3(false, Struct_1(-588f), vec3<bool>(false, false, false)), Struct_3(false, Struct_1(2017f), vec3<bool>(false, true, true)), Struct_3(false, Struct_1(583f), vec3<bool>(true, true, true)), Struct_3(false, Struct_1(1000f), vec3<bool>(false, false, false)), Struct_3(true, Struct_1(773f), vec3<bool>(false, true, true)), Struct_3(false, Struct_1(540f), vec3<bool>(false, true, false)), Struct_3(true, Struct_1(856f), vec3<bool>(false, false, false)), Struct_3(true, Struct_1(454f), vec3<bool>(true, true, true)), Struct_3(true, Struct_1(-140f), vec3<bool>(false, false, true)), Struct_3(true, Struct_1(483f), vec3<bool>(false, true, false)), Struct_3(false, Struct_1(460f), vec3<bool>(true, true, true)), Struct_3(true, Struct_1(-812f), vec3<bool>(true, false, false)), Struct_3(false, Struct_1(864f), vec3<bool>(false, false, false)), Struct_3(true, Struct_1(-928f), vec3<bool>(false, true, false)), Struct_3(true, Struct_1(-362f), vec3<bool>(false, true, true)), Struct_3(false, Struct_1(-805f), vec3<bool>(true, false, true)), Struct_3(false, Struct_1(2832f), vec3<bool>(false, false, true)), Struct_3(true, Struct_1(542f), vec3<bool>(false, false, false)), Struct_3(false, Struct_1(-644f), vec3<bool>(false, false, true)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: Struct_3) -> f32 {
    global0 = -2738f;
    global1 = array<Struct_3, 20>();
    global1 = array<Struct_3, 20>();
    global0 = 1000f;
    global1 = array<Struct_3, 20>();
    return arg_2.b.a;
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: Struct_4, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 1i, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, -2147483647i), vec3<i32>(u_input.b, u_input.b, 23606i)), 25314i), countOneBits(-(vec4<i32>(u_input.b, 1i, 33789i, u_input.b) & vec4<i32>(u_input.b, -43232i, u_input.b, -29708i)))) ^ (select(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 2147483647i, u_input.b, u_input.b) & vec4<i32>(u_input.b, u_input.b, 1i, u_input.b), -vec4<i32>(u_input.b, -28016i, -9740i, 13421i)), ~(-vec4<i32>(u_input.b, -1i, u_input.b, -5960i)), all(vec2<bool>(arg_1.a.a, arg_1.a.c.x)) || all(arg_2.a.c.xz)) ^ ((-vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 16135u) % vec4<u32>(32u))) | vec4<i32>(_wgslsmith_add_i32(-46623i, u_input.b), u_input.b & u_input.b, ~u_input.b, 0i)));
    global1 = array<Struct_3, 20>();
    var var_1 = u_input.a.x;
    var var_2 = arg_2.a;
    return vec3<f32>(_wgslsmith_f_op_f32(var_2.b.a + _wgslsmith_f_op_f32(-arg_0)), 443f, arg_0);
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 1509f, 299f), vec3<f32>(1674f, 1324f, 254f), false))))), _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_div_f32(-319f, -1353f), Struct_4(global1[_wgslsmith_index_u32(u_input.a.x, 20u)]), Struct_4(global1[_wgslsmith_index_u32(1u, 20u)]), Struct_1(-1911f))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x - 1000f))), -1086f)));
    global1 = array<Struct_3, 20>();
    global1 = array<Struct_3, 20>();
    var var_2 = var_1.a;
    return Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_1.a)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x - var_0.x)))) < _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1.a, -1000f))), Struct_1(_wgslsmith_f_op_f32(-1000f - var_0.x)), vec3<bool>(any(select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, false), vec2<bool>(false, true))), any(select(vec2<bool>(false, false), vec2<bool>(true, false), var_1.a >= 742f)), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(-1372i, -7154i);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-310f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec4<bool>(false, false, true, false), Struct_4(Struct_3(false, Struct_1(-112f), vec3<bool>(true, false, false))), global1[_wgslsmith_index_u32(4294967295u, 20u)])), _wgslsmith_f_op_f32(abs(-361f)))) * -1891f));
    let var_2 = func_2();
    var var_3 = _wgslsmith_f_op_vec3_f32(func_3(1396f, Struct_4(func_2()), Struct_4(func_2()), Struct_1(1054f)));
    var var_4 = _wgslsmith_f_op_vec2_f32(-var_3.zx);
    var var_5 = global1[_wgslsmith_index_u32(32457u, 20u)];
    var_4 = var_3.yx;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>((-u_input.b >> (_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) % 32u)) | (abs(u_input.b) & u_input.b), -u_input.b, ~(~(i32(-1i) * -2147483647i)), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, -4525i), vec2<i32>(u_input.b, u_input.b)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 17834u), vec2<u32>(u_input.a.x, 40162u)) % vec2<u32>(32u)), vec2<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -889i, 1i, u_input.b), vec4<i32>(0i, -1i, u_input.b, 1i))))), 1i, reverseBits(_wgslsmith_div_vec2_i32(select(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, -19092i) >> (u_input.a.yx % vec2<u32>(32u)), func_2().c.yx), vec2<i32>(countOneBits(u_input.b), _wgslsmith_sub_i32(u_input.b, u_input.b)))), countOneBits(vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 5725u, u_input.a.x), select(vec4<u32>(u_input.a.x, 7923u, u_input.a.x, 20484u), vec4<u32>(15206u, 1u, 1u, u_input.a.x), vec4<bool>(true, var_5.a, var_2.a, var_5.c.x))), 1u | _wgslsmith_sub_u32(u_input.a.x, 4294967295u))));
}

