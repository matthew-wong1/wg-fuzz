struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec3<f32>,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<u32>(4294967295u, 4294967295u), vec3<f32>(-1208f, 2220f, 1000f), vec4<f32>(-1429f, -978f, -1529f, 1298f));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<u32>) -> vec3<u32> {
    global0 = Struct_3(~abs(arg_0), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(global0.c.x, 430f, global0.b.x), vec3<f32>(802f, global0.c.x, global0.b.x)), global0.b, true)) - vec3<f32>(144f, 279f, global0.c.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.c) - global0.c));
    global0 = Struct_3(firstLeadingBit(firstTrailingBit(_wgslsmith_add_vec2_u32(arg_0, vec2<u32>(3622u, 37685u)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -747f)), 470f, 1296f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-122f, global0.c.x), global0.c.x, global0.b.x))), vec4<f32>(global0.b.x, -110f, global0.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-391f * global0.b.x)))));
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(global0.c)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, global0.b.x, global0.b.x, -152f) * vec4<f32>(1826f, global0.c.x, -986f, global0.c.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, global0.b.x, 466f, global0.c.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1092f, global0.c.x, _wgslsmith_f_op_f32(step(-180f, global0.b.x)), global0.b.x)))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_u32(4294967295u, 1u), ~(-24401i), vec4<f32>(_wgslsmith_div_f32(573f, _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-global0.b.x), 499f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(617f)))), -(~(~12037i)), _wgslsmith_f_op_f32(abs(-479f))), false, Struct_1(4294967295u, ~abs(-u_input.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(global0.c.x + -123f))), -firstLeadingBit(u_input.c & 22951i), _wgslsmith_f_op_f32(-447f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 479f)))), Struct_1(49429u, -_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, u_input.c), u_input.b.xw), u_input.b.yw), vec4<f32>(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + -278f)), _wgslsmith_f_op_f32(f32(-1f) * -824f), _wgslsmith_f_op_f32(-global0.b.x)), ~min(2147483647i, u_input.c) | u_input.b.x, var_0.x));
    var var_2 = u_input.b;
    return vec3<u32>(_wgslsmith_div_u32(arg_0.x, ~4294967295u >> (abs(~arg_0.x) % 32u)), u_input.d, ~global0.a.x);
}

