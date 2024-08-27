struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 15>;

var<private> global1: bool = true;

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(-1154f), Struct_1(955f), Struct_1(1373f), Struct_1(495f), Struct_1(-1038f), Struct_1(-347f), Struct_1(-1611f), Struct_1(-1578f), Struct_1(-890f), Struct_1(2257f), Struct_1(-163f), Struct_1(1011f), Struct_1(1281f), Struct_1(1234f), Struct_1(2254f), Struct_1(1282f), Struct_1(-1414f), Struct_1(-126f), Struct_1(-1082f), Struct_1(2499f), Struct_1(123f), Struct_1(961f), Struct_1(504f), Struct_1(-278f), Struct_1(328f), Struct_1(786f), Struct_1(-169f), Struct_1(-528f), Struct_1(1267f));

var<private> global3: vec2<f32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_1) -> f32 {
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-151f, 501f), vec2<f32>(arg_2.a, arg_2.a)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-340f, global3.x) + vec2<f32>(arg_2.a, global3.x))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global3.x, global3.x))), vec2<f32>(global3.x, -831f), true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1866f, arg_2.a)))))));
    let var_0 = 4294967295u;
    global0 = array<vec3<f32>, 15>();
    var var_1 = ~vec4<u32>(_wgslsmith_dot_vec2_u32((vec2<u32>(u_input.a.x, arg_1.x) | u_input.a.xz) & ~arg_1, vec2<u32>(var_0 >> (6541u % 32u), ~4294967295u)), 0u, 4410u, firstLeadingBit(1u) & abs(var_0));
    global3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(1262f)), global3.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2.a, -1857f))) - vec2<f32>(arg_2.a, _wgslsmith_f_op_f32(arg_2.a + global3.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(762f, 771f))), vec2<f32>(-1662f, _wgslsmith_f_op_f32(round(global3.x)))), any(vec4<bool>(true, true, true, true)))));
    return -724f;
}

fn func_4(arg_0: vec4<f32>, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_2) -> vec2<bool> {
    let var_0 = vec4<u32>(4294967295u << (_wgslsmith_clamp_u32(reverseBits(~arg_2.x), _wgslsmith_mod_u32(~arg_2.x, u_input.a.x), u_input.a.x) % 32u), (_wgslsmith_div_u32(arg_2.x, _wgslsmith_dot_vec3_u32(u_input.a, arg_2)) & (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, u_input.a.x, u_input.a.x), u_input.a) ^ min(u_input.a.x, arg_2.x))) | 0u, arg_2.x, _wgslsmith_mult_u32(u_input.a.x, 4294967295u) << (69712u % 32u));
    global3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-462f, _wgslsmith_f_op_f32(856f * 1f)), _wgslsmith_f_op_f32(sign(arg_0.x))) - _wgslsmith_div_vec2_f32(arg_0.xz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(min(global3.x, global3.x))))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(arg_0.x)))));
    let var_2 = arg_3;
    var var_3 = 4294967295u;
    return vec2<bool>(!(arg_1 || false), true);
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec2<f32>, arg_3: vec4<u32>) -> u32 {
    var var_0 = any(vec4<bool>(true, true, true, true));
    let var_1 = select(func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, arg_0, global3.x, -1291f) * vec4<f32>(global3.x, arg_2.x, -121f, 1955f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-1387f, -873f, -1624f, -1000f), vec4<f32>(arg_2.x, arg_0, -922f, -1227f))), vec4<f32>(_wgslsmith_f_op_f32(select(1000f, arg_0, true)), _wgslsmith_f_op_f32(arg_0 * 2734f), -2328f, _wgslsmith_f_op_f32(func_3(1i, arg_3.zy, global2[_wgslsmith_index_u32(u_input.a.x, 29u)])))), any(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), true)), ~(abs(u_input.a) & abs(arg_3.ywz)), Struct_2(!(1223f == arg_2.x), !select(true, true, false))), select(vec2<bool>(true, true | all(vec4<bool>(true, false, true, false))), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), select(func_4(vec4<f32>(1163f, -2003f, arg_0, -257f), true, u_input.a, Struct_2(true, false)), vec2<bool>(false, false), true), _wgslsmith_f_op_f32(trunc(518f)) != _wgslsmith_f_op_f32(trunc(arg_0))), true), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(1i, 0i, 30180i)), select(vec3<i32>(-8515i, 0i, -2147483647i), vec3<i32>(1i, 42187i, 1i), vec3<bool>(true, false, true))), vec3<i32>(-2147483647i, -2147483647i, -1i) << (~vec3<u32>(61104u, u_input.a.x, arg_3.x) % vec3<u32>(32u))) > min(abs(-12912i >> (1u % 32u)), 1i));
    let var_2 = -(~(_wgslsmith_add_i32(1i, min(52579i, -1i)) >> (~(~arg_1) % 32u)));
    let var_3 = ~_wgslsmith_div_i32(43246i, var_2);
    let var_4 = u_input.a.x >= 50009u;
    return u_input.a.x;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> vec2<u32> {
    global2 = array<Struct_1, 29>();
    var var_0 = global2[_wgslsmith_index_u32(u_input.a.x, 29u)];
    global2 = array<Struct_1, 29>();
    global2 = array<Struct_1, 29>();
    var var_1 = abs(firstTrailingBit(vec3<u32>(~u_input.a.x, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 121428u, u_input.a.x), u_input.a), 4294967295u << (u_input.a.x % 32u)), ~func_2(1000f, u_input.a.x, vec2<f32>(global3.x, var_0.a), vec4<u32>(29173u, u_input.a.x, 17105u, 4294967295u)))));
    return var_1.yx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(true, any(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true)));
    var var_1 = select(vec2<bool>(true, !(var_0.x & !var_0.x)), var_0.zy, _wgslsmith_add_i32(reverseBits(2147483647i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(9924i, -2147483647i, -3271i, 35256i), vec4<i32>(18306i, 1i, -2147483647i, 1i))) > ~1i);
    var_1 = vec2<bool>(var_0.x, any(var_0.zx));
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x + 638f) * -596f), 1299f)));
    let var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a, _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 33918u, 17975u), u_input.a)), _wgslsmith_div_u32(4294967295u, u_input.a.x) << (u_input.a.x % 32u)), reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 36180u), func_1(vec2<i32>(1i, 15631i), Struct_2(false, false), Struct_2(false, false), true)))) >> (u_input.a.yz % vec2<u32>(32u));
    let var_3 = Struct_2(any(!select(select(var_0, var_0, var_0), select(var_0, var_0, vec3<bool>(var_0.x, true, true)), false)), all(vec2<bool>(true, true)) | !(false | (global3.x <= global3.x)));
    global1 = !(!all(!(!vec3<bool>(var_0.x, true, true))));
    let var_4 = select(!var_0, !vec3<bool>(all(vec2<bool>(var_1.x, var_1.x)), false, -800f == _wgslsmith_f_op_f32(-global3.x)), any(select(!(!vec4<bool>(var_1.x, var_0.x, var_1.x, var_0.x)), vec4<bool>(true, false, false, true), select(!vec4<bool>(false, true, var_3.b, var_3.a), vec4<bool>(true, var_3.a, false, true), false))));
    global3 = vec2<f32>(-1257f, -244f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1458f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -203f)))));
}

