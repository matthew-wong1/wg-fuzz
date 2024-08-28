struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec2<u32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec4<i32>,
    d: Struct_3,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31> = array<u32, 31>(6749u, 1u, 12481u, 33526u, 1u, 46937u, 4294967295u, 5933u, 0u, 4294967295u, 17435u, 3278u, 22831u, 50555u, 1u, 35284u, 49325u, 110907u, 1u, 1u, 2146u, 1u, 0u, 4294967295u, 17949u, 4294967295u, 0u, 1u, 0u, 19272u, 21267u);

var<private> global1: array<bool, 8> = array<bool, 8>(false, true, false, false, true, false, true, false);

var<private> global2: vec4<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: u32) -> f32 {
    var var_0 = -1539f;
    var_0 = _wgslsmith_f_op_f32(548f * arg_1);
    var var_1 = vec2<bool>(!global1[_wgslsmith_index_u32(arg_2, 8u)], true);
    return _wgslsmith_div_f32(1299f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(730f, arg_1)))))));
}

fn func_3(arg_0: u32, arg_1: bool) -> vec2<i32> {
    var var_0 = vec3<bool>(!all(!(!vec2<bool>(arg_1, false))), _wgslsmith_div_i32(2147483647i, _wgslsmith_mod_i32(1i, u_input.b)) > u_input.a, global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_add_u32(13251u, 0u), ~global0[_wgslsmith_index_u32(abs(43465u), 31u)]), 8u)]);
    global1 = array<bool, 8>();
    var_0 = !select(!vec3<bool>(false, any(vec3<bool>(global1[_wgslsmith_index_u32(3113u, 8u)], global1[_wgslsmith_index_u32(arg_0, 8u)], true)), true), vec3<bool>(!global1[_wgslsmith_index_u32(arg_0, 8u)], !(global0[_wgslsmith_index_u32(arg_0, 31u)] != global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 31u)], 31u)]), all(vec2<bool>(false, var_0.x))), (_wgslsmith_f_op_f32(-global2.x) >= _wgslsmith_f_op_f32(-global2.x)) || (all(vec3<bool>(arg_1, global1[_wgslsmith_index_u32(arg_0, 8u)], true)) && true));
    var var_1 = 750f;
    var var_2 = Struct_2(all(!var_0.yx), select(select(vec3<bool>(var_0.x, var_0.x, arg_1), select(!vec3<bool>(var_0.x, arg_1, true), vec3<bool>(var_0.x, var_0.x, true), select(vec3<bool>(false, global1[_wgslsmith_index_u32(31715u, 8u)], false), vec3<bool>(arg_1, false, arg_1), true)), arg_1), select(select(!vec3<bool>(true, var_0.x, true), !vec3<bool>(arg_1, arg_1, arg_1), !vec3<bool>(true, var_0.x, var_0.x)), !(!vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(38226u, 31u)], 8u)], true, true)), select(select(vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 31u)], 31u)], 8u)], true, var_0.x), vec3<bool>(arg_1, false, global1[_wgslsmith_index_u32(4294967295u, 8u)]), arg_1), vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 31u)], 8u)], var_0.x, arg_1), vec3<bool>(true, true, var_0.x))), select(vec3<bool>(arg_1, global0[_wgslsmith_index_u32(arg_0, 31u)] <= 1u, 21518u < global0[_wgslsmith_index_u32(arg_0, 31u)]), !select(vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, false, false), vec3<bool>(var_0.x, true, var_0.x)), vec3<bool>(arg_1, arg_1 | global1[_wgslsmith_index_u32(75155u, 8u)], false))));
    return vec2<i32>(-1i, ~(-u_input.a));
}

fn func_2(arg_0: u32) -> StorageBuffer {
    var var_0 = ~abs(func_3(41526u, (4294967295u >= arg_0) | (global1[_wgslsmith_index_u32(4294967295u, 8u)] != global1[_wgslsmith_index_u32(1u, 8u)])));
    global1 = array<bool, 8>();
    var var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(16699u, 2972u), ~vec2<u32>(~20874u | _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(1u, 31u)], arg_0, arg_0), global0[_wgslsmith_index_u32(~46066u, 31u)] >> (~global0[_wgslsmith_index_u32(77377u, 31u)] % 32u)));
    let var_2 = 1u;
    var var_3 = Struct_3(select(select(vec4<bool>(global2.x < global2.x, global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(~1u, 8u)], true), !(!vec4<bool>(global1[_wgslsmith_index_u32(1u, 8u)], true, true, false)), false), vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_2, 4294967295u), 8u)], true, true, any(!vec3<bool>(global1[_wgslsmith_index_u32(95800u, 8u)], global1[_wgslsmith_index_u32(73403u, 8u)], true))), vec4<bool>(global1[_wgslsmith_index_u32(var_1.x, 8u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, var_2), select(vec2<u32>(78424u, 0u), vec2<u32>(39233u, 4294967295u), global1[_wgslsmith_index_u32(8532u, 8u)])), 8u)], global1[_wgslsmith_index_u32(~(var_1.x << (arg_0 % 32u)), 8u)], 392f >= _wgslsmith_f_op_f32(-global2.x))), global2.x, Struct_1(global1[_wgslsmith_index_u32(0u, 8u)], -vec4<i32>(~(-32761i), -var_0.x, var_0.x, -1i), vec2<u32>(~(~28195u), 82313u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(round(global2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(725f - 724f) * 1f)), true));
    return StorageBuffer(var_3.c.b.xx, _wgslsmith_add_i32(var_0.x, reverseBits(_wgslsmith_mod_i32(i32(-1i) * -2147483647i, firstTrailingBit(4035i)))), _wgslsmith_mult_vec3_i32(-var_3.c.b.wzw, vec3<i32>(-(~(-38162i)), u_input.b, -_wgslsmith_dot_vec4_i32(vec4<i32>(23137i, -40842i, 28756i, var_3.c.b.x), vec4<i32>(-1523i, -19643i, u_input.a, var_3.c.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1779f));
    global0 = array<u32, 31>();
    global0 = array<u32, 31>();
    let var_1 = u_input.b;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_2(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 31u)], 8u)], vec3<bool>(true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23882u, 31u)], 8u)], global1[_wgslsmith_index_u32(9075u, 8u)])), _wgslsmith_f_op_f32(abs(416f)), ~37300u)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - -1023f) - 1068f)))) * -244f);
    var_2 = -1491f;
    let x = u_input.a;
    s_output = func_2(4294967295u);
}

