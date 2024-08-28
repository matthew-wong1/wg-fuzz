struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-15355i, 1761i, 1i, -32159i);

var<private> global1: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<u32>) -> f32 {
    let var_0 = 3976u;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -201f), _wgslsmith_f_op_f32(max(324f, _wgslsmith_f_op_f32(-arg_0.x))), all(vec3<bool>(true, true, false)) || true))), -884f);
    let var_2 = _wgslsmith_f_op_f32(arg_0.x + arg_0.x);
    var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x)))) - _wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1652f, _wgslsmith_f_op_f32(-var_2)))));
    var var_3 = 64363u;
    return _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-307f, _wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(-var_1.a))), _wgslsmith_f_op_f32(2007f + 458f), false));
}

fn func_2() -> f32 {
    var var_0 = Struct_3(global0.zy, ~3735u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-340f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-899f, 2609f) + _wgslsmith_f_op_f32(822f - -926f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-366f * 793f))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1380f, 160f))), u_input.a ^ vec2<u32>(u_input.a.x, 62733u)))))));
    let var_1 = 1u ^ firstLeadingBit(u_input.a.x);
    global0 = vec4<i32>(select(-44810i, -_wgslsmith_clamp_i32(~(-2147483647i), ~0i, -308i), !((var_0.b == 54084u) & true)), var_0.a.x, i32(-1i) * -53315i, ~firstTrailingBit(min(_wgslsmith_clamp_i32(37940i, 21477i, -1i), _wgslsmith_sub_i32(global0.x, global0.x))));
    var_0 = Struct_3(_wgslsmith_add_vec2_i32(var_0.a, countOneBits(-_wgslsmith_div_vec2_i32(vec2<i32>(47248i, var_0.a.x), global0.yy))), u_input.a.x >> (~u_input.a.x % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))));
    global0 = (firstLeadingBit(reverseBits(abs(vec4<i32>(var_0.a.x, var_0.a.x, 1i, -2147483647i)))) | ~vec4<i32>(~global0.x, 1i, _wgslsmith_add_i32(global0.x, 55549i), var_0.a.x & var_0.a.x)) ^ abs(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_add_i32(1i, -21183i), _wgslsmith_div_i32(global0.x, 37679i), global0.x >> (var_1 % 32u), _wgslsmith_clamp_i32(var_0.a.x, var_0.a.x, -17368i)), -vec4<i32>(2147483647i, 3668i, global0.x, -2147483647i)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(933f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(200f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-211f)))))), -1000f));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: f32, arg_3: Struct_2) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_2()), 1704f);
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), arg_2);
    var_0 = Struct_1(arg_2, 1309f);
    let var_1 = arg_3;
    let var_2 = arg_3.a.x;
    return _wgslsmith_f_op_f32(-var_2);
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    global1 = 2259f;
    global1 = -457f;
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-283f, -1000f, _wgslsmith_f_op_f32(-427f - 362f)))));
    var var_1 = 0i;
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(abs(var_0.x))), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec2<bool>(true, true), ~vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(func_2()), Struct_2(vec2<f32>(var_0.x, var_0.x), vec4<i32>(arg_0.x, arg_0.x, global0.x, arg_0.x)))) - -1000f)));
    return Struct_1(_wgslsmith_f_op_f32(1000f - 464f), _wgslsmith_f_op_f32(max(1637f, -271f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~vec4<i32>(global0.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), u_input.a) % 32u), global0.x, global0.x, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(global0.x, 2147483647i), ~1i, ~global0.x)));
    global0 = abs(_wgslsmith_add_vec4_i32(abs(vec4<i32>(2147483647i, abs(0i), global0.x, -2147483647i)), _wgslsmith_add_vec4_i32(-vec4<i32>(40078i, global0.x, global0.x, 1i) << (vec4<u32>(1u, 4294967295u, 3085u, 0u) % vec4<u32>(32u)), -(vec4<i32>(global0.x, 12735i, global0.x, 0i) >> (vec4<u32>(u_input.a.x, 1u, 32367u, 11990u) % vec4<u32>(32u))))));
    global1 = _wgslsmith_f_op_f32(-1140f + _wgslsmith_f_op_f32(step(var_0.a, -849f)));
    var var_1 = var_0;
    let var_2 = vec2<u32>(min(~0u, reverseBits(0u)), ~u_input.a.x);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(679f, 559f)), _wgslsmith_f_op_f32(abs(-1559f)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_div_f32(440f, var_0.a), 1366f)))) + var_0.a);
    let var_3 = select(vec4<bool>(!(var_0.b > _wgslsmith_f_op_f32(floor(216f))), false, true, all(vec4<bool>(true, true, true, true))), select(select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true))), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), true), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true))), !select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true)), select(vec4<bool>(all(vec2<bool>(false, true)), any(vec3<bool>(true, true, false)), true, all(vec2<bool>(true, true))), vec4<bool>(select(true, false, true), true, true, any(vec2<bool>(true, true))), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)))), false);
    var var_4 = var_0;
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(285f * _wgslsmith_f_op_f32(ceil(var_0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5) - var_0.b))), 18673i, 380f, _wgslsmith_clamp_i32(1i, _wgslsmith_mult_i32(abs(global0.x), ~(21665i & global0.x)), global0.x >> (max(~u_input.a.x, u_input.a.x) % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, -1373f, -254f, -871f))))));
}

