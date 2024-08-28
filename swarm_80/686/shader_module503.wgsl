struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: bool,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> bool {
    var var_0 = vec2<u32>(countOneBits(min(_wgslsmith_div_u32(arg_0.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.b.x, 4294967295u, 11633u), arg_0.a)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 4294967295u, 0u, 93851u) | arg_0.a, ~arg_0.a))), abs(1u));
    var_0 = arg_0.a.zw;
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1459f)), 187f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-1215f, -896f), _wgslsmith_div_f32(-710f, -1957f)) - -1519f), _wgslsmith_f_op_f32(-2207f + 1705f), 1f) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(-660f, -1599f), _wgslsmith_f_op_f32(f32(-1f) * -184f), -832f, -1677f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(369f, -388f, 719f, -289f) + vec4<f32>(-499f, -746f, 1000f, 1000f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1197f, 1000f, 1109f, -1392f))))))));
    var var_2 = 910f;
    let var_3 = Struct_2(~(arg_1.x << (1u % 32u)), ~(~(-1i) ^ -arg_1.x), !(_wgslsmith_f_op_f32(-var_1.x) == _wgslsmith_f_op_f32(645f + _wgslsmith_f_op_f32(-var_1.x))), ~_wgslsmith_div_u32(40636u, select(~u_input.b.x, 4294967295u, true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(var_1.x * 1023f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) + _wgslsmith_f_op_f32(floor(var_1.x))))))));
    return arg_0.a.x != u_input.a;
}

