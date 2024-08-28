struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec4<i32>,
    d: vec4<i32>,
    e: bool,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(vec4<i32>(14383i, -58744i, 2147483647i, 0i));

var<private> global1: vec3<i32>;

var<private> global2: array<i32, 15>;

var<private> global3: array<Struct_4, 21>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_clamp_u32(max(1u & _wgslsmith_sub_u32(~u_input.a.x, countOneBits(u_input.a.x)), 54843u), u_input.a.x, 24829u);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -557f) + -1000f)));
}

fn func_2() -> Struct_5 {
    var var_0 = Struct_1(countOneBits(~_wgslsmith_mult_vec2_i32(~vec2<i32>(global0.a.x, -2147483647i), vec2<i32>(1i, -28036i))), global1.x, vec3<bool>(global0.a.x >= global0.a.x, !(_wgslsmith_f_op_f32(f32(-1f) * -476f) < _wgslsmith_f_op_f32(select(600f, 1617f, true))), !(!select(false, false, true))));
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(625f, 1259f)) + 355f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(var_0.c, ~vec3<i32>(2147483647i, 2147483647i, -44230i), Struct_1(global1.yy, -2147483647i, vec3<bool>(var_0.c.x, true, false))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-942f)) * _wgslsmith_f_op_f32(trunc(136f))), -188f, -1395f);
    let var_2 = _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(-var_1.x)));
    var var_3 = global3[_wgslsmith_index_u32(1u, 21u)];
    global3 = array<Struct_4, 21>();
    return Struct_5(vec4<i32>(~select(-10321i, 1i, var_0.c.x), _wgslsmith_clamp_i32(-(~2147483647i), global2[_wgslsmith_index_u32(abs(~u_input.b), 15u)], 10203i), -_wgslsmith_add_i32(global2[_wgslsmith_index_u32(61975u, 15u)], -63518i) ^ (_wgslsmith_add_i32(-1i, -1i) | reverseBits(global0.a.x)), -(~firstLeadingBit(-2147483647i))));
}

fn func_1(arg_0: bool, arg_1: i32) -> vec2<f32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1694f), _wgslsmith_f_op_f32(ceil(299f)), _wgslsmith_div_f32(575f, -1182f));
    let var_1 = func_2();
    global3 = array<Struct_4, 21>();
    let var_2 = _wgslsmith_clamp_i32(countOneBits(~_wgslsmith_dot_vec2_i32(global1.zx, vec2<i32>(14608i, 6045i))), _wgslsmith_mult_i32(-36832i, _wgslsmith_add_i32(2147483647i, global0.a.x)), global0.a.x) >> (u_input.b % 32u);
    global1 = -vec3<i32>(-_wgslsmith_mult_i32(_wgslsmith_mod_i32(var_2, 9626i), var_2), _wgslsmith_mult_i32(-1i, firstLeadingBit(-var_2)), i32(-1i) * -_wgslsmith_dot_vec3_i32(global0.a.wxz, vec3<i32>(1i, -1i, var_1.a.x)));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -125f), var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(u_input.b, _wgslsmith_div_u32(select(u_input.b >> (1026u % 32u), 21487u, all(vec2<bool>(false, false))) ^ _wgslsmith_div_u32(0u >> (u_input.a.x % 32u), 52473u), ~(~u_input.a.x & 4294967295u)), 70569u, min(_wgslsmith_sub_u32(~29636u, 0u), u_input.b));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-992f + _wgslsmith_f_op_f32(select(1000f, -858f, false)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1319f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -275f), -493f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), !(global2[_wgslsmith_index_u32(~4294967295u, 15u)] <= _wgslsmith_mult_i32(~10552i, 1i))));
    global2 = array<i32, 15>();
    var var_2 = !vec3<bool>(all(vec4<bool>(any(vec2<bool>(true, false)), any(vec3<bool>(true, true, true)), u_input.a.x != 37148u, true)), global0.a.x == ~_wgslsmith_div_i32(-4352i, global1.x), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(false, -18175i))), var_0.xz, _wgslsmith_mod_vec2_u32(u_input.a.xz, select(countOneBits(u_input.a.yy), _wgslsmith_mod_vec2_u32(var_0.yy, var_0.xx) & var_0.xx, !(!vec2<bool>(false, var_2.x)))), ~_wgslsmith_div_vec4_u32(var_0, reverseBits(vec4<u32>(9646u, u_input.a.x, var_0.x, var_0.x))), select(vec3<i32>(1i, global2[_wgslsmith_index_u32(0u, 15u)], max(1i, -53315i)), firstTrailingBit(select(vec3<i32>(global1.x, global1.x, 2147483647i), global0.a.ywz, true)), !(true & var_2.x)) | _wgslsmith_add_vec3_i32(vec3<i32>(global0.a.x, countOneBits(global0.a.x), abs(8567i)), countOneBits(~vec3<i32>(global1.x, global2[_wgslsmith_index_u32(91210u, 15u)], -2147483647i))));
}

