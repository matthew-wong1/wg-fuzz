struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: f32,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: Struct_2,
    d: Struct_2,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16>;

var<private> global1: Struct_2;

var<private> global2: vec4<bool>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>) -> bool {
    let var_0 = _wgslsmith_sub_vec2_i32(u_input.b, min(~u_input.b, vec2<i32>(min(~u_input.c, 24464i), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x), vec2<i32>(2147483647i, u_input.c)), u_input.b.x))));
    var var_1 = Struct_3(arg_0.b.x, vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(-8047i, -38778i, -16913i), vec3<i32>(-1i, -1i, var_0.x)) >> (~arg_1.x % 32u), _wgslsmith_clamp_i32(reverseBits(abs(u_input.c)), _wgslsmith_clamp_i32(var_0.x | u_input.c, ~u_input.c, u_input.b.x), u_input.c)));
    var var_2 = select(vec3<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-337f))) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-766f + -967f))), _wgslsmith_clamp_i32(var_1.b.x, ~(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(-24793i, var_1.b.x, 0i, u_input.b.x), vec4<i32>(2147483647i, -7588i, u_input.c, var_1.b.x))) != 23578i), vec3<bool>(!arg_0.a.a, true, all(select(select(vec4<bool>(false, global1.a.a, global1.a.a, false), vec4<bool>(global2.x, false, arg_0.a.a, global0[_wgslsmith_index_u32(var_1.a, 16u)]), vec4<bool>(global2.x, false, arg_0.a.a, true)), select(vec4<bool>(false, false, true, global2.x), vec4<bool>(true, true, false, true), global2.x), !vec4<bool>(true, arg_0.a.a, global1.a.a, global1.a.a)))), global2.www);
    let var_3 = select(var_2.yz, !global2.ww, select(!any(var_2.xx), all(var_2.zy), global2.x));
    global2 = vec4<bool>(true, true, true || (150f >= _wgslsmith_f_op_f32(-615f * _wgslsmith_f_op_f32(step(arg_0.c, 1000f)))), global0[_wgslsmith_index_u32(~arg_0.b.x, 16u)]);
    return any(vec2<bool>(var_3.x && false, var_3.x));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = 1240f;
    var var_1 = Struct_2(global1.a, global1.b | vec4<u32>(arg_2.b.x, firstLeadingBit(_wgslsmith_mod_u32(9874u, 50672u)), firstTrailingBit(countOneBits(u_input.a.x)), max(4294967295u >> (u_input.a.x % 32u), ~arg_2.a.d.x)), _wgslsmith_f_op_f32(-arg_2.c));
    var var_2 = !select(select(vec3<bool>(arg_0 >= 2147483647i, all(vec2<bool>(global2.x, var_1.a.a)), arg_0 != arg_1), vec3<bool>(var_1.b.x <= 0u, all(vec4<bool>(arg_2.a.a, arg_2.a.a, true, false)), global0[_wgslsmith_index_u32(global1.b.x, 16u)] || global2.x), all(vec4<bool>(arg_2.a.a, true, global1.a.a, global0[_wgslsmith_index_u32(arg_2.b.x, 16u)]))), vec3<bool>(!all(vec4<bool>(false, arg_2.a.a, arg_2.a.a, true)), true, func_3(Struct_2(arg_2.a, vec4<u32>(25926u, 4294967295u, 20546u, 84074u), -1212f), ~global1.b.zww)), select(!global2.wxx, vec3<bool>(arg_0 <= -13167i, false, true), false));
    global1 = arg_2;
    let var_3 = vec4<u32>(1u, ~(~_wgslsmith_dot_vec4_u32(var_1.b, var_1.b)), _wgslsmith_div_u32(var_1.b.x, firstTrailingBit(81619u & arg_2.a.d.x)), _wgslsmith_clamp_u32(select(0u, arg_2.a.d.x, false), arg_2.b.x << (4294967295u % 32u), u_input.a.x) | ~4294967295u) | ~(~(~(~var_1.b)));
    return !select(global2.www, !global2.wwx, global2.ywx);
}

