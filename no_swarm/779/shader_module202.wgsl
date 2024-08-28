struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

var<private> global1: array<bool, 29> = array<bool, 29>(true, true, false, false, false, true, true, false, false, false, false, true, true, false, true, true, false, true, false, true, false, false, false, true, false, false, true, true, false);

var<private> global2: vec4<i32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_div_f32(1638f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(130f + -752f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1458f, 430f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1421f)))));
    let var_1 = ~_wgslsmith_dot_vec3_u32(abs(abs(u_input.b.xww)), ~u_input.b.zzy) != _wgslsmith_add_u32(~(~firstLeadingBit(4294967295u)), ~(~(~u_input.c.x)));
    global2 = -abs(vec4<i32>(0i, -15475i, _wgslsmith_mult_i32(global2.x, global2.x), _wgslsmith_mod_i32(u_input.e.x, u_input.e.x)) | ~(vec4<i32>(global2.x, 91032i, 31902i, u_input.e.x) << (u_input.b % vec4<u32>(32u))));
    var var_2 = _wgslsmith_add_vec4_u32(firstLeadingBit(u_input.d), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(u_input.b.x & u_input.b.x, 1u, 4294967295u, ~u_input.d.x)), ~select(~u_input.d, _wgslsmith_sub_vec4_u32(u_input.d, u_input.b), true)));
    global2 = ~vec4<i32>(abs(global2.x), ~min(0i & global2.x, _wgslsmith_div_i32(u_input.e.x, 29742i)), _wgslsmith_add_i32(countOneBits(u_input.e.x), ~(-3919i | global2.x)), ~_wgslsmith_div_i32(-488i, 23386i));
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_0.c + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d, 1070f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -1090f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.x, -241f))), arg_0.a.xz)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1824f)) - _wgslsmith_f_op_f32(-1418f * _wgslsmith_f_op_f32(-arg_1))) - -789f), !(!func_3() && false));
    global1 = array<bool, 29>();
    let var_1 = Struct_1(arg_0.a, ~6351u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(1279f)), arg_0.d)), _wgslsmith_f_op_f32(select(-916f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a.x)))), all(arg_0.a))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(var_0.a.x + var_0.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.x, -728f)))) - arg_0.c))), _wgslsmith_f_op_f32(-324f * _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_1.d)), 495f)))), var_1.a.x);
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_2.a.x + 1319f), _wgslsmith_f_op_f32(-var_1.d))))), arg_0.d, all(select(select(!vec4<bool>(var_2.c, global1[_wgslsmith_index_u32(11815u, 29u)], var_2.c, var_2.c), select(vec4<bool>(global1[_wgslsmith_index_u32(18529u, 29u)], false, true, global1[_wgslsmith_index_u32(33394u, 29u)]), vec4<bool>(true, true, arg_0.a.x, var_1.a.x), vec4<bool>(false, global1[_wgslsmith_index_u32(var_1.b, 29u)], var_2.c, var_2.c)), any(var_1.a.xx)), select(select(vec4<bool>(true, arg_0.a.x, true, true), vec4<bool>(var_1.a.x, arg_0.a.x, true, true), true), select(vec4<bool>(true, var_0.c, var_1.a.x, var_2.c), vec4<bool>(var_1.a.x, true, var_1.a.x, true), vec4<bool>(var_0.c, true, false, arg_0.a.x)), select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 29u)], arg_0.a.x, true, var_1.a.x), vec4<bool>(var_2.c, true, false, true), false)), select(select(vec4<bool>(var_1.a.x, var_1.a.x, arg_0.a.x, false), vec4<bool>(var_0.c, false, false, arg_0.a.x), false), vec4<bool>(true, false, false, false), var_0.c))));
    return var_1.b;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: vec2<i32>) -> vec4<f32> {
    global0 = array<Struct_2, 18>();
    var var_0 = abs(vec4<u32>(~(~func_2(Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 29u)], global1[_wgslsmith_index_u32(u_input.d.x, 29u)], true), u_input.b.x, arg_0, 858f), arg_0.x)), u_input.d.x, _wgslsmith_mod_u32(~u_input.d.x & 5286u, ~(~0u)), abs(u_input.c.x)));
    let var_1 = _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(~_wgslsmith_div_u32(u_input.d.x, u_input.c.x), 0u), ~_wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, 12704u), vec2<u32>(1u, var_0.x) >> (vec2<u32>(u_input.c.x, 1u) % vec2<u32>(32u))), abs(vec2<u32>(1u, 1u))), vec2<u32>(~4294967295u, u_input.c.x | 0u));
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1067f * -397f), arg_0.x, _wgslsmith_f_op_f32(arg_0.x * -1000f), _wgslsmith_f_op_f32(abs(521f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-383f, 221f, global1[_wgslsmith_index_u32(4294967295u, 29u)]))), -571f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)) * -1295f)))));
    var_0 = ~(~(~vec4<u32>(1u, u_input.b.x, 88772u, 4294967295u)) >> (_wgslsmith_div_vec4_u32(abs(~vec4<u32>(4294967295u, 15515u, 0u, var_0.x)), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(u_input.c.x, 0u, 1u, 4294967295u)), vec4<u32>(u_input.b.x, 30692u, 57019u, 4294967295u))) % vec4<u32>(32u)));
    return var_2.a;
}

