struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 25> = array<vec2<f32>, 25>(vec2<f32>(815f, 1000f), vec2<f32>(-1500f, 1296f), vec2<f32>(-1027f, 429f), vec2<f32>(-580f, -1500f), vec2<f32>(274f, 757f), vec2<f32>(1675f, -1133f), vec2<f32>(129f, 564f), vec2<f32>(-602f, 970f), vec2<f32>(-238f, 357f), vec2<f32>(926f, 508f), vec2<f32>(-817f, 1000f), vec2<f32>(-523f, -527f), vec2<f32>(-1481f, -297f), vec2<f32>(140f, -1000f), vec2<f32>(-369f, -1894f), vec2<f32>(-1230f, -1245f), vec2<f32>(-201f, -400f), vec2<f32>(-1075f, -1198f), vec2<f32>(1000f, -284f), vec2<f32>(864f, 979f), vec2<f32>(452f, -854f), vec2<f32>(-655f, 242f), vec2<f32>(515f, -153f), vec2<f32>(394f, 1048f), vec2<f32>(2297f, -520f));

var<private> global1: array<vec2<i32>, 25>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: vec4<u32>, arg_3: Struct_3) -> Struct_1 {
    global1 = array<vec2<i32>, 25>();
    global0 = array<vec2<f32>, 25>();
    global0 = array<vec2<f32>, 25>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(439f)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1785f, -285f, var_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1550f, -3283f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, var_0, var_0, var_0)))), vec4<f32>(-332f, _wgslsmith_div_f32(var_0, var_0), 793f, var_0))));
    return arg_3.b;
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: bool, arg_3: Struct_2) -> i32 {
    var var_0 = arg_3.c.x;
    let var_1 = arg_3.a;
    let var_2 = Struct_3(!any(!select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(true, false, arg_2), vec3<bool>(true, false, true))), arg_0.a);
    global1 = array<vec2<i32>, 25>();
    var_0 = ~_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a.x << (10447u % 32u), u_input.a.x), vec2<i32>(_wgslsmith_mult_i32(1i, i32(-1i) * -21050i), var_1.a));
    return _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(reverseBits(1i), arg_0.a.b ^ 51756i, ~(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(71766i, arg_0.c.x, -1i), vec3<i32>(var_2.b.b, u_input.a.x, var_1.b))), _wgslsmith_sub_vec4_i32(reverseBits(firstLeadingBit(vec4<i32>(arg_3.c.x, arg_0.a.a, 4791i, arg_0.c.x))), ~vec4<i32>(arg_0.a.b, arg_0.a.a, var_1.b, -26810i))), -16028i);
}

fn func_1(arg_0: vec4<i32>, arg_1: i32) -> Struct_1 {
    var var_0 = ~vec3<u32>(u_input.b.x, _wgslsmith_add_u32(firstLeadingBit(u_input.b.x), u_input.b.x), u_input.b.x);
    var var_1 = Struct_2(func_2(vec4<i32>(_wgslsmith_dot_vec3_i32(arg_0.wyy << (vec3<u32>(var_0.x, u_input.b.x, 4294967295u) % vec3<u32>(32u)), arg_0.xxy), -min(-16445i, 2147483647i), _wgslsmith_dot_vec4_i32(arg_0 << (vec4<u32>(4294967295u, 28745u, 23258u, 79849u) % vec4<u32>(32u)), reverseBits(arg_0)), firstTrailingBit(-17937i)), u_input.b.zy, ~select(~vec4<u32>(var_0.x, var_0.x, u_input.b.x, u_input.b.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.b.x, 4294967295u, var_0.x), vec4<u32>(3040u, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(var_0.x, 108619u, var_0.x, u_input.b.x)), arg_1 <= arg_1), Struct_3(any(vec4<bool>(true, false, false, false)), Struct_1(_wgslsmith_clamp_i32(arg_1, arg_0.x, -2147483647i), -2147483647i))), 33416u, vec2<i32>(~u_input.a.x, -_wgslsmith_add_i32(9495i, func_3(Struct_2(Struct_1(57368i, arg_1), u_input.b.x, vec2<i32>(u_input.a.x, 1i)), false, true, Struct_2(Struct_1(arg_0.x, arg_1), 4294967295u, global1[_wgslsmith_index_u32(1u, 25u)])))));
    var_0 = ~(~_wgslsmith_div_vec3_u32(reverseBits(u_input.b), u_input.b) & ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 0u, 112042u), vec3<u32>(30739u, 34926u, var_1.b))));
    let var_2 = ~51113u;
    global0 = array<vec2<f32>, 25>();
    return Struct_1(1i, _wgslsmith_mod_i32(reverseBits(arg_0.x), 17501i ^ min(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-23379i, -2147483647i), arg_0.yw))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    var var_1 = Struct_2(func_1(_wgslsmith_div_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(1i, -46032i, 677i, -7553i), vec4<i32>(var_0, var_0, u_input.a.x, -1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(u_input.a.x, var_0, 23818i, u_input.a.x))), max(u_input.a.x, -2147483647i)), ~u_input.b.x, u_input.a << (firstLeadingBit(~select(u_input.b.zy, vec2<u32>(u_input.b.x, 30751u), false)) % vec2<u32>(32u)));
    global0 = array<vec2<f32>, 25>();
    global1 = array<vec2<i32>, 25>();
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1000f, 942f)), _wgslsmith_f_op_f32(step(500f, -114f)), true))))) <= _wgslsmith_div_f32(1130f, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_3 = min(-countOneBits((vec4<i32>(var_0, var_0, u_input.a.x, 2147483647i) << (vec4<u32>(1u, 1u, 0u, 0u) % vec4<u32>(32u))) | ~vec4<i32>(var_1.a.a, 2147483647i, 14677i, var_0)), ~(~_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0, 2971i, 1i, u_input.a.x), ~vec4<i32>(var_0, 3424i, var_0, var_1.a.a), ~vec4<i32>(-45341i, -37945i, var_1.a.b, var_1.a.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1045f, 277f, 1000f, -1000f)))) + vec4<f32>(_wgslsmith_f_op_f32(-1477f + -406f), _wgslsmith_f_op_f32(1233f - _wgslsmith_f_op_f32(f32(-1f) * -1196f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -885f))), _wgslsmith_f_op_f32(abs(-1120f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1113f, -1471f, -1676f, -1036f), vec4<f32>(415f, 913f, 124f, 417f), vec4<bool>(true, var_2, var_2, false)))))), vec4<f32>(_wgslsmith_f_op_f32(min(-122f, _wgslsmith_f_op_f32(sign(-401f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -1000f))), 1000f, _wgslsmith_f_op_f32(floor(381f)))));
}

