struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<i32, 8> = array<i32, 8>(1i, 5992i, -37875i, 38901i, 23924i, i32(-2147483648), -1i, 1i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: vec2<bool>, arg_3: Struct_2) -> f32 {
    global1 = array<i32, 8>();
    global1 = array<i32, 8>();
    var var_0 = select(select(vec4<bool>(global0.x, !(u_input.b <= u_input.c), !select(true, false, false), all(vec3<bool>(arg_1.x, true, true))), vec4<bool>(any(select(global0.yy, arg_1, true)), all(!vec3<bool>(arg_1.x, false, false)), true, select(global0.x, false, global0.x) | true), global0.x), !(!vec4<bool>(arg_0 <= arg_0, all(vec2<bool>(false, arg_2.x)), true, any(vec3<bool>(true, global0.x, true)))), all(vec3<bool>(global0.x, any(!vec2<bool>(global0.x, true)), !arg_2.x)));
    global0 = vec3<bool>(select(true, _wgslsmith_div_f32(-461f, _wgslsmith_f_op_f32(sign(-1002f))) < _wgslsmith_f_op_f32(max(-1235f, _wgslsmith_f_op_f32(arg_3.a + arg_0))), true), !any(vec3<bool>(arg_2.x, true, arg_2.x)) & (false && ((global0.x | false) || (global0.x || var_0.x))), any(!(!vec4<bool>(true, arg_2.x, false, global0.x))) || true);
    global1 = array<i32, 8>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-796f, _wgslsmith_f_op_f32(-arg_3.a))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + arg_0));
}

fn func_2(arg_0: f32, arg_1: Struct_4) -> Struct_1 {
    global1 = array<i32, 8>();
    let var_0 = select(!global0.x, false, _wgslsmith_mod_u32(~34926u & _wgslsmith_add_u32(u_input.b, arg_1.b.x), 1u) == 1u);
    global1 = array<i32, 8>();
    var var_1 = global1[_wgslsmith_index_u32(1u, 8u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1349f, _wgslsmith_f_op_f32(func_3(arg_1.a.x, vec2<bool>(global0.x, true), vec2<bool>(false, true), Struct_2(-2087f))), 1940f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.a.x, arg_1.a.x, 1926f, 1388f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 781f, -251f) + vec4<f32>(arg_0, -632f, arg_0, arg_1.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, 1000f) * _wgslsmith_div_vec4_f32(vec4<f32>(776f, arg_0, 2521f, arg_0), vec4<f32>(arg_0, -545f, -1320f, -182f))), vec4<bool>(all(vec4<bool>(global0.x, var_0, true, true)), global0.x, arg_1.d.x & arg_1.c, true)))))));
    return Struct_1(-reverseBits(vec3<i32>(-global1[_wgslsmith_index_u32(22237u, 8u)], ~global1[_wgslsmith_index_u32(4294967295u, 8u)], -7213i)), global1[_wgslsmith_index_u32(((arg_1.b.x >> (firstLeadingBit(arg_1.b.x) % 32u)) ^ ~u_input.c) << (0u % 32u), 8u)], arg_1.d.yy);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>) -> Struct_3 {
    global1 = array<i32, 8>();
    let var_0 = _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(537f - -127f));
    var var_1 = arg_0.a.c;
    let var_2 = vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(0u, _wgslsmith_sub_u32(1u, u_input.b)), ~4294967295u), reverseBits(~68297u), 4294967295u);
    let var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2269f - -483f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - -851f), any(vec4<bool>(true, var_1.x, true, global0.x)))) - 1176f));
    return Struct_3(Struct_1(arg_0.a.a, -2147483647i, vec2<bool>(var_1.x, !arg_0.a.c.x)));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: i32) -> Struct_4 {
    var var_0 = arg_0;
    let var_1 = Struct_5(-_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.x, ~global1[_wgslsmith_index_u32(4294967295u, 8u)], max(2147483647i, 50733i)), ~arg_0.a.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-801f)), -378f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(497f + -1692f) - -717f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1654f * 826f))))), _wgslsmith_sub_i32(-func_2(813f, Struct_4(vec3<f32>(492f, 1633f, -678f), vec4<u32>(1u, 40429u, 25815u, u_input.c), arg_0.a.c.x, vec3<bool>(global0.x, arg_0.a.c.x, true))).a.x >> (min(firstLeadingBit(22148u), u_input.b) % 32u), var_0.a.b | (arg_2 << (reverseBits(u_input.b) % 32u))));
    var_0 = Struct_3(arg_0.a);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -284f));
    var var_3 = ~(-(-_wgslsmith_mult_i32(var_0.a.a.x, -3755i) | 1i));
    return Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) - var_2.a)), _wgslsmith_f_op_f32(f32(-1f) * -1236f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)) * _wgslsmith_f_op_f32(abs(var_2.a)))), _wgslsmith_div_vec4_u32(abs(vec4<u32>(0u, u_input.b, 12817u, 4294967295u)), _wgslsmith_div_vec4_u32(~vec4<u32>(1u, u_input.c, 4294967295u, 43324u), ~vec4<u32>(u_input.b, 5925u, 4326u, u_input.c))) & _wgslsmith_clamp_vec4_u32(vec4<u32>(27687u, max(0u, 0u), ~u_input.b, ~0u), ~reverseBits(vec4<u32>(u_input.b, u_input.b, u_input.b, 31170u)), vec4<u32>(1u, 0u ^ u_input.c, 4294967295u, u_input.c & u_input.c)), select(-18416i != -func_2(var_1.b.x, Struct_4(vec3<f32>(var_1.b.x, var_1.b.x, var_1.b.x), vec4<u32>(u_input.c, u_input.c, 68130u, u_input.c), false, vec3<bool>(var_0.a.c.x, true, false))).a.x, select(true, false, -13949i <= (var_0.a.a.x << (105103u % 32u))), !var_0.a.c.x), vec3<bool>(all(!vec4<bool>(true, false, false, var_0.a.c.x)), any(vec4<bool>(var_0.a.b < var_0.a.a.x, global1[_wgslsmith_index_u32(15802u, 8u)] < global1[_wgslsmith_index_u32(56988u, 8u)], !arg_0.a.c.x, !arg_0.a.c.x)), arg_0.a.c.x));
}

