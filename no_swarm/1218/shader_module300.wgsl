struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: Struct_4,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: f32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: array<bool, 4> = array<bool, 4>(false, true, false, true);

var<private> global2: vec3<i32> = vec3<i32>(i32(-2147483648), 2147483647i, -53685i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32) -> vec3<i32> {
    let var_0 = vec3<bool>(all(vec3<bool>(all(vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(u_input.b.x, 4u)])) & true, ~51012u > u_input.a, _wgslsmith_f_op_f32(trunc(158f)) < _wgslsmith_f_op_f32(-arg_0))), all(select(vec4<bool>(global1[_wgslsmith_index_u32(firstLeadingBit(0u), 4u)], false, any(vec2<bool>(global1[_wgslsmith_index_u32(1u, 4u)], false)), all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 4u)], false, false, false))), vec4<bool>(!global1[_wgslsmith_index_u32(u_input.a, 4u)], true, !global1[_wgslsmith_index_u32(84927u, 4u)], 0i >= global2.x), !select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(9612u, 4u)], false, global1[_wgslsmith_index_u32(u_input.a, 4u)]), vec4<bool>(false, false, global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(u_input.a, 4u)]), false))), true);
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(global2.x << (0u % 32u), -_wgslsmith_div_i32(global2.x, global2.x) ^ (global2.x >> (firstTrailingBit(u_input.a) % 32u))), vec2<i32>(_wgslsmith_add_i32(16223i, firstTrailingBit(global2.x) & global2.x), global2.x));
    var var_2 = ~global2.x;
    global1 = array<bool, 4>();
    return -vec3<i32>(reverseBits(i32(-1i) * -global2.x), abs(-1i), global2.x);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<u32>) -> Struct_5 {
    global2 = -_wgslsmith_div_vec3_i32(func_3(1000f), func_3(435f) ^ vec3<i32>(-4291i, global2.x, -1i)) << (arg_1.xzx % vec3<u32>(32u));
    global0 = array<Struct_1, 9>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1548f);
    let var_1 = Struct_3(global0[_wgslsmith_index_u32(select(min(arg_1.x, u_input.b.x) >> (_wgslsmith_add_u32(arg_1.x << (u_input.a % 32u), 1u) % 32u), 36113u ^ ~firstLeadingBit(arg_1.x), any(vec3<bool>(true, select(false, arg_0.x, arg_0.x), global2.x <= -2206i))), 9u)], !any(arg_0), global2.x >> (_wgslsmith_add_u32(1u, abs(u_input.a)) % 32u), global0[_wgslsmith_index_u32(firstTrailingBit(1u), 9u)], -global2.x);
    global2 = var_1.d.c;
    return Struct_5(~vec4<u32>(min(55054u, 0u) & u_input.b.x, ~4294967295u, _wgslsmith_dot_vec3_u32(select(arg_1.ywx, arg_1.yxw, vec3<bool>(true, false, false)), arg_1.zyx), abs(67665u)), u_input.b, Struct_4(0u), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.d.d, -180f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d.d, var_1.a.d) * vec2<f32>(1000f, var_1.a.d))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1000f * 1011f), _wgslsmith_f_op_f32(-var_1.d.d)))));
}

fn func_4(arg_0: Struct_5) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1779f, -511f, arg_0.e.x) - vec3<f32>(568f, arg_0.e.x, arg_0.e.x))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.e.x), -1102f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.e.x), _wgslsmith_f_op_f32(-arg_0.e.x)))));
    var var_1 = select(!(!vec3<bool>(true, true & global1[_wgslsmith_index_u32(u_input.a, 4u)], !global1[_wgslsmith_index_u32(arg_0.c.a, 4u)])), !(!select(vec3<bool>(global1[_wgslsmith_index_u32(47584u, 4u)], true, true), !vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(arg_0.b.x, 4u)]), true)), !select(!(!vec3<bool>(arg_0.d, false, false)), !vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 4u)], true), func_2(vec2<bool>(false, global1[_wgslsmith_index_u32(arg_0.a.x, 4u)]), arg_0.a << (arg_0.a % vec4<u32>(32u))).d));
    var var_2 = vec3<i32>(global2.x | 0i, 2147483647i, _wgslsmith_sub_i32(global2.x, ~firstTrailingBit(global2.x)));
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-939f, -614f, 2437f, var_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1475f, 1897f, arg_0.e.x) * _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 886f, arg_0.e.x, 256f), vec4<f32>(598f, arg_0.e.x, arg_0.e.x, var_0.x))))) * vec4<f32>(func_2(select(vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, global1[_wgslsmith_index_u32(0u, 4u)]), global1[_wgslsmith_index_u32(1u, 4u)]), vec4<u32>(u_input.b.x, 12610u, 0u, arg_0.c.a)).e.x, arg_0.e.x, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -404f)))));
    var_1 = !vec3<bool>(all(var_1.zz), any(!vec4<bool>(arg_0.d, false, arg_0.d, false)) || (any(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 4u)], true, global1[_wgslsmith_index_u32(0u, 4u)])) != true), false);
    return _wgslsmith_add_u32(arg_0.c.a, max(abs(1u) | firstTrailingBit(101181u), 11051u));
}

