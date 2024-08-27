struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

var<private> global1: array<vec2<bool>, 2>;

var<private> global2: vec4<i32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec2<bool>, arg_3: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1343f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1002f, 510f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-372f * -216f), 1367f)) * vec3<f32>(_wgslsmith_f_op_f32(abs(-996f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1741f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2206f)) * _wgslsmith_f_op_f32(min(-469f, -411f))))));
    let var_1 = i32(-1i) * -2147483647i;
    let var_2 = !(!vec4<bool>(arg_3, -global2.x > reverseBits(u_input.a), !arg_3, any(vec4<bool>(false, arg_3, false, false)) && false));
    var var_3 = ~_wgslsmith_clamp_i32(_wgslsmith_sub_i32(i32(-1i) * -88774i, var_1), countOneBits(1i), _wgslsmith_add_i32(1i, max(global2.x, 0i)));
    var var_4 = select(vec3<bool>(all(vec4<bool>(false, arg_2.x, true, arg_0.a.x <= arg_0.a.x)), var_2.x, true), !var_2.yxy, all(select(vec3<bool>(false, false, true), !var_2.xww, true)) | any(select(vec2<bool>(var_2.x, true), select(arg_2, vec2<bool>(false, false), vec2<bool>(true, true)), true)));
    return 0u;
}

fn func_2(arg_0: i32, arg_1: Struct_4, arg_2: Struct_3, arg_3: Struct_1) -> Struct_5 {
    let var_0 = i32(-1i) * -firstLeadingBit(-1i);
    let var_1 = Struct_2(_wgslsmith_mod_vec3_u32(~(countOneBits(vec3<u32>(43217u, 4294967295u, 1u)) ^ vec3<u32>(4294967295u, 56048u, arg_3.b)), select(vec3<u32>(func_3(Struct_2(vec3<u32>(arg_2.c, 4294967295u, 103773u)), global1[_wgslsmith_index_u32(52616u, 2u)], vec2<bool>(false, false), true), ~96155u, _wgslsmith_dot_vec3_u32(vec3<u32>(50705u, 4294967295u, arg_3.c.x), vec3<u32>(0u, 0u, arg_3.b))), ~_wgslsmith_add_vec3_u32(vec3<u32>(28441u, 4294967295u, 1u), vec3<u32>(55343u, arg_2.c, arg_3.c.x)), all(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(13676u, 83542u), 2u)]))));
    var var_2 = ~1u;
    global1 = array<vec2<bool>, 2>();
    global1 = array<vec2<bool>, 2>();
    return Struct_5(Struct_3(arg_2.a, 12702i, 1u, ~_wgslsmith_div_u32(_wgslsmith_mult_u32(0u, arg_3.b), ~arg_2.d)), Struct_3(~(-select(global2.wwy, arg_2.a, vec3<bool>(false, true, false))), -(_wgslsmith_mult_i32(-1i, global2.x) ^ arg_2.a.x), abs(~max(arg_3.c.x, 12896u)), reverseBits(1u)));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_5) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-1078f)), 1369f))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(610f, 2059f) * 1f)), 1218f));
    let var_1 = _wgslsmith_mult_vec2_i32(firstLeadingBit(_wgslsmith_clamp_vec2_i32(reverseBits(-arg_0.a.a.xy), global2.xz, _wgslsmith_mod_vec2_i32(func_2(u_input.a, Struct_4(vec4<f32>(-111f, -386f, var_0.x, 929f)), Struct_3(arg_0.a.a, -1i, 1u, 61592u), Struct_1(-33182i, arg_0.b.d, vec2<u32>(arg_0.a.d, 4294967295u))).b.a.xz, vec2<i32>(global2.x, arg_0.a.b)))), ~select(global2.zz, vec2<i32>(firstLeadingBit(46307i), -16555i), global1[_wgslsmith_index_u32(max(arg_0.b.c, ~59292u), 2u)]));
    global0 = array<Struct_1, 3>();
    let var_2 = _wgslsmith_clamp_i32(min(-(-1i & arg_0.a.b), _wgslsmith_div_i32(~arg_0.a.a.x, -14408i)) & var_1.x, abs(_wgslsmith_dot_vec2_i32(-var_1 & _wgslsmith_clamp_vec2_i32(arg_1.b.a.yz, vec2<i32>(-622i, 0i), vec2<i32>(3032i, global2.x)), vec2<i32>(var_1.x ^ arg_1.a.a.x, 10904i))), _wgslsmith_div_i32(~(-(3693i | u_input.a)), var_1.x));
    var var_3 = 0u;
    return 84609u;
}

fn func_1(arg_0: vec2<bool>) -> i32 {
    var var_0 = _wgslsmith_mult_u32(4294967295u, 1u);
    global1 = array<vec2<bool>, 2>();
    global1 = array<vec2<bool>, 2>();
    var var_1 = !vec3<bool>(any(select(vec2<bool>(arg_0.x, true), vec2<bool>(false, false), global1[_wgslsmith_index_u32(1u, 2u)])), 1u < func_4(Struct_5(Struct_3(vec3<i32>(-10409i, 0i, -1i), 0i, 5796u, 1u), Struct_3(global2.xxw, global2.x, 1u, 42741u)), func_2(33513i, Struct_4(vec4<f32>(238f, -439f, 681f, 1546f)), Struct_3(global2.wwx, global2.x, 1u, 44504u), global0[_wgslsmith_index_u32(1u, 3u)])), !(!(!arg_0.x)));
    var_1 = select(!select(select(vec3<bool>(false, var_1.x, false), vec3<bool>(true, true, arg_0.x), !var_1.x), select(vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, true, true), true), false), !vec3<bool>(var_1.x, all(vec3<bool>(arg_0.x, true, arg_0.x)), true), true);
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~reverseBits(max(-func_1(global1[_wgslsmith_index_u32(20714u, 2u)]), -42268i));
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    let var_1 = -2183f;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mult_vec3_i32(min(_wgslsmith_mod_vec3_i32(global2.wxz, global2.wxy), ~vec3<i32>(u_input.a, -2147483647i, -24418i)), vec3<i32>(~0i, -2147483647i, _wgslsmith_mod_i32(u_input.a, u_input.a)))), var_1, var_1, firstTrailingBit(global2.x));
}

