struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<bool>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19>;

var<private> global1: array<i32, 2>;

var<private> global2: array<Struct_1, 30>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> u32 {
    global2 = array<Struct_1, 30>();
    global0 = array<f32, 19>();
    let var_0 = arg_2.c;
    global0 = array<f32, 19>();
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(317f - -2597f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0, 19u)] - arg_1) - arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(arg_2.e.x, 19u)])))))));
    return arg_0;
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: f32, arg_3: f32) -> vec2<u32> {
    var var_0 = select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false)), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false))), all(vec2<bool>(any(vec4<bool>(false, true, true, true)), false))), !(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), false))), !vec4<bool>(any(vec2<bool>(true, true)), any(vec2<bool>(true, false)), !any(vec3<bool>(true, false, false)), -global1[_wgslsmith_index_u32(4294967295u, 2u)] != u_input.a));
    let var_1 = Struct_2(abs(arg_1));
    global0 = array<f32, 19>();
    let var_2 = _wgslsmith_clamp_vec2_i32(max(_wgslsmith_mod_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(397u, 2u)], u_input.a), vec2<i32>(-48970i, -1i) ^ vec2<i32>(3350i, u_input.a)), -vec2<i32>(1i, 26127i)) | vec2<i32>(max(-5600i >> (var_1.a % 32u), -u_input.a), -105459i), vec2<i32>(firstLeadingBit(firstTrailingBit(53755i)), -13831i), ~(-(~vec2<i32>(42655i, -32311i))) << (~(~(~vec2<u32>(4294967295u, arg_1))) % vec2<u32>(32u)));
    global0 = array<f32, 19>();
    return vec2<u32>(~26801u, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.a, 0u) ^ (vec2<u32>(var_1.a, var_1.a) | vec2<u32>(1672u, 4294967295u)), ~max(_wgslsmith_div_vec2_u32(vec2<u32>(arg_1, 0u), vec2<u32>(1u, 0u)), vec2<u32>(var_1.a, arg_1) & vec2<u32>(0u, var_1.a))));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = !select(vec4<bool>(select(true, select(true, true, true), false), all(vec4<bool>(true, false, true, false)) || all(vec4<bool>(false, true, false, true)), true, true), select(vec4<bool>(true, any(vec3<bool>(true, false, false)), false, true), vec4<bool>(any(vec3<bool>(false, true, true)), false, global1[_wgslsmith_index_u32(arg_3.a, 2u)] >= arg_2.x, false), select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), false)), true);
    var var_1 = !var_0.ww;
    var var_2 = Struct_1(_wgslsmith_mod_i32(arg_2.x, select(_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(arg_3.a, 2u)], -2147483647i, 0i, arg_0.x), arg_2), 29544i, true)), true, vec4<bool>(var_0.x && var_0.x, true, any(select(var_0.zy, select(var_0.yz, var_0.wz, var_1.x), select(true, true, var_0.x))), !all(var_0.yw)), -_wgslsmith_clamp_i32(min(arg_2.x, 1i), select(-u_input.a, max(global1[_wgslsmith_index_u32(4294967295u, 2u)], -27593i), true), ~1i), arg_1);
    var var_3 = Struct_1(min(max(abs(-41735i), min(u_input.a, -34718i)), var_2.a), var_1.x, var_0, -_wgslsmith_add_i32(countOneBits(-67043i), ~var_2.a), ~vec2<u32>(0u, _wgslsmith_add_u32(firstTrailingBit(0u), _wgslsmith_mult_u32(4294967295u, arg_3.a))));
    let var_4 = reverseBits(abs(reverseBits(var_2.e.x)));
    return Struct_2(52066u);
}

fn func_1() -> u32 {
    var var_0 = func_4(-vec2<i32>(~global1[_wgslsmith_index_u32(1u, 2u)], u_input.a >> (5410u % 32u)) << ((vec2<u32>(1u, _wgslsmith_div_u32(0u, 3107u)) & vec2<u32>(firstTrailingBit(22566u), func_2(1u, 723f, Struct_1(-2147483647i, false, vec4<bool>(true, true, false, true), 23491i, vec2<u32>(17558u, 3423u))))) % vec2<u32>(32u)), ~(abs(vec2<u32>(1u, 1u)) >> (func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(105717u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)], 1439f, 1714f) + vec4<f32>(-706f, -942f, -1049f, global0[_wgslsmith_index_u32(79041u, 19u)])), 1u, -186f, _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(77818u, 19u)]))) % vec2<u32>(32u))), reverseBits(~(~vec4<i32>(u_input.a, 9851i, global1[_wgslsmith_index_u32(28551u, 2u)], u_input.a) ^ ~vec4<i32>(-2147483647i, u_input.a, -1484i, global1[_wgslsmith_index_u32(0u, 2u)]))), Struct_2(12763u));
    let var_1 = Struct_2(50200u);
    var_0 = var_1;
    global0 = array<f32, 19>();
    global2 = array<Struct_1, 30>();
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1084f;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 173f)) - vec2<f32>(global0[_wgslsmith_index_u32(3329u, 19u)], var_0)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-579f, global0[_wgslsmith_index_u32(0u, 19u)]) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(0u, 19u)], -866f)))) - vec2<f32>(_wgslsmith_f_op_f32(floor(514f)), _wgslsmith_f_op_f32(max(1527f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 19u)] + global0[_wgslsmith_index_u32(7171u, 19u)]))))));
    global0 = array<f32, 19>();
    global2 = array<Struct_1, 30>();
    global0 = array<f32, 19>();
    let var_2 = vec3<i32>(global1[_wgslsmith_index_u32(func_1(), 2u)], 25435i, global1[_wgslsmith_index_u32(~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 32034u, 4294967295u, 0u), vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u)))), 2u)]);
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)) << (vec4<u32>(15211u, ~(~0u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 12273u, 0u), vec3<u32>(0u, 1727u, 115418u)) | 11947u, 0u | func_4(var_2.zx, vec2<u32>(1u, 917u), vec4<i32>(var_2.x, -2147483647i, 2147483647i, -2147483647i), Struct_2(4294967295u)).a) % vec4<u32>(32u)), ~(max(~vec4<u32>(1u, 56643u, 2709u, 256u), vec4<u32>(1u, 1u, 1u, 1u)) << (select(countOneBits(vec4<u32>(1u, 34212u, 1u, 1u)), vec4<u32>(69183u, 1u, 28473u, 13110u), true) % vec4<u32>(32u)))), 30u)];
    let var_4 = Struct_1(var_3.a, var_3.e.x < firstLeadingBit(~_wgslsmith_div_u32(0u, var_3.e.x)), !vec4<bool>(true, !(!var_3.c.x), !var_3.c.x | all(vec4<bool>(false, var_3.c.x, false, true)), !any(var_3.c.xx)), 4573i, _wgslsmith_mod_vec2_u32(vec2<u32>(var_3.e.x, var_3.e.x), ~(_wgslsmith_clamp_vec2_u32(var_3.e, vec2<u32>(var_3.e.x, 40710u), vec2<u32>(0u, var_3.e.x)) | ~var_3.e)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-228f, 1511f)), 401f, global0[_wgslsmith_index_u32(10210u, 19u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(483f, global0[_wgslsmith_index_u32(22528u, 19u)])), _wgslsmith_div_f32(var_1.x, -926f))))), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -152f))), -1103f, -1000f), var_2.x);
}

