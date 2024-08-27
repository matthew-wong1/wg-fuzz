struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 16> = array<vec4<bool>, 16>(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false));

var<private> global1: array<vec2<f32>, 25>;

var<private> global2: array<Struct_4, 23>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = ~abs(vec2<i32>(1i, 1i));
    let var_1 = select(select(global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 1u, 28741u, u_input.b.x)), u_input.b.x, u_input.a.x >> (u_input.b.x % 32u)), 16u)], global0[_wgslsmith_index_u32(1u, 16u)], vec4<bool>(arg_2.a.x, (1608f == arg_0.x) & false, arg_2.a.x, all(!arg_2.a.zz))), !vec4<bool>(-1527f >= arg_1.a, false, !any(arg_3.a), true), select(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 1u, ~_wgslsmith_dot_vec3_u32(u_input.b.xxy, vec3<u32>(16894u, u_input.a.x, u_input.a.x))), 16u)], vec4<bool>(false, !all(vec4<bool>(arg_3.a.x, false, arg_2.a.x, false)), true, firstLeadingBit(-31634i) == (var_0.x >> (u_input.b.x % 32u))), !global0[_wgslsmith_index_u32(countOneBits(51183u), 16u)]));
    var var_2 = vec3<bool>(false, arg_2.a.x, all(arg_2.a));
    global2 = array<Struct_4, 23>();
    var var_3 = _wgslsmith_dot_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(reverseBits(var_0.x), var_0.x), _wgslsmith_mult_vec2_i32(-vec2<i32>(1i, 33398i), vec2<i32>(var_0.x, var_0.x))), ~firstLeadingBit(min(vec2<i32>(var_0.x, var_0.x), _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, var_0.x), vec2<i32>(var_0.x, var_0.x)))));
    return ~(~vec2<u32>(~(~0u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 27705u, u_input.b.x), ~vec3<u32>(0u, u_input.b.x, u_input.a.x))));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_3 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_2.xy, func_3(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1190f)), -709f, true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(451f, -747f, arg_0.b)), _wgslsmith_f_op_f32(-1788f + 196f), !arg_0.b)), 896f), Struct_3(_wgslsmith_f_op_f32(-126f + _wgslsmith_div_f32(-1209f, 789f))), arg_1, Struct_1(arg_0.a.ywz))), 23u)];
    global0 = array<vec4<bool>, 16>();
    var var_1 = _wgslsmith_add_i32(0i, firstLeadingBit(~min(-1i, 1i) << (~arg_2.x % 32u)));
    var var_2 = Struct_1(vec3<bool>(arg_0.a.x, true, arg_1.a.x));
    var var_3 = Struct_5(false, Struct_2(select(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(arg_2.zy, u_input.a), vec2<u32>(1u, 5891u) | vec2<u32>(4294967295u, arg_2.x), u_input.a), ~(~vec2<u32>(u_input.a.x, u_input.a.x)), select(arg_0.a.wx, arg_1.a.yz, false))), Struct_2(countOneBits(vec2<u32>(reverseBits(4294967295u), 59619u))), vec3<bool>(!any(select(var_0.a.yx, vec2<bool>(var_2.a.x, arg_0.a.x), var_2.a.x)), false, 40469u >= max(abs(4294967295u), u_input.a.x)));
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1606f, 226f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -857f)))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_3) -> vec2<u32> {
    return abs(countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(18136u, u_input.a.x)), firstTrailingBit(6287u)), vec2<u32>(countOneBits(u_input.b.x), 1100u))));
}

fn func_1() -> Struct_4 {
    global1 = array<vec2<f32>, 25>();
    let var_0 = Struct_2((u_input.b.yz & select(~vec2<u32>(u_input.b.x, 41265u), u_input.b.zw, vec2<bool>(true, true))) & ~func_4(firstLeadingBit(vec3<i32>(-1i, 1i, -28171i)), func_2(global2[_wgslsmith_index_u32(1u, 23u)], Struct_1(vec3<bool>(true, true, true)), u_input.b)));
    global0 = array<vec4<bool>, 16>();
    let var_1 = global2[_wgslsmith_index_u32(u_input.a.x, 23u)];
    global2 = array<Struct_4, 23>();
    return Struct_4(global0[_wgslsmith_index_u32(u_input.b.x, 16u)], !var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_4, 23>();
    let var_0 = Struct_2(u_input.b.yx);
    global0 = array<vec4<bool>, 16>();
    var var_1 = -(~_wgslsmith_dot_vec3_i32(~(-vec3<i32>(2147483647i, 17709i, -2147483647i)), -vec3<i32>(-1i, -1i, -17129i)));
    global1 = array<vec2<f32>, 25>();
    let var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(min(5585u, 1270u), ~var_0.a.x, u_input.b.x & var_0.a.x) << (firstLeadingBit(u_input.b.xyz) % vec3<u32>(32u)));
}

