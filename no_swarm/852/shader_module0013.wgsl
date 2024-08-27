struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: f32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 97684u, 44191u, 66255u);

var<private> global1: array<vec2<u32>, 24>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> u32 {
    let var_0 = ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, global0.x, 4294967295u, 1u) & ~vec4<u32>(global0.x, 5198u, 23216u, 4294967295u), max(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, global0.x, u_input.c.x, global0.x), vec4<u32>(1u, u_input.b, u_input.b, u_input.c.x), vec4<u32>(u_input.a, 43878u, u_input.b, 103660u)), ~vec4<u32>(u_input.b, u_input.b, global0.x, 4294967295u))));
    let var_1 = vec4<bool>(!(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(14402i, 2147483647i, -1i), vec3<i32>(-2147483647i, -22610i, -2147483647i)), 0i) < ~(-19586i)), !(_wgslsmith_sub_u32(global0.x, ~var_0.x) <= 80254u), u_input.a < ~var_0.x, true);
    var var_2 = Struct_2(any(!select(!var_1, !var_1, true == var_1.x)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-204f, -943f) + _wgslsmith_f_op_f32(-1f)), u_input.a), Struct_1(1f, ~(6193u | countOneBits(var_0.x))), vec2<f32>(_wgslsmith_f_op_f32(ceil(1f)), -2003f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(554f, -496f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, 1724f))))))));
    var var_3 = select(_wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(25589i, 2147483647i, -2147483647i, -2147483647i), vec4<i32>(-1i, -13573i, 0i, 35886i)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -9171i, 2147483647i, -15545i), vec4<i32>(27519i, 0i, 2147483647i, 1i)))), _wgslsmith_sub_vec2_i32(~vec2<i32>(-18487i, 0i), firstTrailingBit(vec2<i32>(_wgslsmith_sub_i32(2147483647i, 7038i), 8788i))), var_1.x && (select(true, true, !var_1.x) & true));
    var var_4 = Struct_2(true, var_2.c, var_2.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(var_2.e)))))), vec2<f32>(-491f, -1048f)), var_2.e);
    return ~(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(global0.yxw << (var_0.wzy % vec3<u32>(32u)), ~vec3<u32>(u_input.a, 55547u, 4294967295u)), global0.yzw) ^ var_4.b.b);
}

fn func_2(arg_0: vec3<f32>) -> bool {
    var var_0 = Struct_3(~_wgslsmith_sub_u32(u_input.a, _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.b, 4294967295u), u_input.a)), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c.x), ~global0.zx)), 1263f);
    var_0 = Struct_3(((func_3() ^ 4294967295u) ^ ~(~global0.x)) << ((1u >> (min(u_input.c.x, _wgslsmith_div_u32(u_input.a, global0.x)) % 32u)) % 32u), abs(firstLeadingBit(countOneBits(_wgslsmith_div_u32(36044u, global0.x)))), _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(-arg_0.x)));
    var var_1 = Struct_2(any(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), true)), vec4<bool>(true, true, true, false))), Struct_1(_wgslsmith_f_op_f32(floor(115f)), var_0.b), Struct_1(_wgslsmith_f_op_f32(-var_0.c), global0.x), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.c), -1599f, any(vec4<bool>(false, false, true, false))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_0.yy, arg_0.yy))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 193f) + arg_0.xz) - _wgslsmith_f_op_vec2_f32(arg_0.zz + arg_0.yz))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 795f)), arg_0.yz))));
    var_1 = Struct_2(true, var_1.c, var_1.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-378f)) + _wgslsmith_f_op_f32(var_1.e.x + -965f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1791f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_0.zy)))) * _wgslsmith_f_op_vec2_f32(-var_1.d)));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-375f)))), _wgslsmith_f_op_f32(f32(-1f) * -716f));
    return !var_1.a;
}

