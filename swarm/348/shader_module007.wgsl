struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19> = array<u32, 19>(67404u, 1u, 4294967295u, 75360u, 4294967295u, 65596u, 3494u, 880u, 1u, 68925u, 92377u, 4294967295u, 67450u, 1u, 1u, 105106u, 4294967295u, 0u, 68665u);

var<private> global1: Struct_3 = Struct_3(vec4<i32>(2147483647i, -32832i, i32(-2147483648), 1i), false, vec4<f32>(-503f, 423f, -1332f, 1108f));

var<private> global2: vec3<f32>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<i32> {
    var var_0 = all(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, global1.b, global1.b), all(vec3<bool>(false, false, true)))));
    global2 = _wgslsmith_f_op_vec3_f32(global1.c.xxy - global1.c.zxw);
    var_0 = true;
    global0 = array<u32, 19>();
    let var_1 = Struct_1(vec2<bool>(global1.b || !all(vec2<bool>(global1.b, true)), !select(!global1.b, -643f <= global1.c.x, global1.b)), all(vec3<bool>((true & global1.b) & (1u != global0[_wgslsmith_index_u32(1u, 19u)]), true, false)), 7710i);
    return ~global1.a;
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> bool {
    global0 = array<u32, 19>();
    let var_0 = !(!select(vec4<bool>(true, select(arg_0.c, true, false), true, false), select(select(vec4<bool>(global1.b, arg_0.c, global1.b, global1.b), vec4<bool>(global1.b, true, global1.b, global1.b), vec4<bool>(arg_0.c, false, arg_0.c, arg_0.c)), select(vec4<bool>(arg_0.c, arg_0.c, true, global1.b), vec4<bool>(true, true, arg_0.c, true), vec4<bool>(arg_0.c, arg_0.c, false, arg_0.c)), select(vec4<bool>(global1.b, arg_0.c, true, global1.b), vec4<bool>(arg_0.c, arg_0.c, arg_0.c, true), arg_0.c)), vec4<bool>(arg_0.c, arg_1 <= 4294967295u, true, false)));
    global0 = array<u32, 19>();
    let var_1 = 43512i;
    global1 = Struct_3(~(-abs(func_3())), true && !arg_0.c, _wgslsmith_f_op_vec4_f32(min(global1.c, vec4<f32>(_wgslsmith_f_op_f32(-global2.x), 1f, _wgslsmith_f_op_f32(global1.c.x + _wgslsmith_f_op_f32(select(arg_0.b.x, -1565f, global1.b))), 1f))));
    return true;
}

