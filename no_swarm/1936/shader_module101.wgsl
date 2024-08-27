struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: f32, arg_1: u32) -> f32 {
    return arg_0;
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1, arg_3: vec3<bool>) -> bool {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.b.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(-1049f, arg_2.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x * 995f))), _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(var_0.b.x - 380f)))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(385f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) + var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))));
    var var_2 = firstLeadingBit(~min(arg_0.a.b, arg_2.d) << (39405u % 32u));
    var var_3 = ~(~u_input.a);
    return _wgslsmith_f_op_f32(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-arg_0.b.x)), ~_wgslsmith_mod_u32(arg_2.d, 0u))) < -1319f;
}

fn func_4(arg_0: vec2<f32>) -> Struct_4 {
    var var_0 = Struct_3(Struct_1(!any(select(vec2<bool>(false, false), vec2<bool>(true, true), false)), abs(~(4294967295u << (u_input.a.x % 32u))), reverseBits(42778i), select(u_input.a.x, u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, u_input.b.x, 2147483647i), vec4<i32>(-24162i, u_input.b.x, u_input.b.x, u_input.b.x)) <= _wgslsmith_add_i32(22591i, u_input.b.x)), true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.x, arg_0.x), _wgslsmith_f_op_vec2_f32(select(arg_0, vec2<f32>(arg_0.x, -1063f), vec2<bool>(false, true))), true)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, -203f) - arg_0))), arg_0));
    var_0 = Struct_3(var_0.a, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_div_f32(-664f, 239f))))));
    var_0 = Struct_3(Struct_1(true, ~(var_0.a.d >> (1u % 32u)), ~(var_0.a.c >> (1u % 32u)), 1u, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(-arg_0.x))) * _wgslsmith_f_op_vec2_f32(trunc(var_0.b))));
    let var_1 = vec4<bool>(true, false, !any(!vec3<bool>(var_0.a.a, var_0.a.a, false)), var_0.a.e);
    let var_2 = Struct_2(Struct_1(false, 59084u, -2147483647i << (_wgslsmith_sub_u32(4294967295u, u_input.a.x) % 32u), 1u | firstLeadingBit(var_0.a.d << (u_input.a.x % 32u)), var_0.a.a), arg_0, select(u_input.b.xz, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, var_0.a.c), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, -427i), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, u_input.b.x), vec2<i32>(0i, 31821i)))), !select(!var_1.xx, select(var_1.xz, vec2<bool>(true, true), var_1.x), var_1.zy)));
    return Struct_4(var_2.a.a, all(var_1.ywz), _wgslsmith_add_u32(var_2.a.b, ~51798u));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-863f * 1587f), _wgslsmith_f_op_f32(func_2(1278f, 8021u)), func_3(Struct_2(Struct_1(false, arg_0, u_input.b.x, 1u, false), vec2<f32>(-201f, -370f), vec2<i32>(-2147483647i, -1i)), true, Struct_1(true, u_input.a.x, u_input.b.x, 0u, false), vec3<bool>(true, true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2162f))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-525f, 409f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-365f, -160f))), vec2<f32>(-1056f, 944f))))));
    let var_1 = _wgslsmith_f_op_f32(115f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-460f))))));
    var var_2 = -u_input.b.x;
    var var_3 = Struct_4(var_0.a, !var_0.a, ~(abs(1176u) ^ _wgslsmith_sub_u32(_wgslsmith_div_u32(arg_0, 26271u), min(u_input.a.x, var_0.c))));
    let var_4 = vec2<bool>(false, true);
    return Struct_1(any(!select(!vec4<bool>(var_4.x, true, false, var_0.b), select(vec4<bool>(var_0.b, true, var_0.b, var_0.a), vec4<bool>(false, true, var_0.a, false), vec4<bool>(var_3.a, var_4.x, false, var_0.a)), select(vec4<bool>(var_3.a, var_4.x, true, var_4.x), vec4<bool>(var_3.a, var_0.b, var_3.b, var_0.b), vec4<bool>(var_4.x, var_3.b, var_4.x, false)))), 4294967295u, ~_wgslsmith_div_i32(~(~u_input.b.x), (-603i << (u_input.a.x % 32u)) | 0i), max(var_3.c, ~4294967295u), all(vec3<bool>(true, false, all(vec4<bool>(var_0.a, var_4.x, var_3.a, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(trunc(-407f));
    var var_1 = abs(vec4<i32>(-_wgslsmith_add_i32(u_input.b.x, -1i), ~_wgslsmith_clamp_i32(-2147483647i, u_input.b.x, 2147483647i), -(u_input.b.x ^ u_input.b.x), countOneBits(u_input.b.x) ^ ~u_input.b.x)) & (u_input.b << (abs(abs(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))) % vec4<u32>(32u)));
    let var_2 = true;
    var var_3 = Struct_2(func_1(~u_input.a.x >> (u_input.a.x % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(169f, _wgslsmith_div_f32(var_0, 349f)))), _wgslsmith_clamp_vec2_i32(var_1.yy, vec2<i32>(0i, 1i), _wgslsmith_sub_vec2_i32(vec2<i32>(var_1.x, -23272i) & vec2<i32>(-6031i, -15921i), _wgslsmith_mult_vec2_i32(vec2<i32>(10550i, -2147483647i), var_1.zy)) >> (((u_input.a & vec2<u32>(u_input.a.x, u_input.a.x)) & ~u_input.a) % vec2<u32>(32u))));
    let var_4 = !vec3<bool>(!func_1(11661u << (u_input.a.x % 32u)).a, !(-1869f == _wgslsmith_f_op_f32(-var_0)), func_3(Struct_2(var_3.a, vec2<f32>(var_3.b.x, var_3.b.x), vec2<i32>(u_input.b.x, u_input.b.x)), func_3(Struct_2(var_3.a, var_3.b, var_1.yz), var_2, var_3.a, vec3<bool>(var_3.a.a, var_3.a.e, true)), func_1(u_input.a.x), !vec3<bool>(var_2, false, var_2)) || true);
    let var_5 = var_1.zwz;
    var_1 = _wgslsmith_sub_vec4_i32(~vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.b.wxw, ~vec3<i32>(0i, var_1.x, var_1.x)), _wgslsmith_sub_i32(var_1.x << (u_input.a.x % 32u), u_input.b.x), var_3.a.c, reverseBits(_wgslsmith_dot_vec2_i32(var_1.xz, vec2<i32>(var_1.x, -2147483647i)))), _wgslsmith_div_vec4_i32(((vec4<i32>(u_input.b.x, var_1.x, var_3.c.x, u_input.b.x) ^ u_input.b) >> ((vec4<u32>(var_3.a.d, u_input.a.x, u_input.a.x, var_3.a.d) << (vec4<u32>(u_input.a.x, 1u, 41348u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))) | abs(firstTrailingBit(vec4<i32>(-19632i, -1i, -36047i, var_1.x))), reverseBits(~countOneBits(vec4<i32>(0i, var_1.x, var_3.c.x, u_input.b.x)))));
    let var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(9442i, ~(~vec2<u32>(var_3.a.d & 60543u, _wgslsmith_clamp_u32(var_3.a.b, 56505u, var_3.a.d))), _wgslsmith_clamp_vec3_i32(~(~vec3<i32>(var_5.x, var_1.x, 2147483647i)), vec3<i32>(-2147483647i, var_1.x, ~1i), _wgslsmith_div_vec3_i32(select(-vec3<i32>(var_1.x, 0i, var_5.x), vec3<i32>(-19264i, 1i, -5585i), !var_6), var_1.xyz)), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-var_0)), u_input.a);
}

