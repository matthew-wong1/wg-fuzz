struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(6734u, vec3<i32>(-1i, 2147483647i, 1i), 3811u, vec2<i32>(-19173i, 2147483647i)), Struct_1(1u, vec3<i32>(-34589i, -14381i, -6926i), 4294967295u, vec2<i32>(-19173i, 6075i)), Struct_1(49290u, vec3<i32>(-1i, 1i, 22004i), 0u, vec2<i32>(-42642i, 12340i)), Struct_1(54715u, vec3<i32>(2147483647i, -1i, -54541i), 1u, vec2<i32>(-17540i, 0i)), Struct_1(0u, vec3<i32>(i32(-2147483648), -19228i, 2147483647i), 41691u, vec2<i32>(0i, -31439i)), Struct_1(4294967295u, vec3<i32>(1i, 44530i, -12111i), 19961u, vec2<i32>(-10364i, -29592i)), Struct_1(34585u, vec3<i32>(2147483647i, 13809i, -39789i), 0u, vec2<i32>(7497i, -8547i)), Struct_1(0u, vec3<i32>(-15038i, i32(-2147483648), 2147483647i), 39893u, vec2<i32>(-8094i, -10144i)), Struct_1(44671u, vec3<i32>(1i, 37382i, -31317i), 4294967295u, vec2<i32>(1i, 21743i)), Struct_1(0u, vec3<i32>(2147483647i, 4263i, 1i), 7358u, vec2<i32>(12740i, 35313i)), Struct_1(0u, vec3<i32>(44741i, 25843i, 44363i), 83109u, vec2<i32>(i32(-2147483648), 1i)), Struct_1(0u, vec3<i32>(3668i, 1i, -23236i), 70358u, vec2<i32>(i32(-2147483648), -23277i)), Struct_1(0u, vec3<i32>(-42443i, 0i, i32(-2147483648)), 1039u, vec2<i32>(0i, i32(-2147483648))), Struct_1(0u, vec3<i32>(-3184i, 0i, 1i), 93554u, vec2<i32>(8206i, 1i)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2 + arg_2), _wgslsmith_f_op_f32(-arg_2))) * 779f), _wgslsmith_f_op_f32(min(arg_2, _wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2, arg_2))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(360f, arg_2)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2)) + 410f)));
    global0 = array<bool, 3>();
    let var_1 = _wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(arg_1.x, u_input.c.x), u_input.b.xw, _wgslsmith_sub_vec2_u32(vec2<u32>(47503u, arg_1.x), vec2<u32>(arg_1.x, 41472u))) << (countOneBits(u_input.b.zy) % vec2<u32>(32u)), arg_1.zy);
    let var_2 = ~select(~_wgslsmith_add_u32(u_input.c.x | 58279u, var_1), ~0u, true);
    var var_3 = any(vec4<bool>(!global0[_wgslsmith_index_u32(countOneBits(var_1), 3u)], any(global1.zzx), false, global0[_wgslsmith_index_u32((min(var_1, u_input.b.x) >> (_wgslsmith_mult_u32(var_1, var_1) % 32u)) ^ ~4582u, 3u)]));
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32, arg_3: u32) -> bool {
    return !all(select(!vec4<bool>(global1.x, true, true, global1.x), select(vec4<bool>(true, global0[_wgslsmith_index_u32(arg_1.a.a, 3u)], global0[_wgslsmith_index_u32(0u, 3u)], true), vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.b.x, 3u)], false), global1.x), vec4<bool>(true, global1.x, global0[_wgslsmith_index_u32(24246u, 3u)], global1.x))) != global1.x;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> bool {
    let var_0 = Struct_2(arg_1, u_input.a);
    global2 = array<Struct_1, 14>();
    var var_1 = u_input.c;
    global0 = array<bool, 3>();
    global2 = array<Struct_1, 14>();
    return select(var_0.a.a > var_1.x, global0[_wgslsmith_index_u32(abs(var_1.x), 3u)], func_4(arg_1, Struct_2(global2[_wgslsmith_index_u32(u_input.c.x, 14u)], 42769i), ~func_3(1i, _wgslsmith_div_vec4_u32(vec4<u32>(var_0.a.a, u_input.b.x, var_1.x, 0u), vec4<u32>(var_0.a.a, 56087u, var_0.a.a, 15523u)), -1286f), ~4294967295u));
}

