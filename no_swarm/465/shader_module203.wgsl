struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 11>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec3<i32> {
    global0 = array<vec4<u32>, 11>();
    global0 = array<vec4<u32>, 11>();
    let var_0 = Struct_1(~vec2<u32>(_wgslsmith_mod_u32(select(0u, 0u, true), 1u), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(4294967295u, 5020u, 9571u)), select(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(8638u, 56957u, 0u), vec3<bool>(true, true, false)))), _wgslsmith_add_vec4_u32(~abs(~global0[_wgslsmith_index_u32(0u, 11u)]), abs(global0[_wgslsmith_index_u32(4294967295u, 11u)])), (vec4<i32>(-1i) * -reverseBits(vec4<i32>(u_input.a, u_input.a, 1i, 0i))) >> (vec4<u32>(~(~36528u), 0u, 15903u, ~firstLeadingBit(0u)) % vec4<u32>(32u)));
    let var_1 = Struct_1(var_0.a | vec2<u32>(1u, _wgslsmith_mod_u32(~4294967295u, _wgslsmith_add_u32(0u, 4294967295u))), _wgslsmith_mod_vec4_u32(vec4<u32>(~max(45294u, 4294967295u), abs(~1u), 4294967295u, ~63041u), global0[_wgslsmith_index_u32(1u, 11u)]), vec4<i32>(-1i) * -(var_0.c & var_0.c));
    let var_2 = ~(~4294967295u >> (_wgslsmith_dot_vec2_u32(var_1.b.yw & vec2<u32>(16470u, 72954u), var_1.a) % 32u));
    return _wgslsmith_add_vec3_i32(var_0.c.yyx, var_1.c.wxy);
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: vec3<i32>) -> bool {
    var var_0 = arg_0;
    var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1158f))));
    let var_2 = vec4<bool>(any(select(select(vec3<bool>(true, arg_1.x, arg_1.x), !vec3<bool>(arg_1.x, false, false), arg_1.x), vec3<bool>(select(arg_1.x, arg_1.x, true), !arg_1.x, false), any(select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false), vec4<bool>(true, true, false, false), vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x))))), arg_1.x, select(!arg_1.x && select(true, any(vec4<bool>(false, false, false, arg_1.x)), true), false, !(!any(vec4<bool>(true, arg_1.x, false, false)))), false);
    global0 = array<vec4<u32>, 11>();
    return true;
}

fn func_2() -> vec2<u32> {
    global0 = array<vec4<u32>, 11>();
    var var_0 = !vec2<bool>(func_4(_wgslsmith_dot_vec2_u32(vec2<u32>(85298u, 81966u), vec2<u32>(6783u, 41647u)), vec2<bool>(true, true), func_3()) || all(vec2<bool>(true, true)), false);
    let var_1 = vec3<bool>(any(!vec4<bool>(true, all(vec4<bool>(var_0.x, true, var_0.x, true)), false & var_0.x, true)), any(!vec3<bool>(all(vec3<bool>(true, true, var_0.x)), true && var_0.x, func_4(0u, vec2<bool>(var_0.x, true), vec3<i32>(1i, u_input.a, 23998i)))), true);
    var var_2 = firstLeadingBit(select(u_input.a, ~u_input.a, !all(vec4<bool>(var_0.x, true, var_0.x, var_0.x))));
    var var_3 = 57467u;
    return firstTrailingBit(vec2<u32>(0u, firstLeadingBit(0u)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))) << (select(vec2<u32>(55647u, _wgslsmith_add_u32(62776u, ~4294967295u)), abs(~vec2<u32>(1u, 1u)), false) % vec2<u32>(32u));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2) -> u32 {
    global0 = array<vec4<u32>, 11>();
    var var_0 = Struct_1(reverseBits(func_2()), ~(~(~firstTrailingBit(vec4<u32>(52949u, arg_1.a, arg_1.a, arg_1.a)))), vec4<i32>(arg_0.x, _wgslsmith_sub_i32(~1i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 2147483647i, u_input.a), arg_0), arg_0)), 2147483647i, firstLeadingBit(_wgslsmith_add_i32(abs(arg_0.x), _wgslsmith_mult_i32(arg_0.x, arg_0.x)))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -292f)))), -686f, -544f);
    let var_2 = !arg_1.b;
    var var_3 = arg_1;
    return _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(min(~var_0.b, vec4<u32>(0u, 4294967295u, 237u, 8713u) >> (var_0.b % vec4<u32>(32u))), ~vec4<u32>(40070u, 4294967295u, 0u, var_0.a.x) >> (vec4<u32>(56801u, 0u, var_3.c, var_3.a) % vec4<u32>(32u))), vec4<u32>(arg_1.a, abs(firstLeadingBit(min(0u, var_3.a))), ~countOneBits(~12054u), func_2().x));
}

