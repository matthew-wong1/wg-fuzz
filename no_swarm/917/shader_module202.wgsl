struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 27>;

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<f32>(1394f, -1053f, 1089f), -3660i, 484f, vec3<f32>(-515f, -2414f, 1506f), vec4<i32>(i32(-2147483648), 2147483647i, 12634i, -1i)), Struct_1(vec3<f32>(669f, 109f, 564f), 10479i, -2027f, vec3<f32>(-2180f, -1154f, -1021f), vec4<i32>(-73244i, -1i, 0i, -1i)), Struct_1(vec3<f32>(380f, -145f, 1000f), 10461i, 772f, vec3<f32>(106f, -1290f, -392f), vec4<i32>(-1i, -1i, 1i, -1i)), Struct_1(vec3<f32>(1203f, 210f, 180f), 0i, 1992f, vec3<f32>(1348f, 1264f, -1214f), vec4<i32>(1i, -13992i, 0i, 2147483647i)), Struct_1(vec3<f32>(-465f, 840f, 1024f), 14193i, 892f, vec3<f32>(-1751f, 517f, 249f), vec4<i32>(-1i, 2147483647i, -1i, 10109i)), Struct_1(vec3<f32>(-501f, 2441f, 528f), 70466i, -210f, vec3<f32>(682f, 1000f, -628f), vec4<i32>(0i, i32(-2147483648), 186i, -1i)), Struct_1(vec3<f32>(137f, 1111f, 477f), 47688i, -177f, vec3<f32>(1455f, 1000f, 1269f), vec4<i32>(-9819i, -3366i, -1i, -28904i)), Struct_1(vec3<f32>(434f, 706f, -318f), -10376i, 635f, vec3<f32>(-1668f, -428f, 210f), vec4<i32>(10590i, 1i, i32(-2147483648), 2147483647i)));

var<private> global2: Struct_1;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> u32 {
    global2 = Struct_1(vec3<f32>(-2946f, _wgslsmith_f_op_f32(1807f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -879f)))), -1383f), ~firstLeadingBit(arg_1.b >> (30438u % 32u)) << (~(~(~4294967295u)) % 32u), _wgslsmith_f_op_f32(125f - -439f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.c, arg_1.c, -1033f), global2.d))))), ~arg_1.e);
    let var_0 = select(firstTrailingBit(abs(vec2<u32>(1u, 1u))), reverseBits(firstLeadingBit(vec2<u32>(1u, 1u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)))), select(vec2<bool>(all(vec2<bool>(true, false)), any(vec4<bool>(true, false, arg_0, arg_0))), vec2<bool>(false, true), !(-arg_1.e.x <= (-1i & global2.e.x))));
    var var_1 = u_input.a;
    global1 = array<Struct_1, 8>();
    var_1 = 2147483647i;
    return 47579u;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(global2.a)), _wgslsmith_div_i32(global2.b, ~u_input.a) ^ arg_2.b, arg_2.a.x, _wgslsmith_f_op_vec3_f32(min(arg_0, vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2.c)) + arg_2.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-555f, global2.c)))))), _wgslsmith_div_vec4_i32(global2.e, _wgslsmith_mult_vec4_i32(countOneBits(global2.e) | _wgslsmith_sub_vec4_i32(vec4<i32>(1i, arg_2.b, global2.b, global2.b), vec4<i32>(global2.b, global2.e.x, -7150i, 2147483647i)), -max(vec4<i32>(global2.b, arg_2.e.x, -27470i, arg_2.b), global2.e))));
    var var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_vec3_f32(-global2.a);
    var_1 = arg_2;
    let var_3 = global1[_wgslsmith_index_u32(0u, 8u)];
    return ~vec3<u32>(0u, _wgslsmith_add_u32(arg_1.x, 4294967295u) | 18044u, arg_1.x | arg_1.x);
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_1(vec3<f32>(-1048f, 1173f, _wgslsmith_f_op_f32(floor(arg_0))), global2.b, 314f, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(global2.d)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.a - vec3<f32>(650f, -799f, global2.d.x)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1715f, arg_0, -467f), vec3<f32>(global2.d.x, -1326f, -597f), false))))), firstLeadingBit(vec4<i32>(-1i, -5825i, -13481i, global2.b & u_input.a) & vec4<i32>(-9536i, _wgslsmith_dot_vec4_i32(global2.e, vec4<i32>(global2.b, u_input.a, 0i, global2.b)), 7471i, u_input.a << (24570u % 32u))));
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, 1367f, 138f) * var_0.d) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 178f, arg_0)))), vec4<u32>(_wgslsmith_sub_u32(~1u, ~1u), ~(~25899u), ~_wgslsmith_mult_u32(1u, 4294967295u), func_3(true, global1[_wgslsmith_index_u32(select(8949u, 0u, true), 8u)])), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.a)), ~(-1i), _wgslsmith_f_op_f32(245f - _wgslsmith_f_op_f32(exp2(arg_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a.x, arg_0, var_0.c))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c, arg_0, -612f) + global2.d)), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.a, var_0.b, 1i), var_0.e), select(global2.e, vec4<i32>(1i, var_0.b, var_0.e.x, var_0.e.x), vec4<bool>(true, false, true, false)), ~vec4<i32>(global2.b, u_input.a, -78250i, u_input.a)))) ^ ~(~vec3<u32>(1u, 1u, 1u));
    global2 = var_0;
    return var_0;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = global2.a.yx;
    let var_1 = func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.d.x))) - _wgslsmith_f_op_f32(floor(global2.d.x))))));
    var var_2 = var_1;
    let var_3 = Struct_1(var_2.d, select(arg_1.e.x, 1i, false) ^ ~_wgslsmith_dot_vec3_i32(-global2.e.wzx, ~vec3<i32>(arg_0.x, arg_0.x, global2.b)), _wgslsmith_f_op_f32(-1000f + 1380f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.a.x, -1642f, var_0.x))), _wgslsmith_f_op_vec3_f32(arg_1.a * global2.d)))))), var_2.e);
    let var_4 = ~arg_1.b > abs(firstTrailingBit(-2147483647i));
    return vec3<bool>(4294967295u < _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), abs(vec2<u32>(89159u, 9925u))), all(!(!(!vec3<bool>(true, var_4, var_4)))), all(select(select(vec2<bool>(var_4, false), vec2<bool>(var_4, true), vec2<bool>(false, true)), !vec2<bool>(var_4, var_4), !select(vec2<bool>(var_4, var_4), vec2<bool>(var_4, true), true))));
}

