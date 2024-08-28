struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: bool,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec3<f32>) -> bool {
    let var_0 = arg_1.e.x;
    let var_1 = 0i;
    global0 = array<bool, 17>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.x + _wgslsmith_f_op_f32(-arg_2.d.x)));
    var var_3 = select(select(vec2<bool>(!all(vec3<bool>(global0[_wgslsmith_index_u32(17256u, 17u)], false, global0[_wgslsmith_index_u32(1u, 17u)])), all(!arg_0.xzw)), vec2<bool>(!global0[_wgslsmith_index_u32(17538u, 17u)], all(select(arg_0, vec4<bool>(arg_2.a, true, arg_1.c, arg_0.x), arg_1.a))), !vec2<bool>(arg_0.x || false, select(false, arg_1.c, false))), !(!select(!arg_0.xw, arg_0.xx, !vec2<bool>(arg_0.x, false))), select(select(arg_0.wx, arg_0.yy, arg_0.yx), !select(arg_0.xw, arg_0.wx, any(vec2<bool>(arg_1.c, true))), vec2<bool>(!any(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 17u)], arg_1.a)), true)));
    return true;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: vec2<u32>, arg_3: u32) -> Struct_3 {
    let var_0 = Struct_1(max(_wgslsmith_sub_i32(-(~u_input.d.x), u_input.d.x), u_input.e), countOneBits(vec4<i32>(firstTrailingBit(u_input.a) >> (firstTrailingBit(1u) % 32u), _wgslsmith_dot_vec2_i32(u_input.d | vec2<i32>(u_input.d.x, 2147483647i), u_input.d), _wgslsmith_sub_i32(-1i, max(2147483647i, 26360i)), _wgslsmith_sub_i32(u_input.e, ~u_input.e))), _wgslsmith_f_op_f32(floor(556f)));
    global0 = array<bool, 17>();
    global0 = array<bool, 17>();
    global0 = array<bool, 17>();
    var var_1 = Struct_4(false);
    return Struct_3(all(vec3<bool>(false, arg_1.x, false)), abs((i32(-1i) * -22209i) & abs(~u_input.d.x)), any(select(vec4<bool>(true == var_1.a, all(vec3<bool>(var_1.a, false, true)), arg_1.x | global0[_wgslsmith_index_u32(38994u, 17u)], func_3(arg_1, Struct_3(global0[_wgslsmith_index_u32(arg_2.x, 17u)], 2880i, false, vec4<f32>(var_0.c, -1000f, var_0.c, var_0.c), var_0.b), Struct_3(true, u_input.e, true, vec4<f32>(-512f, var_0.c, -1691f, -1000f), var_0.b), vec3<f32>(var_0.c, -581f, 1000f))), !arg_1, arg_1.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1455f, var_0.c, var_0.c, var_0.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(936f, var_0.c, var_0.c, var_0.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(277f, 1000f, 1000f, -387f) - vec4<f32>(-2360f, var_0.c, 649f, 409f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-287f, -268f, var_0.c, -104f), vec4<f32>(var_0.c, 794f, var_0.c, var_0.c))))), var_0.b);
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: u32, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = vec3<u32>(~_wgslsmith_add_u32(arg_2, u_input.b.x), ~(~u_input.c), ~u_input.c);
    var var_1 = _wgslsmith_f_op_f32(-arg_0.d.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_0.d.wxy, vec3<f32>(arg_0.d.x, arg_0.d.x, arg_0.d.x), arg_0.c))))));
    global0 = array<bool, 17>();
    global0 = array<bool, 17>();
    return Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(arg_0.e, ~arg_0.e), -(~_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -15336i, u_input.e, -70789i), arg_0.e)), var_2.x), Struct_1(20927i, ~_wgslsmith_div_vec4_i32(~vec4<i32>(arg_0.b, u_input.a, arg_1, u_input.e), ~arg_0.e), _wgslsmith_f_op_f32(sign(-1182f))));
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    var var_0 = firstLeadingBit(countOneBits(u_input.c));
    var var_1 = _wgslsmith_mod_i32(~u_input.d.x, u_input.a);
    global0 = array<bool, 17>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x));
    let var_3 = global0[_wgslsmith_index_u32(50898u, 17u)];
    return func_4(func_2(vec2<u32>(max(8157u, ~16477u), 4294967295u), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 17u)], global0[_wgslsmith_index_u32(24999u, 17u)], global0[_wgslsmith_index_u32(u_input.b.x, 17u)]), !vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 17u)], false, true)), u_input.b.xx, _wgslsmith_sub_u32(u_input.b.x, 2796u)), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(-select(vec4<i32>(u_input.e, u_input.d.x, 2147483647i, -31187i), vec4<i32>(-1i, u_input.d.x, u_input.e, u_input.d.x), false), vec4<i32>(-1i) * -vec4<i32>(-11209i, -5183i, -2147483647i, u_input.d.x)), vec4<i32>(~u_input.e & 8096i, 2147483647i >> (u_input.b.x % 32u), max(1i, u_input.d.x), _wgslsmith_add_i32(u_input.a, -19679i) & ~u_input.d.x)), _wgslsmith_div_u32(u_input.c, u_input.c), vec3<bool>(true, true, !(global0[_wgslsmith_index_u32(34143u, 17u)] | (arg_0.x <= -752f))));
}

