struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 24>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> f32 {
    global1 = array<Struct_1, 24>();
    let var_0 = any(select(!arg_0.d.a.yy, vec2<bool>(_wgslsmith_mult_i32(0i, arg_2.b) == arg_1, arg_0.d.b), select(vec2<bool>(16741i >= arg_2.b, -1i <= arg_0.b), vec2<bool>(true, true), false)));
    var var_1 = _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, -718f))))), !(!any(!vec4<bool>(false, arg_2.c, false, false)))));
    global0 = arg_2;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(1116f, 1981f), vec2<f32>(-557f, 632f))))))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_2.x)))))), -402f);
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_2(u_input.b, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global0.b, 15648i, 17009i), -vec3<i32>(0i, -37739i, 2147483647i)), firstLeadingBit(vec3<i32>(global0.b, global0.b, global0.b))) >> (13010u % 32u), false, global0.d);
    global1 = array<Struct_1, 24>();
    let var_1 = Struct_2(~var_0.a, -(i32(-1i) * -(~2147483647i)), var_0.d.a.x, var_0.d);
    let var_2 = var_0.b;
    global1 = array<Struct_1, 24>();
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2766f + -120f) + _wgslsmith_f_op_f32(f32(-1f) * -1095f)))) + -1082f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_1, 0i, Struct_2(vec3<u32>(u_input.b.x, 0u, var_0.a.x), 21575i, false, var_0.d)))) - 1088f), _wgslsmith_f_op_f32(f32(-1f) * -263f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(545f + 1000f) * _wgslsmith_f_op_f32(1376f - 1079f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1621f, -345f)))))), _wgslsmith_f_op_f32(abs(207f)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = countOneBits(vec4<u32>(7200u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, ~arg_3.a.x, _wgslsmith_mult_u32(1u, 57841u)), ~u_input.a), u_input.a.x, arg_3.a.x | 1u));
    let var_1 = arg_3;
    var_0 = min(~_wgslsmith_mult_vec4_u32(~firstLeadingBit(vec4<u32>(82039u, u_input.a.x, 0u, var_0.x)), abs(_wgslsmith_mult_vec4_u32(u_input.a, u_input.a))), _wgslsmith_sub_vec4_u32(u_input.a, _wgslsmith_clamp_vec4_u32(u_input.a, max(u_input.a, abs(vec4<u32>(arg_3.a.x, arg_3.a.x, 9575u, var_0.x))), vec4<u32>(6530u, global0.a.x, u_input.b.x, var_0.x) | vec4<u32>(4294967295u, 30317u, 1u, var_0.x))));
    let var_2 = Struct_2(u_input.b, 0i, !((reverseBits(var_1.a.x) << (arg_3.a.x % 32u)) >= abs(_wgslsmith_mod_u32(arg_3.a.x, global0.a.x))), global1[_wgslsmith_index_u32(firstTrailingBit(select(_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_mult_u32(var_0.x, var_1.a.x)), var_0.x, arg_1.x)), 24u)]);
    global0 = var_1;
    return global1[_wgslsmith_index_u32(global0.a.x, 24u)];
}

