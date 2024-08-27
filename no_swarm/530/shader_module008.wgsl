struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec2<f32>(613f, -220f), vec4<u32>(6447u, 9860u, 22616u, 50798u)), Struct_1(vec2<f32>(402f, -1512f), vec4<u32>(0u, 0u, 106106u, 0u)), Struct_1(vec2<f32>(-1648f, -253f), vec4<u32>(14318u, 19207u, 4294967295u, 14184u)), Struct_1(vec2<f32>(-715f, 410f), vec4<u32>(18636u, 1u, 4294967295u, 1u)), Struct_1(vec2<f32>(910f, 788f), vec4<u32>(0u, 4294967295u, 62686u, 1u)), Struct_1(vec2<f32>(308f, -1540f), vec4<u32>(25023u, 1u, 42539u, 49446u)), Struct_1(vec2<f32>(-1726f, 257f), vec4<u32>(51719u, 4294967295u, 1u, 59408u)), Struct_1(vec2<f32>(-429f, -167f), vec4<u32>(77644u, 4294967295u, 50935u, 4294967295u)), Struct_1(vec2<f32>(1335f, -115f), vec4<u32>(4294967295u, 21769u, 15032u, 12970u)), Struct_1(vec2<f32>(-265f, 329f), vec4<u32>(72548u, 9383u, 2752u, 42084u)), Struct_1(vec2<f32>(136f, -1309f), vec4<u32>(65459u, 0u, 0u, 123205u)), Struct_1(vec2<f32>(911f, 1014f), vec4<u32>(8873u, 1u, 15563u, 38367u)), Struct_1(vec2<f32>(-2123f, 1153f), vec4<u32>(4294967295u, 4294967295u, 0u, 0u)), Struct_1(vec2<f32>(581f, -746f), vec4<u32>(78320u, 14745u, 4294967295u, 5303u)), Struct_1(vec2<f32>(-179f, 208f), vec4<u32>(19684u, 0u, 0u, 17376u)), Struct_1(vec2<f32>(889f, 687f), vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u)), Struct_1(vec2<f32>(176f, -255f), vec4<u32>(1u, 4294967295u, 48505u, 14009u)), Struct_1(vec2<f32>(589f, -630f), vec4<u32>(4294967295u, 43444u, 1u, 2354u)), Struct_1(vec2<f32>(1531f, 287f), vec4<u32>(0u, 71118u, 61980u, 34605u)), Struct_1(vec2<f32>(-100f, -786f), vec4<u32>(4294967295u, 508u, 52850u, 37189u)), Struct_1(vec2<f32>(-1808f, -169f), vec4<u32>(0u, 15177u, 107868u, 4294967295u)), Struct_1(vec2<f32>(129f, -333f), vec4<u32>(15940u, 4294967295u, 14014u, 21874u)), Struct_1(vec2<f32>(293f, 2140f), vec4<u32>(4294967295u, 1u, 33861u, 4294967295u)), Struct_1(vec2<f32>(1320f, -339f), vec4<u32>(39738u, 0u, 1u, 1u)), Struct_1(vec2<f32>(1000f, 501f), vec4<u32>(21470u, 1u, 0u, 10818u)));

var<private> global1: array<i32, 19> = array<i32, 19>(30994i, 2147483647i, -27192i, 0i, 35546i, 31516i, 1i, -36928i, i32(-2147483648), 0i, -13339i, 42758i, -6061i, i32(-2147483648), 0i, 13450i, -27569i, -22904i, 14497i);

var<private> global2: array<bool, 16> = array<bool, 16>(true, true, false, false, true, false, true, true, true, false, false, false, false, false, true, true);

