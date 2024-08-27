struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec4<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30> = array<f32, 30>(2019f, -926f, -221f, -176f, 781f, -831f, 1804f, 1839f, 223f, 708f, 964f, 2418f, -578f, 662f, -848f, 982f, 1255f, 572f, 973f, -506f, 603f, -180f, -924f, -331f, 472f, -1365f, -605f, 1000f, 556f, 963f);

var<private> global1: f32;

var<private> global2: i32 = 13275i;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    global1 = _wgslsmith_f_op_f32(-320f + global0[_wgslsmith_index_u32(4294967295u, 30u)]);
    let var_0 = arg_0.a.x;
    var var_1 = Struct_3(Struct_1(u_input.c & (vec2<i32>(var_0, u_input.d.x) << (_wgslsmith_sub_vec2_u32(u_input.b.xy, vec2<u32>(12677u, u_input.b.x)) % vec2<u32>(32u))), -14595i, select(vec4<bool>(any(arg_0.c), true, arg_0.c.x, false), !vec4<bool>(arg_0.d.x, arg_0.c.x, arg_0.c.x, true), true), vec2<bool>(true, false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(13232u, 30u)], 1000f, 277f, 1236f)), vec4<f32>(465f, 936f, global0[_wgslsmith_index_u32(u_input.b.x, 30u)], 1000f))) - vec4<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 30u)], 1532f), -1000f, -510f, -115f)) * vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 30u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 30u)] - -828f) + -215f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(758f, -373f), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(23132u, u_input.b.x), 30u)])), -1639f)), arg_0.d.x);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1555f), var_1.a, _wgslsmith_add_i32(u_input.d.x, arg_0.b), Struct_1(u_input.d.xx, _wgslsmith_sub_i32(abs(var_1.a.b), ~countOneBits(1i)), !vec4<bool>(any(arg_0.d), !arg_0.d.x, true, arg_0.c.x && var_1.a.c.x), vec2<bool>(true, true)), Struct_1(var_1.a.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, var_0 ^ 1i), arg_0.a), select(!select(arg_0.c, vec4<bool>(false, var_1.c, var_1.a.c.x, false), var_1.a.c), vec4<bool>(!var_1.c, false, arg_0.d.x, arg_0.d.x), arg_0.d.x), arg_0.c.wz));
    let var_3 = -619f;
    return !(!select(vec2<bool>(arg_0.c.x, var_2.d.c.x), var_1.a.c.zy, all(var_1.a.c.yyx)));
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_3(Struct_1(-vec2<i32>(-2147483647i, u_input.c.x), 0i, select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), false), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true)), select(select(func_3(Struct_1(vec2<i32>(u_input.c.x, -11114i), u_input.c.x, vec4<bool>(false, true, true, false), vec2<bool>(false, false))), vec2<bool>(false, true), 6699i == u_input.d.x), vec2<bool>(true, true), select(false, false, true))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-477f, -1221f, global0[_wgslsmith_index_u32(22033u, 30u)], global0[_wgslsmith_index_u32(u_input.b.x, 30u)]), vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 30u)], global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(9321u, 30u)], global0[_wgslsmith_index_u32(u_input.b.x, 30u)])) + vec4<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1540f), _wgslsmith_f_op_f32(abs(-629f)), -852f)))), select(false, !any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false)), true));
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(~firstLeadingBit(_wgslsmith_div_u32(~1u, _wgslsmith_sub_u32(4294967295u, u_input.b.x))), 30u)], Struct_1(~vec2<i32>(u_input.a, u_input.d.x) | _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a.a.x, u_input.c.x), vec2<i32>(2147483647i, u_input.a)), _wgslsmith_clamp_vec2_i32(u_input.c, u_input.d.ww, vec2<i32>(u_input.c.x, -6808i))), -(_wgslsmith_div_i32(-60529i, var_0.a.a.x) & ~1i), !select(select(var_0.a.c, vec4<bool>(var_0.c, var_0.a.c.x, false, var_0.a.d.x), var_0.a.c), !var_0.a.c, select(var_0.a.d.x, var_0.a.d.x, true)), select(vec2<bool>(all(vec4<bool>(true, var_0.c, var_0.a.c.x, var_0.c)), !var_0.a.c.x), vec2<bool>(select(true, false, false), var_0.c), var_0.c)), 0i, var_0.a, Struct_1(countOneBits(~abs(var_0.a.a)), 0i & var_0.a.a.x, vec4<bool>(!(u_input.b.x >= 23754u), var_0.c, true, true), select(vec2<bool>(true, true), vec2<bool>(!var_0.c, true), !func_3(var_0.a))));
    global1 = var_0.b.x;
    global1 = global0[_wgslsmith_index_u32(u_input.b.x, 30u)];
    global2 = -2147483647i;
    return var_1.e.c;
}

fn func_1() -> Struct_1 {
    return Struct_1(-u_input.d.zy, 2147483647i, select(func_2(), !select(vec4<bool>(false, true, true, false), func_2(), true), vec4<bool>(true, true, func_2().x, any(vec2<bool>(false, false)))), vec2<bool>(true, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 30u)], _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(35589u, 30u)], _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(~u_input.b.x, 30u)])), !all(vec2<bool>(false, true)))), global0[_wgslsmith_index_u32(u_input.b.x, 30u)]) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(550f, global0[_wgslsmith_index_u32(u_input.b.x, 30u)], -1343f)))));
    global0 = array<f32, 30>();
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(max(~vec4<u32>(u_input.b.x, 29201u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u)), firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x), vec4<u32>(46193u, 0u, u_input.b.x, u_input.b.x)))), 30u)], func_1(), u_input.a, Struct_1((abs(vec2<i32>(34906i, -1i)) << (~vec2<u32>(u_input.b.x, 0u) % vec2<u32>(32u))) >> (vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 845u, 44238u), u_input.b), min(0u, u_input.b.x)) % vec2<u32>(32u)), 689i, vec4<bool>(!func_3(Struct_1(u_input.c, u_input.d.x, vec4<bool>(false, true, false, true), vec2<bool>(true, false))).x, false, !(u_input.c.x == u_input.a), true), vec2<bool>(~u_input.a >= 0i, !(1310f > global0[_wgslsmith_index_u32(33224u, 30u)]))), func_1());
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(var_1.a * -1000f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(~u_input.b.x, 30u)], global0[_wgslsmith_index_u32(~u_input.b.x, 30u)])))), _wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -167f), false)) + var_1.a)));
    global2 = ~(func_1().b >> (reverseBits(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x & 69926u, u_input.b.x ^ u_input.b.x)) % 32u));
    let var_2 = var_0.zy;
    let x = u_input.a;
    s_output = StorageBuffer(~1u, vec2<u32>(u_input.b.x, ~u_input.b.x), u_input.d.wwy);
}

