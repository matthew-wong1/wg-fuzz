struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: f32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 27> = array<vec4<i32>, 27>(vec4<i32>(52212i, 34980i, -2580i, 0i), vec4<i32>(i32(-2147483648), -35882i, 33225i, 20676i), vec4<i32>(-1i, 59310i, -30307i, -1i), vec4<i32>(-51110i, 2147483647i, 1i, -27174i), vec4<i32>(0i, 0i, 2147483647i, 2147483647i), vec4<i32>(47718i, -24298i, 1i, -1925i), vec4<i32>(-1i, 38869i, 25737i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 1i, -1i, -28538i), vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, i32(-2147483648)), vec4<i32>(47383i, -65930i, -224i, 3431i), vec4<i32>(-13042i, 19171i, -58826i, -5936i), vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), 1i), vec4<i32>(-25168i, 74169i, 1i, 0i), vec4<i32>(50617i, -16340i, -21983i, 1i), vec4<i32>(-1i, -908i, 2147483647i, i32(-2147483648)), vec4<i32>(49575i, 21621i, 11461i, -1i), vec4<i32>(2147483647i, -9184i, 1i, 0i), vec4<i32>(59940i, 0i, -1i, 13000i), vec4<i32>(-16562i, 1i, 23150i, -1i), vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, 22245i), vec4<i32>(-23734i, 1390i, -118i, i32(-2147483648)), vec4<i32>(2147483647i, 30489i, -1i, 55808i), vec4<i32>(i32(-2147483648), -5046i, 0i, 101308i), vec4<i32>(i32(-2147483648), 0i, -43129i, -12071i), vec4<i32>(-1692i, 0i, 0i, -22014i), vec4<i32>(6225i, -1i, -14188i, -28322i), vec4<i32>(69139i, -27828i, 35874i, 56633i));

var<private> global1: Struct_1 = Struct_1(vec2<f32>(-718f, -529f), vec4<f32>(-1409f, -505f, 401f, -1189f), -1210f, vec3<i32>(1224i, 2147483647i, 6785i));

var<private> global2: array<vec3<u32>, 14>;

var<private> global3: array<bool, 18>;

var<private> global4: vec4<bool>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>) -> f32 {
    var var_0 = ~(~(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, 38052u), vec4<u32>(1u, 0u, 18548u, 0u)), 1u, 1u, countOneBits(25517u))));
    global0 = array<vec4<i32>, 27>();
    let var_1 = abs(global1.d.yx);
    var var_2 = _wgslsmith_f_op_vec4_f32(arg_0.b + arg_0.b);
    let var_3 = select(vec4<bool>(any(vec3<bool>(var_1.x <= -2147483647i, true, any(arg_1))), !any(vec4<bool>(global3[_wgslsmith_index_u32(21793u, 18u)], global3[_wgslsmith_index_u32(24602u, 18u)], true, true)), all(!select(vec4<bool>(arg_1.x, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(arg_1.x, global4.x, arg_1.x, arg_1.x))), false), vec4<bool>(false, false, global3[_wgslsmith_index_u32(~firstLeadingBit(_wgslsmith_add_u32(23572u, 1u)), 18u)], any(vec4<bool>(true, !global3[_wgslsmith_index_u32(25565u, 18u)], !arg_1.x, true))), any(vec2<bool>(!(!global3[_wgslsmith_index_u32(12873u, 18u)]), !all(vec4<bool>(false, global4.x, true, global3[_wgslsmith_index_u32(13759u, 18u)])))));
    return -1175f;
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: f32) -> Struct_1 {
    global1 = Struct_1(arg_1.xz, vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-805f - _wgslsmith_f_op_f32(floor(754f))))), _wgslsmith_f_op_f32(-arg_2), -285f, _wgslsmith_f_op_f32(-arg_2)), -1114f, ~u_input.a);
    global4 = !(!(!vec4<bool>(global4.x, global1.a.x == arg_1.x, global1.c > 240f, all(vec4<bool>(true, false, true, false)))));
    global1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(arg_1.x, -1313f)), _wgslsmith_f_op_f32(min(461f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -309f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(vec2<f32>(1229f, arg_1.x), global1.b, arg_2, u_input.a), global4.zxy)), _wgslsmith_f_op_f32(-arg_1.x), 3073f, -1000f)))), 668f, abs(_wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(2147483647i & u_input.a.x, _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(1u, 27u)]), -25411i))));
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1.x, arg_2))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, 198f)) + arg_1.yy)) * vec2<f32>(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, -246f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.b + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(global1.b)))) * _wgslsmith_f_op_vec4_f32(min(global1.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(250f, global1.a.x, -2171f, arg_2), vec4<f32>(1490f, arg_2, arg_2, -559f), true)), _wgslsmith_f_op_vec4_f32(-global1.b), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 18u)], true, global4.x, true)))))), arg_2, _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(abs(vec3<i32>(global1.d.x, global1.d.x, -109465i)) ^ ~global1.d, abs(-vec3<i32>(u_input.a.x, u_input.a.x, 1i))), vec3<i32>(7246i, -u_input.a.x, reverseBits(0i))));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(-arg_1.xy), global1.b, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -474f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(ceil(-906f))))), max(firstTrailingBit(vec3<i32>(global1.d.x, u_input.b, 2147483647i)), select(vec3<i32>(global1.d.x, u_input.a.x, -18616i) & u_input.a, ~var_0.d, vec3<bool>(true, global4.x, global3[_wgslsmith_index_u32(arg_0, 18u)]))) | ~_wgslsmith_mod_vec3_i32(u_input.a, -u_input.a));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.b.wy) + var_0.b.zw))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(global1.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-207f, 324f, -546f, -633f)))))), _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -531f) + _wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -143f))))), var_0.d);
}

