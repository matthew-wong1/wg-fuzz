struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: i32;

var<private> global2: array<vec2<bool>, 3>;

var<private> global3: array<bool, 2>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec4<f32>) -> f32 {
    let var_0 = ~(-abs(~_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(u_input.d.x, u_input.a.x))));
    let var_1 = Struct_1(1u, global2[_wgslsmith_index_u32(~1u, 3u)]);
    global0 = u_input.a.x;
    global0 = u_input.d.x;
    return arg_2.x;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: i32) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2292f), _wgslsmith_f_op_f32(func_3(arg_0.b, true, vec4<f32>(1000f, -237f, 203f, -1199f))))))), _wgslsmith_f_op_f32(ceil(1f))));
    let var_1 = !vec4<bool>(true, arg_0.b.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(881f)), _wgslsmith_f_op_f32(func_3(arg_0.b, arg_1.x, vec4<f32>(1000f, -573f, 854f, -359f)))) > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -858f), -1821f, true)), firstTrailingBit(4294967295u) < arg_0.c.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(439f + -1137f), -614f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f))))));
    let var_3 = Struct_2(true, arg_0.b, ~(~(~u_input.c.zx)));
    var var_4 = vec4<u32>(arg_0.b.a, ~(~_wgslsmith_mod_u32(arg_0.b.a, 87146u << (0u % 32u))), u_input.c.x, ~(min(countOneBits(u_input.b), u_input.c.x) << (_wgslsmith_mod_u32(var_3.b.a, ~4294967295u) % 32u)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-547f, var_2.x, _wgslsmith_f_op_f32(488f - -1528f), var_2.x) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1335f, var_2.x, var_2.x, var_2.x)) * vec4<f32>(-1000f, -653f, var_2.x, -1070f))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), var_2.x, var_2.x, _wgslsmith_f_op_f32(round(var_2.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-458f, var_2.x, 393f, var_2.x)), vec4<f32>(var_2.x, -1117f, 1016f, var_2.x), select(true, true, false))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2172f, -150f, var_2.x, var_2.x), vec4<f32>(335f, 558f, 202f, 1496f))), vec4<f32>(var_2.x, -820f, 458f, var_2.x)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-913f, -278f, -290f, _wgslsmith_div_f32(898f, var_2.x)) * vec4<f32>(var_2.x, 305f, _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(trunc(413f))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: vec3<bool>) -> Struct_2 {
    global2 = array<vec2<bool>, 3>();
    global3 = array<bool, 2>();
    let var_0 = vec3<bool>(_wgslsmith_mult_u32(4297u, min(0u, 33285u)) == _wgslsmith_mult_u32(reverseBits(~4294967295u), u_input.c.x), true, global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(reverseBits(min(arg_1.x, 1u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 44755u, 0u), arg_1), _wgslsmith_dot_vec3_u32(u_input.c, u_input.c))), 2u)]);
    global1 = -1i;
    let var_1 = _wgslsmith_f_op_vec4_f32(func_2(Struct_2(true, Struct_1(4294967295u, vec2<bool>(any(vec4<bool>(true, false, false, var_0.x)), all(var_0))), vec2<u32>(_wgslsmith_sub_u32(93036u, arg_1.x), min(arg_1.x, 1u)) >> (vec2<u32>(~1u, abs(arg_1.x)) % vec2<u32>(32u))), var_0, 33070i)).x;
    return Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), -393f)) != _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 - 133f), -470f), 1527f)), Struct_1(max(0u, u_input.b << (29154u % 32u)) & u_input.b, vec2<bool>(any(!vec2<bool>(true, var_0.x)), any(vec4<bool>(var_0.x, true, true, false)))), ~reverseBits(~vec2<u32>(25992u, u_input.b)));
}

fn func_1(arg_0: vec4<f32>) -> Struct_2 {
    global3 = array<bool, 2>();
    global3 = array<bool, 2>();
    var var_0 = Struct_1(1u, global2[_wgslsmith_index_u32(u_input.c.x, 3u)]);
    global0 = 2147483647i;
    let var_1 = u_input.b;
    return func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(arg_0, vec4<f32>(-596f, arg_0.x, arg_0.x, arg_0.x)), vec4<f32>(-789f, _wgslsmith_f_op_f32(sign(1166f)), _wgslsmith_f_op_f32(arg_0.x + arg_0.x), arg_0.x), !select(var_0.b.x, true, true))), _wgslsmith_f_op_vec4_f32(func_2(Struct_2(all(var_0.b), Struct_1(var_1, vec2<bool>(true, true)), vec2<u32>(u_input.b, u_input.b)), select(select(vec3<bool>(true, true, var_0.b.x), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 2u)], var_0.b.x, false), global3[_wgslsmith_index_u32(u_input.c.x, 2u)]), vec3<bool>(false, true, true), vec3<bool>(global3[_wgslsmith_index_u32(var_1, 2u)], false, var_0.b.x)), -22449i)), global3[_wgslsmith_index_u32(reverseBits(var_1), 2u)])), vec3<u32>(~0u, ~var_1, var_0.a), vec3<bool>(true, ~u_input.e.x != _wgslsmith_clamp_i32(u_input.a.x, u_input.d.x & u_input.e.x, 3582i), true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.e.x >> (45028u % 32u);
    global1 = u_input.e.x;
    var var_0 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-108f, -270f)), _wgslsmith_f_op_f32(sign(439f)), _wgslsmith_div_f32(-260f, 665f), _wgslsmith_f_op_f32(sign(1287f))))));
    var var_1 = _wgslsmith_clamp_vec2_u32(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -301f), _wgslsmith_f_op_f32(f32(-1f) * -1983f), -1434f, 723f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-555f, -837f, 1351f, -818f))))).c, u_input.c.yz, var_0.c);
    global1 = -23301i;
    global0 = -u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(min(-_wgslsmith_add_vec4_i32(vec4<i32>(-43730i, -22782i, -9760i, u_input.a.x) ^ vec4<i32>(u_input.a.x, 2147483647i, u_input.d.x, u_input.e.x), ~vec4<i32>(u_input.d.x, 24608i, 1i, u_input.a.x)), vec4<i32>(_wgslsmith_sub_i32(1i, u_input.d.x) >> (_wgslsmith_add_u32(0u, 7740u) % 32u), 2147483647i, u_input.a.x, 2147483647i >> (_wgslsmith_add_u32(0u, 0u) % 32u))), _wgslsmith_dot_vec3_i32(vec3<i32>(abs(abs(-2147483647i)), -59890i, u_input.a.x & (-1i ^ u_input.e.x)), vec3<i32>(reverseBits(_wgslsmith_div_i32(u_input.a.x, u_input.e.x)), -u_input.d.x, 0i)), _wgslsmith_f_op_f32(select(-1980f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2(func_1(vec4<f32>(-189f, 336f, -549f, 907f)), select(vec3<bool>(false, var_0.b.b.x, var_0.a), vec3<bool>(var_0.a, false, global3[_wgslsmith_index_u32(19259u, 2u)]), vec3<bool>(true, true, var_0.a)), -u_input.d.x)).x), true)));
}

