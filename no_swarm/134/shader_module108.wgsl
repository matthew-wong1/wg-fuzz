struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 5>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> bool {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(max(-680f, _wgslsmith_div_f32(_wgslsmith_div_f32(491f, _wgslsmith_f_op_f32(min(1073f, arg_1.b))), _wgslsmith_f_op_f32(-1000f * arg_1.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1267f)));
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(708f, 833f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, arg_1.b)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(343f, -1942f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.x, -1857f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))), _wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1896f, arg_1.b), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-407f, 777f)))))));
    var var_1 = arg_1;
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-652f, var_0.x)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-944f, -754f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.b, 809f), vec2<f32>(-376f, -1103f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-607f, -446f), vec2<f32>(340f, 132f)) + vec2<f32>(-1443f, -1379f))), select(select(select(vec2<bool>(var_1.c, var_1.c), vec2<bool>(true, false), vec2<bool>(var_1.c, arg_1.c)), vec2<bool>(false, true), select(vec2<bool>(arg_1.c, var_1.c), vec2<bool>(arg_1.c, arg_1.c), vec2<bool>(var_1.c, true))), vec2<bool>(true, false), !select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), arg_0)))));
    var var_2 = -724f;
    return any(vec3<bool>(false | all(select(vec2<bool>(arg_0, arg_1.c), vec2<bool>(arg_1.c, arg_1.c), vec2<bool>(false, arg_1.c))), any(!select(vec3<bool>(true, var_1.c, true), vec3<bool>(arg_1.c, true, true), vec3<bool>(false, true, false))), true));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    var var_0 = !select(true, true | any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true))), func_3(all(vec3<bool>(true, false, false)), Struct_1(arg_1.b, 227f, true, _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.b, -1i), vec2<i32>(u_input.e, -15328i)))));
    var_0 = !(~arg_0.c >= -40537i);
    var_0 = true;
    let var_1 = vec4<i32>(-61003i, -_wgslsmith_clamp_i32(-14469i << (u_input.d.x % 32u), ~(-1i), ~arg_1.b) | -min(abs(0i), select(2147483647i, arg_0.b, true)), ~firstLeadingBit(arg_0.c >> (min(arg_1.a.x, arg_1.a.x) % 32u)), ~abs(-u_input.a << (0u % 32u)));
    let var_2 = -6601i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(621f - 584f)), -1838f, true)))) - 1844f);
}

fn func_1(arg_0: vec2<bool>, arg_1: i32) -> vec4<bool> {
    global0 = array<vec4<i32>, 5>();
    global0 = array<vec4<i32>, 5>();
    global0 = array<vec4<i32>, 5>();
    var var_0 = ~4294967295u;
    var_0 = u_input.d.x;
    return select(!(!vec4<bool>(any(vec3<bool>(false, false, arg_0.x)), true, arg_0.x, true)), select(vec4<bool>(true, !(u_input.d.x > 4294967295u), true, _wgslsmith_f_op_f32(func_2(Struct_2(vec2<u32>(u_input.c.x, u_input.d.x), 7172i, 0i), Struct_2(u_input.d, u_input.e, u_input.b))) < _wgslsmith_f_op_f32(-1522f * 1011f)), select(!vec4<bool>(arg_0.x, true, false, false), vec4<bool>(select(true, true, arg_0.x), arg_0.x, true, false), arg_0.x), func_3((-1840i << (0u % 32u)) < _wgslsmith_dot_vec3_i32(vec3<i32>(44661i, arg_1, arg_1), vec3<i32>(-1i, u_input.b, u_input.b)), Struct_1(u_input.a, _wgslsmith_f_op_f32(1718f * -472f), arg_0.x, _wgslsmith_mult_vec2_i32(vec2<i32>(arg_1, arg_1), vec2<i32>(u_input.e, arg_1))))), vec4<bool>(!arg_0.x, false, true, true));
}

fn func_4(arg_0: vec4<bool>) -> Struct_2 {
    var var_0 = Struct_1((~(-u_input.e) | reverseBits(-u_input.b)) ^ (u_input.e << (abs(_wgslsmith_add_u32(22626u, 64831u)) % 32u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-531f + -204f), -112f)), -1661f, true)), select(32658u, 1u, !arg_0.x) != u_input.c.x, vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, 0i, -1i), ~vec3<i32>(2147483647i, u_input.e, 1i)) | 27352i, -_wgslsmith_sub_i32(2147483647i, u_input.b)));
    let var_1 = -27396i;
    return Struct_2(_wgslsmith_clamp_vec2_u32(firstLeadingBit(u_input.d), vec2<u32>(4294967295u, firstTrailingBit(4943u)), vec2<u32>(min(~u_input.d.x, 4294967295u), u_input.d.x)), var_1, -_wgslsmith_div_i32(firstTrailingBit(~(-16041i)), -u_input.e));
}

fn func_5(arg_0: Struct_2) -> vec3<u32> {
    var var_0 = vec4<i32>((u_input.a & ~arg_0.c) >> (~firstTrailingBit(0u) % 32u), 2147483647i, _wgslsmith_sub_i32(u_input.b, -(~(i32(-1i) * -1i))), -u_input.b);
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(38459u, _wgslsmith_add_u32(arg_0.a.x, u_input.d.x) ^ ~0u), reverseBits(arg_0.a.x)), 4294967295u), 5u)];
    var var_2 = vec4<u32>(_wgslsmith_clamp_u32(select(0u, firstTrailingBit(_wgslsmith_add_u32(8658u, u_input.d.x)), !any(vec2<bool>(false, true))), u_input.c.x, reverseBits(1u)), ~u_input.d.x, _wgslsmith_clamp_u32(reverseBits(1u), ~select(1u, abs(arg_0.a.x), true), func_4(vec4<bool>(true, true, any(vec3<bool>(false, false, true)), any(vec4<bool>(true, true, false, true)))).a.x), u_input.d.x);
    global0 = array<vec4<i32>, 5>();
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1707f);
    return vec3<u32>(arg_0.a.x, firstLeadingBit(arg_0.a.x), u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 5>();
    var var_0 = abs(16012i);
    global0 = array<vec4<i32>, 5>();
    var var_1 = select(func_5(func_4(!func_1(vec2<bool>(true, false), 947i))), vec3<u32>(abs(37825u), 36089u, countOneBits(max(u_input.c.x, 23444u) | ~12602u)), !func_1(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), reverseBits(_wgslsmith_mod_i32(u_input.b, -19236i))).zyx);
    let var_2 = var_1.x >> (var_1.x % 32u);
    var var_3 = ~_wgslsmith_div_vec3_u32(~(~vec3<u32>(0u, u_input.c.x, 1u)), vec3<u32>(_wgslsmith_dot_vec2_u32(~u_input.d, u_input.d), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.x, var_2, var_2, var_1.x), vec4<u32>(22800u, var_2, 1u, var_1.x)), (var_1.x | 29070u) ^ 46068u));
    global0 = array<vec4<i32>, 5>();
    let var_4 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2160f * 303f) - 1366f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -127f), 370f))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, 1i, vec3<u32>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(var_1.x, 60103u, 4294967295u)) & ~vec3<u32>(var_3.x, 1u, 6591u), select(vec3<u32>(var_1.x, 21342u, 4294967295u), vec3<u32>(u_input.d.x, var_1.x, u_input.d.x) & vec3<u32>(4733u, var_3.x, var_2), any(vec2<bool>(false, false)))), 20503u, _wgslsmith_add_u32(6174u, _wgslsmith_dot_vec2_u32(var_3.yy, var_1.xy & vec2<u32>(var_3.x, var_2)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_4.x))));
}