fn func_5(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_2) -> i32 {
    global0 = array<bool, 17>();
    return ~_wgslsmith_mult_i32(-19951i, ~(~arg_2.b.b.x | func_2(u_input.b.xz, vec4<bool>(false, true, false, false), u_input.b.zw, u_input.c).b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-115f * -369f)), -1000f, _wgslsmith_f_op_f32(trunc(1f)), -1282f))) - vec4<f32>(-770f, -2024f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(748f)) * 1400f), 808f));
    global0 = array<bool, 17>();
    var var_1 = Struct_2(Struct_1(func_5(_wgslsmith_sub_i32(1i, -u_input.d.x), vec3<i32>(-15121i, firstTrailingBit(-13228i), _wgslsmith_add_i32(-1i, u_input.a)), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1227f)))), vec4<i32>(-1i) * -(vec4<i32>(u_input.a, u_input.a, 50066i, 19239i) | vec4<i32>(u_input.d.x, -42793i, 8012i, u_input.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - func_1(vec2<f32>(var_0.x, -660f)).a.c))), func_1(vec2<f32>(var_0.x, func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(557f, -865f))).a.c)).a);
    var var_2 = any(select(!select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 17u)], true), true), select(!select(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 17u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 17u)], global0[_wgslsmith_index_u32(u_input.c, 17u)]), true), vec2<bool>(global0[_wgslsmith_index_u32(abs(1u), 17u)], any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 17u)], global0[_wgslsmith_index_u32(0u, 17u)], global0[_wgslsmith_index_u32(u_input.b.x, 17u)]))), true), !(!select(vec2<bool>(false, global0[_wgslsmith_index_u32(54051u, 17u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 17u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 17u)], false)))));
    var_2 = false;
    let var_3 = ~23801u;
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 339f, 1448f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(457f, 619f, var_0.x, -2212f) + vec4<f32>(-1002f, var_0.x, 1813f, 1136f))))) * vec4<f32>(var_1.b.c, func_4(func_2(u_input.b.zw, vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(u_input.c, 17u)]), vec2<u32>(u_input.c, var_3), u_input.c), var_1.b.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_3, u_input.c, 11705u, var_3), u_input.b), !vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 17u)], true)).b.c, 549f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(412f, var_0.x)))));
    var var_4 = 32855i;
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(~79303u)), _wgslsmith_f_op_vec3_f32(-var_0.wzx), 90592u, vec4<f32>(var_1.b.c, var_0.x, _wgslsmith_f_op_f32(var_1.a.c + -451f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1858f, var_0.x))));
}