fn func_1(arg_0: f32, arg_1: vec2<bool>) -> Struct_1 {
    return func_2(61406u, vec3<f32>(_wgslsmith_f_op_f32(1035f + arg_0), global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.a.x))))), global1.b.x);
}

fn func_4(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_0, vec3<bool>(true, global3[_wgslsmith_index_u32(~58609u, 18u)], true))) * global1.b.x), 156f);
    global2 = array<vec3<u32>, 14>();
    global0 = array<vec4<i32>, 27>();
    let var_1 = global4.yy;
    var var_2 = reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(0u, 40950u), vec2<u32>(9234u, 3863u), vec2<bool>(false, var_1.x)), abs(vec2<u32>(8007u, 1u))), firstLeadingBit(firstLeadingBit(1u)), ~_wgslsmith_clamp_u32(63034u, 49784u, 10198u), 1u), (select(vec4<u32>(80517u, 37782u, 63065u, 1u), vec4<u32>(1u, 4294967295u, 0u, 37897u), var_1.x) ^ countOneBits(vec4<u32>(1u, 36121u, 4294967295u, 1u))) | (_wgslsmith_mod_vec4_u32(vec4<u32>(24687u, 0u, 7178u, 24695u), vec4<u32>(24044u, 31085u, 37706u, 1u)) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)))));
    return vec4<bool>(true, !all(global4.yx), all(select(vec3<bool>(true, any(vec4<bool>(global3[_wgslsmith_index_u32(1u, 18u)], false, global3[_wgslsmith_index_u32(var_2.x, 18u)], false)), any(vec3<bool>(false, false, var_1.x))), select(vec3<bool>(false, true, true), !global4.yzy, vec3<bool>(false, global3[_wgslsmith_index_u32(var_2.x, 18u)], true)), select(global4.ywy, global4.yzx, all(vec3<bool>(true, global4.x, true))))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(countOneBits(-(~(-global1.d.x))), 2147483647i);
    var var_1 = !(!vec4<bool>(_wgslsmith_mod_i32(35719i, 63483i) >= global1.d.x, false, !global3[_wgslsmith_index_u32(67613u, 18u)], false));
    var var_2 = var_1.x;
    var var_3 = global1.b.zyx;
    var_1 = select(!func_4(func_1(_wgslsmith_f_op_f32(global1.b.x - 267f), select(var_1.xx, vec2<bool>(global4.x, var_1.x), vec2<bool>(false, true)))), !vec4<bool>(global3[_wgslsmith_index_u32(~26633u, 18u)], false, !global4.x, true), vec4<bool>(!global3[_wgslsmith_index_u32(~2841u, 18u)], ((var_1.x && var_1.x) != true) || false, false, var_1.x));
    var_3 = global1.b.zyz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 1336f)), -30064i, ~(~(~u_input.b)));
}

