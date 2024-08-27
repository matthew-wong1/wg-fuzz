struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: f32,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 9>;

var<private> global1: vec2<f32> = vec2<f32>(1097f, -909f);

var<private> global2: vec2<f32>;

var<private> global3: array<vec4<f32>, 14> = array<vec4<f32>, 14>(vec4<f32>(805f, 686f, -918f, -625f), vec4<f32>(305f, -1098f, -470f, -161f), vec4<f32>(-1207f, 408f, -1571f, -628f), vec4<f32>(276f, -321f, 1639f, -2092f), vec4<f32>(-998f, 849f, 1000f, 2338f), vec4<f32>(-483f, -335f, -1338f, -727f), vec4<f32>(1792f, -1312f, 640f, -378f), vec4<f32>(809f, 979f, 885f, -164f), vec4<f32>(1524f, 392f, 258f, -533f), vec4<f32>(811f, -1498f, 614f, 189f), vec4<f32>(-1073f, -2340f, 567f, -1050f), vec4<f32>(156f, -191f, 1000f, -3545f), vec4<f32>(-451f, 444f, 745f, 460f), vec4<f32>(-1565f, -150f, -1000f, 1753f));

var<private> global4: Struct_3 = Struct_3(vec3<f32>(-932f, -1440f, 802f), vec3<u32>(4294967295u, 563u, 83359u), -790f, -19429i, Struct_2(vec2<bool>(false, false), vec4<bool>(false, false, false, true), Struct_1(1u, vec4<u32>(10804u, 4294967295u, 4294967295u, 16984u), false)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: vec2<bool>, arg_3: Struct_4) -> u32 {
    global4 = Struct_3(_wgslsmith_f_op_vec3_f32(abs(global4.a)), abs(global4.b), 954f, _wgslsmith_mod_i32(~max(abs(u_input.c.x), -3719i), -2147483647i), Struct_2(global4.e.a, !select(vec4<bool>(false, true, arg_3.a.c, arg_3.a.c), select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, global4.e.b.x), global4.e.b, global4.e.b), global4.e.b), arg_3.a));
    var var_0 = Struct_5(68615u << (global4.b.x % 32u), arg_2.x, ((global4.d & _wgslsmith_clamp_i32(global4.d, 12009i, 22623i)) | select(i32(-1i) * -26218i, global4.d, 0u >= arg_3.a.b.x)) & u_input.c.x);
    var_0 = Struct_5(4294967295u, any(arg_2), _wgslsmith_mult_i32(-u_input.c.x, -2147483647i) >> (0u % 32u));
    global3 = array<vec4<f32>, 14>();
    var var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(~_wgslsmith_dot_vec2_i32(u_input.c.zz, u_input.c.zz), _wgslsmith_sub_i32(global4.d & 50199i, 44414i)), _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, global4.d) << (arg_3.a.b.wz % vec2<u32>(32u)), max(vec2<i32>(global4.d, 2147483647i), u_input.c.xz), u_input.c.zx), -(vec2<i32>(-1i, var_0.c) << (vec2<u32>(var_0.a, u_input.d) % vec2<u32>(32u))))) | vec2<i32>(abs(firstTrailingBit(-4972i)), -_wgslsmith_mod_i32(-1i, ~7808i));
    return 0u;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<u32>) -> u32 {
    global4 = Struct_3(global4.a, arg_0.b.wyy, _wgslsmith_f_op_f32(ceil(-958f)), 31529i, global4.e);
    global3 = array<vec4<f32>, 14>();
    global4 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_div_f32(874f, global4.c), _wgslsmith_f_op_f32(f32(-1f) * -1182f)), _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, arg_0.b.x), 9u)] * _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(global4.e.c.a, 9u)])))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global4.a)) * global0[_wgslsmith_index_u32(select(~0u, 13325u, true), 9u)])), vec3<u32>(arg_2.x, arg_2.x & func_3(select(vec2<bool>(global4.e.a.x, global4.e.c.c), vec2<bool>(arg_0.c, true), true), global4.a.yx, arg_1.yz, Struct_4(Struct_1(arg_2.x, arg_0.b, true))), ~0u), _wgslsmith_f_op_f32(-global1.x), u_input.c.x, Struct_2(!arg_1.xx, global4.e.b, global4.e.c));
    global4 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.a)), _wgslsmith_sub_vec3_u32(reverseBits(~(~u_input.a)), reverseBits(abs(~vec3<u32>(arg_0.a, global4.e.c.a, 75635u)))), 1473f, -1i & (global4.d ^ 0i), global4.e);
    let var_0 = global4.e.b;
    return 37658u;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> Struct_4 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(arg_0.b.x ^ abs(reverseBits(arg_0.a)), 9u)] - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1342f, 510f, global2.x), global4.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -2044f, global4.a.x) - global0[_wgslsmith_index_u32(28113u, 9u)])), true))), vec3<u32>(select(arg_2, ~4294967295u, select(arg_0.c, true, true)), 31063u, 4294967295u) | arg_0.b.ywy, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1214f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1206f)))), abs(u_input.c.x), global4.e);
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(global2.x + 169f), _wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.c, 148f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global1.x))), global4.e.b.x || global4.e.b.x)) * vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_0.a.x)), 860f)), _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(f32(-1f) * -387f))));
    var var_1 = ~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~54766u, ~var_0.b.x), _wgslsmith_mult_vec2_u32(arg_0.b.zw >> (vec2<u32>(1u, u_input.d) % vec2<u32>(32u)), u_input.a.xy)), 30597u, ~arg_0.a);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global1.x)), 1f);
    let var_3 = var_0.e.a.x;
    return Struct_4(global4.e.c);
}

