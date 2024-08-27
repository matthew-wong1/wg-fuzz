struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: i32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: Struct_2;

var<private> global2: u32 = 48399u;

var<private> global3: bool = false;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec4<f32>) -> vec2<u32> {
    let var_0 = vec3<bool>(true, arg_1.a.c.x != firstTrailingBit(1u), !all(arg_1.c.e));
    global1 = Struct_2(Struct_1(global1.c.e.x, u_input.d, vec2<u32>(_wgslsmith_mod_u32(~110102u, max(arg_1.a.b.x, 1u)), 31870u), ~vec4<i32>(_wgslsmith_sub_i32(6786i, -1i), ~u_input.c.x, ~u_input.a.x, _wgslsmith_clamp_i32(arg_1.b, -4351i, arg_1.a.d.x)), arg_1.a.e), _wgslsmith_dot_vec3_i32(-u_input.c.yyx, countOneBits(vec3<i32>(global1.b, 5657i, 0i)) | (arg_1.c.d.yyz & vec3<i32>(2147483647i, u_input.a.x, -35470i))), arg_1.a);
    var var_1 = firstTrailingBit(_wgslsmith_add_vec4_u32(select(~(~vec4<u32>(arg_1.c.b.x, arg_1.c.c.x, global1.a.b.x, u_input.d.x)), vec4<u32>(abs(global1.c.b.x), 1424u | u_input.d.x, ~1u, 5755u), vec4<bool>(true, all(vec2<bool>(false, global1.c.e.x)), !global0.x, global1.c.a)), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(30648u, u_input.d.x, 4294967295u, global1.a.b.x), ~vec4<u32>(29385u, u_input.d.x, global1.a.b.x, u_input.d.x), ~vec4<u32>(42368u, global1.c.c.x, 1u, u_input.d.x))));
    var_1 = reverseBits(countOneBits(vec4<u32>(1u, _wgslsmith_div_u32(~global1.c.b.x, 25446u), 35910u, var_1.x)));
    global3 = arg_0 & var_0.x;
    return _wgslsmith_add_vec2_u32(select(~(~(~u_input.d)), _wgslsmith_add_vec2_u32(~(~vec2<u32>(global1.c.b.x, global1.c.b.x)), var_1.ww), !(!(!arg_1.a.e))), vec2<u32>(78838u, ~4294967295u));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_2(Struct_1(all(vec4<bool>(global1.c.e.x, false, true, select(global1.c.a, true, true))), ~(~countOneBits(vec2<u32>(u_input.d.x, 30964u))), _wgslsmith_div_vec2_u32(func_3(false, Struct_2(Struct_1(global0.x, vec2<u32>(global1.c.b.x, u_input.d.x), global1.c.b, vec4<i32>(1i, 0i, -2147483647i, global1.b), vec2<bool>(global0.x, false)), 60047i, global1.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1351f, -455f, 407f, 136f))), ~(~global1.a.b)), vec4<i32>(i32(-1i) * -2147483647i, i32(-1i) * -1087i, u_input.a.x >> (global1.a.c.x % 32u), 2147483647i) >> (~max(vec4<u32>(u_input.d.x, 4294967295u, 62824u, 31278u), vec4<u32>(global1.c.c.x, 113162u, global1.a.c.x, global1.a.c.x)) % vec4<u32>(32u)), !vec2<bool>(global0.x, all(vec3<bool>(true, false, true)))), -u_input.b ^ abs(~_wgslsmith_div_i32(5683i, -2147483647i)), global1.c);
    global0 = global1.a.e;
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(194f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(559f - -269f) - _wgslsmith_f_op_f32(f32(-1f) * -102f)) + 1540f)), _wgslsmith_f_op_f32(-615f + 1895f)));
    let var_2 = vec2<i32>(firstLeadingBit(firstTrailingBit(_wgslsmith_add_i32(select(global1.a.d.x, 1i, global0.x), _wgslsmith_mult_i32(u_input.b, var_0.b)))), max(var_0.b, countOneBits(25164i)));
    let var_3 = vec3<i32>(countOneBits(max(var_0.c.d.x, -(~global1.b))), var_2.x, -12844i);
    return Struct_3(var_0);
}

fn func_1() -> Struct_4 {
    let var_0 = global1.a.e.x;
    let var_1 = func_2();
    global2 = ~_wgslsmith_div_u32(~4294967295u, firstLeadingBit(28245u));
    let var_2 = 29375i;
    var var_3 = var_1;
    return Struct_4(var_1.a.c.a, var_1.a, _wgslsmith_clamp_i32(-69966i, 1i, -34852i), ~vec4<i32>(var_3.a.a.d.x ^ -13516i, 1i, 7744i, _wgslsmith_add_i32(1i, var_1.a.b)) >> (~(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.a.c.c.x, 1u, u_input.d.x, 4294967295u), vec4<u32>(global1.c.c.x, 53590u, u_input.d.x, 40781u))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(min(vec4<u32>(~4695u, global1.c.c.x, _wgslsmith_add_u32(global1.c.c.x, 4294967295u), _wgslsmith_clamp_u32(var_0.b.c.b.x, global1.c.c.x, global1.c.b.x)) | vec4<u32>(1u, ~var_0.b.a.c.x, 34089u, func_3(global1.c.e.x, var_0.b, vec4<f32>(988f, 393f, 1019f, -364f)).x), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 82670u, _wgslsmith_div_u32(1u, global1.a.b.x)), countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.a.c.x, 64767u, u_input.d.x, var_0.b.c.c.x), vec4<u32>(var_0.b.c.c.x, global1.c.b.x, var_0.b.a.c.x, global1.a.b.x), vec4<u32>(var_0.b.a.b.x, u_input.d.x, 48578u, 4439u))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-643f + -351f), _wgslsmith_f_op_f32(round(860f))), 1091f)), u_input.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1219f, 1542f, true)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1317f * -1963f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 1167f) - 1f)));
}