fn func_4(arg_0: bool, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = Struct_1(vec3<bool>(false, select(arg_0, false, true), true), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(1u, u_input.d.x, 53738u), u_input.d.x, u_input.d.x, 2817u), vec4<u32>(48679u, ~u_input.d.x, ~59661u, u_input.b.x)), u_input.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1.x, arg_1.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, arg_1.x) + vec2<f32>(-781f, 658f)))) + vec2<f32>(103f, -1198f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(arg_1.yz, vec2<f32>(1679f, -331f)), vec2<f32>(arg_1.x, arg_1.x)) * arg_1.wy)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1980f))));
    var var_1 = var_0;
    let var_2 = vec3<i32>(-1i) * -(vec3<i32>(-2147483647i & global2.x, global2.x, 2147483647i) << (abs(~u_input.d.yzz) % vec3<u32>(32u)));
    let var_3 = var_0.c;
    let var_4 = Struct_1(select(select(vec3<bool>(global1[_wgslsmith_index_u32(var_0.b, 29u)] | false, false, true), var_0.a, func_3()), select(vec3<bool>(true, func_3(), var_0.c.x == var_1.d), !select(vec3<bool>(false, var_1.a.x, global1[_wgslsmith_index_u32(6544u, 29u)]), var_0.a, var_1.a), arg_0), var_0.a), ~39697u, var_1.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -340f), var_3.x)));
    return global0[_wgslsmith_index_u32(countOneBits(u_input.c.x), 18u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(global1[_wgslsmith_index_u32(~(~(~(~u_input.b.x))), 29u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(187f, 1000f), vec2<f32>(1160f, -954f), vec2<bool>(global1[_wgslsmith_index_u32(21725u, 29u)], global1[_wgslsmith_index_u32(u_input.c.x, 29u)]))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1217f, -282f) - vec2<f32>(1582f, -442f)), vec2<bool>(false, true))), vec3<i32>(1i, ~global2.x, global2.x << (70282u % 32u)), vec2<i32>(-26827i, u_input.e.x)))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1427f, -1239f, -1040f, var_0.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(238f, 1901f, var_0.b, 1423f)) * vec4<f32>(951f, var_0.a.x, var_0.a.x, var_0.a.x)), global1[_wgslsmith_index_u32(0u >> (u_input.b.x % 32u), 29u)]))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-391f))) + -278f));
    var var_3 = Struct_3(var_1.a);
    global1 = array<bool, 29>();
    let var_4 = vec4<i32>(u_input.a, _wgslsmith_add_i32(global2.x >> (4294967295u % 32u), global2.x), ~16935i, firstTrailingBit(1i));
    let var_5 = Struct_3(var_1.a);
    let var_6 = ~_wgslsmith_add_i32(-4467i, -1i);
    global1 = array<bool, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(863f)) - _wgslsmith_f_op_f32(abs(-1782f)))), 1u, _wgslsmith_div_vec3_u32(~(~vec3<u32>(54812u, u_input.b.x, 21398u)), _wgslsmith_clamp_vec3_u32(u_input.c, u_input.c, u_input.c >> (vec3<u32>(15478u, 8835u, u_input.d.x) % vec3<u32>(32u)))) >> (~u_input.d.zzy % vec3<u32>(32u)));
}

