struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: bool,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(2147483647i, 27662i, 0i), vec3<i32>(-5711i, -5296i, 2147483647i), true, vec2<bool>(true, false), vec3<i32>(0i, 0i, -26028i));

var<private> global1: array<vec4<bool>, 26>;

var<private> global2: Struct_1;

var<private> global3: array<vec2<u32>, 3> = array<vec2<u32>, 3>(vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 11287u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = u_input.c.x;
    return _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(-arg_0.b.zy, abs(arg_0.e.xy)) | vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.a.x, global2.b.x, 2147483647i), vec3<i32>(22282i, global2.a.x, global2.b.x)), _wgslsmith_mult_i32(-2147483647i, arg_0.e.x)), vec2<i32>(-13330i, u_input.a.x)) ^ u_input.d;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> vec3<i32> {
    let var_0 = arg_0.e;
    global1 = array<vec4<bool>, 26>();
    let var_1 = max(~(arg_1 << (~117u % 32u)), _wgslsmith_dot_vec4_u32(u_input.c, abs(~(~vec4<u32>(0u, 1u, u_input.c.x, u_input.c.x)))));
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(-43329i, global0.b.x, ~min(select(global2.b.x, u_input.d, global0.c), abs(global2.a.x)), global0.a.x), -vec4<i32>(~var_0.x | func_3(arg_0), var_0.x, u_input.d, 1i));
    let var_3 = 1u;
    return -u_input.a.wzz;
}

fn func_1(arg_0: vec4<u32>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1079f * _wgslsmith_div_f32(-1305f, -325f)))) + -1070f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1639f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(917f, -1000f, global0.c)) - _wgslsmith_f_op_f32(-797f + -1407f)))))));
    let var_1 = _wgslsmith_mult_vec3_i32(func_2(Struct_1(global0.b, u_input.a.zxx >> (vec3<u32>(u_input.c.x, u_input.c.x, 1u) % vec3<u32>(32u)), all(global1[_wgslsmith_index_u32(21946u, 26u)]), global0.d, vec3<i32>(global2.a.x, 1i, global0.b.x)), 4294967295u), vec3<i32>(max(0i, u_input.d), ~reverseBits(u_input.d), u_input.d)) | vec3<i32>(func_2(Struct_1(vec3<i32>(0i, -1i, global0.a.x), vec3<i32>(global2.a.x, global0.a.x, 0i), all(vec4<bool>(global2.c, true, true, false)), select(vec2<bool>(false, false), vec2<bool>(false, global0.d.x), global2.c), global0.e), u_input.c.x).x, _wgslsmith_mult_i32(-33624i, -_wgslsmith_mult_i32(global0.a.x, global0.e.x)), 0i);
    global1 = array<vec4<bool>, 26>();
    var var_2 = -(vec2<i32>(-1i) * -max(_wgslsmith_sub_vec2_i32(global0.a.yz, vec2<i32>(0i, 0i)), abs(vec2<i32>(2147483647i, -1i))));
    var var_3 = Struct_1(select(func_2(Struct_1(global0.b, var_1, true, !global2.d, -u_input.a.zxz), 1u), vec3<i32>(var_2.x, var_2.x | u_input.d, 1i), select(vec3<bool>(!global2.d.x, true, false), vec3<bool>(global2.c, global2.d.x, true), global2.d.x)), func_2(Struct_1(u_input.a.xzx, firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.x, global0.b.x, 11742i), vec3<i32>(u_input.d, var_1.x, -53784i), vec3<i32>(global2.b.x, 0i, -49128i))), true, select(select(vec2<bool>(false, global2.d.x), global2.d, true), vec2<bool>(global2.d.x, true), true), -vec3<i32>(14075i, var_1.x, -6413i)), abs(countOneBits(abs(arg_0.x)))), any(!vec2<bool>(any(vec2<bool>(false, global2.d.x)), true)), global2.d, global0.b);
    return !(!vec3<bool>(true, false, any(select(vec2<bool>(true, true), var_3.d, vec2<bool>(false, false)))));
}

fn func_4(arg_0: vec3<i32>) -> Struct_1 {
    global1 = array<vec4<bool>, 26>();
    let var_0 = select(!vec2<bool>(func_1(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 8252u, 1u), u_input.c)).x, global0.d.x), vec2<bool>(true, false), false);
    global1 = array<vec4<bool>, 26>();
    return Struct_1(arg_0, _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, ~(-2147483647i), min(global2.b.x | -33262i, _wgslsmith_div_i32(-21669i, u_input.d))), -vec3<i32>(global2.a.x ^ global2.e.x, _wgslsmith_clamp_i32(0i, 1i, 0i), u_input.d)), !global0.d.x, global2.d, reverseBits(firstTrailingBit(global2.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 26>();
    global3 = array<vec2<u32>, 3>();
    global2 = func_4(min(select(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.b.x, -58005i, u_input.b), vec3<i32>(1i, u_input.d, global0.e.x)) | global2.e, -select(vec3<i32>(global2.b.x, 63842i, 0i), vec3<i32>(57185i, global2.b.x, 2147483647i), vec3<bool>(true, global0.c, global0.d.x)), func_1(abs(u_input.c))), -vec3<i32>(_wgslsmith_mod_i32(global0.e.x, global0.a.x), -10049i, ~global2.e.x)));
    global1 = array<vec4<bool>, 26>();
    global0 = func_4(u_input.a.www);
    global2 = func_4(~func_2(func_4(-global2.e), 24375u));
    global2 = Struct_1(vec3<i32>(_wgslsmith_add_i32(-3173i, global0.b.x) & _wgslsmith_dot_vec3_i32(vec3<i32>(global0.e.x, global0.e.x, global2.b.x), global0.e), i32(-1i) * -10728i, ~(i32(-1i) * -2537i)) << (vec3<u32>(_wgslsmith_dot_vec2_u32(global3[_wgslsmith_index_u32(u_input.c.x, 3u)], vec2<u32>(0u, 29534u)), u_input.c.x ^ 7644u, _wgslsmith_dot_vec3_u32(~u_input.c.xxx, ~vec3<u32>(4294967295u, u_input.c.x, 4294967295u))) % vec3<u32>(32u)), u_input.a.zyx, !all(vec4<bool>(true, global0.c, global0.d.x, global0.c)), vec2<bool>(!all(select(global2.d, global0.d, global2.d)), !global0.d.x), max(global0.a, global0.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-294f * -1020f), 332f, -1313f) * _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1361f, 259f, -960f), vec3<f32>(-1000f, -937f, 571f)), _wgslsmith_div_vec3_f32(vec3<f32>(1000f, 888f, 1690f), vec3<f32>(1315f, 507f, 358f)))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -600f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1751f - -1180f) * _wgslsmith_f_op_f32(round(-626f))), -1245f)), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-1201f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1631f + 506f))))), select(~firstTrailingBit(_wgslsmith_mod_u32(55350u, u_input.c.x)), ~_wgslsmith_dot_vec4_u32(u_input.c << (u_input.c % vec4<u32>(32u)), ~u_input.c), global0.d.x), abs(42011i & (-1041i & _wgslsmith_clamp_i32(-2147483647i, 1i, global0.e.x))));
}

