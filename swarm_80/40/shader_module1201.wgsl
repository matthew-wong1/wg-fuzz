struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<bool>,
    d: i32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, true);

var<private> global1: array<bool, 20> = array<bool, 20>(false, true, false, true, false, false, false, false, false, true, false, false, false, true, false, true, true, false, true, true);

var<private> global2: array<Struct_1, 5>;

var<private> global3: f32 = 1421f;

var<private> global4: array<vec3<f32>, 16>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    var var_0 = select(!(!(!(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 20u)], false, global0.x)))), select(select(vec3<bool>(!global1[_wgslsmith_index_u32(88062u, 20u)], global0.x, all(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 20u)], global0.x, global0.x))), !select(vec3<bool>(global0.x, global1[_wgslsmith_index_u32(u_input.d.x, 20u)], global1[_wgslsmith_index_u32(3605u, 20u)]), vec3<bool>(true, global0.x, true), global0.x), false), vec3<bool>(!(!global1[_wgslsmith_index_u32(u_input.b.x, 20u)]), global1[_wgslsmith_index_u32(~u_input.d.x << (~u_input.b.x % 32u), 20u)], global0.x), vec3<bool>(global1[_wgslsmith_index_u32(~min(u_input.d.x, u_input.e.x), 20u)], true, all(vec4<bool>(false, false, true, global0.x)))), select(!vec3<bool>(all(vec4<bool>(global1[_wgslsmith_index_u32(49671u, 20u)], true, global1[_wgslsmith_index_u32(u_input.e.x, 20u)], false)), true, false), vec3<bool>(global0.x, false, false), !select(select(vec3<bool>(false, global0.x, global1[_wgslsmith_index_u32(u_input.b.x, 20u)]), vec3<bool>(global1[_wgslsmith_index_u32(47089u, 20u)], global1[_wgslsmith_index_u32(37088u, 20u)], global0.x), vec3<bool>(true, global0.x, true)), vec3<bool>(true, true, true), global1[_wgslsmith_index_u32(u_input.e.x, 20u)] != global1[_wgslsmith_index_u32(4294967295u, 20u)])));
    let var_1 = Struct_1(~24279i, countOneBits(-(i32(-1i) * -58466i)), var_0.zx, -max(select(_wgslsmith_mod_i32(-1i, -1i), 25294i, global0.x), _wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, 0i, 2147483647i), vec3<i32>(1i, 1i, 1i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global4[_wgslsmith_index_u32(u_input.c, 16u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(-1192f, 518f, -630f) * vec3<f32>(-677f, -862f, -482f)))));
    var var_2 = ~vec4<u32>(_wgslsmith_add_u32((u_input.a ^ 2034u) & ~35373u, 4294967295u ^ firstTrailingBit(u_input.e.x)), ~_wgslsmith_div_u32(36027u, firstLeadingBit(u_input.b.x)), u_input.a, (min(u_input.e.x, 6788u) | u_input.d.x) << (abs(firstLeadingBit(2857u)) % 32u));
    global2 = array<Struct_1, 5>();
    global1 = array<bool, 20>();
    return ~(~(~(~countOneBits(0u))));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> f32 {
    let var_0 = Struct_1(1i, arg_0.a ^ arg_0.d, select(vec2<bool>(true, true), vec2<bool>(_wgslsmith_f_op_f32(-arg_0.e.x) >= _wgslsmith_f_op_f32(-200f + arg_0.e.x), false), select(arg_0.c, select(!arg_0.c, vec2<bool>(true, arg_0.c.x), global0.xz), true)), abs(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-24053i, arg_0.a, -1i, arg_0.b), vec4<i32>(arg_0.d, 0i, arg_0.a, arg_0.b)), ~(~vec4<i32>(12478i, -2147483647i, -22482i, 18889i)))), arg_0.e);
    return _wgslsmith_f_op_f32(f32(-1f) * -398f);
}

fn func_2(arg_0: vec4<i32>) -> vec4<u32> {
    let var_0 = ~(-30821i);
    global4 = array<vec3<f32>, 16>();
    let var_1 = _wgslsmith_div_vec3_f32(global4[_wgslsmith_index_u32(select(_wgslsmith_dot_vec3_u32(u_input.b, ~vec3<u32>(u_input.e.x, u_input.e.x, 33226u) ^ u_input.b), _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a, 60872u), _wgslsmith_div_u32(u_input.d.x, 1u)), any(!select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 20u)], false, global0.x), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.d.x, 20u)], false), true))), 16u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(482f, -256f, 1292f), vec3<f32>(-1000f, -556f, 984f), global0.x)))) - _wgslsmith_f_op_vec3_f32(global4[_wgslsmith_index_u32(~u_input.b.x, 16u)] + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1235f, 602f)))) * _wgslsmith_f_op_vec3_f32(select(global4[_wgslsmith_index_u32(u_input.c, 16u)], global4[_wgslsmith_index_u32(u_input.a, 16u)], global1[_wgslsmith_index_u32(~u_input.b.x, 20u)]))));
    var var_2 = _wgslsmith_f_op_f32(func_4(global2[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a, 1u), ~4294967295u)), 5u)], func_3()));
    var var_3 = global2[_wgslsmith_index_u32(firstLeadingBit(1u), 5u)];
    return vec4<u32>(u_input.a, ~u_input.a, func_3(), ~(~u_input.d.x));
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<i32>(-4748i, 2171i, 1i);
    global1 = array<bool, 20>();
    let var_1 = _wgslsmith_add_vec4_u32(~(vec4<u32>(~u_input.a, 1u, 80695u, ~u_input.e.x) >> (func_2(~vec4<i32>(-1i, var_0.x, var_0.x, var_0.x)) % vec4<u32>(32u))), ~countOneBits(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b.x), u_input.d), func_3(), select(u_input.a, u_input.e.x, true), ~43891u)));
    var var_2 = vec4<i32>(abs(331i) >> (u_input.e.x % 32u), 0i, var_0.x, -1i);
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1168f) + _wgslsmith_div_f32(416f, _wgslsmith_div_f32(-1748f, -1202f)));
    return global2[_wgslsmith_index_u32(24551u, 5u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = firstTrailingBit(vec2<u32>(reverseBits(u_input.b.x ^ max(21782u, 75437u)), 3734u));
    var var_2 = Struct_1(13110i, _wgslsmith_mod_i32(-_wgslsmith_clamp_i32(var_0.d << (1u % 32u), var_0.d, _wgslsmith_div_i32(var_0.a, 15467i)), var_0.b), !vec2<bool>(true, any(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 20u)], true, true, false), vec4<bool>(global0.x, global0.x, var_0.c.x, false), vec4<bool>(var_0.c.x, global0.x, global1[_wgslsmith_index_u32(u_input.d.x, 20u)], false)))), (-1i ^ firstTrailingBit(var_0.a ^ var_0.d)) >> (4294967295u % 32u), _wgslsmith_f_op_vec3_f32(global4[_wgslsmith_index_u32(~u_input.c, 16u)] - vec3<f32>(var_0.e.x, 1562f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e.x + -1909f) * var_0.e.x))));
    var var_3 = global2[_wgslsmith_index_u32(u_input.d.x, 5u)];
    global4 = array<vec3<f32>, 16>();
    let var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(func_1().d, var_1);
}

