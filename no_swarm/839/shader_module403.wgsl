struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec3<bool>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec2<u32>,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<u32, 23> = array<u32, 23>(4294967295u, 42567u, 26524u, 0u, 54098u, 4294967295u, 1u, 0u, 0u, 1u, 1u, 0u, 1u, 49524u, 84500u, 32812u, 12743u, 1u, 51062u, 6210u, 45724u, 0u, 4294967295u);

var<private> global2: array<bool, 5>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    var var_0 = vec2<u32>(global1[_wgslsmith_index_u32(0u, 23u)], 4294967295u & (global1[_wgslsmith_index_u32(0u, 23u)] << (~u_input.b % 32u))) << (_wgslsmith_mult_vec2_u32(max(firstLeadingBit(vec2<u32>(1u, u_input.b)), ~vec2<u32>(u_input.b, 53563u) & vec2<u32>(44737u, u_input.b)), ~(~vec2<u32>(global1[_wgslsmith_index_u32(u_input.b, 23u)], 23342u))) % vec2<u32>(32u));
    var var_1 = !(!(!vec2<bool>(all(vec3<bool>(global0.x, global2[_wgslsmith_index_u32(0u, 5u)], global2[_wgslsmith_index_u32(23421u, 5u)])), all(vec4<bool>(global0.x, global0.x, global2[_wgslsmith_index_u32(4294967295u, 5u)], global0.x)))));
    global0 = !(!vec3<bool>(!var_1.x, true, false));
    var var_2 = Struct_3(firstLeadingBit(u_input.a), Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-692f - 1224f), 221f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(2346f + 1281f), _wgslsmith_f_op_f32(-1436f + -546f))), -vec2<i32>(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), -1i)), ~vec2<u32>(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(u_input.b, 23u)], 37750u) & ~1u, _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2172u, 23u)], 23u)] & var_0.x, ~u_input.b)), Struct_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(468f, -1302f))), select(select(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 5u)], global2[_wgslsmith_index_u32(1u, 5u)], true), vec3<bool>(var_1.x, true, true), global2[_wgslsmith_index_u32(var_0.x ^ u_input.b, 5u)]), vec3<bool>(!global2[_wgslsmith_index_u32(4294967295u, 5u)], true, any(vec4<bool>(false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 23u)], 5u)], var_1.x, false))), false), u_input.b, -u_input.a.x), vec3<u32>(31151u, 15472u, u_input.b));
    let var_3 = var_2.e;
    return u_input.a.x;
}

fn func_2(arg_0: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-111f, -1959f, 507f) + vec3<f32>(-329f, -1926f, 308f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2775f, -3316f, 843f))))))));
    let var_1 = u_input.a.x;
    let var_2 = u_input.b;
    global1 = array<u32, 23>();
    var var_3 = vec3<u32>(1u, arg_0, ~18737u);
    return -func_3();
}

