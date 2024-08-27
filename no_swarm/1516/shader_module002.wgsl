struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: Struct_2,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
    c: Struct_3,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 16> = array<vec2<u32>, 16>(vec2<u32>(26867u, 49540u), vec2<u32>(978u, 0u), vec2<u32>(1u, 26778u), vec2<u32>(87977u, 65167u), vec2<u32>(4294967295u, 6372u), vec2<u32>(1u, 56343u), vec2<u32>(4294967295u, 28553u), vec2<u32>(48619u, 4294967295u), vec2<u32>(43096u, 1801u), vec2<u32>(38537u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(809u, 34122u), vec2<u32>(0u, 4294967295u), vec2<u32>(12091u, 0u), vec2<u32>(44375u, 0u), vec2<u32>(41128u, 0u));

var<private> global1: Struct_4 = Struct_4(vec3<bool>(false, false, true), 0u, Struct_3(vec2<i32>(2147483647i, 1i), vec3<f32>(-1000f, 431f, 1330f), Struct_2(vec2<i32>(1233i, i32(-2147483648)), 34095u), vec3<u32>(4294967295u, 83712u, 84785u)), 0i, -211f);

var<private> global2: array<f32, 2>;

var<private> global3: vec3<f32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec2<u32> {
    global3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.e) + _wgslsmith_f_op_f32(abs(-231f))))) * _wgslsmith_div_f32(-1318f, _wgslsmith_f_op_f32(select(-2199f, _wgslsmith_f_op_f32(f32(-1f) * -207f), u_input.a.x == u_input.a.x)))), _wgslsmith_f_op_f32(-global1.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.x))));
    var var_0 = Struct_2(vec2<i32>(abs(-24937i), global1.d), ~global1.c.c.b);
    return vec2<u32>(94782u, 4294967295u);
}

fn func_2() -> vec2<u32> {
    let var_0 = _wgslsmith_mod_u32(global1.b, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(func_3(), firstLeadingBit(~u_input.b.yw)), _wgslsmith_mod_u32(0u << (global1.c.c.b % 32u), 57883u)));
    global3 = global1.c.b;
    global3 = global1.c.b;
    var var_1 = global1.c.c;
    let var_2 = vec2<u32>(71221u, var_1.b);
    return max(func_3(), vec2<u32>(select(_wgslsmith_mult_u32(var_2.x, _wgslsmith_clamp_u32(var_0, u_input.c, global1.c.c.b)), ~4215u | (0u | var_0), true), var_1.b));
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(700f)), _wgslsmith_f_op_f32(trunc(global3.x)), _wgslsmith_f_op_f32(f32(-1f) * -1132f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.c.c.b, 2u)]))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1392f, -572f, _wgslsmith_f_op_f32(f32(-1f) * -651f))))) - vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1000f, global1.e), _wgslsmith_f_op_f32(global3.x * global3.x))), 187f)), _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(85780u, global1.c.d.x), 2u)])), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(global0[_wgslsmith_index_u32(u_input.b.x, 16u)]) | vec2<u32>(40024u, 4294967295u), func_2()), 2u)], _wgslsmith_f_op_f32(min(-105f, -931f))));
    let var_1 = Struct_4(!vec3<bool>(global1.a.x, 4294967295u <= (1u >> (global1.b % 32u)), _wgslsmith_f_op_f32(trunc(global1.e)) <= _wgslsmith_f_op_f32(exp2(global1.c.b.x))), 1u, Struct_3(vec2<i32>(~(-24604i), u_input.a.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_0.wxw))), global1.c.b), global1.c.c, global1.c.d), global1.d | reverseBits(~abs(u_input.a.x)), -1054f);
    global0 = array<vec2<u32>, 16>();
    let var_2 = global1.a.x & (select(~107159u, 87542u, global1.a.x) < 3809u);
    var var_3 = firstLeadingBit(abs(_wgslsmith_add_vec4_u32(~u_input.b, vec4<u32>(0u, u_input.c, 20369u, global1.b)) >> (firstLeadingBit(u_input.b) % vec4<u32>(32u))));
    return StorageBuffer(-306f, vec4<f32>(global3.x, 1f, 1428f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-487f - global3.x) + -815f)), -(~_wgslsmith_mod_vec3_i32(u_input.a >> (vec3<u32>(var_3.x, 4294967295u, u_input.b.x) % vec3<u32>(32u)), u_input.a ^ u_input.a)), -(~(-var_1.d) | global1.d));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global1.c.b;
    var var_0 = global1.a.x;
    var var_1 = Struct_2(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -49319i, u_input.a.x, -42016i) << (vec4<u32>(global1.b, 0u, 1062u, u_input.c) % vec4<u32>(32u)), vec4<i32>(global1.d, u_input.a.x, -7810i, u_input.a.x) ^ vec4<i32>(2147483647i, global1.c.a.x, u_input.a.x, 0i)), -1i), ~(-_wgslsmith_sub_i32(11331i, -28320i))), ~21581u);
    global0 = array<vec2<u32>, 16>();
    let var_2 = 20178u;
    var var_3 = global1.c;
    let var_4 = _wgslsmith_f_op_f32(-901f + _wgslsmith_f_op_f32(step(var_3.b.x, -813f)));
    let x = u_input.a;
    s_output = func_1();
}

