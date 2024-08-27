struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: vec4<bool>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21>;

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(342f, -995f, 272f, arg_2.c) - vec4<f32>(arg_3.a.x, -108f, -475f, 1000f))), global1.a, vec4<bool>(arg_3.d.x, any(global1.d.xz), select(true, !global1.d.x, true), false))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 84541u), arg_1.zz), _wgslsmith_sub_u32(arg_1.x ^ u_input.d, arg_1.x)), 21u)] ^ 12830i, _wgslsmith_f_op_f32(-arg_3.a.x), global1.d, true);
    global1 = arg_2;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -249f) > var_0.c;
    return _wgslsmith_f_op_f32(-global1.c);
}

fn func_3() -> u32 {
    global0 = array<i32, 21>();
    let var_0 = ~_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(~abs(vec2<u32>(4294967295u, 51439u)), vec2<u32>(~4294967295u, u_input.d ^ u_input.d)), reverseBits(~vec2<u32>(u_input.d, u_input.d) | _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, 26674u), vec2<u32>(4294967295u, 31339u))));
    global0 = array<i32, 21>();
    global1 = Struct_1(vec4<f32>(-2210f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.x * global1.a.x), -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-246f - global1.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), global1.c, true))), ~(-2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1534f))))), global1.d, !all(global1.d.ywz));
    let var_1 = global1.e;
    return u_input.d;
}

fn func_2() -> vec4<i32> {
    var var_0 = ~vec3<u32>(func_3(), abs(func_3()), u_input.d);
    let var_1 = 1159u;
    global1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-1f), global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(global1.d.x, vec3<u32>(4294967295u, var_0.x, var_1), Struct_1(global1.a, 29568i, global1.c, vec4<bool>(true, false, true, global1.e), true), Struct_1(vec4<f32>(-371f, global1.c, -1019f, -2143f), 40264i, global1.c, vec4<bool>(global1.e, global1.e, global1.e, true), global1.d.x))), -1013f)), _wgslsmith_f_op_f32(ceil(313f))), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.c, 1006i, -1i), reverseBits(global1.b)) | -abs(0i), 1i, u_input.b.x), 118f, !select(select(vec4<bool>(true, global1.d.x, global1.d.x, global1.e), !global1.d, vec4<bool>(true, global1.e, true, true)), !select(global1.d, global1.d, vec4<bool>(global1.d.x, false, global1.e, global1.d.x)), global1.d), !global1.e);
    let var_2 = 6166u;
    let var_3 = global1.d.x;
    return vec4<i32>(global1.b, u_input.a, _wgslsmith_dot_vec3_i32(select(vec3<i32>(10967i, 2147483647i, global1.b), vec3<i32>(global0[_wgslsmith_index_u32(73905u, 21u)], 4642i, 108i), select(vec3<bool>(false, global1.d.x, true), global1.d.xwy, false)) ^ _wgslsmith_clamp_vec3_i32(~vec3<i32>(global1.b, 2147483647i, global0[_wgslsmith_index_u32(1u, 21u)]), min(vec3<i32>(9087i, u_input.b.x, 33675i), u_input.b), _wgslsmith_add_vec3_i32(u_input.b, u_input.b)), _wgslsmith_clamp_vec3_i32(vec3<i32>(abs(global1.b), global0[_wgslsmith_index_u32(30404u, 21u)], i32(-1i) * -28611i), u_input.b, vec3<i32>(_wgslsmith_clamp_i32(u_input.c, 54599i, 25910i), _wgslsmith_dot_vec2_i32(u_input.b.zy, u_input.b.xz), u_input.c))), _wgslsmith_mult_i32(0i, global1.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global1.a, -46618i | (_wgslsmith_div_i32(1i, _wgslsmith_dot_vec2_i32(u_input.b.zy, u_input.b.xy)) | global1.b), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-656f)))))), global1.d, any(global1.d.zy));
    let var_1 = _wgslsmith_f_op_f32(func_1(true, ~(_wgslsmith_mult_vec3_u32(select(vec3<u32>(1u, u_input.d, u_input.d), vec3<u32>(75892u, 38651u, u_input.d), global1.d.yyx), ~vec3<u32>(14073u, u_input.d, 4294967295u)) | (~vec3<u32>(u_input.d, u_input.d, u_input.d) & countOneBits(vec3<u32>(u_input.d, u_input.d, u_input.d)))), var_0, Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c, -1606f, 402f, var_0.c)) + var_0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0.a, var_0.a) - var_0.a))), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-15653i, max(-2147483647i, 0i), -1i), global1.b), 2304f, !var_0.d, var_0.d.x)));
    var var_2 = select(!select(global1.d, select(select(vec4<bool>(true, var_0.e, true, true), vec4<bool>(true, false, var_0.e, global1.d.x), global1.d.x), select(vec4<bool>(false, true, global1.e, true), var_0.d, var_0.d.x), select(vec4<bool>(true, true, false, var_0.d.x), var_0.d, vec4<bool>(global1.d.x, global1.d.x, var_0.d.x, true))), !(!global1.d.x)), select(vec4<bool>(false, (2147483647i == u_input.b.x) | true, !all(global1.d.wy), any(var_0.d.yz)), var_0.d, vec4<bool>(!any(vec4<bool>(false, var_0.d.x, true, var_0.d.x)), var_0.e, global0[_wgslsmith_index_u32(countOneBits(u_input.d), 21u)] >= _wgslsmith_div_i32(global0[_wgslsmith_index_u32(u_input.d, 21u)], global1.b), false)), !global1.d);
    global0 = array<i32, 21>();
    let var_3 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~abs(_wgslsmith_clamp_u32(18009u, 4294967295u, var_3)), _wgslsmith_mult_u32(0u, ~(~1u)), 1u & select(u_input.d, ~1u, true), max(34558u, 13963u)), max(vec4<i32>(~(~19717i), _wgslsmith_dot_vec4_i32(vec4<i32>(-12119i, var_0.b, var_0.b, -36963i), vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(40706u, 21u)], 1i)) | _wgslsmith_mult_i32(-22763i, 46569i), global0[_wgslsmith_index_u32(61349u, 21u)], 0i), _wgslsmith_mod_vec4_i32(select(~vec4<i32>(-48000i, 1i, -19362i, 43776i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.d, 21u)], u_input.b.x, global1.b, 44902i) << (vec4<u32>(var_3, u_input.d, var_3, 0u) % vec4<u32>(32u)), !global1.d), _wgslsmith_sub_vec4_i32(vec4<i32>(24155i, var_0.b, -2147483647i, global0[_wgslsmith_index_u32(u_input.d, 21u)]), -vec4<i32>(-48103i, global0[_wgslsmith_index_u32(69152u, 21u)], var_0.b, global0[_wgslsmith_index_u32(1u, 21u)])))), -(~_wgslsmith_mod_vec4_i32(-vec4<i32>(global1.b, var_0.b, -2147483647i, global1.b), func_2())), global0[_wgslsmith_index_u32(23285u, 21u)]);
}