fn func_1(arg_0: vec3<bool>, arg_1: bool) -> vec2<i32> {
    global1 = select(vec4<bool>(!arg_1, false, func_2(_wgslsmith_f_op_f32(select(-1000f, 1f, select(arg_0.x, true, arg_1))), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 35495u), u_input.c.zy), abs(vec3<i32>(u_input.a, 8715i, u_input.a)), select(4294967295u, u_input.b.x, false), abs(vec2<i32>(u_input.a, u_input.a))), global2[_wgslsmith_index_u32(4294967295u, 14u)], _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2052f, -1026f, 2320f), vec3<f32>(545f, -474f, 545f), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1115f, -818f, 1569f) * vec3<f32>(-1000f, -454f, -918f)))), arg_1), vec4<bool>(true, arg_0.x, false, global0[_wgslsmith_index_u32(1u, 3u)]), global1.x);
    var var_0 = Struct_2(Struct_1(1u, firstLeadingBit(firstTrailingBit(vec3<i32>(u_input.a, -6535i, u_input.a))) & vec3<i32>(-1262i, _wgslsmith_mult_i32(u_input.a, u_input.a), u_input.a), 39955u, vec2<i32>(u_input.a, -u_input.a)), 1i);
    var var_1 = Struct_2(Struct_1(0u, vec3<i32>(-var_0.b, firstLeadingBit(_wgslsmith_mod_i32(0i, -13649i)), min(firstTrailingBit(1782i), 32700i)), 1u, reverseBits(var_0.a.b.yy) ^ var_0.a.d), u_input.a);
    global1 = select(vec4<bool>(any(global1.zxx), global1.x, select(arg_0.x, all(!vec4<bool>(global1.x, true, arg_0.x, false)), all(vec3<bool>(true, true, false))), !global0[_wgslsmith_index_u32(11325u, 3u)]), !select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(var_0.a.a, 3u)], true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, arg_0.x, global0[_wgslsmith_index_u32(u_input.b.x, 3u)]), global0[_wgslsmith_index_u32(var_0.a.a, 3u)] & arg_1), (arg_0.x & true) & any(global1.wx)), vec4<bool>(var_1.a.c > 4294967295u, global1.x, any(select(vec2<bool>(arg_0.x, global0[_wgslsmith_index_u32(u_input.b.x, 3u)]), vec2<bool>(arg_1, global0[_wgslsmith_index_u32(u_input.b.x, 3u)]), vec2<bool>(true, true))), global1.x));
    global2 = array<Struct_1, 14>();
    return _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(~(-select(var_1.a.d, var_1.a.b.yz, vec2<bool>(arg_0.x, true))), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(~vec2<i32>(var_1.a.d.x, u_input.a), select(var_0.a.d, vec2<i32>(2147483647i, -2147483647i), true)), var_1.a.d)), -vec2<i32>(firstTrailingBit(countOneBits(1i)), -u_input.a), select(~vec2<i32>(-var_1.b, var_0.b), reverseBits(var_1.a.d), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, 1u), ~(~u_input.b.x & 1u)), -_wgslsmith_sub_vec3_i32(~vec3<i32>(1i, -13755i, -13870i) ^ vec3<i32>(u_input.a, -2147483647i, u_input.a), -(vec3<i32>(22060i, u_input.a, u_input.a) ^ vec3<i32>(1i, 38859i, u_input.a))), ~(~(~(~13240u))), select(func_1(global1.ywz, u_input.a > -43995i), _wgslsmith_div_vec2_i32(vec2<i32>(0i, firstLeadingBit(u_input.a)), -(vec2<i32>(-2147483647i, 2147483647i) | vec2<i32>(u_input.a, -1007i))), true));
    let var_1 = var_0.a;
    var var_2 = global2[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(_wgslsmith_div_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(13219u, 4294967295u, 0u, u_input.c.x), u_input.b) ^ firstTrailingBit(u_input.c.x)), select(_wgslsmith_clamp_u32(_wgslsmith_div_u32(var_0.a, var_0.c), 1u, 26558u << (var_1 % 32u)), ~_wgslsmith_mult_u32(var_1, 4294967295u), any(select(global1.wy, vec2<bool>(false, false), global0[_wgslsmith_index_u32(var_1, 3u)]))))), 14u)];
    global0 = array<bool, 3>();
    let var_3 = Struct_2(global2[_wgslsmith_index_u32(u_input.b.x, 14u)], max(i32(-1i) * -1i, u_input.a));
    let var_4 = var_0.b.x;
    let var_5 = 545f;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.x, u_input.b, var_0.a);
}

