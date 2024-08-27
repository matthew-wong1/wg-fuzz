struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: Struct_3,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_2, 9>;

var<private> global2: array<i32, 4> = array<i32, 4>(0i, 34300i, 11714i, -1i);

var<private> global3: array<Struct_4, 5> = array<Struct_4, 5>(Struct_4(vec4<f32>(-1115f, 624f, 237f, -444f)), Struct_4(vec4<f32>(-588f, -1701f, 585f, -145f)), Struct_4(vec4<f32>(101f, 383f, 315f, 1000f)), Struct_4(vec4<f32>(783f, 1773f, -453f, -646f)), Struct_4(vec4<f32>(-1055f, -692f, -1000f, 275f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = false;
    let var_1 = _wgslsmith_clamp_vec2_i32(firstLeadingBit(max(vec2<i32>(countOneBits(1i), global2[_wgslsmith_index_u32(u_input.e.x, 4u)]), countOneBits(~vec2<i32>(global2[_wgslsmith_index_u32(58541u, 4u)], 0i)))), vec2<i32>(-1i) * -firstTrailingBit(vec2<i32>(u_input.c, global2[_wgslsmith_index_u32(u_input.d.x, 4u)])), firstTrailingBit(vec2<i32>(min(58097i, abs(global2[_wgslsmith_index_u32(0u, 4u)])), firstTrailingBit(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d.x, 1u), 4u)]))));
    global2 = array<i32, 4>();
    let var_2 = arg_0;
    global2 = array<i32, 4>();
    return _wgslsmith_f_op_f32(floor(-539f));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-531f * _wgslsmith_f_op_f32(abs(arg_3.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(228f)) * _wgslsmith_f_op_f32(select(arg_1, arg_1, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_1)), -356f))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global0.a.yyz)) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -499f), _wgslsmith_f_op_f32(-arg_1), -289f)))));
    let var_1 = global1[_wgslsmith_index_u32(~(31381u >> (~countOneBits(~arg_3.a.x) % 32u)), 9u)];
    let var_2 = -1648f;
    global1 = array<Struct_2, 9>();
    global1 = array<Struct_2, 9>();
    return !var_1.d.c;
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_5(func_4(u_input.b, _wgslsmith_f_op_f32(func_3(Struct_1(vec2<u32>(u_input.d.x, 4294967295u), -589f, true, false))), 6040i, Struct_1(~u_input.d.zy, _wgslsmith_f_op_f32(702f * global0.a.x), false, select(false, true, false))) & (u_input.e.x != 1u), Struct_3(global1[_wgslsmith_index_u32(select(1u, ~65903u, true), 9u)], Struct_1(~(~vec2<u32>(u_input.e.x, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1262f * 384f)), any(vec3<bool>(true, true, true)), !(u_input.a < -29209i))), Struct_3(global1[_wgslsmith_index_u32(u_input.e.x, 9u)], Struct_1(firstTrailingBit(u_input.e.wy), 1724f, true, _wgslsmith_f_op_f32(-global0.a.x) > _wgslsmith_f_op_f32(1667f + global0.a.x))), -(~vec3<i32>(u_input.b, 1i, global2[_wgslsmith_index_u32(u_input.e.x, 4u)] << (u_input.e.x % 32u))), Struct_1(u_input.e.xz, -839f, false, true));
    var_0 = Struct_5(var_0.c.a.c.d, var_0.b, var_0.c, ~(~(_wgslsmith_clamp_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(12176u, 4u)], -1i, 18291i), var_0.d, vec3<i32>(-2147483647i, 2147483647i, var_0.d.x)) | vec3<i32>(2147483647i, 2147483647i, 54280i))), var_0.c.b);
    let var_1 = all(vec2<bool>(false, true));
    let var_2 = var_0.b.a.b;
    var var_3 = Struct_5(true, var_0.b, var_0.c, select(_wgslsmith_mod_vec3_i32(var_0.d, vec3<i32>(75632i, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(95903u, 24809u, 1u), 4u)], _wgslsmith_mult_i32(-11431i, var_0.d.x))), countOneBits(var_0.d), true), var_0.b.a.d);
    return global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(var_3.c.b.a.x, var_3.c.b.a.x & 1u), ~15553u >> (var_3.e.a.x % 32u)), 5u)];
}

fn func_5(arg_0: Struct_4, arg_1: bool, arg_2: Struct_1) -> Struct_4 {
    global2 = array<i32, 4>();
    var var_0 = 0u;
    return arg_0;
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: vec3<bool>) -> vec3<u32> {
    let var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-_wgslsmith_sub_i32(u_input.a, 43435i), -2147483647i), ~vec2<i32>(~(-20307i), ~global2[_wgslsmith_index_u32(4294967295u, 4u)])), u_input.b ^ -(~0i), ~(-countOneBits(global2[_wgslsmith_index_u32(countOneBits(4294967295u), 4u)])), _wgslsmith_dot_vec4_i32(~firstLeadingBit(-vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(1u, 4u)], -46167i, 2147483647i)), firstLeadingBit(~(-vec4<i32>(1i, global2[_wgslsmith_index_u32(u_input.d.x, 4u)], -17095i, -30020i)))));
    let var_1 = ~firstTrailingBit(vec3<u32>(0u, ~max(u_input.d.x, u_input.e.x), reverseBits(4294967295u & u_input.d.x)));
    var var_2 = global0.a.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(-arg_0);
    let var_4 = abs(var_0.yzx);
    return ~vec3<u32>(firstTrailingBit(u_input.e.x), u_input.e.x, ~_wgslsmith_div_u32(54594u, ~u_input.d.x));
}