fn func_1(arg_0: vec3<f32>) -> vec4<i32> {
    global1 = Struct_3(u_input.a, global1.a.x >= (1i ^ u_input.a.x), vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(global2.x - -113f), 330f, 855f));
    global1 = Struct_3(vec4<i32>(-u_input.a.x, ~2405i, -(~global1.a.x) | _wgslsmith_div_i32(reverseBits(u_input.a.x), 9628i), ~(-2147483647i)), func_2(Struct_2(u_input.a.x, vec2<f32>(1308f, _wgslsmith_f_op_f32(-1000f - global1.c.x)), global1.b, ~(~vec4<i32>(2147483647i, u_input.a.x, global1.a.x, 15505i))), 1u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-195f, arg_0.x, 676f, global2.x) + vec4<f32>(1000f, arg_0.x, -537f, 1301f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global1.c * _wgslsmith_f_op_vec4_f32(-global1.c)), _wgslsmith_div_vec4_f32(global1.c, _wgslsmith_f_op_vec4_f32(-global1.c)), reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)]) == 4294967295u)), vec4<bool>(global1.b, true, any(vec4<bool>(false, global1.b, false, false)), any(vec2<bool>(global1.b, true))))));
    global0 = array<u32, 19>();
    var var_0 = select(!(!select(!vec2<bool>(global1.b, true), vec2<bool>(global1.b, false), global1.b)), !vec2<bool>(global1.b, !global1.b), !vec2<bool>(global1.b, global1.b || true));
    let var_1 = Struct_2(~_wgslsmith_div_i32(0i, countOneBits(global1.a.x) | global1.a.x), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1178f, -644f) - global2.zx) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.x, arg_0.x), arg_0.xx, vec2<bool>(var_0.x, true))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.xz)))), global1.b, ~global1.a);
    return -vec4<i32>(_wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_mult_i32(-2147483647i, global1.a.x)), 1i), _wgslsmith_div_i32(global1.a.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(-3580i, -2147483647i, u_input.a.x, global1.a.x), var_1.d)), select(i32(-1i) * -58217i, -global1.a.x, var_0.x) >> (1u % 32u), ~(~countOneBits(-4317i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = Struct_1(!select(!vec2<bool>(global1.b, false), select(vec2<bool>(true, true), !vec2<bool>(global1.b, true), select(vec2<bool>(true, false), vec2<bool>(global1.b, global1.b), vec2<bool>(true, global1.b))), !(!vec2<bool>(false, global1.b))), _wgslsmith_f_op_f32(f32(-1f) * -1429f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.x)) * global1.c.x) * -1080f), -2147483647i);
    global1 = Struct_3(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.a, func_1(vec3<f32>(global1.c.x, global2.x, -100f))), vec4<i32>(429i, 0i, -var_1.c, firstLeadingBit(global1.a.x))), any(select(select(select(vec3<bool>(global1.b, false, global1.b), vec3<bool>(true, false, false), vec3<bool>(true, global1.b, global1.b)), vec3<bool>(var_1.a.x, global1.b, var_1.b), true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, global1.b), vec3<bool>(false, false, var_1.a.x)), vec3<bool>(true, var_1.b, true), !vec3<bool>(false, var_1.b, true)), all(!vec3<bool>(true, true, global1.b)))), global1.c);
    var var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(max(~(~vec3<u32>(13881u, global0[_wgslsmith_index_u32(71549u, 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17668u, 19u)], 19u)])), ~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22953u, 19u)], 19u)], 19u)], 19u)], 19u)], 7741u, 1u) ^ reverseBits(vec3<u32>(21058u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 19u)], 19u)], 25549u))), ~max(vec3<u32>(4294967295u, 0u, global0[_wgslsmith_index_u32(1u, 19u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5165u, 19u)], 19u)], 1u, 0u)) | vec3<u32>(~1u, ~39163u, ~4679u)), (vec3<u32>(reverseBits(1u), 6811u, ~global0[_wgslsmith_index_u32(36227u, 19u)]) ^ (_wgslsmith_div_vec3_u32(vec3<u32>(38008u, global0[_wgslsmith_index_u32(3493u, 19u)], global0[_wgslsmith_index_u32(2029u, 19u)]), vec3<u32>(73838u, global0[_wgslsmith_index_u32(0u, 19u)], 763u)) >> (vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 19u)], 19u)], 0u, 1u) % vec3<u32>(32u)))) >> (vec3<u32>(~abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28659u, 19u)], 19u)], 19u)], 19u)]), 62324u, ~global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 44392u), 19u)]) % vec3<u32>(32u)));
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-593f - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1.c.x, global2.x)))) + global1.c.x)));
    var var_4 = countOneBits(vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 28808u), ~vec2<u32>(28275u, 4294967295u)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(~13837u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~1u, 19u)], 19u)], 27606u >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 19u)] % 32u)), ~global0[_wgslsmith_index_u32(1u, 19u)]), 19u)], 19u)], ~648u));
    var_2 = ~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(min(select(vec3<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 19u)], var_4.x), vec3<u32>(global0[_wgslsmith_index_u32(var_4.x, 19u)], 1418u, 4294967295u), vec3<bool>(false, false, true)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 7339u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 19u)]), vec3<u32>(48624u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7039u, 19u)], 19u)], var_4.x))), firstLeadingBit(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(1u, 19u)], var_4.x))), 4294967295u);
    var_0 = all(!select(var_1.a, !(!vec2<bool>(var_1.b, true)), vec2<bool>(-2147483647i > global1.a.x, false)));
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.yw, -vec4<i32>(_wgslsmith_add_i32(-25747i, global1.a.x) | 19246i, firstTrailingBit(1i), 1i, 1i));
}

