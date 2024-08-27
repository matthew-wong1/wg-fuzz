struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15> = array<f32, 15>(383f, -867f, 1997f, -635f, -1032f, 914f, -1525f, 1444f, -275f, 1128f, -773f, 994f, 230f, -571f, 1112f);

var<private> global1: vec2<bool>;

var<private> global2: array<vec4<f32>, 8>;

var<private> global3: bool = true;

var<private> global4: array<u32, 3>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(35842i, arg_0, -1i, min(-20242i, abs(-1i))));
    var var_1 = !all(vec3<bool>(any(vec4<bool>(false, false, false, global1.x)) || global1.x, false, true));
    let var_2 = Struct_1(vec3<bool>(true, !all(!vec2<bool>(false, global1.x)), global1.x), vec2<u32>(u_input.a, ~89373u), u_input.a, global4[_wgslsmith_index_u32(u_input.a, 3u)], vec4<i32>(-arg_0, -51537i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.b, vec4<i32>(2147483647i, arg_0, var_0, -1i)), ~u_input.b), max(min(vec4<i32>(u_input.b.x, -8846i, arg_0, var_0), u_input.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(-6433i, u_input.d, u_input.b.x, 1i), u_input.b, u_input.b))), u_input.d));
    var var_3 = var_2.a.xz;
    var_1 = var_2.a.x;
    return 7811u;
}

fn func_2() -> Struct_1 {
    global3 = (u_input.a ^ ~33792u) <= 4294967295u;
    global4 = array<u32, 3>();
    let var_0 = !(!vec3<bool>(false, 1u != u_input.a, global1.x));
    let var_1 = u_input.b.xxz;
    let var_2 = Struct_1(vec3<bool>(!(1i >= _wgslsmith_clamp_i32(1i, u_input.c, u_input.c)), !any(vec2<bool>(false, false)), any(var_0.yy)), vec2<u32>(countOneBits(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(max(u_input.a, 0u), 1u), 3u)], 3u)]), _wgslsmith_sub_u32(24152u, reverseBits(func_3(u_input.d)))), 1u, 4294967295u, vec4<i32>(_wgslsmith_sub_i32(1i, var_1.x), ~12503i, _wgslsmith_mult_i32(var_1.x, var_1.x), u_input.d));
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<i32>, arg_3: vec2<f32>) -> bool {
    global4 = array<u32, 3>();
    var var_0 = reverseBits(~reverseBits(vec4<u32>(u_input.a, ~arg_0.d, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d, 4294967295u, u_input.a, 1u), vec4<u32>(u_input.a, 1u, u_input.a, 22912u)), arg_0.d)));
    global3 = ~(max(u_input.a, _wgslsmith_mod_u32(var_0.x, var_0.x)) ^ u_input.a) >= _wgslsmith_div_u32(countOneBits(53944u), ~var_0.x);
    global3 = any(vec4<bool>(false, func_2().a.x, true, true)) | !all(vec2<bool>(!global1.x, select(global1.x, arg_0.a.x, false)));
    let var_1 = arg_1;
    return true;
}

fn func_1() -> vec3<bool> {
    var var_0 = vec4<bool>(global1.x, false, func_4(func_2(), vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(abs(5981u), 15u)] * _wgslsmith_f_op_f32(f32(-1f) * -1583f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1705f)), -279f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(firstTrailingBit(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(16327u, 3u)], 3u)]), 15u)] + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 15u)]))), vec4<i32>(abs(u_input.d | -44728i), firstTrailingBit(u_input.c), u_input.d | firstLeadingBit(2147483647i), i32(-1i) * -1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(9226u, 3u)], 15u)], 1668f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(34909u, 15u)], global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 3u)], 15u)]), vec2<f32>(-298f, 1000f))))), true);
    var var_1 = func_2();
    let var_2 = Struct_1(!func_2().a, abs(vec2<u32>(4294967295u, func_3(15889i)) << ((vec2<u32>(1u, 4294967295u) | ~var_1.b) % vec2<u32>(32u))), var_1.c, 38712u, var_1.e);
    var var_3 = vec3<i32>(_wgslsmith_clamp_i32(~_wgslsmith_add_i32(var_2.e.x, var_1.e.x), _wgslsmith_add_i32(var_2.e.x, 9075i << (var_2.b.x % 32u)), select(var_2.e.x, firstLeadingBit(var_2.e.x), var_2.a.x)), 0i, _wgslsmith_dot_vec3_i32(var_2.e.wzz, vec3<i32>(u_input.b.x, 0i, var_1.e.x | var_2.e.x))) << ((_wgslsmith_mod_vec3_u32(~select(vec3<u32>(var_2.c, u_input.a, global4[_wgslsmith_index_u32(0u, 3u)]), vec3<u32>(var_2.b.x, 57705u, 4294967295u), vec3<bool>(false, var_1.a.x, var_2.a.x)), _wgslsmith_sub_vec3_u32(select(vec3<u32>(u_input.a, 26519u, var_1.d), vec3<u32>(0u, 68699u, u_input.a), var_1.a.x), ~vec3<u32>(19289u, 49409u, u_input.a))) | abs(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(50974u, 419u, 0u), vec3<u32>(4294967295u, 4294967295u, var_2.b.x)), vec3<u32>(global4[_wgslsmith_index_u32(1u, 3u)], 4294967295u, global4[_wgslsmith_index_u32(1u, 3u)])))) % vec3<u32>(32u));
    global4 = array<u32, 3>();
    return select(select(vec3<bool>(!func_4(Struct_1(vec3<bool>(false, true, false), vec2<u32>(14830u, 51423u), var_2.c, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 3u)], 3u)], vec4<i32>(var_1.e.x, 1i, var_2.e.x, -33623i)), global2[_wgslsmith_index_u32(42322u, 8u)], var_2.e, vec2<f32>(global0[_wgslsmith_index_u32(0u, 15u)], 1110f)), false, var_1.a.x), !var_1.a, !any(var_0.yxz)), var_2.a, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<bool>(any(func_1()), true, true || all(select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(true, true, false), true))), ~max(~vec2<u32>(u_input.a, global4[_wgslsmith_index_u32(u_input.a, 3u)]), func_2().b) | vec2<u32>(4294967295u, ~(~u_input.a)), u_input.a, ~u_input.a, u_input.b);
    let var_1 = _wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(min(_wgslsmith_mod_vec2_u32(var_0.b, vec2<u32>(var_0.b.x, u_input.a)), ~vec2<u32>(0u, 18179u)), ~func_2().b), _wgslsmith_div_u32(~1u, var_0.c), 1u);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -211f);
    var var_3 = Struct_1(var_0.a, vec2<u32>(_wgslsmith_mult_u32(~_wgslsmith_div_u32(var_1, 5671u), select(~0u, ~u_input.a, 22147i >= var_0.e.x)), ~_wgslsmith_div_u32(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(u_input.a, 3u)], 0u, u_input.a), 3u)], max(var_0.b.x, var_0.b.x))), ~110100u, var_0.c, vec4<i32>(_wgslsmith_clamp_i32(16360i, 17295i, -var_0.e.x), 98331i, u_input.d, u_input.b.x));
    var var_4 = var_0.a;
    let var_5 = func_2();
    let var_6 = var_5;
    var var_7 = var_6.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.yzx);
}