fn func_1(arg_0: f32) -> u32 {
    global1 = array<vec2<u32>, 24>();
    let var_0 = 62186u;
    global0 = max(vec4<u32>(0u, _wgslsmith_mod_u32(abs(1u), 4294967295u), global0.x, select(_wgslsmith_mult_u32(~4294967295u, ~global0.x), ~(~u_input.a), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_0, -1363f) + vec3<f32>(-870f, -1068f, 2083f))))), vec4<u32>(global0.x, global0.x, _wgslsmith_add_u32(reverseBits(countOneBits(var_0)), u_input.b), 1u));
    let var_1 = ~_wgslsmith_dot_vec4_u32(~(~(vec4<u32>(global0.x, 4294967295u, 4294967295u, 1u) ^ vec4<u32>(global0.x, global0.x, 4294967295u, global0.x))), ~(min(vec4<u32>(25941u, global0.x, 58157u, 46790u), vec4<u32>(57133u, 4294967295u, 62051u, 0u)) ^ vec4<u32>(u_input.b, 0u, global0.x, 71757u)));
    global0 = ~vec4<u32>(_wgslsmith_mult_u32(~26840u, ~global0.x), ~reverseBits(~u_input.c.x), ~var_0, abs(func_3()));
    return _wgslsmith_dot_vec3_u32(firstTrailingBit(min(min(u_input.c, vec3<u32>(1u, 59170u, 0u)) & (vec3<u32>(26532u, global0.x, 75288u) << (global0.wyy % vec3<u32>(32u))), abs(reverseBits(global0.yxy)))), _wgslsmith_div_vec3_u32(abs(global0.xyz), ~select(vec3<u32>(u_input.b, global0.x, u_input.b), vec3<u32>(var_0, 13991u, 53726u), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 24>();
    global0 = _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(60250u, 52367u, global0.x, 0u)), vec4<u32>(global0.x, ~27159u, u_input.c.x, global0.x)), ~_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, 26561u, global0.x, global0.x)), ~vec4<u32>(u_input.b, 59610u, 88541u, global0.x))) << (~_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, global0.x, 18279u, global0.x), ~vec4<u32>(4294967295u, 1u, u_input.a, global0.x)) % vec4<u32>(32u));
    var var_0 = vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(max(17579u, 1u), abs(55871u), u_input.b), _wgslsmith_mult_vec3_u32(vec3<u32>(global0.x, global0.x, global0.x), ~vec3<u32>(global0.x, 1u, global0.x))), global0.wzw), global0.x | _wgslsmith_sub_u32(global0.x, ~_wgslsmith_clamp_u32(0u, 0u, 4294967295u)), firstTrailingBit(~(~u_input.a)), ~func_1(_wgslsmith_f_op_f32(select(-620f, -381f, true))));
    var_0 = _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x << (global0.x % 32u), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 9802u, 23262u, u_input.b), vec4<u32>(var_0.x, 0u, var_0.x, var_0.x)), 14507u), ~vec4<u32>(global0.x, global0.x, u_input.b, 9828u) ^ reverseBits(vec4<u32>(u_input.b, 86179u, var_0.x, 1u))), vec4<u32>(u_input.b, var_0.x >> (0u % 32u), ~_wgslsmith_add_u32(global0.x, u_input.a), 0u >> (var_0.x % 32u))) ^ vec4<u32>(func_3(), _wgslsmith_dot_vec3_u32(~min(vec3<u32>(55463u, var_0.x, 4959u), vec3<u32>(global0.x, global0.x, 27707u)), ~select(vec3<u32>(4294967295u, 14594u, var_0.x), u_input.c, false)), var_0.x, reverseBits(reverseBits(~global0.x)));
    let var_1 = -1414f;
    var var_2 = select(vec2<bool>(all(vec2<bool>(true, false)), any(vec3<bool>(false, true, true))), !select(vec2<bool>(true, any(vec3<bool>(false, false, true))), vec2<bool>(true, true), true), all(vec3<bool>(false, true, true)));
    var var_3 = global0.xx;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(7789u, global0.x << (var_0.x % 32u), 22549u), max(firstLeadingBit(global0.zww), var_0.xxw)), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 4294967295u), var_0.xxx)), min(34525u, 0u)), func_3(), countOneBits(u_input.c.x), ~(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.x, global0.x), vec2<u32>(var_0.x, 0u)), _wgslsmith_div_u32(0u, var_0.x))));
}