fn func_1() -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(918f, -420f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-991f, _wgslsmith_f_op_f32(min(3546f, 1464f))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-229f, _wgslsmith_f_op_f32(abs(1861f)))), -1000f, -1652f)));
    var var_1 = abs(vec3<u32>(u_input.b, _wgslsmith_mult_u32(15738u, ~global1[_wgslsmith_index_u32(41150u, 23u)] ^ firstTrailingBit(57908u)), u_input.b));
    let var_2 = Struct_4(_wgslsmith_div_vec4_u32(select(~vec4<u32>(6568u, 22336u, u_input.b, 0u) >> ((vec4<u32>(1237u, global1[_wgslsmith_index_u32(26396u, 23u)], var_1.x, 0u) & vec4<u32>(u_input.b, 0u, global1[_wgslsmith_index_u32(u_input.b, 23u)], u_input.b)) % vec4<u32>(32u)), ~(~vec4<u32>(global1[_wgslsmith_index_u32(46284u, 23u)], 34625u, 4294967295u, 33317u)), global0.x), vec4<u32>(1u, u_input.b, reverseBits(21261u), abs(u_input.b))), _wgslsmith_mod_vec4_i32(vec4<i32>(~u_input.a.x, -_wgslsmith_add_i32(u_input.a.x, u_input.a.x), -2988i, min(u_input.a.x, u_input.a.x) << (_wgslsmith_div_u32(u_input.b, u_input.b) % 32u)), vec4<i32>(u_input.a.x, max(func_2(var_1.x), -154i), 0i, ~5077i)), Struct_1(!(!any(vec2<bool>(true, global0.x))), var_0.xx, select(vec3<bool>(!global0.x, true, any(vec4<bool>(true, false, false, false))), vec3<bool>(44085u > global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(12860u, 23u)], 23u)], false, true), var_0.x == _wgslsmith_f_op_f32(-var_0.x)), abs(var_1.x & (var_1.x ^ var_1.x)), u_input.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1182f, _wgslsmith_f_op_f32(round(var_0.x)), 713f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) * _wgslsmith_f_op_f32(f32(-1f) * -1800f)))));
    var var_3 = vec4<bool>(false, (global0.x & !(!global0.x)) | global2[_wgslsmith_index_u32(16914u, 5u)], var_2.c.a, ~(-_wgslsmith_clamp_i32(u_input.a.x, -2147483647i, -1i)) == reverseBits(1i));
    global2 = array<bool, 5>();
    return select(!select(select(vec4<bool>(var_3.x, false, var_2.c.c.x, false), !vec4<bool>(true, false, global0.x, var_3.x), any(vec3<bool>(var_2.c.c.x, global2[_wgslsmith_index_u32(52596u, 5u)], true))), select(!vec4<bool>(global0.x, var_2.c.a, var_2.c.c.x, global2[_wgslsmith_index_u32(var_2.c.d, 5u)]), select(vec4<bool>(false, false, true, true), vec4<bool>(true, global2[_wgslsmith_index_u32(var_2.c.d, 5u)], false, var_2.c.a), true), var_3.x), vec4<bool>(!global0.x, all(vec2<bool>(var_3.x, global0.x)), global0.x || global0.x, !var_3.x)), !select(vec4<bool>(all(vec2<bool>(var_3.x, global0.x)), global2[_wgslsmith_index_u32(var_1.x, 5u)], true, true), !(!vec4<bool>(global2[_wgslsmith_index_u32(var_2.a.x, 5u)], global2[_wgslsmith_index_u32(1u, 5u)], true, global0.x)), (2147483647i >= var_2.b.x) | global0.x), select(!vec4<bool>(var_0.x < 1280f, true, false, var_2.d.x <= 547f), vec4<bool>(global0.x, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(57628u, 23u)], global1[_wgslsmith_index_u32(u_input.b, 23u)], 58410u), _wgslsmith_div_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(0u, 23u)], var_1.x, u_input.b), vec3<u32>(4294967295u, 21513u, 39882u))), 5u)], !(true || global0.x), !all(var_3.wy)), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_1(all(vec2<bool>(all(vec3<bool>(true, true, global2[_wgslsmith_index_u32(0u, 5u)])), global0.x)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1038f, -1210f)), -514f), 116f), vec3<bool>(var_0.x, (firstTrailingBit(u_input.b) << (~4294967295u % 32u)) > ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(1u, u_input.b, 1u)), true), _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(u_input.b, 23u)], u_input.b), -u_input.a.x);
    var var_2 = vec2<i32>(~0i, reverseBits(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.e, var_1.e), u_input.a) ^ _wgslsmith_div_i32(var_1.e, var_1.e), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_1.e, 32852i), vec3<i32>(var_1.e, u_input.a.x, -1i)), 1i), -59987i & u_input.a.x)));
    var_1 = Struct_1(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, -422f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.b.x, 762f))) + _wgslsmith_f_op_vec2_f32(var_1.b + vec2<f32>(var_1.b.x, -508f)))) - var_1.b), select(select(vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<u32>(113893u, 14587u, 4294967295u)), 5u)], !global0.x, true), select(select(vec3<bool>(global0.x, true, global2[_wgslsmith_index_u32(var_1.d, 5u)]), var_1.c, global2[_wgslsmith_index_u32(var_1.d, 5u)]), !var_1.c, all(var_1.c)), vec3<bool>(!var_1.c.x, true, select(global2[_wgslsmith_index_u32(u_input.b, 5u)], var_1.a, var_1.c.x))), select(var_1.c, !func_1().yyy, func_1().yyx), (_wgslsmith_mult_u32(var_1.d, 0u) >> (_wgslsmith_div_u32(global1[_wgslsmith_index_u32(40064u, 23u)], 0u) % 32u)) == _wgslsmith_sub_u32(~var_1.d, _wgslsmith_div_u32(11819u, u_input.b))), ~(~(69434u ^ global1[_wgslsmith_index_u32(1u, 23u)])), -select(_wgslsmith_div_i32(var_1.e, -2808i) | -u_input.a.x, -22215i, false));
    var var_3 = Struct_4(_wgslsmith_clamp_vec4_u32(firstLeadingBit(~vec4<u32>(var_1.d, u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 23u)], 23u)], u_input.b) & _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 109500u, 1u, var_1.d), vec4<u32>(4294967295u, 1u, global1[_wgslsmith_index_u32(37532u, 23u)], 4294967295u), vec4<u32>(var_1.d, 18290u, u_input.b, 4294967295u))), ~(~vec4<u32>(u_input.b, u_input.b, 1654u, var_1.d)), max(~min(vec4<u32>(84066u, global1[_wgslsmith_index_u32(51702u, 23u)], u_input.b, 25762u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 23u)], 23u)], 0u, global1[_wgslsmith_index_u32(5576u, 23u)], 67869u)), reverseBits(select(vec4<u32>(4294967295u, 25714u, 1u, u_input.b), vec4<u32>(var_1.d, var_1.d, 109296u, u_input.b), vec4<bool>(var_0.x, false, false, var_1.a))))), _wgslsmith_mult_vec4_i32(~(~abs(vec4<i32>(69731i, 1i, var_2.x, u_input.a.x))), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 32477i, var_1.e, 2147483647i) | (vec4<i32>(u_input.a.x, 22297i, u_input.a.x, -2147483647i) | vec4<i32>(1i, u_input.a.x, var_2.x, 1i)), ~(-vec4<i32>(var_1.e, -1i, var_1.e, var_2.x)))), Struct_1(func_1().x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.x, 219f) * var_1.b)) * var_1.b), func_1().zww, _wgslsmith_mult_u32(abs(u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(36735u, u_input.b, 3299u, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(58287u, u_input.b, var_1.d, 1u), vec4<u32>(var_1.d, 1u, 57675u, var_1.d)))), ~(-63993i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, var_1.b.x, var_1.b.x, 1543f))) * vec4<f32>(_wgslsmith_f_op_f32(trunc(var_1.b.x)), var_1.b.x, _wgslsmith_f_op_f32(-var_1.b.x), -968f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-742f, 413f, 1606f, var_1.b.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-349f, var_1.b.x, var_1.b.x, var_1.b.x), vec4<f32>(-202f, 495f, var_1.b.x, var_1.b.x), var_0))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(179f, var_1.b.x, -891f, -575f)))))));
    let var_4 = u_input.a.x;
    var_2 = -(~_wgslsmith_add_vec2_i32(-u_input.a, u_input.a) << (max(select(vec2<u32>(var_3.a.x, var_1.d), _wgslsmith_clamp_vec2_u32(var_3.a.xx, vec2<u32>(0u, 15305u), vec2<u32>(56031u, var_1.d)), any(vec2<bool>(false, true))), var_3.a.yy) % vec2<u32>(32u)));
    let var_5 = vec2<bool>(!all(!var_0), any(func_1()));
    let var_6 = Struct_4(vec4<u32>(firstLeadingBit(110373u), 1u << (_wgslsmith_dot_vec2_u32(reverseBits(var_3.a.ww), vec2<u32>(24504u, u_input.b)) % 32u), 1u & u_input.b, 4294967295u & _wgslsmith_mod_u32(26494u, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(37840u, global1[_wgslsmith_index_u32(0u, 23u)]), 23u)])), ~select(-vec4<i32>(1i, u_input.a.x, var_4, 21041i), vec4<i32>(-1i) * -var_3.b, var_5.x), Struct_1(true, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_3.d.x))))), vec3<bool>(true, _wgslsmith_f_op_f32(abs(-588f)) == _wgslsmith_f_op_f32(round(var_3.c.b.x)), true), 0u, 2147483647i), _wgslsmith_f_op_vec4_f32(ceil(var_3.d)));
    let x = u_input.a;
    s_output = StorageBuffer(5962u, vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x + var_6.c.b.x) + var_3.c.b.x)), 1104f), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-262f, -175f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -375f) + var_1.b.x)), -108f));
}

