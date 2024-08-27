struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18> = array<bool, 18>(false, false, true, true, true, false, false, false, false, false, true, true, false, true, false, true, false, true);

var<private> global1: f32 = -723f;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> Struct_1 {
    var var_0 = true;
    let var_1 = u_input.d;
    return Struct_1(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(reverseBits(4294967295u), 0u, 4294967295u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b >> (var_1 % 32u), 0u, abs(var_1)), (vec3<u32>(4294967295u, 2693u, 10320u) << (vec3<u32>(var_1, 57506u, 4294967295u) % vec3<u32>(32u))) >> (firstLeadingBit(vec3<u32>(var_1, 34239u, u_input.b)) % vec3<u32>(32u)))), 0i);
}

fn func_3() -> f32 {
    let var_0 = any(select(vec2<bool>(select(false, !global0[_wgslsmith_index_u32(u_input.b, 18u)], global0[_wgslsmith_index_u32(1u, 18u)]), !(global0[_wgslsmith_index_u32(u_input.c.x, 18u)] | global0[_wgslsmith_index_u32(u_input.c.x, 18u)])), !(!(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 18u)], false))), vec2<bool>(!(u_input.c.x > 1u), !any(vec2<bool>(global0[_wgslsmith_index_u32(1u, 18u)], true)))));
    var var_1 = ~u_input.a << ((~firstLeadingBit(firstLeadingBit(vec4<u32>(u_input.d, u_input.c.x, u_input.b, u_input.c.x))) ^ _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(4824u, u_input.b, u_input.d, 0u)) & (vec4<u32>(4294967295u, 1u, u_input.b, 0u) >> (vec4<u32>(1u, u_input.b, 1u, u_input.d) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(vec4<u32>(38811u, u_input.b, u_input.c.x, u_input.b), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 4715u, u_input.b, u_input.d), vec4<u32>(1u, 0u, u_input.b, u_input.d))), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(0u, u_input.d)), u_input.b, 1u, u_input.b))) % vec4<u32>(32u));
    global0 = array<bool, 18>();
    global1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1597f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-540f + -812f) - 492f), var_0)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1000f, 1204f, false)))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1534f), _wgslsmith_f_op_f32(1028f - 167f))))), _wgslsmith_f_op_f32(-1f)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1222f))))), _wgslsmith_f_op_f32(floor(797f)), 1388f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-129f - -251f)))));
    return _wgslsmith_f_op_f32(2041f + var_2.x);
}

fn func_1(arg_0: vec3<i32>) -> vec3<f32> {
    global0 = array<bool, 18>();
    global0 = array<bool, 18>();
    global0 = array<bool, 18>();
    let var_0 = Struct_2(func_2(), -2147483647i);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-121f * 703f) - _wgslsmith_f_op_f32(-1188f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(494f)))));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1412f, -915f))) + _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-2255f))))), 148f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 299f;
    let var_1 = any(select(vec2<bool>(all(vec3<bool>(false, false, false)), true && (global0[_wgslsmith_index_u32(u_input.c.x, 18u)] | false)), vec2<bool>(global0[_wgslsmith_index_u32(~u_input.b & ~u_input.b, 18u)], all(select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 18u)], true, global0[_wgslsmith_index_u32(56525u, 18u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 18u)], true, true, global0[_wgslsmith_index_u32(75000u, 18u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 18u)], global0[_wgslsmith_index_u32(u_input.c.x, 18u)], global0[_wgslsmith_index_u32(0u, 18u)])))), 1u < u_input.b));
    global1 = -1244f;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(vec3<i32>(-2147483647i, -2147483647i, u_input.a.x)))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(round(533f)), _wgslsmith_f_op_f32(f32(-1f) * -975f), _wgslsmith_f_op_f32(1574f * 1000f)))))));
    let var_3 = firstLeadingBit(_wgslsmith_sub_vec4_i32(u_input.a, u_input.a));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -115f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1138f * -916f)))));
    global0 = array<bool, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(abs(-2147483647i | ~u_input.a.x), _wgslsmith_dot_vec3_i32(min(reverseBits(vec3<i32>(0i, u_input.a.x, u_input.a.x)), var_3.zww), max(-u_input.a.wxx, _wgslsmith_add_vec3_i32(var_3.wyw, var_3.yww)))), vec3<u32>(func_2().a.x, 31118u >> (u_input.b % 32u), 1u));
}

