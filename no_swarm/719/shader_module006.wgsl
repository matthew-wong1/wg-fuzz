struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 15>;

var<private> global1: bool = false;

var<private> global2: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(true, false, 5240u, true), Struct_1(false, true, 0u, true), Struct_1(false, false, 3495u, false), Struct_1(true, false, 1u, true), Struct_1(true, false, 55975u, true), Struct_1(false, false, 16017u, false), Struct_1(true, true, 4294967295u, false), Struct_1(false, true, 12338u, true), Struct_1(true, false, 4294967295u, false), Struct_1(true, true, 4294967295u, true), Struct_1(false, true, 4294967295u, true), Struct_1(false, false, 36950u, false), Struct_1(false, true, 5807u, false), Struct_1(true, false, 69561u, true), Struct_1(true, false, 4294967295u, true), Struct_1(false, false, 4294967295u, true), Struct_1(true, false, 80626u, true), Struct_1(false, true, 51437u, true), Struct_1(false, false, 0u, false), Struct_1(true, false, 17991u, true), Struct_1(false, true, 1u, true), Struct_1(true, true, 1896u, false), Struct_1(false, true, 162u, false), Struct_1(false, true, 0u, false), Struct_1(false, false, 4294967295u, true), Struct_1(true, false, 4294967295u, false), Struct_1(true, true, 0u, true), Struct_1(true, true, 38109u, true), Struct_1(true, true, 18029u, true), Struct_1(true, true, 19414u, false), Struct_1(false, true, 4294967295u, true), Struct_1(false, false, 85787u, false));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: bool, arg_3: bool) -> bool {
    global1 = arg_2;
    global2 = array<Struct_1, 32>();
    let var_0 = Struct_3(arg_1);
    var var_1 = global2[_wgslsmith_index_u32(u_input.b, 32u)];
    var var_2 = 390f;
    return true;
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: bool) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-2180f, 876f, true)), -1164f, _wgslsmith_f_op_f32(round(1000f)), 267f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-220f, -534f, 676f, -844f) - vec4<f32>(551f, 2134f, 928f, -1024f)))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(553f, -892f, 1309f, 426f)), _wgslsmith_div_vec4_f32(vec4<f32>(2103f, -499f, 492f, 1322f), vec4<f32>(-146f, -1028f, -760f, -497f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(-234f)), _wgslsmith_f_op_f32(max(1139f, -399f)), _wgslsmith_f_op_f32(ceil(1406f)), 170f), vec4<f32>(-689f, _wgslsmith_f_op_f32(f32(-1f) * -700f), -1019f, _wgslsmith_f_op_f32(f32(-1f) * -915f)), !vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(692f, 321f, 1087f, 1000f) * vec4<f32>(1546f, 616f, -576f, -1621f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1150f, 1000f, -2258f, 1306f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(383f, 1142f, 1640f, -134f))), !select(vec4<bool>(false, true, false, arg_1.x), vec4<bool>(true, arg_1.x, arg_1.x, arg_2), vec4<bool>(true, true, false, arg_2))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1429f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-503f, var_0.x)))))) - _wgslsmith_f_op_f32(1248f - var_0.x));
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1015f)))) - _wgslsmith_f_op_f32(-var_0.x)), -642f));
    var var_3 = vec4<bool>(!select(all(!vec4<bool>(arg_1.x, arg_2, arg_2, arg_1.x)), func_2(arg_2, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a, 1i), vec3<i32>(arg_0, arg_0, arg_0)), arg_2, arg_1.x), true & arg_2), false, all(select(vec3<bool>(false, true, u_input.b < 4294967295u), arg_1, arg_2)), func_2(~(23764i ^ u_input.d.x) <= 959i, 2147483647i, arg_1.x, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_2, 1000f), _wgslsmith_f_op_f32(sign(var_0.x)))) > _wgslsmith_f_op_f32(-var_2)));
    global2 = array<Struct_1, 32>();
    return Struct_1(!var_3.x, all(arg_1.xx), u_input.c.x, var_3.x);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: u32) -> bool {
    global0 = array<vec2<i32>, 15>();
    let var_0 = Struct_2(~(~u_input.c));
    var var_1 = vec4<i32>(~abs(u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(select(u_input.d.x, ~u_input.d.x, true), arg_2, i32(-1i) * -15268i, _wgslsmith_dot_vec2_i32(~u_input.d.yx, firstLeadingBit(vec2<i32>(u_input.a, u_input.d.x)))), countOneBits(_wgslsmith_mod_vec4_i32(select(vec4<i32>(arg_2, u_input.a, 15168i, u_input.d.x), vec4<i32>(33906i, 0i, -13014i, -19186i), true), vec4<i32>(u_input.d.x, 8982i, -9057i, -71996i)))), ~(-1i), _wgslsmith_mod_i32(firstTrailingBit(arg_2) & ~arg_2, u_input.a));
    let var_2 = max(~vec3<i32>(~(-u_input.a), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.d.x, var_1.x), var_1.yxx), vec3<i32>(u_input.a, 115i, -12845i) & var_1.wzz), _wgslsmith_clamp_i32(var_1.x, abs(1i), -var_1.x)), u_input.d);
    let var_3 = Struct_2(vec3<u32>(~_wgslsmith_clamp_u32(19153u ^ var_0.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c, 60416u), vec2<u32>(arg_3, 64463u)), _wgslsmith_div_u32(var_0.a.x, arg_3)), ~(~u_input.b), var_0.a.x));
    return arg_1;
}

