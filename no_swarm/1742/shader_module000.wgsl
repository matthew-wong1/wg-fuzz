struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23> = array<f32, 23>(-1290f, -868f, -1840f, 1558f, -605f, 1197f, 272f, 573f, -535f, -152f, -650f, 197f, -295f, 500f, 239f, 495f, -1091f, 785f, 250f, -305f, 2572f, 358f, 470f);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: vec2<i32>) -> vec3<f32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(22262u, 23u)], 897f), vec2<f32>(-2946f, -1552f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0[_wgslsmith_index_u32(17198u, 23u)], global0[_wgslsmith_index_u32(13767u, 23u)]), vec2<f32>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)]))), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], -114f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-329f, 749f) * vec2<f32>(global0[_wgslsmith_index_u32(10976u, 23u)], global0[_wgslsmith_index_u32(u_input.c, 23u)])))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(463f, 814f) - vec2<f32>(1460f, -1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(420u, 23u)], 2340f))))), select(~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 4294967295u), _wgslsmith_sub_vec2_u32(vec2<u32>(64324u, 53593u), vec2<u32>(4294967295u, u_input.c)), firstTrailingBit(vec2<u32>(u_input.c, u_input.a.x))), _wgslsmith_add_vec2_u32(~u_input.a, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(13424u, u_input.c), vec2<u32>(u_input.c, u_input.a.x), vec2<u32>(4294967295u, 1u))), vec2<bool>(true, true)), _wgslsmith_div_vec3_i32(countOneBits(u_input.b ^ -u_input.b), _wgslsmith_clamp_vec3_i32(~u_input.b, vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i) | (u_input.b & vec3<i32>(-2147483647i, 21290i, arg_0.x)), vec3<i32>(~arg_0.x, arg_0.x & -28628i, u_input.d.x))));
    return _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 23u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.a.x, 23u)])))), 1450f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-125f - var_0.a.x), _wgslsmith_f_op_f32(-1517f * global0[_wgslsmith_index_u32(1u, 23u)]), _wgslsmith_f_op_f32(ceil(var_0.a.x))))))));
}

fn func_3(arg_0: i32) -> vec2<bool> {
    var var_0 = false;
    var_0 = false;
    let var_1 = !vec2<bool>(!(_wgslsmith_add_u32(u_input.c, u_input.a.x) <= 15359u), false);
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0[_wgslsmith_index_u32(u_input.c, 23u)], 372f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(191f, -668f)), select(vec2<bool>(false, var_1.x), var_1, false))))), u_input.a, vec3<i32>(2147483647i, 1i, ~u_input.b.x));
    return vec2<bool>(var_2.a.x < _wgslsmith_f_op_f32(-1000f - 1000f), var_1.x);
}

fn func_1(arg_0: i32, arg_1: bool) -> Struct_2 {
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 23u)] * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~4294967295u, u_input.a.x ^ u_input.a.x), 23u)])), global0[_wgslsmith_index_u32(4294967295u, 23u)]);
    let var_1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1000f, global0[_wgslsmith_index_u32(u_input.c, 23u)]))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_div_vec2_i32(vec2<i32>(-55009i, u_input.b.x), u_input.d)))))), func_3(-select(_wgslsmith_mod_i32(arg_0, -39983i), abs(u_input.d.x), arg_1)));
    let var_2 = 7712i;
    return Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.x - -399f), -926f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_0, _wgslsmith_f_op_vec2_f32(select(var_0, vec2<f32>(383f, -307f), var_1.b)))) - var_0)), u_input.a, select(u_input.b, vec3<i32>(2147483647i, _wgslsmith_mult_i32(-57243i, -var_2), u_input.b.x), false != !select(arg_1, var_1.b.x, var_1.b.x)));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_2) -> vec2<u32> {
    global0 = array<f32, 23>();
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1564f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-897f)) * arg_2.a.x)), 1f))));
    global0 = array<f32, 23>();
    var var_1 = (i32(-1i) * -30276i) | _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(arg_2.c, arg_2.c) << (_wgslsmith_clamp_u32(arg_2.b.x, arg_2.b.x, 59496u) % 32u), -_wgslsmith_clamp_i32(u_input.d.x, 23877i, arg_2.c.x), u_input.d.x, ~u_input.b.x), _wgslsmith_sub_vec4_i32(vec4<i32>(1i & u_input.d.x, u_input.d.x, i32(-1i) * -1i, -2147483647i), vec4<i32>(_wgslsmith_div_i32(4031i, u_input.d.x), 58967i & u_input.d.x, countOneBits(-30850i), -u_input.d.x)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-2720f, arg_2.a.x), -1245f, _wgslsmith_f_op_f32(min(-866f, 484f)))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.x, arg_2.a.x, var_0) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0, var_0, 839f))))))), vec2<bool>(all(vec4<bool>(false, !arg_0, arg_1, arg_2.c.x <= arg_2.c.x)), false));
    return _wgslsmith_mod_vec2_u32(firstLeadingBit(u_input.a), min(~arg_2.b, _wgslsmith_mod_vec2_u32(~_wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, arg_2.b.x)), _wgslsmith_add_vec2_u32(func_1(2147483647i, arg_0).b, vec2<u32>(1u, u_input.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~firstTrailingBit(func_4(any(vec4<bool>(true, false, false, true)), true, func_1(-u_input.d.x, false)));
    var var_1 = ~(~(i32(-1i) * -u_input.b.x)) != select(u_input.b.x, ~(-u_input.d.x), select(all(vec3<bool>(true, true, true)), true, false));
    let var_2 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(var_0.x, 23u)], 157f))))), select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true)))), func_3(_wgslsmith_sub_i32(reverseBits(u_input.b.x), -(~30211i))).x, u_input.b.yy << (~vec2<u32>(u_input.c, u_input.c << (44990u % 32u)) % vec2<u32>(32u)));
    var_1 = var_2.b;
    let var_3 = !func_3(-_wgslsmith_add_i32(u_input.b.x, min(8958i, u_input.d.x))).x;
    global0 = array<f32, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~(-1i), 19936i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.c.x, _wgslsmith_mod_i32(var_2.c.x, var_2.c.x), ~u_input.d.x, _wgslsmith_add_i32(-28870i, u_input.b.x)), select(~vec4<i32>(1i, var_2.c.x, -16008i, var_2.c.x), vec4<i32>(var_2.c.x, 25438i, 23274i, 2147483647i), select(vec4<bool>(false, var_3, var_3, true), vec4<bool>(var_2.b, var_3, false, true), true)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.x, 23u)]))), abs(-(~vec4<i32>(0i, var_2.c.x, u_input.b.x, 0i))), var_2.a.a.xz);
}

