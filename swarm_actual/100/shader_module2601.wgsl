struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: u32,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec4<f32> = vec4<f32>(-290f, -1039f, -356f, 826f);

var<private> global2: array<i32, 10>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>) -> vec3<i32> {
    var var_0 = true;
    global2 = array<i32, 10>();
    let var_1 = 259f;
    var_0 = all(!select(vec2<bool>(true, select(false, true, true)), vec2<bool>(true, true), !any(vec4<bool>(false, true, false, true))));
    var_0 = false;
    return _wgslsmith_div_vec3_i32(vec3<i32>(max(~(-1i), reverseBits(global2[_wgslsmith_index_u32(1u, 10u)])), -8055i, -countOneBits(0i)), vec3<i32>(41135i, ~global2[_wgslsmith_index_u32(u_input.a, 10u)], global2[_wgslsmith_index_u32(~u_input.a, 10u)]) & -select(vec3<i32>(60244i, 0i, -38026i) >> (vec3<u32>(u_input.a, 96679u, 1u) % vec3<u32>(32u)), vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 10u)], 1i, u_input.b) << (vec3<u32>(1u, u_input.a, u_input.a) % vec3<u32>(32u)), false));
}

fn func_2(arg_0: i32, arg_1: bool) -> vec4<f32> {
    let var_0 = _wgslsmith_mod_vec3_i32((-firstTrailingBit(vec3<i32>(arg_0, global2[_wgslsmith_index_u32(0u, 10u)], -16663i)) | max(func_3(global1.zz), ~vec3<i32>(arg_0, arg_0, u_input.b))) << (vec3<u32>(27319u, ~_wgslsmith_mod_u32(64640u, u_input.a), u_input.a & u_input.a) % vec3<u32>(32u)), reverseBits(_wgslsmith_mult_vec3_i32(-vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 10u)], -61206i, global2[_wgslsmith_index_u32(u_input.a, 10u)]) >> ((vec3<u32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(u_input.a, 4294967295u, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.b, global2[_wgslsmith_index_u32(49125u, 10u)]), vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 10u)], 0i, u_input.b)) ^ vec3<i32>(1i, global2[_wgslsmith_index_u32(26543u, 10u)], arg_0))));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(round(global1.x)))) * global1.x), _wgslsmith_f_op_f32(floor(-1338f)), -1546f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.x, _wgslsmith_f_op_f32(round(global1.x))))));
    let var_1 = Struct_3(Struct_2(select(~u_input.a, 1u, !arg_1), ~(_wgslsmith_mult_vec3_u32(vec3<u32>(28752u, 33719u, u_input.a), vec3<u32>(76383u, 15919u, u_input.a)) | firstTrailingBit(vec3<u32>(u_input.a, u_input.a, u_input.a)))), select(!vec2<bool>(true, !arg_1), vec2<bool>(true, arg_1), select(vec2<bool>(false, false), vec2<bool>(arg_1, all(vec4<bool>(arg_1, false, false, arg_1))), select(select(vec2<bool>(false, true), vec2<bool>(arg_1, false), true), vec2<bool>(true, true), all(vec4<bool>(arg_1, false, false, false))))), min(u_input.a ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) | vec4<u32>(0u, 1u, u_input.a, 4294967295u), vec4<u32>(u_input.a, u_input.a, 74665u, u_input.a) | vec4<u32>(46924u, 24452u, 30273u, u_input.a)), ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(0u, u_input.a), u_input.a)), !any(vec4<bool>(any(vec2<bool>(true, arg_1)), true, all(vec2<bool>(arg_1, true)), any(vec2<bool>(arg_1, arg_1)))), Struct_2(countOneBits(u_input.a), select(vec3<u32>(~u_input.a, u_input.a, u_input.a), (vec3<u32>(u_input.a, u_input.a, 4294967295u) << (vec3<u32>(u_input.a, 0u, 24295u) % vec3<u32>(32u))) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(76941u, 0u, 15658u), vec3<u32>(0u, u_input.a, 30920u)) % vec3<u32>(32u)), select(select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(true, true, arg_1), vec3<bool>(true, false, true)), vec3<bool>(false, false, arg_1), false))));
    global2 = array<i32, 10>();
    let var_2 = -_wgslsmith_mult_vec3_i32(min(~var_0 << (var_1.e.b % vec3<u32>(32u)), var_0), _wgslsmith_mod_vec3_i32(select(var_0, var_0, true) | ~vec3<i32>(u_input.b, arg_0, u_input.b), vec3<i32>(2147483647i, select(var_0.x, u_input.b, false), _wgslsmith_add_i32(6860i, var_0.x))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2168f, 439f, global1.x, -178f), vec4<f32>(global1.x, 311f, 1811f, -668f), var_1.d)))) + vec4<f32>(-658f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-1000f + global1.x), _wgslsmith_f_op_f32(floor(-622f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-113f, -669f, global1.x, -1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, 164f, global1.x))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 372f, global1.x, -255f)), _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, -1165f), vec4<f32>(-1007f, 371f, global1.x, -1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.x, 135f, global1.x, 631f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(193f, global1.x, 2365f, -202f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.x, global1.x, global1.x, 321f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.x, global1.x, 322f, 874f), vec4<f32>(-239f, global1.x, 630f, 1089f)))))), !select(select(vec4<bool>(true, true, var_1.d, var_1.b.x), vec4<bool>(var_1.d, arg_1, false, arg_1), true), select(vec4<bool>(arg_1, var_1.d, true, arg_1), vec4<bool>(var_1.b.x, var_1.b.x, true, var_1.b.x), vec4<bool>(false, arg_1, true, false)), !vec4<bool>(false, var_1.b.x, false, var_1.b.x)))));
}

