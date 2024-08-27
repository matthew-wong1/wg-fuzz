struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: vec2<f32>) -> u32 {
    let var_0 = vec4<f32>(377f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -804f) * -517f), _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(316f - arg_1.x)))))), _wgslsmith_f_op_f32(arg_1.x + -535f));
    let var_1 = !vec4<bool>(true, any(select(vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), true)), u_input.a >= _wgslsmith_mult_i32(~u_input.a, u_input.a), true);
    var var_2 = ~_wgslsmith_mod_u32(~arg_0, ~_wgslsmith_sub_u32(u_input.c, max(35012u, 1u)));
    var_2 = _wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, u_input.c), u_input.c);
    var var_3 = Struct_1(any(select(select(var_1.zzx, var_1.yzy, var_1.x), var_1.wyx, var_1.wxx)), min(vec2<i32>(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -1i, -2147483647i, u_input.b), ~vec4<i32>(10940i, 2147483647i, u_input.b, u_input.a))), vec2<i32>(_wgslsmith_sub_i32(2147483647i, u_input.b), min(select(u_input.a, 27980i, var_1.x), ~44894i))));
    return _wgslsmith_mod_u32(~firstTrailingBit(min(_wgslsmith_mod_u32(u_input.c, 35149u), u_input.c >> (arg_0 % 32u))), _wgslsmith_dot_vec3_u32(vec3<u32>(abs(~1u), firstTrailingBit(1u), abs(arg_0)), select(_wgslsmith_sub_vec3_u32(select(vec3<u32>(40975u, u_input.c, u_input.c), vec3<u32>(u_input.c, 1u, 45916u), true), abs(vec3<u32>(0u, arg_0, 0u))), vec3<u32>(~u_input.c, 372u << (1u % 32u), firstLeadingBit(arg_0)), any(var_1.xx))));
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = vec4<u32>(abs(~u_input.c), ~(~(~u_input.c)), func_3(127275u, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1971f, 1276f), -1378f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(474f, 942f)))))), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(0u, 1u)) << (~0u % 32u)));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1639f, arg_0.a)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-744f + _wgslsmith_f_op_f32(f32(-1f) * -1193f)), 1f)))));
    var_1 = _wgslsmith_f_op_f32(-912f * 203f);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1739f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-329f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-171f, _wgslsmith_f_op_f32(round(-1668f)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-342f - 1618f))))));
    var var_2 = arg_0;
    return select(vec2<bool>(any(vec4<bool>(true, select(true, true, arg_0.a), true, !arg_0.a)), var_2.a), vec2<bool>(~_wgslsmith_add_u32(u_input.c, var_0.x) > _wgslsmith_add_u32(_wgslsmith_clamp_u32(4638u, var_0.x, var_0.x), ~u_input.c), true), select(vec2<bool>(!(!arg_0.a), !all(vec2<bool>(true, false))), select(select(select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(var_2.a, true), vec2<bool>(true, false)), vec2<bool>(true, true), true), vec2<bool>(true, false), vec2<bool>(u_input.c >= var_0.x, any(vec3<bool>(arg_0.a, true, true)))), !select(!vec2<bool>(arg_0.a, arg_0.a), !vec2<bool>(false, var_2.a), all(vec4<bool>(var_2.a, true, var_2.a, arg_0.a)))));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: vec2<u32>) -> i32 {
    var var_0 = Struct_1(!any(!func_2(Struct_1(arg_1.x, vec2<i32>(u_input.b, 36023i)))), -_wgslsmith_clamp_vec2_i32(~(-vec2<i32>(2147483647i, -2147483647i)), vec2<i32>(1i, -2147483647i << (arg_0 % 32u)), vec2<i32>(~2269i, countOneBits(u_input.b))));
    var var_1 = i32(-1i) * -u_input.b;
    let var_2 = arg_1.x;
    var_0 = Struct_1(true, vec2<i32>(var_0.b.x, 1i));
    return firstLeadingBit(-8608i);
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = 1000f;
    var var_1 = vec2<u32>(_wgslsmith_mult_u32(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(4294967295u, u_input.c), u_input.c, 4294967295u, u_input.c), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.c, u_input.c, 4294967295u), vec4<u32>(u_input.c, u_input.c, 0u, 0u), vec4<u32>(48602u, u_input.c, 43185u, 49802u)), vec4<u32>(u_input.c, 42730u, u_input.c, u_input.c) >> (vec4<u32>(u_input.c, u_input.c, u_input.c, 13328u) % vec4<u32>(32u)), true))), ~u_input.c);
    let var_2 = arg_2;
    let var_3 = var_1.x;
    var var_4 = Struct_1(!var_2.a & !arg_2.a, var_2.b);
    return Struct_1(!(func_2(arg_2).x || true), min(vec2<i32>(-2245i, _wgslsmith_mod_i32(var_2.b.x, -6853i) & u_input.b), var_4.b << (vec2<u32>(abs(u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(106461u, 67315u, var_1.x, 43497u), vec4<u32>(var_1.x, var_1.x, var_1.x, 35692u))) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-394f))), 906f, 1f);
    let var_1 = func_4(vec4<bool>(true, true, any(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-309f, var_0.x)) >= 1000f), var_0.x, Struct_1(select(true, select(false, false, true) || true, u_input.c < ~1u), _wgslsmith_mod_vec2_i32(vec2<i32>(func_1(52811u, vec2<bool>(true, true), vec2<u32>(u_input.c, u_input.c)), -u_input.b), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, 32351i), vec2<i32>(u_input.b, -22783i) | vec2<i32>(u_input.b, 1i)))));
    var var_2 = vec3<bool>(false, var_1.a, false);
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -336f), -1691f, var_0.x, _wgslsmith_f_op_f32(round(var_0.x)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1603f, -286f, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(883f, -2628f, 1089f, 1551f))), var_2.x)))));
    var var_4 = vec4<i32>(-1i) * -(abs(vec4<i32>(var_1.b.x, 48392i, var_1.b.x, var_1.b.x)) ^ reverseBits(abs(vec4<i32>(-382i, var_1.b.x, -1445i, var_1.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~11385u), _wgslsmith_f_op_f32(floor(var_3.x)), ~var_4.xxw);
}