fn func_6(arg_0: Struct_4) -> Struct_2 {
    global1 = array<i32, 8>();
    global1 = array<i32, 8>();
    global1 = array<i32, 8>();
    var var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(~(-2147483647i), -(_wgslsmith_sub_i32(u_input.a, u_input.e) >> (_wgslsmith_mod_u32(78132u, arg_0.b.x) % 32u))), -select(func_4(func_4(Struct_3(Struct_1(vec3<i32>(-22961i, global1[_wgslsmith_index_u32(4530u, 8u)], -1i), u_input.d, vec2<bool>(global0.x, true))), vec3<i32>(-1i, -19816i, global1[_wgslsmith_index_u32(arg_0.b.x, 8u)])), firstLeadingBit(vec3<i32>(global1[_wgslsmith_index_u32(94609u, 8u)], u_input.e, global1[_wgslsmith_index_u32(u_input.c, 8u)]))).a.a.zz, ~vec2<i32>(u_input.a, 2147483647i), arg_0.d.xx));
    global0 = select(arg_0.d, !func_5(func_4(Struct_3(Struct_1(vec3<i32>(global1[_wgslsmith_index_u32(3048u, 8u)], var_0.x, var_0.x), 53340i, vec2<bool>(true, global0.x))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-46930i, var_0.x, var_0.x), vec3<i32>(u_input.a, -13334i, global1[_wgslsmith_index_u32(arg_0.b.x, 8u)]), vec3<i32>(66631i, var_0.x, global1[_wgslsmith_index_u32(36118u, 8u)]))), vec2<i32>(_wgslsmith_mult_i32(u_input.d, -1i), 21226i | global1[_wgslsmith_index_u32(36471u, 8u)]), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~0u, 45396u << (u_input.b % 32u)), 8u)]).d, select(!arg_0.d, func_5(Struct_3(func_4(Struct_3(Struct_1(vec3<i32>(global1[_wgslsmith_index_u32(arg_0.b.x, 8u)], -2147483647i, 2147483647i), global1[_wgslsmith_index_u32(arg_0.b.x, 8u)], vec2<bool>(true, global0.x))), vec3<i32>(var_0.x, -2147483647i, global1[_wgslsmith_index_u32(arg_0.b.x, 8u)])).a), _wgslsmith_mod_vec2_i32(~vec2<i32>(1i, var_0.x), abs(vec2<i32>(var_0.x, -1i))), u_input.e).d, func_5(Struct_3(func_4(Struct_3(Struct_1(vec3<i32>(2147483647i, -25186i, u_input.d), 0i, vec2<bool>(global0.x, false))), vec3<i32>(0i, u_input.a, u_input.a)).a), _wgslsmith_add_vec2_i32(vec2<i32>(-748i, var_0.x) | vec2<i32>(2147483647i, global1[_wgslsmith_index_u32(arg_0.b.x, 8u)]), ~vec2<i32>(0i, -1i)), -2147483647i).d));
    return Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) + _wgslsmith_f_op_f32(1340f * -274f)) * _wgslsmith_f_op_f32(-arg_0.a.x)), arg_0.a.x));
}