fn func_1(arg_0: i32, arg_1: i32) -> bool {
    global0 = array<Struct_1, 9>();
    var var_0 = _wgslsmith_clamp_u32(_wgslsmith_add_u32(~1u, u_input.b.x), ~u_input.a, 45911u) & func_4(func_2(vec2<bool>(true, true), vec4<u32>(~0u, u_input.b.x, u_input.a >> (u_input.a % 32u), firstTrailingBit(u_input.b.x))));
    var_0 = 9267u;
    let var_1 = reverseBits(_wgslsmith_add_i32(1i, -global2.x) ^ arg_1) & _wgslsmith_add_i32(~max(~7509i, func_3(-406f).x), min(_wgslsmith_div_i32(arg_1, ~(-73405i)), -arg_1));
    var var_2 = ~select(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, u_input.b.x) & u_input.b, u_input.b), func_4(Struct_5(vec4<u32>(20789u, 24878u, 1u, 0u) ^ vec4<u32>(4294967295u, 13193u, u_input.b.x, 1u), ~u_input.b, Struct_4(42823u), global1[_wgslsmith_index_u32(~0u, 4u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1941f, 470f)))), true);
    return !global1[_wgslsmith_index_u32(36067u, 4u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 9>();
    let var_0 = ~(~vec2<i32>(global2.x, global2.x));
    var var_1 = Struct_1(true, select(!global1[_wgslsmith_index_u32(1u, 4u)], true | global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, max(u_input.b.x, 4294967295u)), 4u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(25u, u_input.a), 4u)] & func_1(global2.x & global2.x, ~(-26277i))), _wgslsmith_add_vec3_i32(abs(vec3<i32>(42656i, -5794i, 2147483647i)), vec3<i32>(var_0.x | global2.x, global2.x << (u_input.b.x % 32u), -2147483647i)) >> (~vec3<u32>(54530u, ~u_input.a, ~35611u) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1002f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f - 1734f), -599f, global1[_wgslsmith_index_u32(u_input.a, 4u)])))));
    var var_2 = 65721u;
    global0 = array<Struct_1, 9>();
    global1 = array<bool, 4>();
    var var_3 = _wgslsmith_mod_vec2_i32(~(-vec2<i32>(var_0.x, ~(-29506i))), -var_1.c.yy | (var_1.c.xz | vec2<i32>(_wgslsmith_sub_i32(var_1.c.x, 2147483647i), var_1.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(vec3<u32>(49093u, 15252u, u_input.a) << (vec3<u32>(59884u, 1u, u_input.a) % vec3<u32>(32u)))) << (vec3<u32>(_wgslsmith_clamp_u32(u_input.a, 1u, firstTrailingBit(33324u)), _wgslsmith_mod_u32(~4294967295u, _wgslsmith_div_u32(u_input.a, 1u)), ~(~4294967295u)) % vec3<u32>(32u)), ~(~(~vec4<u32>(83565u, u_input.b.x, u_input.a, 48272u))) ^ _wgslsmith_sub_vec4_u32(~(~vec4<u32>(u_input.b.x, u_input.a, 1u, u_input.b.x)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 2165u, 4294967295u, u_input.b.x), vec4<u32>(5698u, u_input.b.x, 77068u, u_input.a)) << (abs(vec4<u32>(13411u, u_input.a, u_input.a, u_input.b.x)) % vec4<u32>(32u))), -1417f, u_input.a, ~select(vec3<u32>(~u_input.a, _wgslsmith_mult_u32(u_input.b.x, u_input.a), u_input.a), ~vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), !(!vec3<bool>(false, true, global1[_wgslsmith_index_u32(1u, 4u)]))));
}

