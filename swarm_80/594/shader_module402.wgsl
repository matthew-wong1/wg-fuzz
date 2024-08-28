struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6>;

var<private> global1: array<vec2<u32>, 13>;

var<private> global2: array<f32, 23> = array<f32, 23>(460f, -1279f, 1041f, 1544f, 734f, 691f, 840f, 1096f, 529f, 1274f, 1750f, -455f, 1361f, 1000f, 1910f, 620f, 995f, 1414f, -175f, 161f, -909f, 1428f, 404f);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn func_3(arg_0: vec3<bool>) -> vec4<f32> {
    var var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, 0u, 0u), select(vec4<u32>(1u, 30964u, 866u, 92148u), vec4<u32>(18778u, 48584u, 28531u, 1u), true)), abs(vec4<u32>(0u, 29670u, 54170u, 18902u)), vec4<u32>(1u, 1u, 1u, 1u)) << (select(vec4<u32>(91872u, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(44708u, 30139u, 1u), vec3<u32>(76352u, 11158u, 1u)), firstTrailingBit(28808u)), vec4<u32>(1u, countOneBits(9242u), max(1u, 77172u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 127290u, 54679u, 4294967295u), vec4<u32>(0u, 81371u, 1u, 1u))), !(!vec4<bool>(arg_0.x, false, false, arg_0.x))) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(23299u, 1u), vec2<u32>(1u, 97116u)), abs(1u)), ~firstTrailingBit(38537u) >> (~1u % 32u), 4294967295u, select(firstTrailingBit(~1u), select(6553u, 38012u, arg_0.x) << (1u % 32u), arg_0.x)));
    var_0 = 4294967295u;
    let var_1 = _wgslsmith_dot_vec2_i32(-_wgslsmith_add_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(5155i, u_input.a), vec2<i32>(-1i, u_input.a)), _wgslsmith_add_vec2_i32(abs(vec2<i32>(u_input.a, 28702i)), -vec2<i32>(1i, -16809i))), countOneBits(select(~firstLeadingBit(vec2<i32>(4971i, 2147483647i)), -_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(u_input.a, -11514i)), false)));
    let var_2 = !arg_0.yx;
    global2 = array<f32, 23>();
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1348f * global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(7599u, 0u, 0u), 23u)]), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(80657u, 23u)] * 159f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 23u)] - 437f) + 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(1u, 23u)], 1000f))))));
}

fn func_2(arg_0: i32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(217f - 1203f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(14670u, 23u)] * global2[_wgslsmith_index_u32(1u, 23u)]), global2[_wgslsmith_index_u32(1u, 23u)], -229f) + _wgslsmith_div_vec4_f32(vec4<f32>(-1682f, global2[_wgslsmith_index_u32(19830u, 23u)], global2[_wgslsmith_index_u32(4294967295u, 23u)], global2[_wgslsmith_index_u32(1u, 23u)]), _wgslsmith_div_vec4_f32(vec4<f32>(-468f, global2[_wgslsmith_index_u32(1u, 23u)], global2[_wgslsmith_index_u32(1u, 23u)], global2[_wgslsmith_index_u32(1u, 23u)]), vec4<f32>(1868f, 205f, 698f, 2417f))))), _wgslsmith_f_op_vec4_f32(func_3(vec3<bool>(true, true, true)))));
    global0 = array<Struct_2, 6>();
    let var_1 = vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(~(~21303u), select(1u, 15491u, true), 2628u, min(57029u, 4294967295u)), vec4<u32>(0u, 2418u, 0u, 0u)), 1u >> (1u % 32u));
    var var_2 = vec3<u32>(~11070u, var_1.x, 0u << ((firstTrailingBit(4987u) ^ 1u) % 32u));
    let var_3 = firstLeadingBit(vec3<i32>(-1i) * -abs(~vec3<i32>(44091i, -53587i, -1i)));
    return Struct_3(37090i, !select(vec2<bool>(true, true), vec2<bool>(true, true), false));
}

