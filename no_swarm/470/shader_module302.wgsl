struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<bool>,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_2, 29>;

var<private> global2: array<vec2<f32>, 3> = array<vec2<f32>, 3>(vec2<f32>(1000f, 222f), vec2<f32>(-696f, -377f), vec2<f32>(1515f, -157f));

var<private> global3: Struct_2 = Struct_2(Struct_1(-1286f, 1u, vec4<bool>(true, false, false, true), false, vec2<u32>(93509u, 23286u)));

var<private> global4: Struct_2 = Struct_2(Struct_1(218f, 0u, vec4<bool>(false, true, true, false), false, vec2<u32>(4294967295u, 5979u)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: u32) -> Struct_1 {
    var var_0 = vec4<bool>(!(global3.a.d | true) & any(!(!vec3<bool>(global3.a.d, global4.a.d, global3.a.d))), all(arg_0.c.xy), false, true);
    var var_1 = 0i;
    global2 = array<vec2<f32>, 3>();
    global2 = array<vec2<f32>, 3>();
    return arg_0;
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = Struct_2(arg_1);
    return global3.a.c;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    var var_0 = func_2(Struct_1(676f, 29669u, global4.a.c, true, min(vec2<u32>(global3.a.e.x, global4.a.b | 0u), ~(~global4.a.e))), ~(~(~u_input.b & select(vec4<u32>(4294967295u, 0u, 4294967295u, arg_1.b), u_input.b, arg_1.c))), 0u);
    global3 = Struct_2(arg_1);
    return Struct_2(func_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -483f), 36019u, func_3(_wgslsmith_f_op_f32(abs(-291f)), Struct_1(global3.a.a, 4294967295u, vec4<bool>(arg_1.d, true, false, true), true, global3.a.e)), global4.a.c.x, ~vec2<u32>(31601u, arg_0.x)), u_input.b, 0u));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-760f + global3.a.a)), 954f), ~_wgslsmith_sub_u32(0u >> (arg_3.b % 32u), _wgslsmith_add_u32(arg_3.e.x, arg_3.e.x)), func_2(arg_1.a, u_input.b, global3.a.b).c, 104637u >= ~(~u_input.b.x), arg_3.e));
    var var_1 = global1[_wgslsmith_index_u32(69199u, 29u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -771f), _wgslsmith_div_f32(678f, 1242f), _wgslsmith_f_op_f32(select(-1698f, -855f, true)), arg_1.a.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global3.a.a, 1103f, -581f, -660f), vec4<f32>(-553f, -2221f, -322f, -1497f))))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(-921f, var_0.a.a), _wgslsmith_f_op_f32(-1441f * arg_3.a), var_0.a.a, _wgslsmith_f_op_f32(max(var_1.a.a, var_1.a.a))))))));
    let var_3 = arg_3;
    var var_4 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.a.a, -118f, -542f, -845f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.a.a, 112f, 266f, -1421f), vec4<f32>(534f, -516f, -1507f, -1000f))))))));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a.a - 1000f))) - var_3.a), 1u, vec4<bool>(!any(arg_3.c.yzy), var_3.b < 4294967295u, func_3(1738f, var_3).x, true), var_3.d, firstTrailingBit(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.a.b, var_3.b), u_input.a))));
}