fn func_5(arg_0: u32) -> vec2<bool> {
    var var_0 = ~38906u;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1423f, -418f, 2079f, -1797f))))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(633f * -674f), _wgslsmith_f_op_f32(trunc(264f)), -1143f, _wgslsmith_f_op_f32(max(240f, -839f))) + vec4<f32>(_wgslsmith_f_op_f32(241f - -641f), -2733f, -1311f, _wgslsmith_f_op_f32(-311f + -169f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-191f, -1177f, 2481f, -278f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(590f, -658f, -381f, -808f) * vec4<f32>(205f, 602f, -1738f, -124f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1772f, 1000f, -294f, 1063f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1475f, 118f, -212f, 2595f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1136f, 678f, -272f, 403f) - vec4<f32>(1921f, -136f, 1280f, 487f))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(abs(-608f)), 853f), vec2<f32>(var_1.x, _wgslsmith_f_op_f32(var_1.x + -996f))))));
    let var_3 = arg_0 | ~((arg_0 << (1u % 32u)) & ~(~arg_0));
    var var_4 = select(~_wgslsmith_mult_u32(~arg_0, _wgslsmith_div_u32(arg_0, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_3), vec2<u32>(4294967295u, var_3)))), 30759u, !all(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)))));
    return select(!select(vec2<bool>(arg_0 < arg_0, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), select(vec2<bool>(true, false), vec2<bool>(false, true), true)), false), select(select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), true), vec2<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(48812u, arg_0, 3695u), vec3<u32>(4294967295u, var_3, 33115u)) <= abs(64872u), true), true), !(firstLeadingBit(_wgslsmith_mult_i32(0i, 0i)) >= _wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, u_input.a, u_input.a), -vec3<i32>(u_input.a, u_input.a, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 11>();
    global0 = array<vec4<u32>, 11>();
    global0 = array<vec4<u32>, 11>();
    var var_0 = true & all(func_5(~func_1(vec3<i32>(1i, 2147483647i, u_input.a), Struct_2(0u, vec4<bool>(true, false, true, false), 30944u))));
    var var_1 = vec2<bool>(true, !(true || any(vec2<bool>(false, true))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1432f), _wgslsmith_f_op_f32(846f - -1235f))) * -1065f) + _wgslsmith_f_op_f32(-1043f * 235f)));
    global0 = array<vec4<u32>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(563f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) * _wgslsmith_f_op_f32(-102f + -1000f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.a, _wgslsmith_sub_i32(23047i, 0i), _wgslsmith_add_i32(u_input.a, -25638i), u_input.a), min(vec4<i32>(u_input.a, -38414i, u_input.a, u_input.a) >> (global0[_wgslsmith_index_u32(1u, 11u)] % vec4<u32>(32u)), vec4<i32>(u_input.a, 1i, -18185i, 120707i))), -vec4<i32>(u_input.a << (8122u % 32u), firstTrailingBit(u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(-31538i, 9276i, 0i, -5005i), vec4<i32>(u_input.a, u_input.a, -1i, 0i)), -1i)), var_2, _wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2)) + _wgslsmith_f_op_f32(floor(var_2))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2))))));
}