fn func_1() -> f32 {
    global2 = array<f32, 23>();
    var var_0 = Struct_3(-2147483647i, vec2<bool>(any(select(vec3<bool>(false, false, false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true))), !(any(vec4<bool>(true, false, false, true)) & true)));
    var_0 = func_2(_wgslsmith_add_i32(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a, var_0.a, var_0.a), vec4<i32>(var_0.a, -5353i, u_input.a, 42059i))), var_0.a));
    let var_1 = select(!(!vec4<bool>(false, var_0.b.x, true, true | var_0.b.x)), select(vec4<bool>(false, var_0.b.x || true, var_0.b.x, true), !(!(!vec4<bool>(var_0.b.x, var_0.b.x, false, true))), !select(!vec4<bool>(false, var_0.b.x, var_0.b.x, var_0.b.x), !vec4<bool>(true, false, var_0.b.x, true), true)), select(!vec4<bool>(true, any(vec4<bool>(false, true, var_0.b.x, var_0.b.x)), all(vec2<bool>(var_0.b.x, var_0.b.x)), var_0.b.x || true), vec4<bool>(var_0.b.x, false, true, false), !(!select(vec4<bool>(false, true, var_0.b.x, true), vec4<bool>(var_0.b.x, true, true, false), vec4<bool>(true, false, true, true)))));
    global2 = array<f32, 23>();
    return global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(9867u, 4294967295u, 0u), vec3<u32>(0u, 32761u, 41357u)), ~firstLeadingBit(103006u)), 1u), 12659u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), min(~vec4<u32>(1u, 0u, 40996u, 1u), vec4<u32>(1u, 1u, 1u, 1u))) & 4294967295u), 23u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(func_1()), Struct_1(~vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(1u, 23u)], -1000f)))))), _wgslsmith_clamp_i32(u_input.a, -u_input.a, -u_input.a), max(116160u, _wgslsmith_dot_vec3_u32(~vec3<u32>(16741u, 0u, 13509u), vec3<u32>(0u, 5680u, 13675u)))));
    let var_1 = Struct_1(select(_wgslsmith_sub_vec4_u32(select(max(vec4<u32>(var_0.b.d, 4294967295u, var_0.b.a.x, var_0.b.d), vec4<u32>(1054u, var_0.b.a.x, var_0.b.d, 95052u)), _wgslsmith_mod_vec4_u32(var_0.b.a, vec4<u32>(1u, 4294967295u, var_0.b.a.x, 0u)), any(vec2<bool>(false, true))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.d, 41123u), global1[_wgslsmith_index_u32(var_0.b.d, 13u)]), _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(1u, 13u)], vec2<u32>(0u, 45969u)), ~0u, 91636u)), var_0.b.a, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(true, false, true)), true, false, true))), var_0.b.b, u_input.a, var_0.b.d >> (_wgslsmith_mult_u32(~(4294967295u | var_0.b.d), ~(~var_0.b.d)) % 32u));
    global1 = array<vec2<u32>, 13>();
    global2 = array<f32, 23>();
    var var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~firstTrailingBit(22261u), var_1.d), 23u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~var_0.b.a.x, 23u)]), -1306f), 267f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1417f, var_0.a, _wgslsmith_f_op_f32(-var_1.b)))), select(min(0i, 1i) >= _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(3142i, -2147483647i), vec2<i32>(-59i, var_1.c)), vec2<i32>(-4322i, -37609i)), true, (true || (1623f < global2[_wgslsmith_index_u32(75542u, 23u)])) | !all(vec4<bool>(false, true, false, false)))));
    global1 = array<vec2<u32>, 13>();
    let var_3 = 4294967295u;
    global1 = array<vec2<u32>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(firstTrailingBit(var_0.b.c), func_2(1i).a), min(abs(max(vec3<i32>(0i, 1i, -30782i) << (vec3<u32>(0u, 1u, 0u) % vec3<u32>(32u)), vec3<i32>(u_input.a, var_0.b.c, var_0.b.c))), vec3<i32>(-1i) * -(vec3<i32>(var_0.b.c, 1i, -1i) >> (var_0.b.a.wwx % vec3<u32>(32u)))), ~var_0.b.a.x >> (1u % 32u), -abs(_wgslsmith_div_i32(-2147483647i, u_input.a)) | ~(-_wgslsmith_mod_i32(u_input.a, var_1.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1253f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1479f)) + var_2.x), 170f)));
}

