struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 12>;

var<private> global1: u32 = 0u;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> bool {
    global0 = array<vec3<f32>, 12>();
    global0 = array<vec3<f32>, 12>();
    var var_0 = vec3<u32>(9857u, 7965u, arg_0.d);
    var_0 = vec3<u32>(arg_0.c, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_0.x, arg_0.c, 44588u)), ~vec3<u32>(11329u, 20535u, 0u) | vec3<u32>(arg_0.c, var_0.x, var_0.x)), ~min(var_0.x, ~var_0.x)), _wgslsmith_add_u32(~(~(~4008u)), 0u));
    let var_1 = Struct_1(countOneBits(vec2<i32>(arg_0.a.x, reverseBits(_wgslsmith_sub_i32(arg_0.a.x, arg_0.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-697f, arg_0.b)))) - _wgslsmith_f_op_f32(floor(-489f))), 60237u, select(1u ^ (var_0.x >> (reverseBits(16316u) % 32u)), ~(~3301u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(20979u, 24642u), var_0.xz)), true), ~arg_0.e);
    return !any(vec4<bool>(!any(vec2<bool>(true, false)), all(vec3<bool>(true, false, false)), false, all(vec2<bool>(false, false))));
}

fn func_2(arg_0: vec3<i32>) -> f32 {
    global0 = array<vec3<f32>, 12>();
    var var_0 = true && func_3(Struct_1(vec2<i32>(~(-2147483647i), _wgslsmith_add_i32(37630i, u_input.a.x)), -659f, 1u, 0u, -vec2<i32>(arg_0.x, u_input.a.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1650f - 860f) + -1200f), 654f))) - -462f);
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: f32, arg_3: u32) -> vec3<bool> {
    var var_0 = vec4<i32>(firstLeadingBit(~_wgslsmith_add_i32(-80038i, u_input.a.x)), -2147483647i, abs(arg_1), -5700i) >> (vec4<u32>(max(reverseBits(arg_0.x), ~36470u), arg_0.x, arg_0.x, arg_0.x) % vec4<u32>(32u));
    let var_1 = Struct_1(u_input.a.zz, 563f, 7299u, abs(_wgslsmith_div_u32(min(57367u, 28533u), arg_3 | select(39839u, 31851u, false))), vec2<i32>(abs(i32(-1i) * -2147483647i) ^ _wgslsmith_dot_vec2_i32(var_0.wz, -u_input.a.yz), abs(-14031i)));
    let var_2 = var_1;
    global0 = array<vec3<f32>, 12>();
    let var_3 = !(~(~var_1.c) > 4294967295u);
    return vec3<bool>(func_3(Struct_1(min(vec2<i32>(arg_1, arg_1), var_1.a) ^ vec2<i32>(1i, var_1.e.x), _wgslsmith_f_op_f32(exp2(arg_2)), _wgslsmith_clamp_u32(20857u, 4294967295u, ~0u), var_1.c, min(firstTrailingBit(var_2.e), vec2<i32>(var_1.e.x, -1i)))), false, var_3 | !(!(arg_1 >= 1i)));
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_1) -> u32 {
    var var_0 = true;
    var var_1 = any(func_4(~(~firstTrailingBit(vec3<u32>(4294967295u, 0u, 0u))), 27312i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<i32>(arg_2.a.x, -1i, 1i)))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(397f)), _wgslsmith_f_op_f32(arg_0 * arg_2.b)))), _wgslsmith_mod_u32(~_wgslsmith_add_u32(arg_2.c, arg_2.d), arg_2.c << (_wgslsmith_add_u32(65481u, arg_2.c) % 32u))));
    global1 = arg_2.d;
    var var_2 = arg_2;
    let var_3 = arg_2;
    return ~var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(max(~4294967295u | func_1(-268f, vec3<f32>(399f, -452f, -311f), Struct_1(vec2<i32>(u_input.a.x, -1i), 1000f, 0u, 0u, vec2<i32>(0i, u_input.a.x))), 1u) | select(4294967295u, 1u, true), abs(reverseBits(~1u)));
    var var_1 = ~(~firstTrailingBit(_wgslsmith_div_vec3_u32(~vec3<u32>(var_0.x, 37825u, 44445u), vec3<u32>(9211u, var_0.x, var_0.x))));
    let var_2 = Struct_1(u_input.a.xx, -503f, _wgslsmith_mod_u32(55758u, var_0.x), ~4294967295u, u_input.a.yz);
    var var_3 = Struct_1(~u_input.a.zz, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_2.b)), _wgslsmith_f_op_f32(-579f - 1379f))), -2049f), ~countOneBits(~var_2.d), var_2.d << (~var_0.x % 32u), firstTrailingBit(_wgslsmith_mult_vec2_i32(~(vec2<i32>(2147483647i, var_2.e.x) & vec2<i32>(-2147483647i, 14838i)), _wgslsmith_mult_vec2_i32(u_input.a.yy, _wgslsmith_mod_vec2_i32(var_2.a, u_input.a.xy)))));
    var_3 = Struct_1(vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_add_i32(-21313i, u_input.a.x), -var_2.e.x), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -916f))), _wgslsmith_div_f32(_wgslsmith_div_f32(691f, 626f), var_2.b)), _wgslsmith_f_op_f32(floor(var_2.b))), abs(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_0.x << (2906u % 32u), var_1.x, var_2.c), _wgslsmith_clamp_u32(36394u, ~var_1.x, 4294967295u << (var_1.x % 32u)))), ~var_0.x, vec2<i32>(~(-max(u_input.a.x, u_input.a.x)), ~1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_sub_i32(~var_3.a.x, -2744i), -4960i), ~var_2.e.x);
}

