struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: bool,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30>;

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(0u, vec2<i32>(-27002i, i32(-2147483648)), 520f)));

var<private> global2: Struct_4;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: vec2<i32>, arg_3: bool) -> u32 {
    var var_0 = global1.a.a;
    global2 = Struct_4(global1.a.a.a, arg_3, _wgslsmith_f_op_f32(ceil(516f)) == -1000f);
    var var_1 = -u_input.b;
    let var_2 = global1.a.a;
    let var_3 = 63169u >> (global2.a % 32u);
    return ~29434u;
}

fn func_2() -> u32 {
    global2 = Struct_4(~global2.a, false, !any(vec3<bool>(true, all(vec4<bool>(global2.c, global2.c, global2.b, global2.c)), global1.a.a.c <= global1.a.a.c)));
    var var_0 = _wgslsmith_add_u32(u_input.c, func_3(abs(-_wgslsmith_div_i32(u_input.b, global1.a.a.b.x)), ~reverseBits(reverseBits(vec4<u32>(0u, u_input.a, global2.a, global1.a.a.a))), global1.a.a.b, all(select(!vec2<bool>(false, global2.c), vec2<bool>(true, false), true))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.a.c - 295f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) + vec2<f32>(2095f, -175f));
    return min(~_wgslsmith_mod_u32(global1.a.a.a, global1.a.a.a << (_wgslsmith_add_u32(global2.a, global2.a) % 32u)), ~global1.a.a.a);
}

fn func_1() -> vec2<i32> {
    var var_0 = _wgslsmith_sub_u32(0u << (max(_wgslsmith_mod_u32(u_input.c, global2.a), ~16339u) % 32u), _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.c, 0u), ~4294967295u, func_2()));
    global1 = Struct_3(Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(global2.a, 0u, u_input.c), select(vec3<u32>(8851u, global1.a.a.a, global1.a.a.a), vec3<u32>(global2.a, 21409u, u_input.a), vec3<bool>(global2.b, global2.c, true))), ~global1.a.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-456f, global1.a.a.c))))));
    var var_1 = !(!vec3<bool>(all(vec2<bool>(false, true)), true, !global2.c));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-global1.a.a.c), _wgslsmith_f_op_f32(global1.a.a.c - -1039f), _wgslsmith_f_op_f32(abs(-1168f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(global1.a.a.c)), -188f, _wgslsmith_f_op_f32(f32(-1f) * -1310f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(226f, global1.a.a.c, -1268f) * vec3<f32>(global1.a.a.c, 547f, 1000f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(2257f, 1167f, -1088f) - vec3<f32>(global1.a.a.c, global1.a.a.c, global1.a.a.c)))), true)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1612f, global1.a.a.c, -1450f)))))));
    let var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(~min(1u, global1.a.a.a), u_input.a, global1.a.a.a, ~(0u >> (u_input.c % 32u))), select(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, global1.a.a.a, u_input.a, 1u), vec4<u32>(80949u, global2.a, global2.a, global2.a)), firstLeadingBit(vec4<u32>(global1.a.a.a, global2.a, 53068u, global2.a)), select(vec4<bool>(true, false, var_1.x, global2.b), vec4<bool>(global2.c, true, false, true), all(vec4<bool>(global2.b, true, false, false))))) >> (func_3(_wgslsmith_add_i32(-58746i, 1i), ~abs(vec4<u32>(u_input.c, global1.a.a.a, global2.a, 2889u)), -vec2<i32>(1i, u_input.b) << ((~vec2<u32>(3414u, 39077u) >> (~vec2<u32>(4294967295u, global1.a.a.a) % vec2<u32>(32u))) % vec2<u32>(32u)), false) % 32u);
    return vec2<i32>(_wgslsmith_dot_vec2_i32(select(global1.a.a.b, _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(global1.a.a.b, global1.a.a.b), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, 0i), vec2<i32>(-1i, 29458i))), !select(vec2<bool>(var_1.x, true), vec2<bool>(false, var_1.x), true)), _wgslsmith_clamp_vec2_i32(-firstTrailingBit(vec2<i32>(u_input.b, 28029i)), vec2<i32>(~(-6364i), -u_input.b), vec2<i32>(40350i, ~global1.a.a.b.x))), ~22059i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.b, ~(-1i | u_input.b)), select(vec2<i32>((48189i | u_input.b) | global1.a.a.b.x, u_input.b), global1.a.a.b, !select(vec2<bool>(global2.c, true), select(vec2<bool>(true, false), vec2<bool>(true, global2.c), vec2<bool>(global2.c, global2.b)), vec2<bool>(global2.c, global2.b))), global1.a.a.b);
    let var_1 = -1097f;
    let var_2 = vec4<i32>(select(u_input.b, _wgslsmith_dot_vec2_i32(firstTrailingBit(-vec2<i32>(1i, -3571i)), func_1()), global2.b | global2.c), func_1().x, i32(-1i) * -min(firstLeadingBit(22132i), -2147483647i), -_wgslsmith_add_i32(select(abs(-2236i), ~0i, !global2.b), 0i));
    global0 = array<Struct_2, 30>();
    let var_3 = Struct_4(min(~_wgslsmith_mod_u32(1u, ~global1.a.a.a), global2.a), true, !(!all(!vec4<bool>(false, global2.b, true, true))));
    global0 = array<Struct_2, 30>();
    let var_4 = Struct_2(global1.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(-38031i, vec4<u32>(~var_4.a.a, u_input.a, 4294967295u, _wgslsmith_mod_u32(global2.a, 77935u)), var_2.www, -(_wgslsmith_mod_vec3_i32(-vec3<i32>(-2147483647i, var_0.x, 19594i), vec3<i32>(var_2.x, -20782i, 20202i)) | vec3<i32>(func_1().x, -85102i, 47890i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-589f, -2665f, var_4.a.c, var_4.a.c), _wgslsmith_div_vec4_f32(vec4<f32>(464f, var_1, global1.a.a.c, var_1), vec4<f32>(global1.a.a.c, -374f, var_4.a.c, var_4.a.c))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(2017f, -1099f, 1000f, 221f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1034f, 532f, -1288f, var_4.a.c) + vec4<f32>(var_1, 1000f, -1000f, -696f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_4.a.c, var_4.a.c, 994f) - vec4<f32>(524f, 345f, var_1, var_1))))))));
}

