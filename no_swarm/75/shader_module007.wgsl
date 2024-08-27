struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec4<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: vec3<bool>, arg_3: vec4<u32>) -> u32 {
    var var_0 = Struct_2(arg_2.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -593f), 634f, _wgslsmith_div_f32(-132f, -601f), -2288f) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-463f, 727f, 1809f, -136f) + vec4<f32>(491f, 190f, 925f, 1601f))))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -174f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1836f))), 397f, -131f, 547f)));
    let var_2 = _wgslsmith_div_vec4_i32(select(vec4<i32>(40665i, u_input.c.x, ~(-2147483647i), _wgslsmith_div_i32(9854i, arg_0.x)), -vec4<i32>(u_input.d, u_input.d, u_input.c.x, u_input.c.x), vec4<bool>(false || var_0.a, all(arg_2), select(false, true, true), arg_2.x)), abs(select(-vec4<i32>(-1i, u_input.d, -1i, arg_0.x), vec4<i32>(u_input.d, 2839i, 1i, 0i), select(vec4<bool>(true, true, false, true), vec4<bool>(arg_2.x, true, arg_2.x, false), false)))) ^ (_wgslsmith_mod_vec4_i32(~vec4<i32>(arg_0.x, u_input.c.x, -1i, -2147483647i), ~vec4<i32>(-39380i, u_input.c.x, 13663i, -38331i)) ^ vec4<i32>(-2603i, max(arg_0.x, u_input.d) ^ -u_input.c.x, 0i, ~u_input.c.x));
    let var_3 = _wgslsmith_mod_u32(4294967295u, arg_1.x);
    var var_4 = vec4<u32>(4294967295u, 4294967295u, arg_3.x, arg_1.x);
    return arg_1.x;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(false, false, true, true)), _wgslsmith_f_op_f32(floor(1584f)) >= 2048f)));
    let var_1 = _wgslsmith_mult_i32(min(firstTrailingBit(-25558i) & abs(-24717i), -u_input.d) | u_input.d, -u_input.c.x);
    let var_2 = ~(~(83044u << (u_input.a.x % 32u))) << (func_3(vec2<i32>(~(~u_input.d), 17411i), ~(~u_input.a), vec3<bool>(any(!vec2<bool>(true, var_0.a)), true, var_0.a), firstTrailingBit(u_input.a)) % 32u);
    var_0 = Struct_2(!all(select(vec4<bool>(false, true, var_0.a, false), select(vec4<bool>(var_0.a, var_0.a, var_0.a, false), vec4<bool>(false, false, var_0.a, var_0.a), vec4<bool>(false, var_0.a, true, false)), true)));
    var_0 = Struct_2(false);
    return Struct_2(any(select(!vec4<bool>(false, true, var_0.a, var_0.a), !select(vec4<bool>(var_0.a, false, var_0.a, true), vec4<bool>(var_0.a, true, true, var_0.a), var_0.a), select(vec4<bool>(var_0.a, false, var_0.a, var_0.a), select(vec4<bool>(true, true, true, false), vec4<bool>(var_0.a, var_0.a, var_0.a, true), vec4<bool>(false, true, true, true)), !vec4<bool>(false, var_0.a, var_0.a, true)))));
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(749f)) * -1236f);
    let var_1 = func_2();
    var var_2 = Struct_3(~vec3<u32>(~u_input.b, ~u_input.a.x, 1u) >> (~reverseBits(vec3<u32>(u_input.a.x, 0u, u_input.a.x) ^ u_input.a.wxw) % vec3<u32>(32u)), _wgslsmith_sub_i32(~u_input.d, max(1i << (0u % 32u), arg_0.c.x)), arg_0);
    return !any(vec3<bool>(!(arg_0.c.x != -1i), !arg_0.a | (var_2.a.x <= 1u), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(min(~(u_input.a.yzz & u_input.a.yww), abs(u_input.a.yxz)), u_input.d, Struct_1(!all(vec3<bool>(true, true, true)), select(vec2<bool>(true, all(vec3<bool>(true, true, false))), vec2<bool>(true, true), vec2<bool>(true, func_1(Struct_1(true, vec2<bool>(false, true), vec4<i32>(41972i, -1817i, u_input.c.x, 43354i), vec2<bool>(false, false))))), max(_wgslsmith_clamp_vec4_i32(min(vec4<i32>(-11387i, -48578i, -24764i, 0i), vec4<i32>(u_input.c.x, 450i, -68559i, u_input.d)), reverseBits(vec4<i32>(u_input.d, 31146i, u_input.c.x, 28727i)), -vec4<i32>(-4711i, 11886i, u_input.d, 3851i)), abs(~vec4<i32>(u_input.c.x, 87272i, u_input.d, u_input.c.x))), vec2<bool>(true, func_2().a)));
    let var_1 = var_0;
    let var_2 = var_1.c;
    var var_3 = var_1.a.x;
    let var_4 = ~_wgslsmith_mult_i32(var_0.b, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, -2147483647i, var_1.b), vec4<i32>(-1i, var_0.c.c.x, -6631i, 9246i)), i32(-1i) * -1i) << (4294967295u % 32u));
    var_3 = _wgslsmith_mult_u32(u_input.b, _wgslsmith_div_u32(42333u, ~(~u_input.a.x << ((25214u >> (var_0.a.x % 32u)) % 32u))));
    var var_5 = ~abs(vec4<u32>(abs(1u), 0u, 4294967295u, _wgslsmith_add_u32(24927u, _wgslsmith_mult_u32(var_0.a.x, u_input.a.x))));
    var_5 = u_input.a << (vec4<u32>(~var_5.x >> (var_5.x % 32u), var_0.a.x, ~(~(u_input.b & u_input.b)), _wgslsmith_clamp_u32(_wgslsmith_add_u32(var_5.x, 4294967295u) & (4294967295u & var_1.a.x), var_1.a.x, ~(~4294967295u))) % vec4<u32>(32u));
    let var_6 = countOneBits(_wgslsmith_div_u32(~_wgslsmith_mult_u32(var_0.a.x, u_input.a.x), ~33384u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, 0u, -countOneBits(~var_4), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(698f, -1184f), _wgslsmith_f_op_f32(f32(-1f) * -612f), _wgslsmith_f_op_f32(-136f - 1463f)) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1481f, -647f, -1000f)))))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(990f, -2164f, 961f) * vec3<f32>(342f, -174f, 124f)))), vec3<f32>(-2192f, -662f, _wgslsmith_f_op_f32(floor(-267f)))))));
}