fn func_5(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -672f)))), !(!(!global0.c)));
    var var_1 = !(!(!var_0.b | all(arg_0.a.zyx)));
    var var_2 = vec2<u32>(~(~_wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, u_input.b.x, 40645u, 34668u), vec4<u32>(33298u, u_input.c.x, u_input.c.x, 0u), arg_0.b), ~vec4<u32>(2128u, 15288u, 51484u, 4294967295u))), _wgslsmith_div_u32(global0.a.x, 33562u));
    let var_3 = ~(~min(select(vec3<i32>(global0.b, -48880i, -55676i), vec3<i32>(-63997i, -9748i, -18454i), arg_0.a.wyy), firstTrailingBit(vec3<i32>(global0.b, -1i, -1169i))) | (_wgslsmith_div_vec3_i32(~vec3<i32>(global0.b, 20171i, global0.b), vec3<i32>(2147483647i, -1i, -1i) & vec3<i32>(global0.b, global0.b, -27042i)) ^ countOneBits(~vec3<i32>(global0.b, global0.b, global0.b))));
    let var_4 = u_input.b.x;
    return _wgslsmith_add_vec3_u32(vec3<u32>(~1u, 40232u, _wgslsmith_dot_vec2_u32(~(global0.a.zz << (vec2<u32>(4294967295u, var_2.x) % vec2<u32>(32u))), firstLeadingBit(~vec2<u32>(var_4, 0u)))), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b.x, global0.a.x, 1u) >> (global0.a % vec3<u32>(32u)), ~global0.a));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: vec3<i32>) -> Struct_2 {
    let var_0 = Struct_1(vec4<bool>(!global0.c, global0.c, false, u_input.c.x < (countOneBits(u_input.a.x) | u_input.b.x)), true);
    global0 = Struct_2(func_5(func_4(Struct_1(!vec4<bool>(global0.d.a.x, true, true, false), var_0.a.x), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), any(global0.d.a.zx)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-684f, -1000f, -129f, 1890f) + vec4<f32>(-1919f, -348f, 255f, -1243f))), Struct_2(u_input.b, -arg_2.x, !var_0.a.x, global0.d))), arg_2.x >> (~58370u % 32u), true, func_4(global0.d, var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(721f, -1112f, -171f, -198f)))), Struct_2(vec3<u32>(min(arg_0.x, u_input.b.x), arg_0.x, global0.a.x), arg_1.x, (u_input.b.x < 0u) || func_4(Struct_1(vec4<bool>(false, global0.d.a.x, global0.c, var_0.b), false), vec4<bool>(var_0.a.x, true, var_0.a.x, true), vec4<f32>(-1196f, 308f, 1090f, -2847f), Struct_2(arg_0, 2147483647i, false, var_0)).a.x, global0.d)));
    var var_1 = 26904u;
    global1 = array<Struct_1, 24>();
    let var_2 = Struct_1(select(!vec4<bool>(false, global0.d.b, global0.d.b | global0.d.b, true), vec4<bool>(true, var_0.a.x, all(vec2<bool>(var_0.a.x, false)), arg_0.x == global0.a.x), any(select(select(var_0.a.xz, vec2<bool>(false, global0.d.b), var_0.a.xx), var_0.a.yx, global0.d.b == global0.c))), any(vec2<bool>(var_0.a.x, false)) == true);
    return Struct_2(u_input.a.xwz, abs(max(~(~1i), abs(~arg_2.x))), true, func_4(global0.d, vec4<bool>(var_2.a.x, true || !global0.c, any(global0.d.a), all(var_0.a.xx)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1188f, _wgslsmith_f_op_f32(-422f + 1212f), _wgslsmith_f_op_f32(trunc(499f)), _wgslsmith_f_op_f32(-603f * 1391f))), Struct_2(countOneBits(u_input.a.yyx), -1828i, true, global1[_wgslsmith_index_u32(reverseBits(4294967295u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(17336u, 4294967295u, global0.a.x, arg_0.x), u_input.a) % 32u), 24u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<u32>(countOneBits(101601u), 24138u), vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(0u, 1u, 58522u, global0.a.x)), u_input.a), u_input.c.x), global0.d.a.yw);
    var var_1 = func_1(global0.a, -(vec4<i32>(_wgslsmith_add_i32(-1i, global0.b), 0i, -1i, _wgslsmith_add_i32(-2147483647i, 0i)) | reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 1i, global0.b, global0.b), vec4<i32>(1i, -1i, global0.b, -22515i)))), -_wgslsmith_mult_vec3_i32(vec3<i32>(global0.b, global0.b, abs(global0.b)), vec3<i32>(global0.b, global0.b, ~(-14765i))));
    global1 = array<Struct_1, 24>();
    let var_2 = abs(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(abs(~vec4<i32>(var_1.b, -6606i, global0.b, global0.b)), vec4<i32>(-1i) * -vec4<i32>(0i, -1i, var_1.b, 4235i)), vec4<i32>(firstLeadingBit(global0.b), select(_wgslsmith_div_i32(var_1.b, 71018i), max(global0.b, var_1.b), false), -16864i, countOneBits(1i))));
    let var_3 = var_1.a.zz;
    global1 = array<Struct_1, 24>();
    let var_4 = -95868i;
    let var_5 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-472f, -586f, 1312f, 731f), vec4<f32>(733f, -268f, 938f, 781f), global0.c))), vec4<f32>(-1000f, -702f, _wgslsmith_f_op_f32(-350f * 1184f), _wgslsmith_div_f32(-164f, 648f))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -557f, -1439f, -1370f), vec4<f32>(-170f, -1285f, -680f, 762f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-881f, 1053f, -305f, 712f), vec4<f32>(-1471f, 363f, -1051f, -1000f), true)))))), reverseBits(vec2<i32>(abs(0i), -33118i) | select(-vec2<i32>(var_2, -1i), ~vec2<i32>(var_1.b, var_2), false)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -351f)))))));
}

