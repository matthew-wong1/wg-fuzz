struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 6> = array<vec4<bool>, 6>(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false));

var<private> global1: i32;

var<private> global2: vec4<bool> = vec4<bool>(true, true, true, false);

var<private> global3: array<Struct_1, 13>;

var<private> global4: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<i32>) -> bool {
    global0 = array<vec4<bool>, 6>();
    let var_0 = true;
    global2 = !select(vec4<bool>(select(select(global2.x, global4.x, true), true, !global2.x), true, false & any(vec3<bool>(global2.x, global4.x, false)), false), select(global0[_wgslsmith_index_u32(abs(62440u), 6u)], vec4<bool>(!global4.x, !global4.x, false, all(vec3<bool>(global2.x, global4.x, global2.x))), select(vec4<bool>(true, false, true, true), !global0[_wgslsmith_index_u32(u_input.a.x, 6u)], vec4<bool>(global4.x, false, true, global4.x))), !vec4<bool>(false, global2.x, !global2.x, all(vec2<bool>(true, true))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(227f, 257f, 1100f) * vec3<f32>(-206f, 1177f, 803f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1641f, -258f, -438f) + vec3<f32>(-1000f, -1668f, 928f))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1512f, -1972f, -692f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(587f, 231f, -899f)))), !select(vec3<bool>(true, true, true), vec3<bool>(global2.x, global2.x, global4.x), true))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 847f, 1000f))));
    var var_2 = Struct_1(global0[_wgslsmith_index_u32(abs(u_input.a.x), 6u)], any(select(!global2.wzx, global2.wxw, true)) & !(68393u < countOneBits(u_input.a.x)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, min(arg_0.x, arg_0.x), ~u_input.b, _wgslsmith_clamp_i32(u_input.b, u_input.b, -1i)), arg_0), 1i, _wgslsmith_add_i32(_wgslsmith_div_i32(~u_input.b, _wgslsmith_div_i32(7305i, -57458i)), arg_0.x >> (1u % 32u)), ~arg_0.x));
    return false;
}

fn func_2(arg_0: i32, arg_1: vec4<i32>) -> vec4<i32> {
    global1 = _wgslsmith_sub_i32(76045i, u_input.b);
    let var_0 = !vec4<bool>(false, global4.x, global4.x, global2.x);
    var var_1 = Struct_1(!select(vec4<bool>(u_input.a.x <= u_input.a.x, var_0.x || true, global2.x, true), vec4<bool>(true, false, func_3(arg_1), global2.x), select(!global0[_wgslsmith_index_u32(60206u, 6u)], global0[_wgslsmith_index_u32(min(u_input.a.x, 4294967295u), 6u)], !global0[_wgslsmith_index_u32(41709u, 6u)])), any(vec2<bool>(all(vec4<bool>(false, true, false, false)), true)), _wgslsmith_mod_vec4_i32(~max(arg_1, max(arg_1, arg_1)), _wgslsmith_clamp_vec4_i32(min(vec4<i32>(31870i, u_input.b, 0i, 2147483647i) & vec4<i32>(arg_1.x, arg_1.x, u_input.b, 2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, arg_0, u_input.b, arg_0), arg_1)), vec4<i32>(_wgslsmith_add_i32(arg_0, -8605i), _wgslsmith_dot_vec3_i32(arg_1.wyx, arg_1.xwy), -2147483647i, ~arg_1.x), ~(arg_1 ^ vec4<i32>(arg_1.x, -2147483647i, u_input.b, arg_0)))));
    let var_2 = global3[_wgslsmith_index_u32(u_input.a.x, 13u)];
    let var_3 = select(select(!(!global0[_wgslsmith_index_u32(~71181u, 6u)]), !vec4<bool>(!global4.x, var_0.x || var_1.a.x, global2.x & var_2.b, true), select(!vec4<bool>(false, false, global2.x, true), select(select(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], global0[_wgslsmith_index_u32(0u, 6u)], var_1.b), vec4<bool>(false, var_0.x, global2.x, true), var_1.b), global2.x)), var_0, var_1.a);
    return _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(select(vec4<i32>(~var_2.c.x, -u_input.b, var_1.c.x, abs(var_2.c.x)), vec4<i32>(0i, var_2.c.x, ~var_1.c.x, -25320i), var_2.a), vec4<i32>(arg_0, var_1.c.x, -17904i, select(~var_2.c.x, 1i, all(vec4<bool>(false, global4.x, false, var_3.x))))), vec4<i32>(-(~(-2147483647i)), -6435i, _wgslsmith_mult_i32(u_input.b, -arg_1.x & 1i), arg_0));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: bool) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1174f, _wgslsmith_f_op_f32(max(-1562f, -269f)), _wgslsmith_f_op_f32(round(810f)), 721f)))));
    global2 = vec4<bool>(!arg_2.b, global4.x, true, any(select(global4.xy, vec2<bool>(arg_3, true), vec2<bool>(arg_3, false))));
    global0 = array<vec4<bool>, 6>();
    var var_1 = Struct_1(vec4<bool>(true, true, !select(arg_3, true, any(arg_2.a.ww)), true), !(arg_2.a.x & any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(arg_0.a.x, arg_0.a.x, false)))), -vec4<i32>(-arg_2.c.x ^ u_input.b, -(i32(-1i) * -4828i), abs(_wgslsmith_mult_i32(26085i, 0i)), min(-32941i, ~u_input.b)));
    let var_2 = arg_2;
    return var_1.c;
}

fn func_1(arg_0: Struct_1) -> i32 {
    global0 = array<vec4<bool>, 6>();
    let var_0 = func_4(Struct_1(!arg_0.a, any(vec4<bool>(true, global4.x, all(arg_0.a.yy), true)), _wgslsmith_clamp_vec4_i32(arg_0.c, abs(-arg_0.c), arg_0.c)), func_2(~_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c.x, 1i, -5089i, u_input.b), vec4<i32>(-27237i, 55375i, arg_0.c.x, 1i)), _wgslsmith_mult_i32(1i, u_input.b), -32646i & u_input.b), arg_0.c), arg_0, false);
    var var_1 = ~firstTrailingBit(~u_input.a.x);
    global4 = !global2.www;
    let var_2 = !global2.x;
    return ~firstTrailingBit(-13906i & _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(arg_0.c.wxx, arg_0.c.zxw), -2147483647i, u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~(_wgslsmith_div_vec2_i32(~vec2<i32>(2147483647i, 16131i), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(1i, 1i))) << (~(~u_input.a) % vec2<u32>(32u))));
    global1 = -min(var_0.x, -7244i);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, -50419i), vec2<i32>(var_0.x, var_0.x)), vec2<i32>(-806i, func_1(Struct_1(global0[_wgslsmith_index_u32(51395u, 6u)], global2.x, vec4<i32>(var_0.x, 0i, u_input.b, -34410i))))), (reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(55488u, 18400u, 81128u, u_input.a.x))) << (abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 3090u, 53531u, u_input.a.x), vec4<u32>(u_input.a.x, 22437u, 1u, 52097u))) % vec4<u32>(32u))) << (~(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 1u, u_input.a.x), vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x))) % vec4<u32>(32u)), vec2<u32>(u_input.a.x, min(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), firstTrailingBit(vec3<u32>(u_input.a.x, u_input.a.x, 36348u))), ~(u_input.a.x & 1u))), var_0.x, u_input.a.x);
}

