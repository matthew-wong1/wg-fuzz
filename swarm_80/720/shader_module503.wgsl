struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: u32 = 0u;

var<private> global2: vec2<u32>;

var<private> global3: vec4<bool>;

var<private> global4: Struct_5;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<bool>) -> bool {
    let var_0 = 40257i;
    var var_1 = Struct_4(vec2<bool>(false || (_wgslsmith_f_op_f32(select(global4.d.c, global4.a.a.a.x, true)) <= _wgslsmith_div_f32(global4.a.a.a.x, global4.d.a.x)), all(global3.zw)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-819f, 1456f, global4.a.a.a.x, -600f) - vec4<f32>(1923f, 1363f, -1152f, -222f)), vec4<f32>(global4.a.a.c, 167f, -630f, 794f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2303f, -1562f, global4.d.c, 507f)))), -787f);
    global3 = select(select(vec4<bool>(var_1.a.x, global0[_wgslsmith_index_u32(4294967295u, 3u)], false, countOneBits(-9055i) != -global4.c.x), vec4<bool>(false, !var_1.a.x & global4.b, true, var_1.a.x), arg_0.x), !select(select(vec4<bool>(false, true, true, true), select(vec4<bool>(var_1.a.x, var_1.a.x, global0[_wgslsmith_index_u32(23394u, 3u)], true), vec4<bool>(true, global4.b, var_1.a.x, global0[_wgslsmith_index_u32(42247u, 3u)]), true), vec4<bool>(var_1.a.x, global4.b, false, false)), !vec4<bool>(true, global4.b, global4.b, true), select(!vec4<bool>(true, false, true, arg_0.x), !vec4<bool>(global0[_wgslsmith_index_u32(global4.d.b.x, 3u)], global3.x, true, false), true)), vec4<bool>(true, !(!global4.b && (global3.x | global4.b)), !(countOneBits(-1i) != select(global4.c.x, var_0, true)), false & !(!var_1.a.x)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global4.d.a.x))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global4.d.a.x), -1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1335f)))), global4.d.a.x))));
    var var_3 = Struct_5(Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(862f, global4.d.a.x)), vec2<u32>(~0u, global4.d.b.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(494f + global4.d.c), global4.a.a.c))), global4.a.b), !arg_0.x, ~vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(72754i, 47328i, -32336i, var_0), global4.c), 6939i, ~_wgslsmith_mod_i32(global4.c.x, u_input.a.x), var_0), Struct_1(vec2<f32>(global4.a.a.a.x, _wgslsmith_f_op_f32(1000f + -141f)), ~_wgslsmith_mod_vec2_u32(global4.d.b, u_input.b.yx), -202f));
    return arg_0.x;
}

fn func_2(arg_0: Struct_5, arg_1: Struct_2, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = u_input.a.x;
    var var_1 = Struct_4(global3.xy, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-529f, global4.d.c, arg_0.a.a.c, arg_0.a.a.c) * vec4<f32>(arg_0.d.c, 1036f, arg_0.a.a.a.x, -584f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-799f, -281f, 290f, 1241f))))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.b.c))))));
    let var_2 = any(vec2<bool>(!(!func_3(vec2<bool>(global0[_wgslsmith_index_u32(global4.d.b.x, 3u)], false))), true));
    let var_3 = !(!(!(!vec4<bool>(false, global0[_wgslsmith_index_u32(global4.d.b.x, 3u)], false, false))));
    var var_4 = vec3<u32>(4294967295u, ~u_input.b.x, global2.x) ^ (max(select(vec3<u32>(4294967295u, 15993u, arg_1.b.b.x), vec3<u32>(arg_0.d.b.x, global4.d.b.x, u_input.b.x), global3.xwx) | (vec3<u32>(4294967295u, u_input.b.x, global2.x) & vec3<u32>(arg_0.a.b.x, arg_0.d.b.x, arg_1.c.b.x)), abs(u_input.b)) & ~global4.a.b.wyw);
    return arg_1.b;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32, arg_3: Struct_4) -> bool {
    var var_0 = false;
    var var_1 = Struct_2(_wgslsmith_sub_vec4_i32(global4.c, max(-vec4<i32>(u_input.a.x, u_input.a.x, 8459i, 1i), select(global4.c, global4.c, global4.b))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_3.b.x - 1000f), _wgslsmith_f_op_f32(step(179f, 444f)))), vec2<u32>(abs(u_input.b.x) & ~u_input.b.x, ~arg_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3.b.x))) + arg_1.x)), arg_0);
    var var_2 = 759u;
    var var_3 = _wgslsmith_mult_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(global2.x, 4294967295u, var_1.c.b.x, 0u), global4.a.b), _wgslsmith_sub_vec4_u32(global4.a.b, ~vec4<u32>(1u, max(var_1.b.b.x, 1u), global2.x, _wgslsmith_clamp_u32(var_1.b.b.x, arg_0.b.x, arg_0.b.x))));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), arg_3.c, _wgslsmith_div_f32(452f, -490f)) + vec3<f32>(-1703f, _wgslsmith_div_f32(arg_0.c, 1000f), -1000f)) * _wgslsmith_f_op_vec3_f32(step(arg_3.b.xwy, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global4.d.a.x, 609f, var_1.c.a.x), vec3<f32>(-878f, 746f, -1542f)))))))));
    return global4.b;
}

