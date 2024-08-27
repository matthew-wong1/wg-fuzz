struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32 = 6281i;

var<private> global2: array<f32, 24>;

var<private> global3: vec3<i32>;

var<private> global4: array<bool, 30>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec2<i32>) -> u32 {
    var var_0 = true;
    let var_1 = ~firstLeadingBit(select(-_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c.x, arg_0.x), u_input.c.xz), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -35702i, 1i, 8296i), vec4<i32>(u_input.c.x, 1i, -2147483647i, u_input.c.x)), 7168i), true));
    var var_2 = 41677u;
    global1 = -5840i;
    var var_3 = !vec4<bool>(!global4[_wgslsmith_index_u32(u_input.a.x, 30u)], !(!global4[_wgslsmith_index_u32(117749u, 30u)]) & (select(global4[_wgslsmith_index_u32(u_input.a.x, 30u)], true, true) && global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(99761u, u_input.a.x, u_input.a.x), 30u)]), true, global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(max(47340u, ~4294967295u), u_input.e.x, _wgslsmith_mult_u32(u_input.e.x, ~u_input.d.x)), 30u)]);
    return u_input.a.x;
}

fn func_2(arg_0: u32) -> f32 {
    return _wgslsmith_f_op_f32(f32(-1f) * -1063f);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<u32>) -> f32 {
    global3 = u_input.c;
    return global2[_wgslsmith_index_u32(4294967295u, 24u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(firstLeadingBit(~(~u_input.a.x)) >> (~_wgslsmith_clamp_u32(4294967295u, 4294967295u, min(u_input.d.x, 4294967295u)) % 32u), _wgslsmith_add_u32(u_input.b.x, u_input.a.x), _wgslsmith_mod_u32(~(~u_input.b.x << (u_input.d.x % 32u)), ~(~(~1u))));
    var var_1 = 396f;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~var_0.x, func_1(vec2<i32>(u_input.c.x, global3.x))), 24u)]))) + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~u_input.a.x, _wgslsmith_div_u32(u_input.e.x, var_0.x), _wgslsmith_sub_u32(46041u, 25527u)), 24u)] - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1386f, 2353f) - 1500f)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(~4294967295u)));
    global3 = vec3<i32>(-6708i, u_input.c.x ^ -(~_wgslsmith_dot_vec3_i32(u_input.c, u_input.c)), _wgslsmith_mod_i32(firstTrailingBit(u_input.c.x), global3.x));
    var var_4 = Struct_1(var_0.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), global2[_wgslsmith_index_u32(u_input.e.x, 24u)]), _wgslsmith_mod_i32(u_input.c.x, u_input.c.x), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1131f + var_3))) + -1501f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-688f)), _wgslsmith_f_op_f32(min(var_2, global2[_wgslsmith_index_u32(var_0.x, 24u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(903f - var_3), _wgslsmith_f_op_f32(ceil(var_2))))), global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.a.yz, u_input.d.zz), u_input.d.x), 24u)]), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2[_wgslsmith_index_u32(var_0.x, 24u)], 341f, global2[_wgslsmith_index_u32(u_input.e.x, 24u)]))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2[_wgslsmith_index_u32(var_0.x, 24u)], _wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(u_input.e.x, vec2<f32>(1344f, var_2), u_input.c.x, vec4<f32>(var_3, var_3, var_2, global2[_wgslsmith_index_u32(var_0.x, 24u)]), vec3<f32>(246f, -719f, 1547f)), Struct_2(Struct_1(0u, vec2<f32>(global2[_wgslsmith_index_u32(26817u, 24u)], var_3), 1694i, vec4<f32>(global2[_wgslsmith_index_u32(4388u, 24u)], -160f, global2[_wgslsmith_index_u32(4294967295u, 24u)], -569f), vec3<f32>(var_3, -294f, 1127f)), Struct_1(1u, vec2<f32>(global2[_wgslsmith_index_u32(3048u, 24u)], -136f), global3.x, vec4<f32>(-514f, -631f, -813f, var_3), vec3<f32>(-908f, var_3, -1929f)), global3.zx)), Struct_1(var_0.x, vec2<f32>(var_3, var_3), u_input.c.x, vec4<f32>(var_2, -786f, 858f, 1547f), vec3<f32>(406f, -245f, var_2)), u_input.d)), global2[_wgslsmith_index_u32(abs(81320u), 24u)]))))));
    var var_5 = _wgslsmith_sub_u32(u_input.d.x, 16335u) & var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-382f + global2[_wgslsmith_index_u32(var_0.x, 24u)])))), _wgslsmith_f_op_f32(max(1768f, -1694f)), _wgslsmith_f_op_f32(floor(382f))), var_0.x);
}

