struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17>;

var<private> global1: vec3<u32> = vec3<u32>(1433u, 4294967295u, 25309u);

var<private> global2: bool = true;

var<private> global3: array<Struct_1, 13>;

var<private> global4: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(-561f, 51221u, vec4<i32>(6377i, i32(-2147483648), 0i, -1i), vec3<u32>(0u, 10114u, 1u), 1500f), Struct_1(-1873f, 1u, vec4<i32>(-1i, 0i, i32(-2147483648), -20098i), vec3<u32>(1u, 52624u, 0u), -819f), Struct_1(-443f, 74043u, vec4<i32>(i32(-2147483648), 1i, -55i, 2147483647i), vec3<u32>(27910u, 41042u, 4294967295u), -125f), Struct_1(247f, 10905u, vec4<i32>(16578i, -17370i, -33612i, 24563i), vec3<u32>(72370u, 1u, 29606u), -346f), Struct_1(-1904f, 0u, vec4<i32>(34840i, 1i, 2147483647i, 28672i), vec3<u32>(38811u, 1u, 25617u), 813f), Struct_1(111f, 0u, vec4<i32>(8214i, -37036i, i32(-2147483648), 30966i), vec3<u32>(3453u, 66866u, 4294967295u), -187f), Struct_1(-1552f, 36429u, vec4<i32>(17286i, 2147483647i, 49311i, 26152i), vec3<u32>(67660u, 4294967295u, 38801u), -685f), Struct_1(-716f, 0u, vec4<i32>(2147483647i, -21543i, 1i, 2147483647i), vec3<u32>(51974u, 23389u, 3155u), -2036f));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> f32 {
    var var_0 = abs(global1.x);
    global1 = vec3<u32>(~18653u, 66568u, global1.x);
    let var_1 = ~(arg_0.d & abs(~arg_0.d));
    global2 = true;
    global3 = array<Struct_1, 13>();
    return arg_0.a;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> i32 {
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(21581i, arg_0.c.x), ~_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(-arg_1.c.xz, arg_0.c.xx), -arg_0.c.xy));
    var var_1 = 4294967295u;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -965f), ~_wgslsmith_add_u32(arg_1.d.x, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, arg_0.b)), arg_1.c, _wgslsmith_mod_vec3_u32(arg_1.d, ~(min(arg_1.d, u_input.a) & arg_1.d)), _wgslsmith_f_op_f32(floor(406f)));
    var var_3 = global4[_wgslsmith_index_u32(firstTrailingBit(global0[_wgslsmith_index_u32(arg_1.d.x, 17u)]) & ~firstTrailingBit(~34926u), 8u)];
    var var_4 = vec4<i32>(-15861i, arg_1.c.x, _wgslsmith_mult_i32(max(var_2.c.x, arg_0.c.x), abs(5157i)), 2147483647i);
    return _wgslsmith_dot_vec2_i32(~min(var_2.c.xw, arg_1.c.zx), vec2<i32>(0i, arg_1.c.x));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<u32>) -> u32 {
    var var_0 = global4[_wgslsmith_index_u32(select(22424u, countOneBits(_wgslsmith_mult_u32(~select(arg_1.x, arg_1.x, true), _wgslsmith_div_u32(~global0[_wgslsmith_index_u32(global1.x, 17u)], arg_1.x ^ arg_1.x))), false || ((func_3(global4[_wgslsmith_index_u32(u_input.a.x, 8u)], Struct_1(arg_0.x, 4294967295u, vec4<i32>(4472i, -3838i, 21554i, -1i), vec3<u32>(1u, u_input.a.x, 0u), 551f), false, false) == -67377i) || false)), 8u)];
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-694f, -331f) - -802f), ~(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(var_0.b, 17u)], u_input.a.x, arg_1.x, 50381u), ~vec4<u32>(40712u, 0u, var_0.b, var_0.d.x)) | global1.x), _wgslsmith_div_vec4_i32(var_0.c, (_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.c.x, var_0.c.x, var_0.c.x, -8772i), vec4<i32>(-36188i, var_0.c.x, -59620i, var_0.c.x)) << (~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.x, 17u)], 17u)], 4294967295u, global0[_wgslsmith_index_u32(var_0.b, 17u)], 103202u) % vec4<u32>(32u))) | vec4<i32>(var_0.c.x, var_0.c.x << (80141u % 32u), _wgslsmith_add_i32(var_0.c.x, -2147483647i), var_0.c.x)), ~u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(-1389f, var_0.a), -2515f), true)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -421f) * _wgslsmith_f_op_f32(func_1(Struct_1(-1275f, var_0.d.x, var_0.c, vec3<u32>(1u, var_0.b, global0[_wgslsmith_index_u32(35682u, 17u)]), var_0.e), Struct_1(arg_0.x, 4294967295u, var_0.c, vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(33289u, 17u)], 47919u), 1650f), _wgslsmith_f_op_f32(-var_0.e))))));
    var var_2 = -2089i;
    global1 = ~select(~u_input.a, vec3<u32>(var_0.d.x, abs(var_0.d.x), 57073u), vec3<bool>(all(vec2<bool>(false, true)), all(vec3<bool>(false, false, false)), true));
    var var_3 = Struct_1(var_0.e, 23769u, _wgslsmith_div_vec4_i32(var_0.c, vec4<i32>(var_1.c.x, var_0.c.x, var_1.c.x, var_0.c.x)), firstLeadingBit(~_wgslsmith_add_vec3_u32(~vec3<u32>(1u, var_1.d.x, global0[_wgslsmith_index_u32(13879u, 17u)]), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, var_0.d.x, 30542u), vec3<u32>(global1.x, 0u, 63581u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e + _wgslsmith_f_op_f32(-arg_0.x))) * _wgslsmith_f_op_f32(exp2(var_1.a))));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(1000f, 524f)), -135f, _wgslsmith_f_op_f32(func_1(Struct_1(618f, 4294967295u, vec4<i32>(47177i, -26720i, 1i, -35071i), u_input.a, 1189f), Struct_1(-2045f, global1.x, vec4<i32>(-1i, 1667i, -1i, 0i), u_input.a, 1515f), 364f)), -388f)), reverseBits(~min(vec3<u32>(1u, global1.x, global1.x), vec3<u32>(global1.x, global1.x, global1.x)))) > global1.x;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-633f - -1833f), global1.x, -vec4<i32>(-1i, -_wgslsmith_mod_i32(0i, 2147483647i), -_wgslsmith_add_i32(-34287i, 1i), 2147483647i), ~(_wgslsmith_mod_vec3_u32(u_input.a | u_input.a, _wgslsmith_mod_vec3_u32(u_input.a, u_input.a)) << (_wgslsmith_sub_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], u_input.a.x, global1.x), _wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(1u, global1.x, global0[_wgslsmith_index_u32(global1.x, 17u)]), u_input.a)) % vec3<u32>(32u))), -1702f);
    global3 = array<Struct_1, 13>();
    let var_2 = 2147483647i;
    global1 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(vec2<u32>(_wgslsmith_mult_u32(var_1.d.x, u_input.a.x), ~global1.x)), _wgslsmith_f_op_f32(max(var_1.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.e), _wgslsmith_f_op_f32(var_1.a * var_1.e))), var_1.e)))), vec2<u32>(var_1.b, 0u));
}