fn func_1(arg_0: vec2<bool>) -> bool {
    var var_0 = Struct_4(vec3<f32>(-411f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1540f + _wgslsmith_f_op_f32(-305f - -725f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2345f, -552f))) - _wgslsmith_f_op_f32(-774f + 1f))), ~(~((vec4<u32>(u_input.c, u_input.b, 80979u, u_input.c) | vec4<u32>(134040u, 41927u, u_input.c, u_input.b)) >> (abs(vec4<u32>(u_input.b, 22289u, u_input.c, 30824u)) % vec4<u32>(32u)))), true, select(vec3<bool>(true, true, true), select(vec3<bool>(!arg_0.x, global0.x, !global0.x), !(!vec3<bool>(global0.x, arg_0.x, global0.x)), !arg_0.x), all(vec4<bool>(any(arg_0), true, true, !arg_0.x))));
    var var_1 = func_6(func_5(func_4(Struct_3(func_2(var_0.a.x, Struct_4(var_0.a, vec4<u32>(67599u, 5991u, var_0.b.x, u_input.b), true, var_0.d))), _wgslsmith_mod_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 8u)], -28511i, 7998i) ^ vec3<i32>(-21916i, global1[_wgslsmith_index_u32(28110u, 8u)], -1598i), _wgslsmith_mult_vec3_i32(vec3<i32>(10926i, global1[_wgslsmith_index_u32(4294967295u, 8u)], u_input.d), vec3<i32>(u_input.d, u_input.e, global1[_wgslsmith_index_u32(var_0.b.x, 8u)])))), ~firstTrailingBit(countOneBits(vec2<i32>(11063i, 8265i))), i32(-1i) * -34922i));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(trunc(var_0.a.x)))));
    var var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(step(var_0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a, _wgslsmith_div_f32(-1790f, var_2.a), _wgslsmith_f_op_f32(min(1631f, var_1.a))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0.a.x, 1164f)) * _wgslsmith_f_op_vec3_f32(-var_0.a))))), select(~vec4<u32>(~u_input.c, 4294967295u, 26784u, max(0u, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(abs(0u), ~u_input.b, ~4294967295u, _wgslsmith_mult_u32(4294967295u, u_input.b)), vec4<u32>(21059u, select(u_input.c, var_0.b.x, true), var_0.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.x, 66512u, var_0.b.x), var_0.b.yzw))), arg_0.x), all(!select(vec4<bool>(var_0.d.x, false, false, var_0.c), vec4<bool>(var_0.c, false, arg_0.x, global0.x), global0.x)) || false, select(func_5(func_4(Struct_3(Struct_1(vec3<i32>(1i, u_input.d, global1[_wgslsmith_index_u32(var_0.b.x, 8u)]), -39772i, vec2<bool>(true, arg_0.x))), -vec3<i32>(u_input.d, u_input.e, 10008i)), _wgslsmith_clamp_vec2_i32(-vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(u_input.c, 8u)]), vec2<i32>(2147483647i, global1[_wgslsmith_index_u32(1u, 8u)]) | vec2<i32>(global1[_wgslsmith_index_u32(u_input.c, 8u)], -2147483647i), _wgslsmith_sub_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(var_0.b.x, 8u)], u_input.a), vec2<i32>(global1[_wgslsmith_index_u32(51107u, 8u)], u_input.a))), ~max(global1[_wgslsmith_index_u32(0u, 8u)], global1[_wgslsmith_index_u32(var_0.b.x, 8u)])).d, vec3<bool>(arg_0.x, func_2(-295f, Struct_4(var_0.a, var_0.b, global0.x, vec3<bool>(true, true, global0.x))).c.x, func_2(_wgslsmith_f_op_f32(select(-628f, var_1.a, true)), Struct_4(vec3<f32>(-2054f, var_0.a.x, var_2.a), vec4<u32>(var_0.b.x, 4294967295u, 20350u, u_input.b), global0.x, vec3<bool>(var_0.d.x, arg_0.x, false))).c.x), !vec3<bool>(var_1.a != var_2.a, var_0.d.x, true)));
    let var_4 = _wgslsmith_div_i32(i32(-1i) * -30260i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(6097i, global1[_wgslsmith_index_u32(var_0.b.x, 8u)]) & vec2<i32>(u_input.d, u_input.d), firstTrailingBit(vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(var_0.b.x, 8u)])), vec2<i32>(global1[_wgslsmith_index_u32(var_0.b.x, 8u)], global1[_wgslsmith_index_u32(46485u, 8u)]) >> (var_0.b.wy % vec2<u32>(32u))), _wgslsmith_clamp_vec2_i32(-vec2<i32>(global1[_wgslsmith_index_u32(var_0.b.x, 8u)], u_input.a), vec2<i32>(u_input.e, global1[_wgslsmith_index_u32(33377u, 8u)]) & vec2<i32>(0i, global1[_wgslsmith_index_u32(4294967295u, 8u)]), max(vec2<i32>(u_input.e, global1[_wgslsmith_index_u32(10243u, 8u)]), vec2<i32>(u_input.e, -2147483647i)))) ^ abs(7936i));
    return all(!var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 8>();
    global0 = select(vec3<bool>(global0.x, true, true), vec3<bool>(all(select(!vec3<bool>(true, global0.x, true), vec3<bool>(global0.x, false, global0.x), global1[_wgslsmith_index_u32(u_input.c, 8u)] == 0i)), any(!select(global0.yy, vec2<bool>(global0.x, true), global0.x)), any(!select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, false), vec2<bool>(global0.x, true)))), select(vec3<bool>(_wgslsmith_add_i32(-2147483647i, global1[_wgslsmith_index_u32(u_input.c, 8u)]) >= global1[_wgslsmith_index_u32(u_input.c, 8u)], global0.x, func_1(!global0.yz)), !(!(!vec3<bool>(global0.x, global0.x, global0.x))), func_5(Struct_3(Struct_1(vec3<i32>(0i, -54154i, global1[_wgslsmith_index_u32(u_input.c, 8u)]), global1[_wgslsmith_index_u32(6220u, 8u)], global0.xx)), max(~vec2<i32>(u_input.d, u_input.d), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.e, -19116i), vec2<i32>(-1i, 3551i), vec2<i32>(u_input.e, -26337i))), u_input.a).d));
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(350f, -168f, -109f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(554f, 622f, 1002f)))))));
    var var_1 = select(u_input.c ^ ((~u_input.c >> (13031u % 32u)) | 24677u), func_5(Struct_3(func_2(func_5(Struct_3(Struct_1(vec3<i32>(global1[_wgslsmith_index_u32(6512u, 8u)], global1[_wgslsmith_index_u32(4287u, 8u)], -6768i), u_input.a, vec2<bool>(global0.x, false))), vec2<i32>(43533i, 1i), u_input.d).a.x, func_5(Struct_3(Struct_1(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 8u)], -12485i, u_input.a), global1[_wgslsmith_index_u32(18765u, 8u)], global0.xy)), vec2<i32>(1i, global1[_wgslsmith_index_u32(u_input.c, 8u)]), 2601i))), _wgslsmith_clamp_vec2_i32(countOneBits(~vec2<i32>(23925i, global1[_wgslsmith_index_u32(42465u, 8u)])), vec2<i32>(abs(u_input.e), ~global1[_wgslsmith_index_u32(u_input.c, 8u)]), vec2<i32>(-1i) * -vec2<i32>(global1[_wgslsmith_index_u32(11168u, 8u)], global1[_wgslsmith_index_u32(1u, 8u)])), -u_input.d).b.x, true);
    var var_2 = var_0.zx;
    var var_3 = u_input.a;
    var var_4 = Struct_4(var_0, vec4<u32>(~_wgslsmith_div_u32(1u, u_input.c), u_input.c, ~u_input.b, u_input.c << (~_wgslsmith_clamp_u32(u_input.c, u_input.b, 62013u) % 32u)), !(~(-2147483647i) < func_2(-617f, Struct_4(vec3<f32>(993f, 410f, 1005f), vec4<u32>(1u, 0u, 2492u, 45795u), global0.x, vec3<bool>(true, global0.x, false))).a.x) != !((-2147483647i <= global1[_wgslsmith_index_u32(19734u, 8u)]) | !global0.x), select(select(vec3<bool>(global0.x, any(vec3<bool>(global0.x, true, global0.x)), global1[_wgslsmith_index_u32(u_input.c, 8u)] < 60538i), !vec3<bool>(false, global0.x, global0.x), func_5(func_4(Struct_3(Struct_1(vec3<i32>(1i, u_input.e, global1[_wgslsmith_index_u32(0u, 8u)]), -15540i, global0.yy)), vec3<i32>(1i, global1[_wgslsmith_index_u32(u_input.b, 8u)], 19188i)), ~vec2<i32>(global1[_wgslsmith_index_u32(u_input.b, 8u)], -14529i), 1i).d), !vec3<bool>(0i > u_input.e, global0.x, !global0.x), vec3<bool>(true, global0.x, !(global0.x && global0.x))));
    var var_5 = func_4(Struct_3(Struct_1(_wgslsmith_sub_vec3_i32(~vec3<i32>(0i, -2147483647i, 0i), vec3<i32>(2147483647i, 15415i, -1i)), 2147483647i, func_4(Struct_3(Struct_1(vec3<i32>(global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(u_input.b, 8u)], u_input.e), -1i, var_4.d.yx)), vec3<i32>(1i, 0i, -1i)).a.c)), firstLeadingBit(_wgslsmith_add_vec3_i32(select(vec3<i32>(u_input.a, global1[_wgslsmith_index_u32(var_4.b.x, 8u)], global1[_wgslsmith_index_u32(u_input.b, 8u)]), -vec3<i32>(global1[_wgslsmith_index_u32(u_input.b, 8u)], u_input.e, global1[_wgslsmith_index_u32(var_4.b.x, 8u)]), u_input.d <= global1[_wgslsmith_index_u32(23316u, 8u)]), (vec3<i32>(u_input.e, u_input.e, 4091i) | vec3<i32>(global1[_wgslsmith_index_u32(1u, 8u)], 2147483647i, u_input.e)) & vec3<i32>(-1i, global1[_wgslsmith_index_u32(30241u, 8u)], -68533i))));
    let var_6 = select(var_4.b.yy, func_5(Struct_3(Struct_1(vec3<i32>(u_input.e, -2147483647i, global1[_wgslsmith_index_u32(var_4.b.x, 8u)]), 1i, vec2<bool>(global0.x, false))), ~var_5.a.a.yx, max(0i, u_input.a)).b.ww ^ ~var_4.b.xx, var_4.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, func_5(Struct_3(Struct_1(min(var_5.a.a, var_5.a.a), u_input.e, func_2(var_4.a.x, Struct_4(vec3<f32>(-533f, 1544f, 225f), vec4<u32>(var_6.x, var_6.x, 4294967295u, var_4.b.x), true, var_4.d)).c)), vec2<i32>(abs(_wgslsmith_div_i32(-2147483647i, u_input.e)), var_5.a.a.x), global1[_wgslsmith_index_u32(0u, 8u)]).a);
}

