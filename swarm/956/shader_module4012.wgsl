struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: f32,
    d: f32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<i32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<f32> {
    var var_0 = !global0.e.x;
    let var_1 = -_wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(~global1.x, u_input.b), u_input.b), u_input.b);
    global1 = ~max((vec2<i32>(-2147483647i, 2147483647i) >> (~global0.b.yz % vec2<u32>(32u))) << (u_input.a % vec2<u32>(32u)), ~countOneBits(-vec2<i32>(var_1, global1.x)));
    global0 = Struct_1(global0.a, global0.b, global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a.x))), !(!(!vec2<bool>(true, global0.e.x))));
    var var_2 = -firstLeadingBit(vec3<i32>(-52179i, countOneBits(u_input.b), global1.x));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -915f, global0.d)) + vec3<f32>(global0.a.x, 367f, _wgslsmith_f_op_f32(ceil(-394f))))));
}

fn func_2(arg_0: bool) -> vec3<f32> {
    let var_0 = -abs(abs(vec2<i32>(_wgslsmith_mult_i32(-26662i, u_input.b), u_input.b)));
    global1 = -vec2<i32>(~u_input.b, _wgslsmith_mod_i32(global1.x, _wgslsmith_dot_vec2_i32(var_0, vec2<i32>(var_0.x, global1.x))) | u_input.b);
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_3())))), vec3<u32>(~(~u_input.a.x) >> (abs(67115u) % 32u), select(u_input.a.x, abs(u_input.a.x), true), global0.b.x), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-540f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a.x)))), vec2<bool>(false, global0.e.x));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(func_3()), ~(~global0.b), global0.a.x, global0.d, !vec2<bool>(global0.e.x, true));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a - _wgslsmith_div_vec3_f32(var_1.a, var_1.a))))), _wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, var_1.b.x, 4294967295u), vec3<u32>(0u, ~4294967295u, ~u_input.a.x)) & global0.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2272f + var_1.a.x))))), _wgslsmith_f_op_f32(round(172f)), vec2<bool>(-global1.x > -min(var_0.x, 1i), true));
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_2.d), 1522f, _wgslsmith_f_op_f32(global0.a.x + var_2.c)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.a), _wgslsmith_f_op_vec3_f32(-var_2.a))))));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    global0 = Struct_1(arg_1.a, global0.b, 271f, global0.a.x, global0.e);
    let var_0 = global0.a.zy;
    var var_1 = arg_1;
    global1 = ~vec2<i32>(~firstLeadingBit(1i), _wgslsmith_mult_i32(~u_input.b, _wgslsmith_div_i32(abs(global1.x), u_input.b)));
    global1 = firstTrailingBit(select(vec2<i32>(u_input.b, ~0i) | select(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(arg_0, -73138i)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, arg_0), vec2<i32>(u_input.b, global1.x)), false), ~vec2<i32>(-arg_0, arg_0), vec2<bool>(true, true)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-508f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1000f))), vec3<u32>(_wgslsmith_div_u32(var_1.b.x, ~21923u | _wgslsmith_div_u32(u_input.a.x, u_input.a.x)), _wgslsmith_add_u32(4294967295u, 1u << (_wgslsmith_mult_u32(56054u, arg_1.b.x) % 32u)), reverseBits(18498u)), 1511f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec3_f32(func_2(all(vec4<bool>(false, global0.e.x, true, false)))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d * -937f)), var_1.e.x)), vec2<bool>(true, global0.e.x));
}

