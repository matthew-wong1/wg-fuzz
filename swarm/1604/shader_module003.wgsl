struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec2<u32>,
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

var<private> global0: array<Struct_2, 10>;

var<private> global1: array<vec4<i32>, 9> = array<vec4<i32>, 9>(vec4<i32>(2147483647i, 0i, 2147483647i, -43364i), vec4<i32>(22251i, 1i, 2147483647i, 17983i), vec4<i32>(-10109i, i32(-2147483648), 1i, -1i), vec4<i32>(37856i, 36386i, 4660i, 11091i), vec4<i32>(21644i, 1i, 2147483647i, 2147483647i), vec4<i32>(-8279i, 2147483647i, i32(-2147483648), 2147483647i), vec4<i32>(-1i, 0i, i32(-2147483648), 0i), vec4<i32>(i32(-2147483648), -29505i, -23138i, -51037i), vec4<i32>(1i, -1i, -1i, 1i));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec4<u32>) -> f32 {
    return arg_1.b;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_5(1i, Struct_2(true & (0u >= firstLeadingBit(u_input.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.a)) - -1240f) + _wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(func_3(arg_0.a, Struct_2(true, arg_0.a, vec4<i32>(-1i, 21258i, 2147483647i, 2147483647i)), u_input.d)))), global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(1u, u_input.a.x), 9u)]), _wgslsmith_dot_vec3_i32(vec3<i32>(-11722i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(1i, -1i), vec2<i32>(2147483647i, -30717i)), vec2<i32>(2147483647i, 0i)), ~_wgslsmith_sub_i32(1i, 1i)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(4538i, -19298i), min(vec2<i32>(-1i, 17888i), vec2<i32>(20387i, -2147483647i))), 1i, -firstLeadingBit(34167i))));
    var var_1 = 4510u;
    let var_2 = any(vec2<bool>(true, true));
    var var_3 = select(select(vec4<bool>(var_2, var_2, (var_2 & false) & (var_2 & false), !var_0.b.a), !vec4<bool>(var_2, var_2, var_0.a > -1i, all(vec2<bool>(var_0.b.a, true))), var_2), !select(select(!vec4<bool>(false, var_0.b.a, var_2, var_0.b.a), vec4<bool>(var_2, false, var_2, false), true), select(!vec4<bool>(true, var_0.b.a, false, var_2), vec4<bool>(var_0.b.a, var_0.b.a, var_2, var_2), all(vec3<bool>(var_2, true, false))), select(!vec4<bool>(false, var_0.b.a, var_2, var_0.b.a), vec4<bool>(var_2, true, var_0.b.a, false), vec4<bool>(false, true, true, var_0.b.a))), select(4294967295u > arg_0.c.x, !(!var_2 || true), any(vec2<bool>(var_2, var_0.b.a)) || false));
    var var_4 = Struct_4(~(~(~firstLeadingBit(vec3<u32>(u_input.d.x, arg_0.b.x, 1u)))), reverseBits(firstTrailingBit(var_0.b.c.ww ^ vec2<i32>(2147483647i, 294i)) << (_wgslsmith_mod_vec2_u32(abs(vec2<u32>(arg_0.b.x, u_input.c.x)), arg_0.b.xx) % vec2<u32>(32u))));
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: i32, arg_3: Struct_2) -> f32 {
    var var_0 = func_2(arg_0);
    let var_1 = Struct_5(abs(firstTrailingBit(_wgslsmith_clamp_i32(abs(-1i), arg_3.c.x, 36266i))), Struct_2(true, arg_3.b, _wgslsmith_div_vec4_i32(~select(global1[_wgslsmith_index_u32(36653u, 9u)], arg_3.c, arg_3.a), global1[_wgslsmith_index_u32(abs(49967u), 9u)])), ~_wgslsmith_dot_vec3_i32(min(arg_3.c.wwz, countOneBits(vec3<i32>(-1i, -1i, arg_2))), arg_3.c.yzx));
    var_0 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(trunc(var_1.b.b));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1551f, -1489f))), vec2<f32>(var_0.a, -701f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, 826f)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1870f, var_0.a) * vec2<f32>(var_2, 930f))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.b.b), _wgslsmith_f_op_f32(f32(-1f) * -230f)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1147f, 393f)), _wgslsmith_f_op_f32(-var_2), all(vec4<bool>(var_1.b.a, false, false, arg_3.a)))))) + _wgslsmith_f_op_f32(select(arg_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2246f + var_3.x)), var_2), all(!(!vec4<bool>(true, arg_3.a, arg_3.a, arg_3.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1476f, -662f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(920f, -894f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1730f, -421f), vec2<f32>(-885f, 843f)))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(-899f, vec4<u32>(4294967295u, u_input.e.x, u_input.a.x, 27298u), u_input.a), vec4<u32>(u_input.b.x, u_input.a.x, 4294967295u, 4294967295u), 0i, Struct_2(true, 1513f, global1[_wgslsmith_index_u32(1u, 9u)])))), _wgslsmith_f_op_f32(1386f * _wgslsmith_div_f32(1265f, 949f)))));
    let var_1 = vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 0i, 1i), min(vec3<i32>(36848i, -57235i, -1i), vec3<i32>(45698i, -1i, 1i)), abs(vec3<i32>(1169i, -2147483647i, -46535i))), vec3<i32>(1i, 1i, 1i));
    global1 = array<vec4<i32>, 9>();
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, var_0.x))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(func_2(func_2(Struct_1(var_0.x, u_input.d, vec4<u32>(64638u, 6732u, u_input.d.x, u_input.e.x)))), _wgslsmith_add_vec4_u32(u_input.d, vec4<u32>(u_input.a.x, u_input.d.x, 22333u, u_input.b.x)), 2147483647i << (u_input.d.x % 32u), global0[_wgslsmith_index_u32(u_input.a.x, 10u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x))))));
    var var_3 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-706f, var_0.x, -816f))))), vec3<f32>(595f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(612f, 132f) - -216f), -115f), !(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false)))), u_input.b.x);
}

