struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
    c: Struct_2,
    d: vec3<bool>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: u32 = 0u;

var<private> global1: array<vec3<i32>, 1>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    var var_0 = vec4<bool>(!(!all(arg_0.wy) & all(arg_0)), all(select(arg_0.wz, select(!arg_0.yx, vec2<bool>(true, true), vec2<bool>(false, true)), arg_0.x)), true, false);
    return _wgslsmith_clamp_u32(~max(firstTrailingBit(~0u), 21009u), 8599u, ~63718u);
}

fn func_4(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = Struct_2(min(select(~vec4<u32>(63760u, arg_0.a, 4294967295u, arg_0.a), vec4<u32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), true), ~countOneBits(vec4<u32>(0u, arg_0.a, arg_0.a, 60495u))) << (vec4<u32>(abs(arg_0.a), _wgslsmith_sub_u32(51452u, ~arg_0.a), _wgslsmith_mult_u32(~4294967295u, firstLeadingBit(0u)), 1u) % vec4<u32>(32u)), Struct_1(_wgslsmith_div_u32(44638u, _wgslsmith_mod_u32(arg_0.a & arg_0.a, countOneBits(1u)))), arg_0, _wgslsmith_f_op_f32(-490f * _wgslsmith_f_op_f32(sign(1857f))), arg_0);
    let var_1 = Struct_3(Struct_1(var_0.a.x), countOneBits(func_3(select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false)), false))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d, 2837f)) <= var_0.d;
    var_2 = false;
    var_2 = !(any(vec3<bool>(true, true, false)) | !(-2701i == u_input.a)) & false;
    return vec4<bool>(false, all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), all(vec4<bool>(true, true, true, true)), true);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<u32>) -> u32 {
    var var_0 = !select(func_4(Struct_1(func_3(vec4<bool>(true, false, true, true)))), vec4<bool>(true, any(vec3<bool>(true, true, false)) && (u_input.a < 2147483647i), u_input.a > u_input.a, -496f != _wgslsmith_f_op_f32(trunc(1000f))), func_4(Struct_1(0u)));
    let var_1 = false;
    var_0 = vec4<bool>(all(func_4(Struct_1(~arg_0.x)).zyz), true, !(true | var_0.x), false);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1529f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-3038f * -1994f)))) - -233f) * _wgslsmith_f_op_f32(637f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-430f + 1f)))));
    global1 = array<vec3<i32>, 1>();
    return ~(~_wgslsmith_add_u32(_wgslsmith_sub_u32(1u, arg_0.x), ~(arg_0.x >> (arg_0.x % 32u))));
}

fn func_1() -> f32 {
    global0 = ~reverseBits(countOneBits(~1u));
    var var_0 = min(~vec3<u32>(0u, 1u, ~func_2(vec4<u32>(1u, 0u, 4294967295u, 70752u), vec3<u32>(4294967295u, 0u, 0u))), abs(~firstLeadingBit(vec3<u32>(4294967295u, 46743u, 1533u))));
    let var_1 = Struct_1(var_0.x);
    var_0 = ~vec3<u32>(4294967295u, 0u, ~_wgslsmith_clamp_u32(countOneBits(var_1.a), var_1.a, abs(var_0.x)));
    global0 = 4294967295u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-495f * -867f) + 1740f) + -1676f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1482f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(365f + _wgslsmith_f_op_f32(f32(-1f) * -408f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1785f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-431f + _wgslsmith_div_f32(163f, -1614f)), 1840f, true)) - -855f), _wgslsmith_f_op_f32(func_1()));
    let var_1 = 1i;
    let var_2 = _wgslsmith_mult_vec2_i32(min(_wgslsmith_sub_vec2_i32(min(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 28709i), vec2<i32>(u_input.a, 2147483647i)), -vec2<i32>(-7309i, u_input.a)), _wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(var_1, -2147483647i)), max(vec2<i32>(var_1, u_input.a), vec2<i32>(u_input.a, u_input.a)))), select(-vec2<i32>(1i, 1i), countOneBits(vec2<i32>(1i, 1i)), false)), _wgslsmith_div_vec2_i32(abs(firstTrailingBit(vec2<i32>(-63855i, 1i)) << (~vec2<u32>(15976u, 1u) % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(max(vec2<i32>(var_1, var_1), vec2<i32>(2147483647i, u_input.a)) ^ vec2<i32>(var_1, -23827i), reverseBits(~vec2<i32>(u_input.a, var_1)))));
    var var_3 = vec4<bool>(all(vec3<bool>(true, true, true)) && true, true, _wgslsmith_f_op_f32(floor(var_0.x)) >= _wgslsmith_f_op_f32(ceil(461f)), true);
    var var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_0, vec4<f32>(_wgslsmith_f_op_f32(var_0.x - 135f), 1823f, -392f, _wgslsmith_f_op_f32(abs(var_0.x))), all(var_3.yww)))), _wgslsmith_f_op_vec4_f32(-var_0), !select(!vec4<bool>(var_3.x, var_3.x, false, false), vec4<bool>(all(vec4<bool>(true, true, var_3.x, var_3.x)), true, !var_3.x, true), vec4<bool>(false, false, var_3.x, var_3.x && true))));
    var var_5 = Struct_4(var_4.ywx, var_4.x, Struct_2(vec4<u32>(countOneBits(29988u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 75959u, 100419u), vec3<u32>(2887u, 1u, 0u)), ~4294967295u, firstTrailingBit(4294967295u)) | vec4<u32>(min(36343u, 0u), 1u, 4294967295u, 1u), Struct_1(~min(38738u, 1u)), Struct_1(func_2(vec4<u32>(51346u, 4294967295u, 44047u, 32306u), vec3<u32>(0u, 4294967295u, 4294967295u)) << (~12034u % 32u)), var_4.x, Struct_1(40696u)), !var_3.zyz);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.c.a.x);
}