fn func_1() -> Struct_3 {
    global0 = array<bool, 16>();
    global1 = Struct_2(Struct_1(all(!func_2(u_input.c, 1i, Struct_2(Struct_1(global1.a.a, vec2<f32>(-1657f, 1162f), 264f, vec2<u32>(24297u, 93911u)), vec4<u32>(global1.b.x, global1.b.x, 4294967295u, 0u), global1.c))), vec2<f32>(_wgslsmith_f_op_f32(global1.a.c + _wgslsmith_f_op_f32(616f - global1.a.b.x)), -449f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-516f, 383f)), _wgslsmith_f_op_f32(ceil(-1272f)))), vec2<u32>(abs(1u), 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(global1.b, vec4<u32>(2732u, 0u, 37206u, u_input.a.x)) | ~u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, 60742u, global1.b.x), ~min(4425u, 4294967295u), _wgslsmith_dot_vec3_u32(~global1.b.yyx, min(u_input.a, global1.b.wwz))), vec4<u32>(~(~0u), u_input.a.x, 8252u, 0u)), _wgslsmith_f_op_f32(f32(-1f) * -2097f));
    global0 = array<bool, 16>();
    global2 = !(!select(vec4<bool>(global1.c < -1529f, false & global2.x, global1.a.a, true), vec4<bool>(any(vec4<bool>(global1.a.a, global2.x, global1.a.a, false)), u_input.a.x <= global1.a.d.x, all(global2.yx), global1.a.a), !vec4<bool>(false, false, global2.x, false)));
    let var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(countOneBits(u_input.c), u_input.c, u_input.c | u_input.c, 27331i | u_input.b.x)), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.b.x, -44048i, u_input.b.x, u_input.b.x)), min(~vec4<i32>(2147483647i, 5446i, u_input.b.x, u_input.c), -vec4<i32>(u_input.c, u_input.c, 28486i, u_input.b.x)))), max(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, -1i, -2147483647i, 12427i), countOneBits(vec4<i32>(u_input.c, 0i, u_input.c, 1i))), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, u_input.c, u_input.b.x, 2147483647i), vec4<i32>(1i, u_input.b.x, u_input.c, u_input.c), vec4<i32>(u_input.c, u_input.c, u_input.b.x, u_input.b.x))), ~vec4<i32>(u_input.c, u_input.b.x, firstTrailingBit(u_input.b.x), ~(-47892i))));
    return Struct_3(reverseBits(global1.b.x), vec2<i32>(_wgslsmith_mult_i32(u_input.b.x, u_input.c), 15881i) & vec2<i32>(2147483647i, firstTrailingBit(u_input.b.x) << (4294967295u % 32u)));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: f32) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-449f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(arg_2)))), _wgslsmith_f_op_f32(-arg_2), global2.x)), arg_2) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_2, arg_2, global2.x)), _wgslsmith_f_op_f32(max(1960f, arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * 459f)), global1.a.c)));
    global2 = select(select(vec4<bool>(_wgslsmith_f_op_f32(global1.a.c - 425f) > 183f, true, global2.x, true), select(select(vec4<bool>(global0[_wgslsmith_index_u32(arg_0.a, 16u)], global0[_wgslsmith_index_u32(114872u, 16u)], global2.x, true), select(vec4<bool>(true, true, global2.x, global2.x), vec4<bool>(true, true, false, true), vec4<bool>(global0[_wgslsmith_index_u32(arg_0.a, 16u)], arg_1, true, global0[_wgslsmith_index_u32(0u, 16u)])), vec4<bool>(arg_1, false, false, true)), select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(global1.b.x, 16u)], global1.a.a), vec4<bool>(global1.a.a, arg_1, global1.a.a, global2.x), select(vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(u_input.a.x, 16u)]), vec4<bool>(arg_1, false, arg_1, global2.x), vec4<bool>(false, arg_1, false, false))), select(select(vec4<bool>(arg_1, false, global0[_wgslsmith_index_u32(u_input.a.x, 16u)], global0[_wgslsmith_index_u32(1u, 16u)]), vec4<bool>(true, arg_1, true, global2.x), vec4<bool>(arg_1, global0[_wgslsmith_index_u32(u_input.a.x, 16u)], arg_1, false)), vec4<bool>(true, true, true, true), vec4<bool>(global1.a.a, global1.a.a, false, global2.x))), vec4<bool>(!global1.a.a, true, true, false)), !vec4<bool>(any(select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, global1.a.a), global2.wz)), 632f <= _wgslsmith_f_op_f32(floor(global1.c)), !global1.a.a, true), any(global2.zyw));
    let var_1 = firstLeadingBit(~_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(arg_0.b.x, u_input.b.x, -1i, 48326i), -vec4<i32>(u_input.b.x, u_input.c, u_input.c, -2147483647i)), ~vec4<i32>(arg_0.b.x, arg_0.b.x, -18120i, u_input.c) << (max(global1.b, vec4<u32>(global1.a.d.x, 1u, 1u, global1.a.d.x)) % vec4<u32>(32u))));
    var var_2 = any(vec4<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.yy, vec2<u32>(1u, 0u)), 16u)], true)), global0[_wgslsmith_index_u32(arg_0.a, 16u)], any(!global2.wzy), false));
    return vec2<bool>(!any(vec3<bool>(any(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 16u)], global1.a.a, true)), global2.x, select(false, false, true))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 16>();
    global2 = select(vec4<bool>(all(func_4(func_1(), u_input.c < u_input.b.x, _wgslsmith_f_op_f32(-1152f * global1.a.b.x))), ~u_input.a.x < ~1u, !func_3(Struct_2(global1.a, global1.b, -871f), vec3<u32>(global1.b.x, global1.b.x, u_input.a.x)) | (_wgslsmith_dot_vec4_u32(global1.b, vec4<u32>(0u, global1.a.d.x, 52798u, 0u)) < ~2573u), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, ~22053u, 30259u) << ((abs(0u) & _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)) % 32u), 16u)]), vec4<bool>(all(!vec4<bool>(global2.x, true, global0[_wgslsmith_index_u32(41335u, 16u)], global2.x)) == any(global2.yz), any(func_2(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), func_1().b.x, Struct_2(global1.a, global1.b, global1.c)).xy), false, true && !any(vec4<bool>(false, true, global1.a.a, global1.a.a))), global0[_wgslsmith_index_u32(u_input.a.x, 16u)]);
    let var_0 = Struct_4(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, ~_wgslsmith_mult_i32(0i, u_input.b.x)), ~(~vec2<i32>(0i, u_input.b.x))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1238f + _wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-595f, 776f))), -1494f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c - global1.a.c) * _wgslsmith_f_op_f32(global1.c * 1660f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.c - global1.a.b.x), global1.c, global2.x)))), Struct_2(global1.a, global1.b, _wgslsmith_f_op_f32(min(global1.c, _wgslsmith_f_op_f32(step(global1.c, _wgslsmith_f_op_f32(-global1.a.b.x)))))), Struct_2(Struct_1(global1.a.a, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.c, global1.c))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global1.a.c, global1.a.c)), _wgslsmith_f_op_f32(-global1.c), true)), countOneBits(min(vec2<u32>(u_input.a.x, 0u), vec2<u32>(u_input.a.x, u_input.a.x)))), ~firstTrailingBit(vec4<u32>(0u, 1264u, 0u, global1.a.d.x)), _wgslsmith_f_op_f32(-857f * _wgslsmith_f_op_f32(select(-348f, _wgslsmith_f_op_f32(round(global1.c)), false)))), select(vec2<u32>(u_input.a.x, _wgslsmith_mult_u32(4294967295u, 1u)), vec2<u32>(~1u, global1.a.d.x >> (0u % 32u)), vec2<bool>(true, true)) | abs(global1.b.yw));
    var var_1 = select(global2.yzy, global2.zzy, global2.x);
    let var_2 = !global2.x & all(func_2(_wgslsmith_sub_i32(51447i, -1i), -1i, var_0.c).yz);
    var_1 = vec3<bool>(var_1.x, any(!select(!vec4<bool>(global2.x, var_1.x, global0[_wgslsmith_index_u32(1u, 16u)], false), !vec4<bool>(false, var_2, true, global0[_wgslsmith_index_u32(1u, 16u)]), !global2.x)), true);
    global1 = Struct_2(Struct_1(any(vec2<bool>(true, true)), global1.a.b, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(select(var_0.c.c, -422f, true))), (_wgslsmith_mod_vec2_u32(u_input.a.yz, global1.b.xw) >> (vec2<u32>(1u, var_0.d.a.d.x) % vec2<u32>(32u))) << ((~global1.b.yx | vec2<u32>(u_input.a.x, var_0.d.b.x)) % vec2<u32>(32u))), ~(~vec4<u32>(24652u, 56682u, ~var_0.d.b.x, _wgslsmith_sub_u32(24741u, 0u))), _wgslsmith_f_op_f32(exp2(var_0.d.a.c)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-364f - global1.c) * _wgslsmith_f_op_f32(min(-1061f, global1.a.c))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_0.d.a.c)), 108f, !global2.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x, firstTrailingBit(~(~vec4<u32>(u_input.a.x, var_0.e.x, global1.a.d.x, 1u))));
}