fn func_1(arg_0: i32) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(countOneBits(_wgslsmith_sub_i32(u_input.b, arg_0)) & ~(2147483647i >> (u_input.a % 32u)), false)) - vec4<f32>(global1.x, 1f, 1000f, -785f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global1.x, global1.x, global1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-459f, global1.x, global1.x, global1.x)))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-945f, 316f, -263f, 436f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-375f, -354f, global1.x, 1247f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1153f, global1.x, 725f, -261f))) - _wgslsmith_f_op_vec4_f32(func_1(-1i))))));
    let var_0 = vec3<u32>(0u, u_input.a, ~abs(2520u));
    let var_1 = Struct_3(Struct_2(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(var_0, _wgslsmith_clamp_vec3_u32(var_0, var_0, var_0)), max(~u_input.a, 16661u)), ~abs(~var_0)), select(vec2<bool>(_wgslsmith_f_op_f32(global1.x - 894f) != _wgslsmith_f_op_f32(f32(-1f) * -233f), ~u_input.a == _wgslsmith_div_u32(u_input.a, 10839u)), select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true), all(vec2<bool>(true, true))), vec2<bool>(true, true), !(var_0.x >= u_input.a)), vec2<bool>(false, all(vec3<bool>(true, true, true)))), reverseBits(u_input.a), true, Struct_2(u_input.a, min(vec3<u32>(_wgslsmith_mod_u32(0u, var_0.x), ~u_input.a, 4294967295u), var_0 ^ _wgslsmith_add_vec3_u32(var_0, vec3<u32>(17409u, 83869u, u_input.a)))));
    var var_2 = ~countOneBits(~vec4<u32>(38550u, 2245u, 1u, var_1.c)) & _wgslsmith_mod_vec4_u32(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(25756u, u_input.a, 1u, var_1.a.a), vec4<u32>(49953u, 1u, u_input.a, var_1.e.b.x))), reverseBits(max(vec4<u32>(var_0.x, u_input.a, var_0.x, var_0.x), vec4<u32>(4294967295u, var_1.e.b.x, 1u, 41573u) & vec4<u32>(54187u, var_0.x, var_1.c, 44307u))));
    global2 = array<i32, 10>();
    var var_3 = vec2<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1866f * -508f)) + 532f));
    let var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-473f, _wgslsmith_f_op_f32(-361f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x - var_3.x)))) + global1.zy);
    var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_4), global1.ww);
    var var_5 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(14292u, u_input.a), select(~max(var_0.zy, var_1.a.b.yx), max(select(vec2<u32>(var_2.x, 1u), var_1.e.b.yy, vec2<bool>(var_1.b.x, true)), var_2.yw & var_0.xz), var_1.b.x) >> (var_1.e.b.zx % vec2<u32>(32u)), abs(vec2<u32>(countOneBits(~0u), ~_wgslsmith_div_u32(41068u, 18664u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-912f - 721f), _wgslsmith_f_op_vec4_f32(func_2(~(-22490i), 37386i > global2[_wgslsmith_index_u32(27285u, 10u)])).x, var_1.b.x)), 892f), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_4.x, var_3.x, var_4.x))))))));
}