fn func_5(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    var var_0 = func_1(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(max(vec3<u32>(u_input.c, 1u, global4.a.e.x), u_input.b.xwx ^ u_input.b.xzx), ~u_input.b.yyx), ~vec3<u32>(49915u >> (u_input.b.x % 32u), 0u, _wgslsmith_div_u32(u_input.c, u_input.b.x))), func_2(func_4(true, Struct_2(func_4(global4.a.d, Struct_2(global4.a), global2[_wgslsmith_index_u32(u_input.c, 3u)], global3.a)), vec2<f32>(_wgslsmith_f_op_f32(max(-1000f, -674f)), _wgslsmith_f_op_f32(global4.a.a * arg_1)), func_2(Struct_1(1000f, 54890u, vec4<bool>(global4.a.c.x, false, true, false), true, vec2<u32>(global4.a.e.x, 4294967295u)), u_input.b, select(59641u, global4.a.e.x, arg_0.a.d))), vec4<u32>(countOneBits(global3.a.e.x) & (1u << (1u % 32u)), select(82131u, _wgslsmith_sub_u32(4294967295u, global4.a.e.x), true), func_2(global4.a, _wgslsmith_sub_vec4_u32(u_input.b, u_input.b), _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(0u, arg_0.a.e.x))).e.x, func_2(func_4(global3.a.d, Struct_2(global3.a), global2[_wgslsmith_index_u32(u_input.b.x, 3u)], global3.a), ~vec4<u32>(arg_0.a.b, 27019u, global3.a.e.x, 27455u), u_input.b.x).e.x), countOneBits(_wgslsmith_mod_u32(u_input.b.x, arg_0.a.b) & reverseBits(24010u))), func_4(28030i > min(_wgslsmith_dot_vec2_i32(vec2<i32>(-63582i, -43695i), vec2<i32>(0i, -2147483647i)), reverseBits(-25869i)), func_1(countOneBits(~u_input.b.xxx), func_4(func_3(-387f, Struct_1(1000f, global4.a.e.x, vec4<bool>(global4.a.d, arg_0.a.d, global3.a.c.x, global4.a.d), false, vec2<u32>(4294967295u, 0u))).x, func_1(vec3<u32>(arg_0.a.e.x, arg_0.a.b, arg_0.a.b), Struct_1(-1367f, global4.a.e.x, vec4<bool>(false, false, true, true), false, arg_0.a.e), arg_0.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.a.a, global3.a.a)), arg_0.a), Struct_1(arg_1, func_4(true, arg_0, global2[_wgslsmith_index_u32(global3.a.e.x, 3u)], Struct_1(global3.a.a, 4294967295u, vec4<bool>(false, true, global4.a.c.x, global3.a.c.x), arg_0.a.c.x, vec2<u32>(37354u, arg_0.a.b))).b, func_4(global4.a.c.x, global1[_wgslsmith_index_u32(1u, 29u)], vec2<f32>(301f, global4.a.a), global4.a).c, false, global3.a.e)), _wgslsmith_f_op_vec2_f32(floor(global2[_wgslsmith_index_u32(global4.a.e.x, 3u)])), func_2(func_4(true, func_1(vec3<u32>(36511u, arg_0.a.e.x, u_input.c), Struct_1(655f, 4294967295u, vec4<bool>(true, global4.a.d, global4.a.d, true), false, arg_0.a.e), global3.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.a, global3.a.a)), func_1(u_input.b.zxy, arg_0.a, global3.a).a), ~(~vec4<u32>(4294967295u, 1u, global4.a.e.x, global3.a.b)), ~u_input.b.x)));
    let var_1 = select(global3.a.b, global4.a.e.x, all(!(!vec3<bool>(global3.a.c.x, false, global4.a.c.x))));
    var var_2 = firstLeadingBit(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(select(vec3<i32>(60831i, 0i, 2461i), vec3<i32>(0i, 0i, -12257i), false), vec3<i32>(-9862i, 44938i, 38547i)), min(~vec3<i32>(2147483647i, 82966i, -1i), -vec3<i32>(-61874i, -22215i, 1i))), vec3<i32>(7661i, min(1i, 0i), 0i)));
    var var_3 = Struct_1(_wgslsmith_div_f32(-315f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -183f))), u_input.b.x, select(var_0.a.c, !(!select(vec4<bool>(true, var_0.a.d, true, var_0.a.d), global3.a.c, vec4<bool>(false, global4.a.c.x, global3.a.c.x, arg_0.a.d))), select(!(!global4.a.c), global3.a.c, arg_0.a.d)), false && (_wgslsmith_f_op_f32(max(global4.a.a, -855f)) > arg_1), global3.a.e);
    let var_4 = Struct_1(var_0.a.a, _wgslsmith_add_u32(var_1, _wgslsmith_clamp_u32(func_2(func_2(global4.a, vec4<u32>(arg_0.a.b, arg_0.a.b, 129914u, arg_0.a.b), u_input.b.x), vec4<u32>(var_0.a.e.x, u_input.c, global4.a.e.x, 15647u), ~1u).b, arg_0.a.b, _wgslsmith_div_u32(_wgslsmith_sub_u32(var_0.a.e.x, var_3.b), 40404u))), vec4<bool>(all(var_0.a.c.xzz) || !any(arg_0.a.c.zyx), ((18548u != var_0.a.e.x) && true) != (global3.a.c.x || false), true, !select(var_2.x == -23247i, false, true)), !(!global3.a.d), ~vec2<u32>(abs(51290u) ^ select(4440u, var_3.e.x, false), ~global3.a.b));
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -329f), var_3.e.x, vec4<bool>(global4.a.c.x, var_3.c.x, true, !(!var_3.d)), global3.a.d, global4.a.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    global4 = Struct_2(func_5(Struct_2(func_4(!global4.a.d, func_1(u_input.b.zwx, global3.a, global4.a), _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 3u)]), Struct_1(-1403f, global3.a.e.x, vec4<bool>(var_0, global4.a.c.x, false, global4.a.d), true, vec2<u32>(67623u, global4.a.e.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -238f))));
    var var_1 = true;
    global2 = array<vec2<f32>, 3>();
    let var_2 = Struct_1(global4.a.a, min(global4.a.e.x, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(global4.a.e.x, 1u, 4294967295u, 54326u) >> (abs(vec4<u32>(u_input.a.x, 19574u, u_input.b.x, global3.a.b)) % vec4<u32>(32u)))), func_4(global3.a.c.x, Struct_2(global3.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.a.a, _wgslsmith_f_op_f32(-855f + global3.a.a))), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global4.a.a))), 1u, !(!vec4<bool>(global4.a.c.x, true, global4.a.d, global3.a.c.x)), true, func_5(func_1(vec3<u32>(67860u, global3.a.b, 38872u), Struct_1(global3.a.a, 20934u, global3.a.c, true, vec2<u32>(4294967295u, 1u)), global3.a), _wgslsmith_f_op_f32(-1083f - -318f)).e)).c, !(!any(func_1(vec3<u32>(43200u, global3.a.b, global4.a.e.x), global4.a, Struct_1(2255f, 35876u, vec4<bool>(false, true, false, var_0), true, global4.a.e)).a.c)), global3.a.e << (~select(u_input.a, global4.a.e, vec2<bool>(global3.a.d, false)) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(min(1u, global4.a.b) >> ((u_input.a.x << (_wgslsmith_clamp_u32(93643u, 55325u, _wgslsmith_dot_vec2_u32(vec2<u32>(global4.a.e.x, 9882u), vec2<u32>(global3.a.e.x, var_2.b))) % 32u)) % 32u), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(min(var_2.e.x, global3.a.e.x), global3.a.e.x ^ u_input.b.x, global3.a.e.x & global3.a.e.x), vec3<u32>(countOneBits(global3.a.e.x), select(global3.a.b, 22263u, var_2.c.x), 4294967295u))), 160f, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2056f + var_2.a) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.a, global4.a.a)))), 1518f, _wgslsmith_f_op_f32(var_2.a - func_5(func_1(u_input.b.zxw, Struct_1(global3.a.a, 2095u, global3.a.c, true, vec2<u32>(var_2.b, var_2.b)), var_2), _wgslsmith_div_f32(1586f, -1960f)).a)));
}

