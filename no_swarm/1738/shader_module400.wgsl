struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.b, u_input.b), ~(~(~u_input.b))), _wgslsmith_dot_vec2_u32(max(~vec2<u32>(arg_2.b, arg_2.b), _wgslsmith_add_vec2_u32(~u_input.b.yx, abs(vec2<u32>(arg_2.a, arg_1.b)))), abs(abs(vec2<u32>(1u, arg_2.b)))));
    var var_1 = ~14101i;
    var_1 = select(10914i, 0i, -402f == _wgslsmith_f_op_f32(1333f * arg_3.c.x));
    var_1 = _wgslsmith_dot_vec3_i32(u_input.a, ~(~vec3<i32>(u_input.a.x >> (29493u % 32u), u_input.a.x, u_input.a.x)));
    return ~(~abs(~var_0));
}

fn func_2() -> vec3<bool> {
    let var_0 = ~select(_wgslsmith_dot_vec2_u32(vec2<u32>(func_3(-1000f, Struct_1(u_input.b.x, 0u, vec2<f32>(519f, -1662f)), Struct_1(22505u, u_input.c.x, vec2<f32>(-124f, -1000f)), Struct_1(74484u, 3479u, vec2<f32>(-1000f, -605f))), select(1u, u_input.c.x, true)), select(u_input.c, vec2<u32>(u_input.c.x, u_input.b.x), true)), select(_wgslsmith_div_u32(u_input.c.x, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(4294967295u, u_input.c.x, 1u, u_input.b.x))), 1u, true), ~1u >= (u_input.b.x | _wgslsmith_sub_u32(70786u, 1u)));
    let var_1 = Struct_1(~1u & var_0, _wgslsmith_mod_u32(~countOneBits(~64234u), ~select(func_3(1578f, Struct_1(0u, 4294967295u, vec2<f32>(1000f, -1103f)), Struct_1(var_0, var_0, vec2<f32>(-1976f, 760f)), Struct_1(1u, var_0, vec2<f32>(-1666f, 813f))), firstTrailingBit(4294967295u), select(false, true, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -933f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(835f, 1627f) - vec2<f32>(-674f, 989f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-454f, 450f) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, -980f), vec2<f32>(-1571f, -1098f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(465f, 1492f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 773f))))));
    var var_2 = var_1;
    var var_3 = Struct_1(63159u, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(~0u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b.xy, vec2<u32>(var_0, 20177u)), vec2<u32>(var_0, 4294967295u))), 1u, ~(~var_1.a)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c.x, -1609f) - vec2<f32>(-224f, var_1.c.x)) + var_1.c))))));
    var_3 = Struct_1(_wgslsmith_clamp_u32(_wgslsmith_div_u32(50565u, ~(~var_2.a)), u_input.b.x, _wgslsmith_sub_u32(4294967295u, 4294967295u)), var_3.a, vec2<f32>(_wgslsmith_f_op_f32(floor(var_1.c.x)), var_3.c.x));
    return select(vec3<bool>(!any(vec4<bool>(true, true, true, true)), select(false, true, true) || (0i < u_input.a.x), !(u_input.a.x != ~(-33515i))), vec3<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true)), false, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_1.b, 20794u), u_input.c), vec2<u32>(10941u, 56571u)) <= var_0), vec3<bool>(false | select(false, var_3.a == 21553u, all(vec4<bool>(true, true, false, true))), true, !(!any(vec2<bool>(true, false)))));
}

fn func_1() -> Struct_1 {
    var var_0 = ~(~u_input.b);
    var var_1 = select(!select(vec3<bool>(false, any(vec2<bool>(false, false)), 61384i <= u_input.a.x), select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true))), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), select(vec3<bool>(all(vec2<bool>(true, false)), !any(vec4<bool>(false, true, true, true)), abs(u_input.a.x) >= _wgslsmith_sub_i32(u_input.a.x, -25356i)), vec3<bool>(true, true, true), !vec3<bool>(any(vec2<bool>(false, true)), true, true)), func_2());
    let var_2 = Struct_1(~4294967295u >> (countOneBits((var_0.x >> (var_0.x % 32u)) >> (var_0.x % 32u)) % 32u), max(1u, var_0.x ^ (u_input.b.x | 4294967295u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1197f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1088f, -938f))))));
    var var_3 = select(countOneBits(firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, u_input.a.x, -5154i), u_input.a)) ^ vec3<i32>(_wgslsmith_clamp_i32(4615i, u_input.a.x, -23193i), u_input.a.x, -u_input.a.x)), u_input.a, var_1.x);
    var var_4 = vec2<bool>(~max(~var_2.b, 1u | var_0.x) >= _wgslsmith_clamp_u32(u_input.b.x, var_0.x, 1u), var_1.x);
    return Struct_1(var_0.x, var_0.x, _wgslsmith_f_op_vec2_f32(var_2.c - var_2.c));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> vec3<bool> {
    return vec3<bool>(false, func_2().x, !(!all(vec4<bool>(true, false, false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(max(_wgslsmith_mod_i32(u_input.a.x, _wgslsmith_div_i32(31525i, 31137i)), 2147483647i), 1167i);
    var var_1 = !select(select(vec3<bool>(true, true, true), func_4(func_1(), vec3<f32>(2473f, -396f, 1133f), func_1()), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true)))), !vec3<bool>(u_input.a.x > -2147483647i, true, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -384f), _wgslsmith_f_op_f32(abs(-1494f))) == _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-257f)))));
    var_0 = _wgslsmith_sub_i32(-u_input.a.x, u_input.a.x);
    let var_2 = firstTrailingBit(u_input.a.xy);
    let var_3 = func_1();
    var var_4 = ~(~select(43759u, u_input.b.x, all(func_4(var_3, vec3<f32>(var_3.c.x, var_3.c.x, var_3.c.x), var_3))));
    var var_5 = _wgslsmith_sub_vec2_u32(u_input.b.ww, ~(~u_input.c));
    let var_6 = _wgslsmith_add_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.b, u_input.b), ~vec4<u32>(4294967295u, u_input.c.x, var_3.a, var_5.x)), _wgslsmith_sub_u32(var_5.x, _wgslsmith_mod_u32(var_3.a, u_input.b.x) << (var_5.x % 32u))), _wgslsmith_div_vec2_u32(u_input.b.xy, u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(u_input.c.x), select(_wgslsmith_add_vec2_i32(~var_2, abs(_wgslsmith_mult_vec2_i32(vec2<i32>(-33094i, -2147483647i), u_input.a.xx))), ~min(_wgslsmith_div_vec2_i32(vec2<i32>(var_2.x, 2957i), u_input.a.yy), select(var_2, u_input.a.yz, vec2<bool>(var_1.x, var_1.x))), any(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), !vec4<bool>(var_1.x, true, false, var_1.x), func_4(Struct_1(0u, var_3.b, vec2<f32>(var_3.c.x, 1202f)), vec3<f32>(1321f, var_3.c.x, -493f), Struct_1(var_3.a, var_5.x, var_3.c)).x))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_3.c.x, 1332f, var_3.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(2683f, -584f, var_3.c.x) - vec3<f32>(var_3.c.x, 337f, -2145f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-563f, var_3.c.x, var_3.c.x)), !vec3<bool>(var_1.x, var_1.x, true)))))));
}

