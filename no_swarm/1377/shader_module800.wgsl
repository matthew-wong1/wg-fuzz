struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(172f, vec2<u32>(4294967295u, 39484u), vec3<bool>(true, true, false)), Struct_1(112f, vec2<u32>(0u, 15359u), vec3<bool>(true, true, false)), Struct_1(1000f, vec2<u32>(23248u, 0u), vec3<bool>(true, true, false)), Struct_1(697f, vec2<u32>(12831u, 21248u), vec3<bool>(true, false, true)), Struct_1(172f, vec2<u32>(4294967295u, 4294967295u), vec3<bool>(false, false, true)), Struct_1(-386f, vec2<u32>(115437u, 48204u), vec3<bool>(true, true, true)), Struct_1(1344f, vec2<u32>(0u, 13407u), vec3<bool>(false, true, false)), Struct_1(-204f, vec2<u32>(19959u, 0u), vec3<bool>(true, true, false)), Struct_1(1119f, vec2<u32>(36504u, 0u), vec3<bool>(false, false, false)), Struct_1(458f, vec2<u32>(51773u, 6536u), vec3<bool>(true, false, true)), Struct_1(-1029f, vec2<u32>(8375u, 58021u), vec3<bool>(true, true, true)), Struct_1(1590f, vec2<u32>(67469u, 4294967295u), vec3<bool>(true, true, true)), Struct_1(416f, vec2<u32>(32731u, 38817u), vec3<bool>(true, true, true)), Struct_1(796f, vec2<u32>(76625u, 48230u), vec3<bool>(false, false, false)), Struct_1(-1119f, vec2<u32>(16484u, 11191u), vec3<bool>(false, true, false)), Struct_1(-1000f, vec2<u32>(1u, 37834u), vec3<bool>(true, false, false)), Struct_1(880f, vec2<u32>(0u, 30181u), vec3<bool>(true, true, false)), Struct_1(275f, vec2<u32>(16436u, 1u), vec3<bool>(false, false, false)), Struct_1(2703f, vec2<u32>(83723u, 0u), vec3<bool>(false, true, true)), Struct_1(-898f, vec2<u32>(9997u, 1u), vec3<bool>(false, true, true)), Struct_1(-474f, vec2<u32>(16394u, 50340u), vec3<bool>(true, true, true)), Struct_1(-111f, vec2<u32>(1u, 57506u), vec3<bool>(false, false, false)), Struct_1(-2098f, vec2<u32>(140u, 1u), vec3<bool>(false, false, true)), Struct_1(650f, vec2<u32>(29758u, 4294967295u), vec3<bool>(true, false, true)), Struct_1(2390f, vec2<u32>(7016u, 4294967295u), vec3<bool>(false, true, false)), Struct_1(223f, vec2<u32>(37151u, 0u), vec3<bool>(false, true, false)), Struct_1(-1751f, vec2<u32>(1u, 1u), vec3<bool>(false, true, true)), Struct_1(-214f, vec2<u32>(75115u, 0u), vec3<bool>(true, false, false)), Struct_1(-1037f, vec2<u32>(27924u, 33057u), vec3<bool>(false, true, true)));

var<private> global1: array<Struct_1, 2>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> vec4<i32> {
    global0 = array<Struct_1, 29>();
    let var_0 = vec3<i32>(u_input.d, -_wgslsmith_mult_i32(-u_input.b, u_input.b), 14429i);
    let var_1 = var_0;
    global1 = array<Struct_1, 2>();
    let var_2 = u_input.c;
    return -vec4<i32>(abs(var_1.x), _wgslsmith_dot_vec2_i32(~vec2<i32>(0i, -22569i), vec2<i32>(_wgslsmith_mult_i32(-1i, 0i), _wgslsmith_sub_i32(u_input.b, u_input.d))), var_1.x, abs(var_1.x));
}

fn func_3(arg_0: vec4<i32>) -> bool {
    var var_0 = !any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false));
    var var_1 = firstLeadingBit(arg_0.x);
    var var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1167f, -925f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1843f, -334f)))), u_input.a, vec3<bool>(true, true, true));
    let var_3 = select(select(select(select(!vec4<bool>(var_2.c.x, true, var_2.c.x, var_2.c.x), select(vec4<bool>(true, var_2.c.x, var_2.c.x, false), vec4<bool>(false, false, false, var_2.c.x), true), !var_2.c.x), !select(vec4<bool>(var_2.c.x, var_2.c.x, var_2.c.x, false), vec4<bool>(var_2.c.x, true, false, true), false), var_2.c.x), select(vec4<bool>(any(vec3<bool>(false, var_2.c.x, var_2.c.x)), any(vec3<bool>(false, true, var_2.c.x)), true, true), select(vec4<bool>(var_2.c.x, true, var_2.c.x, false), vec4<bool>(var_2.c.x, true, var_2.c.x, false), var_2.c.x), select(select(vec4<bool>(var_2.c.x, var_2.c.x, var_2.c.x, true), vec4<bool>(var_2.c.x, true, false, true), vec4<bool>(var_2.c.x, true, false, var_2.c.x)), !vec4<bool>(true, false, true, var_2.c.x), true)), (var_2.a <= -897f) && true), !select(select(select(vec4<bool>(false, var_2.c.x, false, var_2.c.x), vec4<bool>(var_2.c.x, var_2.c.x, var_2.c.x, false), vec4<bool>(false, true, true, var_2.c.x)), vec4<bool>(var_2.c.x, false, var_2.c.x, false), var_2.c.x), select(select(vec4<bool>(false, var_2.c.x, true, true), vec4<bool>(true, var_2.c.x, var_2.c.x, false), vec4<bool>(var_2.c.x, var_2.c.x, false, var_2.c.x)), vec4<bool>(var_2.c.x, var_2.c.x, var_2.c.x, true), vec4<bool>(true, true, true, true)), select(var_2.c.x, var_2.a <= -148f, var_2.a > var_2.a)), !(any(select(var_2.c.xy, vec2<bool>(false, var_2.c.x), vec2<bool>(var_2.c.x, var_2.c.x))) && !var_2.c.x));
    var var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(var_2.a, _wgslsmith_f_op_f32(step(560f, _wgslsmith_f_op_f32(abs(var_2.a)))))), -1319f, 609f));
    return !var_3.x;
}