fn func_2(arg_0: u32, arg_1: bool) -> vec4<u32> {
    let var_0 = true;
    let var_1 = select(vec3<bool>(!(var_0 & any(vec4<bool>(false, true, false, true))), any(select(vec4<bool>(arg_1, arg_1, false, true), vec4<bool>(arg_1, var_0, var_0, var_0), true)) != true, true), !(!vec3<bool>(true, var_0, func_3(Struct_1(vec4<u32>(arg_0, u_input.b.x, 70036u, arg_0)), vec4<i32>(-20990i, 32886i, -2147483647i, -24347i)))), all(vec3<bool>(true, var_0, var_0)));
    let var_2 = countOneBits(_wgslsmith_div_vec4_i32(~max(vec4<i32>(1i, 1i, 1i, 1i), select(vec4<i32>(-2689i, 1i, -10474i, -70611i), vec4<i32>(-1i, 2147483647i, -45256i, 67226i), arg_1)), vec4<i32>(1i, abs(-2147483647i), _wgslsmith_dot_vec3_i32(select(vec3<i32>(-9327i, 64972i, 2147483647i), vec3<i32>(-45145i, -5184i, 29917i), vec3<bool>(arg_1, false, false)), vec3<i32>(16400i, -1i, -85349i)), ~(~0i))));
    let var_3 = vec2<i32>(-2147483647i, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(-(vec3<i32>(var_2.x, var_2.x, 1i) & var_2.yxw), var_2.zxz), -2147483647i));
    let var_4 = Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, _wgslsmith_clamp_u32(arg_0, 1u, 4294967295u), countOneBits(1u), ~arg_0), abs(vec4<u32>(u_input.b.x, u_input.a, arg_0, 87522u) << (vec4<u32>(u_input.a, 36424u, 4294967295u, 47934u) % vec4<u32>(32u)))), ~51091u, 55951u, _wgslsmith_div_u32(arg_0, 1u)));
    return ~(var_4.a >> (vec4<u32>(_wgslsmith_add_u32(1u & var_4.a.x, firstLeadingBit(arg_0)), ~select(52548u, 65543u, var_1.x), _wgslsmith_mod_u32(~u_input.c, u_input.b.x ^ var_4.a.x), abs(u_input.b.x & var_4.a.x)) % vec4<u32>(32u)));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_3.x, 369f, arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-334f - arg_3.x), arg_3.x)))), vec4<f32>(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(f32(-1f) * -403f), arg_3.x, -1694f), true));
    var var_2 = 35145i;
    var_2 = reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1i >> (_wgslsmith_add_u32(0u, var_0.a.x) % 32u), 2147483647i), vec3<i32>(1i, 1i, 1i)));
    let var_3 = _wgslsmith_f_op_f32(min(var_1.x, -791f)) == 756f;
    return Struct_2(~_wgslsmith_mult_i32(select(5949i, -67424i, var_3), ~26769i) >> (1u % 32u), _wgslsmith_add_i32(0i, firstTrailingBit(firstTrailingBit(min(6140i, -35297i)))), !var_3, _wgslsmith_mult_u32(~min(~var_0.a.x, arg_1 & 1u), u_input.c), _wgslsmith_f_op_f32(256f * 427f));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec2<bool>) -> bool {
    var var_0 = func_4(select(arg_2.x, all(vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x)), any(vec4<bool>(arg_2.x, true, true, true))) & !(true && arg_2.x), firstTrailingBit(11639u), Struct_1(_wgslsmith_mod_vec4_u32(~func_2(19809u, false), vec4<u32>(arg_0, arg_0, ~arg_0, 1u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1, _wgslsmith_f_op_f32(-1277f - arg_1))))));
    var_0 = Struct_2(firstLeadingBit(25051i), ~(-_wgslsmith_div_i32(firstLeadingBit(11568i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b, -1i), vec2<i32>(-2147483647i, var_0.a)))), arg_2.x, ~(~_wgslsmith_mod_u32(_wgslsmith_mod_u32(5838u, arg_0), 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)));
    var_0 = Struct_2(var_0.b, -15428i, !(!select(arg_2.x, false, func_3(Struct_1(vec4<u32>(6723u, var_0.d, 592u, var_0.d)), vec4<i32>(2147483647i, var_0.b, var_0.a, 2147483647i)))), abs(var_0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - 273f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(arg_1, -470f))))))));
    var_0 = func_4(!any(!select(vec4<bool>(true, var_0.c, var_0.c, true), vec4<bool>(var_0.c, false, false, arg_2.x), arg_2.x)), arg_0, Struct_1(~vec4<u32>(var_0.d, arg_0 << (u_input.a % 32u), countOneBits(19385u), 76765u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(679f, var_0.e), vec2<f32>(var_0.e, var_0.e)))))));
    var var_1 = Struct_2(_wgslsmith_dot_vec3_i32(min(vec3<i32>(select(-20159i, var_0.a, var_0.c), -52896i, _wgslsmith_add_i32(var_0.a, -1i)), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, var_0.b, -14510i), vec3<i32>(-56338i, -1i, var_0.a)), firstLeadingBit(vec3<i32>(var_0.b, var_0.a, var_0.b)))), -_wgslsmith_sub_vec3_i32(select(vec3<i32>(1347i, var_0.b, 18290i), vec3<i32>(7017i, var_0.a, var_0.b), vec3<bool>(false, var_0.c, arg_2.x)), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.a, 2147483647i, var_0.a), vec3<i32>(var_0.b, -1i, -1i)))), -42960i, !arg_2.x, arg_0 ^ ~(~40848u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1000f)))) - var_0.e));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!vec4<bool>(func_1(u_input.b.x, 873f, vec2<bool>(false, true)), true, true, true)), !select(vec4<bool>(true, true, all(vec4<bool>(false, true, false, false)), func_1(1u, 379f, vec2<bool>(true, true))), vec4<bool>(true, true, true, true), any(vec4<bool>(true, true, true, true))), false);
    let var_1 = Struct_2(1i, -_wgslsmith_div_i32(countOneBits(0i), 1i) >> (func_4(true, 42304u, Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.c, 0u), vec4<u32>(u_input.c, u_input.c, u_input.a, 76820u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1882f, -319f))).d % 32u), false, ~u_input.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2443f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1114f)), _wgslsmith_f_op_f32(sign(-1635f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1438f + 1885f) + 141f))))));
    let var_2 = Struct_1(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a | var_1.d, 0u, abs(u_input.a)), ~vec4<u32>(20540u, 1u, 30909u, var_1.d)));
    var_0 = !(!select(!(!vec4<bool>(var_0.x, var_1.c, false, true)), vec4<bool>(!var_1.c, any(vec2<bool>(var_0.x, var_0.x)), var_1.c, false), select(true, any(vec4<bool>(var_1.c, var_0.x, false, var_0.x)), all(vec2<bool>(true, true)))));
    var_0 = vec4<bool>(true, !all(vec3<bool>(var_0.x, var_0.x, true)) | (~var_1.b == _wgslsmith_mod_i32(var_1.b, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a, var_1.a, 2147483647i, var_1.a), vec4<i32>(-37068i, var_1.a, 1i, -2147483647i)))), true, func_1(var_1.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e - -1400f)), _wgslsmith_f_op_f32(select(var_1.e, var_1.e, func_1(var_2.a.x, -638f, vec2<bool>(false, var_0.x))))), select(select(var_0.xy, vec2<bool>(false, false), vec2<bool>(false, var_1.c)), select(select(vec2<bool>(true, var_1.c), var_0.zz, var_0.wy), var_0.xz, select(vec2<bool>(true, var_1.c), var_0.zz, true)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(var_2.a, vec4<u32>(18190u, 14338u, var_2.a.x, 0u)), firstTrailingBit(vec4<u32>(0u, var_1.d, u_input.b.x, var_1.d))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.e, var_1.e) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1866f, var_1.e))))));
}

