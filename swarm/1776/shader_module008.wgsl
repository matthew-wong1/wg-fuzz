struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<f32>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: Struct_3,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> bool {
    var var_0 = Struct_4(-vec2<i32>(-1i, _wgslsmith_dot_vec3_i32(~vec3<i32>(0i, 1i, 2147483647i), ~vec3<i32>(4279i, arg_0.d, 5908i))), countOneBits(1u), 0u);
    var_0 = Struct_4(select(u_input.b, var_0.a, !arg_0.e), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(arg_1, var_0.b, var_0.b)), vec3<u32>(1u, var_0.b, arg_1 << (select(20560u, 90134u, arg_0.e.x) % 32u))), _wgslsmith_mod_u32(~arg_1, 37408u) & abs(arg_1));
    var_0 = Struct_4(_wgslsmith_mod_vec2_i32(select(vec2<i32>(countOneBits(3834i), 4479i), ~vec2<i32>(var_0.a.x, u_input.c), arg_0.e), min(vec2<i32>(-19566i, arg_0.d) & vec2<i32>(-4417i, 7931i), select(var_0.a & vec2<i32>(2147483647i, 8859i), vec2<i32>(arg_0.d, u_input.b.x), vec2<bool>(arg_0.e.x, false)))), 23410u, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(var_0.c, ~10387u), _wgslsmith_clamp_u32(1u, firstTrailingBit(~1u), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 0u, 11748u, 4294967295u), vec4<u32>(var_0.b, 4968u, 19429u, 16273u)), vec4<u32>(var_0.b, var_0.b, 4294967295u, 0u) | vec4<u32>(arg_1, 42952u, arg_1, var_0.c))), var_0.b));
    let var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(55279u, ~(~var_0.b)), ~_wgslsmith_mult_u32(0u, ~var_0.c), ~select(var_0.b, _wgslsmith_mult_u32(0u, 1u), !arg_0.e.x)), ~abs(countOneBits(abs(vec3<u32>(var_0.b, 20351u, 4294967295u)))));
    var_0 = Struct_4(var_0.a, _wgslsmith_mod_u32(reverseBits(~min(50133u, var_0.c)), 92741u), _wgslsmith_add_u32(min(firstTrailingBit(1u), firstTrailingBit(~27519u)), ~71816u));
    return all(vec3<bool>(false, any(vec2<bool>(any(vec3<bool>(true, true, true)), true)), any(select(!vec3<bool>(false, arg_0.e.x, false), !vec3<bool>(arg_0.e.x, false, false), select(vec3<bool>(arg_0.e.x, arg_0.e.x, true), vec3<bool>(arg_0.e.x, true, arg_0.e.x), arg_0.e.x)))));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_1) -> bool {
    var var_0 = _wgslsmith_mult_i32(-_wgslsmith_mod_i32(u_input.a, -(i32(-1i) * -1i)), ~_wgslsmith_mult_i32(0i >> (arg_0 % 32u), 34480i << (~arg_0 % 32u)));
    let var_1 = !(!func_3(Struct_1(abs(arg_2.a), _wgslsmith_div_vec4_f32(vec4<f32>(1656f, -1336f, arg_2.b.x, 691f), arg_2.b), _wgslsmith_f_op_vec2_f32(exp2(arg_2.b.zz)), arg_2.a.x, select(vec2<bool>(false, true), arg_1.zy, arg_1.x)), arg_0));
    let var_2 = -(~vec2<i32>(-_wgslsmith_add_i32(arg_2.d, 5008i), 18934i));
    var_0 = -u_input.b.x >> (~(~arg_0) % 32u);
    var var_3 = _wgslsmith_mult_vec3_u32(~(~vec3<u32>(4025u, arg_0, 28085u) ^ ~countOneBits(vec3<u32>(arg_0, arg_0, arg_0))), min(select(vec3<u32>(1u, 91631u, arg_0), vec3<u32>(64130u, arg_0, 1u) | vec3<u32>(4294967295u, 51716u, arg_0), true), ~(~vec3<u32>(85013u, 39105u, 4294967295u))) ^ ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_0, arg_0, 0u), vec3<u32>(arg_0, 29658u, 11590u), vec3<u32>(arg_0, 3369u, arg_0) >> (vec3<u32>(115590u, 0u, arg_0) % vec3<u32>(32u))));
    return all(vec4<bool>(true, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x)) >= _wgslsmith_f_op_f32(-arg_2.c.x), arg_2.c.x >= -846f));
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = -u_input.c & -6511i;
    var var_1 = vec3<bool>(all(!vec4<bool>(true, func_2(arg_0, vec4<bool>(false, false, true, true), Struct_1(u_input.b, vec4<f32>(-1018f, -459f, -1444f, 410f), vec2<f32>(115f, 1339f), u_input.c, vec2<bool>(false, false))), false, true)), all(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), firstTrailingBit(arg_0) > ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_0, 1u, arg_0), vec3<u32>(2461u, arg_0, 1u), vec3<bool>(false, false, true)), max(vec3<u32>(0u, 0u, 2446u), vec3<u32>(0u, 0u, arg_0))));
    var_1 = vec3<bool>(false, true & ((1u > select(60562u, arg_0, true)) | var_1.x), true);
    let var_2 = select(!vec4<bool>(var_1.x, true, !func_3(Struct_1(vec2<i32>(u_input.a, u_input.a), vec4<f32>(1170f, 2019f, 926f, -408f), vec2<f32>(1085f, 136f), u_input.b.x, var_1.yy), arg_0), var_1.x), vec4<bool>(!((arg_0 << (4294967295u % 32u)) < 0u), var_1.x, false, false), !(true & var_1.x));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~abs(1u));
    let var_1 = Struct_3(Struct_2(!(u_input.a < reverseBits(-1i)), Struct_1(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), u_input.b), min(vec2<i32>(u_input.c, u_input.a), u_input.b)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-649f, 266f, 283f, 405f), vec4<f32>(-330f, -1382f, 1872f, -826f), true)))), vec2<f32>(_wgslsmith_f_op_f32(463f * -1000f), 1f), min(-26055i, reverseBits(13202i)), vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-620f, 559f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1091f, 1103f), vec2<f32>(-264f, -1238f))))) - vec2<f32>(_wgslsmith_f_op_f32(269f * 1046f), _wgslsmith_f_op_f32(f32(-1f) * -1691f))), vec4<i32>(u_input.c, u_input.a, reverseBits(u_input.c), -84939i)));
    var var_2 = Struct_3(var_1.a);
    let var_3 = -19681i;
    let var_4 = -vec3<i32>(-31892i, ~_wgslsmith_dot_vec2_i32(abs(vec2<i32>(0i, var_3)), var_2.a.b.a), abs(var_1.a.d.x));
    var var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(-992f, var_2.a.b.b.x);
}

