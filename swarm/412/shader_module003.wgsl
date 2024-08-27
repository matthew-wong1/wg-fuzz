struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool) -> vec4<f32> {
    let var_0 = u_input.c.zz;
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-426f + -158f), _wgslsmith_div_f32(1722f, 501f), -659f, _wgslsmith_f_op_f32(trunc(-435f)))) * _wgslsmith_div_vec4_f32(vec4<f32>(-1028f, 907f, _wgslsmith_f_op_f32(f32(-1f) * -474f), 996f), vec4<f32>(2041f, _wgslsmith_f_op_f32(-472f - -565f), _wgslsmith_f_op_f32(max(-961f, 1895f)), -780f))), 1i, _wgslsmith_mod_vec3_i32(-firstTrailingBit(select(vec3<i32>(u_input.b.x, 0i, 23228i), vec3<i32>(862i, 2147483647i, 40098i), vec3<bool>(true, true, arg_0))), vec3<i32>(~_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), u_input.b.x ^ -u_input.b.x, -u_input.b.x << (var_0.x % 32u))), _wgslsmith_f_op_f32(1085f - 2511f));
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1679f), _wgslsmith_f_op_f32(-1167f + -1215f), _wgslsmith_f_op_f32(2233f * var_1.a.x), -2110f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(2215f, var_1.d, var_1.a.x, var_1.a.x))))))))), 1i, vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, var_1.b, 30487i, u_input.b.x), -vec4<i32>(u_input.b.x, u_input.b.x, -29238i, 2147483647i)) >> (96047u % 32u), i32(-1i) * -59310i, _wgslsmith_mult_i32(reverseBits(_wgslsmith_clamp_i32(2147483647i, u_input.b.x, var_1.b)), i32(-1i) * -var_1.b)), -106f);
    let var_3 = !(!select(vec4<bool>(arg_0, false, true, false), vec4<bool>(var_0.x <= var_0.x, var_2.d > 887f, arg_0 || false, true), !select(vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(arg_0, false, arg_0, true), false)));
    var var_4 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(abs(i32(-1i) * -2147483647i), i32(-1i) * -u_input.b.x), -(~(var_1.c.xy << (u_input.d.xx % vec2<u32>(32u))))), -53658i, ~min(37669i, ~2147483647i));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))), var_1.a.x, _wgslsmith_f_op_f32(var_2.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x))), var_1.d);
}

fn func_2() -> u32 {
    let var_0 = vec4<u32>(_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(u_input.a.x, u_input.c.x, u_input.c.x)), u_input.c << (vec3<u32>(u_input.c.x, u_input.d.x, u_input.c.x) % vec3<u32>(32u))), u_input.d), abs(max(41626u, 4294967295u)), _wgslsmith_sub_u32(15800u, u_input.a.x), ~u_input.d.x);
    let var_1 = u_input.c.x & u_input.d.x;
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1030f, 2406f, -223f, -450f) * vec4<f32>(-617f, -1000f, 1608f, -973f)), _wgslsmith_f_op_vec4_f32(func_3(false)), vec4<bool>(true, true, true, true))), vec4<f32>(584f, _wgslsmith_f_op_f32(1937f - 150f), 775f, _wgslsmith_f_op_f32(276f - 895f))))), (i32(-1i) * -(u_input.b.x ^ u_input.b.x)) & u_input.b.x, ~_wgslsmith_mult_vec3_i32(abs(select(vec3<i32>(u_input.b.x, 1i, u_input.b.x), vec3<i32>(u_input.b.x, -16625i, -1i), false)), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 7969i, -24715i) | vec3<i32>(10611i, 35081i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, 0i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -384f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(true)).x)));
    var var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(var_2.a))))))), ~countOneBits(var_2.b), vec3<i32>(min(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, var_2.b, var_2.b), vec3<i32>(u_input.b.x, -1i, 66582i)) ^ 1i), firstTrailingBit(var_2.b), i32(-1i) * -50520i), 581f);
    var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.x, -409f, var_2.a.x, -1170f) + vec4<f32>(var_2.a.x, 1172f, var_2.a.x, 478f)) * _wgslsmith_f_op_vec4_f32(-var_3.a)), var_2.a, select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true)))))), -56378i, var_3.c, _wgslsmith_f_op_f32(-var_3.a.x));
    return 9017u;
}

fn func_1(arg_0: Struct_2) -> StorageBuffer {
    let var_0 = vec4<u32>(13774u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 4061u, ~arg_0.a), select(vec3<u32>(arg_0.b, u_input.c.x, arg_0.b), vec3<u32>(25912u, arg_0.a, 7857u), vec3<bool>(true, true, true)) << (vec3<u32>(28276u, 35246u, u_input.c.x) % vec3<u32>(32u))), vec3<u32>(~u_input.c.x, u_input.c.x, _wgslsmith_mult_u32(reverseBits(arg_0.b), u_input.a.x))), func_2(), _wgslsmith_dot_vec2_u32(~(~u_input.c.yx), vec2<u32>(abs(arg_0.b & arg_0.a), 1u)));
    var var_1 = (17705i ^ (abs(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c, 0i, u_input.b.x, 42759i), vec4<i32>(u_input.b.x, 53172i, arg_0.c, -1i))) ^ ~_wgslsmith_clamp_i32(arg_0.c, u_input.b.x, -1796i))) < _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(arg_0.c, u_input.b.x, u_input.b.x, -42036i)), vec4<i32>(1i, arg_0.c, 4414i, -39654i) | vec4<i32>(-12880i, arg_0.c, u_input.b.x, 0i)), -19720i, _wgslsmith_add_i32(u_input.b.x, -u_input.b.x), 58504i), ~vec4<i32>(countOneBits(-39289i), _wgslsmith_mod_i32(arg_0.c, u_input.b.x), 54016i, abs(2147483647i)));
    var var_2 = true;
    var_2 = !(false || (!all(vec4<bool>(false, false, false, false)) & true));
    var_1 = false;
    return StorageBuffer(12885u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-549f, _wgslsmith_f_op_f32(min(1405f, -1175f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -192f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(343f, 1000f, -231f, -893f) - vec4<f32>(-607f, -257f, -1591f, 936f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1390f, 844f, -1170f, -318f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1520f, -1095f, -1861f)))))));
    let var_1 = u_input.c;
    let var_2 = -u_input.b.x;
    let var_3 = ~select(-26976i, var_2, true);
    var var_4 = select(vec4<bool>(true, true, true, true), !(!(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false)))), !all(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true))));
    let x = u_input.a;
    s_output = func_1(Struct_2(select(1u, 57142u, false), countOneBits(~min(0u, 50841u)), abs(~var_3)));
}

