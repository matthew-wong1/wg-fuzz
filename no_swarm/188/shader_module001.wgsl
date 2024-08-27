struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: i32,
    d: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 16> = array<vec4<bool>, 16>(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true));

var<private> global1: array<Struct_1, 5>;

var<private> global2: Struct_4;

var<private> global3: vec2<bool>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -511f), _wgslsmith_f_op_f32(2162f - 424f)))))));
    var var_1 = arg_1;
    global1 = array<Struct_1, 5>();
    var var_2 = -143f;
    var_2 = -1060f;
    return ~_wgslsmith_mod_u32(135777u, 119152u >> (arg_0.b.x % 32u));
}

fn func_3() -> f32 {
    var var_0 = vec4<bool>(all(select(vec2<bool>(!global3.x, !global2.d), vec2<bool>(true, true), false & global2.b)), any(global0[_wgslsmith_index_u32(min(abs(abs(1u)), 9204u), 16u)]), true, false);
    global3 = select(vec2<bool>((-7478i & u_input.a.x) >= countOneBits(-23335i), (!global3.x || false) & global3.x), vec2<bool>(true, true), select(vec2<bool>(false, true), var_0.xx, vec2<bool>(var_0.x, true)));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -754f), _wgslsmith_f_op_f32(step(-506f, -1000f))))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-251f * -1439f), -904f, true != all(global0[_wgslsmith_index_u32(42063u, 16u)]))))));
    let var_2 = Struct_4(2147483647i, select(true, any(var_0.zzy), false), ~_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(17748i, u_input.b.x), ~u_input.b.xy), _wgslsmith_div_vec2_i32(~u_input.b.zx, vec2<i32>(-2147483647i, -10309i))), all(vec2<bool>(true, _wgslsmith_dot_vec3_u32(vec3<u32>(4955u, 0u, 0u), vec3<u32>(27949u, 78984u, 0u)) > ~0u)));
    var var_3 = global1[_wgslsmith_index_u32(reverseBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), reverseBits(~vec3<u32>(10925u, 8099u, 24930u)))), 5u)];
    return -410f;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_5(Struct_3(Struct_1(true), firstLeadingBit(-13039i), Struct_1(true)), vec4<f32>(964f, 334f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-622f + 552f) - -1065f), _wgslsmith_f_op_f32(f32(-1f) * -570f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - 605f)), all(vec4<bool>(global3.x, !global2.d, all(!vec3<bool>(true, arg_0.a, arg_0.a)), all(!vec4<bool>(arg_0.a, false, false, true)))));
    global0 = array<vec4<bool>, 16>();
    global2 = Struct_4(~6664i, all(select(select(global0[_wgslsmith_index_u32(1u, 16u)], vec4<bool>(arg_0.a, var_0.a.a.a, arg_0.a, arg_0.a), vec4<bool>(true, global3.x, var_0.a.c.a, true)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, ~0u), 16u)], (global3.x & arg_0.a) & !var_0.a.c.a)), -global2.a, true);
    global2 = Struct_4(reverseBits(-_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a.zx, vec2<i32>(2147483647i, 51501i), vec2<i32>(u_input.b.x, 0i)), vec2<i32>(u_input.a.x, 35365i))), false, _wgslsmith_div_i32(-2098i, i32(-1i) * -867i), all(vec2<bool>(var_0.a.a.a || global2.d, arg_0.a)));
    var var_1 = 2147483647i;
    return global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_mult_u32(select(~(~63023u), _wgslsmith_sub_u32(~1u, firstLeadingBit(31772u)), true), _wgslsmith_add_u32(1u, 1u))), 5u)];
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_4, arg_3: Struct_5) -> Struct_4 {
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -u_input.a.zx;
    global2 = func_4(Struct_2(func_2(global1[_wgslsmith_index_u32(func_1(Struct_2(global1[_wgslsmith_index_u32(0u, 5u)], vec2<u32>(20091u, 1u), global1[_wgslsmith_index_u32(15387u, 5u)]), -53363i) | 27647u, 5u)]), firstLeadingBit(vec2<u32>(~4294967295u, firstLeadingBit(1u))), Struct_1(true)), Struct_4(var_0.x, !global3.x, -var_0.x, select(false, true, false)), Struct_4(_wgslsmith_sub_i32(~42952i, global2.a) >> (~_wgslsmith_clamp_u32(26706u, 37678u, 0u) % 32u), true, ~abs(abs(18730i)), true), Struct_5(Struct_3(global1[_wgslsmith_index_u32(0u, 5u)], -46124i, Struct_1(global2.c < 30247i)), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -352f), 1854f)), _wgslsmith_f_op_f32(f32(-1f) * -106f), _wgslsmith_f_op_f32(abs(1891f)), 363f), select(1i, var_0.x, !global3.x) >= global2.c));
    global0 = array<vec4<bool>, 16>();
    var var_1 = ~0u;
    let var_2 = _wgslsmith_clamp_vec3_i32(~u_input.a.xzz, vec3<i32>(-firstLeadingBit(var_0.x), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(var_0, vec2<i32>(u_input.a.x, 2147483647i)), global2.c, global2.c), global2.c) ^ ~vec3<i32>(1i, u_input.b.x & global2.a, -2147483647i), ~(~_wgslsmith_div_vec3_i32(vec3<i32>(40434i, -18790i, 2147483647i), u_input.a.wwx ^ vec3<i32>(-8693i, var_0.x, -106257i))));
    var var_3 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(245f)))), 1000f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(355f)), _wgslsmith_f_op_f32(195f + -1148f), 452f, _wgslsmith_f_op_f32(step(-468f, -625f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(126f, -448f), -751f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -428f)))), 40939u == abs(select(_wgslsmith_div_u32(6851u, 1u), _wgslsmith_mult_u32(1u, 33260u), any(vec2<bool>(global3.x, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_3.x * -1365f));
}

