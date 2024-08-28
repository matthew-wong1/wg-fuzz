struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4>;

var<private> global1: array<vec2<f32>, 8>;

var<private> global2: f32 = 283f;

var<private> global3: vec2<bool>;

var<private> global4: array<bool, 11>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> vec3<bool> {
    global1 = array<vec2<f32>, 8>();
    global3 = !(!vec2<bool>(!any(vec2<bool>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(36374u, 4u)], 11u)], global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 4u)], 11u)])), all(vec4<bool>(false, false, true, false))));
    return select(!(!select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26373u, 4u)], 11u)]), vec3<bool>(global4[_wgslsmith_index_u32(0u, 11u)], global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 4u)], 11u)], global3.x)), !vec3<bool>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 4u)], 11u)], global3.x, global4[_wgslsmith_index_u32(16491u, 11u)]), false)), select(!(!(!vec3<bool>(false, global3.x, true))), vec3<bool>(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(~0u, 4u)], 1u << (global0[_wgslsmith_index_u32(33550u, 4u)] % 32u)), 11u)], false, true), !(!all(vec4<bool>(true, false, true, false)))), true);
}

fn func_2(arg_0: i32, arg_1: f32) -> Struct_1 {
    global3 = vec2<bool>(!all(func_3()), false || all(vec3<bool>(!global3.x, global3.x, any(vec2<bool>(global4[_wgslsmith_index_u32(u_input.a, 11u)], true)))));
    var var_0 = Struct_1(!(!(!global3.x) != true));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(floor(arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, arg_1)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(766f * -1354f) - _wgslsmith_f_op_f32(-2496f * 650f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -198f), _wgslsmith_div_f32(arg_1, arg_1)) + 1236f)), 473f);
    var var_2 = -1000f;
    let var_3 = Struct_1(global0[_wgslsmith_index_u32(98496u, 4u)] >= ~(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(1u, 4u)], 40851u, u_input.c.x), vec3<u32>(1u, 35857u, global0[_wgslsmith_index_u32(58735u, 4u)])) & 29851u));
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1206f) <= arg_1);
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> u32 {
    var var_0 = ~vec3<u32>(47275u, ~1u, _wgslsmith_add_u32(4294967295u, ~(~global0[_wgslsmith_index_u32(1u, 4u)])));
    let var_1 = reverseBits(_wgslsmith_dot_vec2_i32(~u_input.d.yy, vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b, 10883i, u_input.b, u_input.b), ~vec4<i32>(u_input.b, 2659i, u_input.b, u_input.d.x)), u_input.b)));
    var var_2 = func_2(-2147483647i, arg_0.x);
    global1 = array<vec2<f32>, 8>();
    global2 = 1719f;
    return _wgslsmith_sub_u32(u_input.a, max(global0[_wgslsmith_index_u32(55995u, 4u)], abs((arg_3 | var_0.x) << (_wgslsmith_mult_u32(5761u, 28905u) % 32u))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    global3 = select(vec2<bool>(false, func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-678f, -1290f, 534f)), arg_0.a, func_2(u_input.d.x, 470f), 4294967295u) == ~u_input.a), select(arg_2, !vec2<bool>(!arg_2.x, any(vec2<bool>(arg_0.a, false))), global3.x), arg_1.a);
    let var_1 = select(!(!select(select(vec4<bool>(arg_1.a, true, false, arg_2.x), vec4<bool>(false, global3.x, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13110u, 4u)], 11u)], false), vec4<bool>(true, global4[_wgslsmith_index_u32(u_input.c.x, 11u)], var_0.a, true)), vec4<bool>(global3.x, true, true, true), select(vec4<bool>(false, arg_2.x, global4[_wgslsmith_index_u32(78130u, 11u)], arg_1.a), vec4<bool>(true, true, true, true), vec4<bool>(false, global3.x, false, global4[_wgslsmith_index_u32(11760u, 11u)])))), select(vec4<bool>(true, any(!vec4<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 11u)], true, true, global4[_wgslsmith_index_u32(u_input.a, 11u)])), true, true & global3.x), !vec4<bool>(!arg_3.a, var_0.a, any(vec4<bool>(global3.x, global4[_wgslsmith_index_u32(0u, 11u)], arg_3.a, var_0.a)), false), select(vec4<bool>(u_input.d.x == u_input.d.x, false, true, u_input.d.x > u_input.d.x), select(vec4<bool>(true, arg_1.a, false, false), !vec4<bool>(false, arg_1.a, true, false), any(vec2<bool>(arg_0.a, true))), !global4[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 4u)], 4u)], 11u)])), !(!func_3().x));
    var var_2 = select(vec3<i32>(-u_input.d.x, -18062i, min(u_input.d.x & u_input.b, u_input.d.x)), abs(u_input.d), all(!(!var_1))) << (~firstLeadingBit(vec3<u32>(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(u_input.c.x, 4u)], u_input.c.x, u_input.a), ~global0[_wgslsmith_index_u32(4294967295u, 4u)], ~u_input.c.x)) % vec3<u32>(32u));
    var var_3 = func_2(var_2.x ^ -reverseBits(-1816i), -1000f);
    return Struct_1(!arg_2.x);
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> bool {
    global1 = array<vec2<f32>, 8>();
    global1 = array<vec2<f32>, 8>();
    global4 = array<bool, 11>();
    global0 = array<u32, 4>();
    let var_0 = _wgslsmith_dot_vec4_u32(~(~vec4<u32>(29106u, u_input.c.x, 16054u, u_input.c.x)), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(0u, arg_2, 7910u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 4u)], 4u)], 4u)], 4u)]), vec4<u32>(arg_2, global0[_wgslsmith_index_u32(arg_2, 4u)], u_input.a, u_input.a), vec4<bool>(true, true, global4[_wgslsmith_index_u32(80176u, 11u)], false)), vec4<u32>(min(arg_2, 50972u), ~arg_2, 1u, ~4294967295u), min(vec4<u32>(arg_2, 0u, 0u, u_input.c.x) << (vec4<u32>(arg_2, 6585u, 4294967295u, 4294967295u) % vec4<u32>(32u)), min(vec4<u32>(arg_2, u_input.c.x, 2110u, arg_2), vec4<u32>(arg_2, arg_2, 12340u, 27175u))))) & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(max(26212u, arg_2) & 0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(65868u, 50546u, 59225u, 1u), abs(vec4<u32>(45879u, 52610u, u_input.a, global0[_wgslsmith_index_u32(1u, 4u)]))))), 4u)], 4u)];
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec2<bool>(any(select(vec4<bool>(true, true, true, global4[_wgslsmith_index_u32(~38164u, 11u)]), vec4<bool>(u_input.a > u_input.c.x, 17569i > u_input.b, !global3.x, all(vec4<bool>(false, global3.x, global3.x, true))), any(select(vec3<bool>(global3.x, global3.x, false), vec3<bool>(global4[_wgslsmith_index_u32(20349u, 11u)], global4[_wgslsmith_index_u32(58280u, 11u)], false), vec3<bool>(global3.x, true, global4[_wgslsmith_index_u32(19652u, 11u)]))))), any(!vec3<bool>(!global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 4u)], 11u)], all(vec3<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 11u)], global3.x, true)), all(vec4<bool>(global3.x, global4[_wgslsmith_index_u32(33937u, 11u)], true, global3.x)))));
    global3 = select(select(vec2<bool>(select(false, global4[_wgslsmith_index_u32(23274u, 11u)], true), true), !vec2<bool>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 31502u), 4u)], 11u)], true), !(!vec2<bool>(global4[_wgslsmith_index_u32(63076u, 11u)], global3.x))), vec2<bool>(!func_5(-1636f, func_1(Struct_1(true), Struct_1(global3.x), vec2<bool>(global4[_wgslsmith_index_u32(0u, 11u)], true), Struct_1(global4[_wgslsmith_index_u32(u_input.c.x, 11u)])), 42632u), true), vec2<bool>(any(!(!vec2<bool>(true, global4[_wgslsmith_index_u32(u_input.a, 11u)]))), func_3().x));
    var var_0 = firstTrailingBit(_wgslsmith_div_vec3_u32(firstLeadingBit(firstLeadingBit(~vec3<u32>(30600u, u_input.c.x, 0u))), vec3<u32>(_wgslsmith_add_u32(30173u, global0[_wgslsmith_index_u32(1u, 4u)]), 4294967295u, firstLeadingBit(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(1u, 4u)], u_input.c.x)))));
    let var_1 = !select(vec2<bool>(!(u_input.d.x <= u_input.b), !(var_0.x > 0u)), vec2<bool>(select(true, false && global4[_wgslsmith_index_u32(var_0.x, 11u)], all(vec4<bool>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 4u)], 11u)], false, global4[_wgslsmith_index_u32(0u, 11u)], global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 4u)], 11u)]))), any(!vec3<bool>(global3.x, true, global3.x))), func_2(2147483647i, _wgslsmith_f_op_f32(round(-1422f))).a);
    global3 = vec2<bool>(global3.x & !(!global3.x), !global3.x);
    global2 = -1285f;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1708f - -807f))))));
    global1 = array<vec2<f32>, 8>();
    let var_3 = func_2(i32(-1i) * -1i, var_2).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(6749u, u_input.c.x, var_0.x, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.c.x, 0u, 0u), vec4<u32>(var_0.x, 77580u, 10973u, u_input.c.x))), 4u)], 8u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(~0u, 8u)])) * _wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(abs(~1u), 8u)] + global1[_wgslsmith_index_u32(1u >> (_wgslsmith_add_u32(u_input.a, global0[_wgslsmith_index_u32(92881u, 4u)]) % 32u), 8u)])), ~_wgslsmith_dot_vec3_i32(select(u_input.d, vec3<i32>(-12148i, u_input.d.x, u_input.b), true), ~u_input.d) ^ ~u_input.b, var_0.x);
}