fn func_5(arg_0: bool, arg_1: vec3<bool>, arg_2: vec2<u32>, arg_3: u32) -> f32 {
    var var_0 = ~firstTrailingBit(u_input.a);
    let var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-237f))))));
    let var_2 = _wgslsmith_clamp_i32(2147483647i, abs(var_1.b), abs(global2.e.x));
    var var_3 = func_2(_wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.x) * 572f))));
    let var_4 = func_2(1000f);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(1006f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d.x), 1682f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.c)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1000f, var_4.d.x)), 681f, true)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(global2.d.x - global2.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c - _wgslsmith_f_op_f32(f32(-1f) * -942f)) - _wgslsmith_f_op_f32(f32(-1f) * -800f))), u_input.a, _wgslsmith_f_op_f32(func_5(true, select(func_1(-vec2<i32>(-33489i, 55483i), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(21869u, 43840u, 2959u, 4294967295u), vec4<u32>(4294967295u, 0u, 4294967295u, 31059u)), 8u)]), func_1(-vec2<i32>(43134i, 1i), global1[_wgslsmith_index_u32(1u, 8u)]), true), vec2<u32>(16284u, 1u), abs(~func_4(global2.d, vec4<u32>(29091u, 74789u, 63598u, 4294967295u), global1[_wgslsmith_index_u32(57652u, 8u)]).x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-376f, 297f, global2.c) - global2.d) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c, -642f, -245f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1269f, 391f, 224f), vec3<f32>(global2.c, global2.c, 560f), false)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global2.a), _wgslsmith_f_op_vec3_f32(floor(global2.a))))))), -vec4<i32>(36875i, -26333i, 1i, 5918i));
    global0 = array<vec4<f32>, 27>();
    let var_1 = ~(reverseBits(1i) >> (_wgslsmith_div_u32(~(~1u), 1u) % 32u));
    global2 = func_2(_wgslsmith_f_op_f32(min(1721f, -744f)));
    global2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0.d - var_0.a), _wgslsmith_f_op_vec3_f32(var_0.a - vec3<f32>(963f, 157f, global2.c)), true)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-188f, global2.a.x, 1029f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(987f, var_0.c, 831f))))), global2.e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1171f))), global2.a.x), var_0.d, _wgslsmith_clamp_vec4_i32(-global2.e, vec4<i32>(~(~2147483647i), select(var_1, _wgslsmith_sub_i32(6680i, 2147483647i), true), _wgslsmith_dot_vec3_i32(var_0.e.ywy, vec3<i32>(var_1, u_input.a, -40261i)), 20975i), -(max(global2.e, vec4<i32>(-1i, var_0.e.x, global2.b, var_0.e.x)) & vec4<i32>(-2147483647i, -1i, global2.b, var_0.e.x))));
    var var_2 = global1[_wgslsmith_index_u32(~(~func_3(select(true, true, false), Struct_1(var_0.a, ~global2.e.x, _wgslsmith_f_op_f32(select(-229f, var_0.d.x, false)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1082f, 1160f, var_0.d.x))), global2.e << (vec4<u32>(4294967295u, 54793u, 4294967295u, 33590u) % vec4<u32>(32u))))), 8u)];
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(func_2(-1216f).a)), ~_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(~var_0.e, vec4<i32>(52372i, var_1, var_1, var_0.e.x)), var_2.b), 1008f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(global2.d.x)), global2.a.x, u_input.a <= var_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) * global2.d.x), _wgslsmith_f_op_f32(floor(113f)))), var_2.e);
    global1 = array<Struct_1, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_1, var_3.b), min(~17490u, 1u), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(1u, 2816u, 9126u)), _wgslsmith_clamp_vec3_u32(~max(vec3<u32>(67233u, 9960u, 51810u), vec3<u32>(0u, 14689u, 43775u)), ~countOneBits(vec3<u32>(0u, 42345u, 1u)), vec3<u32>(4294967295u, ~49998u, min(4294967295u, 1928u)))), vec4<i32>(-23102i, (1i | var_3.b) >> (~21027u % 32u), -29810i, _wgslsmith_clamp_i32(~countOneBits(55762i), 0i, firstTrailingBit(-var_0.b))), ~(~select(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))));
}

