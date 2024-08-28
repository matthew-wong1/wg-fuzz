struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 2>;

var<private> global1: u32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: i32) -> Struct_1 {
    global0 = array<Struct_3, 2>();
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(max(-360f, -2919f));
    let var_2 = Struct_1(_wgslsmith_dot_vec3_i32(u_input.c.yww, abs(~u_input.c.zzx)));
    let var_3 = ~abs(select(122035u, 1u, false) << (91650u % 32u)) << (countOneBits(~(reverseBits(u_input.b.x) << (8547u % 32u))) % 32u);
    return Struct_1(-_wgslsmith_mod_i32(-35128i, var_2.a));
}

fn func_3() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(213f, -1589f)))) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1000f, -1227f)))) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(663f - -309f), _wgslsmith_f_op_f32(max(-363f, 1193f)))), _wgslsmith_div_f32(332f, _wgslsmith_f_op_f32(round(-107f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(1644f * _wgslsmith_f_op_f32(round(-2764f))))));
    global1 = u_input.b.x;
    global0 = array<Struct_3, 2>();
    var var_1 = ~_wgslsmith_div_i32(-1i, ~_wgslsmith_div_i32(u_input.c.x, -u_input.a));
    global0 = array<Struct_3, 2>();
    return func_1(~reverseBits(_wgslsmith_div_i32(-2147483647i, -1i)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_2) -> u32 {
    let var_0 = false;
    global0 = array<Struct_3, 2>();
    let var_1 = Struct_2(arg_0.a, Struct_1(1i));
    var var_2 = Struct_2(~reverseBits(vec4<u32>(~25124u, arg_1.b.x, ~arg_1.b.x, 22123u)), Struct_1(_wgslsmith_mod_i32(~_wgslsmith_mod_i32(-1844i, -1i), u_input.a)));
    let var_3 = _wgslsmith_div_u32(4294967295u, ~min(abs(reverseBits(41027u)), var_1.a.x));
    return ~var_2.a.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> vec2<bool> {
    global0 = array<Struct_3, 2>();
    let var_0 = select(u_input.b.x, func_4(Struct_2(vec4<u32>(~39293u, u_input.b.x >> (4294967295u % 32u), u_input.b.x ^ 0u, u_input.b.x), Struct_1(countOneBits(2773i))), Struct_3(func_3(), countOneBits(firstTrailingBit(vec2<u32>(24449u, 0u)))), Struct_2(vec4<u32>(u_input.b.x, u_input.b.x, 96643u, u_input.b.x), Struct_1(-u_input.a))), true);
    global1 = _wgslsmith_add_u32(firstLeadingBit(_wgslsmith_mod_u32(22645u, firstTrailingBit(~u_input.b.x))), _wgslsmith_clamp_u32((_wgslsmith_clamp_u32(u_input.b.x, var_0, var_0) >> (var_0 % 32u)) & 25175u, ~(_wgslsmith_dot_vec3_u32(vec3<u32>(16179u, var_0, u_input.b.x), u_input.b.zyx) ^ min(var_0, 4294967295u)), firstLeadingBit(u_input.b.x)));
    var var_1 = arg_0;
    global1 = ~(~30928u);
    return vec2<bool>(arg_0.x || (1i != u_input.c.x), all(select(select(vec2<bool>(var_1.x, arg_2), select(arg_0, arg_0, vec2<bool>(true, false)), true), vec2<bool>(false, any(vec4<bool>(arg_0.x, arg_0.x, var_1.x, true))), !arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~28258u;
    global0 = array<Struct_3, 2>();
    var var_0 = u_input.c;
    var var_1 = !func_2(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), func_1(2147483647i), any(vec3<bool>(true, false, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(820f))));
    var var_2 = global0[_wgslsmith_index_u32(countOneBits(1u), 2u)];
    var var_3 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(-func_3().a, _wgslsmith_sub_vec4_i32(-(~u_input.c), u_input.c ^ _wgslsmith_mult_vec4_i32(u_input.c, u_input.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1009f, 215f, -809f) * vec3<f32>(-1000f, 678f, -1880f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2353f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-112f, -1982f))), !(var_1.x & var_1.x))), 1382f)));
}

