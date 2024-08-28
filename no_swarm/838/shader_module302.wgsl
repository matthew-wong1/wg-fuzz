struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(1000f, 254f, -259f, 307f), vec4<f32>(-1053f, 1000f, -554f, -315f), vec4<u32>(4294967295u, 24724u, 27066u, 10463u), vec2<f32>(-938f, -328f));

var<private> global1: Struct_1 = Struct_1(vec4<f32>(130f, 1480f, -225f, -722f), vec4<f32>(2141f, 105f, -973f, -1733f), vec4<u32>(49869u, 60924u, 1u, 7356u), vec2<f32>(816f, 362f));

var<private> global2: array<bool, 3>;

var<private> global3: array<vec2<f32>, 12>;

var<private> global4: array<f32, 14> = array<f32, 14>(-867f, -1121f, -986f, -1215f, 814f, 1000f, 1210f, 634f, 1000f, -189f, -717f, -550f, 297f, -1797f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec2<f32> {
    let var_0 = -vec4<i32>(u_input.a.x, select(~_wgslsmith_dot_vec3_i32(u_input.e.ywz, u_input.e.yzw), -1i | u_input.b, global2[_wgslsmith_index_u32(~(~global0.c.x), 3u)]), _wgslsmith_sub_i32(i32(-1i) * -2147483647i, reverseBits(0i)), u_input.b);
    global3 = array<vec2<f32>, 12>();
    global2 = array<bool, 3>();
    global4 = array<f32, 14>();
    global3 = array<vec2<f32>, 12>();
    return _wgslsmith_f_op_vec2_f32(floor(global3[_wgslsmith_index_u32(0u, 12u)]));
}

fn func_2(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = -1824f;
    global3 = array<vec2<f32>, 12>();
    let var_1 = Struct_2(Struct_1(arg_0.b, _wgslsmith_f_op_vec4_f32(global1.a - arg_0.b), vec4<u32>(43087u, 43066u, 6594u, 0u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_3()))), _wgslsmith_f_op_vec2_f32(exp2(global1.b.yy)), any(!vec4<bool>(global2[_wgslsmith_index_u32(1u, 3u)], true, global2[_wgslsmith_index_u32(arg_0.c.x, 3u)], global2[_wgslsmith_index_u32(56910u, 3u)]))))), -1i);
    global2 = array<bool, 3>();
    var var_2 = Struct_2(Struct_1(var_1.a.b, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1238f, -272f, global4[_wgslsmith_index_u32(0u, 14u)], -594f) * arg_0.b))), abs(countOneBits(~global0.c)), global3[_wgslsmith_index_u32(4294967295u, 12u)]), _wgslsmith_clamp_i32(var_1.b, _wgslsmith_mod_i32(var_1.b, u_input.a.x), ~10438i));
    return var_2.a.b;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: i32) -> vec4<f32> {
    global2 = array<bool, 3>();
    global1 = Struct_1(vec4<f32>(-1342f, 1291f, -1505f, global4[_wgslsmith_index_u32(~max(1u, 4294967295u | arg_1), 14u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.a) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.a * _wgslsmith_f_op_vec4_f32(func_2(Struct_1(vec4<f32>(arg_2, arg_2, global1.b.x, global4[_wgslsmith_index_u32(global0.c.x, 14u)]), global0.b, vec4<u32>(13650u, global1.c.x, global0.c.x, arg_0.c.x), global3[_wgslsmith_index_u32(arg_0.c.x, 12u)])))) * _wgslsmith_f_op_vec4_f32(min(global0.b, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1430f, -681f, -1000f, -2726f))))))), vec4<u32>(arg_1, arg_0.c.x, arg_1, 90325u), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * arg_0.b.x) + -1832f) - 1508f), -1000f));
    global0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(max(1596f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(539f, global0.b.x)))), _wgslsmith_f_op_f32(max(global1.d.x, _wgslsmith_f_op_f32(trunc(global1.b.x)))), _wgslsmith_f_op_vec2_f32(func_3()).x, global4[_wgslsmith_index_u32(min(~4294967295u, global1.c.x), 14u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_2(Struct_1(global1.a, vec4<f32>(-1368f, global4[_wgslsmith_index_u32(79021u, 14u)], global4[_wgslsmith_index_u32(17785u, 14u)], arg_2), global0.c, vec2<f32>(global0.a.x, global0.d.x)))), vec4<f32>(global4[_wgslsmith_index_u32(0u, 14u)], global1.a.x, -212f, global1.d.x), -51443i < arg_3)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.a * vec4<f32>(arg_2, global4[_wgslsmith_index_u32(global0.c.x, 14u)], arg_2, global4[_wgslsmith_index_u32(1u, 14u)])) - vec4<f32>(-494f, arg_2, -765f, arg_0.d.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-global0.b), _wgslsmith_f_op_vec4_f32(arg_0.b - arg_0.a))))), global1.c, global1.d);
    global3 = array<vec2<f32>, 12>();
    let var_0 = arg_0;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(arg_0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(248f, 1947f, 1838f, -177f) - _wgslsmith_f_op_vec4_f32(-global0.b))), _wgslsmith_f_op_vec4_f32(func_1(Struct_1(_wgslsmith_div_vec4_f32(global0.b, global1.b), global0.b, vec4<u32>(0u, global1.c.x, 2371u, 20277u), vec2<f32>(-2491f, 1620f)), ~(~global1.c.x), global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(12004u, 4294967295u, 4294967295u, 1u), global0.c), 14u)], 34922i)))), _wgslsmith_f_op_vec4_f32(ceil(global0.a)), ~global0.c, global0.b.zx);
    global4 = array<f32, 14>();
    global2 = array<bool, 3>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-472f, global0.b.x, 190f, global1.b.x) - vec4<f32>(-2225f, global4[_wgslsmith_index_u32(0u, 14u)], -1428f, -1948f)) + vec4<f32>(768f, 759f, global0.a.x, global1.b.x)))) + global1.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-107f, global0.a.x, global0.b.x, global4[_wgslsmith_index_u32(35730u, 14u)]), global1.a) * vec4<f32>(864f, -849f, global1.b.x, 449f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, -202f, 664f, global0.b.x)) + _wgslsmith_f_op_vec4_f32(global0.b * global0.a)))), _wgslsmith_sub_vec4_u32(global0.c ^ vec4<u32>(1u, countOneBits(1u), 52905u, global0.c.x), max(global1.c, ~(~global1.c))), vec2<f32>(-1000f, global1.a.x));
    var_0 = Struct_1(vec4<f32>(516f, _wgslsmith_f_op_f32(min(var_0.b.x, -1730f)), -831f, 775f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a))))), global0.c, var_0.d);
    let var_1 = _wgslsmith_f_op_vec2_f32(-global1.d);
    global1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_1(vec4<f32>(-375f, var_0.d.x, -821f, global1.d.x), vec4<f32>(-234f, -1153f, var_1.x, global4[_wgslsmith_index_u32(global0.c.x, 14u)]), vec4<u32>(global1.c.x, var_0.c.x, 46538u, 89898u), vec2<f32>(var_0.b.x, var_1.x)))).x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(var_0.c.x, 14u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_1.x)), 1958f))), _wgslsmith_f_op_vec4_f32(func_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(973f, 745f, global0.a.x, global4[_wgslsmith_index_u32(4294967295u, 14u)]) - var_0.b), global1.b, global1.c, vec2<f32>(697f, global1.d.x)))).x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-198f + global1.a.x), _wgslsmith_div_f32(global1.d.x, global0.d.x), _wgslsmith_f_op_f32(ceil(-206f)), -324f) - vec4<f32>(-1130f, _wgslsmith_f_op_vec4_f32(func_1(Struct_1(global0.a, global1.a, global1.c, vec2<f32>(-563f, 2135f)), global0.c.x, var_0.a.x, 2147483647i)).x, _wgslsmith_f_op_f32(sign(-330f)), _wgslsmith_f_op_vec2_f32(func_3()).x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(global0.d.x, -1636f)), _wgslsmith_f_op_f32(277f + global0.b.x), _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(min(var_1.x, 422f))))), global0.c, _wgslsmith_div_vec2_f32(vec2<f32>(-1703f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-129f))))), vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-616f - -263f)))));
    global1 = Struct_1(vec4<f32>(-118f, 453f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x - var_0.a.x) + var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(15504u, 14u)])))), _wgslsmith_f_op_vec4_f32(var_0.b + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.b), global1.b)))), global1.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-170f + -298f) * _wgslsmith_div_f32(1705f, var_0.d.x)))));
    let var_2 = _wgslsmith_f_op_f32(min(-374f, var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(var_0.c.x, countOneBits(var_0.c.x & global0.c.x)) << ((~select(global0.c.x, global1.c.x, true) << (_wgslsmith_div_u32(max(1u, 27477u), 28597u) % 32u)) % 32u), 0u, global3[_wgslsmith_index_u32(1u, 12u)], 63493u);
}

