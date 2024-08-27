struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10> = array<bool, 10>(true, true, true, false, false, false, false, true, false, true);

var<private> global1: u32;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<bool>(false, true, true, false), vec3<i32>(-3613i, 19650i, i32(-2147483648))), Struct_1(vec4<bool>(false, false, false, false), vec3<i32>(-9886i, i32(-2147483648), -34970i)), Struct_1(vec4<bool>(true, true, true, true), vec3<i32>(1i, 43039i, 2147483647i)), Struct_1(vec4<bool>(true, true, true, true), vec3<i32>(46296i, -12999i, -1i)), Struct_1(vec4<bool>(false, false, false, false), vec3<i32>(-1i, 0i, 1i)));

var<private> global4: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec3<bool>) -> vec4<f32> {
    let var_0 = global3[_wgslsmith_index_u32(abs(1u), 5u)];
    global0 = array<bool, 10>();
    var var_1 = abs(vec2<u32>(u_input.b.x & max(4294967295u, 4294967295u), reverseBits(59362u)));
    let var_2 = u_input.b.x;
    var var_3 = 1i;
    return vec4<f32>(-798f, _wgslsmith_div_f32(1681f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-997f))))), _wgslsmith_f_op_f32(step(1238f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-738f, 328f) * _wgslsmith_f_op_f32(1000f + 590f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -431f), -689f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1125f) - -1333f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1032f - -947f), _wgslsmith_f_op_f32(f32(-1f) * -661f)) * _wgslsmith_div_f32(-1518f, _wgslsmith_f_op_f32(max(1000f, -227f))))));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: f32, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(772f, arg_2, arg_2, arg_2) - vec4<f32>(arg_2, 3237f, 691f, -3108f)) - _wgslsmith_f_op_vec4_f32(func_3(global4.x, Struct_1(vec4<bool>(false, arg_1.x, false, false), global2.b), vec3<bool>(false, global4.x, arg_3.a.x), arg_3.a.yxx))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -369f, arg_2, -278f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, -1345f, arg_2) - vec4<f32>(801f, 998f, arg_2, -598f)) - vec4<f32>(-1000f, arg_2, arg_2, -235f)))), global0[_wgslsmith_index_u32(u_input.b.x, 10u)])));
    let var_1 = Struct_2(1175f);
    let var_2 = global4.x && select(!(!arg_3.a.x), false, arg_1.x);
    global4 = select(!select(select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(16645u, 10u)]), arg_3.a.wxy, global4.x & global4.x), vec3<bool>(select(true, true, true), all(vec3<bool>(true, global4.x, arg_3.a.x)), u_input.b.x < 1u), any(!global4.yx)), vec3<bool>(arg_1.x, true, any(vec3<bool>(false, false, select(false, var_2, true)))), !any(!vec2<bool>(false, global4.x)));
    var var_3 = var_1;
    return -809f;
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: vec2<f32>) -> u32 {
    let var_0 = abs(~abs(firstTrailingBit(~vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x))));
    global3 = array<Struct_1, 5>();
    global4 = !select(select(vec3<bool>(global4.x && true, global4.x, false), select(vec3<bool>(false, global2.a.x, global0[_wgslsmith_index_u32(4294967295u, 10u)]), global2.a.ywx, !global2.a.wwx), vec3<bool>(global4.x, any(global2.a), true)), !select(select(vec3<bool>(global2.a.x, global0[_wgslsmith_index_u32(1u, 10u)], false), global2.a.yxw, global2.a.x), !global2.a.wwx, true), select(select(!global2.a.zzw, select(global2.a.wyx, vec3<bool>(true, true, true), global4.x), false != arg_1.x), select(vec3<bool>(true, false, true), !vec3<bool>(false, true, global2.a.x), true), select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], global4.x, false), global2.a.wwz, arg_1.x), vec3<bool>(true, false, true), select(global2.a.yxz, global2.a.wzz, global2.a.zwx))));
    global4 = !global2.a.zxz;
    let var_1 = vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(var_0.yz, vec2<u32>(var_0.x, 0u)), ~vec2<u32>(u_input.b.x, 0u)) | 1u, ~_wgslsmith_div_u32(var_0.x << (u_input.b.x % 32u), select(17347u, u_input.b.x, global2.a.x)), _wgslsmith_add_u32(_wgslsmith_mult_u32(1u, 35123u), 0u)), 4294967295u, u_input.b.x | ~4294967295u);
    return var_1.x;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> vec3<f32> {
    var var_0 = global3[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_f32(func_2(arg_2, vec2<bool>(true, true), _wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(f32(-1f) * -1146f)), Struct_1(!(!global2.a), vec3<i32>(arg_1.b.x, ~2147483647i, 1i >> (u_input.b.x % 32u))))), vec2<bool>(global2.a.x, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(385f, _wgslsmith_f_op_f32(max(arg_0.a, arg_0.a)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.a, arg_0.a))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-346f, 1607f) * vec2<f32>(760f, arg_0.a))))), 5u)];
    return vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1091f)), -2003f), _wgslsmith_f_op_f32(f32(-1f) * -986f), _wgslsmith_f_op_f32(-1762f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)) - arg_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - -1000f) - -1333f)), -1360f);
    global2 = Struct_1(select(select(!select(vec4<bool>(global4.x, true, false, global2.a.x), vec4<bool>(global0[_wgslsmith_index_u32(1u, 10u)], false, global2.a.x, global4.x), global2.a.x), select(select(global2.a, global2.a, vec4<bool>(false, false, true, global4.x)), global2.a, vec4<bool>(global4.x, true, global4.x, true)), any(select(global4.xz, global2.a.ww, vec2<bool>(true, true)))), vec4<bool>(false, global2.a.x, global2.a.x, !(u_input.b.x <= 26902u)), !all(vec3<bool>(global2.a.x, global0[_wgslsmith_index_u32(87194u, 10u)], true))), vec3<i32>(-u_input.a, -1i, -u_input.a) | _wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(global2.b.x, u_input.a, u_input.a)), ~vec3<i32>(u_input.a, u_input.a, u_input.a)));
    var var_1 = _wgslsmith_f_op_vec3_f32(func_1(Struct_2(_wgslsmith_f_op_f32(floor(var_0.x))), Struct_1(!vec4<bool>(any(vec2<bool>(global4.x, global4.x)), false, global0[_wgslsmith_index_u32(0u, 10u)], true), max(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, global2.b.x, u_input.a), vec4<i32>(u_input.a, global2.b.x, 1i, global2.b.x)), _wgslsmith_add_i32(39078i, global2.b.x), _wgslsmith_clamp_i32(-31241i, u_input.a, -32699i)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(65964i, global2.b.x, -2147483647i), vec3<i32>(0i, -45962i, 2147483647i)))), 0i));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-689f + var_0.x))) * 1151f));
    var var_3 = _wgslsmith_div_vec4_i32(~_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(global2.b.x, -52687i, global2.b.x, 18981i), vec4<i32>(u_input.a, u_input.a, global2.b.x, 2147483647i)), vec4<i32>(firstTrailingBit(1i), -global2.b.x, ~global2.b.x, abs(u_input.a))), vec4<i32>(global2.b.x, _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a, _wgslsmith_mult_i32(u_input.a, -26038i)), reverseBits(u_input.a) << (~3249u % 32u)), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(select(vec4<i32>(-35142i, -34986i, 2147483647i, 0i), vec4<i32>(-1i, u_input.a, 1i, global2.b.x), global0[_wgslsmith_index_u32(u_input.b.x, 10u)]), min(vec4<i32>(global2.b.x, u_input.a, global2.b.x, global2.b.x), vec4<i32>(global2.b.x, 30835i, u_input.a, u_input.a))), vec4<i32>(global2.b.x, reverseBits(global2.b.x), _wgslsmith_dot_vec2_i32(global2.b.xz, vec2<i32>(-56336i, -31711i)), -1i)), -2147483647i));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1197f, -1001f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, -213f) + _wgslsmith_f_op_f32(336f - var_2.a))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(609f, -176f, -1429f), vec3<f32>(var_2.a, var_1.x, 1475f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_2.a, -1350f)))))));
    global2 = global3[_wgslsmith_index_u32(countOneBits(92268u), 5u)];
    let var_4 = _wgslsmith_mult_vec3_u32(min(~(~vec3<u32>(u_input.b.x, u_input.b.x, 94730u)), vec3<u32>(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), u_input.b.x << (u_input.b.x % 32u), ~u_input.b.x) & ~_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.b.x, 4294967295u), vec3<u32>(u_input.b.x, u_input.b.x, 1u))), ~(vec3<u32>(_wgslsmith_mult_u32(u_input.b.x, 1619u), select(0u, 36894u, global2.a.x), u_input.b.x) | min(abs(vec3<u32>(u_input.b.x, u_input.b.x, 71384u)), vec3<u32>(u_input.b.x, u_input.b.x, 39591u))));
    let var_5 = Struct_1(vec4<bool>(all(select(select(vec3<bool>(false, global4.x, global4.x), vec3<bool>(global4.x, true, false), vec3<bool>(false, global4.x, global0[_wgslsmith_index_u32(13086u, 10u)])), !global2.a.xxx, vec3<bool>(true, true, true))), all(!select(global2.a.xww, vec3<bool>(false, global2.a.x, false), vec3<bool>(false, false, global2.a.x))), global4.x, !all(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 10u)], global4.x, true))), countOneBits(-global2.b & (vec3<i32>(-28248i, -15985i, var_3.x) << (var_4 % vec3<u32>(32u)))) ^ -_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(var_3.zyz, var_3.zyz), vec3<i32>(global2.b.x, -27173i, 0i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, ~u_input.b.x, firstLeadingBit(1u), var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1806f, 473f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_vec3_f32(func_1(Struct_2(var_0.x), Struct_1(var_5.a, vec3<i32>(u_input.a, var_5.b.x, u_input.a)), 16342i)).x)), var_2.a));
}

