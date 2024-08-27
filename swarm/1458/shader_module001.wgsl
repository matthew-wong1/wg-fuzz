struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: bool = false;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: f32) -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1))), arg_1) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-632f, 676f) + vec2<f32>(-624f, arg_1)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-861f, 1000f) + vec2<f32>(arg_1, 1526f)))))), _wgslsmith_mod_vec4_i32(min(~vec4<i32>(u_input.c.x, -2147483647i, u_input.b, 0i), firstLeadingBit(vec4<i32>(1i, u_input.b, 1i, u_input.c.x))), vec4<i32>(select(u_input.b, u_input.c.x, true), u_input.c.x, -23616i, ~u_input.c.x)) >> (~vec4<u32>(0u, u_input.a ^ u_input.a, u_input.a & 19836u, ~u_input.a) % vec4<u32>(32u)));
    var var_1 = vec2<i32>(-47747i, -56022i ^ var_0.b.x);
    let var_2 = arg_0;
    var var_3 = vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, 54526u)), min(4294967295u, 26380u)), ~abs(vec2<u32>(u_input.a, 101937u))), 9938u, ~(~u_input.a), _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(36079u, 4294967295u, 4294967295u), vec3<u32>(u_input.a, u_input.a, u_input.a)), abs(u_input.a)), _wgslsmith_mult_u32(~1u, u_input.a)));
    var_3 = ~vec4<u32>(_wgslsmith_div_u32(u_input.a, 4294967295u), min(abs(u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(11534u, 28564u, 21833u), ~vec3<u32>(1u, 1u, 1u))), 0u, u_input.a);
    return var_0.b;
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: vec4<i32>) -> vec4<f32> {
    global0 = true;
    var var_0 = ~1u << (~(~5359u | ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_1, 1u), vec3<u32>(1u, u_input.a, 4294967295u))) % 32u);
    let var_1 = Struct_2(-608f, -247f);
    var var_2 = _wgslsmith_f_op_f32(-var_1.b);
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1167f);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(1506f, -1095f, -1154f, -1930f), vec4<f32>(var_1.b, var_1.b, -1000f, var_1.a)), vec4<f32>(var_1.a, var_1.b, 822f, var_1.b), vec4<bool>(true, true, true, false))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1541f, var_1.b, 123f, 553f))))) * vec4<f32>(453f, var_1.b, _wgslsmith_f_op_f32(ceil(2394f)), _wgslsmith_f_op_f32(ceil(var_1.a))));
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    var var_0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(2073f - 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), -795f, 1120f));
    let var_1 = Struct_2(1547f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x)) - var_0.a.x)));
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_4(Struct_4(vec4<i32>(-83826i, u_input.b, 24097i, u_input.c.x)), 53005u, func_3(arg_0.wyz, var_0.a.x)))))));
    let var_3 = _wgslsmith_f_op_f32(-838f - _wgslsmith_f_op_f32(max(var_1.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.x))))));
    var var_4 = select(select(arg_0, vec4<bool>(~u_input.a >= _wgslsmith_dot_vec2_u32(vec2<u32>(39976u, 0u), vec2<u32>(42027u, u_input.a)), true, abs(u_input.c.x) == u_input.c.x, false), arg_0.x), !select(vec4<bool>(false, false, true, any(vec4<bool>(arg_0.x, arg_0.x, false, true))), vec4<bool>(false, false, 0i == u_input.b, arg_0.x), !(!arg_0)), arg_0);
    return var_1.b;
}

fn func_1(arg_0: vec2<bool>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) - _wgslsmith_f_op_f32(func_2(vec4<bool>(true, true, arg_0.x, select(any(vec2<bool>(arg_0.x, arg_0.x)), true, arg_0.x && arg_0.x)))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-var_0), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, 1445f))));
    var var_2 = Struct_4(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.c.x), vec2<i32>(u_input.b, 26841i)), -(~u_input.c.x), -43643i), select(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 3313i, u_input.b, u_input.b), vec4<i32>(1i, u_input.c.x, 1i, u_input.c.x)), vec4<i32>(u_input.b, -2147483647i, 27336i, 0i)), _wgslsmith_add_vec4_i32(select(vec4<i32>(-1i, -2147483647i, -2147483647i, u_input.b), vec4<i32>(-7015i, 0i, u_input.b, u_input.b), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)), ~vec4<i32>(u_input.c.x, -35298i, u_input.b, u_input.b)), !all(arg_0))));
    var var_3 = 0u;
    return select(vec2<bool>(true, true), !select(select(!arg_0, arg_0, arg_0.x && false), select(vec2<bool>(arg_0.x, arg_0.x), arg_0, vec2<bool>(arg_0.x, false)), arg_0.x), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!func_1(select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(false, false), true)), func_1(vec2<bool>(false, true)), min(countOneBits(10477u & u_input.a), u_input.a) > u_input.a);
    var var_1 = abs(~_wgslsmith_mult_u32(1u, abs(1u) >> (u_input.a % 32u)));
    var_1 = 0u;
    var_1 = 1u;
    var var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1368f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2186f))), vec4<i32>(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -13516i, u_input.b, u_input.b), select(vec4<i32>(u_input.b, u_input.c.x, 1i, u_input.b), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -1i), vec4<bool>(true, true, var_0.x, var_0.x)))), firstLeadingBit(~(u_input.c.x >> (47992u % 32u))), _wgslsmith_mult_i32(u_input.c.x, ~(~u_input.c.x)), -(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, -31156i), vec2<i32>(1i, u_input.b)) << (_wgslsmith_clamp_u32(4294967295u, u_input.a, 35676u) % 32u))));
    var var_3 = Struct_4(vec4<i32>(-2147483647i, reverseBits(var_2.b.x), 0i, abs(~var_2.b.x)));
    global1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.a.x, _wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-var_2.a.x))))), 1u >> (firstLeadingBit(_wgslsmith_clamp_u32(~u_input.a, u_input.a ^ u_input.a, ~1u)) % 32u));
}