fn func_1() -> vec3<u32> {
    let var_0 = func_4(-82916i, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(select(global0.c, global0.a.x, global0.e.x)), _wgslsmith_f_op_f32(global0.c + -425f)) + _wgslsmith_f_op_vec3_f32(func_2(true))), global0.b, global0.a.x, _wgslsmith_f_op_vec3_f32(func_3()).x, select(select(select(global0.e, global0.e, true), vec2<bool>(true, global0.e.x), select(global0.e, vec2<bool>(global0.e.x, global0.e.x), global0.e.x)), vec2<bool>(global0.e.x, global0.e.x), !global0.e)));
    var var_1 = !(!(!vec3<bool>(all(var_0.e), any(vec3<bool>(global0.e.x, false, var_0.e.x)), var_0.e.x)));
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(var_0.a));
    let var_3 = select(vec4<i32>(-1i) * -vec4<i32>(1i, u_input.b, -1i, _wgslsmith_sub_i32(u_input.b, u_input.b)), select(firstTrailingBit(abs(-vec4<i32>(global1.x, u_input.b, u_input.b, -1i))), vec4<i32>(46018i, ~(-2147483647i), max(2147483647i, 0i), 0i >> (var_0.b.x % 32u)) >> (vec4<u32>(select(1u, 1u, global0.e.x), 3830u, ~0u, _wgslsmith_mod_u32(global0.b.x, var_0.b.x)) % vec4<u32>(32u)), any(vec2<bool>(true, true))), !(!(!any(vec2<bool>(true, var_1.x)))));
    var_1 = !(!vec3<bool>(all(!vec3<bool>(var_1.x, false, false)), true, !any(global0.e)));
    return ~_wgslsmith_sub_vec3_u32(~_wgslsmith_mod_vec3_u32(var_0.b, global0.b), vec3<u32>(global0.b.x, max(countOneBits(var_0.b.x), 0u), _wgslsmith_sub_u32(~43541u, max(22380u, var_0.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.a.x, 403f, global0.c)))), global0.a, !vec3<bool>(!global0.e.x, true, !global0.e.x))), _wgslsmith_add_vec3_u32(func_1(), max(~func_1(), reverseBits(global0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1479f - func_4(-1i, Struct_1(global0.a, vec3<u32>(0u, global0.b.x, u_input.a.x), -527f, global0.c, vec2<bool>(global0.e.x, false))).d), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-864f, global0.a.x)))) + _wgslsmith_f_op_f32(abs(global0.c))), _wgslsmith_f_op_f32(-global0.d), vec2<bool>(true, true));
    global1 = vec2<i32>(~_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.b, u_input.b << (44529u % 32u)), u_input.b), firstLeadingBit(min(_wgslsmith_dot_vec4_i32(~vec4<i32>(-37902i, 0i, -41416i, 12958i), abs(vec4<i32>(0i, -38494i, 0i, -59144i))), 0i >> (u_input.a.x % 32u))));
    let var_1 = vec3<bool>(!var_0.e.x, true, var_0.e.x);
    var var_2 = func_4(-_wgslsmith_div_i32(42366i, ~(-63797i)) << (~_wgslsmith_div_u32(~5702u, global0.b.x) % 32u), Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(var_0.a * global0.a), global0.a)), abs(abs(_wgslsmith_mod_vec3_u32(global0.b, vec3<u32>(global0.b.x, 11514u, 126787u)))), 1473f, 300f, select(vec2<bool>(true, u_input.a.x < 1u), vec2<bool>(all(global0.e), true), var_0.e.x)));
    var var_3 = vec2<bool>(true, !var_0.e.x);
    let var_4 = _wgslsmith_dot_vec3_i32(select(abs(max(vec3<i32>(global1.x, u_input.b, u_input.b), firstTrailingBit(vec3<i32>(25219i, global1.x, global1.x)))), vec3<i32>(-(~(-1i)), -min(2147483647i, -27442i), 0i), var_1), select(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global1.x, global1.x, u_input.b), vec3<i32>(1i, global1.x, global1.x)), ~vec3<i32>(2147483647i, -18342i, u_input.b)), vec3<i32>(global1.x, i32(-1i) * -6054i, reverseBits(43342i)), any(var_0.e)));
    let var_5 = func_4(~var_4, var_0);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-155f, var_2.a.x, -892f, var_5.d)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(541f, global0.d, var_5.d, 1406f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d, 1000f, 1000f, var_0.d)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-349f + 1741f) * global0.c), _wgslsmith_f_op_f32(250f * _wgslsmith_f_op_f32(var_5.a.x + var_2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(446f, 401f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_5.d, -1778f)) - _wgslsmith_f_op_f32(floor(var_0.c))))));
}

