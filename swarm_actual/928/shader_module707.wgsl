struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(64676i, -1000f, 264f, true);

var<private> global1: array<Struct_1, 32>;

var<private> global2: Struct_1 = Struct_1(0i, 473f, 171f, true);

var<private> global3: array<bool, 6>;

var<private> global4: array<vec4<u32>, 22> = array<vec4<u32>, 22>(vec4<u32>(0u, 26447u, 88474u, 73165u), vec4<u32>(4294967295u, 19919u, 30978u, 42220u), vec4<u32>(3924u, 6761u, 0u, 1u), vec4<u32>(0u, 44901u, 0u, 8616u), vec4<u32>(4294967295u, 363u, 99026u, 34016u), vec4<u32>(0u, 2935u, 29288u, 14923u), vec4<u32>(46083u, 1u, 0u, 4294967295u), vec4<u32>(0u, 5263u, 9659u, 18574u), vec4<u32>(83333u, 51342u, 41274u, 0u), vec4<u32>(1u, 56356u, 25143u, 99550u), vec4<u32>(4294967295u, 978u, 4294967295u, 38367u), vec4<u32>(1u, 4294967295u, 16323u, 0u), vec4<u32>(31242u, 4294967295u, 4294967295u, 29730u), vec4<u32>(30016u, 67420u, 16646u, 1u), vec4<u32>(53714u, 0u, 0u, 0u), vec4<u32>(20803u, 1u, 28535u, 4002u), vec4<u32>(1u, 43941u, 0u, 10486u), vec4<u32>(1u, 0u, 1u, 4294967295u), vec4<u32>(72899u, 65850u, 1u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 26594u, 1u), vec4<u32>(57049u, 4294967295u, 0u, 0u), vec4<u32>(0u, 19935u, 33205u, 1u));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: vec2<bool>) -> vec4<i32> {
    global0 = Struct_1(global0.a, _wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(-450f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1175f, -1000f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * 489f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-2363f, _wgslsmith_f_op_f32(global2.b - global2.b))), global0.c)))), false);
    var var_0 = 59059u;
    let var_1 = global1[_wgslsmith_index_u32(u_input.b, 32u)];
    global4 = array<vec4<u32>, 22>();
    var var_2 = u_input.b;
    return ~vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(1790i & var_1.a, ~40590i), -min(global2.a, 5893i), global0.a), _wgslsmith_mod_i32(-2147483647i, global2.a), firstLeadingBit(u_input.a.x), _wgslsmith_mult_i32(-2147483647i, -1i) << ((~u_input.b >> (abs(46742u) % 32u)) % 32u));
}

fn func_1(arg_0: i32) -> u32 {
    global3 = array<bool, 6>();
    let var_0 = _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.c >> (u_input.d.xw % vec2<u32>(32u)), abs(_wgslsmith_sub_vec2_i32(-u_input.a.wx, ~u_input.c))), vec2<i32>(1i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1669i, global0.a, 12146i, -1i), func_2(u_input.a, global0.b, vec2<bool>(global0.d, false))), u_input.a.x, ~global0.a)));
    global3 = array<bool, 6>();
    global3 = array<bool, 6>();
    global3 = array<bool, 6>();
    return ~(~30645u);
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: bool) -> f32 {
    global3 = array<bool, 6>();
    var var_0 = Struct_1(~u_input.c.x, _wgslsmith_f_op_f32(min(-835f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1500f), global2.c))))), _wgslsmith_f_op_f32(global0.b * 628f), true);
    let var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, abs(0u) & u_input.d.x, 25201u, u_input.d.x << (u_input.d.x % 32u)), vec4<u32>(u_input.b, 69941u, u_input.d.x, _wgslsmith_sub_u32(u_input.d.x, ~u_input.b) & _wgslsmith_dot_vec2_u32(countOneBits(u_input.d.yx), ~u_input.d.yz)));
    return _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-435f - global2.b) - 1f))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> i32 {
    var var_0 = Struct_1(-2147483647i, 1000f, -1438f, arg_1.d);
    global2 = Struct_1(0i, _wgslsmith_f_op_f32(global0.c - global2.c), _wgslsmith_f_op_f32(abs(-1025f)), any(select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(arg_1.d, true, true, true), arg_1.d), !vec4<bool>(true, true, false, arg_1.d), !vec4<bool>(true, false, false, var_0.d)), !(!vec4<bool>(false, global3[_wgslsmith_index_u32(arg_2, 6u)], false, true)), vec4<bool>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.d.wz, vec2<u32>(4294967295u, arg_2)), 6u)], false, true, any(vec3<bool>(true, global2.d, false))))));
    let var_1 = Struct_1(~_wgslsmith_div_i32(~arg_1.a, i32(-1i) * -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), !(!(var_0.a >= global0.a)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.wyy, vec3<f32>(arg_1.c, _wgslsmith_f_op_f32(f32(-1f) * -836f), global2.b)));
    let var_3 = ~vec4<u32>(arg_2, _wgslsmith_mult_u32(~34067u, arg_2), ~u_input.b, ~(~(~u_input.d.x)));
    return u_input.c.x >> (u_input.d.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-89391i, global0.b, -239f, u_input.c.x < _wgslsmith_div_i32(~4517i | _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), 1i & u_input.a.x));
    let var_1 = func_1(-var_0.a);
    let var_2 = 4294967295u;
    let var_3 = -1000f;
    let var_4 = Struct_1(_wgslsmith_clamp_i32(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-929f, var_3, global0.b, var_0.b)), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1, 51537u), 32u)], 51394u, _wgslsmith_f_op_f32(func_3(vec3<bool>(false, global2.d, true), 960f, true))) << (0u % 32u), 0i, 1i), _wgslsmith_f_op_f32(func_3(vec3<bool>(!all(vec4<bool>(true, false, true, true)), var_0.d, _wgslsmith_f_op_f32(-var_3) < -280f), global0.c, global2.d)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.b * -615f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_3)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3, global2.b)))), !any(!vec4<bool>(false, true, global2.d, true)))), all(select(!(!vec4<bool>(false, global3[_wgslsmith_index_u32(15409u, 6u)], var_0.d, global3[_wgslsmith_index_u32(var_1, 6u)])), select(vec4<bool>(global2.d, false, true, true), !vec4<bool>(var_0.d, global3[_wgslsmith_index_u32(var_2, 6u)], false, true), true), all(vec3<bool>(global0.d, true, global0.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_4.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.b))))), var_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(112f * -1000f))), ~select(70103u, 32931u, !global2.d), ~_wgslsmith_dot_vec3_i32(-u_input.a.xxx, -(~vec3<i32>(-27098i, var_0.a, var_0.a))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2564f, -1626f)) - _wgslsmith_f_op_f32(select(-774f, 253f, true))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3 - -773f), -170f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(!vec3<bool>(global0.d, true, false), _wgslsmith_f_op_f32(-var_4.c), true)) * _wgslsmith_f_op_f32(f32(-1f) * -335f))), ~_wgslsmith_add_u32(_wgslsmith_add_u32(~50375u, _wgslsmith_div_u32(16768u, u_input.b)), select(firstLeadingBit(var_1), var_2, any(vec3<bool>(false, global0.d, global0.d)))));
}