fn func_2(arg_0: vec3<f32>, arg_1: f32) -> f32 {
    var var_0 = u_input.b.yyx;
    let var_1 = (~(vec3<i32>(-1i) * -vec3<i32>(-1i, -40933i, 1i)) | -u_input.b.xyw) << (func_3(_wgslsmith_sub_vec2_u32(vec2<u32>(global0.a.x, 18492u), global0.a)) % vec3<u32>(32u));
    let var_2 = u_input.b.x;
    let var_3 = Struct_2(Struct_1(u_input.d, abs(i32(-1i) * -var_2), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1339f, arg_0.x, arg_1, global0.c.x)), _wgslsmith_f_op_vec4_f32(global0.c * vec4<f32>(-1119f, -1108f, arg_1, 1117f)), vec4<bool>(true, true, true, false)))), firstLeadingBit(_wgslsmith_mod_i32(var_2, var_2)) | var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.x * global0.c.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x + arg_1) + _wgslsmith_div_f32(-391f, 114f)))), any(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), false)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), true), vec4<bool>(false, true, true, true), any(vec2<bool>(false, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(false, true, true, false)))), Struct_1(0u >> (1u % 32u), _wgslsmith_mult_i32(~(~var_0.x), _wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.b.x, var_0.x, var_2), _wgslsmith_mult_i32(-56752i, u_input.b.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(global0.c + vec4<f32>(-2747f, -1090f, global0.b.x, global0.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, arg_0.x, global0.c.x, arg_0.x) + vec4<f32>(1220f, arg_1, arg_0.x, global0.b.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, arg_1, arg_0.x, 138f))), -20065i, _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.b.x, -306f)) * _wgslsmith_f_op_f32(max(arg_1, arg_1))))), Struct_1(u_input.d, _wgslsmith_div_i32(var_0.x, ~var_2), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.c.x))), 1f, _wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_f_op_f32(exp2(arg_1))), -_wgslsmith_clamp_i32(abs(13658i), ~var_1.x, u_input.c), global0.c.x));
    return -2679f;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_5, arg_2: u32) -> f32 {
    let var_0 = ~firstLeadingBit(vec2<u32>((4294967295u ^ global0.a.x) >> (~global0.a.x % 32u), arg_1.a.a.x << (u_input.d % 32u)));
    var var_1 = _wgslsmith_f_op_f32(-arg_1.a.b.x);
    var var_2 = Struct_2(Struct_1(1u, firstTrailingBit(select(u_input.b.x, arg_0.c.x, true)) & ~(u_input.b.x & 1i), _wgslsmith_f_op_vec4_f32(-arg_0.e.a.c), _wgslsmith_add_i32(firstTrailingBit(-45464i) >> (~global0.a.x % 32u), -u_input.c & ~0i), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.e.a.c.x, -687f, -607f)), _wgslsmith_f_op_f32(select(-804f, -1049f, arg_0.e.b)))), -1024f))), true, Struct_1(~0u, _wgslsmith_mod_i32(-countOneBits(-32417i), u_input.c), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.e.a.e), 817f, _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(max(288f, -483f)), arg_1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.e.a.c.x + arg_1.a.c.x) + 1f)), -34742i, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(-global0.b), arg_1.a.b.x))), arg_0.e.a);
    var_2 = Struct_2(var_2.c, arg_0.c.x != _wgslsmith_div_i32(~(-3898i) | u_input.c, _wgslsmith_mod_i32(_wgslsmith_sub_i32(arg_0.c.x, 13594i), ~u_input.b.x)), Struct_1(~(~(~1u)), -1i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.a.c - _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a.c.x, global0.b.x, 555f, var_2.d.c.x), var_2.a.c)), vec4<f32>(arg_0.d.x, _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(round(var_2.c.c.x)), _wgslsmith_f_op_f32(var_2.c.e * arg_0.e.d.e))), -(~abs(-8324i)), arg_1.a.b.x), arg_0.e.c);
    let var_3 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(190f, -279f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.x), var_2.c.c.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x * global0.c.x))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(var_2.a.c, arg_0.e.a.c, arg_0.e.b)))) + arg_0.e.c.c), global0.c), !select(select(select(vec4<bool>(true, arg_0.e.b, true, arg_0.e.b), vec4<bool>(true, arg_0.e.b, arg_0.e.b, false), false), !vec4<bool>(true, arg_1.b, arg_1.b, arg_0.e.b), arg_0.e.b == false), vec4<bool>(all(vec4<bool>(var_2.b, true, arg_1.b, false)), !var_2.b, any(vec2<bool>(arg_0.e.b, arg_0.e.b)), !var_2.b), !select(vec4<bool>(true, true, arg_1.b, var_2.b), vec4<bool>(var_2.b, false, true, false), arg_1.b))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(275f, arg_0.d.x))))) - var_3.x) * var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(global0.a, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -471f), _wgslsmith_f_op_f32(func_1(Struct_4(4141i, vec2<f32>(global0.b.x, 1009f), vec2<i32>(u_input.b.x, 29299i), global0.c.zzw, Struct_2(Struct_1(15457u, u_input.c, global0.c, u_input.b.x, global0.b.x), true, Struct_1(u_input.d, 0i, vec4<f32>(global0.c.x, global0.c.x, 194f, global0.c.x), u_input.c, global0.c.x), Struct_1(global0.a.x, 0i, global0.c, u_input.c, global0.c.x))), Struct_5(Struct_3(global0.a, vec3<f32>(1066f, 544f, global0.b.x), vec4<f32>(2030f, 135f, -1356f, -631f)), true), 4294967295u)), global0.b.x))), global0.c.xyw)), vec4<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.c.x, global0.b.x)))), global0.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(Struct_4(-50072i, global0.c.wy, u_input.b.wy, vec3<f32>(139f, -447f, -1220f), Struct_2(Struct_1(0u, 800i, global0.c, -2147483647i, global0.c.x), true, Struct_1(global0.a.x, 1i, vec4<f32>(430f, 256f, global0.b.x, global0.b.x), u_input.c, global0.c.x), Struct_1(global0.a.x, u_input.c, global0.c, u_input.b.x, global0.c.x))), Struct_5(Struct_3(global0.a, global0.b, vec4<f32>(-351f, global0.c.x, global0.c.x, -358f)), true), u_input.a))))));
    let var_0 = vec3<i32>(_wgslsmith_sub_i32(-2147483647i, -32242i << (_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a, 46677u, 52046u, 20905u)), min(vec4<u32>(1u, global0.a.x, 1u, u_input.a), vec4<u32>(global0.a.x, 0u, global0.a.x, 0u))) % 32u)), -u_input.c, select(2147483647i, ~(-u_input.c), false));
    var var_1 = vec3<bool>(true, select(-u_input.b.x >> (1u % 32u), select(-u_input.b.x, abs(-35563i), true), any(vec4<bool>(false, false, false, false))) > (u_input.b.x << ((0u | (0u >> (global0.a.x % 32u))) % 32u)), select(select(false, !all(vec2<bool>(false, false)), _wgslsmith_dot_vec2_i32(u_input.b.yz, var_0.xy) == 1i), any(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true)))), 1u >= ~(global0.a.x << (u_input.d % 32u))));
    let var_2 = Struct_1(0u, -2147483647i, vec4<f32>(global0.b.x, -310f, -596f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -271f) + _wgslsmith_f_op_f32(select(global0.b.x, -712f, true)))), u_input.c, _wgslsmith_f_op_f32(global0.b.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-562f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.c.x), global0.b.x)))));
    let var_3 = false;
    let var_4 = max(vec2<i32>(~(countOneBits(var_0.x) & -2147483647i), var_0.x), u_input.b.yw);
    let var_5 = Struct_5(Struct_3(~(~vec2<u32>(1u, 1u)), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-186f, global0.c.x)))), -145f, _wgslsmith_f_op_f32(-global0.c.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.c * var_2.c) + vec4<f32>(global0.c.x, -250f, -2590f, global0.c.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-302f - -935f) * _wgslsmith_f_op_f32(-global0.c.x))) >= global0.b.x);
    global0 = var_5.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(_wgslsmith_div_u32(0u, ~u_input.d), firstLeadingBit(min(4294967295u, 92977u)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, global0.a.x, u_input.a), vec4<u32>(38754u, var_5.a.a.x, u_input.a, var_5.a.a.x)) << (min(11737u, 112524u) % 32u)) << (_wgslsmith_sub_u32(_wgslsmith_add_u32(18983u << (u_input.a % 32u), 88475u), _wgslsmith_mult_u32(max(1u, var_2.a), global0.a.x)) % 32u));
}

