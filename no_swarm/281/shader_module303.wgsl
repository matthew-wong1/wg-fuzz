struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: bool,
    d: Struct_2,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
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

var<private> global0: array<vec4<i32>, 17> = array<vec4<i32>, 17>(vec4<i32>(-15045i, i32(-2147483648), 1i, 24070i), vec4<i32>(11835i, -961i, -53568i, -24620i), vec4<i32>(2147483647i, -32577i, 2147483647i, -3751i), vec4<i32>(5896i, -37684i, i32(-2147483648), 22790i), vec4<i32>(1i, i32(-2147483648), i32(-2147483648), -1i), vec4<i32>(0i, i32(-2147483648), -86112i, 1i), vec4<i32>(-17461i, -12670i, -1i, 41955i), vec4<i32>(0i, -1i, -21959i, 1i), vec4<i32>(i32(-2147483648), 0i, 1i, -22005i), vec4<i32>(22774i, 19715i, 59643i, -1i), vec4<i32>(2147483647i, 1i, 3241i, 2147483647i), vec4<i32>(2147483647i, 0i, -796i, -1i), vec4<i32>(0i, 62389i, -1i, 1950i), vec4<i32>(0i, -1i, -21482i, -1i), vec4<i32>(14693i, -22190i, 2147483647i, -61596i), vec4<i32>(-1i, 9122i, 8035i, 14612i), vec4<i32>(-5328i, -1i, -37558i, -1122i));

var<private> global1: u32 = 2287u;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> i32 {
    let var_0 = abs(_wgslsmith_add_vec2_i32(vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -29536i, u_input.b.x, -2147483647i), vec4<i32>(u_input.b.x, -1i, -1i, u_input.b.x)), u_input.b.x), u_input.b.yz));
    return -1i;
}

fn func_2() -> u32 {
    let var_0 = Struct_3(i32(-1i) * -u_input.b.x, vec4<bool>(false, ~abs(u_input.a.x) <= u_input.a.x, any(vec3<bool>(false, u_input.a.x < 26876u, all(vec4<bool>(false, true, false, true)))), true), all(!vec2<bool>(all(vec2<bool>(true, false)), true)), Struct_2(func_3()), select(!select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), false), vec4<bool>(false, false, false, false), true), !vec4<bool>(u_input.a.x > 42414u, all(vec3<bool>(false, true, true)), all(vec2<bool>(true, true)), true), !vec4<bool>(false, true, all(vec4<bool>(true, true, false, false)), true)));
    return 30741u;
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> f32 {
    var var_0 = true || (1u < ~_wgslsmith_clamp_u32(u_input.a.x << (u_input.a.x % 32u), u_input.a.x, _wgslsmith_sub_u32(5383u, u_input.a.x)));
    var_0 = (~37590u >= func_2()) || !any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), any(vec2<bool>(true, false))));
    var var_1 = Struct_4(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), any(vec3<bool>(false, true, false))), vec3<bool>(true, true, true), true), Struct_3(-2147483647i, select(vec4<bool>(any(vec4<bool>(false, false, true, false)), 63159i >= u_input.b.x, true, 2039f >= arg_0), vec4<bool>(true, true, all(vec4<bool>(false, false, true, true)), any(vec2<bool>(false, false))), vec4<bool>(true, any(vec4<bool>(true, false, true, false)), false, true)), all(vec2<bool>(any(vec2<bool>(false, true)), true)), Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(-12480i, 1i), vec2<i32>(arg_1.x, -1i))), select(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), true)), func_3());
    var_0 = var_1.a.x;
    let var_2 = var_1.b.d;
    return 396f;
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: bool) -> Struct_1 {
    let var_0 = ((_wgslsmith_dot_vec3_i32(reverseBits(u_input.b), _wgslsmith_add_vec3_i32(u_input.b, u_input.b)) <= min(u_input.b.x, u_input.b.x)) | (true | all(select(vec3<bool>(arg_2, arg_1, true), arg_0.zxw, arg_0.yzx)))) && true;
    let var_1 = Struct_2(u_input.b.x << (_wgslsmith_mult_u32(~u_input.a.x << ((u_input.a.x >> (10011u % 32u)) % 32u), _wgslsmith_add_u32(u_input.a.x, 1u >> (0u % 32u))) % 32u));
    var var_2 = var_1;
    let var_3 = Struct_3(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 1i, ~u_input.b.x, abs(2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(-86721i, var_1.a, var_1.a, -1i), vec4<i32>(1i, var_2.a, 0i, u_input.b.x)) ^ (vec4<i32>(27955i, u_input.b.x, var_1.a, u_input.b.x) ^ global0[_wgslsmith_index_u32(u_input.a.x, 17u)])), u_input.b.x), !select(vec4<bool>(var_0, any(arg_0), any(vec3<bool>(false, var_0, false)), false), arg_0, false & all(vec3<bool>(false, arg_0.x, var_0))), !any(arg_0.yx), var_1, !vec4<bool>(arg_0.x, any(!vec4<bool>(false, arg_1, false, true)), arg_1, min(var_1.a, -2147483647i) > -12279i));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(-715f, _wgslsmith_f_op_f32(391f - 1411f), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-451f, 404f))), 1305f, _wgslsmith_f_op_f32(floor(366f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(758f, -1215f, 691f, -800f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(330f, 1760f, -1209f, -1706f), vec4<f32>(971f, 1355f, -622f, -901f))), select(vec4<bool>(var_3.b.x, arg_0.x, true, arg_1), arg_0, true))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-273f, 1860f, 799f, -1175f), vec4<f32>(481f, -394f, -877f, -156f)) - vec4<f32>(649f, 2429f, -1052f, 1223f))), any(var_3.e))));
    return Struct_1(u_input.a, ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a.x, 15217u, 16747u), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x >> (4294967295u % 32u)), u_input.a), vec2<i32>(var_1.a, -var_1.a << (4294967295u % 32u)), var_3.b, var_4.www);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 17>();
    let var_0 = u_input.b;
    let var_1 = func_4(!vec4<bool>(_wgslsmith_f_op_f32(func_1(-1000f, vec3<i32>(16941i, 27925i, 1i))) > _wgslsmith_f_op_f32(f32(-1f) * -1246f), 1i >= _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), select(true, 4925i > var_0.x, true), any(vec4<bool>(true, true, true, true))), !any(vec3<bool>(true, true, true)) & any(vec3<bool>(true, true, true)), select(true, any(vec2<bool>(u_input.b.x <= var_0.x, any(vec3<bool>(false, false, false)))), all(vec4<bool>(false, any(vec4<bool>(false, false, false, false)), true, true))));
    global1 = (_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~var_1.a, ~vec3<u32>(0u, 36453u, u_input.a.x)), var_1.b.x) >> (var_1.a.x % 32u)) | 9723u;
    var var_2 = true && func_4(var_1.d, false, !select(true, false, var_1.d.x)).d.x;
    global1 = min(reverseBits(48348u), abs(7544u));
    var var_3 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(-countOneBits(-1i));
}

