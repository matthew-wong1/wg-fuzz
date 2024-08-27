struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(false, true, i32(-2147483648)), Struct_1(true, true, -1i), Struct_1(false, true, 6237i), Struct_1(true, false, i32(-2147483648)), Struct_1(true, true, -35283i), Struct_1(true, false, 2147483647i), Struct_1(false, true, -8526i), Struct_1(true, false, i32(-2147483648)), Struct_1(false, false, -39056i), Struct_1(true, true, 17188i), Struct_1(true, false, i32(-2147483648)), Struct_1(true, true, 0i), Struct_1(true, false, 0i), Struct_1(true, true, 0i), Struct_1(true, true, i32(-2147483648)));

var<private> global1: vec2<i32> = vec2<i32>(8903i, i32(-2147483648));

var<private> global2: vec3<bool>;

var<private> global3: array<u32, 23> = array<u32, 23>(49209u, 11566u, 1u, 20853u, 4294967295u, 4294967295u, 0u, 4294967295u, 24538u, 1u, 1u, 55237u, 4294967295u, 20460u, 61816u, 35335u, 92731u, 45602u, 0u, 1u, 4294967295u, 4294967295u, 17116u);

var<private> global4: f32 = 2529f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec4<bool>) -> i32 {
    return _wgslsmith_mult_i32(global1.x, -45790i >> (0u % 32u));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: vec4<u32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2120f * _wgslsmith_f_op_f32(f32(-1f) * -1594f))))));
    let var_1 = vec4<f32>(604f, -184f, -1138f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-var_0)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1721f, -947f), _wgslsmith_f_op_f32(var_0 - var_0))))));
    var var_2 = Struct_1(true, select(global2.x, all(select(select(vec3<bool>(global2.x, global2.x, false), vec3<bool>(global2.x, true, global2.x), false), select(vec3<bool>(global2.x, true, false), vec3<bool>(global2.x, false, true), true), select(vec3<bool>(global2.x, global2.x, false), vec3<bool>(false, global2.x, true), false))), -6269i <= (_wgslsmith_mod_i32(33744i, global1.x) ^ _wgslsmith_dot_vec3_i32(u_input.b, u_input.b))), arg_1.x);
    let var_3 = Struct_1(true, any(vec4<bool>(true, global2.x, var_2.a, max(u_input.b.x, global1.x) >= firstLeadingBit(16486i))), var_2.c);
    global2 = !select(!vec3<bool>(!var_2.b, true, false), vec3<bool>(any(vec3<bool>(var_3.b, var_3.a, true)), var_2.b, true), all(select(global2.yz, global2.yy, select(global2.yy, global2.yy, global2.xx))));
    return vec3<bool>(false, false, true && !(!(!global2.x)));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: vec4<bool>, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_2(-2253f);
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(max(3582u, global3[_wgslsmith_index_u32(0u, 23u)]) >> (_wgslsmith_mult_u32(76695u, u_input.a.x) % 32u), u_input.d.x), 23u)];
    let var_2 = u_input.a.x;
    global1 = vec2<i32>(i32(-1i) * -global1.x, func_2(arg_2));
    var var_3 = false;
    return 80477u;
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec3<i32>) -> Struct_2 {
    var var_0 = vec4<u32>(u_input.d.x, 1u, abs(29771u) | u_input.c, ~(~(~_wgslsmith_mod_u32(87216u, global3[_wgslsmith_index_u32(25116u, 23u)]))));
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -213f) - arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2570f - _wgslsmith_f_op_f32(f32(-1f) * -294f)) + _wgslsmith_f_op_f32(max(2600f, 1597f))))));
    let var_2 = func_2(vec4<bool>(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, u_input.c) & u_input.c, 23u)] == 4294967295u, !(!global2.x) | any(select(global2.xz, vec2<bool>(global2.x, true), global2.yy)), !(global1.x <= (arg_2.x | u_input.e.x)), arg_1));
    var var_3 = func_4(vec2<f32>(-1194f, arg_0), !func_3(0u, ~u_input.b, vec4<u32>(var_0.x, 1u, 27930u, 54620u)), vec4<bool>(true, 1u < global3[_wgslsmith_index_u32(18101u ^ var_0.x, 23u)], !(!arg_1), global2.x), global0[_wgslsmith_index_u32(max(~abs(u_input.c), ~51991u >> (~u_input.a.x % 32u)), 15u)]) << (u_input.d.x % 32u);
    var var_4 = vec4<bool>(true, (select(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 61316u), vec2<u32>(var_0.x, 0u)), select(global3[_wgslsmith_index_u32(39776u, 23u)], 1u, global2.x), !global2.x) ^ 77785u) <= global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~var_0.x, 35529u), 23u)], true, ((~4294967295u << (~4294967295u % 32u)) >> (~countOneBits(u_input.c) % 32u)) >= _wgslsmith_clamp_u32(_wgslsmith_mult_u32(firstLeadingBit(1u), global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(0u, 23u)], 23u)]), ~select(u_input.a.x, 4294967295u, arg_1), var_0.x));
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(-747f * arg_0))) + var_1.x)));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    global3 = array<u32, 23>();
    let var_0 = arg_0;
    let var_1 = func_1(_wgslsmith_f_op_f32(-arg_0.a), (!any(vec3<bool>(global2.x, global2.x, true)) & global2.x) | !global2.x, -(vec3<i32>(1i, ~(-18841i), global1.x) | vec3<i32>(~8104i, -global1.x, -26622i)));
    var var_2 = abs(-global1.x);
    let var_3 = global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~(~(~global3[_wgslsmith_index_u32(abs(select(global3[_wgslsmith_index_u32(u_input.c, 23u)], u_input.d.x, global2.x)), 23u)])), 23u)], 15u)];
    return func_1(_wgslsmith_f_op_f32(trunc(147f)), true, vec3<i32>(~(~var_3.c), -u_input.e.x, ~_wgslsmith_mult_i32(17622i, min(global1.x, 6485i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 15>();
    var var_0 = func_5(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1954f)), !((u_input.a.x & u_input.c) == u_input.d.x), firstLeadingBit(u_input.b)));
    let var_1 = func_1(_wgslsmith_f_op_f32(-var_0.a), all(vec4<bool>(global2.x && global2.x, any(vec4<bool>(true, false, global2.x, false)), global2.x, global2.x)) && true, u_input.b);
    global3 = array<u32, 23>();
    global1 = u_input.e.xy;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, ~global3[_wgslsmith_index_u32(abs(u_input.d.x), 23u)], reverseBits(global3[_wgslsmith_index_u32(10691u, 23u)]) | func_4(vec2<f32>(1206f, -2149f), vec3<bool>(true, global2.x, global2.x), vec4<bool>(true, global2.x, global2.x, global2.x), Struct_1(global2.x, global2.x, u_input.e.x))), 23u)], 23u)]), countOneBits(~(~(~1u))));
}

