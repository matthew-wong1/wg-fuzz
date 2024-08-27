struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<bool>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 10189u;

var<private> global1: Struct_3 = Struct_3(vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), Struct_2(222f, Struct_1(49097u, -1474f, vec2<bool>(true, false), 0u, true), vec2<bool>(true, false), Struct_1(45207u, -1238f, vec2<bool>(true, false), 1u, false), Struct_1(1u, 189f, vec2<bool>(false, false), 1684u, false)));

var<private> global2: array<vec2<i32>, 21>;

var<private> global3: Struct_4;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_4) -> bool {
    let var_0 = countOneBits(~u_input.b);
    let var_1 = ~max(_wgslsmith_mod_vec2_u32(u_input.b, vec2<u32>(var_0.x, 4294967295u)) & u_input.b, _wgslsmith_sub_vec2_u32(vec2<u32>(1u, max(global1.b.b.d, 0u)), max(vec2<u32>(92968u, arg_0.a), abs(vec2<u32>(u_input.b.x, 0u)))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.b.b.b, -131f)) + global1.b.d.b)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.b.d.b - _wgslsmith_div_f32(global1.b.b.b, global1.b.a))))), 2478f);
    var var_3 = _wgslsmith_sub_vec4_u32(~(~firstLeadingBit(vec4<u32>(u_input.b.x, global1.b.d.a, 40338u, 1u))), ~_wgslsmith_div_vec4_u32(~vec4<u32>(global1.b.d.a, 1u, 0u, 39392u), vec4<u32>(1u, var_1.x, 0u, global1.b.e.d) << (vec4<u32>(4294967295u, arg_0.a, var_1.x, var_0.x) % vec4<u32>(32u)))) ^ _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(reverseBits(var_1.x), _wgslsmith_clamp_u32(var_1.x, global1.b.d.d, 20608u), arg_0.a ^ 0u, ~arg_0.a), vec4<u32>(1u, ~global1.b.b.a, _wgslsmith_mod_u32(1u, 49032u), ~0u), firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.b.b.a, 1u, global3.a, var_0.x), vec4<u32>(u_input.b.x, arg_0.a, u_input.b.x, global1.b.b.d), vec4<u32>(arg_0.a, 1u, 16549u, global1.b.e.d)))), ~(~vec4<u32>(20206u, 0u, 27889u, 3155u)) ^ ~(~vec4<u32>(u_input.b.x, global1.b.e.a, var_0.x, var_0.x)));
    var var_4 = arg_0;
    return false;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<u32>, arg_3: vec3<f32>) -> Struct_3 {
    let var_0 = 0u;
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1000f * -304f), _wgslsmith_div_f32(1640f, 320f))) - _wgslsmith_f_op_vec2_f32(-arg_3.xx)), vec2<f32>(arg_1, _wgslsmith_f_op_f32(-arg_1))));
    let var_2 = vec4<f32>(var_1.x, arg_0.b, arg_3.x, _wgslsmith_f_op_f32(-var_1.x));
    var var_3 = func_3(Struct_4(arg_2.x));
    let var_4 = arg_0.a;
    return Struct_3(min(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(global1.a, global1.a), global1.a) << (min(~vec3<u32>(arg_2.x, 35475u, var_4), abs(vec3<u32>(u_input.b.x, var_0, 0u))) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_div_i32(1i >> (arg_2.x % 32u), -54556i), _wgslsmith_mult_i32(~global1.a.x, _wgslsmith_mod_i32(global1.a.x, global1.a.x)), select(u_input.a, u_input.a, false) | ~0i)), global1.b);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3) -> vec3<i32> {
    global1 = func_2(global1.b.d, arg_1.b.a, ~_wgslsmith_div_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(arg_1.b.e.d, 108297u), vec2<u32>(arg_1.b.e.d, 38382u)), _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.b.x, u_input.b.x), u_input.b)), vec3<f32>(_wgslsmith_f_op_f32(-234f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-398f, 889f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-751f - arg_1.b.e.b))))), global1.b.b.b));
    let var_0 = Struct_1(1u, -678f, !select(arg_0.zy, arg_0.xz, arg_1.b.d.c), 1u, arg_1.b.e.e);
    var var_1 = global1.b;
    let var_2 = true;
    let var_3 = vec2<bool>(true, any(select(func_2(func_2(var_1.d, 606f, u_input.b, vec3<f32>(1000f, 3481f, var_0.b)).b.b, var_0.b, u_input.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(2144f, 1394f, -1822f))).b.b.c, vec2<bool>(false, !arg_0.x), vec2<bool>(true, all(vec4<bool>(var_0.e, arg_1.b.c.x, global1.b.e.e, false))))));
    return reverseBits(-max(vec3<i32>(-1i) * -arg_1.a, vec3<i32>(arg_1.a.x, 2147483647i, global1.a.x) << (select(vec3<u32>(var_1.e.d, var_1.b.a, 11980u), vec3<u32>(4294967295u, var_0.d, 61598u), true) % vec3<u32>(32u))));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: f32) -> u32 {
    var var_0 = vec3<f32>(-1516f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2121f)))), arg_2);
    global0 = abs(~global3.a);
    global0 = 1u;
    var var_1 = -(~_wgslsmith_dot_vec3_i32(func_4(!vec3<bool>(global1.b.b.e, false, global1.b.e.c.x), func_2(Struct_1(u_input.b.x, -654f, vec2<bool>(global1.b.d.e, false), global1.b.b.a, false), arg_2, u_input.b, vec3<f32>(284f, 415f, var_0.x))), vec3<i32>(u_input.a, ~(-1i), global1.a.x)));
    let var_2 = Struct_1(countOneBits(~9885u), -159f, vec2<bool>(global1.b.c.x, global1.b.e.c.x), _wgslsmith_sub_u32(~(~u_input.b.x), 4294967295u << (_wgslsmith_sub_u32(7455u, arg_0) % 32u)), global1.b.c.x);
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~countOneBits(min(64289u, reverseBits(global3.a))));
    var var_0 = -1082f;
    global0 = 48002u;
    global0 = min(~(~_wgslsmith_add_u32(~44854u, 12187u)), func_1(min(1u, ~(~global3.a)), global1.b.a, 611f));
    var_0 = global1.b.e.b;
    let var_1 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-238f, 1000f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(676f, -1000f)))))), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(global3.a, var_1, global1.b.e.d, 99837u), vec4<u32>(var_1, 4294967295u, 19522u, var_1) | (vec4<u32>(u_input.b.x, 30031u, var_1, 45575u) ^ vec4<u32>(u_input.b.x, global1.b.b.a, var_1, 1u))), ~(~vec4<u32>(global1.b.e.a, 35715u, var_1, global1.b.b.d) ^ countOneBits(vec4<u32>(0u, global1.b.b.d, 4294967295u, global1.b.e.d)))));
}

