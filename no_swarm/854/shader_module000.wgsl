struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: f32,
    d: vec2<bool>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: bool) -> i32 {
    var var_0 = ~(~(~vec3<u32>(53769u, 1u, u_input.e.x)) | _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.e.x, u_input.b), vec3<u32>(u_input.e.x, u_input.b, u_input.b)) << (~vec3<u32>(u_input.b, u_input.b, 1u) % vec3<u32>(32u)), vec3<u32>(~4294967295u, _wgslsmith_mod_u32(u_input.b, u_input.e.x), countOneBits(1u)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.e.x, 4294967295u), vec3<u32>(1u, u_input.e.x, u_input.e.x))));
    let var_1 = all(vec4<bool>(!any(vec4<bool>(true, arg_1, true, true)), true | !arg_1, u_input.b <= ~abs(u_input.e.x), arg_0 && any(!vec3<bool>(true, arg_1, false))));
    var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.b, var_0.x), var_0.x, 53143u), select(var_0.x, u_input.e.x, true), ~1u), vec3<u32>(~1u | (var_0.x ^ 66798u), _wgslsmith_dot_vec2_u32(~u_input.e, vec2<u32>(4294967295u, u_input.b)), firstTrailingBit(var_0.x)) & _wgslsmith_clamp_vec3_u32((vec3<u32>(var_0.x, 1u, u_input.e.x) ^ vec3<u32>(4294967295u, 4294967295u, var_0.x)) & vec3<u32>(0u, 4294967295u, 100857u), vec3<u32>(abs(4503u), u_input.b << (u_input.b % 32u), ~1u), ~vec3<u32>(var_0.x, 45129u, 0u)));
    let var_2 = var_0.x;
    var var_3 = ~(vec3<u32>(16963u, ~(~u_input.e.x), ~4294967295u << (_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 4294967295u, 9288u), vec3<u32>(u_input.e.x, var_0.x, 65058u)) % 32u)) | reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.e.x), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, var_0.x, 40124u), vec3<u32>(u_input.e.x, 32948u, var_0.x)))));
    return u_input.d.x;
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> Struct_2 {
    var var_0 = 3147i;
    var var_1 = u_input.d.x;
    var_0 = func_3(false, true);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 2870f, _wgslsmith_f_op_f32(-arg_1)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, arg_1, arg_1), vec3<f32>(555f, arg_1, -1302f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1285f, 820f, 242f))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1, arg_1, 1382f)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-805f, -1636f, 1508f) + vec3<f32>(-236f, -753f, 302f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, -1000f)), arg_0.a.b.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(1279f)), 1692f, _wgslsmith_f_op_f32(step(196f, arg_1))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, arg_1, 791f), vec3<f32>(arg_1, -1213f, arg_1)) - vec3<f32>(arg_1, -179f, 1443f)))));
    var_0 = 7898i;
    return Struct_2(arg_0.a);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>) -> u32 {
    var var_0 = func_2(arg_0, _wgslsmith_f_op_f32(-1025f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1688f))));
    var var_1 = !arg_1.zzw;
    let var_2 = _wgslsmith_div_vec4_u32(abs(~(select(vec4<u32>(u_input.b, u_input.b, 4294967295u, arg_0.a.a.x), vec4<u32>(u_input.b, 35582u, arg_0.a.a.x, arg_0.a.a.x), arg_1) >> (vec4<u32>(1u, 0u, u_input.e.x, arg_0.a.a.x) % vec4<u32>(32u)))), vec4<u32>(8013u, ~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(1938u, 0u, 4294967295u, u_input.b)), ~vec4<u32>(75138u, u_input.b, 4294967295u, 0u)), _wgslsmith_div_u32(26860u, _wgslsmith_add_u32(u_input.b, _wgslsmith_mult_u32(var_0.a.a.x, 5216u))), 43796u));
    let var_3 = _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(min(1i, u_input.d.x), reverseBits(46949i)), min(u_input.c, u_input.d.x), 0i, _wgslsmith_add_i32(u_input.d.x, u_input.a.x) | 3483i), vec4<i32>(u_input.c >> (4294967295u % 32u), u_input.c, ~_wgslsmith_mult_i32(u_input.a.x, 0i), 2147483647i), max(abs(u_input.a) ^ vec4<i32>(8038i, 1i, -30463i, 56277i), _wgslsmith_sub_vec4_i32(u_input.a, -vec4<i32>(-2147483647i, u_input.c, -46229i, u_input.c)))), -firstLeadingBit(firstLeadingBit(u_input.a)));
    var_0 = arg_0;
    return ~(~(~0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec3<bool>(u_input.e.x <= func_1(Struct_2(Struct_1(vec2<u32>(1u, 1u), vec2<bool>(true, true))), vec4<bool>(true, true, false, true)), select(true, true, true), true)) | func_2(Struct_2(Struct_1(u_input.e, func_2(Struct_2(Struct_1(vec2<u32>(u_input.e.x, 31179u), vec2<bool>(false, true))), -1631f).a.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-467f, -1179f) + _wgslsmith_f_op_f32(max(746f, 531f))), 1116f)).a.b.x;
    var var_1 = false;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 2055f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -644f))), 771f, _wgslsmith_f_op_f32(step(-1306f, _wgslsmith_f_op_f32(sign(1901f))))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1777f, -1205f, -444f) * vec4<f32>(405f, -1225f, 2154f, -900f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-812f, -882f, -1000f, 126f) + vec4<f32>(-1068f, -716f, -1000f, -218f)))))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1424f, -577f, _wgslsmith_f_op_f32(670f + 686f), _wgslsmith_f_op_f32(min(-296f, 572f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -167f), -653f, -345f, _wgslsmith_f_op_f32(-173f * _wgslsmith_f_op_f32(f32(-1f) * -277f))))));
    var var_3 = Struct_4(func_2(func_2(Struct_2(Struct_1(vec2<u32>(14375u, u_input.e.x), vec2<bool>(true, false))), var_2.x), -823f), -_wgslsmith_clamp_vec4_i32(u_input.a, firstTrailingBit(countOneBits(vec4<i32>(u_input.a.x, 15178i, -35543i, u_input.c))), min(u_input.a, ~u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.x, _wgslsmith_div_f32(994f, var_2.x)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -739f) + var_2.x)))), select(func_2(func_2(Struct_2(Struct_1(u_input.e, vec2<bool>(true, true))), -1000f), _wgslsmith_f_op_f32(-var_2.x)).a.b, func_2(Struct_2(Struct_1(vec2<u32>(43131u, 0u), vec2<bool>(false, false))), var_2.x).a.b, vec2<bool>(true, false)), false);
    let var_4 = countOneBits(u_input.e.x);
    let var_5 = ~_wgslsmith_div_vec3_u32(abs(~(vec3<u32>(1u, 0u, var_3.a.a.a.x) << (vec3<u32>(10875u, 0u, var_4) % vec3<u32>(32u)))), max(reverseBits(vec3<u32>(0u, var_3.a.a.a.x, 50589u) ^ vec3<u32>(var_3.a.a.a.x, var_3.a.a.a.x, 111588u)), vec3<u32>(u_input.b, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(39643u, 4294967295u, 123319u), vec3<u32>(28627u, 36353u, var_3.a.a.a.x)))));
    var var_6 = vec2<bool>(!var_3.e, false);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, countOneBits(var_4), select(u_input.e.x, var_5.x, true)), reverseBits(abs(vec4<u32>(87537u, var_3.a.a.a.x, var_5.x, 78408u)))), var_2.wzw, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_3.c))))), _wgslsmith_f_op_f32(-var_3.c)));
}

