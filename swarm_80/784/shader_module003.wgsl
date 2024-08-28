struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

var<private> global1: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(vec2<u32>(45127u, 4294967295u)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(max(817f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-791f)))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2181f)))))));
    global0 = array<u32, 8>();
    global0 = array<u32, 8>();
    global1 = array<Struct_2, 1>();
    var var_1 = arg_0.x;
    return ~54741u;
}

fn func_2() -> vec4<f32> {
    let var_0 = global1[_wgslsmith_index_u32(select(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(0u, 8u)] | u_input.c.x, _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(42876u, 1u), 8u)], 4294967295u, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], u_input.a.x)), abs(func_3(vec2<bool>(false, false), false)), u_input.a.x), ~vec4<u32>(abs(u_input.d), _wgslsmith_div_u32(u_input.c.x, 4294967295u), 28585u, ~0u)), u_input.a.x << (2966u % 32u), all(select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), vec3<bool>(true, global0[_wgslsmith_index_u32(94544u, 8u)] <= global0[_wgslsmith_index_u32(u_input.c.x, 8u)], any(vec4<bool>(true, false, false, true))), vec3<bool>(true, true, true)))), 1u)];
    global0 = array<u32, 8>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2056f)))), -1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-251f + 560f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)))))));
    var var_2 = any(select(vec2<bool>(-u_input.b.x > u_input.b.x, _wgslsmith_div_f32(var_1.x, 1172f) == var_1.x), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, false), true)));
    let var_3 = Struct_3((u_input.d >> (global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(abs(107844u), 8u)]), 8u)] % 32u)) ^ ~firstTrailingBit(u_input.a.x), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-662f, -1328f) - _wgslsmith_f_op_vec2_f32(min(var_1.xw, vec2<f32>(var_1.x, -402f)))) * _wgslsmith_f_op_vec2_f32(step(var_1.wz, _wgslsmith_f_op_vec2_f32(-var_1.zy)))), vec3<bool>(true, true, true), var_1.xx, var_1.x), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_1.yw * vec2<f32>(1334f, var_1.x))))), vec3<bool>(true, !all(vec3<bool>(false, false, true)), true), _wgslsmith_div_vec2_f32(var_1.wy, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-723f, -1318f) * var_1.yx)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(f32(-1f) * -1122f))), 2147483647i);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(320f, 274f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_div_f32(var_3.b.c.x, var_1.x)), _wgslsmith_f_op_f32(-var_3.c.a.x)))));
}

fn func_1(arg_0: Struct_4, arg_1: u32, arg_2: vec3<bool>) -> f32 {
    var var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(-_wgslsmith_sub_i32(-2147483647i, u_input.b.x), 60041i), arg_0.a), abs(vec2<i32>(~arg_0.a, countOneBits(arg_0.a))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(924f, 1000f, 2734f, -1933f) * vec4<f32>(662f, 1797f, 1000f, 196f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-549f, 414f, 1000f, 447f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-669f, 739f, -1438f, 145f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, -1003f, 1000f, 1700f), vec4<f32>(2217f, -1589f, 1172f, 772f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2()))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-998f))), -1012f, _wgslsmith_f_op_vec4_f32(func_2()).x, _wgslsmith_f_op_f32(f32(-1f) * -902f)))) * _wgslsmith_f_op_vec4_f32(func_2()));
    global1 = array<Struct_2, 1>();
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-361f, var_1.x, -386f, -1977f))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(773f, 779f, var_1.x, -852f), vec4<f32>(var_1.x, var_1.x, var_1.x, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -608f, var_1.x))), !select(vec4<bool>(true, arg_2.x, false, arg_2.x), vec4<bool>(true, false, false, true), vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x))))));
    return var_1.x;
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: vec2<f32>) -> Struct_3 {
    var var_0 = -(~vec2<i32>(~firstTrailingBit(arg_1.a), reverseBits(abs(arg_1.a))));
    var_0 = u_input.b.xx & firstTrailingBit(u_input.b.yz);
    var_0 = vec2<i32>(-arg_1.a, max(firstTrailingBit(var_0.x), 34009i));
    var var_1 = vec4<i32>(-(i32(-1i) * -1i), ~(-8037i), arg_1.a, ~(firstTrailingBit(u_input.b.x) << (firstTrailingBit(abs(1u)) % 32u)));
    var var_2 = _wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.a, i32(-1i) * -firstTrailingBit(0i)), var_1.xx);
    return Struct_3(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(u_input.c.x & _wgslsmith_clamp_u32(1u, 0u, ~1u), 8u)], 78472u), Struct_1(arg_2, vec3<bool>(all(!vec3<bool>(arg_0, arg_0, arg_0)), arg_0, false), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec4_f32(func_2()).zy - arg_2), _wgslsmith_f_op_f32(step(257f, _wgslsmith_div_f32(_wgslsmith_div_f32(-1313f, arg_2.x), _wgslsmith_div_f32(-270f, 399f))))), Struct_1(vec2<f32>(390f, -1017f), !vec3<bool>(true, arg_0, !arg_0), vec2<f32>(_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(func_1(Struct_4(arg_1.a), 4294967295u, vec3<bool>(arg_0, false, arg_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_f_op_f32(step(arg_2.x, arg_2.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + arg_2.x))))), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(-794f != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(Struct_4(u_input.b.x), _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], u_input.c.x, global0[_wgslsmith_index_u32(u_input.c.x, 8u)]), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false))))), Struct_4(_wgslsmith_mod_i32(min(u_input.b.x, -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, u_input.b.x) & vec4<i32>(-9409i, u_input.b.x, 32757i, u_input.b.x), ~vec4<i32>(-85349i, 6193i, 23716i, u_input.b.x)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1884f), 1f))));
    global0 = array<u32, 8>();
    global1 = array<Struct_2, 1>();
    var var_1 = Struct_4(-select(~u_input.b.x, 1i, true));
    var_1 = Struct_4(-1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(u_input.d, 2979u), var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(794f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b.d))))) - 1f), _wgslsmith_dot_vec2_u32(abs(~vec2<u32>(1u, var_0.a)), vec2<u32>(0u, ~global0[_wgslsmith_index_u32(u_input.a.x, 8u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.c.x, var_0.c.c.x, var_0.c.c.x, 451f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.c.x, var_0.b.d, -435f, var_0.c.a.x), vec4<f32>(878f, 411f, 1988f, var_0.c.d), vec4<bool>(false, var_0.b.b.x, var_0.b.b.x, true)))), select(vec4<bool>(var_0.c.b.x, var_0.c.b.x, true, var_0.b.b.x), vec4<bool>(true, true, var_0.c.b.x, var_0.b.b.x), var_0.b.b.x)))));
}