fn func_1(arg_0: Struct_2) -> Struct_4 {
    return func_4(arg_0.c, ~select(global4.e.c.a, _wgslsmith_mod_u32(func_2(Struct_1(global4.b.x, arg_0.c.b, true), arg_0.b.ywz, vec3<u32>(0u, 30957u, 1u)), 39936u), !global4.e.a.x), _wgslsmith_add_u32(~_wgslsmith_mod_u32(global4.b.x, 16636u), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 9864u, arg_0.c.b.x), vec3<u32>(global4.e.c.a, arg_0.c.a, 4294967295u))) | ~global4.e.c.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global4.e);
    global4 = Struct_3(vec3<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_div_f32(417f, _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(global1.x + -877f))))), ~global4.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * 1000f))))), _wgslsmith_clamp_i32(u_input.c.x, 1i & ~(-global4.d), global4.d), global4.e);
    var var_1 = all(!vec4<bool>(!(!var_0.a.c), false, all(global4.e.a), true));
    var var_2 = vec3<bool>(global4.e.a.x, !(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1873f, -973f)))) < _wgslsmith_f_op_f32(step(global4.a.x, _wgslsmith_f_op_f32(f32(-1f) * -244f)))), !select(global4.d < ~global4.d, true, false));
    let var_3 = global4.e.c.c;
    var var_4 = global4.e.b;
    let x = u_input.a;
    s_output = StorageBuffer(-1359f, func_3(select(select(select(vec2<bool>(true, true), vec2<bool>(var_0.a.c, false), var_2.x), vec2<bool>(var_4.x, var_2.x), any(var_4.xy)), !vec2<bool>(var_4.x, var_4.x), true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, _wgslsmith_f_op_f32(round(global1.x)))), vec2<bool>(all(select(vec4<bool>(var_2.x, var_0.a.c, var_4.x, true), global4.e.b, var_2.x)), true), Struct_4(Struct_1(_wgslsmith_add_u32(global4.e.c.a, u_input.a.x), vec4<u32>(var_0.a.a, u_input.a.x, 1u, global4.b.x), !var_2.x))), vec3<u32>(select(u_input.d | 44990u, _wgslsmith_mod_u32(func_2(Struct_1(var_0.a.a, vec4<u32>(global4.b.x, 8974u, u_input.a.x, global4.e.c.b.x), var_4.x), global4.e.b.wwy, vec3<u32>(4294967295u, global4.e.c.a, 83370u)), global4.e.c.b.x), global4.e.a.x), func_4(Struct_1(4294967295u, ~var_0.a.b, !var_4.x), u_input.d, 19155u).a.a, var_0.a.a), 0u);
}

