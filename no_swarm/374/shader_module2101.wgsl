struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-768f, 655f, 615f);

var<private> global1: array<Struct_1, 15>;

var<private> global2: f32;

var<private> global3: bool = false;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2) -> u32 {
    global1 = array<Struct_1, 15>();
    var var_0 = 215f;
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(442f - 203f)));
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0.d.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.c.c.x)) * _wgslsmith_f_op_f32(-arg_2.c.c.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-465f * arg_0.a.c.x)))), arg_0.d.c.x, select(true, arg_2.d.d, select(false, false, var_2) & (arg_2.d.c.x < -1545f)) | all(select(vec4<bool>(arg_0.a.d, arg_2.b.x, arg_2.c.d, true), select(vec4<bool>(var_2, arg_2.e, true, true), vec4<bool>(arg_0.d.d, arg_2.a.d, true, arg_0.c.d), vec4<bool>(arg_0.b.x, true, true, arg_0.e)), !arg_0.d.d))));
    return 43751u;
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: f32) -> vec3<f32> {
    global1 = array<Struct_1, 15>();
    let var_0 = arg_1.d;
    let var_1 = Struct_1(17303u, var_0.b, _wgslsmith_f_op_vec3_f32(-var_0.c), true);
    let var_2 = var_0;
    global0 = arg_1.c.c;
    return var_1.c;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<u32>) -> u32 {
    let var_0 = arg_1.d.d;
    let var_1 = vec4<i32>(-2147483647i | _wgslsmith_mult_i32(_wgslsmith_add_i32(arg_1.c.b, 12301i) ^ arg_1.d.b, 1i), _wgslsmith_mod_i32(-75447i, i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.b, arg_1.c.b, arg_0.b, -1i), vec4<i32>(arg_1.d.b, -32878i, 0i, 1i))), _wgslsmith_mod_i32(38439i, 28211i), _wgslsmith_sub_i32(0i >> ((79809u >> ((arg_1.a.a & 11147u) % 32u)) % 32u), 11991i));
    global0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_1.d.c, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_3(arg_1.a.a, Struct_2(arg_0, vec2<bool>(false, arg_0.d), Struct_1(3332u, -8838i, vec3<f32>(global0.x, -758f, -315f), false), Struct_1(arg_1.a.a, arg_0.b, arg_0.c, false), var_0), arg_1.c.c.x)))), vec3<bool>(false, any(arg_1.b), arg_1.c.d & false))) * vec3<f32>(-528f, arg_1.c.c.x, arg_1.a.c.x))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(arg_2.x, arg_1.c.a), ~arg_0.a), firstTrailingBit(_wgslsmith_mult_u32(1u, u_input.a.x))), _wgslsmith_add_i32(41485i, ~(-1i)) & arg_0.b, _wgslsmith_f_op_vec3_f32(-arg_0.c), arg_1.e), !(!arg_1.b), global1[_wgslsmith_index_u32(arg_0.a, 15u)], Struct_1(_wgslsmith_sub_u32(~1u, _wgslsmith_clamp_u32(arg_0.a & arg_0.a, arg_2.x, 4294967295u)), ~(~max(arg_0.b, var_1.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c.c.x, 140f, global0.x) - vec3<f32>(-159f, global0.x, 1000f))) - vec3<f32>(_wgslsmith_f_op_f32(arg_0.c.x - -487f), -224f, _wgslsmith_f_op_vec3_f32(func_3(0u, Struct_2(arg_0, vec2<bool>(var_0, true), Struct_1(3867u, 1i, vec3<f32>(arg_0.c.x, arg_0.c.x, global0.x), true), Struct_1(arg_1.d.a, arg_0.b, vec3<f32>(961f, -588f, global0.x), arg_1.e), false), arg_0.c.x)).x)), false), arg_1.a.d);
    var var_3 = var_2.c.b;
    return _wgslsmith_sub_u32(u_input.a.x, ~_wgslsmith_sub_u32(arg_0.a, 1u));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    global0 = arg_2.c.c;
    let var_0 = vec3<bool>(all(vec4<bool>(true, any(!vec3<bool>(arg_2.c.d, false, arg_2.b.x)), false, select(arg_2.e | true, arg_2.b.x, any(vec3<bool>(arg_1.d.d, true, arg_1.b.x))))), false, !arg_2.e);
    global3 = any(!vec4<bool>(arg_1.d.d | !arg_1.e, false, true, -1595f < arg_1.a.c.x));
    var var_1 = Struct_2(arg_1.a, select(var_0.xy, !vec2<bool>(any(vec4<bool>(arg_1.d.d, var_0.x, arg_2.d.d, arg_1.d.d)), !arg_2.c.d), arg_1.b), arg_1.c, Struct_1(~(0u & u_input.a.x) & (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.c.a, arg_3), vec2<u32>(1u, 1u)) | arg_3), ~arg_2.c.b, arg_2.a.c, !all(select(var_0, var_0, var_0.x))), true);
    let var_2 = _wgslsmith_div_vec2_i32(vec2<i32>(var_1.a.b << (var_1.a.a % 32u), arg_1.a.b), _wgslsmith_sub_vec2_i32(-_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, arg_1.a.b), vec2<i32>(45106i, 2147483647i), vec2<i32>(arg_1.a.b, arg_2.d.b)), ~vec2<i32>(1i, 1i)) << (u_input.a.xz % vec2<u32>(32u)));
    return arg_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_4(~func_1(Struct_2(Struct_1(u_input.a.x, 0i, vec3<f32>(134f, -1108f, global0.x), true), vec2<bool>(true, true), Struct_1(u_input.a.x, 2147483647i, vec3<f32>(-1000f, 1306f, global0.x), true), global1[_wgslsmith_index_u32(u_input.a.x, 15u)], true), 523f, Struct_2(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], vec2<bool>(true, true), Struct_1(u_input.a.x, 2147483647i, vec3<f32>(749f, global0.x, 979f), false), global1[_wgslsmith_index_u32(81308u, 15u)], false)), Struct_2(Struct_1(func_2(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], Struct_2(global1[_wgslsmith_index_u32(36489u, 15u)], vec2<bool>(false, false), global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(0u, 15u)], false), vec2<u32>(1u, 0u)), 79447i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -1000f)), true), vec2<bool>(true, true), Struct_1(u_input.a.x, -63471i, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-915f, 162f, global0.x))), true), global1[_wgslsmith_index_u32(1u, 15u)], all(vec4<bool>(true, true, true, true))), Struct_2(Struct_1(_wgslsmith_div_u32(0u, 4294967295u), i32(-1i) * -2147483647i, _wgslsmith_f_op_vec3_f32(vec3<f32>(-222f, -3131f, global0.x) + vec3<f32>(global0.x, -1300f, global0.x)), all(vec2<bool>(false, true))), vec2<bool>(true, true), global1[_wgslsmith_index_u32(u_input.a.x, 15u)], global1[_wgslsmith_index_u32(~69253u, 15u)], any(vec4<bool>(true, false, true, false)) & any(vec3<bool>(false, true, false))), min(~max(u_input.a.x, 4294967295u), ~2746u ^ min(u_input.a.x, 4294967295u))), vec2<bool>(func_4(_wgslsmith_add_u32(_wgslsmith_mult_u32(0u, 0u), abs(29113u)), Struct_2(func_4(1981u, Struct_2(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], vec2<bool>(true, false), Struct_1(u_input.a.x, -40651i, vec3<f32>(global0.x, -109f, global0.x), true), global1[_wgslsmith_index_u32(u_input.a.x, 15u)], false), Struct_2(Struct_1(9354u, -26725i, vec3<f32>(-207f, global0.x, -1000f), false), vec2<bool>(true, true), global1[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(u_input.a.x, 15u)], false), u_input.a.x), vec2<bool>(true, true), Struct_1(0u, -17680i, vec3<f32>(global0.x, 234f, -173f), false), Struct_1(u_input.a.x, 2147483647i, vec3<f32>(-1535f, -525f, -1000f), false), func_4(u_input.a.x, Struct_2(Struct_1(24207u, 0i, vec3<f32>(-140f, 1390f, 179f), false), vec2<bool>(false, true), global1[_wgslsmith_index_u32(u_input.a.x, 15u)], global1[_wgslsmith_index_u32(u_input.a.x, 15u)], false), Struct_2(Struct_1(u_input.a.x, -2147483647i, vec3<f32>(-422f, global0.x, 1383f), false), vec2<bool>(true, false), global1[_wgslsmith_index_u32(65596u, 15u)], global1[_wgslsmith_index_u32(u_input.a.x, 15u)], true), 35946u).d), Struct_2(func_4(u_input.a.x, Struct_2(Struct_1(u_input.a.x, -2147483647i, vec3<f32>(-353f, -988f, 1000f), true), vec2<bool>(false, true), global1[_wgslsmith_index_u32(37712u, 15u)], global1[_wgslsmith_index_u32(4294967295u, 15u)], false), Struct_2(Struct_1(4294967295u, -58860i, vec3<f32>(global0.x, 172f, global0.x), false), vec2<bool>(true, false), global1[_wgslsmith_index_u32(u_input.a.x, 15u)], global1[_wgslsmith_index_u32(121242u, 15u)], true), u_input.a.x), select(vec2<bool>(false, false), vec2<bool>(false, false), true), global1[_wgslsmith_index_u32(0u, 15u)], func_4(4294967295u, Struct_2(Struct_1(u_input.a.x, -2147483647i, vec3<f32>(global0.x, global0.x, -924f), true), vec2<bool>(true, false), Struct_1(u_input.a.x, -1i, vec3<f32>(global0.x, 560f, 966f), false), global1[_wgslsmith_index_u32(u_input.a.x, 15u)], false), Struct_2(Struct_1(23659u, -2147483647i, vec3<f32>(global0.x, global0.x, global0.x), true), vec2<bool>(false, true), Struct_1(u_input.a.x, -44661i, vec3<f32>(1252f, global0.x, -1000f), false), global1[_wgslsmith_index_u32(0u, 15u)], true), 10121u), -733f >= global0.x), func_4(func_2(Struct_1(u_input.a.x, 0i, vec3<f32>(557f, global0.x, global0.x), false), Struct_2(Struct_1(u_input.a.x, -4103i, vec3<f32>(global0.x, global0.x, global0.x), true), vec2<bool>(false, true), global1[_wgslsmith_index_u32(u_input.a.x, 15u)], global1[_wgslsmith_index_u32(u_input.a.x, 15u)], false), u_input.a.yy), Struct_2(global1[_wgslsmith_index_u32(1u, 15u)], vec2<bool>(false, false), Struct_1(u_input.a.x, 1i, vec3<f32>(-310f, -1000f, global0.x), false), Struct_1(0u, 0i, vec3<f32>(global0.x, global0.x, global0.x), false), false), Struct_2(Struct_1(50677u, 2147483647i, vec3<f32>(global0.x, global0.x, global0.x), false), vec2<bool>(true, true), Struct_1(u_input.a.x, 1i, vec3<f32>(global0.x, global0.x, -717f), false), Struct_1(u_input.a.x, -1i, vec3<f32>(global0.x, global0.x, 349f), false), true), reverseBits(u_input.a.x)).a).d, false), global1[_wgslsmith_index_u32(u_input.a.x, 15u)], global1[_wgslsmith_index_u32(16725u, 15u)], true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-var_0.d.c.x))), -7213i, func_1(var_0, var_0.c.c.x, var_0));
}

