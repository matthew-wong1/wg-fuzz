struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
    c: vec2<i32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 11> = array<vec3<i32>, 11>(vec3<i32>(-1i, -1i, 2147483647i), vec3<i32>(34659i, 2147483647i, 2147483647i), vec3<i32>(-15542i, -37263i, 0i), vec3<i32>(78285i, 1i, 37750i), vec3<i32>(-20311i, 8897i, -1i), vec3<i32>(2147483647i, 0i, 7012i), vec3<i32>(-40994i, 35636i, 0i), vec3<i32>(-1i, -1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 21984i, 0i), vec3<i32>(2147483647i, 32327i, 55100i), vec3<i32>(19245i, 19947i, i32(-2147483648)));

var<private> global1: array<vec3<bool>, 10> = array<vec3<bool>, 10>(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false));

var<private> global2: Struct_2 = Struct_2(vec2<u32>(16779u, 99339u), vec4<f32>(-336f, 741f, -1189f, 591f), Struct_1(-1907f), 16525u);

var<private> global3: array<i32, 1> = array<i32, 1>(-26005i);

var<private> global4: array<f32, 9>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec2<bool> {
    let var_0 = global2.b.yzy;
    global2 = Struct_2(_wgslsmith_clamp_vec2_u32(~u_input.e.xx, ~abs(~vec2<u32>(24001u, global2.d)), ~u_input.e.wy), vec4<f32>(global4[_wgslsmith_index_u32(~u_input.e.x & firstLeadingBit(u_input.c.x), 9u)], -1210f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -162f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1219f - 787f)))), -1271f), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x))))), _wgslsmith_mod_u32(0u, 4294967295u >> (_wgslsmith_dot_vec3_u32(u_input.e.zyy, firstTrailingBit(u_input.c.xzz)) % 32u)));
    global0 = array<vec3<i32>, 11>();
    let var_1 = vec2<f32>(global2.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-902f - -759f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(105f - _wgslsmith_f_op_f32(trunc(1401f))) + 1213f))));
    global1 = array<vec3<bool>, 10>();
    return vec2<bool>(any(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.e.x, ~_wgslsmith_add_u32(global2.d, global2.d)), 10u)]), all(vec2<bool>(true, true)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: bool) -> bool {
    global0 = array<vec3<i32>, 11>();
    var var_0 = Struct_4(select(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_mult_u32(1u, arg_2.x), ~min(u_input.d.x, arg_2.x)), 10u)], select(global1[_wgslsmith_index_u32(countOneBits(global2.a.x), 10u)], global1[_wgslsmith_index_u32(reverseBits(~u_input.d.x), 10u)], vec3<bool>(arg_3, true, false)), false), _wgslsmith_dot_vec2_u32(u_input.c.zy, u_input.e.yy), u_input.b.yy & vec2<i32>(4585i, _wgslsmith_add_i32(global3[_wgslsmith_index_u32(17831u, 1u)], _wgslsmith_div_i32(2147483647i, u_input.b.x))), Struct_3(min(~vec4<u32>(68884u, 4294967295u, arg_0.a.x, 0u), vec4<u32>(~arg_2.x, arg_2.x, _wgslsmith_mod_u32(global2.d, arg_0.a.x), 0u)), vec2<bool>(!arg_0.b.x == all(vec4<bool>(false, arg_3, true, arg_3)), arg_3)));
    return all(!select(!func_3(), func_3(), vec2<bool>(true && var_0.a.x, global2.a.x <= 31367u)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: vec4<u32>) -> vec2<bool> {
    let var_0 = select(global1[_wgslsmith_index_u32(54174u, 10u)], vec3<bool>(abs(16502u & arg_2.x) < _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.e.xz, vec2<u32>(16695u, u_input.a)), ~vec2<u32>(0u, u_input.a)), func_2(Struct_3(vec4<u32>(u_input.c.x, u_input.d.x, 87866u, global2.a.x), arg_1), global2.c, vec4<u32>(abs(1u), firstLeadingBit(0u), firstTrailingBit(u_input.e.x), ~arg_2.x), true), !func_3().x), true);
    let var_1 = u_input.d.x;
    global1 = array<vec3<bool>, 10>();
    var var_2 = 2147483647i;
    var var_3 = Struct_4(vec3<bool>(true, true, var_0.x), max(reverseBits(reverseBits(_wgslsmith_add_u32(u_input.c.x, arg_2.x))), arg_2.x), vec2<i32>(min(-2147483647i, firstLeadingBit(abs(u_input.b.x))), 25512i << (((global2.a.x | 0u) >> (global2.d % 32u)) % 32u)), Struct_3(vec4<u32>(abs(1235u) | global2.a.x, ~_wgslsmith_clamp_u32(0u, 4294967295u, u_input.e.x), _wgslsmith_sub_u32(~global2.a.x, arg_2.x), select(~21769u, 1u, any(vec4<bool>(true, false, var_0.x, var_0.x)))), vec2<bool>(true, !(global2.d == u_input.d.x))));
    return vec2<bool>(var_0.x, any(select(vec4<bool>(false != arg_1.x, true, false == arg_1.x, var_3.a.x), vec4<bool>(false, func_3().x, u_input.b.x > 0i, var_0.x), !select(vec4<bool>(var_3.d.b.x, true, false, true), vec4<bool>(var_3.d.b.x, var_0.x, false, false), true))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<f32, 9>();
    var var_0 = vec4<bool>(select(false, select(false, true, all(vec2<bool>(true, true))), true), any(select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), true))) & ((global2.d << (1u % 32u)) >= ~global2.d), all(!(!func_1(global2.b, vec2<bool>(true, false), vec4<u32>(global2.d, 14520u, global2.a.x, 0u)))), _wgslsmith_f_op_f32(max(1000f, 2633f)) >= global4[_wgslsmith_index_u32(global2.a.x, 9u)]);
    var var_1 = global2.d;
    var_1 = 6484u;
    let var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(global4[_wgslsmith_index_u32(select(u_input.e.x, 40197u, true), 9u)], _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(global2.d, 9u)]))), 1f)), global4[_wgslsmith_index_u32(max(abs(u_input.e.x), 94006u & global2.d) | 0u, 9u)]));
    global4 = array<f32, 9>();
    global1 = array<vec3<bool>, 10>();
    let var_3 = global2.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a) - 604f), var_2.a)));
}

