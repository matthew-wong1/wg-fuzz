struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: u32,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: vec4<i32>,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_4(!all(vec4<bool>(true, true, true, true)), !(~(u_input.a.x & u_input.c.x) >= u_input.a.x), -vec4<i32>(reverseBits(0i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b.x, 1i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -2147483647i)), u_input.b.x, -1i));
    let var_1 = Struct_4(true, false, _wgslsmith_div_vec4_i32(vec4<i32>(select(var_0.c.x, 19585i, false) >> (~4294967295u % 32u), _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.b.x, -1731i), u_input.b.x), _wgslsmith_mult_i32(abs(-11136i), max(var_0.c.x, var_0.c.x)), -1i), -reverseBits(vec4<i32>(u_input.b.x, var_0.c.x, 14127i, var_0.c.x))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-542f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1267f)))));
    var var_3 = var_0;
    var_3 = Struct_4(any(vec4<bool>(true, true, false, !var_3.a)), false, vec4<i32>(1i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_3.c.x, firstTrailingBit(var_3.c.x), var_1.c.x), u_input.b.x), 17853i, var_0.c.x));
    return vec4<bool>(!all(vec4<bool>(true, var_0.b, var_0.a, !var_0.a)), var_3.a, true, false);
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec3<u32>) -> vec3<bool> {
    let var_0 = true;
    var var_1 = Struct_5(vec2<i32>(~_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(2147483647i, u_input.b.x)), u_input.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x), min(2147483647i, u_input.b.x)))));
    var var_2 = _wgslsmith_add_u32(0u, u_input.a.x << (~(~firstTrailingBit(arg_2.x)) % 32u));
    let var_3 = all(!func_3());
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, -830f))))), any(func_3().yxw));
    return select(vec3<bool>(var_3, true, !(_wgslsmith_f_op_f32(-1259f + -314f) >= var_4.a.x)), !vec3<bool>(all(!vec3<bool>(var_4.b, var_0, false)), !(var_3 == var_0), false), var_4.b);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = vec3<bool>(!arg_0.x, all(func_2(404f, ~_wgslsmith_sub_u32(u_input.a.x, 4294967295u), arg_1)), (-581f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)))) | true);
    var_0 = vec3<bool>(var_0.x & true, arg_0.x, var_0.x);
    var_0 = vec3<bool>(!(!(u_input.b.x < u_input.b.x) || arg_0.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(932f + _wgslsmith_f_op_f32(f32(-1f) * -753f)), _wgslsmith_f_op_f32(f32(-1f) * -1131f))) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(320f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1096f + 736f))))), true);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(240f, _wgslsmith_f_op_f32(-169f * _wgslsmith_div_f32(-1256f, -581f)), _wgslsmith_f_op_f32(trunc(2575f))))), false);
    var var_2 = var_1;
    return Struct_2(reverseBits(_wgslsmith_sub_vec4_u32(abs(~vec4<u32>(20456u, 4294967295u, u_input.a.x, u_input.c.x)), vec4<u32>(~arg_1.x, abs(arg_1.x), _wgslsmith_clamp_u32(4294967295u, arg_1.x, arg_1.x), 0u & u_input.c.x))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4) -> u32 {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-839f, 333f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-897f + -367f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -114f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-391f * 1000f), -323f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-381f)))), arg_1.a);
    var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-169f - var_0.a.x), var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-469f - var_0.a.x))), _wgslsmith_f_op_f32(sign(-108f))), !all(vec3<bool>(false, true, false)) || true);
    var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - 943f), _wgslsmith_f_op_f32(f32(-1f) * -638f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1747f * var_0.a.x)))), _wgslsmith_f_op_f32(-var_0.a.x)), any(!vec2<bool>(any(vec2<bool>(arg_1.a, true)), true & arg_1.a)));
    let var_1 = vec2<u32>(15401u, ~1u);
    var var_2 = var_0.a;
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-471f, -102f), vec2<f32>(517f, 850f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-492f, -1000f), vec2<f32>(627f, -2698f), false)))))));
    let var_1 = func_4(func_1(vec4<bool>(all(vec2<bool>(true, true)), false, !(-7270i == u_input.b.x), all(vec3<bool>(true, true, true))), countOneBits(vec3<u32>(u_input.c.x, u_input.a.x, 8913u) ^ vec3<u32>(u_input.c.x, u_input.c.x, 48572u)) & vec3<u32>(0u, _wgslsmith_mult_u32(55167u, u_input.c.x), _wgslsmith_clamp_u32(u_input.a.x, 7214u, u_input.a.x))), Struct_4(all(func_2(_wgslsmith_f_op_f32(select(403f, var_0.x, false)), u_input.c.x, u_input.c).zy), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(-1i, u_input.b.x, 0i, -42218i) & vec4<i32>(9123i, u_input.b.x, u_input.b.x, -2147483647i)) <= _wgslsmith_clamp_i32(select(-8326i, u_input.b.x, true), ~2147483647i, -21399i), -firstLeadingBit(~vec4<i32>(-1i, 1i, u_input.b.x, -1i))));
    var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, -2152f), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 854f) * vec2<f32>(var_0.x, var_0.x))))))));
    var var_2 = 1i;
    var_2 = _wgslsmith_div_i32(min(u_input.b.x, _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, -16807i, min(u_input.b.x, 0i) & (u_input.b.x ^ u_input.b.x))), ~_wgslsmith_sub_i32(u_input.b.x, -2147483647i));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, -1806f, false))))) + var_0.x);
    var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(abs(var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_i32(~abs(u_input.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, u_input.b.x, u_input.b.x) ^ vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, 46543i, 0i, 0i) | vec4<i32>(u_input.b.x, 33590i, -1i, 2147483647i)), abs(_wgslsmith_sub_i32(-2147483647i, 0i))));
}