var<private> global3: bool;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_4) -> u32 {
    global0 = array<Struct_1, 25>();
    let var_0 = _wgslsmith_sub_vec2_i32(countOneBits(-vec2<i32>(-51009i, 0i)) & ~vec2<i32>(48682i, u_input.c), ~_wgslsmith_mod_vec2_i32(abs(vec2<i32>(0i, 0i)), vec2<i32>(global1[_wgslsmith_index_u32(1u, 19u)], -5182i) & vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 19u)], -2147483647i))) >> (u_input.b % vec2<u32>(32u));
    var var_1 = Struct_1(_wgslsmith_div_vec2_f32(arg_0.a.a, vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1396f)))), _wgslsmith_f_op_f32(floor(888f)))), vec4<u32>(~_wgslsmith_dot_vec4_u32(arg_3.a.a.b, arg_0.a.b), arg_2, 1u, 38304u));
    let var_2 = !any(!(!vec2<bool>(false, global2[_wgslsmith_index_u32(arg_3.a.a.b.x, 16u)])));
    global0 = array<Struct_1, 25>();
    return ~130u;
}

fn func_2() -> vec2<bool> {
    let var_0 = 4294967295u;
    global2 = array<bool, 16>();
    let var_1 = vec2<u32>(var_0, 1u);
    let var_2 = _wgslsmith_div_vec2_i32(~(~(-vec2<i32>(global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(1u, 19u)]))) & vec2<i32>(-_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(var_1.x, 19u)], u_input.a), global1[_wgslsmith_index_u32(~var_1.x | 27288u, 19u)]), ~abs(_wgslsmith_div_vec2_i32(~vec2<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 19u)], u_input.c), vec2<i32>(global1[_wgslsmith_index_u32(0u, 19u)], -10657i))));
    let var_3 = Struct_2(global0[_wgslsmith_index_u32(max(func_3(Struct_3(Struct_1(vec2<f32>(438f, -179f), vec4<u32>(u_input.b.x, var_0, u_input.b.x, 85152u)), vec3<u32>(var_0, u_input.b.x, var_0)), vec2<f32>(-667f, 1524f), max(var_1.x, var_1.x), Struct_4(Struct_3(global0[_wgslsmith_index_u32(u_input.b.x, 25u)], vec3<u32>(var_1.x, u_input.b.x, var_1.x)))), 0u ^ var_0) | 1u, 25u)], vec2<i32>(global1[_wgslsmith_index_u32(var_1.x, 19u)], -1i), global0[_wgslsmith_index_u32(reverseBits(abs(var_0)), 25u)], abs(1u) ^ _wgslsmith_mod_u32(var_1.x, abs(~var_0)), u_input.c);
    return !vec2<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(46770u, u_input.b.x, 14629u, var_0), select(var_3.a.b, vec4<u32>(u_input.b.x, u_input.b.x, 35151u, 87210u), vec4<bool>(true, true, global2[_wgslsmith_index_u32(var_3.c.b.x, 16u)], global2[_wgslsmith_index_u32(var_0, 16u)]))) <= abs(~0u), true);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3) -> i32 {
    let var_0 = select(vec2<bool>(true, true), select(select(select(select(vec2<bool>(false, global2[_wgslsmith_index_u32(7939u, 16u)]), vec2<bool>(true, true), global2[_wgslsmith_index_u32(41825u, 16u)]), select(vec2<bool>(global2[_wgslsmith_index_u32(arg_0.a.b.x, 16u)], true), vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 16u)], global2[_wgslsmith_index_u32(30815u, 16u)]), false), func_2()), vec2<bool>(global2[_wgslsmith_index_u32(1u, 16u)], true), arg_0.a.a.a.x >= _wgslsmith_f_op_f32(sign(-616f))), vec2<bool>(true, false), all(vec2<bool>(false, true)) || true), all(vec2<bool>(true, false)) | func_2().x);
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1478f, arg_1.a.a.x, arg_1.a.a.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1284f, arg_0.a.a.a.x, -1997f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-898f, -1000f, -410f)))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.a.a.x * arg_0.a.a.a.x), 1000f, arg_1.a.a.x)))), vec3<bool>(!global2[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 16u)], true, any(!select(vec2<bool>(false, false), var_0, true)))));
    var var_2 = all(select(select(!select(vec4<bool>(false, true, false, var_0.x), vec4<bool>(true, false, var_0.x, false), false), !(!vec4<bool>(global2[_wgslsmith_index_u32(arg_0.a.a.b.x, 16u)], global2[_wgslsmith_index_u32(u_input.b.x, 16u)], var_0.x, global2[_wgslsmith_index_u32(30466u, 16u)])), !(!global2[_wgslsmith_index_u32(0u, 16u)])), vec4<bool>(!(!global2[_wgslsmith_index_u32(0u, 16u)]), any(var_0), var_0.x, !var_0.x), !vec4<bool>(func_2().x, !var_0.x, var_0.x, global2[_wgslsmith_index_u32(~1u, 16u)])));
    var var_3 = ~(i32(-1i) * -14360i) >= u_input.c;
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(var_1.zy, vec2<f32>(arg_1.a.a.x, 1216f)))), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(4294967295u, 29887u), arg_0.a.b.x), ~abs(0u), ~24507u, u_input.b.x)), vec2<i32>(u_input.a, select(-u_input.c, abs(select(u_input.c, global1[_wgslsmith_index_u32(62798u, 19u)], global2[_wgslsmith_index_u32(38004u, 16u)])), true)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-1468f * var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, 675f))), ~firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a.b.x, 0u, 10385u, 1u), vec4<u32>(arg_0.a.b.x, 1u, 18026u, u_input.b.x)))), 1u, -1i);
    return _wgslsmith_div_i32(~(-var_4.e), 1i);
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: bool, arg_3: vec3<f32>) -> StorageBuffer {
    var var_0 = Struct_4(Struct_3(global0[_wgslsmith_index_u32(~4294967295u, 25u)], max(firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(9055u, 4294967295u, 0u))), vec3<u32>(abs(1u), abs(3744u), 1u))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_0.a.a.a))) - vec2<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0));
    var var_2 = global0[_wgslsmith_index_u32(73551u, 25u)];
    let var_3 = u_input.b & u_input.b;
    var var_4 = ~_wgslsmith_dot_vec2_u32(u_input.b, var_0.a.a.b.yz);
    return StorageBuffer(var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(-1061f, _wgslsmith_add_vec3_i32(max(vec3<i32>(func_1(Struct_4(Struct_3(global0[_wgslsmith_index_u32(u_input.b.x, 25u)], vec3<u32>(u_input.b.x, u_input.b.x, 8108u))), Struct_3(Struct_1(vec2<f32>(1988f, -1578f), vec4<u32>(1625u, 0u, 0u, u_input.b.x)), vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u))), u_input.a & global1[_wgslsmith_index_u32(273u, 19u)], ~global1[_wgslsmith_index_u32(u_input.b.x, 19u)]), ~vec3<i32>(u_input.c, global1[_wgslsmith_index_u32(4294967295u, 19u)], 22931i) ^ -vec3<i32>(global1[_wgslsmith_index_u32(0u, 19u)], 8312i, u_input.c)), select(select(~vec3<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 19u)], -2147483647i, global1[_wgslsmith_index_u32(u_input.b.x, 19u)]), abs(vec3<i32>(54076i, u_input.c, 26750i)), vec3<bool>(true, global2[_wgslsmith_index_u32(73227u, 16u)], global2[_wgslsmith_index_u32(u_input.b.x, 16u)])), vec3<i32>(global1[_wgslsmith_index_u32(~u_input.b.x, 19u)], u_input.a, _wgslsmith_div_i32(u_input.a, global1[_wgslsmith_index_u32(u_input.b.x, 19u)])), global2[_wgslsmith_index_u32(20053u, 16u)])), func_2().x, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -831f), 2667f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -247f)))))));
}

