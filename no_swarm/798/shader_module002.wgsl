struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 27> = array<vec2<bool>, 27>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true));

var<private> global1: array<vec3<f32>, 15>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    global0 = array<vec2<bool>, 27>();
    global1 = array<vec3<f32>, 15>();
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-128f - _wgslsmith_f_op_f32(trunc(1000f)))))))));
    var var_1 = ~u_input.a;
    global1 = array<vec3<f32>, 15>();
    return _wgslsmith_dot_vec3_i32(~_wgslsmith_clamp_vec3_i32(select(vec3<i32>(-17312i, 12073i, 3392i), vec3<i32>(-1i, -2147483647i, -2147483647i), false), max(vec3<i32>(28292i, 1i, 8176i), vec3<i32>(-4755i, 1i, -1i)), vec3<i32>(2667i, 2147483647i, -2147483647i) >> (vec3<u32>(72269u, u_input.a, u_input.a) % vec3<u32>(32u))), ~(~_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -1i, 6941i), vec3<i32>(9754i, 22223i, 33915i)))) | -5249i;
}

fn func_2() -> i32 {
    var var_0 = -2147483647i;
    let var_1 = select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, any(global0[_wgslsmith_index_u32(~u_input.a, 27u)])), all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false))) | any(vec2<bool>(true, true))), vec3<bool>(true, true, !(!any(vec3<bool>(false, false, true)))));
    var_0 = ~(func_3() | -2771i);
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1469f, 1240f, -1568f, -240f))))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-450f, -617f, -297f, 877f), vec4<f32>(-184f, -1714f, -954f, 1343f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-726f, -557f, 312f, -1000f)))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1276f, 446f, _wgslsmith_f_op_f32(f32(-1f) * -944f), -442f), vec4<f32>(_wgslsmith_f_op_f32(-897f - -1781f), 1750f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(735f, -1228f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -591f) * 176f)), !select(!vec4<bool>(false, var_1.x, false, false), select(vec4<bool>(var_1.x, false, true, false), vec4<bool>(false, var_1.x, false, false), var_1.x), true)))));
    global1 = array<vec3<f32>, 15>();
    return _wgslsmith_add_i32(func_3(), ~_wgslsmith_clamp_i32(i32(-1i) * -59649i, abs(-1i), ~32568i) & (-_wgslsmith_mult_i32(0i, -58832i) >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(44492u, 1u), ~vec2<u32>(40896u, u_input.a)) % 32u)));
}

fn func_1(arg_0: bool, arg_1: bool) -> vec3<i32> {
    global0 = array<vec2<bool>, 27>();
    global1 = array<vec3<f32>, 15>();
    global1 = array<vec3<f32>, 15>();
    global1 = array<vec3<f32>, 15>();
    let var_0 = _wgslsmith_clamp_i32(-2147483647i, -36938i, abs(func_2()));
    return vec3<i32>(var_0, _wgslsmith_mod_i32(-_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(1i, -27817i, var_0, var_0)), abs(vec4<i32>(var_0, var_0, -3361i, var_0))), firstLeadingBit(var_0)), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 27>();
    var var_0 = func_1(any(vec4<bool>(true, true, true, true)), false);
    let var_1 = 5150u;
    let var_2 = select(!select(vec3<bool>(true, var_0.x <= -31644i, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false))), select(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false), vec3<bool>(false, false, true), (var_0.x & var_0.x) < var_0.x), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), any(vec2<bool>(true, false))), _wgslsmith_mult_i32(-var_0.x, var_0.x) == reverseBits(select(var_0.x, 36451i, false))), false);
    var_0 = select(_wgslsmith_sub_vec3_i32(vec3<i32>(abs(-var_0.x), -(var_0.x | var_0.x), -var_0.x), select(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<i32>(3050i, var_0.x, var_0.x)) ^ vec3<i32>(1550i, var_0.x, 0i), vec3<i32>(var_0.x >> (u_input.a % 32u), func_2(), reverseBits(var_0.x)), var_2)), abs(~vec3<i32>(var_0.x, var_0.x, -32849i)) ^ -_wgslsmith_mod_vec3_i32(-vec3<i32>(var_0.x, var_0.x, var_0.x), -vec3<i32>(var_0.x, 1i, var_0.x)), var_2.x);
    var var_3 = vec4<i32>(func_3(), 60774i ^ _wgslsmith_mult_i32(8676i, min(2147483647i, var_0.x)), -2225i, _wgslsmith_dot_vec3_i32(abs(-vec3<i32>(-1i, var_0.x, var_0.x)), countOneBits(vec3<i32>(var_0.x, 1i, var_0.x)))) << (~_wgslsmith_mod_vec4_u32(~reverseBits(vec4<u32>(var_1, 4294967295u, 1u, var_1)), max(_wgslsmith_add_vec4_u32(vec4<u32>(var_1, u_input.a, var_1, 4294967295u), vec4<u32>(u_input.a, var_1, 36690u, 0u)), ~vec4<u32>(u_input.a, 0u, u_input.a, u_input.a))) % vec4<u32>(32u));
    var var_4 = var_2.zx;
    var var_5 = vec3<i32>(countOneBits(~firstLeadingBit(1i)), -7471i, -8302i ^ var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1294f, 173f, -573f, -865f) * vec4<f32>(211f, -325f, 549f, -445f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1802f, -792f, 507f, 1006f)), select(vec4<bool>(false, var_2.x, false, var_2.x), vec4<bool>(false, true, var_4.x, var_4.x), vec4<bool>(true, var_2.x, false, var_4.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-216f, -1475f, 1643f, 1363f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1703f, 157f, -1000f, 1358f), vec4<f32>(-1453f, 1648f, 741f, -332f), false)))))));
}