fn func_1() -> u32 {
    global1 = func_4(func_3(u_input.d.x, select(vec3<bool>(true, true, true), vec3<bool>(func_2(false, 0i, false, true), true, true), vec3<bool>(true, true, true)), false), select(true, true, select(func_3(max(0i, u_input.a), vec3<bool>(true, true, true), true).b, true, any(vec3<bool>(true, false, true)) & any(vec4<bool>(false, true, false, false)))), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(1875i, 69224i, u_input.d.x, -15744i) & vec4<i32>(0i, u_input.d.x, u_input.a, u_input.a)) >> ((vec4<u32>(33531u, 0u, u_input.c.x, u_input.c.x) & ~vec4<u32>(84449u, u_input.c.x, u_input.b, u_input.c.x)) % vec4<u32>(32u)), countOneBits(max(vec4<i32>(u_input.d.x, 14384i, u_input.a, u_input.d.x), vec4<i32>(u_input.a, u_input.a, 43644i, u_input.a)) ^ countOneBits(vec4<i32>(-1419i, u_input.a, u_input.d.x, u_input.d.x)))), countOneBits(firstLeadingBit(~(~19580u))));
    let var_0 = -abs(vec3<i32>(-1i, ~u_input.d.x, max(1i, u_input.a ^ u_input.a)));
    let var_1 = func_3(29205i, vec3<bool>(true, false, select(!func_4(Struct_1(true, true, 4294967295u, false), false, 14867i, 0u), true, func_3(abs(var_0.x), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), true).d)), !(!(u_input.c.x <= ~4294967295u)));
    let var_2 = 3921i;
    var var_3 = Struct_4(Struct_3(firstLeadingBit(_wgslsmith_sub_i32(u_input.d.x, _wgslsmith_sub_i32(27565i, 34153i)))), ~countOneBits(~_wgslsmith_mod_vec4_i32(vec4<i32>(0i, var_2, 1i, 0i), vec4<i32>(20958i, 1i, -51358i, 0i))), _wgslsmith_f_op_f32(step(1562f, _wgslsmith_div_f32(-385f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1187f, 850f)) - _wgslsmith_f_op_f32(f32(-1f) * -522f))))));
    return _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.c.zz, u_input.c.xz), u_input.c.zx);
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> Struct_3 {
    let var_0 = vec4<bool>(true, any(select(vec3<bool>(arg_2.b, select(true, false, arg_2.b), true), !select(vec3<bool>(arg_2.a, arg_2.b, arg_2.d), vec3<bool>(arg_2.a, false, true), false), true)), false, u_input.c.x == _wgslsmith_sub_u32(37084u, arg_0));
    let var_1 = func_4(Struct_1(true, var_0.x | true, max(4294967295u, _wgslsmith_dot_vec3_u32(u_input.c, countOneBits(vec3<u32>(arg_1, arg_0, u_input.b)))), all(var_0.wy)), -301f >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-205f, 1585f)))))), -(0i ^ (~31362i << (~arg_2.c % 32u))), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~(~u_input.c.yz), max(~vec2<u32>(11423u, u_input.b), u_input.c.yz)), 5417u));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-986f * 786f), _wgslsmith_f_op_f32(floor(1000f)))) + _wgslsmith_f_op_f32(select(541f, _wgslsmith_f_op_f32(873f * 241f), arg_2.a && arg_2.b))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(2225f, var_2))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1851f, var_2)), true)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1981f, -539f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-781f, var_2) * vec2<f32>(549f, var_2))), var_0.yw)))));
    global2 = array<Struct_1, 32>();
    return Struct_3(u_input.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    var var_1 = func_5(~func_1(), countOneBits(~_wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.c.x)) | _wgslsmith_dot_vec2_u32(~(u_input.c.xz ^ vec2<u32>(u_input.c.x, u_input.b)), ~select(u_input.c.zx, vec2<u32>(66605u, 54963u), vec2<bool>(true, false))), Struct_1(any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), u_input.d.x != -2147483647i)), false, 11400u, true));
    global0 = array<vec2<i32>, 15>();
    var var_2 = !vec2<bool>(true, any(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), true)));
    var_1 = Struct_3((2147483647i >> (select(_wgslsmith_dot_vec4_u32(vec4<u32>(31988u, 5083u, u_input.c.x, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.c.x, 1u)), u_input.b, true) % 32u)) >> (func_1() % 32u));
    var_2 = !(!(!(!(!vec2<bool>(var_2.x, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(-1555f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1252f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -167f) + _wgslsmith_f_op_f32(abs(2580f))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-563f, -1000f)))), vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(796f + -1319f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1515f, 1107f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(468f * 1132f)), -1000f)), ~_wgslsmith_mult_vec4_i32(-vec4<i32>(var_1.a, var_1.a, u_input.a, var_1.a), vec4<i32>(var_1.a, -1i, var_1.a, u_input.a)) & ~vec4<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 16465i), vec2<i32>(-28941i, u_input.d.x)), u_input.d.x, _wgslsmith_mult_i32(var_1.a, -2147483647i)), abs(vec3<u32>(u_input.c.x, 82807u, func_1())));
}

