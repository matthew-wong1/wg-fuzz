struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec2<i32>, 26> = array<vec2<i32>, 26>(vec2<i32>(i32(-2147483648), -60704i), vec2<i32>(-4336i, 1i), vec2<i32>(7712i, -1i), vec2<i32>(-29685i, 30349i), vec2<i32>(14220i, 1i), vec2<i32>(-28384i, 1i), vec2<i32>(11251i, -11794i), vec2<i32>(2147483647i, 0i), vec2<i32>(-1i, 2147483647i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-1i, -1i), vec2<i32>(i32(-2147483648), 16089i), vec2<i32>(34607i, -1i), vec2<i32>(1i, -1i), vec2<i32>(-21119i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -36573i), vec2<i32>(1i, 2147483647i), vec2<i32>(1i, 1i), vec2<i32>(66387i, -1i), vec2<i32>(i32(-2147483648), 84466i), vec2<i32>(4578i, 1i), vec2<i32>(1i, 2147483647i), vec2<i32>(1i, 0i), vec2<i32>(10645i, i32(-2147483648)), vec2<i32>(4021i, -18644i), vec2<i32>(0i, i32(-2147483648)));

var<private> global2: array<vec2<i32>, 21>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: f32) -> Struct_1 {
    global2 = array<vec2<i32>, 21>();
    var var_0 = _wgslsmith_mod_u32(u_input.b, 47228u);
    let var_1 = vec4<u32>(4294967295u, 4294967295u, abs(u_input.d), ~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, 4294967295u, 0u, u_input.b)), (vec4<u32>(u_input.b, 44750u, u_input.d, u_input.b) >> (vec4<u32>(4294967295u, u_input.b, 60459u, 1u) % vec4<u32>(32u))) ^ abs(vec4<u32>(u_input.d, u_input.b, u_input.b, u_input.b))));
    global2 = array<vec2<i32>, 21>();
    global2 = array<vec2<i32>, 21>();
    return Struct_1(_wgslsmith_add_i32(-2147483647i, u_input.c) < -1i);
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    var var_0 = u_input.c << (min(83036u, u_input.b) % 32u);
    global1 = array<vec2<i32>, 26>();
    let var_1 = firstLeadingBit(1i);
    let var_2 = func_2(_wgslsmith_f_op_f32(-1f));
    let var_3 = var_2.a & var_2.a;
    return Struct_1(true);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_sub_i32((_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.x, 2147483647i, arg_3.x), _wgslsmith_mod_vec3_i32(u_input.a.xyy, vec3<i32>(0i, 45086i, 1736i))) ^ 40886i) >> (3844u % 32u), abs(max(_wgslsmith_mod_i32(-2147483647i, -2147483647i), 17770i >> (abs(u_input.d) % 32u))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_1)) + vec3<f32>(arg_1, -299f, arg_1)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1, arg_1, arg_1)))))))) * vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_1)), -365f, -193f));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(809f, var_1.x, -1262f, var_1.x))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1246f, arg_1, 592f, 1030f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -745f, _wgslsmith_f_op_f32(min(-471f, var_1.x)), _wgslsmith_f_op_f32(ceil(-1335f))))), vec4<bool>(!(~28512u > firstTrailingBit(638u)), !(!arg_2 & true), -1i >= arg_3.x, arg_0.a && (_wgslsmith_f_op_f32(-var_1.x) < _wgslsmith_f_op_f32(-312f * 145f)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1106f, arg_1, _wgslsmith_f_op_f32(-398f * var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -421f)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.x, 1744f, 2126f, var_1.x), vec4<f32>(arg_1, 532f, 868f, -1000f))) * var_2)))));
    let var_4 = !select(!vec3<bool>(false, all(vec4<bool>(false, false, arg_2, true)), all(vec3<bool>(false, arg_2, arg_2))), select(select(vec3<bool>(arg_0.a, arg_2, true), select(vec3<bool>(arg_2, false, true), vec3<bool>(arg_0.a, arg_2, true), vec3<bool>(false, arg_2, true)), true), !vec3<bool>(true, arg_2, false), !select(vec3<bool>(arg_2, false, arg_0.a), vec3<bool>(arg_0.a, true, arg_0.a), vec3<bool>(true, false, arg_0.a))), !(!(!vec3<bool>(arg_2, arg_0.a, true))));
    return Struct_1(u_input.d > ~1u);
}

fn func_1() -> StorageBuffer {
    global0 = true;
    var var_0 = reverseBits(vec4<u32>(1u, _wgslsmith_mod_u32(u_input.d, 29184u), u_input.d, 4294967295u));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-992f)), -333f, _wgslsmith_f_op_f32(f32(-1f) * -2525f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, 1f, 1f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(sign(1359f)), -181f))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.yz)) + var_1.zz) - vec2<f32>(var_1.x, 2326f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(-519f * var_1.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.yy + _wgslsmith_f_op_vec2_f32(select(var_1.zy, var_1.zy, vec2<bool>(true, true)))))));
    let var_3 = func_4(func_3(func_2(1369f)), _wgslsmith_f_op_f32(ceil(-1190f)), any(select(select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))))), max(u_input.a.xwz, select(min(-vec3<i32>(u_input.c, u_input.c, u_input.c), select(u_input.a.zyy, u_input.a.wxz, true)), u_input.a.xwy, true)));
    return StorageBuffer(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<i32>, 21>();
    global2 = array<vec2<i32>, 21>();
    global1 = array<vec2<i32>, 26>();
    let var_0 = Struct_1(-1000f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-980f * 302f), _wgslsmith_f_op_f32(abs(1930f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -328f))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-478f - 1760f) * _wgslsmith_f_op_f32(f32(-1f) * -744f));
    let x = u_input.a;
    s_output = func_1();
}