fn func_1(arg_0: u32) -> vec2<f32> {
    let var_0 = func_6(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.a.xy + _wgslsmith_div_vec2_f32(vec2<f32>(-226f, global0.a.x), vec2<f32>(global0.a.x, global0.a.x))))), func_5(func_2(), -1i != u_input.b, Struct_1(_wgslsmith_mod_vec2_u32(u_input.e.xy, vec2<u32>(arg_0, 0u)) | firstLeadingBit(u_input.d.xw), _wgslsmith_f_op_f32(f32(-1f) * -287f), true, func_4(-u_input.c, global0.a.x, ~u_input.b, Struct_1(vec2<u32>(arg_0, arg_0), global0.a.x, false, false)))), select(vec3<bool>(select(any(vec2<bool>(false, false)), global2[_wgslsmith_index_u32(27516u, 4u)] != u_input.c, true), false, !(global0.a.x <= 1173f)), select(vec3<bool>(func_4(u_input.c, 254f, 6614i, Struct_1(vec2<u32>(arg_0, 12366u), global0.a.x, false, true)), true, true), select(vec3<bool>(false, false, false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), true), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true))));
    var var_1 = _wgslsmith_sub_vec4_i32(max(vec4<i32>(~(-36531i), -u_input.c, u_input.a, _wgslsmith_add_i32(u_input.c, u_input.b)), ~reverseBits(vec4<i32>(2147483647i, 47088i, u_input.c, -12826i))), countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, 17694i, u_input.b, -6i) | vec4<i32>(-1i, 35766i, 17750i, u_input.b), abs(vec4<i32>(global2[_wgslsmith_index_u32(var_0.x, 4u)], 20981i, global2[_wgslsmith_index_u32(44080u, 4u)], global2[_wgslsmith_index_u32(24580u, 4u)]))))) & _wgslsmith_clamp_vec4_i32(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(10744i, u_input.b, u_input.c, -7438i), vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 4u)], -2147483647i, u_input.b, 4882i), vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(78203u, 4u)], 9297i, 2147483647i))) ^ firstLeadingBit(vec4<i32>(0i, 50341i, -1i, u_input.b)), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.c, global2[_wgslsmith_index_u32(54711u, 4u)], 4049i), select(vec4<i32>(u_input.b, global2[_wgslsmith_index_u32(var_0.x, 4u)], global2[_wgslsmith_index_u32(0u, 4u)], -53577i), vec4<i32>(-96136i, 25078i, u_input.a, -25789i), vec4<bool>(false, true, true, false))), -vec4<i32>(global2[_wgslsmith_index_u32(arg_0, 4u)], 1i, 29669i, global2[_wgslsmith_index_u32(1u, 4u)])), select(~_wgslsmith_add_vec4_i32(vec4<i32>(-11175i, global2[_wgslsmith_index_u32(1u, 4u)], 0i, 25443i), vec4<i32>(2147483647i, 1i, u_input.c, -8879i)), ~vec4<i32>(-2147483647i, 18169i, global2[_wgslsmith_index_u32(u_input.d.x, 4u)], 1i) | firstLeadingBit(vec4<i32>(global2[_wgslsmith_index_u32(38023u, 4u)], 20478i, 30620i, global2[_wgslsmith_index_u32(38727u, 4u)])), true));
    let var_2 = _wgslsmith_dot_vec2_i32(var_1.ww, vec2<i32>(u_input.b << (~4294967295u % 32u), u_input.b)) ^ u_input.a;
    return vec2<f32>(global0.a.x, global0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(728f, -746f, -601f, -513f)) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-595f, global0.a.x, 141f, global0.a.x)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-973f, global0.a.x, 848f, -130f)))))));
    global1 = array<Struct_2, 9>();
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_1(u_input.e.x))));
    var var_1 = (func_4(2147483647i, global0.a.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -64518i, u_input.b), vec3<i32>(global2[_wgslsmith_index_u32(0u, 4u)], -22551i, global2[_wgslsmith_index_u32(17452u, 4u)])), 0i), Struct_1(~u_input.d.ww, _wgslsmith_f_op_f32(exp2(global0.a.x)), true, 12449u > u_input.e.x)) & ((abs(u_input.a) << ((u_input.e.x & 1u) % 32u)) == -1i)) || any(select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, func_4(-2147483647i, global0.a.x, -16491i, Struct_1(vec2<u32>(59330u, u_input.e.x), -887f, true, true)))));
    var var_2 = -11890i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + global0.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(865f, global0.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(254f, 1004f) * global0.a.xw)))), 25904u);
}

