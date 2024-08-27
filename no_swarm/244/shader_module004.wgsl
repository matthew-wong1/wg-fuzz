struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: Struct_2,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(11116u, 70939u, 27264u);

var<private> global1: array<f32, 8> = array<f32, 8>(1000f, -982f, -148f, 178f, -544f, 1659f, 2192f, -1457f);

var<private> global2: vec2<u32> = vec2<u32>(0u, 1u);

var<private> global3: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    return false;
}

fn func_2() -> f32 {
    global3 = 4294967295u;
    let var_0 = !(func_3() || true);
    let var_1 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -861f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-432f, global1[_wgslsmith_index_u32(30078u, 8u)])))), _wgslsmith_f_op_f32(659f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(global0.x, 8u)])), _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(1u, 8u)], 1666f, var_0)))))), firstLeadingBit(global0.x), Struct_1(max(abs(u_input.a), abs(vec2<u32>(u_input.a.x, 1u))) | u_input.a), Struct_2(1u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 4294967295u, global0.x) ^ vec3<u32>(1u, 59729u, global0.x), select(vec3<u32>(19625u, 3142u, 43126u), vec3<u32>(0u, 40753u, u_input.a.x), var_0)), vec3<u32>(64808u, _wgslsmith_mult_u32(4814u, global2.x), u_input.a.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(1u, 8u)], -154f), vec3<f32>(global1[_wgslsmith_index_u32(29317u, 8u)], -1000f, 654f), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2035f, -387f, global1[_wgslsmith_index_u32(global2.x, 8u)]))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-146f, _wgslsmith_f_op_f32(abs(-439f)), _wgslsmith_div_f32(297f, global1[_wgslsmith_index_u32(global0.x, 8u)])) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(12247u, 8u)], global1[_wgslsmith_index_u32(u_input.a.x, 8u)], global1[_wgslsmith_index_u32(15399u, 8u)]), vec3<f32>(280f, -1000f, global1[_wgslsmith_index_u32(1u, 8u)]), false))))));
    global3 = 15209u;
    return var_1.a;
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_2) -> vec4<f32> {
    global3 = 61941u;
    global1 = array<f32, 8>();
    global1 = array<f32, 8>();
    var var_0 = select(~(-13701i), 22742i, _wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(26224i, 2147483647i, arg_0, -30980i), vec4<i32>(8731i, u_input.c.x, u_input.b, 46945i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, -1i, u_input.b, 58573i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 1i, u_input.c.x, -2147483647i), vec4<i32>(-2147483647i, arg_0, -12480i, arg_0)), ~vec4<i32>(u_input.b, -7179i, 15293i, 26205i))) == abs(~max(13631i, -27712i)));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1515f)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(3205f, -759f, global1[_wgslsmith_index_u32(24507u, 8u)], -520f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(1u, 8u)], 325f, -1458f, 1084f) - vec4<f32>(global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(arg_2.a, 8u)], global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(arg_2.a, 8u)]))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(global0.x, 8u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 8u)] + global1[_wgslsmith_index_u32(global0.x, 8u)])), 643f, _wgslsmith_f_op_f32(func_2())) * vec4<f32>(-1821f, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.x, 59462u), vec3<u32>(46598u, arg_2.b, 1u) << (vec3<u32>(4294967295u, 28721u, 4294967295u) % vec3<u32>(32u))), 8u)], 1229f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(4294967295u, 8u)], 1518f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-u_input.b, firstLeadingBit(_wgslsmith_div_i32(u_input.c.x, u_input.c.x)), u_input.b) | vec3<i32>(u_input.c.x, u_input.c.x ^ _wgslsmith_mod_i32(u_input.b, -3526i), abs(-1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-998f * 670f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(32024u, 8u)] - global1[_wgslsmith_index_u32(60171u, 8u)]), _wgslsmith_f_op_f32(ceil(-150f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(u_input.b, !any(vec4<bool>(false, true, false, true)), Struct_2(60959u, ~u_input.a.x))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1[_wgslsmith_index_u32(88987u, 8u)], -358f, global1[_wgslsmith_index_u32(global0.x, 8u)], global1[_wgslsmith_index_u32(43592u, 8u)])))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(global2.x, 8u)], global1[_wgslsmith_index_u32(u_input.a.x, 8u)], -659f) * vec4<f32>(1628f, 392f, 1032f, 216f))))))), u_input.b);
}