fn func_1(arg_0: bool) -> Struct_4 {
    let var_0 = !func_4(func_2(Struct_5(Struct_3(Struct_1(vec2<f32>(1782f, -667f), global4.a.b.xx, global4.a.a.c), vec4<u32>(4294967295u, u_input.b.x, 0u, global2.x)), arg_0, vec4<i32>(global4.c.x, 12707i, -1i, u_input.a.x), global4.a.a), Struct_2(global4.c, Struct_1(vec2<f32>(857f, global4.d.c), vec2<u32>(95752u, 29471u), global4.a.a.c), Struct_1(global4.a.a.a, vec2<u32>(u_input.b.x, 33378u), global4.a.a.a.x)), global4.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(951f, -435f, -1170f, global4.d.c)), ~(~u_input.a.x), Struct_4(vec2<bool>(global0[_wgslsmith_index_u32(global4.a.a.b.x, 3u)], global4.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(645f, 1178f, -817f, global4.a.a.a.x)), _wgslsmith_f_op_f32(1050f * -1442f))) != !(u_input.a.x < ~70209i);
    var var_1 = select(select(!select(!vec4<bool>(var_0, global0[_wgslsmith_index_u32(u_input.b.x, 3u)], global0[_wgslsmith_index_u32(global2.x, 3u)], global3.x), vec4<bool>(global4.b, false, global4.b, false), !arg_0), !(!(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 3u)], false, false, true))), !select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 3u)], global4.b, global0[_wgslsmith_index_u32(4294967295u, 3u)], arg_0), vec4<bool>(global4.b, global0[_wgslsmith_index_u32(29904u, 3u)], true, var_0), global3.x), select(vec4<bool>(arg_0, true, var_0, var_0), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 3u)], true, true, global3.x), global0[_wgslsmith_index_u32(723u, 3u)]), vec4<bool>(true, global4.b, global3.x, false))), vec4<bool>((_wgslsmith_mult_u32(global2.x, 17207u) <= 30591u) && false, global4.b, func_3(vec2<bool>(!global0[_wgslsmith_index_u32(global4.a.a.b.x, 3u)], true)), !global3.x), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(sign(global4.d.a.x))) > _wgslsmith_f_op_f32(select(global4.a.a.c, _wgslsmith_div_f32(-894f, 1f), arg_0)));
    return Struct_4(!(!var_1.zw), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(199f)))), -895f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-383f)), _wgslsmith_f_op_f32(-1002f + global4.a.a.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -785f))), 2794f);
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: vec2<u32>) -> u32 {
    var var_0 = Struct_4(vec2<bool>(-u_input.a.x != -1i, all(select(select(arg_1.a, global3.xz, true), !vec2<bool>(global0[_wgslsmith_index_u32(20384u, 3u)], global4.b), global3.zw))), arg_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.a.a.a.x, 1243f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(649f, -620f))) - _wgslsmith_f_op_f32(543f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(923f * arg_1.c)))));
    let var_1 = firstLeadingBit(_wgslsmith_add_vec3_u32(select(u_input.b, abs(u_input.b), global3.x), abs(vec3<u32>(select(76628u, 20187u, arg_1.a.x), 19068u, _wgslsmith_sub_u32(global4.d.b.x, 1u)))));
    let var_2 = arg_1.b.x;
    var_0 = func_1(all(vec2<bool>(true, global0[_wgslsmith_index_u32(920u, 3u)])));
    global1 = arg_2.x;
    return ~(_wgslsmith_dot_vec4_u32(global4.a.b, firstLeadingBit(vec4<u32>(7819u, 71566u, global4.a.b.x, 45768u))) ^ ~select(30957u, ~var_1.x, false));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = abs(_wgslsmith_mod_u32(func_5(select(_wgslsmith_mult_vec4_i32(global4.c, vec4<i32>(2147483647i, u_input.a.x, 30384i, -2147483647i)), vec4<i32>(global4.c.x, u_input.a.x, global4.c.x, global4.c.x) >> (vec4<u32>(global2.x, 0u, 1u, 1u) % vec4<u32>(32u)), true), func_1(true), _wgslsmith_clamp_vec2_u32(vec2<u32>(global4.d.b.x, 60147u) ^ vec2<u32>(45107u, global4.a.a.b.x), u_input.b.yz, vec2<u32>(global4.d.b.x, global4.a.a.b.x))), func_5(-(global4.c | vec4<i32>(-7595i, global4.c.x, 1i, 45135i)), Struct_4(vec2<bool>(global4.b, false), func_1(false).b, _wgslsmith_f_op_f32(global4.d.a.x - -1143f)), ~(u_input.b.yx << (vec2<u32>(global4.a.b.x, 4294967295u) % vec2<u32>(32u))))));
    let x = u_input.a;
    s_output = StorageBuffer(18051u, 1u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(342f, global4.d.c, global4.d.c)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global4.a.a.a.x, global4.a.a.c, global4.d.a.x))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global4.d.a.x, -1774f, -1605f), vec3<f32>(global4.d.c, global4.a.a.c, 1797f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.a.a.a.x, global4.d.a.x, global4.a.a.a.x) - vec3<f32>(global4.a.a.c, 349f, -194f))) - vec3<f32>(global4.d.a.x, global4.a.a.c, _wgslsmith_f_op_f32(global4.a.a.a.x * 692f)))), firstTrailingBit(~(reverseBits(vec3<u32>(u_input.b.x, 1u, u_input.b.x)) ^ min(u_input.b, vec3<u32>(global2.x, global4.a.b.x, global2.x)))));
}