fn func_1() -> f32 {
    global1 = array<Struct_1, 2>();
    let var_0 = global0[_wgslsmith_index_u32(1u, 29u)];
    var var_1 = global0[_wgslsmith_index_u32(firstLeadingBit(~(~var_0.b.x)), 29u)];
    let var_2 = func_3(min(reverseBits(select(vec4<i32>(u_input.b, 0i, -9541i, 1i), vec4<i32>(1i, -1i, 0i, 26784i), vec4<bool>(var_0.c.x, true, false, var_1.c.x)) << ((vec4<u32>(0u, 1u, var_1.b.x, 0u) | vec4<u32>(var_0.b.x, 4294967295u, 4294967295u, 0u)) % vec4<u32>(32u))), func_2()));
    var_1 = Struct_1(286f, vec2<u32>(_wgslsmith_add_u32(var_0.b.x, 0u) & ~4294967295u, 4294967295u) | ~u_input.a, select(select(var_0.c, var_0.c, true), vec3<bool>(any(!vec3<bool>(true, false, var_0.c.x)), (52428u << (u_input.a.x % 32u)) > firstLeadingBit(1u), any(!vec4<bool>(true, var_0.c.x, true, var_0.c.x))), var_0.c));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a - 1527f) * 318f)), 1349f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1874f, _wgslsmith_f_op_f32(1000f - var_0.a))) + var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, true, true);
    var var_1 = select(vec3<bool>(false, var_0.x, !var_0.x), select(vec3<bool>(!(u_input.d >= u_input.b), all(vec3<bool>(false, var_0.x, var_0.x)) != all(vec2<bool>(true, var_0.x)), var_0.x), !select(select(vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, true)), select(vec3<bool>(true, var_0.x, true), vec3<bool>(false, var_0.x, true), vec3<bool>(true, false, var_0.x)), var_0.x), var_0.x), false);
    var var_2 = -(~(-u_input.b));
    let var_3 = ~(-abs(vec2<i32>(u_input.d, _wgslsmith_mod_i32(44245i, u_input.d))));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(func_1()), u_input.a, select(vec3<bool>(true, true, true), select(select(vec3<bool>(var_1.x, var_1.x, var_1.x), select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, true, false)), select(vec3<bool>(var_0.x, false, true), vec3<bool>(var_1.x, true, true), vec3<bool>(true, true, false))), !select(vec3<bool>(var_0.x, var_1.x, var_1.x), vec3<bool>(true, true, true), false), (20930u ^ u_input.c) >= 10122u), any(select(vec2<bool>(false, false), var_0.yy, vec2<bool>(true, var_1.x))) && any(!vec4<bool>(true, var_1.x, var_1.x, false))));
    var var_5 = Struct_1(var_4.a, u_input.a, !select(select(select(var_4.c, var_4.c, var_4.c), vec3<bool>(var_0.x, var_0.x, var_4.c.x), select(var_4.c, vec3<bool>(false, var_0.x, false), vec3<bool>(false, true, true))), var_4.c, false));
    var var_6 = global0[_wgslsmith_index_u32(4294967295u, 29u)];
    let var_7 = !vec4<bool>(any(var_6.c), !(!(var_4.b.x <= u_input.c)), var_4.c.x != var_6.c.x, !(!(var_4.c.x || true)));
    var_2 = min(u_input.d, (_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-24759i, u_input.b, 1i), vec3<i32>(1i, 1i, u_input.b)), vec3<i32>(u_input.b, -80428i, 2147483647i)) ^ max(var_3.x, _wgslsmith_add_i32(var_3.x, var_3.x))) | ~(var_3.x << (~58769u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(1000f, vec3<u32>(40954u, u_input.a.x, var_4.b.x), _wgslsmith_add_vec4_i32(vec4<i32>(select(var_3.x << (var_5.b.x % 32u), 21510i | u_input.b, var_5.c.x), _wgslsmith_mult_i32(var_3.x, var_3.x & var_3.x), -_wgslsmith_div_i32(-1i, var_3.x), ~_wgslsmith_clamp_i32(u_input.d, 2147483647i, 2147483647i)), (-vec4<i32>(1i, u_input.d, -4037i, -25985i) ^ -vec4<i32>(var_3.x, -65224i, -2147483647i, 156i)) >> (abs(vec4<u32>(var_5.b.x, 18159u, var_5.b.x, 0u)) % vec4<u32>(32u))), _wgslsmith_sub_vec3_i32(func_2().xxy, countOneBits(vec3<i32>(func_2().x, ~u_input.b, 1i))), _wgslsmith_f_op_f32(min(var_6.a, var_6.a)));
}

